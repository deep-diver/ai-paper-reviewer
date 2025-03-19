---
title: "SANA-Sprint: One-Step Diffusion with Continuous-Time Consistency Distillation"
summary: "SANA-Sprint: An efficient diffusion model for ultra-fast text-to-image generation with continuous-time consistency distillation, achieving state-of-the-art performance in speed and quality."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 NVIDIA",]
showSummary: true
date: 2025-03-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.09641 {{< /keyword >}}
{{< keyword icon="writer" >}} Junsong Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.09641" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.09641" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.09641/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models, while powerful for image generation, are computationally intensive, requiring many iterative denoising steps. Existing methods to speed up inference, like GAN-based approaches and consistency models (CMs), have limitations such as training instability and quality erosion in ultra-few-step regimes. These challenges hinder broader adoption, highlighting the need for a framework that balances efficiency, flexibility, and quality.



To solve the issues, the paper presents **SANA-Sprint**, an efficient diffusion model for ultra-fast text-to-image (T2I) generation. **SANA-Sprint** is built on a pre-trained foundation model and augmented with hybrid distillation, dramatically reducing inference steps. It introduces a training-free approach for continuous-time consistency distillation (sCM), combined with latent adversarial distillation (LADD) to enhance single-step generation fidelity. Integrated with ControlNet, **SANA-Sprint** enables real-time interactive image generation, achieving state-of-the-art performance in speed-quality tradeoffs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a hybrid distillation framework that integrates continuous-time consistency models (sCM) with latent adversarial diffusion distillation (LADD). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Achieves state-of-the-art performance with exceptional speed and quality, requiring only 1-4 steps for image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Enables real-time interactive image generation by integrating ControlNet, facilitating immediate visual feedback in human-in-the-loop creative workflows. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**SANA-Sprint** is an efficient diffusion model for real-time text-to-image generation, enabling its potential for AI-powered consumer applications. The efficiency unlocks transformative applications that require instant visual feedback, making it suitable for human-in-the-loop creative workflows, AIPC, and immersive AR/VR interfaces.

------
#### Visual Insights



![](https://arxiv.org/html/2503.09641/x1.png)

> 🔼 Figure 1 presents a comparison of SANA-Sprint's performance against existing state-of-the-art models in terms of inference speed and GPU memory usage.  The left panel (a) shows a dramatic speed improvement by SANA-Sprint, reducing the time to generate 1024x1024 images from 1.94 seconds (Flux-Schnell) to a mere 0.03 seconds – a 64x speedup. This improvement is calculated based on the time taken by the transformer components of the models, using a batch size of 1 on an NVIDIA A100 GPU. The right panel (b) demonstrates SANA-Sprint's efficiency in terms of GPU memory usage during training, outperforming other distillation methods. The memory usage was measured using the official code and a single A100 GPU with 1024x1024 images.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Our SANA-Sprint accelerate the inference speed for generating 1024 ×\times× 1024 images, achieving a remarkable speedup from FULX-Schnell’s 1.94 seconds to only 0.03 seconds. This represents a 64×\times× improvement over the current state-of-the-art step-distilled model, FLUX-Schnell, as measured with a batch size of 1 on an NVIDIA A100 GPU. The ratio is calculated based on Transformer latency. (b) Additionally, our model demonstrates efficient GPU memory usage during training, outperforming other distillation methods in terms of memory cost. The GPU memory is measured using official code, 1024 ×\times× 1024 images and on a single A100 GPU.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.2">
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.3.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2.2">CLIP-Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.2.3.1">Flow Euler 50 steps</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.3.2">5.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.3.3">28.810</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.2.2.4.1">TrigFlow Euler 50 steps</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.2.2.4.2">5.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.2.4.3">28.806</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of the original Flow-based SANA model and its TrigFlow-based counterpart (SANA-Sprint) before and after applying a training-free transformation detailed in Section 3.1. The comparison uses two key metrics: FID (Fréchet Inception Distance), a measure of image quality, and CLIP Score, which assesses the alignment between generated images and text prompts. Lower FID values indicate better image quality, while higher CLIP scores represent stronger text-image alignment.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of original Flow-based SANA model and training-free transformation of TrigFlow-based SANA-Sprint model. We evaluate the FID and CLIP-Score before and after the transformation in Sec. 3.1.
> </details>





### In-depth insights


#### Hybrid Distillation
**Hybrid distillation** is a technique that combines different distillation strategies to improve the performance of a student model. The goal is to leverage the strengths of each method while mitigating their weaknesses. **Hybrid distillation can improve training stability and convergence speed.** For example, a hybrid approach can combine consistency distillation (sCM) with latent adversarial distillation (LADD). In this setup, **sCM ensures the student model aligns with the teacher model**, while **LADD enhances the generation fidelity**. This leads to faster convergence and higher-quality generations than using either method alone. By carefully selecting and combining distillation methods, hybrid distillation enables efficient and effective knowledge transfer.

#### TrigFlow Transform
The paper introduces a novel **training-free** method to convert existing flow-matching models into TrigFlow models by employing mathematical transformations. This approach eliminates the necessity for distinct algorithm designs and extensive hyperparameter adjustments. **SNR, timescale, and output** are the key parameters in which the input and output must follow. This method facilitates the seamless incorporation of the **continuous-time consistency model (sCM) framework** with minimal adjustments. By adapting a lossless approach which follows a training algorithm which eliminates the need for a seperate trigflow model and still maintains performance.

#### sCM Stabilization
While 'sCM Stabilization' isn't a direct heading, the paper tackles stability issues in **continuous-time consistency distillation (sCM)**. To mitigate these, they introduce a denser time embedding and integrate QK-Normalization into self- and cross-attention. The denser embedding likely provides a more nuanced representation of time, reducing ambiguity during distillation.  **QK-Normalization** probably prevents gradient explosion, which can arise from scaling model sizes and increasing resolutions. These modifications facilitate efficient knowledge transfer and improve stability, enabling robust performance at higher resolutions and larger model sizes.  In essence, the paper focuses on stabilizing the training process for sCM, allowing for more effective distillation and, ultimately, better image generation.

#### SANA-ControlNet
SANA-ControlNet appears to be an interesting fusion of the SANA architecture with ControlNet, aiming to enhance the controllability of image generation. **This likely enables users to exert more precise control over the output by incorporating structural or spatial guidance**. ControlNet's ability to condition image generation on various inputs like edges or segmentation maps could be particularly powerful when combined with SANA's efficient high-resolution synthesis. **This combination potentially leads to a system where high-quality images can be generated with specific structural constraints in real-time**, opening avenues for applications needing accurate content manipulation or creation based on user-defined layouts.

#### Max-Time Weighting
Max-Time Weighting is a crucial strategy in diffusion models, especially for enhancing the one- and few-step generation capabilities, **improving the generation quality**. This technique likely involves prioritizing or emphasizing the later timesteps in the reverse diffusion process. **By focusing on the max-time weighting**, the model can better refine the image details and improve the overall quality, especially in the final stages of generation. It would be applied selectively, perhaps only during certain stages of training, to **prevent overfitting** and maintain the model's generalization ability. It could involve dynamically adjusting the weights assigned to different timesteps during training, giving greater importance to those timesteps.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.09641/x2.png)

> 🔼 The figure illustrates the training process of the SANA-Sprint model.  It uses a hybrid approach, combining continuous-time consistency model (sCM) training with Generative Adversarial Network (GAN) training. The student model is responsible for generating synthetic data and computing Jacobian-vector products (JVPs), while the teacher model provides velocity information (dx/dt) and features for the GAN loss function. This setup allows for simultaneous training of both sCM and GAN, simplifying the process and reducing computational overhead. Importantly, all training occurs solely in the latent space. Details regarding the training objective, the TrigFlow transformation (used to adapt a pre-trained model for sCM distillation), and specific equations are available in the paper’s Section 3.1 and Equations 9 and 11.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Training paradigm of SANA-Sprint. In SANA-Sprint, we use the student model for synthetic data generation (x0^^subscript𝑥0\hat{x_{0}}over^ start_ARG italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_ARG) and JVP calculation, and we use the teacher model for velocity (d⁢x/d⁢td𝑥d𝑡\mathrm{d}x/\mathrm{d}troman_d italic_x / roman_d italic_t) compute and its feature for the GAN loss, which allows us train sCM and GAN together and have only one training model purely in the latent space. Details of training objective and TrigFlow Transformation are in Eq. 9, Eq. 11 and Sec. 3.1.
> </details>



![](https://arxiv.org/html/2503.09641/x3.png)

> 🔼 This figure demonstrates the effectiveness of three key improvements to the SANA-Sprint model's training process: QK normalization, dense timestep embeddings, and training-free schedule transformation.  Panel (a) shows a comparison of training gradient norms with and without QK normalization, illustrating the stabilizing impact. Panel (b) presents gradient norm curves comparing the use of two different timestep ranges (0-1 and 0-1000), highlighting how these impact stability and image quality.  Panel (c) displays a PCA-based similarity analysis of the timestep embeddings, providing visual evidence of their relationships. Finally, Panel (d) displays image results after 5000 training iterations to showcase the effects of the proposed training-free schedule transformation, with images generated with (left) and without (right) this transformation.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Efficient Distillation via QK Normalization, Dense Timestep Embedding, and Training-free Schedule Transformation. (a) We compare gradient norms and visualizations with/without QK Normalization, showing its stabilizing effect. (b) Gradient norm curves for timestep scales (0∼similar-to\sim∼1 vs. 0∼similar-to\sim∼1000) highlight impacts on stability and stability and quality. (c) PCA-based similarity analysis of timestep embeddings. (d) Image results after 5,000 iterations of fine-tuning with (left) and without (right) the proposed schedule transfer (Sec. 3.1).
> </details>



![](https://arxiv.org/html/2503.09641/x4.png)

> 🔼 Figure 4 presents a comparison of image generation results from SANA-Sprint and other state-of-the-art diffusion models at varying numbers of inference steps (1, 2, and 4).  The models are tested on the task of generating images from text prompts. The figure visually demonstrates the image quality generated by each method.  It highlights that SANA-Sprint achieves superior realism and better text alignment compared to other methods across all inference step counts.  Importantly, SANA-Sprint achieves this superior performance while also being significantly faster.  The latency values shown beneath the method names represent the total inference time needed for 4 steps on an NVIDIA A100 GPU. The symbol † indicates that some models require separate training for each inference step count, unlike SANA-Sprint, which uses a single unified model across all step counts.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visual comparison among SANA-Sprint and selected competing methods in different inference steps. † indicates that distinct models are required for different inference steps, and time below the method name is the latency of 4 steps tested on A100 GPU. SANA-Sprint produces images with superior realism and text alignment in all inference steps with the fastest speed.
> </details>



![](https://arxiv.org/html/2503.09641/x5.png)

> 🔼 This table presents the results of an ablation study comparing different loss function combinations used in training the SANA-Sprint model.  It shows how combining the continuous-time consistency model (sCM) loss with the latent adversarial distillation (LADD) loss affects the model's performance, as measured by FID and CLIP scores.  The table allows researchers to understand the individual contributions of each loss component and their optimal balance for effective training.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of loss combination.
> </details>



![](https://arxiv.org/html/2503.09641/x6.png)

> 🔼 This table presents a comparison of different Classifier-Free Guidance (CFG) training strategies used in the SANA-Sprint model.  It shows how the choice of CFG embedding strategy (with or without embedding) affects the final model's performance, as measured by FID (Fréchet Inception Distance) and CLIP score (a measure of text-image alignment). This helps to understand the impact of different training approaches on the model's ability to generate images that accurately reflect the user's textual prompts.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of CFG training strategies.
> </details>



![](https://arxiv.org/html/2503.09641/x7.png)

> 🔼 This table presents an ablation study comparing different weightings of the continuous-time consistency model (sCM) loss and the latent adversarial distillation (LADD) loss. It shows how varying the balance between these two loss functions affects the final model performance, measured by FID and CLIP scores.
> <details>
> <summary>read the caption</summary>
> Table 5: sCM and LADD loss weighting.
> </details>



![](https://arxiv.org/html/2503.09641/x8.png)

> 🔼 This table presents an ablation study on the effect of different max-time weighting strategies on the performance of the SANA-Sprint model.  The max-time weighting strategy modifies the training process by randomly selecting a timestep at the maximum value (t = π/2) with a certain probability, while the rest of the timesteps are sampled according to the model's original distribution. The table compares the FID and CLIP scores achieved with different max-time probabilities (0%, 50%, 70%), showing how this approach impacts the overall quality of the generated images.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of max-time weighting strategy.
> </details>



![](https://arxiv.org/html/2503.09641/x9.png)

> 🔼 This figure compares image generation results of SANA-Sprint with varying numbers of inference steps (1, 2, and 4) against its 20-step teacher model, SANA.  It visually demonstrates that SANA-Sprint can produce high-quality images even with a significantly reduced number of steps, showcasing the effectiveness of the proposed one-step diffusion method.  The improvement in image quality is noticeable as the number of steps increases from one to four, while still maintaining superior speed compared to the teacher model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual comparison among SANA-Sprint with different inference steps and the teacher model SANA. SANA-Sprint can generate high-quality images with one or two steps and the images can be better when increasing steps.
> </details>



![](https://arxiv.org/html/2503.09641/x10.png)

> 🔼 This figure visualizes the process of finding the optimal timestep settings for inference with SANA-Sprint models of sizes 0.6B and 1.6B parameters.  It explores the impact of timestep choices on the FID (Frechet Inception Distance) and CLIP (Contrastive Language-Image Pre-training) scores for different inference scenarios (1-step, 2-step, and 4-step).  Each subplot displays the FID and CLIP scores obtained for various timesteps.  For multi-step inference, previously optimized timesteps from earlier steps are retained, making the search more efficient and focused.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Inference timesteps search. This figure illustrates the performance of timesteps search for achieving optimal results during inference with 0.6B and 1.6B models. The subplots compare FID (top row) and CLIP-Score (bottom row) across different timesteps for 1-step, 2-step, and 4-step inference settings. The x-axis represents the timestep being searched at the current step; for multi-step settings (e.g., 4 steps), the timesteps for earlier steps are fixed to their previously optimized values.
> </details>



![](https://arxiv.org/html/2503.09641/x11.png)

> 🔼 The figure displays the impact of various noise distribution configurations on the performance of the continuous-time consistency model (sCM) during training.  The x-axis represents the training steps (up to 40,000), and the y-axis shows the FID (Fréchet Inception Distance) and CLIP (Contrastive Language-Image Pre-training) scores, which are used to evaluate image quality and similarity to text prompts respectively. Multiple lines depict the results for different configurations of the mean (Pmean) and standard deviation (Pstd) of the noise distribution. The plot reveals that the configuration with Pmean=0.0 and Pstd=1.6 (green line) yields the best results, achieving both low FID (indicating high-quality images) and high CLIP scores (showing good alignment with text prompts) while maintaining stable training dynamics. Other configurations exhibit either instability during training or suboptimal performance.
> <details>
> <summary>read the caption</summary>
> Figure 7: Controlling the sCM noise distribution. This figure compares FID and CLIP-Score across different noise distribution settings over 40k training steps in sCM-only experiments. The green curve (Pmean,Pstd)=(0.0,1.6)subscript𝑃meansubscript𝑃std0.01.6(P_{\text{mean}},P_{\text{std}})=(0.0,1.6)( italic_P start_POSTSUBSCRIPT mean end_POSTSUBSCRIPT , italic_P start_POSTSUBSCRIPT std end_POSTSUBSCRIPT ) = ( 0.0 , 1.6 ) demonstrates optimal performance, achieving stable training dynamics and superior generation quality.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.4.4">
<tr class="ltx_tr" id="S3.T2.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T2.3.3.3.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.4.1" style="font-size:90%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.5.1" style="font-size:90%;">Inference</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.6.1" style="font-size:90%;">Throughput</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.3.3.3.7"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.7.1" style="font-size:90%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3.8"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.8.1" style="font-size:90%;">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1" style="font-size:90%;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.2.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.2.1" style="font-size:90%;">CLIP <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.1.1.m1.1"><semantics id="S3.T2.2.2.2.2.1.1.m1.1a"><mo id="S3.T2.2.2.2.2.1.1.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.1.1.m1.1b"><ci id="S3.T2.2.2.2.2.1.1.m1.1.1.cmml" xref="S3.T2.2.2.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.3.1" style="font-size:90%;">GenEval <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.1.1.m1.1"><semantics id="S3.T2.3.3.3.3.1.1.m1.1a"><mo id="S3.T2.3.3.3.3.1.1.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.1.1.m1.1b"><ci id="S3.T2.3.3.3.3.1.1.m1.1.1.cmml" xref="S3.T2.3.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.1.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.5">
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.5.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.5.1.1" style="font-size:90%;">steps</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.5.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.5.2.1" style="font-size:90%;">(samples/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.5.3"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.5.3.1" style="font-size:90%;">(s)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.5.4"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.5.4.1" style="font-size:90%;">(B)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.4.6.1" rowspan="7"><span class="ltx_text" id="S3.T2.4.4.6.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T2.4.4.6.1.1.1" style="width:6.3pt;height:66.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:66.7pt;transform:translate(-30.24pt,-30.24pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T2.4.4.6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.6.1.1.1.1.1">Pre-train Models</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.4.4.6.2">
<span class="ltx_text" id="S3.T2.4.4.6.2.1" style="font-size:90%;">SDXL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S3.T2.4.4.6.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.6.3"><span class="ltx_text" id="S3.T2.4.4.6.3.1" style="font-size:90%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.6.4"><span class="ltx_text" id="S3.T2.4.4.6.4.1" style="font-size:90%;">0.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.4.6.5"><span class="ltx_text" id="S3.T2.4.4.6.5.1" style="font-size:90%;">6.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.6.6"><span class="ltx_text" id="S3.T2.4.4.6.6.1" style="font-size:90%;">2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.6.7"><span class="ltx_text" id="S3.T2.4.4.6.7.1" style="font-size:90%;">6.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.6.8"><span class="ltx_text" id="S3.T2.4.4.6.8.1" style="font-size:90%;">29.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.6.9"><span class="ltx_text" id="S3.T2.4.4.6.9.1" style="font-size:90%;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.4.1">
<span class="ltx_text" id="S3.T2.4.4.4.1.1" style="font-size:90%;">PixArt-</span><math alttext="\Sigma" class="ltx_Math" display="inline" id="S3.T2.4.4.4.1.m1.1"><semantics id="S3.T2.4.4.4.1.m1.1a"><mi id="S3.T2.4.4.4.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S3.T2.4.4.4.1.m1.1.1.cmml">Σ</mi><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.1.m1.1b"><ci id="S3.T2.4.4.4.1.m1.1.1.cmml" xref="S3.T2.4.4.4.1.m1.1.1">Σ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.1.m1.1c">\Sigma</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.1.m1.1d">roman_Σ</annotation></semantics></math><span class="ltx_text" id="S3.T2.4.4.4.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.4.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S3.T2.4.4.4.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.2"><span class="ltx_text" id="S3.T2.4.4.4.2.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.3"><span class="ltx_text" id="S3.T2.4.4.4.3.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.4.4"><span class="ltx_text" id="S3.T2.4.4.4.4.1" style="font-size:90%;">2.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.5"><span class="ltx_text" id="S3.T2.4.4.4.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.6"><span class="ltx_text" id="S3.T2.4.4.4.6.1" style="font-size:90%;">6.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.7"><span class="ltx_text" id="S3.T2.4.4.4.7.1" style="font-size:90%;">28.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.8"><span class="ltx_text" id="S3.T2.4.4.4.8.1" style="font-size:90%;">0.54</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.7.1">
<span class="ltx_text" id="S3.T2.4.4.7.1.1" style="font-size:90%;">SD3-medium </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S3.T2.4.4.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.2"><span class="ltx_text" id="S3.T2.4.4.7.2.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.3"><span class="ltx_text" id="S3.T2.4.4.7.3.1" style="font-size:90%;">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.7.4"><span class="ltx_text" id="S3.T2.4.4.7.4.1" style="font-size:90%;">4.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.5"><span class="ltx_text" id="S3.T2.4.4.7.5.1" style="font-size:90%;">2.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.6"><span class="ltx_text" id="S3.T2.4.4.7.6.1" style="font-size:90%;">11.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.7"><span class="ltx_text" id="S3.T2.4.4.7.7.1" style="font-size:90%;">27.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.7.8"><span class="ltx_text" id="S3.T2.4.4.7.8.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.8.1">
<span class="ltx_text" id="S3.T2.4.4.8.1.1" style="font-size:90%;">FLUX-dev </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S3.T2.4.4.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.8.2"><span class="ltx_text" id="S3.T2.4.4.8.2.1" style="font-size:90%;">50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.8.3"><span class="ltx_text" id="S3.T2.4.4.8.3.1" style="font-size:90%;">0.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.8.4"><span class="ltx_text" id="S3.T2.4.4.8.4.1" style="font-size:90%;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.8.5"><span class="ltx_text" id="S3.T2.4.4.8.5.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.8.6"><span class="ltx_text" id="S3.T2.4.4.8.6.1" style="font-size:90%;">10.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.8.7"><span class="ltx_text" id="S3.T2.4.4.8.7.1" style="font-size:90%;">27.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.8.8"><span class="ltx_text" id="S3.T2.4.4.8.8.1" style="font-size:90%;">0.67</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.9.1">
<span class="ltx_text" id="S3.T2.4.4.9.1.1" style="font-size:90%;">Playground v3 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S3.T2.4.4.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.9.2"><span class="ltx_text" id="S3.T2.4.4.9.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.9.3"><span class="ltx_text" id="S3.T2.4.4.9.3.1" style="font-size:90%;">0.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.9.4"><span class="ltx_text" id="S3.T2.4.4.9.4.1" style="font-size:90%;">15.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.9.5"><span class="ltx_text" id="S3.T2.4.4.9.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.9.6"><span class="ltx_text" id="S3.T2.4.4.9.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.9.7"><span class="ltx_text" id="S3.T2.4.4.9.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.9.8"><span class="ltx_text" id="S3.T2.4.4.9.8.1" style="font-size:90%;">0.76</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.10.1">
<span class="ltx_text" id="S3.T2.4.4.10.1.1" style="font-size:90%;">SANA 0.6B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S3.T2.4.4.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.10.2"><span class="ltx_text" id="S3.T2.4.4.10.2.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.10.3"><span class="ltx_text" id="S3.T2.4.4.10.3.1" style="font-size:90%;">1.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.10.4"><span class="ltx_text" id="S3.T2.4.4.10.4.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.10.5"><span class="ltx_text" id="S3.T2.4.4.10.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.10.6"><span class="ltx_text" id="S3.T2.4.4.10.6.1" style="font-size:90%;">5.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.10.7"><span class="ltx_text" id="S3.T2.4.4.10.7.1" style="font-size:90%;">28.36</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.10.8"><span class="ltx_text" id="S3.T2.4.4.10.8.1" style="font-size:90%;">0.64</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.11.1">
<span class="ltx_text" id="S3.T2.4.4.11.1.1" style="font-size:90%;">SANA 1.6B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S3.T2.4.4.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.11.2"><span class="ltx_text" id="S3.T2.4.4.11.2.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.11.3"><span class="ltx_text" id="S3.T2.4.4.11.3.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.11.4"><span class="ltx_text" id="S3.T2.4.4.11.4.1" style="font-size:90%;">1.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.11.5"><span class="ltx_text" id="S3.T2.4.4.11.5.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.11.6"><span class="ltx_text" id="S3.T2.4.4.11.6.1" style="font-size:90%;">5.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.11.7"><span class="ltx_text" id="S3.T2.4.4.11.7.1" style="font-size:90%;">28.67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.11.8"><span class="ltx_text" id="S3.T2.4.4.11.8.1" style="font-size:90%;">0.66</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.4.12.1" rowspan="28"><span class="ltx_text" id="S3.T2.4.4.12.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T2.4.4.12.1.1.1" style="width:6.3pt;height:75pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:75.0pt;transform:translate(-34.36pt,-34.36pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T2.4.4.12.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.12.1.1.1.1.1">Distillation Models</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.4.4.12.2">
<span class="ltx_text" id="S3.T2.4.4.12.2.1" style="font-size:90%;">SDXL-LCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.12.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S3.T2.4.4.12.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.12.3"><span class="ltx_text" id="S3.T2.4.4.12.3.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.12.4"><span class="ltx_text" id="S3.T2.4.4.12.4.1" style="font-size:90%;">2.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.4.12.5"><span class="ltx_text" id="S3.T2.4.4.12.5.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.12.6"><span class="ltx_text" id="S3.T2.4.4.12.6.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.12.7"><span class="ltx_text" id="S3.T2.4.4.12.7.1" style="font-size:90%;">10.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.12.8"><span class="ltx_text" id="S3.T2.4.4.12.8.1" style="font-size:90%;">28.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.12.9"><span class="ltx_text" id="S3.T2.4.4.12.9.1" style="font-size:90%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.13.1">
<span class="ltx_text" id="S3.T2.4.4.13.1.1" style="font-size:90%;">PixArt-LCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S3.T2.4.4.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.13.2"><span class="ltx_text" id="S3.T2.4.4.13.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.13.3"><span class="ltx_text" id="S3.T2.4.4.13.3.1" style="font-size:90%;">2.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.13.4"><span class="ltx_text" id="S3.T2.4.4.13.4.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.13.5"><span class="ltx_text" id="S3.T2.4.4.13.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.13.6"><span class="ltx_text" id="S3.T2.4.4.13.6.1" style="font-size:90%;">8.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.13.7"><span class="ltx_text" id="S3.T2.4.4.13.7.1" style="font-size:90%;">27.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.13.8"><span class="ltx_text" id="S3.T2.4.4.13.8.1" style="font-size:90%;">0.44</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.14.1">
<span class="ltx_text" id="S3.T2.4.4.14.1.1" style="font-size:90%;">PCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S3.T2.4.4.14.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S3.T2.4.4.14.1.4" style="font-size:90%;">†</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.14.2"><span class="ltx_text" id="S3.T2.4.4.14.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.14.3"><span class="ltx_text" id="S3.T2.4.4.14.3.1" style="font-size:90%;">1.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.14.4"><span class="ltx_text" id="S3.T2.4.4.14.4.1" style="font-size:90%;">0.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.14.5"><span class="ltx_text" id="S3.T2.4.4.14.5.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.14.6"><span class="ltx_text" id="S3.T2.4.4.14.6.1" style="font-size:90%;">15.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.14.7"><span class="ltx_text" id="S3.T2.4.4.14.7.1" style="font-size:90%;">27.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.14.8"><span class="ltx_text" id="S3.T2.4.4.14.8.1" style="font-size:90%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.15.1">
<span class="ltx_text" id="S3.T2.4.4.15.1.1" style="font-size:90%;">SD3.5-Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S3.T2.4.4.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.15.2"><span class="ltx_text" id="S3.T2.4.4.15.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.15.3"><span class="ltx_text" id="S3.T2.4.4.15.3.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.15.4"><span class="ltx_text" id="S3.T2.4.4.15.4.1" style="font-size:90%;">1.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.15.5"><span class="ltx_text" id="S3.T2.4.4.15.5.1" style="font-size:90%;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.15.6"><span class="ltx_text" id="S3.T2.4.4.15.6.1" style="font-size:90%;">11.97</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.15.7"><span class="ltx_text" id="S3.T2.4.4.15.7.1" style="font-size:90%;">27.35</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.15.8"><span class="ltx_text" id="S3.T2.4.4.15.8.1" style="font-size:90%;">0.72</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.16.1">
<span class="ltx_text" id="S3.T2.4.4.16.1.1" style="font-size:90%;">SDXL-DMD2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S3.T2.4.4.16.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S3.T2.4.4.16.1.4" style="font-size:90%;">†</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.16.2"><span class="ltx_text" id="S3.T2.4.4.16.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.16.3"><span class="ltx_text" id="S3.T2.4.4.16.3.1" style="font-size:90%;">2.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.16.4"><span class="ltx_text" id="S3.T2.4.4.16.4.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.16.5"><span class="ltx_text" id="S3.T2.4.4.16.5.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.16.6"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.16.6.1" style="font-size:90%;">6.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.16.7"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.16.7.1" style="font-size:90%;">28.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.16.8"><span class="ltx_text" id="S3.T2.4.4.16.8.1" style="font-size:90%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.17.1">
<span class="ltx_text" id="S3.T2.4.4.17.1.1" style="font-size:90%;">FLUX-schnell </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S3.T2.4.4.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.17.2"><span class="ltx_text" id="S3.T2.4.4.17.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.17.3"><span class="ltx_text" id="S3.T2.4.4.17.3.1" style="font-size:90%;">0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.17.4"><span class="ltx_text" id="S3.T2.4.4.17.4.1" style="font-size:90%;">2.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.17.5"><span class="ltx_text" id="S3.T2.4.4.17.5.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.17.6"><span class="ltx_text" id="S3.T2.4.4.17.6.1" style="font-size:90%;">7.94</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.17.7"><span class="ltx_text" id="S3.T2.4.4.17.7.1" style="font-size:90%;">28.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.17.8"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.17.8.1" style="font-size:90%;">0.71</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.4.4.18.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.18.1.1" style="font-size:90%;">SANA-Sprint 0.6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.18.2"><span class="ltx_text" id="S3.T2.4.4.18.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.18.3"><span class="ltx_text" id="S3.T2.4.4.18.3.1" style="font-size:90%;">5.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.4.18.4"><span class="ltx_text" id="S3.T2.4.4.18.4.1" style="font-size:90%;">0.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.18.5"><span class="ltx_text" id="S3.T2.4.4.18.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.18.6"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.18.6.1" style="font-size:90%;">6.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.18.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.18.7.1" style="font-size:90%;">28.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.18.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.18.8.1" style="font-size:90%;">0.76</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.19.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.19.1.1" style="font-size:90%;">SANA-Sprint 1.6B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.19.2"><span class="ltx_text" id="S3.T2.4.4.19.2.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.19.3"><span class="ltx_text" id="S3.T2.4.4.19.3.1" style="font-size:90%;">5.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.19.4"><span class="ltx_text" id="S3.T2.4.4.19.4.1" style="font-size:90%;">0.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.19.5"><span class="ltx_text" id="S3.T2.4.4.19.5.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.19.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.19.6.1" style="font-size:90%;">6.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.19.7"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.19.7.1" style="font-size:90%;">28.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.19.8"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.19.8.1" style="font-size:90%;">0.77</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.4.4.20.1">
<span class="ltx_text" id="S3.T2.4.4.20.1.1" style="font-size:90%;">SDXL-LCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S3.T2.4.4.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.20.2"><span class="ltx_text" id="S3.T2.4.4.20.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.20.3"><span class="ltx_text" id="S3.T2.4.4.20.3.1" style="font-size:90%;">2.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.4.20.4"><span class="ltx_text" id="S3.T2.4.4.20.4.1" style="font-size:90%;">0.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.20.5"><span class="ltx_text" id="S3.T2.4.4.20.5.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.20.6"><span class="ltx_text" id="S3.T2.4.4.20.6.1" style="font-size:90%;">18.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.20.7"><span class="ltx_text" id="S3.T2.4.4.20.7.1" style="font-size:90%;">27.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.20.8"><span class="ltx_text" id="S3.T2.4.4.20.8.1" style="font-size:90%;">0.44</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.21.1">
<span class="ltx_text" id="S3.T2.4.4.21.1.1" style="font-size:90%;">PixArt-LCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.21.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S3.T2.4.4.21.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.21.2"><span class="ltx_text" id="S3.T2.4.4.21.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.21.3"><span class="ltx_text" id="S3.T2.4.4.21.3.1" style="font-size:90%;">3.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.21.4"><span class="ltx_text" id="S3.T2.4.4.21.4.1" style="font-size:90%;">0.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.21.5"><span class="ltx_text" id="S3.T2.4.4.21.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.21.6"><span class="ltx_text" id="S3.T2.4.4.21.6.1" style="font-size:90%;">10.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.21.7"><span class="ltx_text" id="S3.T2.4.4.21.7.1" style="font-size:90%;">27.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.21.8"><span class="ltx_text" id="S3.T2.4.4.21.8.1" style="font-size:90%;">0.42</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.22.1">
<span class="ltx_text" id="S3.T2.4.4.22.1.1" style="font-size:90%;">SD3.5-Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.22.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S3.T2.4.4.22.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.22.2"><span class="ltx_text" id="S3.T2.4.4.22.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.22.3"><span class="ltx_text" id="S3.T2.4.4.22.3.1" style="font-size:90%;">1.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.22.4"><span class="ltx_text" id="S3.T2.4.4.22.4.1" style="font-size:90%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.22.5"><span class="ltx_text" id="S3.T2.4.4.22.5.1" style="font-size:90%;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.22.6"><span class="ltx_text" id="S3.T2.4.4.22.6.1" style="font-size:90%;">51.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.22.7"><span class="ltx_text" id="S3.T2.4.4.22.7.1" style="font-size:90%;">25.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.22.8"><span class="ltx_text" id="S3.T2.4.4.22.8.1" style="font-size:90%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.23.1">
<span class="ltx_text" id="S3.T2.4.4.23.1.1" style="font-size:90%;">PCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.23.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S3.T2.4.4.23.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S3.T2.4.4.23.1.4" style="font-size:90%;">†</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.23.2"><span class="ltx_text" id="S3.T2.4.4.23.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.23.3"><span class="ltx_text" id="S3.T2.4.4.23.3.1" style="font-size:90%;">2.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.23.4"><span class="ltx_text" id="S3.T2.4.4.23.4.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.23.5"><span class="ltx_text" id="S3.T2.4.4.23.5.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.23.6"><span class="ltx_text" id="S3.T2.4.4.23.6.1" style="font-size:90%;">14.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.23.7"><span class="ltx_text" id="S3.T2.4.4.23.7.1" style="font-size:90%;">27.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.23.8"><span class="ltx_text" id="S3.T2.4.4.23.8.1" style="font-size:90%;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.24.1">
<span class="ltx_text" id="S3.T2.4.4.24.1.1" style="font-size:90%;">SDXL-DMD2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.24.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S3.T2.4.4.24.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S3.T2.4.4.24.1.4" style="font-size:90%;">†</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.24.2"><span class="ltx_text" id="S3.T2.4.4.24.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.24.3"><span class="ltx_text" id="S3.T2.4.4.24.3.1" style="font-size:90%;">2.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.24.4"><span class="ltx_text" id="S3.T2.4.4.24.4.1" style="font-size:90%;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.24.5"><span class="ltx_text" id="S3.T2.4.4.24.5.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.24.6"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.24.6.1" style="font-size:90%;">7.61</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.24.7"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.24.7.1" style="font-size:90%;">28.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.24.8"><span class="ltx_text" id="S3.T2.4.4.24.8.1" style="font-size:90%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.25.1">
<span class="ltx_text" id="S3.T2.4.4.25.1.1" style="font-size:90%;">FLUX-schnell </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.25.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S3.T2.4.4.25.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.25.2"><span class="ltx_text" id="S3.T2.4.4.25.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.25.3"><span class="ltx_text" id="S3.T2.4.4.25.3.1" style="font-size:90%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.25.4"><span class="ltx_text" id="S3.T2.4.4.25.4.1" style="font-size:90%;">1.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.25.5"><span class="ltx_text" id="S3.T2.4.4.25.5.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.25.6"><span class="ltx_text" id="S3.T2.4.4.25.6.1" style="font-size:90%;">7.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.25.7"><span class="ltx_text" id="S3.T2.4.4.25.7.1" style="font-size:90%;">28.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.25.8"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.25.8.1" style="font-size:90%;">0.71</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.26">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.4.4.26.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.26.1.1" style="font-size:90%;">SANA-Sprint 0.6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.26.2"><span class="ltx_text" id="S3.T2.4.4.26.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.26.3"><span class="ltx_text" id="S3.T2.4.4.26.3.1" style="font-size:90%;">6.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.4.26.4"><span class="ltx_text" id="S3.T2.4.4.26.4.1" style="font-size:90%;">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.26.5"><span class="ltx_text" id="S3.T2.4.4.26.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.26.6"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.26.6.1" style="font-size:90%;">6.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.26.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.26.7.1" style="font-size:90%;">28.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.26.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.26.8.1" style="font-size:90%;">0.76</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.27.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.27.1.1" style="font-size:90%;">SANA-Sprint 1.6B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.27.2"><span class="ltx_text" id="S3.T2.4.4.27.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.27.3"><span class="ltx_text" id="S3.T2.4.4.27.3.1" style="font-size:90%;">5.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.27.4"><span class="ltx_text" id="S3.T2.4.4.27.4.1" style="font-size:90%;">0.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.27.5"><span class="ltx_text" id="S3.T2.4.4.27.5.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.27.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.27.6.1" style="font-size:90%;">6.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.27.7"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.27.7.1" style="font-size:90%;">28.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.27.8"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.27.8.1" style="font-size:90%;">0.77</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.28">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.4.4.28.1">
<span class="ltx_text" id="S3.T2.4.4.28.1.1" style="font-size:90%;">SDXL-LCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.28.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S3.T2.4.4.28.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.28.2"><span class="ltx_text" id="S3.T2.4.4.28.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.28.3"><span class="ltx_text" id="S3.T2.4.4.28.3.1" style="font-size:90%;">3.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.4.28.4"><span class="ltx_text" id="S3.T2.4.4.28.4.1" style="font-size:90%;">0.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.28.5"><span class="ltx_text" id="S3.T2.4.4.28.5.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.28.6"><span class="ltx_text" id="S3.T2.4.4.28.6.1" style="font-size:90%;">50.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.28.7"><span class="ltx_text" id="S3.T2.4.4.28.7.1" style="font-size:90%;">24.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.28.8"><span class="ltx_text" id="S3.T2.4.4.28.8.1" style="font-size:90%;">0.28</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.29.1">
<span class="ltx_text" id="S3.T2.4.4.29.1.1" style="font-size:90%;">PixArt-LCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.29.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S3.T2.4.4.29.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.29.2"><span class="ltx_text" id="S3.T2.4.4.29.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.29.3"><span class="ltx_text" id="S3.T2.4.4.29.3.1" style="font-size:90%;">4.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.29.4"><span class="ltx_text" id="S3.T2.4.4.29.4.1" style="font-size:90%;">0.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.29.5"><span class="ltx_text" id="S3.T2.4.4.29.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.29.6"><span class="ltx_text" id="S3.T2.4.4.29.6.1" style="font-size:90%;">73.35</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.29.7"><span class="ltx_text" id="S3.T2.4.4.29.7.1" style="font-size:90%;">23.99</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.29.8"><span class="ltx_text" id="S3.T2.4.4.29.8.1" style="font-size:90%;">0.41</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.30.1">
<span class="ltx_text" id="S3.T2.4.4.30.1.1" style="font-size:90%;">PixArt-DMD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.30.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S3.T2.4.4.30.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S3.T2.4.4.30.1.4" style="font-size:90%;">†</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.30.2"><span class="ltx_text" id="S3.T2.4.4.30.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.30.3"><span class="ltx_text" id="S3.T2.4.4.30.3.1" style="font-size:90%;">4.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.30.4"><span class="ltx_text" id="S3.T2.4.4.30.4.1" style="font-size:90%;">0.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.30.5"><span class="ltx_text" id="S3.T2.4.4.30.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.30.6"><span class="ltx_text" id="S3.T2.4.4.30.6.1" style="font-size:90%;">9.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.30.7"><span class="ltx_text" id="S3.T2.4.4.30.7.1" style="font-size:90%;">26.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.30.8"><span class="ltx_text" id="S3.T2.4.4.30.8.1" style="font-size:90%;">0.45</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.31.1">
<span class="ltx_text" id="S3.T2.4.4.31.1.1" style="font-size:90%;">SD3.5-Turbo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.31.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S3.T2.4.4.31.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.31.2"><span class="ltx_text" id="S3.T2.4.4.31.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.31.3"><span class="ltx_text" id="S3.T2.4.4.31.3.1" style="font-size:90%;">2.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.31.4"><span class="ltx_text" id="S3.T2.4.4.31.4.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.31.5"><span class="ltx_text" id="S3.T2.4.4.31.5.1" style="font-size:90%;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.31.6"><span class="ltx_text" id="S3.T2.4.4.31.6.1" style="font-size:90%;">52.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.31.7"><span class="ltx_text" id="S3.T2.4.4.31.7.1" style="font-size:90%;">25.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.31.8"><span class="ltx_text" id="S3.T2.4.4.31.8.1" style="font-size:90%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.32.1">
<span class="ltx_text" id="S3.T2.4.4.32.1.1" style="font-size:90%;">PCM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.32.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S3.T2.4.4.32.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S3.T2.4.4.32.1.4" style="font-size:90%;">†</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.32.2"><span class="ltx_text" id="S3.T2.4.4.32.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.32.3"><span class="ltx_text" id="S3.T2.4.4.32.3.1" style="font-size:90%;">3.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.32.4"><span class="ltx_text" id="S3.T2.4.4.32.4.1" style="font-size:90%;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.32.5"><span class="ltx_text" id="S3.T2.4.4.32.5.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.32.6"><span class="ltx_text" id="S3.T2.4.4.32.6.1" style="font-size:90%;">30.11</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.32.7"><span class="ltx_text" id="S3.T2.4.4.32.7.1" style="font-size:90%;">26.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.32.8"><span class="ltx_text" id="S3.T2.4.4.32.8.1" style="font-size:90%;">0.42</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.33.1">
<span class="ltx_text" id="S3.T2.4.4.33.1.1" style="font-size:90%;">SDXL-DMD2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.4.4.33.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S3.T2.4.4.33.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S3.T2.4.4.33.1.4" style="font-size:90%;">†</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.33.2"><span class="ltx_text" id="S3.T2.4.4.33.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.33.3"><span class="ltx_text" id="S3.T2.4.4.33.3.1" style="font-size:90%;">3.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.33.4"><span class="ltx_text" id="S3.T2.4.4.33.4.1" style="font-size:90%;">0.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.33.5"><span class="ltx_text" id="S3.T2.4.4.33.5.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.33.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.33.6.1" style="font-size:90%;">7.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.33.7"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.33.7.1" style="font-size:90%;">28.93</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.33.8"><span class="ltx_text" id="S3.T2.4.4.33.8.1" style="font-size:90%;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.34">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.34.1">
<span class="ltx_text" id="S3.T2.4.4.34.1.1" style="font-size:90%;">FLUX-schnell </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.4.4.34.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09641v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S3.T2.4.4.34.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.34.2"><span class="ltx_text" id="S3.T2.4.4.34.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.34.3"><span class="ltx_text" id="S3.T2.4.4.34.3.1" style="font-size:90%;">1.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.34.4"><span class="ltx_text" id="S3.T2.4.4.34.4.1" style="font-size:90%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.34.5"><span class="ltx_text" id="S3.T2.4.4.34.5.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.34.6"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.34.6.1" style="font-size:90%;">7.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.34.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.34.7.1" style="font-size:90%;">28.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.34.8"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.34.8.1" style="font-size:90%;">0.69</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.35">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.4.4.35.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.35.1.1" style="font-size:90%;">SANA-Sprint 0.6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.35.2"><span class="ltx_text" id="S3.T2.4.4.35.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.35.3"><span class="ltx_text" id="S3.T2.4.4.35.3.1" style="font-size:90%;">7.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.4.35.4"><span class="ltx_text" id="S3.T2.4.4.35.4.1" style="font-size:90%;">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.35.5"><span class="ltx_text" id="S3.T2.4.4.35.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.35.6"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.35.6.1" style="font-size:90%;">7.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.35.7"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.35.7.1" style="font-size:90%;">28.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.35.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.4.4.35.8.1" style="font-size:90%;">0.72</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.36">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T2.4.4.36.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.36.1.1" style="font-size:90%;">SANA-Sprint 1.6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.4.36.2"><span class="ltx_text" id="S3.T2.4.4.36.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.4.36.3"><span class="ltx_text" id="S3.T2.4.4.36.3.1" style="font-size:90%;">6.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.4.4.36.4"><span class="ltx_text" id="S3.T2.4.4.36.4.1" style="font-size:90%;">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.4.36.5"><span class="ltx_text" id="S3.T2.4.4.36.5.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.4.36.6"><span class="ltx_text" id="S3.T2.4.4.36.6.1" style="font-size:90%;">7.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.4.36.7"><span class="ltx_text" id="S3.T2.4.4.36.7.1" style="font-size:90%;">28.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.4.36.8"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.36.8.1" style="font-size:90%;">0.74</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of SANA-Sprint's performance and efficiency against state-of-the-art (SOTA) approaches in text-to-image generation.  The results are measured using various metrics including FID (Fréchet Inception Distance), CLIP (Contrastive Language-Image Pre-training) score, and GenEval score.  These metrics evaluate image quality, alignment between generated images and text prompts, and overall generation quality.  The table also provides information on the inference speed measured in samples per second (throughput) and latency in seconds, tested on a single NVIDIA A100 GPU using BF16 precision.  The throughput is measured with a batch size of 10, and latency is measured with a batch size of 1. The best and second-best results are highlighted for each metric. Note that the † symbol indicates models where different architectures were required for different numbers of inference steps.
> <details>
> <summary>read the caption</summary>
> Table 2: Comprehensive comparison of SANA-Sprint with SOTA approaches in efficiency and performance. The speed is tested on one A100 GPU with BF16 Precision. Throughput: Measured with batch=10. Latency: Measured with batch=1. We highlight the best and second best entries. † indicates that distinct models are required for different inference steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.2.2">
<tr class="ltx_tr" id="S4.T6.2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.2.2.3">sCM</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T6.2.2.2.2.4">LADD</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.1.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.2.2.2">CLIP <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.2.2.m1.1a"><mo id="S4.T6.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2.3.1">✓</td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T6.2.2.2.3.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2.3.3">8.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2.3.4">27.51</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2.4">
<td class="ltx_td" id="S4.T6.2.2.2.4.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.2.2.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.4.3">12.20</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.4.4">27.00</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.5.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.2.2.2.5.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.5.3">8.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.5.4">28.02</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the optimal timestep settings used for inference in the SANA-Sprint model, categorized by the number of inference steps (1, 2, or 4) and the model size (0.6B or 1.6B parameters).  Each setting represents the specific timesteps used during the denoising process to generate images efficiently and with high quality. The settings were obtained through an optimization process, as explained in the paper, to find the most effective timesteps for each combination of steps and model size.
> <details>
> <summary>read the caption</summary>
> Table 7: Inference timestep settings for both SANA-Sprint 0.6B and 1.6B models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.4.2.2">
<tr class="ltx_tr" id="S4.T6.4.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T6.4.2.2.2.3"><span class="ltx_text" id="S4.T6.4.2.2.2.3.1" style="font-size:90%;">CFG Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.1.1.1.1">
<span class="ltx_text" id="S4.T6.3.1.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.3.1.1.1.1.m1.1"><semantics id="S4.T6.3.1.1.1.1.m1.1a"><mo id="S4.T6.3.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.1.1.1.1.m1.1b"><ci id="S4.T6.3.1.1.1.1.m1.1.1.cmml" xref="S4.T6.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.2.2.2.2">
<span class="ltx_text" id="S4.T6.4.2.2.2.2.1" style="font-size:90%;">CLIP </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.4.2.2.2.2.m1.1"><semantics id="S4.T6.4.2.2.2.2.m1.1a"><mo id="S4.T6.4.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.2.2.2.2.m1.1b"><ci id="S4.T6.4.2.2.2.2.m1.1.1.cmml" xref="S4.T6.4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.4.2.2.3.1"><span class="ltx_text" id="S4.T6.4.2.2.3.1.1" style="font-size:90%;">w/o Embed</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.2.2.3.2"><span class="ltx_text" id="S4.T6.4.2.2.3.2.1" style="font-size:90%;">9.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.2.2.3.3"><span class="ltx_text" id="S4.T6.4.2.2.3.3.1" style="font-size:90%;">27.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.2.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T6.4.2.2.4.1"><span class="ltx_text ltx_font_bold" id="S4.T6.4.2.2.4.1.1" style="font-size:90%;">w/ Embed</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.2.2.4.2"><span class="ltx_text" id="S4.T6.4.2.2.4.2.1" style="font-size:90%;">8.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.2.2.4.3"><span class="ltx_text" id="S4.T6.4.2.2.4.3.1" style="font-size:90%;">28.09</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different noise distribution configurations used within the Latent Adversarial Diffusion Distillation (LADD) loss function. The experiment aims to find the optimal configuration that balances training stability and generation quality. The comparison is done by varying the mean and standard deviation parameters of the noise distribution and observing the resulting FID and CLIP scores.  The results showcase how different noise distributions affect model performance.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of different noise distributions for LADD loss.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.09641/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09641/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}