---
title: "REPA-E: Unlocking VAE for End-to-End Tuning with Latent Diffusion Transformers"
summary: "REPA-E unlocks end-to-end tuning for VAE-latent diffusion transformers, achieving faster training and enhanced image generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Australian National University",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10483 {{< /keyword >}}
{{< keyword icon="writer" >}} Xingjian Leng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10483" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10483" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10483/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional wisdom dictates that end-to-end training is optimal, but latent diffusion models (LDMs) often keep the variational auto-encoder (VAE) fixed due to latent space collapse when directly updating the VAE with the diffusion loss. Existing methods also have limitations, such as training inefficiency. This paper identifies that while direct diffusion-loss is ineffective.



To tackle these problems, this work introduces REPA-E, a novel training recipe that unlocks end-to-end training via representation-alignment (REPA) loss, enabling joint tuning of both VAE and diffusion model. REPA-E speeds up training by over 17x-45x and enhances VAE's latent space structure, leading to state-of-the-art image generation performance with an FID of 1.26. **REPA-E represents a significant advancement in latent diffusion models**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} REPA-E enables end-to-end training of VAEs with latent diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} REPA-E significantly accelerates diffusion model training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} End-to-end tuning with REPA-E improves VAE latent space structure. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research overcomes the challenge of end-to-end tuning for VAEs with latent diffusion transformers, offering faster training, better image generation, and improved latent space structures. It can potentially accelerate the development and application of generative models.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10483/x2.png)

> 🔼 Figure 1 explores the challenges and solutions for end-to-end training of latent diffusion models with variational autoencoders (VAEs).  Traditional methods keep the VAE frozen during training, updating only the generator network (a). Directly applying the diffusion loss to the VAE leads to latent space collapse (b).  This figure demonstrates that representation-alignment (REPA) loss enables end-to-end training, jointly updating both the VAE and the diffusion model (c), resulting in significantly faster training speeds (d).  Specifically, training is 17 times faster compared to REPA and 45 times faster than vanilla training methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: Can we unlock VAE for end-to-end tuning with latent-diffusion models? −-- Traditional deep learning wisdom dictates that end-to-end training is often preferable when possible. However, latent diffusion models usually only update the generator network while keeping the variational auto-encoder (VAE) fixed (a). This is because directly using the diffusion loss to update the VAE (b) causes the latent space to collapse. We show that while direct diffusion-loss is ineffective, end-to-end training can be unlocked through the representation-alignment (REPA) loss −-- allowing both encoder and diffusion model to be jointly tuned during the training process (c). Notably, this allows for significantly accelerated training; speeding up training by over 17×17\times17 × and 45×45\times45 × over REPA and vanilla training recipes, respectively (d).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.2">
<tr class="ltx_tr" id="S3.T1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1" style="font-size:90%;">Training Strategy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.1" style="font-size:90%;">Spatial Variance</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.3.1" style="font-size:90%;">Total Variation</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.2.1"><span class="ltx_text" id="S3.T1.2.2.1.1" style="font-size:90%;">w/o E2E Tuning</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2"><span class="ltx_text" id="S3.T1.2.2.2.1" style="font-size:90%;">17.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.3"><span class="ltx_text" id="S3.T1.2.2.3.1" style="font-size:90%;">6627.35</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3">
<td class="ltx_td ltx_align_left" id="S3.T1.2.3.1"><span class="ltx_text" id="S3.T1.2.3.1.1" style="font-size:90%;">E2E w/ REPA Loss</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.2"><span class="ltx_text" id="S3.T1.2.3.2.1" style="font-size:90%;">18.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.3"><span class="ltx_text" id="S3.T1.2.3.3.1" style="font-size:90%;">5516.14</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4" style="background-color:#FFE6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.2.4.1"><span class="ltx_text" id="S3.T1.2.4.1.1" style="font-size:90%;background-color:#FFE6E6;">E2E w/ Diff. Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.4.2"><span class="ltx_text" id="S3.T1.2.4.2.1" style="font-size:90%;color:#000000;background-color:#FFE6E6;">0.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.4.3"><span class="ltx_text" id="S3.T1.2.4.3.1" style="font-size:90%;color:#000000;background-color:#FFE6E6;">89.80</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table investigates the impact of different training approaches on the latent space of a Variational Autoencoder (VAE) used in a Latent Diffusion Model (LDM). It compares three methods: standard LDM training (no end-to-end tuning), naive end-to-end tuning with only the diffusion loss, and end-to-end training using the REPA loss.  The table shows the total variation and mean variance across the VAE's latent channels for each method. The results demonstrate that using the diffusion loss for end-to-end training leads to a simpler latent space, which is easier to optimize for the denoising task but reduces the quality of generated images.  Conversely, using REPA loss during end-to-end training yields better results.  All experiments use the same SDVAE for initialization and are conducted with a SiT-XL/2 LDM after 400K iterations.
> <details>
> <summary>read the caption</summary>
> Table 1: Impact of Naive End-to-End Training with Diffusion Loss. We report total variation [41] and mean variance along each VAE latent channel for three training settings: 1) Standard LDM training (w/o end-to-end (E2E) tuning), 2) Naive E2E tuning with Diffusion loss, 3) E2E tuning with REPA loss [53]. All experiments use SDVAE for VAE initialization. We observe that using diffusion loss for end-to-end tuning encourages learning a simpler latent space with lower variance along the spatial dimensions (Fig. 3a). The simpler latent space is easier for denoising objective (§3.1), but degrages final generation performance (Fig. 1). All results are reported at 400K iterations with SiT-XL/2 [30] as LDM.
> </details>





### In-depth insights


#### REPA-E: Unlocking
The title "REPA-E: Unlocking" suggests a pivotal role for REPA-E in **overcoming limitations** within a specific domain. 'Unlocking' implies accessing previously unavailable capabilities or improvements. Given the context of latent diffusion models, it hints at REPA-E's ability to **enable end-to-end training** which was otherwise infeasible, or achieving superior performance compared to previous methods. It might involve **addressing bottlenecks** that previously hindered training or deployment. This suggests a method that can open up new **possibilities** for latent diffusion models, in terms of performance, efficiency, or applicability. The title also indicates that the improvements are significant enough to warrant the use of the word unlocking. **REPA-E likely offers benefits** related to training efficiency, model performance, or generalization ability.

#### VAE Structure
The paper delves into the **intricacies of VAE structures within latent diffusion models.** It observes that pre-trained VAEs can exhibit issues like **high-frequency noise or over-smoothing,** impacting the final generation quality. The study explores how **end-to-end training with REPA-E** adaptively refines the VAE's latent space. For instance, it demonstrates how end-to-end training can reduce noise in SD-VAE and introduce more detail in the latent space of over-smoothed VAEs. This suggests that **REPA-E can enhance the VAE and can be used as an effective drop-in replacement.**

#### REPA-E Recipe
The REPA-E recipe represents an intriguing approach to **end-to-end training** of latent diffusion models. Traditional methods fix the VAE, but REPA-E unlocks joint tuning. It's interesting to see how representation alignment, rather than direct diffusion loss, is key. REPA-E's efficiency gains, **speeding up training by 17x-45x**, are significant. This acceleration, coupled with improved latent space structure and downstream performance, underscores its value. The method's adaptability across VAE architectures further highlights its robustness. Essentially, REPA-E smartly leverages representation alignment to bypass the instability of directly optimizing VAEs with diffusion loss, resulting in faster, better training and ultimately superior generative models. This shift from fixed VAEs to **jointly optimized VAEs and diffusion models** marks a promising direction.

#### E2E Tuned VAE
End-to-end tuned VAEs represent a significant advancement in latent diffusion models. By jointly optimizing the VAE and diffusion model, **REPA-E unlocks improved latent space structures** and downstream generation performance. **Finetuned VAEs** exhibit enhanced stability and robustness, enabling their use as drop-in replacements for original VAEs, **accelerating generation performance** and achieving superior FID scores. This approach not only refines the latent space but also allows VAEs to benefit from the regularization effects of diffusion training, leading to more coherent and semantically meaningful representations. Ultimately, **end-to-end tuning provides a robust and scalable framework for enhancing VAEs** in latent diffusion models.

#### Key Insights
The paper presents key insights into end-to-end training of latent diffusion models (LDMs) with VAEs. It addresses the challenge that **naïve end-to-end tuning using diffusion loss is ineffective**, even degrading performance. The diffusion loss encourages a simpler latent space that eases denoising but hurts generation. It is discovered that **higher representation alignment correlates with better generation**, suggesting alignment score as a proxy for improvement. The maximum achievable alignment with vanilla REPA is **limited by VAE features**, but backpropagating REPA loss to the VAE resolves this.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10483/extracted/6357628/figures/vae_latent_space_teaser-v2.png)

> 🔼 This figure visualizes the latent space structure of different VAEs (Variational Autoencoders) before and after end-to-end training using Principal Component Analysis (PCA).  The PCA projects the high-dimensional latent space into three dimensions, represented as RGB color channels.  The visualizations allow for a comparison of the latent space's characteristics (such as smoothness and noise levels) before and after the end-to-end training process, showcasing how end-to-end tuning affects the VAE's learned representation.
> <details>
> <summary>read the caption</summary>
> (a) PCA Analysis on VAE Latent Space Structure
> </details>



![](https://arxiv.org/html/2504.10483/x3.png)

> 🔼 This figure's subplot (b) shows the improvement in performance achieved by using REPA-E after 400,000 training steps.  It compares the final generation performance (as measured by the gFID-50K metric) of different approaches to training latent diffusion models:  REPA and REPA-E. The bar chart visually demonstrates the significant improvement in generation quality offered by REPA-E in comparison to REPA.
> <details>
> <summary>read the caption</summary>
> (b) Performance Improvements with REPA-E (400K Steps)
> </details>



![](https://arxiv.org/html/2504.10483/extracted/6357628/figures/gfid-cknna-corr-v4.png)

> 🔼 This figure demonstrates the impact of end-to-end training on the latent space structure of Variational Autoencoders (VAEs).  Part (a) uses Principal Component Analysis (PCA) to visualize the latent space of two different VAEs (SD-VAE and IN-VAE) before and after end-to-end training.  It shows that SD-VAE's latent space initially contains high-frequency noise, which is reduced through end-to-end training, resulting in a smoother representation.  Conversely, IN-VAE's latent space is initially over-smoothed, but end-to-end training adds detail, resulting in a more refined representation. Part (b) shows that jointly training the VAE and Latent Diffusion Model (LDM) leads to significant improvements in the final generation performance (measured by gFID), regardless of the VAE architecture.
> <details>
> <summary>read the caption</summary>
> Figure 2: End-to-End Training Automatically Improves VAE Latent-Space Structure. (a) Following [25], we visualize latent space structure from different VAEs before and after end-to-end training using principal component analysis (PCA) that projects them to three channels colored by RGB. We consider SD-VAE [39], and IN-VAE222trained on imagenet at f16d32 using official training code from [39]., a 16×16\times16 × downsampling, 32-channel VAE trained on ImageNet [6]. For SD-VAE we find that latent representations have high-frequency noise. Applying end-to-end tuning helps learning a more smooth and less noisy latent representation. Interestingly to the contrast, the latent space for IN-VAE is over-smoothed (e.g., row-2). Applying end-to-end tuning automatically helps learn a more detailed latent space structure to best support final generation performance. (b) Jointly tuning both VAE and latent diffusion model (LDM) significantly improves final generation performance (gFID) across different VAE architectures.
> </details>



![](https://arxiv.org/html/2504.10483/x4.png)

> 🔼 This figure uses Principal Component Analysis (PCA) to visualize the latent spaces of several Variational Autoencoders (VAEs) with and without end-to-end training using the REPA loss.  The visualization allows for a comparison of the latent space structure before and after training, highlighting the impact of the proposed method on the quality and characteristics of the latent representations.  Different VAEs exhibit different latent space properties (high-frequency noise, over-smoothing, etc.) which are altered through the end-to-end training process. 
> <details>
> <summary>read the caption</summary>
> (a) PCA Visualization of Latent Spaces
> </details>



![](https://arxiv.org/html/2504.10483/x7.png)

> 🔼 This figure shows a strong correlation between the generation FID (gFID) score and the representation alignment score (CKNNA).  Lower gFID indicates better image generation quality.  The plot demonstrates that a higher CKNNA score is strongly correlated with a lower gFID, suggesting that aligning representations improves image generation performance.  The R-squared value of 0.97 indicates a very strong correlation.
> <details>
> <summary>read the caption</summary>
> (b) Correlation: gFID & CKNNA Score
> </details>



![](https://arxiv.org/html/2504.10483/x8.png)

> 🔼 This figure demonstrates the effectiveness of end-to-end training with the representation alignment (REPA) loss.  The left panel (a) shows a PCA visualization of latent spaces, highlighting the impact of end-to-end tuning with diffusion loss versus REPA loss. The middle panel (b) shows the strong correlation between the CKNNA (an alignment score) and generation FID, suggesting that higher alignment improves generation quality.  The right panel (c) is the main focus, illustrating how end-to-end training with REPA consistently increases the CKNNA score over training iterations compared to standard REPA training. This proves that incorporating the REPA loss into the end-to-end process allows improved alignment of representations, ultimately leading to better image generation.
> <details>
> <summary>read the caption</summary>
> (c) E2E tuning with REPA improves CKNNA Score
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.4">
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.4.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.5.1" style="font-size:90%;">Tokenizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.6.1" style="font-size:90%;">Epochs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1" style="font-size:90%;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.1" style="font-size:90%;">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.1" style="font-size:90%;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.5" style="background-color:#EBEBFF;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T2.4.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.1.1" style="font-size:90%;background-color:#EBEBFF;">Without End-to-End Tuning</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.4.6.1.1" style="font-size:90%;">MaskDiT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S4.T2.4.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.2" rowspan="4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.6.2.1" style="font-size:90%;">SD-VAE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.6.3.1" style="font-size:90%;">1600</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.6.4.1" style="font-size:90%;">5.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.6.5.1" style="font-size:90%;">10.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.6.6.1" style="font-size:90%;">177.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.7">
<td class="ltx_td ltx_align_left" id="S4.T2.4.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.4.7.1.1" style="font-size:90%;">DiT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T2.4.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.7.2.1" style="font-size:90%;">1400</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.7.3.1" style="font-size:90%;">9.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.7.4.1" style="font-size:90%;">6.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.7.5.1" style="font-size:90%;">121.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.8">
<td class="ltx_td ltx_align_left" id="S4.T2.4.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.4.8.1.1" style="font-size:90%;">SiT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S4.T2.4.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.8.2.1" style="font-size:90%;">1400</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.8.3.1" style="font-size:90%;">8.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.8.4.1" style="font-size:90%;">6.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.8.5.1" style="font-size:90%;">131.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.9">
<td class="ltx_td ltx_align_left" id="S4.T2.4.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.4.9.1.1" style="font-size:90%;">FasterDiT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S4.T2.4.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.9.2.1" style="font-size:90%;">400</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.9.3.1" style="font-size:90%;">7.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.9.4.1" style="font-size:90%;">5.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.9.5.1" style="font-size:90%;">131.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.10.1" rowspan="4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.10.1.1" style="font-size:90%;">REPA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.10.2" rowspan="4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.10.2.1" style="font-size:90%;">SD-VAE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.10.3.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.10.4.1" style="font-size:90%;">19.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.10.5.1" style="font-size:90%;">6.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.10.6.1" style="font-size:90%;">67.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.11">
<td class="ltx_td ltx_align_center" id="S4.T2.4.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.11.1.1" style="font-size:90%;">40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.11.2.1" style="font-size:90%;">11.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.11.3.1" style="font-size:90%;">6.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.11.4.1" style="font-size:90%;">67.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.12">
<td class="ltx_td ltx_align_center" id="S4.T2.4.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.12.1.1" style="font-size:90%;">80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.12.2.1" style="font-size:90%;">7.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.12.3.1" style="font-size:90%;">5.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.12.4.1" style="font-size:90%;">122.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.13">
<td class="ltx_td ltx_align_center" id="S4.T2.4.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.13.1.1" style="font-size:90%;">800</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.13.2.1" style="font-size:90%;">5.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.13.3.1" style="font-size:90%;">5.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.13.4.1" style="font-size:90%;">157.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.14" style="background-color:#EBEBFF;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T2.4.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.14.1.1" style="font-size:90%;background-color:#EBEBFF;">With End-to-End Tuning (Ours)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.4.4.2" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.2.1" style="font-size:90%;">REPA-E</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.4.4.1" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.4.1.1" style="font-size:90%;">SD-VAE<sup class="ltx_sup" id="S4.T2.4.4.1.1.1">⋆</sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.4.3.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.1" style="font-size:90%;">12.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.4.5.1" style="font-size:90%;">5.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.4.6.1" style="font-size:90%;">88.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.15">
<td class="ltx_td ltx_align_center" id="S4.T2.4.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.15.1.1" style="font-size:90%;">40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.15.2.1" style="font-size:90%;">7.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.15.3.1" style="font-size:90%;">4.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.15.4.1" style="font-size:90%;">123.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.16">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.4.16.1.1" style="font-size:90%;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.16.2.1" style="font-size:90%;">4.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.16.3.1" style="font-size:90%;">4.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.16.4.1" style="font-size:90%;">161.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed REPA-E method against other methods for image generation.  It shows that REPA-E achieves significantly lower gFID (a metric indicating image quality) with far fewer training epochs.  Specifically, REPA-E with only 80 epochs outperforms the standard REPA method trained for 800 epochs (ten times more). The table highlights the speed and efficiency gains from the end-to-end training approach in REPA-E.  A key aspect is that the VAE (Variational Autoencoder) is also updated in REPA-E, unlike other approaches where the VAE is kept fixed. All results are for ImageNet 256x256 images and are generated without classifier-free guidance, although a more comprehensive comparison including classifier-free guidance and state-of-the-art methods is presented in Table 10 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 2: REPA-E for Accelerated Generation Performance. End-to-End training with REPA-E achieves significantly better performance (lower gFID) while using fewer epochs. Notably, REPA-E with only 80 epochs surpasses vanilla REPA using 10×10\times10 × epochs. ⋆ indicates that VAE is updated during end-to-end training. All results are w/o classifier-free guidance on ImageNet 256 ×\times× 256. Additional system-level comparisons with classifier-free guidance and state-of-the-art results are provided in Tab. 10.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.5">
<tr class="ltx_tr" id="S4.T3.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.5.5.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.6.1" style="font-size:90%;">Diff. Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1" style="font-size:90%;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.1" style="font-size:90%;">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.1" style="font-size:90%;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.1" style="font-size:90%;">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.1" style="font-size:90%;">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><ci id="S4.T3.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.6.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.6.1.1" style="font-size:90%;">SiT-B (130M)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.6.2.1" style="font-size:90%;">49.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.6.3.1" style="font-size:90%;">7.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.6.4.1" style="font-size:90%;">27.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.6.5.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.6.6.1" style="font-size:90%;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.7" style="background-color:#FFEBEB;">
<td class="ltx_td ltx_align_left" id="S4.T3.5.7.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.1.1" style="font-size:90%;background-color:#FFEBEB;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.2.1" style="font-size:90%;background-color:#FFEBEB;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.3.1" style="font-size:90%;background-color:#FFEBEB;">6.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.4.1" style="font-size:90%;background-color:#FFEBEB;">39.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.5.1" style="font-size:90%;background-color:#FFEBEB;">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.6.1" style="font-size:90%;background-color:#FFEBEB;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.8.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.8.1.1" style="font-size:90%;">SiT-L (458M)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.8.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.8.2.1" style="font-size:90%;">24.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.8.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.8.3.1" style="font-size:90%;">6.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.8.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.8.4.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.8.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.8.5.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.8.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.8.6.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.9" style="background-color:#FFEBEB;">
<td class="ltx_td ltx_align_left" id="S4.T3.5.9.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.9.1.1" style="font-size:90%;background-color:#FFEBEB;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.9.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.9.2.1" style="font-size:90%;background-color:#FFEBEB;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.9.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.9.3.1" style="font-size:90%;background-color:#FFEBEB;">5.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.9.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.9.4.1" style="font-size:90%;background-color:#FFEBEB;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.9.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.9.5.1" style="font-size:90%;background-color:#FFEBEB;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.9.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.9.6.1" style="font-size:90%;background-color:#FFEBEB;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.10.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.10.1.1" style="font-size:90%;">SiT-XL (675M)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.10.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.10.2.1" style="font-size:90%;">19.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.10.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.10.3.1" style="font-size:90%;">6.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.10.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.10.4.1" style="font-size:90%;">67.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.10.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.10.5.1" style="font-size:90%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.10.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.10.6.1" style="font-size:90%;">0.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.11" style="background-color:#FFEBEB;">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T3.5.11.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.11.1.1" style="font-size:90%;background-color:#FFEBEB;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.11.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.11.2.1" style="font-size:90%;background-color:#FFEBEB;">12.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.11.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.11.3.1" style="font-size:90%;background-color:#FFEBEB;">5.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.11.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.11.4.1" style="font-size:90%;background-color:#FFEBEB;">88.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.11.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.11.5.1" style="font-size:90%;background-color:#FFEBEB;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.11.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T3.5.11.6.1" style="font-size:90%;background-color:#FFEBEB;">0.58</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the REPA-E method across different model sizes (SiT-B, SiT-L, and SiT-XL).  It shows the improvements achieved by REPA-E in terms of gFID, sFID, IS, precision, and recall.  The results demonstrate the effectiveness of REPA-E across various scales, highlighting its ability to consistently improve generation performance irrespective of model complexity. For each model size, the table also includes a baseline result obtained using the vanilla REPA method for comparison, providing a clear illustration of the benefits brought about by REPA-E.
> <details>
> <summary>read the caption</summary>
> Table 3: Variation in Model-Scale. We find that REPA-E brings substantial performance improvements across all model-scales. All baselines are reported using vanilla-REPA [53] for training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.5">
<tr class="ltx_tr" id="S4.T4.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.5.5.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1" style="font-size:90%;">Target Repr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1" style="font-size:90%;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.1" style="font-size:90%;">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.1" style="font-size:90%;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.1.m1.1b"><ci id="S4.T4.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.4.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.1" style="font-size:90%;">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.1.m1.1b"><ci id="S4.T4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.5.1" style="font-size:90%;">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.1.m1.1a"><mo id="S4.T4.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T4.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.1.m1.1b"><ci id="S4.T4.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.6.1" style="padding-left:5.7pt;padding-right:5.7pt;">
<span class="ltx_text" id="S4.T4.5.6.1.1" style="font-size:90%;">I-JEPA-H </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S4.T4.5.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.6.2.1" style="font-size:90%;">23.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.6.3.1" style="font-size:90%;">5.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.6.4.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.6.5.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.6.6.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.7" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_left" id="S4.T4.5.7.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.1.1" style="font-size:90%;background-color:#FFFFE6;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.2.1" style="font-size:90%;background-color:#FFFFE6;">16.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.3.1" style="font-size:90%;background-color:#FFFFE6;">5.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.4.1" style="font-size:90%;background-color:#FFFFE6;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.5.1" style="font-size:90%;background-color:#FFFFE6;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.6.1" style="font-size:90%;background-color:#FFFFE6;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.8.1" style="padding-left:5.7pt;padding-right:5.7pt;">
<span class="ltx_text" id="S4.T4.5.8.1.1" style="font-size:90%;">CLIP-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.T4.5.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.8.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.8.2.1" style="font-size:90%;">29.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.8.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.8.3.1" style="font-size:90%;">5.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.8.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.8.4.1" style="font-size:90%;">46.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.8.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.8.5.1" style="font-size:90%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.8.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.8.6.1" style="font-size:90%;">0.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.9" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_left" id="S4.T4.5.9.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.9.1.1" style="font-size:90%;background-color:#FFFFE6;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.9.2.1" style="font-size:90%;background-color:#FFFFE6;">23.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.9.3.1" style="font-size:90%;background-color:#FFFFE6;">6.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.9.4.1" style="font-size:90%;background-color:#FFFFE6;">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.9.5.1" style="font-size:90%;background-color:#FFFFE6;">0.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.9.6.1" style="font-size:90%;background-color:#FFFFE6;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.10.1" style="padding-left:5.7pt;padding-right:5.7pt;">
<span class="ltx_text" id="S4.T4.5.10.1.1" style="font-size:90%;">DINOv2-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a><span class="ltx_text" id="S4.T4.5.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.10.2.1" style="font-size:90%;">24.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.10.3.1" style="font-size:90%;">6.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.10.4.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.10.5.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.10.6.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.11" style="background-color:#FFFFEB;">
<td class="ltx_td ltx_align_left" id="S4.T4.5.11.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.11.1.1" style="font-size:90%;background-color:#FFFFEB;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.11.2.1" style="font-size:90%;background-color:#FFFFEB;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.11.3.1" style="font-size:90%;background-color:#FFFFEB;">5.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.11.4.1" style="font-size:90%;background-color:#FFFFEB;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.11.5.1" style="font-size:90%;background-color:#FFFFEB;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.11.6.1" style="font-size:90%;background-color:#FFFFEB;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.12.1" style="padding-left:5.7pt;padding-right:5.7pt;">
<span class="ltx_text" id="S4.T4.5.12.1.1" style="font-size:90%;">DINOv2-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a><span class="ltx_text" id="S4.T4.5.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.12.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.12.2.1" style="font-size:90%;">23.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.12.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.12.3.1" style="font-size:90%;">5.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.12.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.12.4.1" style="font-size:90%;">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.12.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.12.5.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.12.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.12.6.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.13" style="background-color:#FFFFEB;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.5.13.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.13.1.1" style="font-size:90%;background-color:#FFFFEB;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.13.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.13.2.1" style="font-size:90%;background-color:#FFFFEB;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.13.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.13.3.1" style="font-size:90%;background-color:#FFFFEB;">5.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.13.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.13.4.1" style="font-size:90%;background-color:#FFFFEB;">77.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.13.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.13.5.1" style="font-size:90%;background-color:#FFFFEB;">0.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.13.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T4.5.13.6.1" style="font-size:90%;background-color:#FFFFEB;">0.58</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the impact of using different representation encoders (models used for comparing features during training) on the performance of the REPA-E method.  Specifically, it demonstrates the consistency of REPA-E's performance improvements (as measured by FID, other metrics) across various encoder choices.  All the baseline results in this table use the original REPA method for training, allowing a direct comparison to show the consistent benefits of the proposed REPA-E approach.
> <details>
> <summary>read the caption</summary>
> Table 4: Variation in Representation Encoder. REPA-E yields consistent performance improvements across different choices for the representation-encoder used for representation-alignment [53]. All baselines are reported using vanilla-REPA [53] for training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.5">
<tr class="ltx_tr" id="S4.T5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.5.5.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.6.1" style="font-size:90%;">Autoencoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1" style="font-size:90%;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.1" style="font-size:90%;">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.1.m1.1"><semantics id="S4.T5.2.2.2.1.m1.1a"><mo id="S4.T5.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.1.m1.1b"><ci id="S4.T5.2.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.1" style="font-size:90%;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.1.m1.1"><semantics id="S4.T5.3.3.3.1.m1.1a"><mo id="S4.T5.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.1.m1.1b"><ci id="S4.T5.3.3.3.1.m1.1.1.cmml" xref="S4.T5.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.1" style="font-size:90%;">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.1.m1.1"><semantics id="S4.T5.4.4.4.1.m1.1a"><mo id="S4.T5.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T5.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.1.m1.1b"><ci id="S4.T5.4.4.4.1.m1.1.1.cmml" xref="S4.T5.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.5.5.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.5.1" style="font-size:90%;">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.5.5.5.1.m1.1"><semantics id="S4.T5.5.5.5.1.m1.1a"><mo id="S4.T5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.1.m1.1b"><ci id="S4.T5.5.5.5.1.m1.1.1.cmml" xref="S4.T5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.6.1" style="padding-left:5.7pt;padding-right:5.7pt;">
<span class="ltx_text" id="S4.T5.5.6.1.1" style="font-size:90%;">SD-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T5.5.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.6.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.6.2.1" style="font-size:90%;">24.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.6.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.6.3.1" style="font-size:90%;">6.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.6.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.6.4.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.6.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.6.5.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.6.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.6.6.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.7" style="background-color:#EBEBFF;">
<td class="ltx_td ltx_align_left" id="S4.T5.5.7.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.7.1.1" style="font-size:90%;background-color:#EBEBFF;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.7.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.7.2.1" style="font-size:90%;background-color:#EBEBFF;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.7.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.7.3.1" style="font-size:90%;background-color:#EBEBFF;">5.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.7.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.7.4.1" style="font-size:90%;background-color:#EBEBFF;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.7.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.7.5.1" style="font-size:90%;background-color:#EBEBFF;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.7.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.7.6.1" style="font-size:90%;background-color:#EBEBFF;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.8.1" style="padding-left:5.7pt;padding-right:5.7pt;">
<span class="ltx_text" id="S4.T5.5.8.1.1" style="font-size:90%;">IN-VAE </span><em class="ltx_emph ltx_font_italic" id="S4.T5.5.8.1.2" style="font-size:90%;">(f16d32)</em>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.8.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.8.2.1" style="font-size:90%;">22.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.8.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.8.3.1" style="font-size:90%;">5.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.8.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.8.4.1" style="font-size:90%;">56.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.8.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.8.5.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.8.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.8.6.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.9" style="background-color:#EBEBFF;">
<td class="ltx_td ltx_align_left" id="S4.T5.5.9.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.9.1.1" style="font-size:90%;background-color:#EBEBFF;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.9.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.9.2.1" style="font-size:90%;background-color:#EBEBFF;">12.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.9.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.9.3.1" style="font-size:90%;background-color:#EBEBFF;">5.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.9.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.9.4.1" style="font-size:90%;background-color:#EBEBFF;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.9.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.9.5.1" style="font-size:90%;background-color:#EBEBFF;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.9.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.9.6.1" style="font-size:90%;background-color:#EBEBFF;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.10.1" style="padding-left:5.7pt;padding-right:5.7pt;">
<span class="ltx_text" id="S4.T5.5.10.1.1" style="font-size:90%;">VA-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S4.T5.5.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.10.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.10.2.1" style="font-size:90%;">12.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.10.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.10.3.1" style="font-size:90%;">6.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.10.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.10.4.1" style="font-size:90%;">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.10.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.10.5.1" style="font-size:90%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.10.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T5.5.10.6.1" style="font-size:90%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.11" style="background-color:#EBEBFF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.5.11.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.11.1.1" style="font-size:90%;background-color:#EBEBFF;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.11.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.11.2.1" style="font-size:90%;background-color:#EBEBFF;">11.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.11.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.11.3.1" style="font-size:90%;background-color:#EBEBFF;">5.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.11.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.11.4.1" style="font-size:90%;background-color:#EBEBFF;">88.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.11.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.11.5.1" style="font-size:90%;background-color:#EBEBFF;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.11.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.11.6.1" style="font-size:90%;background-color:#EBEBFF;">0.61</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the generation performance achieved using different Variational Autoencoders (VAEs) in conjunction with the REPA-E training method.  It demonstrates the robustness of REPA-E by showcasing its effectiveness across diverse VAE architectures, highlighting that improved generation performance is achieved regardless of the specific VAE used.  The results are compared against those obtained using the original REPA method for training, providing a clear indication of REPA-E's impact on improving the final generation quality.
> <details>
> <summary>read the caption</summary>
> Table 5: Variation in VAE Architecture. REPA-E improves generation-performance across different choices for the VAE. All baselines are reported using vanilla-REPA [53] for training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.5">
<tr class="ltx_tr" id="S4.T6.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T6.5.5.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.5.6.1" style="font-size:90%;">Aln. Depth</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1" style="font-size:90%;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.2.1" style="font-size:90%;">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.1.m1.1"><semantics id="S4.T6.2.2.2.1.m1.1a"><mo id="S4.T6.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.1.m1.1b"><ci id="S4.T6.2.2.2.1.m1.1.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.3.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.1" style="font-size:90%;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.1.m1.1"><semantics id="S4.T6.3.3.3.1.m1.1a"><mo id="S4.T6.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T6.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.1.m1.1b"><ci id="S4.T6.3.3.3.1.m1.1.1.cmml" xref="S4.T6.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.4.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.4.4.4.1" style="font-size:90%;">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.4.4.4.1.m1.1"><semantics id="S4.T6.4.4.4.1.m1.1a"><mo id="S4.T6.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T6.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.4.1.m1.1b"><ci id="S4.T6.4.4.4.1.m1.1.1.cmml" xref="S4.T6.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.5.5.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.5.5.1" style="font-size:90%;">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.5.5.5.1.m1.1"><semantics id="S4.T6.5.5.5.1.m1.1a"><mo id="S4.T6.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T6.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.5.5.5.1.m1.1b"><ci id="S4.T6.5.5.5.1.m1.1.1.cmml" xref="S4.T6.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.5.6.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.6.1.1" style="font-size:90%;">6th layer</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.6.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.6.2.1" style="font-size:90%;">23.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.6.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.6.3.1" style="font-size:90%;">5.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.6.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.6.4.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.6.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.6.5.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.6.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.6.6.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.7" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S4.T6.5.7.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.7.1.1" style="font-size:90%;background-color:#E6FFE6;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.7.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.7.2.1" style="font-size:90%;background-color:#E6FFE6;">16.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.7.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.7.3.1" style="font-size:90%;background-color:#E6FFE6;">6.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.7.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.7.4.1" style="font-size:90%;background-color:#E6FFE6;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.7.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.7.5.1" style="font-size:90%;background-color:#E6FFE6;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.7.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.7.6.1" style="font-size:90%;background-color:#E6FFE6;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.5.8.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.8.1.1" style="font-size:90%;">8th layer</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.8.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.8.2.1" style="font-size:90%;">24.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.8.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.8.3.1" style="font-size:90%;">6.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.8.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.8.4.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.8.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.8.5.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.8.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.8.6.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.9" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S4.T6.5.9.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.9.1.1" style="font-size:90%;background-color:#E6FFE6;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.9.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.9.2.1" style="font-size:90%;background-color:#E6FFE6;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.9.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.9.3.1" style="font-size:90%;background-color:#E6FFE6;">5.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.9.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.9.4.1" style="font-size:90%;background-color:#E6FFE6;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.9.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.9.5.1" style="font-size:90%;background-color:#E6FFE6;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.9.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.9.6.1" style="font-size:90%;background-color:#E6FFE6;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.5.10.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.10.1.1" style="font-size:90%;">10th layer</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.10.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.10.2.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.10.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.10.3.1" style="font-size:90%;">5.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.10.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.10.4.1" style="font-size:90%;">56.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.10.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.10.5.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.10.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.10.6.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.11" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T6.5.11.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.11.1.1" style="font-size:90%;background-color:#E6FFE6;">+REPA-E (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.5.11.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.11.2.1" style="font-size:90%;background-color:#E6FFE6;">16.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.5.11.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.11.3.1" style="font-size:90%;background-color:#E6FFE6;">5.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.5.11.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.11.4.1" style="font-size:90%;background-color:#E6FFE6;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.5.11.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.11.5.1" style="font-size:90%;background-color:#E6FFE6;">0.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.5.11.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S4.T6.5.11.6.1" style="font-size:90%;background-color:#E6FFE6;">0.58</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table investigates the effect of applying the representation alignment loss at different layers of the diffusion model.  It demonstrates that the proposed end-to-end training method (REPA-E) consistently improves performance compared to the original REPA method, regardless of the specific layer chosen for alignment.  The results highlight the robustness of REPA-E across different alignment depths.
> <details>
> <summary>read the caption</summary>
> Table 6: Variation in Alignment Depth. End-to-End tuning (REPA-E) gives consistent performance imrpovements over original REPA [53] across varying alignment-depths. All baselines are reported using vanilla-REPA [53] for training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T7.8">
<tr class="ltx_tr" id="S4.T7.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T7.5.5.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.5.5.6.1" style="font-size:90%;">Component</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.1.1.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.1.1" style="font-size:90%;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T7.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.2.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.2.2.1" style="font-size:90%;">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.1.m1.1"><semantics id="S4.T7.2.2.2.1.m1.1a"><mo id="S4.T7.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T7.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.1.m1.1b"><ci id="S4.T7.2.2.2.1.m1.1.1.cmml" xref="S4.T7.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.3.3.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.3.1" style="font-size:90%;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.3.3.3.1.m1.1"><semantics id="S4.T7.3.3.3.1.m1.1a"><mo id="S4.T7.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T7.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.1.m1.1b"><ci id="S4.T7.3.3.3.1.m1.1.1.cmml" xref="S4.T7.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.4.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.4.1" style="font-size:90%;">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.4.4.4.1.m1.1"><semantics id="S4.T7.4.4.4.1.m1.1a"><mo id="S4.T7.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T7.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.1.m1.1b"><ci id="S4.T7.4.4.4.1.m1.1.1.cmml" xref="S4.T7.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.5.5.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.5.5.5.1" style="font-size:90%;">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.5.5.5.1.m1.1"><semantics id="S4.T7.5.5.5.1.m1.1a"><mo id="S4.T7.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T7.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.5.5.5.1.m1.1b"><ci id="S4.T7.5.5.5.1.m1.1.1.cmml" xref="S4.T7.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.6.6.1" style="padding-left:4.8pt;padding-right:4.8pt;">
<span class="ltx_text" id="S4.T7.6.6.1.1" style="font-size:90%;">w/o </span><span class="ltx_text ltx_markedasmath ltx_font_typewriter" id="S4.T7.6.6.1.2" style="font-size:90%;">stopgrad</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.6.6.2.1" style="font-size:90%;">444.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.6.6.3.1" style="font-size:90%;">460.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.6.6.4.1" style="font-size:90%;">1.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.6.6.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.6.6.6.1" style="font-size:90%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.7.7" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S4.T7.7.7.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.7.7.1.1" style="font-size:90%;background-color:#FFFFFF;">w/o <span class="ltx_text ltx_markedasmath ltx_font_typewriter" id="S4.T7.7.7.1.1.1" style="background-color:#FFFFFF;">batch-norm</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.7.7.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.7.7.2.1" style="font-size:90%;background-color:#FFFFFF;">18.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.7.7.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.7.7.3.1" style="font-size:90%;background-color:#FFFFFF;">5.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.7.7.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.7.7.4.1" style="font-size:90%;background-color:#FFFFFF;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.7.7.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.7.7.5.1" style="font-size:90%;background-color:#FFFFFF;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.7.7.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.7.7.6.1" style="font-size:90%;background-color:#FFFFFF;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.8.8">
<td class="ltx_td ltx_align_left" id="S4.T7.8.8.1" style="padding-left:4.8pt;padding-right:4.8pt;">
<span class="ltx_text" id="S4.T7.8.8.1.1" style="font-size:90%;">w/o </span><math alttext="\mathcal{L}_{\mathrm{REG}}" class="ltx_Math" display="inline" id="S4.T7.8.8.1.m1.1"><semantics id="S4.T7.8.8.1.m1.1a"><msub id="S4.T7.8.8.1.m1.1.1" xref="S4.T7.8.8.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T7.8.8.1.m1.1.1.2" mathsize="90%" xref="S4.T7.8.8.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T7.8.8.1.m1.1.1.3" mathsize="90%" xref="S4.T7.8.8.1.m1.1.1.3.cmml">REG</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T7.8.8.1.m1.1b"><apply id="S4.T7.8.8.1.m1.1.1.cmml" xref="S4.T7.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T7.8.8.1.m1.1.1.1.cmml" xref="S4.T7.8.8.1.m1.1.1">subscript</csymbol><ci id="S4.T7.8.8.1.m1.1.1.2.cmml" xref="S4.T7.8.8.1.m1.1.1.2">ℒ</ci><ci id="S4.T7.8.8.1.m1.1.1.3.cmml" xref="S4.T7.8.8.1.m1.1.1.3">REG</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.8.8.1.m1.1c">\mathcal{L}_{\mathrm{REG}}</annotation><annotation encoding="application/x-llamapun" id="S4.T7.8.8.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT roman_REG end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T7.8.8.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.8.8.2.1" style="font-size:90%;">19.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.8.8.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.8.8.3.1" style="font-size:90%;">6.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.8.8.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.8.8.4.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.8.8.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.8.8.5.1" style="font-size:90%;">0.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.8.8.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.8.8.6.1" style="font-size:90%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.8.9" style="background-color:#FFF2E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.8.9.1" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.8.9.1.1" style="font-size:90%;background-color:#FFF2E6;">REPA-E (Ours<span class="ltx_text ltx_font_medium" id="S4.T7.8.9.1.1.1">)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.8.9.2" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.8.9.2.1" style="font-size:90%;background-color:#FFF2E6;">16.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.8.9.3" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text" id="S4.T7.8.9.3.1" style="font-size:90%;background-color:#FFF2E6;">5.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.8.9.4" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.8.9.4.1" style="font-size:90%;background-color:#FFF2E6;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.8.9.5" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.8.9.5.1" style="font-size:90%;background-color:#FFF2E6;">0.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.8.9.6" style="padding-left:4.8pt;padding-right:4.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.8.9.6.1" style="font-size:90%;background-color:#FFF2E6;">0.60</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of each component of the proposed REPA-E training method on the final generation performance.  It isolates the effects of removing or altering key elements, such as the stop-gradient operation on the diffusion loss, the batch normalization layer, and the regularization losses applied to the VAE.  The results quantify how each component contributes to the overall performance gains achieved by REPA-E, demonstrating their individual importance for effective end-to-end training.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation Study on Role of Different Components.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T8.5">
<tr class="ltx_tr" id="S4.T8.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.5.5.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.5.6.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.1.1.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.1.1.1" style="font-size:90%;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T8.1.1.1.1.m1.1"><semantics id="S4.T8.1.1.1.1.m1.1a"><mo id="S4.T8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T8.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T8.1.1.1.1.m1.1b"><ci id="S4.T8.1.1.1.1.m1.1.1.cmml" xref="S4.T8.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.2.2.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.2.2.2.1" style="font-size:90%;">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T8.2.2.2.1.m1.1"><semantics id="S4.T8.2.2.2.1.m1.1a"><mo id="S4.T8.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T8.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T8.2.2.2.1.m1.1b"><ci id="S4.T8.2.2.2.1.m1.1.1.cmml" xref="S4.T8.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.3.3.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.3.3.1" style="font-size:90%;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T8.3.3.3.1.m1.1"><semantics id="S4.T8.3.3.3.1.m1.1a"><mo id="S4.T8.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T8.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T8.3.3.3.1.m1.1b"><ci id="S4.T8.3.3.3.1.m1.1.1.cmml" xref="S4.T8.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.4.4.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.4.4.4.1" style="font-size:90%;">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T8.4.4.4.1.m1.1"><semantics id="S4.T8.4.4.4.1.m1.1a"><mo id="S4.T8.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T8.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T8.4.4.4.1.m1.1b"><ci id="S4.T8.4.4.4.1.m1.1.1.cmml" xref="S4.T8.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.5.5.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.5.5.1" style="font-size:90%;">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T8.5.5.5.1.m1.1"><semantics id="S4.T8.5.5.5.1.m1.1a"><mo id="S4.T8.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T8.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T8.5.5.5.1.m1.1b"><ci id="S4.T8.5.5.5.1.m1.1.1.cmml" xref="S4.T8.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T8.5.6.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.6.1.1" style="font-size:90%;">100K Iterations (20 Epochs)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.5.7.1" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_text" id="S4.T8.5.7.1.1" style="font-size:90%;">REPA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T8.5.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S4.T8.5.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.7.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.7.2.1" style="font-size:90%;">19.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.7.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.7.3.1" style="font-size:90%;">6.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.7.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.7.4.1" style="font-size:90%;">67.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.7.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.7.5.1" style="font-size:90%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.7.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.7.6.1" style="font-size:90%;">0.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.8" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_left" id="S4.T8.5.8.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.8.1.1" style="font-size:90%;background-color:#FFFFE6;">REPA-E<span class="ltx_text ltx_font_medium" id="S4.T8.5.8.1.1.1"> (scratch)</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.8.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.8.2.1" style="font-size:90%;background-color:#FFFFE6;">14.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.8.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.8.3.1" style="font-size:90%;background-color:#FFFFE6;">7.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.8.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.8.4.1" style="font-size:90%;background-color:#FFFFE6;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.8.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.8.5.1" style="font-size:90%;background-color:#FFFFE6;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.8.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.8.6.1" style="font-size:90%;background-color:#FFFFE6;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.9" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_align_left" id="S4.T8.5.9.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.9.1.1" style="font-size:90%;background-color:#FFFFD9;">REPA-E<span class="ltx_text ltx_font_medium" id="S4.T8.5.9.1.1.1"> (VAE init.)</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.9.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.9.2.1" style="font-size:90%;background-color:#FFFFD9;">12.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.9.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.9.3.1" style="font-size:90%;background-color:#FFFFD9;">5.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.9.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.9.4.1" style="font-size:90%;background-color:#FFFFD9;">88.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.9.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.9.5.1" style="font-size:90%;background-color:#FFFFD9;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.9.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.9.6.1" style="font-size:90%;background-color:#FFFFD9;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T8.5.10.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.10.1.1" style="font-size:90%;">200K Iterations (40 Epochs)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.5.11.1" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_text" id="S4.T8.5.11.1.1" style="font-size:90%;">REPA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T8.5.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S4.T8.5.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.11.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.11.2.1" style="font-size:90%;">11.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.11.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.11.3.1" style="font-size:90%;">5.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.11.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.11.4.1" style="font-size:90%;">100.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.11.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.11.5.1" style="font-size:90%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.11.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.11.6.1" style="font-size:90%;">0.64</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.12" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_left" id="S4.T8.5.12.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.12.1.1" style="font-size:90%;background-color:#FFFFE6;">REPA-E<span class="ltx_text ltx_font_medium" id="S4.T8.5.12.1.1.1"> (scratch)</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.12.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.12.2.1" style="font-size:90%;background-color:#FFFFE6;">7.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.12.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.12.3.1" style="font-size:90%;background-color:#FFFFE6;">6.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.12.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.12.4.1" style="font-size:90%;background-color:#FFFFE6;">120.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.12.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.12.5.1" style="font-size:90%;background-color:#FFFFE6;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.12.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.12.6.1" style="font-size:90%;background-color:#FFFFE6;">0.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.13" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_align_left" id="S4.T8.5.13.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.13.1.1" style="font-size:90%;background-color:#FFFFD9;">REPA-E<span class="ltx_text ltx_font_medium" id="S4.T8.5.13.1.1.1"> (VAE init.)</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.13.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.13.2.1" style="font-size:90%;background-color:#FFFFD9;">7.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.13.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.13.3.1" style="font-size:90%;background-color:#FFFFD9;">4.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.13.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.13.4.1" style="font-size:90%;background-color:#FFFFD9;">123.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.13.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.13.5.1" style="font-size:90%;background-color:#FFFFD9;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.13.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.13.6.1" style="font-size:90%;background-color:#FFFFD9;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T8.5.14.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.14.1.1" style="font-size:90%;">400K Iterations (80 Epochs)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.5.15.1" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_text" id="S4.T8.5.15.1.1" style="font-size:90%;">REPA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T8.5.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S4.T8.5.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.15.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.15.2.1" style="font-size:90%;">7.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.15.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.15.3.1" style="font-size:90%;">5.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.15.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.15.4.1" style="font-size:90%;">122.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.15.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.15.5.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.5.15.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.15.6.1" style="font-size:90%;">0.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.16" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_left" id="S4.T8.5.16.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.16.1.1" style="font-size:90%;background-color:#FFFFE6;">REPA-E<span class="ltx_text ltx_font_medium" id="S4.T8.5.16.1.1.1"> (scratch)</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.16.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.16.2.1" style="font-size:90%;background-color:#FFFFE6;">4.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.16.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.16.3.1" style="font-size:90%;background-color:#FFFFE6;">4.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.16.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.16.4.1" style="font-size:90%;background-color:#FFFFE6;">154.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.16.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.16.5.1" style="font-size:90%;background-color:#FFFFE6;">0.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.16.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.16.6.1" style="font-size:90%;background-color:#FFFFE6;">0.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.17" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.5.17.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.17.1.1" style="font-size:90%;background-color:#FFFFD9;">REPA-E<span class="ltx_text ltx_font_medium" id="S4.T8.5.17.1.1.1"> (VAE init.)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.5.17.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.17.2.1" style="font-size:90%;background-color:#FFFFD9;">4.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.5.17.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.17.3.1" style="font-size:90%;background-color:#FFFFD9;">4.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.5.17.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.17.4.1" style="font-size:90%;background-color:#FFFFD9;">161.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.5.17.5" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.17.5.1" style="font-size:90%;background-color:#FFFFD9;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.5.17.6" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T8.5.17.6.1" style="font-size:90%;background-color:#FFFFD9;">0.62</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of training a latent diffusion model (LDM) and a variational autoencoder (VAE) using three different methods:  1) REPA, a two-stage training approach where the VAE is pre-trained separately and then the LDM is trained; 2) REPA-E (scratch), an end-to-end method where both the VAE and LDM are trained from scratch simultaneously using the REPA loss; and 3) REPA-E (VAE init.), an end-to-end method similar to (2) but where the VAE is initialized with pre-trained weights. The results demonstrate that REPA-E (both variations) significantly outperforms REPA in terms of FID score across different numbers of training iterations.  Notably, REPA-E (scratch) shows that the model can be trained from scratch successfully without the need for pre-training the VAE, and it still achieves competitive performance against REPA and other end-to-end methods.
> <details>
> <summary>read the caption</summary>
> Table 8: End-to-End Training from Scratch. We find that while initializing the VAE with pretrained weights (SD-VAE [39]) helps slightly improve performance, REPA-E can be used to train both VAE and LDM from scratch in an end-to-end manner; still achieving significantly superior performance over REPA which requires a separate stage for training VAE in addition to LDM training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T9.2">
<tr class="ltx_tr" id="S4.T9.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T9.2.1.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.1.1.1" style="font-size:90%;">VAE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.2.1.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.1.2.1" style="font-size:90%;">Diffusion model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.2.1.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.1.3.1" style="font-size:90%;">REPA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.2.1.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.1.4.1" style="font-size:90%;">gFID-50K</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T9.2.2.1" style="padding-left:4.1pt;padding-right:4.1pt;">
<span class="ltx_text" id="S4.T9.2.2.1.1" style="font-size:90%;">SD-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T9.2.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.2.2" style="padding-left:4.1pt;padding-right:4.1pt;">
<span class="ltx_text" id="S4.T9.2.2.2.1" style="font-size:90%;">DiT-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T9.2.2.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.2.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.2.3.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.2.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.2.4.1" style="font-size:90%;">19.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.3">
<td class="ltx_td ltx_align_left" id="S4.T9.2.3.1" style="padding-left:4.1pt;padding-right:4.1pt;">
<span class="ltx_text" id="S4.T9.2.3.1.1" style="font-size:90%;">VA-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S4.T9.2.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.3.2" style="padding-left:4.1pt;padding-right:4.1pt;">
<span class="ltx_text" id="S4.T9.2.3.2.1" style="font-size:90%;">DiT-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T9.2.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.3.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.3.3.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.3.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.3.4.1" style="font-size:90%;">6.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.4" style="background-color:#FFF0F0;">
<td class="ltx_td ltx_align_left" id="S4.T9.2.4.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.4.1.1" style="font-size:90%;background-color:#FFF0F0;">E2E-VAE (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.4.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.4.2.1" style="font-size:90%;background-color:#FFF0F0;">DiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.4.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.4.3.1" style="font-size:90%;background-color:#FFF0F0;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.4.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.4.4.1" style="font-size:90%;background-color:#FFF0F0;">6.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.5" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T9.2.5.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.5.1.1" style="font-size:90%;background-color:#FFFFFF;">SD-VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.5.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.5.2.1" style="font-size:90%;background-color:#FFFFFF;">SiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.5.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.5.3.1" style="font-size:90%;background-color:#FFFFFF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.5.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.5.4.1" style="font-size:90%;background-color:#FFFFFF;">17.20</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.6" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S4.T9.2.6.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.6.1.1" style="font-size:90%;background-color:#FFFFFF;">VA-VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.6.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.6.2.1" style="font-size:90%;background-color:#FFFFFF;">SiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.6.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.6.3.1" style="font-size:90%;background-color:#FFFFFF;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.6.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.6.4.1" style="font-size:90%;background-color:#FFFFFF;">5.93</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.7" style="background-color:#FFF0F0;">
<td class="ltx_td ltx_align_left" id="S4.T9.2.7.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.7.1.1" style="font-size:90%;background-color:#FFF0F0;">E2E-VAE (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.7.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.7.2.1" style="font-size:90%;background-color:#FFF0F0;">SiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.7.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.7.3.1" style="font-size:90%;background-color:#FFF0F0;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.7.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.7.4.1" style="font-size:90%;background-color:#FFF0F0;">5.26</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T9.2.8.1" style="padding-left:4.1pt;padding-right:4.1pt;">
<span class="ltx_text" id="S4.T9.2.8.1.1" style="font-size:90%;">SD-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T9.2.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.8.2" style="padding-left:4.1pt;padding-right:4.1pt;">
<span class="ltx_text" id="S4.T9.2.8.2.1" style="font-size:90%;">DiT-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T9.2.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.8.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.8.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.8.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.8.4.1" style="font-size:90%;">12.29</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.9">
<td class="ltx_td ltx_align_left" id="S4.T9.2.9.1" style="padding-left:4.1pt;padding-right:4.1pt;">
<span class="ltx_text" id="S4.T9.2.9.1.1" style="font-size:90%;">VA-VAE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S4.T9.2.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.9.2" style="padding-left:4.1pt;padding-right:4.1pt;">
<span class="ltx_text" id="S4.T9.2.9.2.1" style="font-size:90%;">DiT-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.9.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T9.2.9.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.9.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.9.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.9.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.9.4.1" style="font-size:90%;">4.71</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.10" style="background-color:#FFF0F0;">
<td class="ltx_td ltx_align_left" id="S4.T9.2.10.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.10.1.1" style="font-size:90%;background-color:#FFF0F0;">E2E-VAE (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.10.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.10.2.1" style="font-size:90%;background-color:#FFF0F0;">DiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.10.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.10.3.1" style="font-size:90%;background-color:#FFF0F0;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.10.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.10.4.1" style="font-size:90%;background-color:#FFF0F0;">4.20</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.11" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T9.2.11.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.11.1.1" style="font-size:90%;background-color:#FFFFFF;">SD-VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.11.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.11.2.1" style="font-size:90%;background-color:#FFFFFF;">SiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.11.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.11.3.1" style="font-size:90%;background-color:#FFFFFF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.11.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.11.4.1" style="font-size:90%;background-color:#FFFFFF;">7.90</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.12" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S4.T9.2.12.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.12.1.1" style="font-size:90%;background-color:#FFFFFF;">VA-VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.12.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.12.2.1" style="font-size:90%;background-color:#FFFFFF;">SiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.12.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.12.3.1" style="font-size:90%;background-color:#FFFFFF;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.12.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.12.4.1" style="font-size:90%;background-color:#FFFFFF;">4.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.13" style="background-color:#FFF0F0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T9.2.13.1" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.13.1.1" style="font-size:90%;background-color:#FFF0F0;">E2E-VAE (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.2.13.2" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.13.2.1" style="font-size:90%;background-color:#FFF0F0;">SiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.2.13.3" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text" id="S4.T9.2.13.3.1" style="font-size:90%;background-color:#FFF0F0;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.2.13.4" style="padding-left:4.1pt;padding-right:4.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.2.13.4.1" style="font-size:90%;background-color:#FFF0F0;">3.46</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different Variational Autoencoders (VAEs) when used with diffusion models for image generation.  It specifically demonstrates the impact of end-to-end training using the REPA-E method on the speed and quality of image generation.  The experiment is set up by keeping the VAEs fixed (not updated during training) and training only the diffusion models.  The results show that VAEs fine-tuned with REPA-E (denoted as E2E-VAE) significantly improve generation performance, achieving similar or better results compared to other VAEs trained using traditional methods, but with fewer training steps (epochs).
> <details>
> <summary>read the caption</summary>
> Table 9: Impact of End-to-End tuning on VAE performance. We find that once tuned using REPA-E, the finetuned VAEs can be used as a drop-in replacement for their original counterparts offering significantly accelerated generation performance. We fix all the VAEs and only train the diffusion models (with and w/o REPA). E2E-VAE is obtained from REPA-E fine-tuning (VA-VAE + SiT-XL). All results are reported at 80 epochs (400K iterations).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T10.11.11">
<tr class="ltx_tr" id="S4.T10.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T10.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T10.1.1.1.2.1">Tokenizer</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T10.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T10.1.1.1.3.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T10.1.1.1.4" rowspan="2"><span class="ltx_text" id="S4.T10.1.1.1.4.1"><span class="ltx_text" id="S4.T10.1.1.1.4.1.1"></span> <span class="ltx_text" id="S4.T10.1.1.1.4.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T10.1.1.1.4.1.2.1">
<span class="ltx_tr" id="S4.T10.1.1.1.4.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T10.1.1.1.4.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T10.1.1.1.4.1.2.1.1.1.1">Training</span></span></span>
<span class="ltx_tr" id="S4.T10.1.1.1.4.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T10.1.1.1.4.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T10.1.1.1.4.1.2.1.2.1.1">Epoches</span></span></span>
</span></span> <span class="ltx_text" id="S4.T10.1.1.1.4.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T10.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T10.1.1.1.5.1">#params</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T10.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T10.1.1.1.1.1">rFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T10.1.1.1.1.1.1.m1.1"><semantics id="S4.T10.1.1.1.1.1.1.m1.1a"><mo id="S4.T10.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T10.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T10.1.1.1.1.1.1.m1.1b"><ci id="S4.T10.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T10.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T10.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T10.1.1.1.6.1">Generation w/o CFG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T10.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T10.1.1.1.7.1">Generation w/ CFG</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.2.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T10.2.2.2.1.1">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T10.2.2.2.1.1.m1.1"><semantics id="S4.T10.2.2.2.1.1.m1.1a"><mo id="S4.T10.2.2.2.1.1.m1.1.1" stretchy="false" xref="S4.T10.2.2.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T10.2.2.2.1.1.m1.1b"><ci id="S4.T10.2.2.2.1.1.m1.1.1.cmml" xref="S4.T10.2.2.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.2.2.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.2.2.2.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.3.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T10.3.3.3.2.1">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T10.3.3.3.2.1.m1.1"><semantics id="S4.T10.3.3.3.2.1.m1.1a"><mo id="S4.T10.3.3.3.2.1.m1.1.1" stretchy="false" xref="S4.T10.3.3.3.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T10.3.3.3.2.1.m1.1b"><ci id="S4.T10.3.3.3.2.1.m1.1.1.cmml" xref="S4.T10.3.3.3.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.3.3.3.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.3.3.3.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.4.4.4.3"><span class="ltx_text ltx_font_bold" id="S4.T10.4.4.4.3.1">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.4.4.4.3.1.m1.1"><semantics id="S4.T10.4.4.4.3.1.m1.1a"><mo id="S4.T10.4.4.4.3.1.m1.1.1" stretchy="false" xref="S4.T10.4.4.4.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.4.4.4.3.1.m1.1b"><ci id="S4.T10.4.4.4.3.1.m1.1.1.cmml" xref="S4.T10.4.4.4.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.4.4.4.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.4.4.4.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.5.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T10.5.5.5.4.1">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.5.5.5.4.1.m1.1"><semantics id="S4.T10.5.5.5.4.1.m1.1a"><mo id="S4.T10.5.5.5.4.1.m1.1.1" stretchy="false" xref="S4.T10.5.5.5.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.5.5.5.4.1.m1.1b"><ci id="S4.T10.5.5.5.4.1.m1.1.1.cmml" xref="S4.T10.5.5.5.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.5.5.5.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.5.5.5.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.6.6.6.5"><span class="ltx_text ltx_font_bold" id="S4.T10.6.6.6.5.1">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.6.6.6.5.1.m1.1"><semantics id="S4.T10.6.6.6.5.1.m1.1a"><mo id="S4.T10.6.6.6.5.1.m1.1.1" stretchy="false" xref="S4.T10.6.6.6.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.6.6.6.5.1.m1.1b"><ci id="S4.T10.6.6.6.5.1.m1.1.1.cmml" xref="S4.T10.6.6.6.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.6.6.6.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.6.6.6.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.7.7.7.6"><span class="ltx_text ltx_font_bold" id="S4.T10.7.7.7.6.1">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T10.7.7.7.6.1.m1.1"><semantics id="S4.T10.7.7.7.6.1.m1.1a"><mo id="S4.T10.7.7.7.6.1.m1.1.1" stretchy="false" xref="S4.T10.7.7.7.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T10.7.7.7.6.1.m1.1b"><ci id="S4.T10.7.7.7.6.1.m1.1.1.cmml" xref="S4.T10.7.7.7.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.7.7.7.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.7.7.7.6.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.8.8.8.7"><span class="ltx_text ltx_font_bold" id="S4.T10.8.8.8.7.1">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T10.8.8.8.7.1.m1.1"><semantics id="S4.T10.8.8.8.7.1.m1.1a"><mo id="S4.T10.8.8.8.7.1.m1.1.1" stretchy="false" xref="S4.T10.8.8.8.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T10.8.8.8.7.1.m1.1b"><ci id="S4.T10.8.8.8.7.1.m1.1.1.cmml" xref="S4.T10.8.8.8.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.8.8.8.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.8.8.8.7.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.9.9.9.8"><span class="ltx_text ltx_font_bold" id="S4.T10.9.9.9.8.1">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.9.9.9.8.1.m1.1"><semantics id="S4.T10.9.9.9.8.1.m1.1a"><mo id="S4.T10.9.9.9.8.1.m1.1.1" stretchy="false" xref="S4.T10.9.9.9.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.9.9.9.8.1.m1.1b"><ci id="S4.T10.9.9.9.8.1.m1.1.1.cmml" xref="S4.T10.9.9.9.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.9.9.9.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.9.9.9.8.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.10.10.10.9"><span class="ltx_text ltx_font_bold" id="S4.T10.10.10.10.9.1">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.10.10.10.9.1.m1.1"><semantics id="S4.T10.10.10.10.9.1.m1.1a"><mo id="S4.T10.10.10.10.9.1.m1.1.1" stretchy="false" xref="S4.T10.10.10.10.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.10.10.10.9.1.m1.1b"><ci id="S4.T10.10.10.10.9.1.m1.1.1.cmml" xref="S4.T10.10.10.10.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.10.10.10.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.10.10.10.9.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.11.10"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.11.10.1">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.11.11.11.10.1.m1.1"><semantics id="S4.T10.11.11.11.10.1.m1.1a"><mo id="S4.T10.11.11.11.10.1.m1.1.1" stretchy="false" xref="S4.T10.11.11.11.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.11.11.11.10.1.m1.1b"><ci id="S4.T10.11.11.11.10.1.m1.1.1.cmml" xref="S4.T10.11.11.11.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.11.11.11.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.11.11.11.10.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.12" style="background-color:#EBEBFF;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="15" id="S4.T10.11.11.12.1"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.12.1.1" style="background-color:#EBEBFF;">AutoRegressive (AR)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.11.11.13.1">MaskGiT</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.11.11.13.2">MaskGIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.13.3">555</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.13.4">227M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.13.5">2.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.6">6.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.8">182.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.9">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.13.10">0.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.12">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.13">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.14">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.13.15">-</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.14.1">VQGAN</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.14.2">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.14.3">300</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.14.4">3.1B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.14.5">0.59</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.6">9.38</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.7">8.24</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.8">112.9</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.9">0.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.14.10">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.11">2.18</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.12">5.97</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.13">263.3</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.14">0.81</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.14.15">0.58</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.15.1">VQVAE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.15.2">VAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.15.3">350</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.15.4">2.0B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.15.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.15.10">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.11">1.80</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.12">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.13">365.4</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.14">0.83</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.15.15">0.57</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.16.1">LFQ tokenizers</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.16.2">MagViT-v2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.16.3">1080</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.16.4">307M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.16.5">1.50</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.6">3.65</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.8">200.5</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.16.10">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.11">1.78</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.12">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.13">319.4</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.14">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.16.15">-</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.17.1">LDM</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.17.2">MAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.17.3">800</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.17.4">945M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.17.5">0.53</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.6">2.35</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.8">227.8</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.9">0.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.17.10">0.62</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.11">1.55</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.12">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.13">303.7</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.14">0.81</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.17.15">0.62</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.18" style="background-color:#EBEBFF;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="15" id="S4.T10.11.11.18.1"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.18.1.1" style="background-color:#EBEBFF;">Latent Diffusion Models (LDM)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.11.11.19.1" rowspan="6"><span class="ltx_text" id="S4.T10.11.11.19.1.1">SD-VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.11.11.19.2">MaskDiT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.19.3">1600</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.19.4">675M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.19.5" rowspan="6"><span class="ltx_text" id="S4.T10.11.11.19.5.1">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.6">5.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.7">10.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.8">177.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.9">0.74</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.19.10">0.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.11">2.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.12">5.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.13">276.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.14">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.19.15">0.61</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.20.1">DiT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.20.2">1400</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.20.3">675M</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.4">9.62</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.5">6.85</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.6">121.5</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.7">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.20.8">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.9">2.27</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.10">4.60</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.11">278.2</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.12"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.20.12.1">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.20.13">0.57</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.21.1">SiT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.21.2">1400</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.21.3">675M</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.4">8.61</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.5">6.32</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.6">131.7</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.7">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.21.8">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.9">2.06</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.10">4.50</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.11">270.3</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.12">0.82</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.21.13">0.59</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.22.1">FasterDiT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.22.2">400</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.22.3">675M</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.4">7.91</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.5">5.45</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.6">131.3</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.7">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.22.8"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.22.8.1">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.9">2.03</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.10">4.63</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.11">264.0</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.12">0.81</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.22.13">0.60</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.23.1">MDT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.23.2">1300</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.23.3">675M</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.4">6.23</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.5">5.23</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.6">143.0</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.7">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.23.8">0.65</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.9">1.79</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.10">4.57</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.11">283.0</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.12">0.81</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.23.13">0.61</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.11.11.24.1">MDTv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.24.2">1080</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.24.3">675M</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.24.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.9">1.58</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.10">4.52</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.11">314.7</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.12">0.79</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.24.13">0.65</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.25" style="background-color:#EBEBFF;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="15" id="S4.T10.11.11.25.1"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.25.1.1" style="background-color:#EBEBFF;">Representation Alignment Methods</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.26">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.11.11.26.1" rowspan="2"><span class="ltx_text" id="S4.T10.11.11.26.1.1">VA-VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.11.11.26.2" rowspan="2"><span class="ltx_text" id="S4.T10.11.11.26.2.1">LightningDiT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.26.3">80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.26.4">675M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.26.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.26.5.1">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.6">4.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.26.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.12">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.13">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.14">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.26.15">-</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.27.1">800</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.27.2">675M</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.3">2.17</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.4">4.36</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.5">205.6</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.6">0.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.27.7">0.65</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.8">1.35</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.9">4.15</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.10">295.3</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.11">0.79</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.27.12">0.65</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.28">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.11.11.28.1" rowspan="2"><span class="ltx_text" id="S4.T10.11.11.28.1.1">SD-VAE</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.11.11.28.2" rowspan="2"><span class="ltx_text" id="S4.T10.11.11.28.2.1">REPA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10483v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.28.3">80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.28.4">675M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.28.5" rowspan="2"><span class="ltx_text" id="S4.T10.11.11.28.5.1">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.6">7.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.7">5.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.8">122.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.9">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.28.10">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.12">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.13">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.14">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.28.15">-</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.29.1">800</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.29.2">675M</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.3">5.90</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.4">5.73</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.5">157.8</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.6">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.11.11.29.7"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.29.7.1">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.8">1.42</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.9">4.70</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.10">305.7</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.11">0.80</td>
<td class="ltx_td ltx_align_center" id="S4.T10.11.11.29.12">0.65</td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.30">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T10.11.11.30.1"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T10.11.11.30.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.30.3"><span class="ltx_text" id="S4.T10.11.11.30.3.1" style="background-color:#FFFFE6;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.30.4"><span class="ltx_text" id="S4.T10.11.11.30.4.1" style="background-color:#FFFFE6;">675M</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T10.11.11.30.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.6"><span class="ltx_text" id="S4.T10.11.11.30.6.1" style="background-color:#FFFFE6;">3.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.7"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.30.7.1" style="background-color:#FFFFE6;">4.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.8"><span class="ltx_text" id="S4.T10.11.11.30.8.1" style="background-color:#FFFFE6;">159.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.9"><span class="ltx_text" id="S4.T10.11.11.30.9.1" style="background-color:#FFFFE6;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.30.10"><span class="ltx_text" id="S4.T10.11.11.30.10.1" style="background-color:#FFFFE6;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.11"><span class="ltx_text" id="S4.T10.11.11.30.11.1" style="background-color:#FFFFE6;">1.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.12"><span class="ltx_text" id="S4.T10.11.11.30.12.1" style="background-color:#FFFFE6;">4.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.13"><span class="ltx_text" id="S4.T10.11.11.30.13.1" style="background-color:#FFFFE6;">266.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.14"><span class="ltx_text" id="S4.T10.11.11.30.14.1" style="background-color:#FFFFE6;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.11.11.30.15"><span class="ltx_text" id="S4.T10.11.11.30.15.1" style="background-color:#FFFFE6;">0.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.11.11.31" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T10.11.11.31.1"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.1.1" style="background-color:#FFFFE6;">E2E-VAE (Ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T10.11.11.31.2"><span class="ltx_text" id="S4.T10.11.11.31.2.1" style="background-color:#FFFFE6;">REPA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T10.11.11.31.3"><span class="ltx_text" id="S4.T10.11.11.31.3.1" style="background-color:#FFFFE6;">800</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T10.11.11.31.4"><span class="ltx_text" id="S4.T10.11.11.31.4.1" style="background-color:#FFFFE6;">675M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T10.11.11.31.5"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.5.1" style="background-color:#FFFFE6;">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.6"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.6.1" style="background-color:#FFFFE6;">1.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.7"><span class="ltx_text" id="S4.T10.11.11.31.7.1" style="background-color:#FFFFE6;">4.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.8"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.8.1" style="background-color:#FFFFE6;">217.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.9"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.9.1" style="background-color:#FFFFE6;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T10.11.11.31.10"><span class="ltx_text" id="S4.T10.11.11.31.10.1" style="background-color:#FFFFE6;">0.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.11"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.11.1" style="background-color:#FFFFE6;">1.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.12"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.12.1" style="background-color:#FFFFE6;">4.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.13"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.13.1" style="background-color:#FFFFE6;">314.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.14"><span class="ltx_text" id="S4.T10.11.11.31.14.1" style="background-color:#FFFFE6;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T10.11.11.31.15"><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.31.15.1" style="background-color:#FFFFE6;">0.66</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents a comprehensive comparison of different Variational Autoencoders (VAEs) used in training Latent Diffusion Models (LDMs) on the ImageNet 256x256 dataset.  It contrasts the performance of a standard LDM training approach using various pre-trained VAEs with the performance achieved when using a novel end-to-end tuned VAE (E2E-VAE). The table highlights key performance metrics including FID (Fréchet Inception Distance),  SFID (Structural FID), IS (Inception Score), Precision, and Recall, for both LDM image generation (with and without classifier-free guidance) and VAE reconstruction.  A key finding is that the end-to-end tuned VAE not only improves the VAE's latent space structure, but also substantially enhances downstream generation performance, thus acting as a drop-in replacement for pre-trained VAEs while achieving improved results.  The table concludes by reporting that this end-to-end training method achieves state-of-the-art results on ImageNet, indicating a new low in FID for LDM image generation and VAE reconstruction.
> <details>
> <summary>read the caption</summary>
> Table 10: System-Level Performance on ImageNet 256 ×\times× 256 comparing our end-to-end tuned VAE (E2E-VAE) with other VAEs for traditional LDM training. We observe that in addition to improving VAE latent space structure (Fig. 6), end-to-end tuning significantly improves VAE downstream generation performance. Once tuned using REPA-E, the improved VAE can be used as drop-in replacement for their original counterparts for accelerated generation performance. Overall, our approach helps improve both LDM and VAE performance — achieving a new state-of-the-art FID of 1.26 and 0.28, respectively for LDM generation and VAE reconstruction performance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10483/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10483/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}