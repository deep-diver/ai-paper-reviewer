---
title: "Inverse Bridge Matching Distillation"
summary: "Boosting Diffusion Bridge Models: A new distillation technique accelerates inference speed by 4x to 100x, sometimes even improving image quality!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Skolkovo Institute of Science and Technology",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.01362 {{< /keyword >}}
{{< keyword icon="writer" >}} Nikita Gushchin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.01362" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.01362" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.01362/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion Bridge Models (DBMs) are powerful for image-to-image tasks, but their slow inference hinders practical use. Existing acceleration methods are limited, often applying only to specific DBM types or falling short in achieving single-step generation.  This creates a need for a universal and efficient acceleration technique.



This paper introduces Inverse Bridge Matching Distillation (IBMD), a new method that addresses these limitations.  IBMD offers a universal approach, working with both conditional and unconditional DBMs.  It allows for distillation into single-step generators and doesn't require target domain data.  Evaluations across numerous tasks show that IBMD significantly speeds up DBMs inference (4x to 100x) and can even improve generation quality compared to the original models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel distillation technique, Inverse Bridge Matching Distillation (IBMD), accelerates Diffusion Bridge Models (DBMs). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} IBMD is universal, handling both conditional and unconditional DBMs, unlike previous methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} IBMD achieves 4x to 100x faster inference, sometimes surpassing the teacher model's quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it tackles the slow inference issue in Diffusion Bridge Models (DBMs)**, a significant hurdle limiting their wider adoption. By introducing a novel distillation technique, it offers a **universal solution for accelerating both conditional and unconditional DBMs**, paving the way for more efficient applications in various image-to-image translation tasks.  The proposed method's **data-free distillation** aspect and its demonstration of **improved generation quality** further enhance its significance for researchers seeking efficient and high-performing DBMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/bridge_matching_new.png)

> 🔼 This figure showcases the results of the Inverse Bridge Matching Distillation (IBMD) technique on several image-to-image translation tasks.  It presents visual comparisons between the outputs of original diffusion bridge models (DBMs), which required 500 or more steps for inference, and the outputs of DBMs distilled using the IBMD method. The distilled models achieve comparable or even better image quality using only 4 or fewer steps, demonstrating significant improvements in efficiency. The tasks include super-resolution, inpainting, JPEG restoration, and sketch-to-image translation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Outputs of DBMs models distilled by our Inverse Bridge Matching Distillation (IBMD) approach on various image-to-image translation tasks and datasets (\wasyparagraph5). Teachers use NFE≥500absent500\geq 500≥ 500 steps, while IBMD distilled models use NFE≤4absent4\leq 4≤ 4.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.F1.20">
<tr class="ltx_tr" id="S1.F1.20.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S1.F1.20.21.1" style="padding:-4pt 1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.20.21.2" style="padding:-4pt 1.5pt;">Input</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.20.21.3" style="padding:-4pt 1.5pt;">IBMD (<span class="ltx_text ltx_font_bold" id="S1.F1.20.21.3.1">Ours</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.20.21.4" style="padding:-4pt 1.5pt;">Teacher</td>
</tr>
<tr class="ltx_tr" id="S1.F1.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.1.1.1" style="padding:-4pt 1.5pt;"><span class="ltx_text" id="S1.F1.1.1.1.1" style="position:relative; bottom:9.0pt;">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S1.F1.1.1.1.1.2">
<span class="ltx_p" id="S1.F1.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.1.1.1.1.2.1.1" style="width:71.5pt;height:8.800000000000001pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S1.F1.1.1.1.1.2.1.1.1"><span class="ltx_text" id="S1.F1.1.1.1.1.2.1.1.1.1">Super-resolution</span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.2.2.2" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.2.2.2.g1" src="extracted/6174617/images/teaser/pool_input.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.3.3.3" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.3.3.3.g1" src="extracted/6174617/images/teaser/pool_ibmd.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.4.4.4" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.4.4.4.g1" src="extracted/6174617/images/teaser/pool_teacher.png" width="102"/></td>
</tr>
<tr class="ltx_tr" id="S1.F1.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.5.5.1" style="padding:-4pt 1.5pt;"><span class="ltx_text" id="S1.F1.5.5.1.1" style="position:relative; bottom:8.0pt;">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S1.F1.5.5.1.1.2">
<span class="ltx_p" id="S1.F1.5.5.1.1.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.5.5.1.1.2.1.1" style="width:77.3pt;height:6.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S1.F1.5.5.1.1.2.1.1.1"><span class="ltx_text" id="S1.F1.5.5.1.1.2.1.1.1.1">JPEG restoration</span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.6.6.2" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.6.6.2.g1" src="extracted/6174617/images/teaser/jpeg_5_input.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.7.7.3" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.7.7.3.g1" src="extracted/6174617/images/teaser/jpeg_5_ibmd.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.8.8.4" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.8.8.4.g1" src="extracted/6174617/images/teaser/jpeg_5_teacher.png" width="102"/></td>
</tr>
<tr class="ltx_tr" id="S1.F1.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.9.9.1" style="padding:-4pt 1.5pt;"><span class="ltx_text" id="S1.F1.9.9.1.1" style="position:relative; bottom:23.0pt;">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S1.F1.9.9.1.1.2">
<span class="ltx_p" id="S1.F1.9.9.1.1.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.9.9.1.1.2.1.1" style="width:45.0pt;height:8.699999999999999pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S1.F1.9.9.1.1.2.1.1.1"><span class="ltx_text" id="S1.F1.9.9.1.1.2.1.1.1.1">Inpainting</span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.10.10.2" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.10.10.2.g1" src="extracted/6174617/images/teaser/new_inpainting_input.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.11.11.3" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.11.11.3.g1" src="extracted/6174617/images/teaser/new_inpainting_student.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.12.12.4" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.12.12.4.g1" src="extracted/6174617/images/teaser/new_inpainting_teacher.png" width="102"/></td>
</tr>
<tr class="ltx_tr" id="S1.F1.16.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.13.13.1" style="padding:-4pt 1.5pt;"><span class="ltx_text" id="S1.F1.13.13.1.1" style="position:relative; bottom:7.0pt;">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S1.F1.13.13.1.1.2">
<span class="ltx_p" id="S1.F1.13.13.1.1.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.13.13.1.1.2.1.1" style="width:74.5pt;height:8.800000000000001pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S1.F1.13.13.1.1.2.1.1.1"><span class="ltx_text" id="S1.F1.13.13.1.1.2.1.1.1.1">Normal-to-Image</span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.14.14.2" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.14.14.2.g1" src="extracted/6174617/images/teaser/diode_input.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.15.15.3" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.15.15.3.g1" src="extracted/6174617/images/teaser/diode_student.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.16.16.4" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.16.16.4.g1" src="extracted/6174617/images/teaser/diode_teacher.png" width="102"/></td>
</tr>
<tr class="ltx_tr" id="S1.F1.20.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.17.17.1" style="padding:-4pt 1.5pt;"><span class="ltx_text" id="S1.F1.17.17.1.1" style="position:relative; bottom:9.0pt;">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S1.F1.17.17.1.1.2">
<span class="ltx_p" id="S1.F1.17.17.1.1.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.17.17.1.1.2.1.1" style="width:70.6pt;height:8.800000000000001pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S1.F1.17.17.1.1.2.1.1.1"><span class="ltx_text" id="S1.F1.17.17.1.1.2.1.1.1.1">Sketch-to-Image</span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.18.18.2" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.18.18.2.g1" src="extracted/6174617/images/teaser/image_grid_input_e2h.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.19.19.3" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.19.19.3.g1" src="extracted/6174617/images/teaser/image_grid_student_e2h.png" width="102"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.20.20.4" style="padding:-4pt 1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="102" id="S1.F1.20.20.4.g1" src="extracted/6174617/images/teaser/image_grid_teacher_e2h.png" width="102"/></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of different models on the image super-resolution task, specifically focusing on the Fréchet Inception Distance (FID) and Classifier Accuracy (CA) metrics.  It compares the performance of several state-of-the-art diffusion models, including DDRM, DDNM, IGDM, ADM, and CDSB, along with the I2SB model which serves as a baseline. The main focus is to show that the proposed IBMD method, with only 1 network forward evaluation (NFE), outperforms the existing models or performs comparably while requiring significantly fewer forward passes. Lower FID scores and higher CA scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on the image super-resolution task. Baseline results are taken from I2SB (Liu et al., 2023a).
> </details>





### In-depth insights


#### DBM Distillation
Diffusion Bridge Models (DBMs) are powerful for image-to-image translation, but their multistep inference is slow. **DBM distillation** aims to address this by training a smaller, faster student model to mimic a larger, slower teacher DBM.  This is crucial for practical applications where speed is a significant factor.  Effective distillation techniques need to **capture the complex data transformations** learned by the teacher DBM while maintaining high-quality output.  Key challenges include: (1) handling both conditional and unconditional DBMs, (2) achieving a good balance between speed and accuracy in the student model, and (3) designing a loss function that effectively guides the student model's training. The success of DBM distillation directly impacts the real-world usability of DBMs, opening the door for wider adoption in areas like image editing, super-resolution, and style transfer, if it can achieve sufficient speed improvements without compromising quality. Therefore, research efforts in this area are important for realizing the full potential of DBMs.

#### IBMD Approach
The Inverse Bridge Matching Distillation (IBMD) approach presents a novel distillation technique for accelerating Diffusion Bridge Models (DBMs).  **Its key innovation lies in tackling the inverse bridge matching problem**, offering a universal solution applicable to both conditional and unconditional DBMs.  Unlike previous methods, IBMD effectively distills models into one-step generators, significantly speeding up inference. The method's strength is highlighted by its **data-free distillation**, requiring only corrupted images for training and its ability to **improve the quality of generation** compared to the teacher model in various scenarios.  While the approach demonstrates impressive speedups and improved quality, the computational cost of the distillation process itself remains a potential area for future optimization.

#### Inverse Problem
The core of the inverse problem in this research lies in **reversing the diffusion process** to learn a generator that can effectively create data samples.  Instead of directly training the generator to match the target data distribution, the authors cleverly formulate the problem as an optimization task to find the underlying distribution from which the observed corrupted images originate.  This **inverse approach** avoids explicit reliance on clean data during the training phase, thereby significantly simplifying the training process and making it more practical.  By framing it as an optimization problem, the authors then introduce a tractable solution, offering a novel and efficient distillation technique. This approach is particularly impactful for diffusion bridge models because it addresses the inherent challenge of slow inference often associated with such models.  The inverse problem's solution, therefore, allows for **faster and potentially higher-quality generation** of the desired outputs, presenting a significant advancement in diffusion model applications.

#### Experimental Setup
A robust "Experimental Setup" section in a research paper is crucial for reproducibility and validation.  It should detail the specific datasets used, including their size, preprocessing steps (e.g., normalization, augmentation), and any relevant statistics.  The description of the models employed must include their architectures, hyperparameters, and training procedures.  **Clearly specifying the training process is vital**, including metrics used, optimization algorithms, and the hardware used for training and inference.  **The evaluation metrics chosen must be explicitly defined and justified** in relation to the research question.  Finally,  **a detailed description of the experimental protocols**, including the number of runs, any random seeds, and the handling of randomness, guarantees that others can replicate the study, verifying the findings and promoting the advancement of the field.

#### Future Works
Future research directions stemming from this Inverse Bridge Matching Distillation (IBMD) paper could explore several promising avenues. **Extending IBMD to other diffusion models beyond DBMs** is a key area.  The current work focuses on DBMs, but the underlying principles might generalize to other architectures.  Investigating the **applicability of IBMD to different data modalities** such as audio, time-series, and 3D data would broaden its impact.  Furthermore, a **deeper theoretical understanding of why IBMD improves generation quality** in some cases compared to the teacher model is needed.  This might involve analyzing the relationship between the inverse bridge matching problem and the expressiveness of the distilled model.  **Improving efficiency and scalability** of the IBMD algorithm is crucial for wider adoption. The current method can be computationally expensive, so exploring optimized training strategies or alternative formulations are important. Finally, exploring the **potential for combining IBMD with other acceleration techniques** like improved samplers or score-based methods could lead to even faster and higher-quality diffusion model inference.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.01362/extracted/6174617/images/method_new.png)

> 🔼 Figure 2 illustrates the process of Bridge Matching, a method for constructing a diffusion process between two data distributions.  It shows how an intermediate sample is drawn from a diffusion bridge at a random time point, and the model learns to reconstruct the starting point from this intermediate sample. The figure also illustrates the conditional version, where an additional input is used to improve reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of (Conditional) Bridge Matching with x^0subscript^𝑥0\widehat{x}_{0}over^ start_ARG italic_x end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT reparameterization. The process begins by sampling a pair (x0,xT)subscript𝑥0subscript𝑥𝑇(x_{0},x_{T})( italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ) from the data coupling p⁢(x0,xT)𝑝subscript𝑥0subscript𝑥𝑇p(x_{0},x_{T})italic_p ( italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ). An intermediate sample xtsubscript𝑥𝑡x_{t}italic_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT is then drawn from the diffusion bridge q⁢(xt|x0,xT)𝑞conditionalsubscript𝑥𝑡subscript𝑥0subscript𝑥𝑇q(x_{t}|x_{0},x_{T})italic_q ( italic_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT | italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ) at a random time t∼U⁢[0,T]similar-to𝑡𝑈0𝑇t\sim U[0,T]italic_t ∼ italic_U [ 0 , italic_T ]. The model x^0subscript^𝑥0\widehat{x}_{0}over^ start_ARG italic_x end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT is trained with an MSE loss to reconstruct x0subscript𝑥0x_{0}italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT from xtsubscript𝑥𝑡x_{t}italic_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT. In the conditional setting (dashed red path), x^0subscript^𝑥0\widehat{x}_{0}over^ start_ARG italic_x end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT is also conditioned on xTsubscript𝑥𝑇x_{T}italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT as an additional input, leveraging information about the terminal state to improve reconstruction.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/i2sb-bicubic-extra_compressed.png)

> 🔼 Figure 3 illustrates the Inverse Bridge Matching Distillation (IBMD) method.  The goal is to create a fast, efficient generator that mimics a trained (conditional) Bridge Matching model. This generator, Gθ(z, xT), learns to produce samples from corrupted data p(xT).  The key is defining a new coupling, pθ(x0, xT) = pθ(x0|xT)p(xT), using the generator. The method then aims to train the generator such that the Bridge Matching process using this new coupling yields the same output (x0) as the original, slower, teacher model.  This is achieved by training the bridge model with the new coupling pθ(x0, xT) and then using a novel objective function from Theorem 3.2 to refine the generator Gθ.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of our method Inverse Bridge Matching Distillation (IBMD). The goal is to distill a trained (Conditional) Bridge Matching model into a generator Gθ⁢(z,xT)subscript𝐺𝜃𝑧subscript𝑥𝑇G_{\theta}(z,x_{T})italic_G start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_z , italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ), which learns to produce samples using the corrupted data p⁢(xT)𝑝subscript𝑥𝑇p(x_{T})italic_p ( italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ). Generator Gθ⁢(z,xT)subscript𝐺𝜃𝑧subscript𝑥𝑇G_{\theta}(z,x_{T})italic_G start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_z , italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ) defines the coupling pθ⁢(x0,xT)=pθ⁢(x0|xT)⁢p⁢(xT)subscript𝑝𝜃subscript𝑥0subscript𝑥𝑇subscript𝑝𝜃conditionalsubscript𝑥0subscript𝑥𝑇𝑝subscript𝑥𝑇p_{\theta}(x_{0},x_{T})=p_{\theta}(x_{0}|x_{T})p(x_{T})italic_p start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ) = italic_p start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT | italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ) italic_p ( italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ) and we aim to learn the generator in such way that Bridge Matching with pθ⁢(x0,xT)subscript𝑝𝜃subscript𝑥0subscript𝑥𝑇p_{\theta}(x_{0},x_{T})italic_p start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ( italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT ) produces the same (Conditional) Bridge Matching model x^0ϕ=x^0θsuperscriptsubscript^𝑥0italic-ϕsuperscriptsubscript^𝑥0𝜃\widehat{x}_{0}^{\phi}=\widehat{x}_{0}^{\theta}over^ start_ARG italic_x end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_ϕ end_POSTSUPERSCRIPT = over^ start_ARG italic_x end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_θ end_POSTSUPERSCRIPT. To do so, we learn a bridge model x^0ϕsuperscriptsubscript^𝑥0italic-ϕ\widehat{x}_{0}^{\phi}over^ start_ARG italic_x end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_ϕ end_POSTSUPERSCRIPT using coupling pθsubscript𝑝𝜃p_{\theta}italic_p start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT in the same way as the teacher model was learned. Then, we use our novel objective given in Theorem 3.2 to update the generator model Gθsubscript𝐺𝜃G_{\theta}italic_G start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/i2sb-pool-extra_compressed.png)

> 🔼 This figure displays the results of the Inverse Bridge Matching Distillation (IBMD) method applied to super-resolution.  Specifically, it shows the results of using IBMD to distill a teacher model (trained with 1000 steps) into a student model capable of performing 4x super-resolution with only a single inference step (NFE=1). The images demonstrate examples of input images, outputs from the IBMD-I2SB model (ours), outputs from the teacher model (I2SB), and the ground truth (reference) images. The comparison allows for a visual assessment of the performance of the IBMD method in achieving high-quality super-resolution with significantly reduced computational cost.
> <details>
> <summary>read the caption</summary>
> Figure 4: Uncurated samples for IBMD-I2SB distillation of 4x-super-resolution with bicubic kernel on ImageNet 256×256256256256\times 256256 × 256 images.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/i2sb-jpeg-5-extra_compressed.png)

> 🔼 This figure showcases the results of Inverse Bridge Matching Distillation (IBMD) applied to a 4x super-resolution task using the I2SB model.  The model is specifically trained with a pool kernel and evaluated on 256x256 ImageNet images. The image shows sets of input images, the results obtained using IBMD with only one forward pass (NFE=1), the results from the original I2SB model with 1000 forward passes (NFE=1000), and the ground truth (reference) images. This comparison highlights the significant speedup and comparable image quality achieved by IBMD compared to the original I2SB model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Uncurated samples for IBMD-I2SB distillation of 4x-super-resolution with pool kernel on ImageNet 256×256256256256\times 256256 × 256 images.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/i2sb-jpeg-10-extra_compressed.png)

> 🔼 This figure displays the results of applying Inverse Bridge Matching Distillation (IBMD) to a pre-trained I2SB model for JPEG restoration.  The task is to restore JPEG-compressed images with a quality factor (QF) of 5. The leftmost column shows the original, compressed images. The next three columns present the results of the IBMD model with only one forward pass (NFE=1), the original, pre-trained I2SB model (NFE=1000), and the ground truth (reference) images respectively. This visualization allows for a direct comparison of the restoration quality between the distilled model (IBMD) and the teacher model (I2SB), highlighting the improved efficiency (reduced number of forward diffusion steps) without substantial loss of image quality.
> <details>
> <summary>read the caption</summary>
> Figure 6: Uncurated samples for IBMD-I2SB distillation of Jpeg restoration with QF=5 on ImageNet 256×256256256256\times 256256 × 256 images.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/i2sb-inpaiting-extra_compressed.png)

> 🔼 This figure displays the results of applying Inverse Bridge Matching Distillation (IBMD) to a pre-trained I2SB model (trained on ImageNet 256x256 images).  The task was JPEG restoration with a quality factor (QF) of 10. The figure shows input images, the output of the IBMD model with 1 Noise-Free Expectation (NFE), the output of the original I2SB teacher model (with 1000 NFEs), and a reference image which is the ground truth clean image. This comparison illustrates the effectiveness of IBMD in accelerating inference (1 NFE compared to 1000 NFEs) while maintaining relatively high quality in the generated image. Each row represents a different image.
> <details>
> <summary>read the caption</summary>
> Figure 7: Uncurated samples for IBMD-I2SB distillation of Jpeg restoration with QF=10 on ImageNet 256×256256256256\times 256256 × 256 images.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/new-ddbm-inpaiting-small.png)

> 🔼 This figure displays uncurated samples from the Inverse Bridge Matching Distillation (IBMD) method applied to an I2SB (Image-to-Image Schrödinger Bridge) model. The model was initially trained for image inpainting using 4 noise free steps (NFE).  The figure presents the results of inference using different numbers of NFEs (1, 2, and 4) to demonstrate the impact of reducing the number of inference steps on image quality.  The results are compared to the original I2SB teacher model (1000 NFEs) and the corresponding reference images.  The goal is to show how IBMD can successfully distill the teacher model while significantly speeding up the inference process.
> <details>
> <summary>read the caption</summary>
> Figure 8: Uncurated samples for IBMD-I2SB distillation trained for inpaiting with NFE=4absent4=4= 4 and inferenced with different inference NFE on ImageNet 256×256256256256\times 256256 × 256 images.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/ddbm-diode-extra-small.png)

> 🔼 This figure displays the results of inpainting using the IBMD-DDBM (Inverse Bridge Matching Distillation - Denoising Diffusion Bridge Model) method.  The IBMD-DDBM model was initially trained with 4 noise-free encoding steps (NFE).  The figure shows inpainting results for different numbers of inference steps (NFE) during the testing phase (1, 2, and 4 NFEs) alongside the results from the original teacher model (NFE=500) and the ground truth (reference) images. All images are from the ImageNet dataset with a resolution of 256x256 pixels. This visual comparison allows assessment of the trade-off between speed (lower NFE) and quality of inpainting against the teacher and reference images.
> <details>
> <summary>read the caption</summary>
> Figure 9: Uncurated samples for IBMD-DDBM distillation trained for inpaiting with NFE=4absent4=4= 4 and inferenced with different inference NFE on ImageNet 256×256256256256\times 256256 × 256 images.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/ddbm-diode-extra-test-small.png)

> 🔼 This figure displays the results of the Inverse Bridge Matching Distillation (IBMD) method applied to a Denoising Diffusion Bridge Model (DDBM).  Specifically, it shows uncurated samples generated by IBMD models trained with different numbers of function evaluations (NFEs). Two IBMD models are compared: one trained with 2 NFEs and another with 1 NFE.  These are compared against the corresponding results from the original, teacher DDBM (trained with 500 NFEs) and the reference images.  The images are all from the DIODE-Outdoor dataset (resolution 256x256). The samples generated using the IBMD approach demonstrate the ability of the method to accelerate DDBM inference significantly while maintaining a similar generation quality compared to the teacher model, especially for the model trained with 2 NFEs.
> <details>
> <summary>read the caption</summary>
> Figure 10: Uncurated samples from IBMD-DDBM distillation trained on the DIODE-Outdoor dataset (256×256256256256\times 256256 × 256) with NFE=2absent2=2= 2 and NFE=1absent1=1= 1, inferred using the corresponding NFEs on the training set.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/ddbm-e2h-extra-small.png)

> 🔼 This figure displays uncurated samples generated from the IBMD-DDBM model.  The model was trained on the DIODE-Outdoor dataset, which contains images with a resolution of 256x256 pixels.  Two versions of the model are shown, one trained with 2 Noise-Free Evaluations (NFEs) and another with 1 NFE.  The results demonstrate the model's performance on unseen test data, showcasing its ability to generate realistic and high-quality images from noisy or incomplete inputs, even with a reduced number of NFEs during inference. Each row compares the input image (leftmost column) with the outputs from the 1-NFE and 2-NFE IBMD models, followed by the teacher model and the ground truth reference image.
> <details>
> <summary>read the caption</summary>
> Figure 11: Uncurated samples from IBMD-DDBM distillation trained on the DIODE-Outdoor dataset (256×256256256256\times 256256 × 256) with NFE=2absent2=2= 2 and NFE=1absent1=1= 1, inferred using the corresponding NFEs on the test set.
> </details>



![](https://arxiv.org/html/2502.01362/extracted/6174617/images/ddbm-e2h-extra-test-small.png)

> 🔼 This figure displays the results of the Inverse Bridge Matching Distillation (IBMD) method applied to the Edges to Handbags dataset. The IBMD technique was trained using the Denoising Diffusion Bridge Model (DDBM).  Two versions of the IBMD model are presented: one trained with 2 Noise Free Ensembles (NFE) and another with 1 NFE.  Samples generated by each IBMD model are shown alongside those generated by the original DDBM teacher model (with 500 NFEs) and the corresponding reference images from the dataset. This comparison showcases the ability of the IBMD method to produce comparable results to a much more computationally expensive model, using far fewer NFEs. The images demonstrate different handbag styles with their corresponding outlines.  The results are from the training set.
> <details>
> <summary>read the caption</summary>
> Figure 12: Uncurated samples from IBMD-DDBM distillation trained on the Edges →→\rightarrow→ Handbags dataset (64×64646464\times 6464 × 64) with NFE=2absent2=2= 2 and NFE=1absent1=1= 1, inferred using the corresponding NFEs on the training set.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.9">
<tr class="ltx_tr" id="S4.T1.4.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.1">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.3.1.1.1.m1.1"><semantics id="S4.T1.3.1.1.1.m1.1a"><mo id="S4.T1.3.1.1.1.m1.1.1" xref="S4.T1.3.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.1.1.1.m1.1b"><times id="S4.T1.3.1.1.1.m1.1.1.cmml" xref="S4.T1.3.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.1.1.1.m1.1d">×</annotation></semantics></math> super-resolution (bicubic)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.4.2.2">ImageNet (256 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.4.2.2.m1.1"><semantics id="S4.T1.4.2.2.m1.1a"><mo id="S4.T1.4.2.2.m1.1.1" xref="S4.T1.4.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.2.2.m1.1b"><times id="S4.T1.4.2.2.m1.1.1.cmml" xref="S4.T1.4.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.2.2.m1.1d">×</annotation></semantics></math> 256)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4">
<td class="ltx_td" id="S4.T1.6.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.4.4.1">NFE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.5.3.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.3.1.1.m1.1"><semantics id="S4.T1.5.3.1.1.m1.1a"><mo id="S4.T1.5.3.1.1.m1.1.1" stretchy="false" xref="S4.T1.5.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.3.1.1.m1.1b"><ci id="S4.T1.5.3.1.1.m1.1.1.cmml" xref="S4.T1.5.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.3.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.4.2.1">CA <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.4.2.1.m1.1"><semantics id="S4.T1.6.4.2.1.m1.1a"><mo id="S4.T1.6.4.2.1.m1.1.1" stretchy="false" xref="S4.T1.6.4.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.4.2.1.m1.1b"><ci id="S4.T1.6.4.2.1.m1.1.1.cmml" xref="S4.T1.6.4.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.4.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.4.2.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.8.1">DDRM <cite class="ltx_cite ltx_citemacro_citep">(Kawar et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib12" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.8.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.8.3">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.8.4">63.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.1">DDNM <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib36" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.3">13.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.4">65.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.5">
<td class="ltx_td ltx_align_left" id="S4.T1.7.5.1">
<math alttext="\Pi" class="ltx_Math" display="inline" id="S4.T1.7.5.1.m1.1"><semantics id="S4.T1.7.5.1.m1.1a"><mi id="S4.T1.7.5.1.m1.1.1" mathvariant="normal" xref="S4.T1.7.5.1.m1.1.1.cmml">Π</mi><annotation-xml encoding="MathML-Content" id="S4.T1.7.5.1.m1.1b"><ci id="S4.T1.7.5.1.m1.1.1.cmml" xref="S4.T1.7.5.1.m1.1.1">Π</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.5.1.m1.1c">\Pi</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.5.1.m1.1d">roman_Π</annotation></semantics></math>GDM <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib30" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.3">3.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.4">72.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.10">
<td class="ltx_td ltx_align_left" id="S4.T1.9.10.1">ADM <cite class="ltx_cite ltx_citemacro_citep">(Dhariwal &amp; Nichol, <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib4" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.10.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.10.3">14.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.10.4">66.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.11">
<td class="ltx_td ltx_align_left" id="S4.T1.9.11.1">CDSB <cite class="ltx_cite ltx_citemacro_citep">(Shi et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib25" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.2">50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.3">13.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.11.4">61.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.6">
<td class="ltx_td ltx_align_left" id="S4.T1.8.6.1">I<sup class="ltx_sup" id="S4.T1.8.6.1.1">2</sup>SB <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib16" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.3">2.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.4">70.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.9.7.1">IBMD-I<sup class="ltx_sup" id="S4.T1.9.7.1.1">2</sup>SB (<span class="ltx_text ltx_font_bold" id="S4.T1.9.7.1.2">Ours</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.7.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.7.3"><span class="ltx_text ltx_font_bold" id="S4.T1.9.7.3.1">2.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.9.7.4"><span class="ltx_text ltx_font_bold" id="S4.T1.9.7.4.1">72.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different diffusion models on the task of JPEG image restoration, specifically using a quality factor (QF) of 5.  It shows the Fréchet Inception Distance (FID) and Classifier Accuracy (CA) scores achieved by various methods, including DDRM, IGDM, Palette, CDSB, I2SB, and the proposed IBMD method. The FID score measures the discrepancy between the generated image distribution and the real image distribution, with lower scores being better, while CA measures the accuracy of a classifier in distinguishing between generated and real images, with higher scores being preferable. The number of function evaluations (NFE) needed for inference is also reported, indicating the computational efficiency of each method. I2SB (Liu et al., 2023a) provides baseline results for comparison. The table enables assessing the performance improvements attained by the proposed method in terms of FID, CA, and NFE.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on the image JPEG restoration task with QF=5. Baseline results are taken from I2SB (Liu et al., 2023a).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.10">
<tr class="ltx_tr" id="S4.T2.4.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1">JPEG restoration, QF<math alttext="=5" class="ltx_Math" display="inline" id="S4.T2.3.1.1.1.m1.1"><semantics id="S4.T2.3.1.1.1.m1.1a"><mrow id="S4.T2.3.1.1.1.m1.1.1" xref="S4.T2.3.1.1.1.m1.1.1.cmml"><mi id="S4.T2.3.1.1.1.m1.1.1.2" xref="S4.T2.3.1.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.3.1.1.1.m1.1.1.1" xref="S4.T2.3.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.3.1.1.1.m1.1.1.3" xref="S4.T2.3.1.1.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.1.1.1.m1.1b"><apply id="S4.T2.3.1.1.1.m1.1.1.cmml" xref="S4.T2.3.1.1.1.m1.1.1"><eq id="S4.T2.3.1.1.1.m1.1.1.1.cmml" xref="S4.T2.3.1.1.1.m1.1.1.1"></eq><csymbol cd="latexml" id="S4.T2.3.1.1.1.m1.1.1.2.cmml" xref="S4.T2.3.1.1.1.m1.1.1.2">absent</csymbol><cn id="S4.T2.3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.3.1.1.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.1.1.1.m1.1c">=5</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.1.1.1.m1.1d">= 5</annotation></semantics></math>.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.4.2.2">ImageNet (256 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.4.2.2.m1.1"><semantics id="S4.T2.4.2.2.m1.1a"><mo id="S4.T2.4.2.2.m1.1.1" xref="S4.T2.4.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.2.2.m1.1b"><times id="S4.T2.4.2.2.m1.1.1.cmml" xref="S4.T2.4.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.2.2.m1.1d">×</annotation></semantics></math> 256)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4">
<td class="ltx_td" id="S4.T2.6.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.4.1">NFE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.3.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.3.1.1.m1.1"><semantics id="S4.T2.5.3.1.1.m1.1a"><mo id="S4.T2.5.3.1.1.m1.1.1" stretchy="false" xref="S4.T2.5.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.3.1.1.m1.1b"><ci id="S4.T2.5.3.1.1.m1.1.1.cmml" xref="S4.T2.5.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.3.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.2.1">CA <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.4.2.1.m1.1"><semantics id="S4.T2.6.4.2.1.m1.1a"><mo id="S4.T2.6.4.2.1.m1.1.1" stretchy="false" xref="S4.T2.6.4.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.4.2.1.m1.1b"><ci id="S4.T2.6.4.2.1.m1.1.1.cmml" xref="S4.T2.6.4.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.4.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.4.2.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.10.9.1">DDRM <cite class="ltx_cite ltx_citemacro_citep">(Kawar et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib12" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.9.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.9.3">28.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.9.4">53.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.5">
<td class="ltx_td ltx_align_left" id="S4.T2.7.5.1">
<math alttext="\Pi" class="ltx_Math" display="inline" id="S4.T2.7.5.1.m1.1"><semantics id="S4.T2.7.5.1.m1.1a"><mi id="S4.T2.7.5.1.m1.1.1" mathvariant="normal" xref="S4.T2.7.5.1.m1.1.1.cmml">Π</mi><annotation-xml encoding="MathML-Content" id="S4.T2.7.5.1.m1.1b"><ci id="S4.T2.7.5.1.m1.1.1.cmml" xref="S4.T2.7.5.1.m1.1.1">Π</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.5.1.m1.1c">\Pi</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.5.1.m1.1d">roman_Π</annotation></semantics></math>GDM <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib30" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.5.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.5.3">8.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.5.4">64.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10">
<td class="ltx_td ltx_align_left" id="S4.T2.10.10.1">Palette <cite class="ltx_cite ltx_citemacro_citep">(Saharia et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib24" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.3">8.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.4">64.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.11">
<td class="ltx_td ltx_align_left" id="S4.T2.10.11.1">CDSB <cite class="ltx_cite ltx_citemacro_citep">(Shi et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib25" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.11.2">50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.11.3">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.11.4">45.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.6">
<td class="ltx_td ltx_align_left" id="S4.T2.8.6.1">I<sup class="ltx_sup" id="S4.T2.8.6.1.1">2</sup>SB <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib16" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.6.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.8.6.3.1">4.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.6.4">67.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.7">
<td class="ltx_td ltx_align_left" id="S4.T2.9.7.1">I<sup class="ltx_sup" id="S4.T2.9.7.1.1">2</sup>SB <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib16" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.7.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.7.3">5.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.7.4">67.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.10.8.1">IBMD-I<sup class="ltx_sup" id="S4.T2.10.8.1.1">2</sup>SB (<span class="ltx_text ltx_font_bold" id="S4.T2.10.8.1.2">Ours</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.10.8.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.10.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.8.3.1">5.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.10.8.4">67.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of different models on an image super-resolution task. It shows the Fréchet Inception Distance (FID) scores and Classifier Accuracy (CA) for various methods, including those proposed in the paper.  The number of forward diffusion steps (NFE) required for inference is also indicated. The table highlights the performance improvement achieved by the proposed method (IBMD-I2SB) compared to existing state-of-the-art techniques.  The baseline results are sourced from the I2SB paper (Liu et al., 2023a). This allows for a direct comparison to demonstrate the efficiency gains of the proposed technique.
> <details>
> <summary>read the caption</summary>
> Table 3: Results on the image super-resolution task. Baseline results are taken from I2SB (Liu et al., 2023a).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.9">
<tr class="ltx_tr" id="S4.T3.4.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.3.1.1.1.m1.1"><semantics id="S4.T3.3.1.1.1.m1.1a"><mo id="S4.T3.3.1.1.1.m1.1.1" xref="S4.T3.3.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.1.1.1.m1.1b"><times id="S4.T3.3.1.1.1.m1.1.1.cmml" xref="S4.T3.3.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.1.1.1.m1.1d">×</annotation></semantics></math> super-resolution (pool)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.4.2.2">ImageNet (256 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.4.2.2.m1.1"><semantics id="S4.T3.4.2.2.m1.1a"><mo id="S4.T3.4.2.2.m1.1.1" xref="S4.T3.4.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.2.2.m1.1b"><times id="S4.T3.4.2.2.m1.1.1.cmml" xref="S4.T3.4.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.2.2.m1.1d">×</annotation></semantics></math> 256)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.4">
<td class="ltx_td" id="S4.T3.6.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.6.4.4.1">NFE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.3.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.3.1.1.m1.1"><semantics id="S4.T3.5.3.1.1.m1.1a"><mo id="S4.T3.5.3.1.1.m1.1.1" stretchy="false" xref="S4.T3.5.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.3.1.1.m1.1b"><ci id="S4.T3.5.3.1.1.m1.1.1.cmml" xref="S4.T3.5.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.3.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.4.2.1">CA <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.4.2.1.m1.1"><semantics id="S4.T3.6.4.2.1.m1.1a"><mo id="S4.T3.6.4.2.1.m1.1.1" stretchy="false" xref="S4.T3.6.4.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.4.2.1.m1.1b"><ci id="S4.T3.6.4.2.1.m1.1.1.cmml" xref="S4.T3.6.4.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.4.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.4.2.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.9.8.1">DDRM <cite class="ltx_cite ltx_citemacro_citep">(Kawar et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib12" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.8.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.8.3">14.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.8.4">64.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9">
<td class="ltx_td ltx_align_left" id="S4.T3.9.9.1">DDNM <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib36" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.3">9.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.4">67.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.5">
<td class="ltx_td ltx_align_left" id="S4.T3.7.5.1">
<math alttext="\Pi" class="ltx_Math" display="inline" id="S4.T3.7.5.1.m1.1"><semantics id="S4.T3.7.5.1.m1.1a"><mi id="S4.T3.7.5.1.m1.1.1" mathvariant="normal" xref="S4.T3.7.5.1.m1.1.1.cmml">Π</mi><annotation-xml encoding="MathML-Content" id="S4.T3.7.5.1.m1.1b"><ci id="S4.T3.7.5.1.m1.1.1.cmml" xref="S4.T3.7.5.1.m1.1.1">Π</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.5.1.m1.1c">\Pi</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.5.1.m1.1d">roman_Π</annotation></semantics></math>GDM <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib30" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.3">3.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.4">72.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.10">
<td class="ltx_td ltx_align_left" id="S4.T3.9.10.1">ADM <cite class="ltx_cite ltx_citemacro_citep">(Dhariwal &amp; Nichol, <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib4" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.10.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.10.3">3.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.10.4">73.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.11">
<td class="ltx_td ltx_align_left" id="S4.T3.9.11.1">CDSB <cite class="ltx_cite ltx_citemacro_citep">(Shi et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib25" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.11.2">50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.11.3">13.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.11.4">61.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.6">
<td class="ltx_td ltx_align_left" id="S4.T3.8.6.1">I<sup class="ltx_sup" id="S4.T3.8.6.1.1">2</sup>SB <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib16" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.6.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.6.3">2.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.6.4">71.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.9.7.1">IBMD-I<sup class="ltx_sup" id="S4.T3.9.7.1.1">2</sup>SB (<span class="ltx_text ltx_font_bold" id="S4.T3.9.7.1.2">Ours</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.9.7.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.9.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.9.7.3.1">2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.9.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.9.7.4.1">72.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different diffusion models' performance on the task of JPEG image restoration, specifically using quality factor 10 (QF=10).  It shows the Fréchet Inception Distance (FID) score and Classifier Accuracy (CA) achieved by various models, including  DDRM, IGDM, Palette, CDSB, I2SB, and the proposed IBMD method.  Lower FID indicates better image quality, and higher CA represents better classification accuracy. The Number of Forward Euler Steps (NFE) required for each method is also displayed, reflecting the computational cost. Baseline results are included for comparison, sourced from the I2SB method in a prior publication by Liu et al. (2023a). This helps highlight the effectiveness of the IBMD model in achieving similar quality with significantly reduced computational expense.
> <details>
> <summary>read the caption</summary>
> Table 4: Results on the image JPEG restoration task with QF=10. Baseline results are taken from I2SB (Liu et al., 2023a).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.10">
<tr class="ltx_tr" id="S4.T4.4.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.1">JPEG restoration, QF<math alttext="=10" class="ltx_Math" display="inline" id="S4.T4.3.1.1.1.m1.1"><semantics id="S4.T4.3.1.1.1.m1.1a"><mrow id="S4.T4.3.1.1.1.m1.1.1" xref="S4.T4.3.1.1.1.m1.1.1.cmml"><mi id="S4.T4.3.1.1.1.m1.1.1.2" xref="S4.T4.3.1.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T4.3.1.1.1.m1.1.1.1" xref="S4.T4.3.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T4.3.1.1.1.m1.1.1.3" xref="S4.T4.3.1.1.1.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.3.1.1.1.m1.1b"><apply id="S4.T4.3.1.1.1.m1.1.1.cmml" xref="S4.T4.3.1.1.1.m1.1.1"><eq id="S4.T4.3.1.1.1.m1.1.1.1.cmml" xref="S4.T4.3.1.1.1.m1.1.1.1"></eq><csymbol cd="latexml" id="S4.T4.3.1.1.1.m1.1.1.2.cmml" xref="S4.T4.3.1.1.1.m1.1.1.2">absent</csymbol><cn id="S4.T4.3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.3.1.1.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.1.1.1.m1.1c">=10</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.1.1.1.m1.1d">= 10</annotation></semantics></math>.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.4.2.2">ImageNet (256 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.4.2.2.m1.1"><semantics id="S4.T4.4.2.2.m1.1a"><mo id="S4.T4.4.2.2.m1.1.1" xref="S4.T4.4.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.2.2.m1.1b"><times id="S4.T4.4.2.2.m1.1.1.cmml" xref="S4.T4.4.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.2.2.m1.1d">×</annotation></semantics></math> 256)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.4">
<td class="ltx_td" id="S4.T4.6.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T4.6.4.4.1">NFE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.3.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.5.3.1.1.m1.1"><semantics id="S4.T4.5.3.1.1.m1.1a"><mo id="S4.T4.5.3.1.1.m1.1.1" stretchy="false" xref="S4.T4.5.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.3.1.1.m1.1b"><ci id="S4.T4.5.3.1.1.m1.1.1.cmml" xref="S4.T4.5.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.3.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T4.6.4.2.1">CA <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.6.4.2.1.m1.1"><semantics id="S4.T4.6.4.2.1.m1.1a"><mo id="S4.T4.6.4.2.1.m1.1.1" stretchy="false" xref="S4.T4.6.4.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.4.2.1.m1.1b"><ci id="S4.T4.6.4.2.1.m1.1.1.cmml" xref="S4.T4.6.4.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.4.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.4.2.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.10.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.10.9.1">DDRM <cite class="ltx_cite ltx_citemacro_citep">(Kawar et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib12" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.9.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.9.3">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.9.4">64.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.5">
<td class="ltx_td ltx_align_left" id="S4.T4.7.5.1">
<math alttext="\Pi" class="ltx_Math" display="inline" id="S4.T4.7.5.1.m1.1"><semantics id="S4.T4.7.5.1.m1.1a"><mi id="S4.T4.7.5.1.m1.1.1" mathvariant="normal" xref="S4.T4.7.5.1.m1.1.1.cmml">Π</mi><annotation-xml encoding="MathML-Content" id="S4.T4.7.5.1.m1.1b"><ci id="S4.T4.7.5.1.m1.1.1.cmml" xref="S4.T4.7.5.1.m1.1.1">Π</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.5.1.m1.1c">\Pi</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.5.1.m1.1d">roman_Π</annotation></semantics></math>GDM <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib30" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.3">6.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.4">71.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.10.10">
<td class="ltx_td ltx_align_left" id="S4.T4.10.10.1">Palette <cite class="ltx_cite ltx_citemacro_citep">(Saharia et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib24" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.3">5.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.4">70.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.10.11">
<td class="ltx_td ltx_align_left" id="S4.T4.10.11.1">CDSB <cite class="ltx_cite ltx_citemacro_citep">(Shi et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib25" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.11.2">50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.11.3">18.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.11.4">60.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.6">
<td class="ltx_td ltx_align_left" id="S4.T4.8.6.1">I<sup class="ltx_sup" id="S4.T4.8.6.1.1">2</sup>SB <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib16" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.6.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.6.3"><span class="ltx_text ltx_font_bold" id="S4.T4.8.6.3.1">3.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.6.4">72.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.7">
<td class="ltx_td ltx_align_left" id="S4.T4.9.7.1">I<sup class="ltx_sup" id="S4.T4.9.7.1.1">2</sup>SB <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib16" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.3">4.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.7.4">71.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.10.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.10.8.1">IBMD-I<sup class="ltx_sup" id="S4.T4.10.8.1.1">2</sup>SB (<span class="ltx_text ltx_font_bold" id="S4.T4.10.8.1.2">Ours</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.10.8.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.10.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.10.8.3.1">3.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.10.8.4">72.4</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents results for image-to-image translation tasks using various methods, categorized by the number of forward diffusion steps (NFE).  The table compares different models' performance on two datasets: Edges to Handbags (64x64 resolution) and DIODE-Outdoor (256x256 resolution).  Performance is evaluated using FID (Fréchet Inception Distance) and IS (Inception Score), with lower FID indicating better image quality and higher IS also signifying better image quality. The models are grouped into categories based on their NFE values (>2, 2, 1), allowing for easy comparison within similar inference complexity groups. The best results within each NFE group are highlighted in bold. Baseline results from the CDBM method are included for comparison.  This enables a comprehensive evaluation of different approaches across varying computational costs, showcasing the effectiveness of different methods at generating high-quality image translations. 
> <details>
> <summary>read the caption</summary>
> Table 5: Results on the Image-to-Image Translation Task (Training Sets). Methods are grouped by NFE (>2absent2>2> 2, 2222, 1111), with the best metrics bolded in each group. Baselines results are taken from CDBM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.18">
<tr class="ltx_tr" id="S4.T5.9.3">
<td class="ltx_td ltx_border_t" id="S4.T5.9.3.4"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.3.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.9.3.5.1">NFE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T5.8.2.2">Edges <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T5.7.1.1.m1.1"><semantics id="S4.T5.7.1.1.m1.1a"><mo id="S4.T5.7.1.1.m1.1.1" stretchy="false" xref="S4.T5.7.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T5.7.1.1.m1.1b"><ci id="S4.T5.7.1.1.m1.1.1.cmml" xref="S4.T5.7.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.7.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.7.1.1.m1.1d">→</annotation></semantics></math> Handbags (64 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.8.2.2.m2.1"><semantics id="S4.T5.8.2.2.m2.1a"><mo id="S4.T5.8.2.2.m2.1.1" xref="S4.T5.8.2.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.8.2.2.m2.1b"><times id="S4.T5.8.2.2.m2.1.1.cmml" xref="S4.T5.8.2.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.8.2.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.8.2.2.m2.1d">×</annotation></semantics></math> 64)</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T5.9.3.3">DIODE-Outdoor (256 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.9.3.3.m1.1"><semantics id="S4.T5.9.3.3.m1.1a"><mo id="S4.T5.9.3.3.m1.1.1" xref="S4.T5.9.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.9.3.3.m1.1b"><times id="S4.T5.9.3.3.m1.1.1.cmml" xref="S4.T5.9.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.9.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.9.3.3.m1.1d">×</annotation></semantics></math> 256)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.13.7">
<td class="ltx_td" id="S4.T5.13.7.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.4.1">
<span class="ltx_text ltx_font_bold" id="S4.T5.10.4.1.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.10.4.1.m1.1"><semantics id="S4.T5.10.4.1.m1.1a"><mo id="S4.T5.10.4.1.m1.1.1" stretchy="false" xref="S4.T5.10.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.10.4.1.m1.1b"><ci id="S4.T5.10.4.1.m1.1.1.cmml" xref="S4.T5.10.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.10.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.10.4.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.11.5.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.11.5.2.1">IS</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.11.5.2.m1.1"><semantics id="S4.T5.11.5.2.m1.1a"><mo id="S4.T5.11.5.2.m1.1.1" stretchy="false" xref="S4.T5.11.5.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.11.5.2.m1.1b"><ci id="S4.T5.11.5.2.m1.1.1.cmml" xref="S4.T5.11.5.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.11.5.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.11.5.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.12.6.3">
<span class="ltx_text ltx_font_bold" id="S4.T5.12.6.3.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.12.6.3.m1.1"><semantics id="S4.T5.12.6.3.m1.1a"><mo id="S4.T5.12.6.3.m1.1.1" stretchy="false" xref="S4.T5.12.6.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.12.6.3.m1.1b"><ci id="S4.T5.12.6.3.m1.1.1.cmml" xref="S4.T5.12.6.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.12.6.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.12.6.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.13.7.4">
<span class="ltx_text ltx_font_bold" id="S4.T5.13.7.4.1">IS</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.13.7.4.m1.1"><semantics id="S4.T5.13.7.4.m1.1a"><mo id="S4.T5.13.7.4.m1.1.1" stretchy="false" xref="S4.T5.13.7.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.13.7.4.m1.1b"><ci id="S4.T5.13.7.4.m1.1.1.cmml" xref="S4.T5.13.7.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.13.7.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.13.7.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.14.8.2">DDIB <cite class="ltx_cite ltx_citemacro_citep">(Su et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib31" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.8.1"><math alttext="\geq 40" class="ltx_Math" display="inline" id="S4.T5.14.8.1.m1.1"><semantics id="S4.T5.14.8.1.m1.1a"><mrow id="S4.T5.14.8.1.m1.1.1" xref="S4.T5.14.8.1.m1.1.1.cmml"><mi id="S4.T5.14.8.1.m1.1.1.2" xref="S4.T5.14.8.1.m1.1.1.2.cmml"></mi><mo id="S4.T5.14.8.1.m1.1.1.1" xref="S4.T5.14.8.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T5.14.8.1.m1.1.1.3" xref="S4.T5.14.8.1.m1.1.1.3.cmml">40</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.14.8.1.m1.1b"><apply id="S4.T5.14.8.1.m1.1.1.cmml" xref="S4.T5.14.8.1.m1.1.1"><geq id="S4.T5.14.8.1.m1.1.1.1.cmml" xref="S4.T5.14.8.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T5.14.8.1.m1.1.1.2.cmml" xref="S4.T5.14.8.1.m1.1.1.2">absent</csymbol><cn id="S4.T5.14.8.1.m1.1.1.3.cmml" type="integer" xref="S4.T5.14.8.1.m1.1.1.3">40</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.14.8.1.m1.1c">\geq 40</annotation><annotation encoding="application/x-llamapun" id="S4.T5.14.8.1.m1.1d">≥ 40</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.8.3">186.84</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.14.8.4">2.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.8.5">242.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.8.6">4.22</td>
</tr>
<tr class="ltx_tr" id="S4.T5.15.9">
<td class="ltx_td ltx_align_left" id="S4.T5.15.9.2">SDEdit <cite class="ltx_cite ltx_citemacro_citep">(Meng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib20" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.15.9.1"><math alttext="\geq 40" class="ltx_Math" display="inline" id="S4.T5.15.9.1.m1.1"><semantics id="S4.T5.15.9.1.m1.1a"><mrow id="S4.T5.15.9.1.m1.1.1" xref="S4.T5.15.9.1.m1.1.1.cmml"><mi id="S4.T5.15.9.1.m1.1.1.2" xref="S4.T5.15.9.1.m1.1.1.2.cmml"></mi><mo id="S4.T5.15.9.1.m1.1.1.1" xref="S4.T5.15.9.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T5.15.9.1.m1.1.1.3" xref="S4.T5.15.9.1.m1.1.1.3.cmml">40</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.15.9.1.m1.1b"><apply id="S4.T5.15.9.1.m1.1.1.cmml" xref="S4.T5.15.9.1.m1.1.1"><geq id="S4.T5.15.9.1.m1.1.1.1.cmml" xref="S4.T5.15.9.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T5.15.9.1.m1.1.1.2.cmml" xref="S4.T5.15.9.1.m1.1.1.2">absent</csymbol><cn id="S4.T5.15.9.1.m1.1.1.3.cmml" type="integer" xref="S4.T5.15.9.1.m1.1.1.3">40</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.15.9.1.m1.1c">\geq 40</annotation><annotation encoding="application/x-llamapun" id="S4.T5.15.9.1.m1.1d">≥ 40</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.15.9.3">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.15.9.4">3.58</td>
<td class="ltx_td ltx_align_center" id="S4.T5.15.9.5">31.14</td>
<td class="ltx_td ltx_align_center" id="S4.T5.15.9.6">5.70</td>
</tr>
<tr class="ltx_tr" id="S4.T5.16.10">
<td class="ltx_td ltx_align_left" id="S4.T5.16.10.2">Rectified Flow <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib17" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.16.10.1"><math alttext="\geq 40" class="ltx_Math" display="inline" id="S4.T5.16.10.1.m1.1"><semantics id="S4.T5.16.10.1.m1.1a"><mrow id="S4.T5.16.10.1.m1.1.1" xref="S4.T5.16.10.1.m1.1.1.cmml"><mi id="S4.T5.16.10.1.m1.1.1.2" xref="S4.T5.16.10.1.m1.1.1.2.cmml"></mi><mo id="S4.T5.16.10.1.m1.1.1.1" xref="S4.T5.16.10.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T5.16.10.1.m1.1.1.3" xref="S4.T5.16.10.1.m1.1.1.3.cmml">40</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.16.10.1.m1.1b"><apply id="S4.T5.16.10.1.m1.1.1.cmml" xref="S4.T5.16.10.1.m1.1.1"><geq id="S4.T5.16.10.1.m1.1.1.1.cmml" xref="S4.T5.16.10.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T5.16.10.1.m1.1.1.2.cmml" xref="S4.T5.16.10.1.m1.1.1.2">absent</csymbol><cn id="S4.T5.16.10.1.m1.1.1.3.cmml" type="integer" xref="S4.T5.16.10.1.m1.1.1.3">40</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.16.10.1.m1.1c">\geq 40</annotation><annotation encoding="application/x-llamapun" id="S4.T5.16.10.1.m1.1d">≥ 40</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.16.10.3">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.16.10.4">2.80</td>
<td class="ltx_td ltx_align_center" id="S4.T5.16.10.5">77.18</td>
<td class="ltx_td ltx_align_center" id="S4.T5.16.10.6">5.87</td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.12">
<td class="ltx_td ltx_align_left" id="S4.T5.17.11.1">
<math alttext="\text{I}^{2}" class="ltx_Math" display="inline" id="S4.T5.17.11.1.m1.1"><semantics id="S4.T5.17.11.1.m1.1a"><msup id="S4.T5.17.11.1.m1.1.1" xref="S4.T5.17.11.1.m1.1.1.cmml"><mtext id="S4.T5.17.11.1.m1.1.1.2" xref="S4.T5.17.11.1.m1.1.1.2a.cmml">I</mtext><mn id="S4.T5.17.11.1.m1.1.1.3" xref="S4.T5.17.11.1.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T5.17.11.1.m1.1b"><apply id="S4.T5.17.11.1.m1.1.1.cmml" xref="S4.T5.17.11.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T5.17.11.1.m1.1.1.1.cmml" xref="S4.T5.17.11.1.m1.1.1">superscript</csymbol><ci id="S4.T5.17.11.1.m1.1.1.2a.cmml" xref="S4.T5.17.11.1.m1.1.1.2"><mtext id="S4.T5.17.11.1.m1.1.1.2.cmml" xref="S4.T5.17.11.1.m1.1.1.2">I</mtext></ci><cn id="S4.T5.17.11.1.m1.1.1.3.cmml" type="integer" xref="S4.T5.17.11.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.17.11.1.m1.1c">\text{I}^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.17.11.1.m1.1d">I start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>SB <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib16" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.12.2"><math alttext="\geq 40" class="ltx_Math" display="inline" id="S4.T5.18.12.2.m1.1"><semantics id="S4.T5.18.12.2.m1.1a"><mrow id="S4.T5.18.12.2.m1.1.1" xref="S4.T5.18.12.2.m1.1.1.cmml"><mi id="S4.T5.18.12.2.m1.1.1.2" xref="S4.T5.18.12.2.m1.1.1.2.cmml"></mi><mo id="S4.T5.18.12.2.m1.1.1.1" xref="S4.T5.18.12.2.m1.1.1.1.cmml">≥</mo><mn id="S4.T5.18.12.2.m1.1.1.3" xref="S4.T5.18.12.2.m1.1.1.3.cmml">40</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.18.12.2.m1.1b"><apply id="S4.T5.18.12.2.m1.1.1.cmml" xref="S4.T5.18.12.2.m1.1.1"><geq id="S4.T5.18.12.2.m1.1.1.1.cmml" xref="S4.T5.18.12.2.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T5.18.12.2.m1.1.1.2.cmml" xref="S4.T5.18.12.2.m1.1.1.2">absent</csymbol><cn id="S4.T5.18.12.2.m1.1.1.3.cmml" type="integer" xref="S4.T5.18.12.2.m1.1.1.3">40</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.18.12.2.m1.1c">\geq 40</annotation><annotation encoding="application/x-llamapun" id="S4.T5.18.12.2.m1.1d">≥ 40</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.12.3">7.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.18.12.4">3.40</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.12.5">9.34</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.12.6">5.77</td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.13">
<td class="ltx_td ltx_align_left" id="S4.T5.18.13.1">DBIM <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib41" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.13.2">50</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.13.3">1.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.18.13.4"><span class="ltx_text ltx_font_bold" id="S4.T5.18.13.4.1">3.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.13.5">3.20</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.13.6"><span class="ltx_text ltx_font_bold" id="S4.T5.18.13.6.1">6.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.14">
<td class="ltx_td ltx_align_left" id="S4.T5.18.14.1">DBIM <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib41" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.14.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.14.3"><span class="ltx_text ltx_font_bold" id="S4.T5.18.14.3.1">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.18.14.4"><span class="ltx_text ltx_font_bold" id="S4.T5.18.14.4.1">3.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.14.5"><span class="ltx_text ltx_font_bold" id="S4.T5.18.14.5.1">2.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.14.6">6.06</td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.18.15.1">CBD <cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.18.15.2" rowspan="3"><span class="ltx_text" id="S4.T5.18.15.2.1">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.18.15.3">1.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.18.15.4">3.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.18.15.5">3.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.18.15.6">6.02</td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.16">
<td class="ltx_td ltx_align_left" id="S4.T5.18.16.1">CBT <cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.16.2">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.18.16.3">3.65</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.16.4"><span class="ltx_text ltx_font_bold" id="S4.T5.18.16.4.1">2.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.16.5"><span class="ltx_text ltx_font_bold" id="S4.T5.18.16.5.1">6.06</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.17">
<td class="ltx_td ltx_align_left" id="S4.T5.18.17.1">IBMD-DDBM (<span class="ltx_text ltx_font_bold" id="S4.T5.18.17.1.1">Ours</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.17.2"><span class="ltx_text ltx_font_bold" id="S4.T5.18.17.2.1">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.18.17.3"><span class="ltx_text ltx_font_bold" id="S4.T5.18.17.3.1">3.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.17.4">3.12</td>
<td class="ltx_td ltx_align_center" id="S4.T5.18.17.5">5.92</td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.18.18.1">Pix2Pix <cite class="ltx_cite ltx_citemacro_citep">(Isola et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib11" title="">2017</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.18.18.2" rowspan="2"><span class="ltx_text" id="S4.T5.18.18.2.1">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.18.18.3">74.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.18.18.4"><span class="ltx_text ltx_font_bold" id="S4.T5.18.18.4.1">4.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.18.18.5">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.18.18.6">4.22</td>
</tr>
<tr class="ltx_tr" id="S4.T5.18.19">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T5.18.19.1">IBMD-DDBM (<span class="ltx_text ltx_font_bold" id="S4.T5.18.19.1.1">Ours</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.18.19.2"><span class="ltx_text ltx_font_bold" id="S4.T5.18.19.2.1">1.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.18.19.3">3.66</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.18.19.4"><span class="ltx_text ltx_font_bold" id="S4.T5.18.19.4.1">4.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.18.19.5"><span class="ltx_text ltx_font_bold" id="S4.T5.18.19.5.1">5.89</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents the results of image inpainting experiments.  Several methods are compared, categorized by the number of function evaluations (NFEs) they used.  The methods are grouped into categories based on their NFE count (>4, 4, 2, 1),  allowing for a comparison of performance across different computational budgets. For each group, the best performance in terms of FID (Fréchet Inception Distance) and CA (Classifier Accuracy) is highlighted in bold.  Baseline results from the CDBM (Conditional Bridge Matching) method are included for reference. This provides a comprehensive view of the trade-off between computational cost and inpainting quality for various algorithms.
> <details>
> <summary>read the caption</summary>
> Table 6: Results on the Image Inpainting Task. Methods are grouped by NFE (>4absent4>4> 4, 4444, 2222, 1111), with the best metrics bolded in each group. Baselines results are taken from CDBM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.17">
<tr class="ltx_tr" id="S4.T6.10.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.9.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T6.9.1.1.1">Inpainting, Center (128 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.9.1.1.1.1.m1.1"><semantics id="S4.T6.9.1.1.1.1.m1.1a"><mo id="S4.T6.9.1.1.1.1.m1.1.1" xref="S4.T6.9.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.9.1.1.1.1.m1.1b"><times id="S4.T6.9.1.1.1.1.m1.1.1.cmml" xref="S4.T6.9.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.9.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.9.1.1.1.1.m1.1d">×</annotation></semantics></math> 128)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T6.10.2.2">ImageNet (256 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.10.2.2.m1.1"><semantics id="S4.T6.10.2.2.m1.1a"><mo id="S4.T6.10.2.2.m1.1.1" xref="S4.T6.10.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.10.2.2.m1.1b"><times id="S4.T6.10.2.2.m1.1.1.cmml" xref="S4.T6.10.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.10.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.10.2.2.m1.1d">×</annotation></semantics></math> 256)</td>
</tr>
<tr class="ltx_tr" id="S4.T6.12.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.12.4.3"><span class="ltx_text ltx_font_bold" id="S4.T6.12.4.3.1">NFE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.3.1">
<span class="ltx_text ltx_font_bold" id="S4.T6.11.3.1.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.11.3.1.m1.1"><semantics id="S4.T6.11.3.1.m1.1a"><mo id="S4.T6.11.3.1.m1.1.1" stretchy="false" xref="S4.T6.11.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.11.3.1.m1.1b"><ci id="S4.T6.11.3.1.m1.1.1.cmml" xref="S4.T6.11.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.11.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.11.3.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.12.4.2">
<span class="ltx_text ltx_font_bold" id="S4.T6.12.4.2.1">CA</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.12.4.2.m1.1"><semantics id="S4.T6.12.4.2.m1.1a"><mo id="S4.T6.12.4.2.m1.1.1" stretchy="false" xref="S4.T6.12.4.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.12.4.2.m1.1b"><ci id="S4.T6.12.4.2.m1.1.1.cmml" xref="S4.T6.12.4.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.12.4.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.12.4.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.17.10.1">DDRM <cite class="ltx_cite ltx_citemacro_citep">(Kawar et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib12" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.10.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.10.3">24.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.10.4">62.1</td>
</tr>
<tr class="ltx_tr" id="S4.T6.13.5">
<td class="ltx_td ltx_align_left" id="S4.T6.13.5.1">
<math alttext="\Pi" class="ltx_Math" display="inline" id="S4.T6.13.5.1.m1.1"><semantics id="S4.T6.13.5.1.m1.1a"><mi id="S4.T6.13.5.1.m1.1.1" mathvariant="normal" xref="S4.T6.13.5.1.m1.1.1.cmml">Π</mi><annotation-xml encoding="MathML-Content" id="S4.T6.13.5.1.m1.1b"><ci id="S4.T6.13.5.1.m1.1.1.cmml" xref="S4.T6.13.5.1.m1.1.1">Π</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.13.5.1.m1.1c">\Pi</annotation><annotation encoding="application/x-llamapun" id="S4.T6.13.5.1.m1.1d">roman_Π</annotation></semantics></math>GDM <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib30" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.13.5.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T6.13.5.3">7.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.13.5.4"><span class="ltx_text ltx_font_bold" id="S4.T6.13.5.4.1">72.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.11">
<td class="ltx_td ltx_align_left" id="S4.T6.17.11.1">DDNM <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib35" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.11.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.11.3">15.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.11.4">55.9</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.12">
<td class="ltx_td ltx_align_left" id="S4.T6.17.12.1">Palette <cite class="ltx_cite ltx_citemacro_citep">(Saharia et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib24" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.12.2">1000</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.12.3">6.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.12.4">63.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.14.6">
<td class="ltx_td ltx_align_left" id="S4.T6.14.6.1">I<sup class="ltx_sup" id="S4.T6.14.6.1.1">2</sup>SB <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib16" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.14.6.2">10</td>
<td class="ltx_td ltx_align_center" id="S4.T6.14.6.3">5.4</td>
<td class="ltx_td ltx_align_center" id="S4.T6.14.6.4">65.97</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.13">
<td class="ltx_td ltx_align_left" id="S4.T6.17.13.1">DBIM <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib41" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.13.2">50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.13.3">3.92</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.13.4">72.4</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.14">
<td class="ltx_td ltx_align_left" id="S4.T6.17.14.1">DBIM <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib41" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.14.2">100</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.14.3"><span class="ltx_text ltx_font_bold" id="S4.T6.17.14.3.1">3.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.14.4"><span class="ltx_text ltx_font_bold" id="S4.T6.17.14.4.1">72.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.17.15.1">CBD <cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.15.2" rowspan="4"><span class="ltx_text" id="S4.T6.17.15.2.1">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.15.3">5.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.15.4">69.6</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.16">
<td class="ltx_td ltx_align_left" id="S4.T6.17.16.1">CBT <cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.16.2">4.77</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.16.3">70.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.15.7">
<td class="ltx_td ltx_align_left" id="S4.T6.15.7.1">IBMD-I<sup class="ltx_sup" id="S4.T6.15.7.1.1">2</sup>SB (<span class="ltx_text ltx_font_bold" id="S4.T6.15.7.1.2">Ours</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.15.7.2">5.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.15.7.3">70.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.17">
<td class="ltx_td ltx_align_left" id="S4.T6.17.17.1">IBMD-DDBM (<span class="ltx_text ltx_font_bold" id="S4.T6.17.17.1.1">Ours</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.17.2"><span class="ltx_text ltx_font_bold" id="S4.T6.17.17.2.1">4.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.17.3"><span class="ltx_text ltx_font_bold" id="S4.T6.17.17.3.1">72.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.17.18.1">CBD <cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.18.2" rowspan="4"><span class="ltx_text" id="S4.T6.17.18.2.1">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.18.3">5.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.18.4">69.6</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.19">
<td class="ltx_td ltx_align_left" id="S4.T6.17.19.1">CBT <cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01362v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.19.2">5.34</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.19.3">69.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.16.8">
<td class="ltx_td ltx_align_left" id="S4.T6.16.8.1">IBMD-I<sup class="ltx_sup" id="S4.T6.16.8.1.1">2</sup>SB (<span class="ltx_text ltx_font_bold" id="S4.T6.16.8.1.2">Ours</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.16.8.2">5.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.16.8.3">65.7</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.20">
<td class="ltx_td ltx_align_left" id="S4.T6.17.20.1">IBMD-DDBM (<span class="ltx_text ltx_font_bold" id="S4.T6.17.20.1.1">Ours</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.20.2"><span class="ltx_text ltx_font_bold" id="S4.T6.17.20.2.1">4.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.17.20.3"><span class="ltx_text ltx_font_bold" id="S4.T6.17.20.3.1">72.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.17.9.1">IBMD-I<sup class="ltx_sup" id="S4.T6.17.9.1.1">2</sup>SB (<span class="ltx_text ltx_font_bold" id="S4.T6.17.9.1.2">Ours</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T6.17.9.2" rowspan="2"><span class="ltx_text" id="S4.T6.17.9.2.1">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.9.3">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.17.9.4">65.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.21">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T6.17.21.1">IBMD-DDBM (<span class="ltx_text ltx_font_bold" id="S4.T6.17.21.1.1">Ours</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.17.21.2"><span class="ltx_text ltx_font_bold" id="S4.T6.17.21.2.1">5.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.17.21.3"><span class="ltx_text ltx_font_bold" id="S4.T6.17.21.3.1">70.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 details the experimental setup used in the paper.  It lists the specific configurations for each experiment, making it easy to understand and reproduce the results. For each task, it specifies the dataset used, the teacher model employed, the number of forward diffusion steps (NFE) in the teacher model, the ratio of bridge to student gradient iterations (L/K), the learning rate (LR) used, the number of student gradient updates performed during training, and whether a stochastic pipeline was incorporated. This level of detail ensures reproducibility and allows readers to comprehend the design choices behind the experiments.
> <details>
> <summary>read the caption</summary>
> Table 7: Table entries specify experimental configurations: NFE indicates multistep training (Sec. \wasyparagraph3.5); L𝐿Litalic_L/K𝐾Kitalic_K represents bridge/student gradient iteration ratios (Alg. \wasyparagraph3.4); Grad Updates shows student gradient steps; Noise notes stochastic pipeline incorporation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.15">
<tr class="ltx_tr" id="A2.T7.2.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.2.2.3">Task</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.2.4">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.2.5">Teacher</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.2.6">NFE</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.2.2">
<math alttext="L" class="ltx_Math" display="inline" id="A2.T7.1.1.1.m1.1"><semantics id="A2.T7.1.1.1.m1.1a"><mi id="A2.T7.1.1.1.m1.1.1" xref="A2.T7.1.1.1.m1.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="A2.T7.1.1.1.m1.1b"><ci id="A2.T7.1.1.1.m1.1.1.cmml" xref="A2.T7.1.1.1.m1.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.1.1.1.m1.1c">L</annotation><annotation encoding="application/x-llamapun" id="A2.T7.1.1.1.m1.1d">italic_L</annotation></semantics></math>/<math alttext="K" class="ltx_Math" display="inline" id="A2.T7.2.2.2.m2.1"><semantics id="A2.T7.2.2.2.m2.1a"><mi id="A2.T7.2.2.2.m2.1.1" xref="A2.T7.2.2.2.m2.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="A2.T7.2.2.2.m2.1b"><ci id="A2.T7.2.2.2.m2.1.1.cmml" xref="A2.T7.2.2.2.m2.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.2.2.2.m2.1c">K</annotation><annotation encoding="application/x-llamapun" id="A2.T7.2.2.2.m2.1d">italic_K</annotation></semantics></math> ratio</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.2.7">LR</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.2.8">Grad Updates</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.2.2.9">Noise</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.3.3.1">
<math alttext="4\times" class="ltx_math_unparsed" display="inline" id="A2.T7.3.3.1.m1.1"><semantics id="A2.T7.3.3.1.m1.1a"><mrow id="A2.T7.3.3.1.m1.1b"><mn id="A2.T7.3.3.1.m1.1.1">4</mn><mo id="A2.T7.3.3.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A2.T7.3.3.1.m1.1c">4\times</annotation><annotation encoding="application/x-llamapun" id="A2.T7.3.3.1.m1.1d">4 ×</annotation></semantics></math> super-resolution (bicubic)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.4.4.3">ImageNet</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.4.4.2">I<sup class="ltx_sup" id="A2.T7.4.4.2.1">2</sup>SB</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.4.4.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.4.4.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.4.4.6">5e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.4.4.7">3000</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T7.4.4.8">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T7.6.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="A2.T7.5.5.1">
<math alttext="4\times" class="ltx_math_unparsed" display="inline" id="A2.T7.5.5.1.m1.1"><semantics id="A2.T7.5.5.1.m1.1a"><mrow id="A2.T7.5.5.1.m1.1b"><mn id="A2.T7.5.5.1.m1.1.1">4</mn><mo id="A2.T7.5.5.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="A2.T7.5.5.1.m1.1c">4\times</annotation><annotation encoding="application/x-llamapun" id="A2.T7.5.5.1.m1.1d">4 ×</annotation></semantics></math> super-resolution (pool)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.6.6.3">ImageNet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.6.6.2">I<sup class="ltx_sup" id="A2.T7.6.6.2.1">2</sup>SB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.6.6.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.6.6.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.6.6.6">5e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.6.6.7">3000</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.6.6.8">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="A2.T7.7.7.1">JPEG restoration, QF <math alttext="=5" class="ltx_Math" display="inline" id="A2.T7.7.7.1.m1.1"><semantics id="A2.T7.7.7.1.m1.1a"><mrow id="A2.T7.7.7.1.m1.1.1" xref="A2.T7.7.7.1.m1.1.1.cmml"><mi id="A2.T7.7.7.1.m1.1.1.2" xref="A2.T7.7.7.1.m1.1.1.2.cmml"></mi><mo id="A2.T7.7.7.1.m1.1.1.1" xref="A2.T7.7.7.1.m1.1.1.1.cmml">=</mo><mn id="A2.T7.7.7.1.m1.1.1.3" xref="A2.T7.7.7.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T7.7.7.1.m1.1b"><apply id="A2.T7.7.7.1.m1.1.1.cmml" xref="A2.T7.7.7.1.m1.1.1"><eq id="A2.T7.7.7.1.m1.1.1.1.cmml" xref="A2.T7.7.7.1.m1.1.1.1"></eq><csymbol cd="latexml" id="A2.T7.7.7.1.m1.1.1.2.cmml" xref="A2.T7.7.7.1.m1.1.1.2">absent</csymbol><cn id="A2.T7.7.7.1.m1.1.1.3.cmml" type="integer" xref="A2.T7.7.7.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.7.7.1.m1.1c">=5</annotation><annotation encoding="application/x-llamapun" id="A2.T7.7.7.1.m1.1d">= 5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.8.8.3">ImageNet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.8.8.2">I<sup class="ltx_sup" id="A2.T7.8.8.2.1">2</sup>SB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.8.8.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.8.8.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.8.8.6">5e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.8.8.7">2000</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.8.8.8">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T7.10.10">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="A2.T7.9.9.1">JPEG restoration, QF <math alttext="=10" class="ltx_Math" display="inline" id="A2.T7.9.9.1.m1.1"><semantics id="A2.T7.9.9.1.m1.1a"><mrow id="A2.T7.9.9.1.m1.1.1" xref="A2.T7.9.9.1.m1.1.1.cmml"><mi id="A2.T7.9.9.1.m1.1.1.2" xref="A2.T7.9.9.1.m1.1.1.2.cmml"></mi><mo id="A2.T7.9.9.1.m1.1.1.1" xref="A2.T7.9.9.1.m1.1.1.1.cmml">=</mo><mn id="A2.T7.9.9.1.m1.1.1.3" xref="A2.T7.9.9.1.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T7.9.9.1.m1.1b"><apply id="A2.T7.9.9.1.m1.1.1.cmml" xref="A2.T7.9.9.1.m1.1.1"><eq id="A2.T7.9.9.1.m1.1.1.1.cmml" xref="A2.T7.9.9.1.m1.1.1.1"></eq><csymbol cd="latexml" id="A2.T7.9.9.1.m1.1.1.2.cmml" xref="A2.T7.9.9.1.m1.1.1.2">absent</csymbol><cn id="A2.T7.9.9.1.m1.1.1.3.cmml" type="integer" xref="A2.T7.9.9.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.9.9.1.m1.1c">=10</annotation><annotation encoding="application/x-llamapun" id="A2.T7.9.9.1.m1.1d">= 10</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.10.10.3">ImageNet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.10.10.2">I<sup class="ltx_sup" id="A2.T7.10.10.2.1">2</sup>SB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.10.10.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.10.10.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.10.10.6">5e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.10.10.7">3000</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.10.10.8">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T7.12.12">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="A2.T7.11.11.1">Center-inpainting (<math alttext="128\times 128" class="ltx_Math" display="inline" id="A2.T7.11.11.1.m1.1"><semantics id="A2.T7.11.11.1.m1.1a"><mrow id="A2.T7.11.11.1.m1.1.1" xref="A2.T7.11.11.1.m1.1.1.cmml"><mn id="A2.T7.11.11.1.m1.1.1.2" xref="A2.T7.11.11.1.m1.1.1.2.cmml">128</mn><mo id="A2.T7.11.11.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T7.11.11.1.m1.1.1.1.cmml">×</mo><mn id="A2.T7.11.11.1.m1.1.1.3" xref="A2.T7.11.11.1.m1.1.1.3.cmml">128</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T7.11.11.1.m1.1b"><apply id="A2.T7.11.11.1.m1.1.1.cmml" xref="A2.T7.11.11.1.m1.1.1"><times id="A2.T7.11.11.1.m1.1.1.1.cmml" xref="A2.T7.11.11.1.m1.1.1.1"></times><cn id="A2.T7.11.11.1.m1.1.1.2.cmml" type="integer" xref="A2.T7.11.11.1.m1.1.1.2">128</cn><cn id="A2.T7.11.11.1.m1.1.1.3.cmml" type="integer" xref="A2.T7.11.11.1.m1.1.1.3">128</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.11.11.1.m1.1c">128\times 128</annotation><annotation encoding="application/x-llamapun" id="A2.T7.11.11.1.m1.1d">128 × 128</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.12.12.3">ImageNet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.12.12.2">I<sup class="ltx_sup" id="A2.T7.12.12.2.1">2</sup>SB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.12.12.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.12.12.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.12.12.6">5e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.12.12.7">2000</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.12.12.8">✗</td>
</tr>
<tr class="ltx_tr" id="A2.T7.13.13">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="A2.T7.13.13.2">Sketch to Image</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.13.13.1">Edges <math alttext="\rightarrow" class="ltx_Math" display="inline" id="A2.T7.13.13.1.m1.1"><semantics id="A2.T7.13.13.1.m1.1a"><mo id="A2.T7.13.13.1.m1.1.1" stretchy="false" xref="A2.T7.13.13.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A2.T7.13.13.1.m1.1b"><ci id="A2.T7.13.13.1.m1.1.1.cmml" xref="A2.T7.13.13.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.13.13.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T7.13.13.1.m1.1d">→</annotation></semantics></math> Handbags</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.13.13.3">DDBM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.13.13.4">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.13.13.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.13.13.6">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.13.13.7">300</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.13.13.8">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T7.14.14">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="A2.T7.14.14.2">Sketch to Image</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.14.14.1">Edges <math alttext="\rightarrow" class="ltx_Math" display="inline" id="A2.T7.14.14.1.m1.1"><semantics id="A2.T7.14.14.1.m1.1a"><mo id="A2.T7.14.14.1.m1.1.1" stretchy="false" xref="A2.T7.14.14.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A2.T7.14.14.1.m1.1b"><ci id="A2.T7.14.14.1.m1.1.1.cmml" xref="A2.T7.14.14.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.14.14.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T7.14.14.1.m1.1d">→</annotation></semantics></math> Handbags</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.14.14.3">DDBM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.14.14.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.14.14.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.14.14.6">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.14.14.7">14000</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.14.14.8">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T7.15.16">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="A2.T7.15.16.1">Normal to Image</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.16.2">DIODE-Outdoor</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.16.3">DDBM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.16.4">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.16.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.16.6">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.16.7">500</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.16.8">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T7.15.17">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="A2.T7.15.17.1">Normal to Image</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.17.2">DIODE-Outdoor</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.17.3">DDBM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.17.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.17.5">5:1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.17.6">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.17.7">3700</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.15.17.8">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T7.15.15">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r" id="A2.T7.15.15.1">Center-inpainting (<math alttext="128\times 128" class="ltx_Math" display="inline" id="A2.T7.15.15.1.m1.1"><semantics id="A2.T7.15.15.1.m1.1a"><mrow id="A2.T7.15.15.1.m1.1.1" xref="A2.T7.15.15.1.m1.1.1.cmml"><mn id="A2.T7.15.15.1.m1.1.1.2" xref="A2.T7.15.15.1.m1.1.1.2.cmml">128</mn><mo id="A2.T7.15.15.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T7.15.15.1.m1.1.1.1.cmml">×</mo><mn id="A2.T7.15.15.1.m1.1.1.3" xref="A2.T7.15.15.1.m1.1.1.3.cmml">128</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T7.15.15.1.m1.1b"><apply id="A2.T7.15.15.1.m1.1.1.cmml" xref="A2.T7.15.15.1.m1.1.1"><times id="A2.T7.15.15.1.m1.1.1.1.cmml" xref="A2.T7.15.15.1.m1.1.1.1"></times><cn id="A2.T7.15.15.1.m1.1.1.2.cmml" type="integer" xref="A2.T7.15.15.1.m1.1.1.2">128</cn><cn id="A2.T7.15.15.1.m1.1.1.3.cmml" type="integer" xref="A2.T7.15.15.1.m1.1.1.3">128</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.15.15.1.m1.1c">128\times 128</annotation><annotation encoding="application/x-llamapun" id="A2.T7.15.15.1.m1.1d">128 × 128</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T7.15.15.2">ImageNet</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T7.15.15.3">DDBM</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T7.15.15.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T7.15.15.5">1:1</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T7.15.15.6">3e-6</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T7.15.15.7">3000</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T7.15.15.8">✓</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the datasets used in the experiments of the paper, along with links to their code repositories and the associated licenses.
> <details>
> <summary>read the caption</summary>
> Table 8: The used datasets, codes and their licenses.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.01362/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01362/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}