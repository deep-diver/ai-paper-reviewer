---
title: "Inference-Time Scaling for Flow Models via Stochastic Generation and Rollover Budget Forcing"
summary: "Inference-time scaling for flow models enhances alignment with user preferences via stochastic generation and budget allocation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 KAIST",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19385 {{< /keyword >}}
{{< keyword icon="writer" >}} Jaihoon Kim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19385" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19385" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19385/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Flow models are powerful for generative tasks but lack the inference-time scaling capabilities of diffusion models**, which leverage stochasticity for better reward alignment. This paper addresses this gap by proposing a novel approach to scale flow models effectively. Traditional flow models rely on deterministic processes, limiting their ability to incorporate particle sampling, a key technique for enhancing sample quality during inference. This limitation hinders their ability to effectively align outputs with user preferences or other reward signals, making them less adaptable compared to diffusion models in certain applications.



To solve this, the paper introduces three key innovations: (1) SDE-based generation to enable particle sampling in flow models, (2) Interpolant conversion, using Variance Preserving (VP) to broaden the search space and enhance sample diversity, and (3) Rollover Budget Forcing (RBF), which adaptively allocates computational resources across timesteps to maximize budget utilization. Results show SDE-based generation and VP interpolant improve particle sampling in flow models. Furthermore, RBF with VP-SDE achieves the best performance, outperforming previous inference-time scaling approaches, and better align images with complex user prompts.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SDE conversion & VP interpolant boost flow model particle sampling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Rollover Budget Forcing (RBF) optimizes computational resource allocation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VP-SDE with RBF outperforms existing methods in text-to-image generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel inference-time scaling method for flow models, enhancing their ability to align with user preferences and compositional structures. This work paves the way for future research in **leveraging flow models for complex text-to-image generation tasks.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.19385/x2.png)

> 🔼 Figure 1 demonstrates the versatility of the proposed inference-time scaling method applied to a pretrained flow model.  The top row showcases how increased computational resources during inference (measured by Number of Function Evaluations, NFEs) lead to improved image generation more closely matching user preferences, as quantified by a reduction in Residual Sum of Squares (RSS). The top-right panel highlights the superiority of the flow-based approach over diffusion models, achieving comparable results with significantly fewer NFEs. The remaining panels illustrate applications to diverse tasks: compositional text-to-image generation (using VQAScore for reward), counting (using object detection scores), aesthetic image generation (using aesthetic scores), and concept erasure (using VLM to quantify removed concepts).  The red boxes indicate results produced using the novel method.
> <details>
> <summary>read the caption</summary>
> Figure 1: Diverse applications of our inference-time scaling method. Our inference-time scaling method extends the capabilities of a pretrained flow model [25] to generate images that more precisely align with user preferences. More computation during inference improves alignment, reducing Residual Sum of Squares (RSS) over time (top row). Our flow-based method outperforms diffusion models, even with five times fewer number of function evaluations (NFEs) (top-right). For compositional text-to-image generation applications (“logical”, “comparison”, “spatial relation”), we use the reward from VQAScore [28] to ensure precise alignment with the input text, where the description is particularly challenging for typical text-to-image generative models to satisfy (see the results on the left side of each case). We use the object detection score [31] for the 'counting' application and the aesthetic score [44] for the 'aesthetic' application. For “concept erasure”, the reward is the number of removed concepts computed using VLM [3] queries. The red box denotes the results of our method.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F3.3">
<tr class="ltx_tr" id="S4.F3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F3.1.1.1" style="width:79.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F3.1.1.1.1.g1" src="extracted/6307485/Figures/variance_test/A_steaming_cup_of_coffee_OT_ODE.png" width="103"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F3.2.2.2" style="width:79.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.2.2.2.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F3.2.2.2.1.g1" src="extracted/6307485/Figures/variance_test/A_steaming_cup_of_coffee_OT_SDE.png" width="103"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F3.3.3.3" style="width:79.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.3.3.3.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F3.3.3.3.1.g1" src="extracted/6307485/Figures/variance_test/A_steaming_cup_of_coffee_VP_SDE.png" width="103"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F3.3.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F3.3.4.1" style="width:79.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.3.4.1.1">
<span class="ltx_p" id="S4.F3.3.4.1.1.1"><span class="ltx_rule" style="width:0.0pt;height:6.0pt;background:black;display:inline-block;"></span><span class="ltx_text" id="S4.F3.3.4.1.1.1.1" style="font-size:70%;"> (a) Linear-ODE</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F3.3.4.2" style="width:79.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.3.4.2.1">
<span class="ltx_p" id="S4.F3.3.4.2.1.1"><span class="ltx_rule" style="width:0.0pt;height:6.0pt;background:black;display:inline-block;"></span><span class="ltx_text" id="S4.F3.3.4.2.1.1.1" style="font-size:70%;"> (b) Linear-SDE</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S4.F3.3.4.3" style="width:79.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.F3.3.4.3.1">
<span class="ltx_p" id="S4.F3.3.4.3.1.1"><span class="ltx_rule" style="width:0.0pt;height:6.0pt;background:black;display:inline-block;"></span><span class="ltx_text" id="S4.F3.3.4.3.1.1.1" style="font-size:70%;"> (c) VP-SDE</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of different inference-time scaling methods for compositional image generation.  It shows the performance using various metrics (VQAScore, InstructBLIP, and aesthetic score) for different methods: Linear-ODE (baseline), Linear-SDE, and VP-SDE (the proposed approach).  Improvements for particle-based sampling methods are calculated relative to the Linear-ODE baseline.  The best and second-best results for each reward (given and held-out) are highlighted in bold and underlined, respectively. Results are shown for both default settings and with 50 denoising steps.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results of compositional image generation. † denotes the given reward used in inference-time scaling. For particle-based sampling methods, the relative improvement in each cell is computed with respect to the Linear-ODE case. The best result in the given and held-out reward is highlighted by bold, and the runner-up is underlined. L.O., L.S., and V.S. indicate Linear-ODE, Linear-SDE, and VP-SDE, respectively. * denotes results with 50505050 denoising steps.
> </details>





### In-depth insights


#### Flow SDE Scaling
The paper addresses the challenge of scaling flow-based generative models, which, unlike diffusion models, have a deterministic nature, hindering the direct application of particle sampling techniques for inference-time scaling. To overcome this, the authors propose converting the deterministic flow into a **stochastic differential equation (SDE)**, enabling particle sampling. A key insight is the importance of **interpolant choice**; replacing the typical linear interpolant with a **Variance Preserving (VP) interpolant** significantly broadens the search space and enhances sample diversity, leading to higher-reward samples. This conversion and interpolant choice allow models better results than traditional diffusion models. The paper includes a novel strategy for **Rollover Budget Forcing (RBF)**, that adaptively allocates computational resources across timesteps, maximizing budget utilization and further improving performance. Experiments demonstrate the effectiveness of the approach across tasks like compositional text-to-image generation and quantity-aware image generation.

#### VP Trajectory++
While 'VP Trajectory++' isn't explicitly present, we can infer its essence from the context of flow models and diffusion model alignment. It likely refers to **enhancing the Variance Preserving (VP) trajectory** used in diffusion models, perhaps moving beyond standard VP SDEs. The '++' suggests further improvements. This could involve **adaptive trajectory shaping** during inference, dynamically adjusting the noise schedule or interpolant based on reward signals. Perhaps the approach further increases sample diversity by **modifying velocity fields** or by **adjusting timestep size** to better fit with the few-step generation abilities. Ultimately, the aim would be to guide the flow model's trajectory towards higher-reward regions more efficiently than existing inference-time scaling methods.

#### Rollover Forcing
**Rollover Budget Forcing (RBF)** is presented as an adaptive strategy for distributing a computational budget across timesteps during inference. It addresses the inefficiency of uniformly allocating resources, recognizing that the effort to find better samples varies. RBF dynamically reallocates resources; if a higher-rewarding particle is found, remaining resources are used. Otherwise, the method proceeds using existing methods, selecting the particle with the best expected future reward. RBF improves performance, as demonstrated in experiments, showing gains and exceeding prior methods. The adaptive nature ensures resources are concentrated where they provide the most benefit during the search for superior results. The pseudocode shows RBF's effectiveness when added with conversion and interpolant.

#### Comp. Generation
In compositional generation, the paper addresses the challenge of creating images that accurately reflect complex text descriptions, focusing on attributes, relationships, and object quantities. **The primary goal is to enhance alignment between the generated image and the user's textual input**. The paper uses metrics such as VQAScore to measure this alignment, indicating the probability that a given attribute or object is present in the generated image. A key finding is that flow models, enhanced with SDE conversion and interpolant conversion, significantly improve performance on compositional tasks. **The use of a Variance Preserving (VP) interpolant, rather than a linear one, expands the search space and facilitates the discovery of high-reward samples** that better match the text description. The qualitative results demonstrate that these techniques enable the generation of more faithful and accurate images, capturing intricate details and relationships specified in the text prompt. **The work highlights the importance of modifying the generative process to improve alignment with user preferences**.

#### Quant. Control
In research concerning "Quantitative Control," one might expect investigations into methods that precisely regulate generated content according to numerical constraints. This could involve scenarios where the objective is to accurately render specific quantities of objects within an image, aligning visual outputs with precise numerical targets. The work would probably leverage **object detection** to first establish how many objects are already present, and then modify generation to reach the target count. Moreover, **novel loss functions** might be used that strictly penalize deviations from requested object counts, driving the generative model to adhere to strict numerical benchmarks. Also the researchers might investigate the performance of diffrent existing model to effectively use for image manipulation by adding or removing objects and also compare these models against the custom models by **ablative studies** to confirm performance.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.F4.6">
<tr class="ltx_tr" id="S5.F4.6.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F4.6.7.1" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.6.7.1.1">
<span class="ltx_p" id="S5.F4.6.7.1.1.1"><span class="ltx_text" id="S5.F4.6.7.1.1.1.1" style="font-size:70%;">L.O.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F4.6.7.2" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.6.7.2.1">
<span class="ltx_p" id="S5.F4.6.7.2.1.1"><span class="ltx_text" id="S5.F4.6.7.2.1.1.1" style="font-size:70%;">L.S.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F4.6.7.3" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.6.7.3.1">
<span class="ltx_p" id="S5.F4.6.7.3.1.1"><span class="ltx_text" id="S5.F4.6.7.3.1.1.1" style="font-size:70%;">V.S.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.F4.6.8">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_middle ltx_border_t" colspan="3" id="S5.F4.6.8.1" style="padding:0.7pt 0.0pt;">
<span class="ltx_text" id="S5.F4.6.8.1.1"></span><span class="ltx_text" id="S5.F4.6.8.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.F4.6.8.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.F4.6.8.1.3.1">
<span class="ltx_tr" id="S5.F4.6.8.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F4.6.8.1.3.1.1.1" style="padding:0.7pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S5.F4.6.8.1.3.1.1.1.1">“A mouse pad has two pencils on it,</span></span></span>
<span class="ltx_tr" id="S5.F4.6.8.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F4.6.8.1.3.1.2.1" style="padding:0.7pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S5.F4.6.8.1.3.1.2.1.1">the shorter pencil is green and the longer one is not”</span></span></span>
</span></span><span class="ltx_text" id="S5.F4.6.8.1.4"></span><span class="ltx_text" id="S5.F4.6.8.1.5" style="font-size:70%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.F4.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F4.1.1.1" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S5.F4.1.1.1.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_ode_sde_vp/SVDD_ODE_0.jpg" width="103"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F4.2.2.2" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.2.2.2.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S5.F4.2.2.2.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_ode_sde_vp/SVDD_SDE_0.jpg" width="103"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F4.3.3.3" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.3.3.3.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S5.F4.3.3.3.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_ode_sde_vp/SVDD_VP-SDE_0.jpg" width="103"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.F4.6.9">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_middle ltx_border_t" colspan="3" id="S5.F4.6.9.1" style="padding:0.7pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S5.F4.6.9.1.1" style="font-size:70%;">“Eight chairs”</span></td>
</tr>
<tr class="ltx_tr" id="S5.F4.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F4.4.4.1" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.4.4.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S5.F4.4.4.1.1.g1" src="extracted/6307485/Figures/counting_generation/collection_ode_sde_vp/SVDD_ODE_0.jpg" width="103"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F4.5.5.2" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.5.5.2.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S5.F4.5.5.2.1.g1" src="extracted/6307485/Figures/counting_generation/collection_ode_sde_vp/SVDD_SDE_0.jpg" width="103"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F4.6.6.3" style="width:79.5pt;padding:0.7pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F4.6.6.3.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S5.F4.6.6.3.1.g1" src="extracted/6307485/Figures/counting_generation/collection_ode_sde_vp/SVDD_VP-SDE_0.jpg" width="103"/>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different inference-time scaling methods for quantity-aware image generation.  The key metrics evaluated are Residual Sum of Squares (RSS), accuracy, held-out VQAScore, and aesthetic score.  The table shows results for several baselines (BoN, SoP, SMC, CoDe, SVDD) and the proposed RBF method, all applied to the FLUX flow model. The performance of each method is analyzed under various conditions (Linear-ODE, Linear-SDE, and VP-SDE) and with different numbers of denoising steps.  Relative improvements are calculated concerning the Linear-ODE baseline for particle-based methods. The best and second-best results for each metric are highlighted in bold and underlined, respectively.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results of quantity-aware image generation. † denotes the given reward used in inference-time scaling. For particle-based sampling methods, the relative improvement in each cell is computed with respect to the Linear-ODE case. The best result in the given and held-out reward is highlighted by bold, and the runner-up is underlined. L.O., L.S., and V.S. indicate Linear-ODE, Linear-SDE, and VP-SDE, respectively. * denotes results with 50505050 denoising steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.23">
<tr class="ltx_tr" id="S5.T1.23.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_tt" id="S5.T1.23.22.1" style="width:41.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.22.1.1">
<span class="ltx_p" id="S5.T1.23.22.1.1.1"><span class="ltx_text" id="S5.T1.23.22.1.1.1.1"></span><span class="ltx_text" id="S5.T1.23.22.1.1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.23.22.1.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.23.22.1.1.1.3.1">
<span class="ltx_tr" id="S5.T1.23.22.1.1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.23.22.1.1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">Metric</span></span>
</span></span><span class="ltx_text" id="S5.T1.23.22.1.1.1.4" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.23.22.1.1.1.5"></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_r ltx_border_tt" colspan="4" id="S5.T1.23.22.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.23.22.2.1" style="font-size:70%;">Diffusion Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_middle ltx_border_tt" colspan="15" id="S5.T1.23.22.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.23.22.3.1" style="font-size:70%;">Flow Model</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.3.1.2" style="width:41.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.3.1.3" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.3.1.3.1">
<span class="ltx_p" id="S5.T1.3.1.3.1.1"><span class="ltx_text" id="S5.T1.3.1.3.1.1.1" style="font-size:70%;">SD2</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.3.1.1" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.3.1.1.1">
<span class="ltx_p" id="S5.T1.3.1.1.1.1"><math alttext="\text{SD2}^{*}" class="ltx_Math" display="inline" id="S5.T1.3.1.1.1.1.m1.1"><semantics id="S5.T1.3.1.1.1.1.m1.1a"><msup id="S5.T1.3.1.1.1.1.m1.1.1" xref="S5.T1.3.1.1.1.1.m1.1.1.cmml"><mtext id="S5.T1.3.1.1.1.1.m1.1.1.2" mathsize="70%" xref="S5.T1.3.1.1.1.1.m1.1.1.2a.cmml">SD2</mtext><mo id="S5.T1.3.1.1.1.1.m1.1.1.3" mathsize="70%" xref="S5.T1.3.1.1.1.1.m1.1.1.3.cmml">∗</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T1.3.1.1.1.1.m1.1b"><apply id="S5.T1.3.1.1.1.1.m1.1.1.cmml" xref="S5.T1.3.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.3.1.1.1.1.m1.1.1.1.cmml" xref="S5.T1.3.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S5.T1.3.1.1.1.1.m1.1.1.2a.cmml" xref="S5.T1.3.1.1.1.1.m1.1.1.2"><mtext id="S5.T1.3.1.1.1.1.m1.1.1.2.cmml" mathsize="70%" xref="S5.T1.3.1.1.1.1.m1.1.1.2">SD2</mtext></ci><times id="S5.T1.3.1.1.1.1.m1.1.1.3.cmml" xref="S5.T1.3.1.1.1.1.m1.1.1.3"></times></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.1.1.1.1.m1.1c">\text{SD2}^{*}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.1.1.1.1.m1.1d">SD2 start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="S5.T1.3.1.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S5.T1.3.1.4.1" style="font-size:70%;">SVDD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.3.1.4.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S5.T1.3.1.4.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.3.1.5" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.3.1.5.1">
<span class="ltx_p" id="S5.T1.3.1.5.1.1"><span class="ltx_text" id="S5.T1.3.1.5.1.1.1" style="font-size:70%;">FLUX</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.3.1.6" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.3.1.6.1">
<span class="ltx_p" id="S5.T1.3.1.6.1.1"><span class="ltx_text" id="S5.T1.3.1.6.1.1.1" style="font-size:70%;">BoN</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.3.1.7" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.3.1.7.1">
<span class="ltx_p" id="S5.T1.3.1.7.1.1"><span class="ltx_text" id="S5.T1.3.1.7.1.1.1"></span><span class="ltx_text" id="S5.T1.3.1.7.1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.3.1.7.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.3.1.7.1.1.3.1">
<span class="ltx_tr" id="S5.T1.3.1.7.1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.3.1.7.1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">SoP</span></span>
<span class="ltx_tr" id="S5.T1.3.1.7.1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.3.1.7.1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite></span></span>
</span></span><span class="ltx_text" id="S5.T1.3.1.7.1.1.4" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.3.1.7.1.1.5"></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_r ltx_border_t" colspan="3" id="S5.T1.3.1.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.3.1.8.1" style="font-size:70%;">SMC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_r ltx_border_t" colspan="3" id="S5.T1.3.1.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.3.1.9.1" style="font-size:70%;">CoDe <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_r ltx_border_t" colspan="3" id="S5.T1.3.1.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.3.1.10.1" style="font-size:70%;">SVDD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_t" colspan="3" id="S5.T1.3.1.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.3.1.11.1" style="font-size:70%;"><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S5.T1.3.1.11.1.1">RBF</span> (Ours)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.4.2.2" style="width:41.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.3" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.4.2.4" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.5" style="width:21.7pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.4.2.5.1">
<span class="ltx_p" id="S5.T1.4.2.5.1.1"><span class="ltx_text" id="S5.T1.4.2.5.1.1.1" style="font-size:70%;">SD2</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.4.2.1" style="width:21.7pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.4.2.1.1">
<span class="ltx_p" id="S5.T1.4.2.1.1.1"><span class="ltx_text" id="S5.T1.4.2.1.1.1.1" style="font-size:70%;">SD2</span><sup class="ltx_sup" id="S5.T1.4.2.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S5.T1.4.2.1.1.1.2.1" style="font-size:70%;">∗</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.6" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.7" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.4.2.8" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.9" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.10" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.4.2.11" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.12" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.13" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.4.2.14" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.15" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.16" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.4.2.17" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.18" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.T1.4.2.19" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.23.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r" id="S5.T1.23.23.1" style="width:41.2pt;padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="S5.T1.23.23.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.23.23.2.1" style="font-size:70%;">V.S.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="S5.T1.23.23.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.23.23.3.1" style="font-size:70%;">V.S.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_r ltx_border_t" colspan="3" id="S5.T1.23.23.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.23.23.4.1" style="font-size:70%;">L.O.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.5" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.5.1">
<span class="ltx_p" id="S5.T1.23.23.5.1.1"><span class="ltx_text" id="S5.T1.23.23.5.1.1.1" style="font-size:70%;">L.O.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.6" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.6.1">
<span class="ltx_p" id="S5.T1.23.23.6.1.1"><span class="ltx_text" id="S5.T1.23.23.6.1.1.1" style="font-size:70%;">L.S.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.23.23.7" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.7.1">
<span class="ltx_p" id="S5.T1.23.23.7.1.1"><span class="ltx_text" id="S5.T1.23.23.7.1.1.1" style="font-size:70%;">V.S.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.8" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.8.1">
<span class="ltx_p" id="S5.T1.23.23.8.1.1"><span class="ltx_text" id="S5.T1.23.23.8.1.1.1" style="font-size:70%;">L.O.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.9" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.9.1">
<span class="ltx_p" id="S5.T1.23.23.9.1.1"><span class="ltx_text" id="S5.T1.23.23.9.1.1.1" style="font-size:70%;">L.S.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.23.23.10" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.10.1">
<span class="ltx_p" id="S5.T1.23.23.10.1.1"><span class="ltx_text" id="S5.T1.23.23.10.1.1.1" style="font-size:70%;">V.S.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.11" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.11.1">
<span class="ltx_p" id="S5.T1.23.23.11.1.1"><span class="ltx_text" id="S5.T1.23.23.11.1.1.1" style="font-size:70%;">L.O.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.12" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.12.1">
<span class="ltx_p" id="S5.T1.23.23.12.1.1"><span class="ltx_text" id="S5.T1.23.23.12.1.1.1" style="font-size:70%;">L.S.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.23.23.13" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.13.1">
<span class="ltx_p" id="S5.T1.23.23.13.1.1"><span class="ltx_text" id="S5.T1.23.23.13.1.1.1" style="font-size:70%;">V.S.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.14" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.14.1">
<span class="ltx_p" id="S5.T1.23.23.14.1.1"><span class="ltx_text" id="S5.T1.23.23.14.1.1.1" style="font-size:70%;">L.O.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.15" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.15.1">
<span class="ltx_p" id="S5.T1.23.23.15.1.1"><span class="ltx_text" id="S5.T1.23.23.15.1.1.1" style="font-size:70%;">L.S.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.23.23.16" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.23.16.1">
<span class="ltx_p" id="S5.T1.23.23.16.1.1"><span class="ltx_text" id="S5.T1.23.23.16.1.1.1" style="font-size:70%;">V.S.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.13.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.5.3.1" style="width:41.2pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.5.3.1.1">
<span class="ltx_para ltx_noindent" id="S5.T1.5.3.1.1.p1">
<span class="ltx_p" id="S5.T1.5.3.1.1.p1.1"><span class="ltx_text" id="S5.T1.5.3.1.1.p1.1.2"></span><span class="ltx_text" id="S5.T1.5.3.1.1.p1.1.3" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.5.3.1.1.p1.1.1" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.5.3.1.1.p1.1.1.1">
<span class="ltx_tr" id="S5.T1.5.3.1.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.5.3.1.1.p1.1.1.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">VQAScore<sup class="ltx_sup" id="S5.T1.5.3.1.1.p1.1.1.1.2.1.1">†</sup></span></span>
<span class="ltx_tr" id="S5.T1.5.3.1.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.5.3.1.1.p1.1.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1"><semantics id="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1a"><mo id="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1b"><ci id="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.3.1.1.p1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T1.5.3.1.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.5.3.1.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.10" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.10.1">
<span class="ltx_p" id="S5.T1.13.11.10.1.1"><span class="ltx_text" id="S5.T1.13.11.10.1.1.1" style="font-size:70%;">0.671</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.13.11.11" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.11.1">
<span class="ltx_p" id="S5.T1.13.11.11.1.1"><span class="ltx_text" id="S5.T1.13.11.11.1.1.1" style="font-size:70%;">0.647</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.12" style="width:21.7pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.12.1">
<span class="ltx_p" id="S5.T1.13.11.12.1.1"><span class="ltx_text" id="S5.T1.13.11.12.1.1.1" style="font-size:70%;">0.867</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.13.11.13" style="width:21.7pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.13.1">
<span class="ltx_p" id="S5.T1.13.11.13.1.1"><span class="ltx_text" id="S5.T1.13.11.13.1.1.1" style="font-size:70%;">0.886</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.14" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.14.1">
<span class="ltx_p" id="S5.T1.13.11.14.1.1"><span class="ltx_text" id="S5.T1.13.11.14.1.1.1" style="font-size:70%;">0.726</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.15" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.15.1">
<span class="ltx_p" id="S5.T1.13.11.15.1.1"><span class="ltx_text" id="S5.T1.13.11.15.1.1.1" style="font-size:70%;">0.879</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.13.11.16" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.16.1">
<span class="ltx_p" id="S5.T1.13.11.16.1.1"><span class="ltx_text" id="S5.T1.13.11.16.1.1.1" style="font-size:70%;">0.844</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.17" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.17.1">
<span class="ltx_p" id="S5.T1.13.11.17.1.1"><span class="ltx_text" id="S5.T1.13.11.17.1.1.1" style="font-size:70%;">0.841</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.6.4.2" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.6.4.2.1">
<span class="ltx_para ltx_noindent" id="S5.T1.6.4.2.1.p1">
<span class="ltx_p" id="S5.T1.6.4.2.1.p1.1"><span class="ltx_text" id="S5.T1.6.4.2.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.6.4.2.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.6.4.2.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.6.4.2.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.6.4.2.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.6.4.2.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.862</span></span>
<span class="ltx_tr" id="S5.T1.6.4.2.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.6.4.2.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.6.4.2.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+2.50%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.6.4.2.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.6.4.2.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.7.5.3" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.7.5.3.1">
<span class="ltx_para ltx_noindent" id="S5.T1.7.5.3.1.p1">
<span class="ltx_p" id="S5.T1.7.5.3.1.p1.1"><span class="ltx_text" id="S5.T1.7.5.3.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.7.5.3.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.7.5.3.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.7.5.3.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.7.5.3.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.7.5.3.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.877</span></span>
<span class="ltx_tr" id="S5.T1.7.5.3.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.7.5.3.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.7.5.3.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+4.28%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.7.5.3.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.7.5.3.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.18" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.18.1">
<span class="ltx_p" id="S5.T1.13.11.18.1.1"><span class="ltx_text" id="S5.T1.13.11.18.1.1.1" style="font-size:70%;">0.788</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.8.6.4" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.8.6.4.1">
<span class="ltx_para ltx_noindent" id="S5.T1.8.6.4.1.p1">
<span class="ltx_p" id="S5.T1.8.6.4.1.p1.1"><span class="ltx_text" id="S5.T1.8.6.4.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.8.6.4.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.8.6.4.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.8.6.4.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.8.6.4.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.8.6.4.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.887</span></span>
<span class="ltx_tr" id="S5.T1.8.6.4.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.8.6.4.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.8.6.4.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+12.56%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.8.6.4.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.8.6.4.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.9.7.5" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.9.7.5.1">
<span class="ltx_para ltx_noindent" id="S5.T1.9.7.5.1.p1">
<span class="ltx_p" id="S5.T1.9.7.5.1.p1.1"><span class="ltx_text" id="S5.T1.9.7.5.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.9.7.5.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.9.7.5.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.9.7.5.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.9.7.5.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.9.7.5.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.914</span></span>
<span class="ltx_tr" id="S5.T1.9.7.5.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.9.7.5.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.9.7.5.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+15.99%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.9.7.5.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.9.7.5.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.19" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.19.1">
<span class="ltx_p" id="S5.T1.13.11.19.1.1"><span class="ltx_text" id="S5.T1.13.11.19.1.1.1" style="font-size:70%;">0.788</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.10.8.6" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.10.8.6.1">
<span class="ltx_para ltx_noindent" id="S5.T1.10.8.6.1.p1">
<span class="ltx_p" id="S5.T1.10.8.6.1.p1.1"><span class="ltx_text" id="S5.T1.10.8.6.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.10.8.6.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.10.8.6.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.10.8.6.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.10.8.6.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.10.8.6.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.893</span></span>
<span class="ltx_tr" id="S5.T1.10.8.6.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.10.8.6.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.10.8.6.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+13.32%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.10.8.6.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.10.8.6.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.11.9.7" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.11.9.7.1">
<span class="ltx_para ltx_noindent" id="S5.T1.11.9.7.1.p1">
<span class="ltx_p" id="S5.T1.11.9.7.1.p1.1"><span class="ltx_text" id="S5.T1.11.9.7.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.11.9.7.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.11.9.7.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.11.9.7.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.11.9.7.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.11.9.7.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.11.9.7.1.p1.1.3.1.1.1.1">0.915</span></span></span>
<span class="ltx_tr" id="S5.T1.11.9.7.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.11.9.7.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.11.9.7.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+16.12%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.11.9.7.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.11.9.7.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.20" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.13.11.20.1">
<span class="ltx_p" id="S5.T1.13.11.20.1.1"><span class="ltx_text" id="S5.T1.13.11.20.1.1.1" style="font-size:70%;">0.788</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.12.10.8" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.12.10.8.1">
<span class="ltx_para ltx_noindent" id="S5.T1.12.10.8.1.p1">
<span class="ltx_p" id="S5.T1.12.10.8.1.p1.1"><span class="ltx_text" id="S5.T1.12.10.8.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.12.10.8.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.12.10.8.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.12.10.8.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.12.10.8.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.12.10.8.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.900</span></span>
<span class="ltx_tr" id="S5.T1.12.10.8.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.12.10.8.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.12.10.8.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+14.21%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.12.10.8.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.12.10.8.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.13.11.9" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.13.11.9.1">
<span class="ltx_para ltx_noindent" id="S5.T1.13.11.9.1.p1">
<span class="ltx_p" id="S5.T1.13.11.9.1.p1.1"><span class="ltx_text" id="S5.T1.13.11.9.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.13.11.9.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.13.11.9.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.13.11.9.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.13.11.9.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.13.11.9.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.13.11.9.1.p1.1.3.1.1.1.1">0.925</span></span></span>
<span class="ltx_tr" id="S5.T1.13.11.9.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.13.11.9.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.13.11.9.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+17.39%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.13.11.9.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.13.11.9.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.22.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.14.12.1" style="width:41.2pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.14.12.1.1">
<span class="ltx_para ltx_noindent" id="S5.T1.14.12.1.1.p1">
<span class="ltx_p" id="S5.T1.14.12.1.1.p1.1"><span class="ltx_text" id="S5.T1.14.12.1.1.p1.1.2"></span><span class="ltx_text" id="S5.T1.14.12.1.1.p1.1.3" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.14.12.1.1.p1.1.1" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.14.12.1.1.p1.1.1.1">
<span class="ltx_tr" id="S5.T1.14.12.1.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.14.12.1.1.p1.1.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">Inst. BLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1"><semantics id="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1a"><mo id="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1b"><ci id="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.14.12.1.1.p1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
<span class="ltx_tr" id="S5.T1.14.12.1.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.14.12.1.1.p1.1.1.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">(held-out)</span></span>
</span></span><span class="ltx_text" id="S5.T1.14.12.1.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.14.12.1.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.10" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.10.1">
<span class="ltx_p" id="S5.T1.22.20.10.1.1"><span class="ltx_text" id="S5.T1.22.20.10.1.1.1" style="font-size:70%;">0.741</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.22.20.11" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.11.1">
<span class="ltx_p" id="S5.T1.22.20.11.1.1"><span class="ltx_text" id="S5.T1.22.20.11.1.1.1" style="font-size:70%;">0.739</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.12" style="width:21.7pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.12.1">
<span class="ltx_p" id="S5.T1.22.20.12.1.1"><span class="ltx_text" id="S5.T1.22.20.12.1.1.1" style="font-size:70%;">0.790</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.22.20.13" style="width:21.7pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.13.1">
<span class="ltx_p" id="S5.T1.22.20.13.1.1"><span class="ltx_text" id="S5.T1.22.20.13.1.1.1" style="font-size:70%;">0.799</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.14" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.14.1">
<span class="ltx_p" id="S5.T1.22.20.14.1.1"><span class="ltx_text" id="S5.T1.22.20.14.1.1.1" style="font-size:70%;">0.775</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.15" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.15.1">
<span class="ltx_p" id="S5.T1.22.20.15.1.1"><span class="ltx_text" id="S5.T1.22.20.15.1.1.1" style="font-size:70%;">0.820</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.22.20.16" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.16.1">
<span class="ltx_p" id="S5.T1.22.20.16.1.1"><span class="ltx_text" id="S5.T1.22.20.16.1.1.1" style="font-size:70%;">0.799</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.17" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.17.1">
<span class="ltx_p" id="S5.T1.22.20.17.1.1"><span class="ltx_text" id="S5.T1.22.20.17.1.1.1" style="font-size:70%;">0.815</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.15.13.2" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.15.13.2.1">
<span class="ltx_para ltx_noindent" id="S5.T1.15.13.2.1.p1">
<span class="ltx_p" id="S5.T1.15.13.2.1.p1.1"><span class="ltx_text" id="S5.T1.15.13.2.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.15.13.2.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.15.13.2.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.15.13.2.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.15.13.2.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.15.13.2.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.811</span></span>
<span class="ltx_tr" id="S5.T1.15.13.2.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.15.13.2.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.15.13.2.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#FF0000;">–0.49%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.15.13.2.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.15.13.2.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.16.14.3" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.16.14.3.1">
<span class="ltx_para ltx_noindent" id="S5.T1.16.14.3.1.p1">
<span class="ltx_p" id="S5.T1.16.14.3.1.p1.1"><span class="ltx_text" id="S5.T1.16.14.3.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.16.14.3.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.16.14.3.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.16.14.3.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.16.14.3.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.16.14.3.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.836</span></span>
<span class="ltx_tr" id="S5.T1.16.14.3.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.16.14.3.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.16.14.3.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+2.58%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.16.14.3.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.16.14.3.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.18" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.18.1">
<span class="ltx_p" id="S5.T1.22.20.18.1.1"><span class="ltx_text" id="S5.T1.22.20.18.1.1.1" style="font-size:70%;">0.786</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.17.15.4" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.17.15.4.1">
<span class="ltx_para ltx_noindent" id="S5.T1.17.15.4.1.p1">
<span class="ltx_p" id="S5.T1.17.15.4.1.p1.1"><span class="ltx_text" id="S5.T1.17.15.4.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.17.15.4.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.17.15.4.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.17.15.4.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.17.15.4.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.17.15.4.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.815</span></span>
<span class="ltx_tr" id="S5.T1.17.15.4.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.17.15.4.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.17.15.4.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+3.69%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.17.15.4.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.17.15.4.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.18.16.5" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.18.16.5.1">
<span class="ltx_para ltx_noindent" id="S5.T1.18.16.5.1.p1">
<span class="ltx_p" id="S5.T1.18.16.5.1.p1.1"><span class="ltx_text" id="S5.T1.18.16.5.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.18.16.5.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.18.16.5.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.18.16.5.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.18.16.5.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.18.16.5.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.839</span></span>
<span class="ltx_tr" id="S5.T1.18.16.5.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.18.16.5.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.18.16.5.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+6.74%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.18.16.5.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.18.16.5.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.19" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.19.1">
<span class="ltx_p" id="S5.T1.22.20.19.1.1"><span class="ltx_text" id="S5.T1.22.20.19.1.1.1" style="font-size:70%;">0.789</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.19.17.6" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.19.17.6.1">
<span class="ltx_para ltx_noindent" id="S5.T1.19.17.6.1.p1">
<span class="ltx_p" id="S5.T1.19.17.6.1.p1.1"><span class="ltx_text" id="S5.T1.19.17.6.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.19.17.6.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.19.17.6.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.19.17.6.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.19.17.6.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.19.17.6.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.813</span></span>
<span class="ltx_tr" id="S5.T1.19.17.6.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.19.17.6.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.19.17.6.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+3.04%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.19.17.6.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.19.17.6.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S5.T1.20.18.7" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.20.18.7.1">
<span class="ltx_para ltx_noindent" id="S5.T1.20.18.7.1.p1">
<span class="ltx_p" id="S5.T1.20.18.7.1.p1.1"><span class="ltx_text" id="S5.T1.20.18.7.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.20.18.7.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.20.18.7.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.20.18.7.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.20.18.7.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.20.18.7.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.20.18.7.1.p1.1.3.1.1.1.1">0.847</span></span></span>
<span class="ltx_tr" id="S5.T1.20.18.7.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.20.18.7.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.20.18.7.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+7.35%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.20.18.7.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.20.18.7.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.20" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.22.20.20.1">
<span class="ltx_p" id="S5.T1.22.20.20.1.1"><span class="ltx_text" id="S5.T1.22.20.20.1.1.1" style="font-size:70%;">0.789</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.21.19.8" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.21.19.8.1">
<span class="ltx_para ltx_noindent" id="S5.T1.21.19.8.1.p1">
<span class="ltx_p" id="S5.T1.21.19.8.1.p1.1"><span class="ltx_text" id="S5.T1.21.19.8.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.21.19.8.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.21.19.8.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.21.19.8.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.21.19.8.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.21.19.8.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">0.813</span></span>
<span class="ltx_tr" id="S5.T1.21.19.8.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.21.19.8.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.21.19.8.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+3.04%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.21.19.8.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.21.19.8.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T1.22.20.9" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.22.20.9.1">
<span class="ltx_para ltx_noindent" id="S5.T1.22.20.9.1.p1">
<span class="ltx_p" id="S5.T1.22.20.9.1.p1.1"><span class="ltx_text" id="S5.T1.22.20.9.1.p1.1.1"></span><span class="ltx_text" id="S5.T1.22.20.9.1.p1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.22.20.9.1.p1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.22.20.9.1.p1.1.3.1">
<span class="ltx_tr" id="S5.T1.22.20.9.1.p1.1.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.22.20.9.1.p1.1.3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.22.20.9.1.p1.1.3.1.1.1.1">0.843</span></span></span>
<span class="ltx_tr" id="S5.T1.22.20.9.1.p1.1.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.22.20.9.1.p1.1.3.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S5.T1.22.20.9.1.p1.1.3.1.2.1.1" style="font-size:71%;color:#0000FF;">+6.84%</span></span></span>
</span></span><span class="ltx_text" id="S5.T1.22.20.9.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.22.20.9.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.23.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.23.21.1" style="width:41.2pt;padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S5.T1.23.21.1.1">
<span class="ltx_para ltx_noindent" id="S5.T1.23.21.1.1.p1">
<span class="ltx_p" id="S5.T1.23.21.1.1.p1.1"><span class="ltx_text" id="S5.T1.23.21.1.1.p1.1.2"></span><span class="ltx_text" id="S5.T1.23.21.1.1.p1.1.3" style="font-size:70%;"> </span><span class="ltx_text" id="S5.T1.23.21.1.1.p1.1.1" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.23.21.1.1.p1.1.1.1">
<span class="ltx_tr" id="S5.T1.23.21.1.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.23.21.1.1.p1.1.1.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">Aesthetic</span></span>
<span class="ltx_tr" id="S5.T1.23.21.1.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.23.21.1.1.p1.1.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">Score <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1"><semantics id="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1a"><mo id="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1b"><ci id="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.23.21.1.1.p1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T1.23.21.1.1.p1.1.4"></span><span class="ltx_text" id="S5.T1.23.21.1.1.p1.1.5" style="font-size:70%;"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.2" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.2.1">
<span class="ltx_p" id="S5.T1.23.21.2.1.1"><span class="ltx_text" id="S5.T1.23.21.2.1.1.1" style="font-size:70%;">5.107</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.23.21.3" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.3.1">
<span class="ltx_p" id="S5.T1.23.21.3.1.1"><span class="ltx_text" id="S5.T1.23.21.3.1.1.1" style="font-size:70%;">5.115</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.4" style="width:21.7pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.4.1">
<span class="ltx_p" id="S5.T1.23.21.4.1.1"><span class="ltx_text" id="S5.T1.23.21.4.1.1.1" style="font-size:70%;">5.181</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.23.21.5" style="width:21.7pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.5.1">
<span class="ltx_p" id="S5.T1.23.21.5.1.1"><span class="ltx_text" id="S5.T1.23.21.5.1.1.1" style="font-size:70%;">5.213</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.6" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.6.1">
<span class="ltx_p" id="S5.T1.23.21.6.1.1"><span class="ltx_text" id="S5.T1.23.21.6.1.1.1" style="font-size:70%;">5.338</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.7" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.7.1">
<span class="ltx_p" id="S5.T1.23.21.7.1.1"><span class="ltx_text" id="S5.T1.23.21.7.1.1.1" style="font-size:70%;">5.162</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.23.21.8" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.8.1">
<span class="ltx_p" id="S5.T1.23.21.8.1.1"><span class="ltx_text" id="S5.T1.23.21.8.1.1.1" style="font-size:70%;">5.254</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.9" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.9.1">
<span class="ltx_p" id="S5.T1.23.21.9.1.1"><span class="ltx_text" id="S5.T1.23.21.9.1.1.1" style="font-size:70%;">5.233</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.10" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.10.1">
<span class="ltx_p" id="S5.T1.23.21.10.1.1"><span class="ltx_text" id="S5.T1.23.21.10.1.1.1" style="font-size:70%;">5.016</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.23.21.11" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.11.1">
<span class="ltx_p" id="S5.T1.23.21.11.1.1"><span class="ltx_text" id="S5.T1.23.21.11.1.1.1" style="font-size:70%;">5.156</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.12" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.12.1">
<span class="ltx_p" id="S5.T1.23.21.12.1.1"><span class="ltx_text" id="S5.T1.23.21.12.1.1.1" style="font-size:70%;">5.190</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.13" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.13.1">
<span class="ltx_p" id="S5.T1.23.21.13.1.1"><span class="ltx_text" id="S5.T1.23.21.13.1.1.1" style="font-size:70%;">5.023</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.23.21.14" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.14.1">
<span class="ltx_p" id="S5.T1.23.21.14.1.1"><span class="ltx_text" id="S5.T1.23.21.14.1.1.1" style="font-size:70%;">5.177</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.15" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.15.1">
<span class="ltx_p" id="S5.T1.23.21.15.1.1"><span class="ltx_text" id="S5.T1.23.21.15.1.1.1" style="font-size:70%;">5.200</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.16" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.16.1">
<span class="ltx_p" id="S5.T1.23.21.16.1.1"><span class="ltx_text" id="S5.T1.23.21.16.1.1.1" style="font-size:70%;">5.052</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.23.21.17" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.17.1">
<span class="ltx_p" id="S5.T1.23.21.17.1.1"><span class="ltx_text" id="S5.T1.23.21.17.1.1.1" style="font-size:70%;">5.249</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.18" style="width:15.2pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.18.1">
<span class="ltx_p" id="S5.T1.23.21.18.1.1"><span class="ltx_text" id="S5.T1.23.21.18.1.1.1" style="font-size:70%;">5.200</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.19" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.19.1">
<span class="ltx_p" id="S5.T1.23.21.19.1.1"><span class="ltx_text" id="S5.T1.23.21.19.1.1.1" style="font-size:70%;">5.072</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S5.T1.23.21.20" style="width:19.5pt;padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.23.21.20.1">
<span class="ltx_p" id="S5.T1.23.21.20.1.1"><span class="ltx_text" id="S5.T1.23.21.20.1.1.1" style="font-size:70%;">5.237</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different inference-time scaling methods on the task of aesthetic image generation.  The methods are evaluated based on two metrics: the aesthetic score (a measure of image quality) and the ImageReward score (a held-out reward that assesses alignment with user preferences).  The table shows the performance of four methods: a baseline method (FLUX), a gradient-based method (DPS), a particle sampling method (SVDD), and the proposed Rollover Budget Forcing method (RBF). Each method's performance is reported in terms of absolute score and relative improvement compared to the baseline method. The best-performing method for each metric is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results of aesthetic image generation. † denotes the given reward used in inference time. The relative improvement in each cell is computed with respect to the base model. The best result in each row is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.F5.12">
<tr class="ltx_tr" id="S5.F5.12.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F5.12.13.1" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.12.13.1.1">
<span class="ltx_p" id="S5.F5.12.13.1.1.1"><span class="ltx_text" id="S5.F5.12.13.1.1.1.1" style="font-size:70%;">BoN</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F5.12.13.2" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.12.13.2.1">
<span class="ltx_p" id="S5.F5.12.13.2.1.1"><span class="ltx_text" id="S5.F5.12.13.2.1.1.1" style="font-size:70%;">SoP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F5.12.13.2.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S5.F5.12.13.2.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F5.12.13.3" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.12.13.3.1">
<span class="ltx_p" id="S5.F5.12.13.3.1.1"><span class="ltx_text" id="S5.F5.12.13.3.1.1.1" style="font-size:70%;">SMC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F5.12.13.3.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S5.F5.12.13.3.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F5.12.13.4" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.12.13.4.1">
<span class="ltx_p" id="S5.F5.12.13.4.1.1"><span class="ltx_text" id="S5.F5.12.13.4.1.1.1" style="font-size:70%;">CoDe </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F5.12.13.4.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S5.F5.12.13.4.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F5.12.13.5" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.12.13.5.1">
<span class="ltx_p" id="S5.F5.12.13.5.1.1"><span class="ltx_text" id="S5.F5.12.13.5.1.1.1" style="font-size:70%;">SVDD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F5.12.13.5.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19385v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S5.F5.12.13.5.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.F5.12.13.6" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.12.13.6.1">
<span class="ltx_p" id="S5.F5.12.13.6.1.1"><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S5.F5.12.13.6.1.1.1" style="font-size:70%;">RBF</span><span class="ltx_text" id="S5.F5.12.13.6.1.1.2" style="font-size:70%;"> (Ours)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.F5.12.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_t" colspan="6" id="S5.F5.12.14.1" style="padding:-3.5pt 0.0pt;">
<span class="ltx_text" id="S5.F5.12.14.1.1" style="font-size:70%;"></span><span class="ltx_text ltx_font_italic" id="S5.F5.12.14.1.2" style="font-size:90%;">“Three mugs are placed side by side; the two closest to the faucet each contain a toothbrush, while the one furthest away is empty.”</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.F5.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F5.1.1.1" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.1.1.1.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/BoN_4.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F5.2.2.2" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.2.2.2.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.2.2.2.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/SoP_4.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F5.3.3.3" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.3.3.3.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.3.3.3.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/SMC_4.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F5.4.4.4" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.4.4.4.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.4.4.4.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/CoDe_4.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F5.5.5.5" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.5.5.5.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.5.5.5.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/SVDD_4.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" id="S5.F5.6.6.6" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.6.6.6.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.6.6.6.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/Ours_4.jpg" width="110"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.F5.12.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_middle ltx_border_t" colspan="6" id="S5.F5.12.15.1" style="padding:-3.5pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S5.F5.12.15.1.1" style="font-size:90%;">“Five ants are carrying biscuits, and an ant that is not carrying biscuits is standing on a green leaf directing them.”</span></td>
</tr>
<tr class="ltx_tr" id="S5.F5.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F5.7.7.1" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.7.7.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.7.7.1.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/BoN_2.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F5.8.8.2" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.8.8.2.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.8.8.2.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/SoP_2.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F5.9.9.3" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.9.9.3.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.9.9.3.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/SMC_2.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F5.10.10.4" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.10.10.4.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.10.10.4.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/CoDe_2.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F5.11.11.5" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.11.11.5.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.11.11.5.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/SVDD_2.jpg" width="110"/>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.F5.12.12.6" style="width:82.5pt;padding:-3.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F5.12.12.6.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="110" id="S5.F5.12.12.6.1.g1" src="extracted/6307485/Figures/compositional_generation/compositional_methods_vp/Ours_2.jpg" width="110"/>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a quantitative analysis of quantity-aware image generation.  It compares different inference-time scaling methods using varying numbers of function evaluations (NFEs). The experiment uses 100 prompts from the T2I-CompBench dataset [18] for quantity-aware image generation.  The table shows the performance (measured by RSS, accuracy, VQAScore [28], and aesthetic score [44]) achieved by each method across different NFEs. The '†' symbol indicates the reward metric used for each method during inference.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative results of quantity-aware image generation in NFE scaling expriment. We use the same 100100100100 prompts from T2I-CompBench [18] as in the quantity-aware image generation task. † denotes the given reward used in the inference-time.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19385/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19385/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}