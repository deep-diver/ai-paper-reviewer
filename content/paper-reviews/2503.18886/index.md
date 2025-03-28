---
title: "CFG-Zero*: Improved Classifier-Free Guidance for Flow Matching Models"
summary: "CFG-Zero*: A better Classifier-Free Guidance to improve the image quality and text alignment in Flow Matching models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 S-Lab, Nanyang Technological University",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18886 {{< /keyword >}}
{{< keyword icon="writer" >}} Weichen Fan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18886" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18886" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18886/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Classifier-Free Guidance (CFG) is a widely used technique in diffusion and flow models to enhance image quality and controllability. However, it has limitations in flow matching models, especially during early training stages when flow estimation is inaccurate. In such cases, CFG can lead samples toward incorrect trajectories, affecting the quality of generated images. The paper hypothesizes that the mismatch arises from dataset limitations and learning limitations.



To address these issues, the paper introduces CFG-Zero*, which includes (a) an optimized scale, where a scalar is optimized to correct for inaccuracies in the estimated velocity; and (b) zero-init, which involves zeroing out the first few steps of the ODE solver. Through experiments in text-to-image and video generation, CFG-Zero* is proven to outperform CFG. The study also provides insights into error sources in flow-matching models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CFG can cause issues for flow estimation in early stages of training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Optimized scale and zero-init can improve the CFG for flow matching models, forming CFG-Zero*. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CFG-Zero* method shows competitive performance in text-to-image and video generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **improves flow matching models** which are now becoming more common in text-to-image generation. By providing a more effective and stable guidance method, this research can **push the boundaries of generative modeling** and its applications, also providing a clearer picture of the issues with current methods.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18886/x2.png)

> 🔼 Figure 1 shows a comparison of images generated from the text prompt: 'A dense winter forest with snow-covered branches, the golden light of dawn filtering through the trees, and a lone fox leaving delicate paw prints in the fresh snow.'  The comparison highlights the difference in image quality and detail between using the standard Classifier-Free Guidance (CFG) method and the improved CFG-Zero* method proposed in the paper.  The images were generated using Stable Diffusion 3.5 (SD3.5).  The CFG-Zero* method demonstrates improved image fidelity and adherence to the prompt's description.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison for the prompt: “A dense winter forest with snow-covered branches, the golden light of dawn filtering through the trees, and a lone fox leaving delicate paw prints in the fresh snow.” Images generated using SD3.5 [5] with CFG and CFG-Zero⋆ (Ours).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F3.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.F3.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="174" id="S4.F3.1.1.1.g1" src="x3.png" width="415"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="314" id="S4.F3.2.2.2.g1" src="x4.png" width="415"/></td>
</tr>
<tr class="ltx_tr" id="S4.F3.2.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.2.3.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">(a)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.2.3.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">(b)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an experiment evaluating the impact of the proposed CFG-Zero* method on the ImageNet-256 dataset.  The experiment uses a class-conditional flow model and measures the model's performance at various training epochs using metrics such as Inception Score (IS), Fréchet Inception Distance (FID), and others. It reveals a 'turning point' at 160 epochs, where the benefits of the zero-initialization technique diminish as the model's training progresses and improves.  The study's finding suggests that the limitations of the initial sampling process are persistent, particularly in high-dimensional models, emphasizing the need for CFG-Zero* particularly in early phases of training.
> <details>
> <summary>read the caption</summary>
> Table 1: Validation on ImageNet-256.  We evaluate a model at different training stages and observe a turning point at 160 epochs, where zero-init results in poorer performance when the model converges. This experiment validates that high-dimensional models also suffer from inaccuracies in initial sampling.
> </details>





### In-depth insights


#### CFG Error Source
Considering 'CFG Error Source,' a likely issue stems from inaccuracies when **velocity is underfitted.** CFG relies on conditional/unconditional prediction differences; if the learned velocity poorly captures data distribution, CFG can misguide samples. Early training stages are particularly vulnerable, with initial velocity estimates causing deviations from optimal trajectories. **Dataset limitations or learning inadequacies contribute**. Mismatch between user text prompt interpretation and the dataset, alongside imperfect learning, exacerbate this. Effectively, CFG amplifies initial errors, steering generation awry. Improved techniques must address these sources of error to enhance guidance.

#### Optimized Scaling
Optimized scaling is a crucial aspect of enhancing the performance of models, particularly in scenarios where the learned velocity may be underfitted or inaccurate. By introducing a learnable scalar parameter, the model can **dynamically adjust the influence of the unconditional and conditional predictions**, allowing for a more precise approximation of the ground-truth flow. This approach aims to mitigate the mismatch between the intended conditional distribution and the learned conditional velocity, which can arise due to dataset limitations or learning constraints. Optimizing this scale involves minimizing the discrepancy between the guided velocity field and the ideal flow. By projecting the conditional velocity onto the unconditional velocity, the optimized scale can effectively **correct for inaccuracies in the estimated velocity**, leading to improved sample quality and more accurate guidance during the generation process.

#### Zero-Init Improves
The 'Zero-Init Improves' concept suggests a novel way to refine generative models, specifically in flow matching. It likely involves initializing a portion of the generative process, perhaps the initial steps of ODE solvers, with zero values. This could act as a **regularization technique**, preventing early, inaccurate velocity estimations from steering the generation process down incorrect paths. By effectively skipping the problematic initial phase, the model can avoid accumulating errors arising from an underfitted state. Zero-init might be particularly beneficial in the **early stages of training**, where velocity predictions are less reliable, promoting stability. Later stages may see diminishing benefits as model accuracy increases, suggesting an adaptive application of zero-init.

#### Quality & Alignment
In generative models, **quality** pertains to the visual fidelity and coherence of generated outputs. High-quality images exhibit sharp details, realistic textures, and structural integrity, minimizing artifacts and distortions. **Alignment**, on the other hand, refers to the consistency between the generated output and the intended semantics, especially in conditional generation tasks like text-to-image synthesis. Strong alignment means that the generated image accurately reflects the input text prompt, capturing its key elements and relationships. Achieving both high quality and strong alignment is crucial for the practical utility of generative models, ensuring outputs are not only visually pleasing but also semantically meaningful. Methods like classifier-free guidance (CFG) aim to improve this balance, but can introduce artifacts if not carefully tuned. The need for balancing is especially important for Flow Matching methods.

#### CFG-Zero* Works
While the document doesn't explicitly have a section titled "CFG-Zero* Works," the core innovation revolves around enhancing Classifier-Free Guidance (CFG) for flow-matching models. The research tackles the issue of **inaccurate velocity estimation** during the early stages of training. The success stems from two key contributions: (1) **optimized scale**, dynamically adjusting the unconditional output to compensate for inaccuracies, acting like a learned correction, and (2) **zero-init**, strategically zeroing out the initial steps of the ODE solver, effectively bypassing flawed early velocity predictions. The study uses analysis of gaussian mixtures for data distribution and establishes how the traditional CFG is not optimal. This insight led to the development of a CFG-Zero*. The resulting approach shows how high-fidelity outputs are generated using CFG-Zero*.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18886/x5.png)

> 🔼 This figure compares the results of image generation with and without classifier-free guidance (CFG).  The prompt used was: “A mysterious underwater city with bioluminescent corals and towering glass domes.” The image on the left shows a sample generated using standard conditional generation, lacking the detail and coherence found in the image on the right, which is generated using CFG. CFG helps align the generated image more closely with the user's specified prompt by guiding the sampling process towards a more appropriate output based on the user's condition. The difference showcases CFG's effectiveness in enhancing image quality and aligning generated images with given text prompts.
> <details>
> <summary>read the caption</summary>
> Figure 2: (Left) Conditional generation. (Right) CFG generation. (Prompt: “A mysterious underwater city with bioluminescent corals and towering glass domes.”)
> </details>



![](https://arxiv.org/html/2503.18886/x6.png)

> 🔼 Figure 3 presents a comparative analysis of the performance of a flow matching model trained on a 2D Gaussian mixture.  The left panel displays the Jensen-Shannon (JS) divergence between the model's generated sample distribution and the true target distribution over training epochs. This metric quantifies the difference between the model's output and the desired outcome.  The right panel shows the Euclidean norm (magnitude) of the difference between the model's initial velocity estimate (v~0θ) and the true optimal velocity (v~0∗) for each epoch. This error norm highlights how accurately the model predicts the optimal trajectory at the beginning of the sampling process. A gray line in the right panel represents the magnitude of the ground truth velocity, providing a visual reference for the scale of the error.
> <details>
> <summary>read the caption</summary>
> Figure 3: Results on mixture of Gaussians in ℝ2superscriptℝ2{\mathbb{R}}^{2}blackboard_R start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT. Left: The Jensen–Shannon divergence between the model’s final flow sample distribution and the target distribution v.s. training epoch. Right: The velocity error norm ‖𝒗~0θ−𝒗~0∗‖normsubscriptsuperscript~𝒗𝜃0subscriptsuperscript~𝒗∗0\|\tilde{{\bm{v}}}^{\theta}_{0}-\tilde{{\bm{v}}}^{\ast}_{0}\|∥ over~ start_ARG bold_italic_v end_ARG start_POSTSUPERSCRIPT italic_θ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT - over~ start_ARG bold_italic_v end_ARG start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT ∥, with the ground truth norm shown in gray v.s. training epoch.
> </details>



![](https://arxiv.org/html/2503.18886/x7.png)

> 🔼 Figure 4 presents a qualitative comparison of image generation results using standard Classifier-Free Guidance (CFG) and the improved method CFG-Zero*.  Three different state-of-the-art models were used: Lumina-Next, Stable Diffusion 3, and Stable Diffusion 3.5.  Each model used its optimal settings for sampling steps and guidance scale. The images generated with CFG are shown in orange, while those generated with CFG-Zero* are highlighted in green boxes, allowing for a direct visual comparison of the quality and fidelity of the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparisons between CFG and CFG-Zero⋆. Experiments are conducted using Lumina-Next, Stable Diffusion 3, and Stable Diffusion 3.5, with each model evaluated under its recommended optimal sampling steps and guidance scale settings. CFG results are shown in orange and Ours are highlighted in green boxes.
> </details>



![](https://arxiv.org/html/2503.18886/x34.png)

> 🔼 This figure displays the results of a user study comparing the performance of CFG-Zero* against the standard CFG method across four different text-to-image models: Lumina-Next, Stable Diffusion 3, Stable Diffusion 3.5, and Flux.  For each model, the chart shows the percentage of times users preferred images generated by CFG-Zero* over those generated by CFG.  This provides a clear visual representation of CFG-Zero*'s relative effectiveness in generating higher-quality images compared to CFG across multiple leading models.
> <details>
> <summary>read the caption</summary>
> Figure 5: User study on Lumina-Next, Stable Diffusion 3, Stable Diffusion 3.5, and Flux. The win rate of our method compared to CFG is presented.
> </details>



![](https://arxiv.org/html/2503.18886/x35.png)

> 🔼 Figure 6 showcases a qualitative comparison of video generation results using the Wan-2.1 [1B] model, with and without the CFG-Zero* method.  The experiments were conducted using the model's recommended parameters for optimal sampling steps and guidance scale. The figure directly compares the visual quality of videos generated by CFG-Zero* and standard CFG, allowing for a visual assessment of the improvements achieved by CFG-Zero* in terms of detail, color, and overall smoothness of the generated videos. Two example video prompts are shown: 'A bicycle gliding through a snowy field' and 'An astronaut flying in space.'
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparisons between CFG-Zero⋆ and CFG. Experiments are conducted using Wan-2.1 [1B] [39], under its recommended optimal sampling steps and guidance scale settings.
> </details>



![](https://arxiv.org/html/2503.18886/x36.png)

> 🔼 This ablation study investigates the effect of varying the number of sampling steps on the performance of CFG-Zero* and standard CFG.  Two key metrics are compared across different step counts: CLIP Score (measuring image-text alignment) and Aesthetic Score (measuring visual appeal). The graphs visualize how these scores change for both methods as the number of sampling steps increases, allowing for a direct comparison of the impact of the proposed CFG-Zero* improvements on image quality and alignment with text prompts, across various sampling steps.
> <details>
> <summary>read the caption</summary>
> Figure 7: Abalation study on different sampling steps. Comparison of CLIP Score and Aesthetic Score between our method and CFG across different sampling steps.
> </details>



![](https://arxiv.org/html/2503.18886/x37.png)

> 🔼 This ablation study investigates the effect of varying the guidance scale on the performance of both the standard CFG method and the proposed CFG-Zero* method.  Two metrics are used to evaluate performance: the CLIP Score, which measures the alignment between generated images and text prompts, and the Aesthetic Score, which assesses the visual quality of the generated images. The figure shows how these two scores change for CFG and CFG-Zero* as the guidance scale is varied.  This allows for an analysis of which method is more robust and performs better across a range of guidance scales, demonstrating the effectiveness of CFG-Zero* in improving both image-text alignment and visual quality compared to the baseline CFG.
> <details>
> <summary>read the caption</summary>
> Figure 8: Abalation study on different guidance scale. Comparison of CLIP Score and Aesthetic Score between our method and CFG across different guidance scale.
> </details>



![](https://arxiv.org/html/2503.18886/x38.png)

> 🔼 Figure A1 visualizes the sampling trajectories of a flow matching model for different time steps (t=0, 0.2, 0.4, 0.6, 0.8, 1.0).  Each panel displays the sample trajectories generated using three different guidance methods: CFG (Classifier-Free Guidance), 'Cond' (conditional generation without guidance), and the proposed CFG-Zero*. The figure demonstrates how CFG-Zero* effectively guides the samples toward the target distribution, unlike CFG which causes the samples to deviate significantly, and Cond which results in high variance.
> <details>
> <summary>read the caption</summary>
> Figure A1: Flow sampling trajectory. Each panel shows the sample trajectories at a different time step.
> </details>



![](https://arxiv.org/html/2503.18886/x39.png)

> 🔼 This ablation study investigates the impact of the 'zero-init' technique on model performance.  The technique involves setting the initial velocity to zero for a specified number of steps in the ordinary differential equation (ODE) solver used during sample generation.  The figure likely shows how different numbers of zero-initialized steps affect key performance metrics, possibly including image quality scores and the alignment between generated images and text prompts (measured by metrics like FID or CLIP score).  The results would demonstrate whether zeroing out early ODE steps leads to improved or worse outcomes.
> <details>
> <summary>read the caption</summary>
> Figure A2: Ablation study of zero-init steps.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.5.6.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.5.5.6.1.1.1">Epochs</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.5.6.1.2" rowspan="2"><span class="ltx_text" id="S4.T1.5.5.6.1.2.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T1.5.5.6.1.3">Metrics</th>
<td class="ltx_td ltx_border_tt" id="S4.T1.5.5.6.1.4"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.1">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3.3">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4.4">Precision<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.5.5.5">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.7.2.1" rowspan="2"><span class="ltx_text" id="S4.T1.5.5.7.2.1.1">10</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.7.2.2">CFG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.7.2.3.1">53.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.2.4">28.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.2.5">18.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.2.6">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.2.7">0.36</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.5.8.3.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.8.3.1.1" style="background-color:#E6E6E6;">Zero-Init</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.3.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.8.3.2.1" style="background-color:#E6E6E6;">52.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.3.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.3.1" style="background-color:#E6E6E6;">28.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.3.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.4.1" style="background-color:#E6E6E6;">17.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.3.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.5.1" style="background-color:#E6E6E6;">0.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.3.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.6.1" style="background-color:#E6E6E6;">0.37</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.9.4.1" rowspan="2"><span class="ltx_text" id="S4.T1.5.5.9.4.1.1">20</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.9.4.2">CFG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.9.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.9.4.3.1">257.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.9.4.4">11.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.9.4.5">11.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.9.4.6">0.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.9.4.7">0.24</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.5.10.5.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.10.5.1.1" style="background-color:#E6E6E6;">Zero-Init</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.5.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.10.5.2.1" style="background-color:#E6E6E6;">255.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.5.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.10.5.3.1" style="background-color:#E6E6E6;">10.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.5.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.10.5.4.1" style="background-color:#E6E6E6;">10.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.5.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.10.5.5.1" style="background-color:#E6E6E6;">0.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.5.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.10.5.6.1" style="background-color:#E6E6E6;">0.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.11.6.1" rowspan="2"><span class="ltx_text" id="S4.T1.5.5.11.6.1.1">40</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.11.6.2">CFG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.11.6.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.11.6.3.1">339.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.11.6.4">12.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.11.6.5">11.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.11.6.6">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.11.6.7">0.23</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.5.12.7.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.12.7.1.1" style="background-color:#E6E6E6;">Zero-Init</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.7.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.12.7.2.1" style="background-color:#E6E6E6;">338.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.7.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.12.7.3.1" style="background-color:#E6E6E6;">12.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.7.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.12.7.4.1" style="background-color:#E6E6E6;">10.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.7.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.12.7.5.1" style="background-color:#E6E6E6;">0.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.12.7.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.12.7.6.1" style="background-color:#E6E6E6;">0.24</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.13.8.1" rowspan="2"><span class="ltx_text" id="S4.T1.5.5.13.8.1.1">80</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.13.8.2">CFG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.13.8.3">383.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.13.8.4">13.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.13.8.5">10.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.13.8.6">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.13.8.7">0.24</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.5.14.9.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.14.9.1.1" style="background-color:#E6E6E6;">Zero-Init</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.14.9.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.14.9.2.1" style="background-color:#E6E6E6;">383.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.14.9.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.14.9.3.1" style="background-color:#E6E6E6;">12.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.14.9.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.14.9.4.1" style="background-color:#E6E6E6;">10.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.14.9.5" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.14.9.5.1" style="background-color:#E6E6E6;">0.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.14.9.6" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.14.9.6.1" style="background-color:#E6E6E6;">0.26</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.5.5.15.10.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.15.10.1.1">160</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.15.10.2">CFG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.15.10.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.15.10.3.1">222.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.15.10.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.15.10.4.1">2.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.15.10.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.15.10.5.1">4.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.15.10.6"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.15.10.6.1">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.15.10.7"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.15.10.7.1">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.5.5.16.11.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.16.11.1.1" style="background-color:#E6E6E6;">Zero-Init</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.16.11.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.16.11.2.1" style="background-color:#E6E6E6;">218.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.16.11.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.16.11.3.1" style="background-color:#E6E6E6;">2.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.16.11.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.16.11.4.1" style="background-color:#E6E6E6;">4.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.16.11.5" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.16.11.5.1" style="background-color:#E6E6E6;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.16.11.6" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T1.5.5.16.11.6.1" style="background-color:#E6E6E6;">0.56</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different guidance strategies used in generating images from the ImageNet-256 dataset.  It compares the performance of standard conditional generation (baseline), classifier-free guidance (CFG), adaptive guidance (ADG), CFG++, and the proposed CFG-Zero*. The comparison is based on several metrics including the Inception Score (IS), which measures the quality and diversity of generated images (higher IS is better), and the Fréchet Inception Distance (FID), which measures the similarity between generated images and real images from the dataset (lower FID is better).  Precision and Recall metrics assess the model's ability to accurately generate images for a given class.  The results show how each method affects the generated images' quality and alignment with the ground truth.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of different guidance strategy on ImageNet-256 benchmark. Lower FID is better (↓↓\downarrow↓) and higher IS is better (↑↑\uparrow↑). Baseline here denotes using the conditional prediction only.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.5.5.5.6">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.1.1.1">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.m1.1a"><mo id="S5.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m1.1b"><ci id="S5.T2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.3.3.3">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.m1.1a"><mo id="S5.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.4.4.4.4">Precision<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.4.m1.1a"><mo id="S5.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.m1.1b"><ci id="S5.T2.4.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.5.5.5">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.m1.1"><semantics id="S5.T2.5.5.5.5.m1.1a"><mo id="S5.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.m1.1b"><ci id="S5.T2.5.5.5.5.m1.1.1.cmml" xref="S5.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.6.6.7.1.1">Baseline</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.1.2">125.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.1.3">9.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.1.4">6.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.1.5">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.1.6">0.67</td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.6.6.8.2.1">w/ CFG</th>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.2.2">257.03</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.2.3">2.23</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.2.4">4.61</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.2.5"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.8.2.5.1">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.2.6">0.59</td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.6.6.9.3.1">w/ ADG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.9.3.2">257.92</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.9.3.3">2.37</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.9.3.4">5.51</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.9.3.5">0.80</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.9.3.6">0.58</td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.6.6.10.4.1">w/ CFG++ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.4.2">257.04</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.4.3">2.25</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.4.4">4.65</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.4.5">0.79</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.4.6">0.57</td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.6" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.6.6.6.1"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.1.1" style="background-color:#E6E6E6;">w/ <span class="ltx_text ltx_markedasmath" id="S5.T2.6.6.6.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T2.6.6.6.1.1.m1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S5.T2.6.6.6.1.1.m1.1.1.1.1.1">⋆</span></sup></span></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.6.2"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.2.1" style="background-color:#E6E6E6;">258.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.6.3"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.3.1" style="background-color:#E6E6E6;">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.6.4"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.4.1" style="background-color:#E6E6E6;">4.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.6.5"><span class="ltx_text" id="S5.T2.6.6.6.5.1" style="background-color:#E6E6E6;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.6.1" style="background-color:#E6E6E6;">0.61</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of image generation results using four different models (Lumina-Next, Stable Diffusion 3, Stable Diffusion 3.5, and Flux) and two guidance methods (CFG and CFG-Zero*).  The comparison is based on two key metrics: Aesthetic Score, which measures the overall visual appeal of the generated images, and CLIP Score, which assesses how well the generated images align with the given text prompts. The results demonstrate that CFG-Zero* consistently produces higher scores on both metrics across all four models, indicating that it improves both the visual quality and the alignment of generated images with text prompts.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative evaluation of Text-to-Image generation, using Lumina-Next, Stable Diffusion 3, Stable Diffusion 3.5, and Flux. The evaluation is based on Aesthetic Score and CLIP Score as key metrics. Results indicate that CFG-Zero⋆ consistently enhances image quality and improves alignment with textual prompts across different models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.2.2.2.3">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1">Aesthetic Score<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2.2">Clip Score<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.6.6.7.1.1" rowspan="2"><span class="ltx_text" id="S5.T3.6.6.7.1.1.1">Lumina-Next <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.1.2">CFG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.1.3">6.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.7.1.4">34.09</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3.3">
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.3.3.3.1.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_markedasmath" id="S5.T3.3.3.3.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T3.3.3.3.1.1.m1.1.1.1.1">⋆</sup></span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.3.3.3.2.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.3.2.1.1">7.03</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.3.3.3.3.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.3.3.1.1">34.37</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.6.6.8.2.1" rowspan="2"><span class="ltx_text" id="S5.T3.6.6.8.2.1.1">SD3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.2">CFG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.3">6.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.4">34.00</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.4.4.4.1.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_markedasmath" id="S5.T3.4.4.4.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T3.4.4.4.1.1.m1.1.1.1.1">⋆</sup></span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.4.4.4.2.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.2.1.1">6.80</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.4.4.4.3.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.3.1.1">34.11</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.6.6.9.3.1" rowspan="2"><span class="ltx_text" id="S5.T3.6.6.9.3.1.1">SD3.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.9.3.2">CFG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.9.3.3">6.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.9.3.4">34.60</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.5">
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.5.5.5.1.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_markedasmath" id="S5.T3.5.5.5.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T3.5.5.5.1.1.m1.1.1.1.1">⋆</sup></span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.5.5.5.2.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.5.2.1.1">7.10</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.5.5.5.3.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.5.3.1.1">34.68</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T3.6.6.10.4.1" rowspan="2"><span class="ltx_text" id="S5.T3.6.6.10.4.1.1">Flux <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.10.4.2">CFG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.10.4.3">7.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.10.4.4">34.60</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6.1" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.6.6.6.1.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_markedasmath" id="S5.T3.6.6.6.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T3.6.6.6.1.1.m1.1.1.1.1">⋆</sup></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.6.6.6.2.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.6.2.1.1">7.12</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S5.T3.6.6.6.3.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.6.3.1.1">34.69</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of CFG-Zero* and the standard CFG method on the T2I-CompBench benchmark dataset.  The evaluation was performed using three different state-of-the-art text-to-image models: Lumina-Next, Stable Diffusion 3, and Stable Diffusion 3.5.  The results demonstrate that CFG-Zero* consistently outperforms CFG across various metrics, showcasing improvements in the quality and details of generated images.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative evaluation on T2I-CompBench [12], using Lumina-Next, Stable Diffusion 3, and Stable Diffusion 3.5. Compared to CFG, CFG-Zero⋆ demonstrates consistent improvements across all evaluated aspects.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.4.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1">Color<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.2.2.2">Shape<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.3.3.3">Texture<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.4.4">Spatial<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.7.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.7.7.8.1.1">Lumina-Next <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.1.2">0.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.1.3">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.1.4">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.8.1.5">0.19</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.5.5" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.5.5.5.1"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.1.1" style="background-color:#E6E6E6;">+ <span class="ltx_text ltx_markedasmath" id="S5.T4.5.5.5.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T4.5.5.5.1.1.m1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.5.5.5.1.1.m1.1.1.1.1.1">⋆</span></sup></span></span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.2"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.2.1" style="background-color:#E6E6E6;">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.3"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.3.1" style="background-color:#E6E6E6;">0.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.4"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.4.1" style="background-color:#E6E6E6;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.5.1" style="background-color:#E6E6E6;">0.29</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.7.7.9.2.1">SD3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.9.2.2">0.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.9.2.3">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.9.2.4">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.9.2.5"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.9.2.5.1">0.31</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.6" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.6.6.1"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.1.1" style="background-color:#E6E6E6;">+ <span class="ltx_text ltx_markedasmath" id="S5.T4.6.6.6.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T4.6.6.6.1.1.m1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.6.6.6.1.1.m1.1.1.1.1.1">⋆</span></sup></span></span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.2.1" style="background-color:#E6E6E6;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.3.1" style="background-color:#E6E6E6;">0.58</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.4"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.4.1" style="background-color:#E6E6E6;">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6.5"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.5.1" style="background-color:#E6E6E6;">0.31</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.7.7.10.3.1">SD3.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.10.3.2">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.10.3.3">0.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.10.3.4">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.10.3.5">0.27</td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.7" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.7.7.7.1"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.1.1" style="background-color:#E6E6E6;">+ <span class="ltx_text ltx_markedasmath" id="S5.T4.7.7.7.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T4.7.7.7.1.1.m1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S5.T4.7.7.7.1.1.m1.1.1.1.1.1">⋆</span></sup></span></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.7.2"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.2.1" style="background-color:#E6E6E6;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.7.3"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.3.1" style="background-color:#E6E6E6;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.7.4"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.4.1" style="background-color:#E6E6E6;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.7.7.5"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.5.1" style="background-color:#E6E6E6;">0.28</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the CFG-Zero* method on the VBench benchmark, specifically using the Wan-2.1 video generation model.  The metrics assessed include Total Score, Subject Consistency, Aesthetic Quality, Imaging Quality, Color, Spatial Relationship, Temporal Style, and Motion Smoothness. The results show the performance of both the baseline Wan-2.1 model and the model enhanced with CFG-Zero*, demonstrating improvements in frame quality and overall video smoothness compared to the standard CFG approach.
> <details>
> <summary>read the caption</summary>
> Table 5: Qualitative evaluation on VBench [13]. We use the Wan-2.1 [39] model as our base model. Compared to vanilla CFG, CFG-Zero⋆ improves both frame quality and overall video smoothness.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.2.2.3.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.3.1.2">Total Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.3.1.3">subject consistency</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.3.1.4">aesthetic quality</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.3.1.5">imaging quality</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.3.1.6">color</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.3.1.7">spatial relationship</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.3.1.8">temporal style</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.3.1.9">motion smoothness</th>
<td class="ltx_td ltx_border_tt" id="S5.T5.2.2.3.1.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.2.4.2.1">Vchitect-2.0 [2B] <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4.2.2">81.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4.2.3">61.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4.2.4">65.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4.2.5">86.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4.2.6">86.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4.2.7">54.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4.2.8">25.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4.2.9">97.76</td>
<td class="ltx_td ltx_border_t" id="S5.T5.2.2.4.2.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.2.5.3.1">CogVideoX-1.5 [5B] <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5.3.2">82.17</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5.3.3">96.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5.3.4">62.79</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5.3.5">65.02</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5.3.6">87.55</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5.3.7">80.25</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5.3.8">25.19</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.5.3.9">98.31</td>
<td class="ltx_td" id="S5.T5.2.2.5.3.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.2.6.4.1">Wan2.1 [14B] <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.6.4.2">83.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.6.4.3">93.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.6.4.4">69.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.6.4.5">67.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.6.4.6">83.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.6.4.7"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.6.4.7.1">80.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.6.4.8">25.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.6.4.9"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.6.4.9.1">98.05</span></td>
<td class="ltx_td ltx_border_t" id="S5.T5.2.2.6.4.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.1" style="background-color:#E6E6E6;">w/ <span class="ltx_text ltx_markedasmath" id="S5.T5.1.1.1.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T5.1.1.1.1.1.m1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.1.1.1.1.1.m1.1.1.1.1.1">⋆</span></sup></span></span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.2.1" style="background-color:#E6E6E6;">84.06</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.3.1" style="background-color:#E6E6E6;">93.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.4.1" style="background-color:#E6E6E6;">69.22</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.5.1" style="background-color:#E6E6E6;">67.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.6.1" style="background-color:#E6E6E6;">85.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.7"><span class="ltx_text" id="S5.T5.1.1.1.7.1" style="background-color:#E6E6E6;">79.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.8.1" style="background-color:#E6E6E6;">25.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.1.9"><span class="ltx_text" id="S5.T5.1.1.1.9.1" style="background-color:#E6E6E6;">98.00</span></td>
<td class="ltx_td" id="S5.T5.1.1.1.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.2.7.5.1">Wan2.1 [1B] <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18886v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.7.5.2">80.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.7.5.3">93.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.7.5.4">61.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.7.5.5">65.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.7.5.6">87.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.7.5.7">72.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.7.5.8"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.7.5.8.1">24.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.7.5.9">97.24</td>
<td class="ltx_td ltx_border_t" id="S5.T5.2.2.7.5.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.2" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.2.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.1.1" style="background-color:#E6E6E6;">w/ <span class="ltx_text ltx_markedasmath" id="S5.T5.2.2.2.1.1.m1.1.1.1">CFG-Zero<sup class="ltx_sup" id="S5.T5.2.2.2.1.1.m1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.2.2.2.1.1.m1.1.1.1.1.1">⋆</span></sup></span></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.2.1" style="background-color:#E6E6E6;">80.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.3.1" style="background-color:#E6E6E6;">94.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.4.1" style="background-color:#E6E6E6;">64.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.5.1" style="background-color:#E6E6E6;">68.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.6.1" style="background-color:#E6E6E6;">89.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2.7"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.7.1" style="background-color:#E6E6E6;">73.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2.8"><span class="ltx_text" id="S5.T5.2.2.2.8.1" style="background-color:#E6E6E6;">23.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.2.2.9"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.9.1" style="background-color:#E6E6E6;">98.16</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T5.2.2.2.10"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of four different methods for classifier-free guidance (CFG) in diffusion models: vanilla CFG, CFG with zero initialization (zero-init), CFG with dynamic scaling, and the proposed CFG-Zero*.  The results highlight the individual and combined contributions of zero-init and dynamic scaling to the overall performance, measured by aesthetic score and CLIP score. It demonstrates how these modifications improve the quality and alignment of generated images by mitigating inaccuracies in the early stages of the generation process.
> <details>
> <summary>read the caption</summary>
> Table 6: Effectiveness of CFG-Zero⋆. Comparison of vanilla CFG, CFG with zero-init, dynamic scaling, and CFG-Zero⋆, highlighting the impact of zero-init and dynamic scaling in improving performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.F7.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.F7.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F7.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="174" id="S5.F7.1.1.1.g1" src="x8.png" width="415"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F7.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="174" id="S5.F7.2.2.2.g1" src="x9.png" width="415"/></td>
</tr>
<tr class="ltx_tr" id="S5.F7.2.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F7.2.3.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">(a)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F7.2.3.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">(b)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of the 'zero-init' technique, which involves setting the initial steps of the ODE solver to zero, on the performance of different flow matching models. The experiment focuses on varying the number of initial steps set to zero and measures the resulting Aesthetic Score and CLIP Score. The results show a model-specific optimal number of zero-out steps. For SD3.5, increasing the number of zero-out steps beyond a certain point negatively impacts performance. Conversely, for Lumina-Next and SD3, utilizing approximately the first 7% of steps as zero-init steps yields the highest aesthetic and CLIP scores.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation study on zero-out steps. For SD3.5 [5], more initial zero-out steps lead to worse performance, while Lumina-Next [45] and SD3 [5] achieve the highest  Aesthetic Score and  Clip Score with first 7% zero out.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.F8.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.F8.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F8.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="174" id="S5.F8.1.1.1.g1" src="x10.png" width="415"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F8.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="174" id="S5.F8.2.2.2.g1" src="x11.png" width="415"/></td>
</tr>
<tr class="ltx_tr" id="S5.F8.2.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F8.2.3.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">(a)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.F8.2.3.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">(b)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the computational resource requirements for generating 5-second videos using two different models: Wan2.1 and SD3.  It details the FLOPs (floating-point operations) and GPU memory usage needed to produce videos at various resolutions (720p/480p for Wan2.1 and 1024x1024/512x512 for SD3). This information is crucial for understanding the efficiency and scalability of the proposed CFG-Zero* method.
> <details>
> <summary>read the caption</summary>
> Table 8: Computational costs. FLOPs [15] and GPU memory usage of our method for 5-second video generation at 720p/480p using Wan2.1 [39], and at 1024/512 resolution using SD3 [5].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18886/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18886/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}