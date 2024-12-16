---
title: "FireFlow: Fast Inversion of Rectified Flow for Image Semantic Editing"
summary: "FireFlow makes editing images faster and better."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Institute of Automation, Chinese Academy of Sciences",]
showSummary: true
date: 2024-12-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.07517 {{< /keyword >}}
{{< keyword icon="writer" >}} Yingying Deng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.07517" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.07517" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/fireflow-fast-inversion-of-rectified-flow-for" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.07517/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Generating high-quality images quickly is a core challenge in AI**.  ReFlows, an alternative to popular diffusion models, offer faster image generation by using simpler mathematical equations. However, precisely inverting and editing images with ReFlows was slow, hindering their wider use. **This problem limits real-time high-fidelity applications like image editing and latent space manipulation**. Existing methods either sacrificed accuracy or computational resources.



FireFlow tackles this issue by introducing a novel numerical solver for ReFlows. **This innovative solver dramatically speeds up image inversion while improving accuracy**.  It reuses previously calculated data, avoiding redundant calculations. **This allows ReFlow models to invert and edit images in only 8 steps**, achieving a 3x speedup compared to state-of-the-art methods, all without additional training. This breakthrough opens up exciting possibilities for real-time, high-fidelity image editing applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FireFlow offers 3x faster image editing than previous methods using ReFlows. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} FireFlow maintains image details during editing, leading to higher-quality results. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FireFlow is a zero-shot approach, making it easy to use without retraining the underlying generative model. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**Faster and more accurate image editing**. This research introduces FireFlow, a new method for inverting Rectified Flows (ReFlows) used in image generation.  It's vital for researchers exploring image editing, reconstruction, and latent space manipulation as it offers a **more efficient way to edit images while preserving details**, which is a crucial step towards **real-time, high-fidelity image editing applications** and can **influence future development of efficient numerical methods**.

------
#### Visual Insights



![](https://arxiv.org/html/2412.07517/x6.png)

> 🔼 Figure 1 showcases the application of FireFlow for image inversion and editing within 8 steps.  The examples demonstrate semantic image editing and stylizations using prompts while preserving the original image content, covering various modifications like adding or removing content ([+]/[-]), changing visual attributes ([C]), and replacing existing content or gestures ([R]).
> <details>
> <summary>read the caption</summary>
> Figure 1: FireFlow for Image Inversion and Editing in 8 Steps. Our approach achieves outstanding results in semantic image editing and stylization guided by prompts, while maintaining the integrity of the reference content image and avoiding undesired alterations. [+]/[-] means adding or removing contents, [C] indicates changes in visual attributes (style, material, or texture), and [R] denotes content or gesture replacements.
> </details>





{{< table-caption >}}
| Methods | Add-it | RF-Solver | RF-Inv. | Ours |
|---|---|---|---|---| 
| Steps | 30 | 15 | 28 | 8 |
| NFE | 60 | 60 | 56 | 18 |
| Aux. Model | ✓ | w/o | w/o | w/o |
| Local Error | \(O(Δt^2)\) | \(O(Δt^3)\) | \(O(Δt^2)\) | \(O(Δt^3)\) |{{< /table-caption >}}

> 🔼 This table compares training-free inversion and editing methods using FLUX, a ReFlow-based model. It considers factors like the number of steps, function evaluations (NFEs), error order of the ODE solver, and the need for a pre-trained auxiliary model. The comparison highlights the efficiency and effectiveness of the proposed 'FireFlow' method.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of recent training-free inversion and editing methods based on FLUX, including inversion/denoising steps, NFEs (Number of Function Evaluations) for both inversion and editing, local truncation error orders for solving ODE, and the need for a pre-trained auxiliary model for editing. Our approach offers a simple yet effective solution to address the challenges.
> </details>





### In-depth insights


#### Fast ReFlow Inversion
**Fast ReFlow inversion** tackles the challenge of efficiently reversing ReFlows for image editing.  Existing methods struggle with slow speeds or inaccuracies. This new approach proposes a **novel second-order numerical solver**, which reuses intermediate velocity calculations, reducing redundant computations. It achieves a **3x speedup** compared to other methods while maintaining **smaller reconstruction errors**. This efficiency unlocks real-time, high-fidelity inversion, making ReFlow a more practical tool for **semantic image editing and stylization**.

#### Solver for Editing
A **novel solver** for image editing is introduced, enabling **real-time**, **high-fidelity** results.  It deviates from traditional diffusion models by employing a **deterministic** approach, leading to **faster and more efficient transformations**.  The solver's core strength lies in its ability to maintain **second-order precision** while retaining the **computational cost of a first-order solver**. This efficiency stems from reusing **intermediate velocity approximations**, thus minimizing redundant computations.  This approach is particularly well-suited for **ReFlow based** generative models, enhancing their utility in various image editing applications.

#### 8-Step Editing
While the paper doesn't explicitly mention "8-Step Editing" as a heading, its core contribution revolves around **efficient and accurate image editing using Rectified Flows (ReFlows) within a few steps**.  The proposed FireFlow method achieves **second-order precision** for ReFlow inversion, similar to more computationally expensive methods, but at the **cost of a first-order solver**, making it significantly faster. This is achieved by cleverly reusing intermediate velocity approximations, which reduces redundant calculations. Consequently, FireFlow enables **high-fidelity image editing in just 8 steps**, a remarkable improvement over existing techniques.  This efficiency is crucial for real-time applications and resource-constrained environments. Furthermore, FireFlow demonstrates **superior reconstruction quality** and edit fidelity compared to diffusion-based and other ReFlow methods, as shown through qualitative and quantitative evaluations. This advancement unlocks the potential of ReFlows for broader adoption in image editing tasks.

#### ReFlow vs. Diffusion
**ReFlow models**, using ODEs, offer a compelling alternative to **diffusion models**, which rely on SDEs, for image editing. ReFlows, exemplified by FLUX, achieve **competitive generative performance** and particularly excel in **fast sampling**.  However, efficiently inverting these models for editing remains a challenge. Existing ReFlow inversion techniques often compromise accuracy for speed or incur high computational costs. This highlights a key difference: while diffusion models have well-established inversion methods, ReFlow inversion requires specialized solvers.  The core trade-off lies in **balancing speed and accuracy during inversion**, with ReFlows potentially offering faster generation but requiring careful solver design for accurate reconstruction. This suggests that the choice between ReFlow and diffusion depends on the specific application, prioritizing either **generation speed or ease of inversion**.

#### Editing Limits
While **FireFlow excels in many image editing tasks**, it **struggles with object color changes and uncommon scenarios**.  For instance, altering a cat's color or editing images with obscured subjects yields subpar results.  Complex prompts also pose a challenge. This limitation stems from the editing strategy's reliance on replacing "V" features in the self-attention module. While supplementing "K" features improves results, it compromises background preservation. This highlights the need for more robust editing approaches that better handle these challenges.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.07517/x7.png)

> 🔼 This figure presents a comparison of different numerical solvers for 2-Rectified Flow on a 2D synthetic dataset. The dataset consists of two distributions: a source distribution (orange) and a target distribution (green), both parameterized as Gaussian mixture models.  The Euler Method, Midpoint Method, and the proposed method are compared, all using 20 NFEs (Number of Function Evaluations). The trajectories of samples during the transformation are visualized. The purpose is to demonstrate that the proposed method generates samples that better align with the target distribution in terms of density and structure, and the trajectories are straighter, indicating closer adherence to the ideal linear motion.
> <details>
> <summary>read the caption</summary>
> (a) Euler Method (NFE=20NFE20\text{NFE}=20NFE = 20)
> </details>



![](https://arxiv.org/html/2412.07517/x8.png)

> 🔼 Figure 2(b) depicts the behavior of a 2D Rectified Flow model when using the standard midpoint method for numerical integration. The midpoint method enhances accuracy over simpler first-order methods by evaluating the flow's velocity at the midpoint of each time step. The visualization demonstrates the trajectories of samples as they transition between two distributions. Orange represents the source distribution, green the target, and blue the flow’s estimate after transformation. Notably, the trajectories exhibit a degree of curvature, reflecting the second-order nature of the midpoint method. The NFE = 20 specifies that the velocity function was evaluated 20 times during the sampling process, influencing both the computational cost and accuracy of the result.
> <details>
> <summary>read the caption</summary>
> (b) Midpoint Method (NFE=20NFE20\text{NFE}=20NFE = 20)
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/academic_plot_blue.png)

> 🔼 This subfigure shows the results on a 2D synthetic dataset using the proposed FireFlow approach with NFE=20. The proposed approach generates samples that better align with the target distribution compared to Euler Method and Midpoint Method, both visually and in terms of density and structure. The trajectories of the samples generated by FireFlow are straighter, closely adhering to the ideal linear motion principle.
> <details>
> <summary>read the caption</summary>
> (c) Ours (NFE=20NFE20\text{NFE}=20NFE = 20)
> </details>



![](https://arxiv.org/html/2412.07517/x9.png)

> 🔼 This figure visualizes the results of applying three different numerical solvers (Euler, Midpoint, and the proposed method) to a 2D synthetic dataset using 2-Rectified Flow. The goal is to transform samples from a source distribution (orange) to a target distribution (green), both parameterized as Gaussian mixture models.  The figure demonstrates that the proposed method achieves a better match in density and structure with the target distribution, and generates straighter trajectories, indicating closer adherence to the ideal of linear motion, all while using the same number of function evaluations (NFE) as the Euler method and fewer NFEs than the midpoint method.
> <details>
> <summary>read the caption</summary>
> Figure 2: Results on 2D synthetic dataset. We evaluate the performance of 2-Rectified Flow using the Euler solver, midpoint solver, and our proposed approach on a 2D synthetic dataset. The source distribution π0subscript𝜋0\pi_{0}italic_π start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT (orange) and the target distribution π1subscript𝜋1\pi_{1}italic_π start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT (green) are parameterized as Gaussian mixture models. For the Euler method, the number of sampling steps is set to N=20𝑁20N=20italic_N = 20, corresponding to an NFE of 20. Our approach generates samples that align more closely with the target distribution, achieving a better match in density and structure. Additionally, the trajectories of the samples exhibit greater straightness, adhering closely to the ideal of linear motion.
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_src/000000000005.jpg)

> 🔼 This subfigure presents an analysis of the approximation error in velocity (represented as ||v_hat - v||) during the inversion and reconstruction process with 10 steps. The graph showcases how this error changes with respect to the inversion and denoising steps. The value of delta_t is also displayed for reference, allowing for a comparison between the approximation error and the step size used in the numerical integration.
> <details>
> <summary>read the caption</summary>
> (a) Inversion and Reconstruction with Step=10
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_fireflow/000000000005.jpg)

> 🔼 This subfigure shows the relationship between the approximation error in velocity and the number of inversion (left) and denoising (right) steps with 20 steps settings. The x-axis represents the steps, while the y-axis shows the magnitude of the error. Notably, the error magnitude remains relatively stable and under control. This figure helps to confirm the robustness of the proposed velocity approximation method during the inversion and reconstruction processes.
> <details>
> <summary>read the caption</summary>
> (b) Inversion and Reconstruction with Step=20
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_src/000000000014.jpg)

> 🔼 This figure illustrates the approximation error in velocity (the difference between the approximated velocity and the true velocity) during both the inversion and denoising steps of a rectified flow model. The error is plotted against the step number, and the time step size (Δt) is included as a reference. The left subfigures show the error during inversion (mapping from image to noise), while the right subfigures show the error during denoising/reconstruction (mapping from noise back to image).  The purpose is to demonstrate that the approximation error is well-controlled and scales proportionally with the time step, supporting the theoretical analysis.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the approximation error in velocity (‖v^θ−vθ‖normsubscript^𝑣𝜃subscript𝑣𝜃\|\hat{v}_{\theta}-v_{\theta}\|∥ over^ start_ARG italic_v end_ARG start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT - italic_v start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT ∥) as it evolves with inversion steps (left subfigures) and denoising steps (right subfigures), with Δ⁢tΔ𝑡\Delta troman_Δ italic_t included as a reference.
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_fireflow/000000000014.jpg)

> 🔼 This figure compares the reconstruction error of different ReFlow inversion methods as a function of the number of Neural Function Evaluations (NFEs). The plot shows that the proposed method achieves significantly lower reconstruction errors compared to both the first-order vanilla ReFlow inversion and the second-order RF-Solver.  Furthermore, the proposed method converges much faster to the minimal reconstruction error requiring fewer NFE for a given error tolerance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Image reconstruction errors versus denoising NFE: Our approach, compared to the first-order vanilla ReFlow inversion and second-order RF-solver, achieves lower reconstruction errors and demonstrates faster convergence with respect to NFE.
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_src/000000000025.jpg)

> 🔼 This figure presents a qualitative comparison of image reconstruction results using different ReFlow-based methods with the FLUX model. The first column displays the original source image and its corresponding text prompt.  Subsequent columns showcase the reconstructed images generated by Vanilla ReFlow, RF-Inversion, RF-Solver, and our proposed FireFlow method. The last row provides difference images (pixel-wise variations) between the source and reconstructed images for each method, highlighting the reconstruction fidelity.  The comparison demonstrates our method's superior reconstruction quality and faster convergence compared to the baselines.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative results of image reconstruction. Our approach achieves faster convergence and superior reconstruction quality compared to baseline ReFlow methods utilizing the FLUX model. Difference images showing the pixel-wise variations between the source image and the reconstructed images are also provided.
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_fireflow/000000000025.jpg)

> 🔼 This figure presents a qualitative comparison of our proposed FireFlow method with other state-of-the-art image editing techniques.  Examples are shown for several different input images and editing prompts, and the results of each method are displayed side-by-side for comparison. The baseline methods include both diffusion-based methods (Prompt-to-Prompt, Pix2Pix-Zero, MasaCtrl, Plug-and-Play, PnP-Inv, and DiffEdit) and ReFlow-based methods (RF-Inversion and RF-Solver).
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison with State-of-the-art editing methods.
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_src/000000000005.jpg)

> 🔼 This figure visualizes the convergence speed during image reconstruction across different numerical solvers using a fixed random seed. The x-axis represents the Number of Function Evaluations (NFEs), which serves as a proxy for computational cost. The y-axis represents the Root Mean Square Error (RMSE) between the reconstructed image and the original image. Lower RMSE values indicate better reconstruction quality. Three solvers are compared: first-order 'Vanilla ReFlow,' the proposed second-order method ('Ours'), and another second-order method 'RF-Solver.' The results demonstrate that the proposed method converges faster to a lower RMSE than the other methods, indicating more accurate and efficient image reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of the convergence rate of different order inversion and reconstruction method. With 60 NFE, our approach still enjoys the lowest reconstruction error and the fast convergence speed.
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_fireflow_v2/000000000005.jpg)

> 🔼 This figure presents an ablation study showcasing the impact of varying the number of denoising steps during image editing with FireFlow.  A source image of a cake is edited to include cherries on top. Results for 2, 4, 6, 8, 10, and 12 steps are visualized. The study demonstrates that while fewer steps (e.g., 2) hinder effective prompt incorporation, increasing the steps progressively enhances editing performance.  A point of diminishing returns is observed, with 8 steps offering comparable results to higher step counts, indicating sufficient prompt integration is achieved at this point.
> <details>
> <summary>read the caption</summary>
> Figure 8: Ablation Study on the Number of Editing Steps.
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_src/000000000014.jpg)

> 🔼 The original image before any edits or transformations are applied, serving as the starting point for subsequent steps in the image manipulation process.  It depicts a cat sitting on a wall.
> <details>
> <summary>read the caption</summary>
> (a) Source Image
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_fireflow_v2/000000000014.jpg)

> 🔼 Edited Image: An edited image of the original cat where it becomes black.
> <details>
> <summary>read the caption</summary>
> (b) Black Cat
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_src/000000000025.jpg)

> 🔼 An example image from the PIE-Bench dataset in its original state. The girl has brown hair and a neutral expression.  This serves as the 'before' image for demonstrating semantic editing using ReFlow and FireFlow.  The goal of editing would be to change aspects of the image according to a text prompt while minimizing distortion in non-edited regions.
> <details>
> <summary>read the caption</summary>
> (c) Source Image
> </details>



![](https://arxiv.org/html/2412.07517/extracted/6059042/fireflow/fig/pie_fireflow_v2/000000000025.jpg)

> 🔼 The figure shows the result of applying the 'raising hands' edit to an image of a man in a black shirt using FireFlow. The original image features the man with his arms at his sides, while the edited image shows him with both arms raised above his head.
> <details>
> <summary>read the caption</summary>
> (d) Raising Hands
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
|                                                                    |
| :------------------------------------------------------------------ |
| Tewel et al. (2024) for Add-it, Wang et al. (2024) for RF-Solver, Rout et al. (2024) for RF-Inv. |{{< /table-caption >}}
> 🔼 This table compares three different Rectified Flow models using image generation metrics. The metrics include the number of function evaluations, Fréchet Inception Distance (FID), and CLIP Score. It appears in the paper to show that the proposed model can generate high-quality images with few function evaluations.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitive results on Text-to-Image Generation.
> </details>

{{< table-caption >}}
| Methods | FLUX-dev | RF-Solver | Ours |
|---|---|---|---| 
| Steps | 20 | 10 | 10 |
| NFE (↓) | 20 | 20 | 11 |
| FID (↓) | 26.77 | 25.93 | **25.16** |
| CLIP Score (↑) | **31.44** | 31.35 | 31.42 |
| ODE Solver | 1st-order | 2nd-order | 2nd-order |{{< /table-caption >}}
> 🔼 This table presents quantitative results for image inversion and reconstruction using the FLUX-dev model, comparing different methods based on varying steps and NFE (Number of Function Evaluations). Metrics used for evaluation include LPIPS, SSIM, and PSNR.  The table showcases the effectiveness of FireFlow. It demonstrates that the FireFlow can outperform baseline models in reconstruction quality while using fewer steps, hence offering a better speed and computation efficiency.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results for inversion and reconstruction using the FLUX-dev model (excluding the DDIM baseline). NFE includes both inversion and reconstruction function evaluations. Steps or computational costs are kept comparable across comparisons. Reconstruction is performed without leveraging latent features from the inversion process.
> </details>

{{< table-caption >}}
|         | Steps | NFE↓ | LPIPS↓ | SSIM↑ | PSNR↑ |
| :------ | :---: | :---: | :----: | :---: | :---: |
| DDIM-Inv. |   50  |  100  | 0.2342 | 0.5872 | 19.72 |
| RF-Solver |   30  |  120  | 0.2926 | 0.7078 | 20.05 |
| ReFlow-Inv. |   30  |   60  | 0.5044 | 0.5632 | 16.57 |
| Ours     |   30  |   62  | **0.1579** | **0.8160** | **23.87** |
| RF-Solver |    5  |   20  | 0.5010 | 0.5232 | 14.72 |
| ReFlow-Inv. |    9  |   18  | 0.8145 | 0.3828 | 15.29 |
| Ours     |    8  |   18  | **0.4111** | **0.5945** | **16.01** |{{< /table-caption >}}
> 🔼 Comparison of our approach with state-of-the-art image editing methods on PIE-Bench dataset, evaluating structure preservation, background preservation, CLIP similarity, inference steps, and number of function evaluations (NFE).
> <details>
> <summary>read the caption</summary>
> Table 4: Compare our approach with other editing methods on PIE-Bench.
> </details>

{{< table-caption >}}
| Method | Model | Structure ↓ | Background Preservation | CLIP Similarity ↑ | Steps | NFE ↓ |
|---|---|---|---|---|---|---| 
| **Prompt2Prompt** (Hertz et al., 2022) | Diffusion | 0.0694 | PSNR ↑: 17.87 <br> SSIM ↑: 0.7114 | Whole: 25.01 <br> Edited: 22.44 | 50 | 100 |
| **Pix2Pix-Zero** (Parmar et al., 2023) | Diffusion | 0.0617 | PSNR ↑: 20.44 <br> SSIM ↑: 0.7467 | Whole: 22.80 <br> Edited: 20.54 | 50 | 100 |
| **MasaCtrl** (Cao et al., 2023) | Diffusion | 0.0284 | PSNR ↑: 22.17 <br> SSIM ↑: 0.7967 | Whole: 23.96 <br> Edited: 21.16 | 50 | 100 |
| **PnP** (Tumanyan et al., 2023b) | Diffusion | 0.0282 | PSNR ↑: 22.28 <br> SSIM ↑: 0.7905 | Whole: 25.41 <br> Edited: 22.55 | 50 | 100 |
| **PnP-Inv.** (Ju et al., 2024) | Diffusion | **0.0243** | PSNR ↑: 22.46 <br> SSIM ↑: 0.7968 | Whole: 25.41 <br> Edited: 22.62 | 50 | 100 |
| **RF-Inversion** (Rout et al., 2024) | ReFlow | 0.0406 | PSNR ↑: 20.82 <br> SSIM ↑: 0.7192 | Whole: 25.20 <br> Edited: 22.11 | 28 | 56 |
| **RF-Solver** (Wang et al., 2024) | ReFlow | 0.0311 | PSNR ↑: 22.90 <br> SSIM ↑: 0.8190 | Whole: **26.00** <br> Edited: **22.88** | 15 | 60 |
| Ours | ReFlow | 0.0283 | PSNR ↑: **23.28** <br> SSIM ↑: **0.8282** | Whole: 25.98 <br> Edited: **22.94** | 15 | 32 |
| Ours | ReFlow | **0.0271** | PSNR ↑: **23.03** <br> SSIM ↑: **0.8249** | Whole: **26.02** <br> Edited: 22.81 | **8** | **18** |{{< /table-caption >}}
> 🔼 This table presents the per-image inference time for different ReFlow inversion-based editing methods, including Vanilla ReFlow, RF-Inversion, RF-Solver, and the proposed method (Ours), measured on an RTX 3090.  The baseline is Vanilla ReFlow with 28 steps for both inversion and denoising. The table compares these methods at two different image resolutions (512x512 and 1024x1024) and shows the speedup achieved by each method compared to the baseline.
> <details>
> <summary>read the caption</summary>
> Table 5: Per-image inference time for ReFlow inversion-based editing measured on an RTX 3090. The baseline is a vanilla ReFlow model utilizing 28 steps for both inversion and denoising.
> </details>

{{< table-caption >}}
|  | Resolution | Time Cost | Speedup | 
|---|---|---|---| 
| Vanilla ReFlow | 512x512 | 23.76s | 1.0x | 
| RF-Inversion | 512x512 | 23.36s | 1.02x | 
| RF-Solver | 512x512 | 25.31s | 0.94x | 
| Ours | 512x512 | **7.70s** | **3.09x** | 
| Vanilla ReFlow | 1024x1024 | 72.10s | 1.0x | 
| RF-Inversion | 1024x1024 | 71.35s | 1.01x | 
| RF-Solver | 1024x1024 | 78.80s | 0.92x | 
| Ours | 1024x1024 | **24.52s** | **2.94x** |{{< /table-caption >}}
> 🔼 This table presents a comparison of various image editing methods evaluated on the PIE Bench dataset.  The methods differ in their guidance ratio settings within the FLUX model during the denoising phase of image generation.  Specifically, it examines the impact of adding query (Q), key (K), and value (V) features from the inversion process to the self-attention mechanism during the denoising process. The table reports metrics for structure preservation, background preservation, and CLIP similarity, alongside the number of steps and NFEs (Number of Function Evaluations) used during the editing process. This allows for a comparison of the editing performance and computational cost of the different guidance strategies.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison on different editing methods. Results on PIE Bench are reported. Guidance terms indicate the guidance ratio settings used in the FLUX model during the denoising process.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.07517/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07517/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}