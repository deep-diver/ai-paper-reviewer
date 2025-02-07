---
title: "Weak-to-Strong Diffusion with Reflection"
summary: "W2SD: A novel framework boosts diffusion model quality by using the difference between weak and strong models to refine sampling trajectories, achieving state-of-the-art performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.00473 {{< /keyword >}}
{{< keyword icon="writer" >}} Lichen Bai et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.00473" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.00473" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.00473/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models generate data by aligning a learned distribution with a real data distribution. However, limitations in data, models, and training methods lead to a gap between generated and real data. This paper addresses this issue by introducing a novel framework called Weak-to-Strong Diffusion (W2SD).  W2SD utilizes the difference between existing weak and strong models to estimate the gap between the strong model and an ideal model. 



W2SD employs a reflective operation that iteratively refines latent variables during the sampling process. By strategically alternating between denoising and inversion, W2SD effectively steers sampling trajectories toward regions of higher density in the real data distribution.  Experiments show that W2SD substantially enhances human preference, aesthetic quality, and adherence to prompts, surpassing state-of-the-art results across multiple modalities and benchmarks.  **W2SD's flexibility allows for strategic selection of model pairs to achieve diverse improvements**, demonstrating its broad applicability and practical utility.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} W2SD improves diffusion model outputs by using the difference between weak and strong models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The W2SD framework is flexible and applicable to various models and tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} W2SD's performance gains outweigh the computational overhead. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces a novel framework, W2SD, that significantly improves the quality of diffusion models.  **W2SD leverages the difference between weak and strong models to approximate the gap between the strong model and an ideal model**, leading to substantial improvements across various metrics and modalities. This offers a new perspective on improving diffusion models and has the potential to advance research in various related fields. The framework's flexibility and broad applicability also makes it valuable for researchers working with different model architectures and datasets.

------
#### Visual Insights



![](https://arxiv.org/html/2502.00473/x1.png)

> 🔼 This figure illustrates the core concept of the Weak-to-Strong Diffusion with Reflection (W2SD) method.  It shows that the difference in probability density between a 'weak' diffusion model and a 'strong' diffusion model can be used as a proxy for the difference between the strong model and an 'ideal' model (perfectly aligned with the true data distribution). W2SD uses this approximation to iteratively refine the strong model's outputs, moving them closer to the ideal distribution. The graphic displays three probability density functions: one representing a weak model, one representing a strong model, and one representing an ideal model. The arrows highlight how the weak-to-strong difference informs the adjustments made to the strong model towards the ideal model.
> <details>
> <summary>read the caption</summary>
> Figure 1: W2SD leverages the gap between weak and strong models to approximate the gap between strong and ideal models.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.4.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.4.4.4.4.5"><span class="ltx_text" id="S4.T1.4.4.4.4.5.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1.1.1" style="font-size:90%;">HPS v2 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.2.2.1" style="font-size:90%;">AES </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.3.3.3.3">
<span class="ltx_text" id="S4.T1.3.3.3.3.3.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.4.4">
<span class="ltx_text" id="S4.T1.4.4.4.4.4.1" style="font-size:90%;">MPS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.4.4.4.5.1.1"><span class="ltx_text" id="S4.T1.4.4.4.5.1.1.1" style="font-size:90%;">SD1.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5.1.2"><span class="ltx_text" id="S4.T1.4.4.4.5.1.2.1" style="font-size:90%;">24.9558</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5.1.3"><span class="ltx_text" id="S4.T1.4.4.4.5.1.3.1" style="font-size:90%;">5.5003</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5.1.4"><span class="ltx_text" id="S4.T1.4.4.4.5.1.4.1" style="font-size:90%;">20.1368</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5.1.5"><span class="ltx_text" id="S4.T1.4.4.4.5.1.5.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.4.4.4.6.2.1"><span class="ltx_text" id="S4.T1.4.4.4.6.2.1.1" style="font-size:90%;">DreamShaper</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.6.2.2"><span class="ltx_text" id="S4.T1.4.4.4.6.2.2.1" style="font-size:90%;">30.1477</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.6.2.3"><span class="ltx_text" id="S4.T1.4.4.4.6.2.3.1" style="font-size:90%;">6.1155</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.6.2.4"><span class="ltx_text" id="S4.T1.4.4.4.6.2.4.1" style="font-size:90%;">21.5035</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.6.2.5"><span class="ltx_text" id="S4.T1.4.4.4.6.2.5.1" style="font-size:90%;">46.8705</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.4.4.7.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.7.3.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.7.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.7.3.2.1" style="font-size:90%;">30.4924</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.7.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.7.3.3.1" style="font-size:90%;">6.2478</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.7.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.7.3.4.1" style="font-size:90%;">21.5727</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.7.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.7.3.5.1" style="font-size:90%;">53.1304</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.4.4.4.8.4.1"><span class="ltx_text" id="S4.T1.4.4.4.8.4.1.1" style="font-size:90%;">SDXL</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.8.4.2"><span class="ltx_text" id="S4.T1.4.4.4.8.4.2.1" style="font-size:90%;">29.8701</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.8.4.3.1" style="font-size:90%;">6.0939</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.8.4.4"><span class="ltx_text" id="S4.T1.4.4.4.8.4.4.1" style="font-size:90%;">21.6487</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.8.4.5"><span class="ltx_text" id="S4.T1.4.4.4.8.4.5.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.9.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.4.4.4.9.5.1"><span class="ltx_text" id="S4.T1.4.4.4.9.5.1.1" style="font-size:90%;">Juggernaut-XL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.9.5.2"><span class="ltx_text" id="S4.T1.4.4.4.9.5.2.1" style="font-size:90%;">31.6412</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.9.5.3"><span class="ltx_text" id="S4.T1.4.4.4.9.5.3.1" style="font-size:90%;">5.9790</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.9.5.4"><span class="ltx_text" id="S4.T1.4.4.4.9.5.4.1" style="font-size:90%;">22.1903</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.9.5.5"><span class="ltx_text" id="S4.T1.4.4.4.9.5.5.1" style="font-size:90%;">45.7397</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.10.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.4.4.4.10.6.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.10.6.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4.10.6.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.10.6.2.1" style="font-size:90%;">32.0992</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4.10.6.3"><span class="ltx_text" id="S4.T1.4.4.4.10.6.3.1" style="font-size:90%;">6.0712</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4.10.6.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.10.6.4.1" style="font-size:90%;">22.2434</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4.10.6.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.10.6.5.1" style="font-size:90%;">54.2634</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods on the Pick-a-Pic dataset, focusing on the impact of using the Weak-to-Strong Diffusion with Reflection (W2SD) method.  It shows the improvements achieved by W2SD in terms of human preference, as measured by several metrics including HPSv2, AES, PickScore and MPS. The table compares the performance of W2SD against standard diffusion models (SD1.5 and DreamShaper) and a more advanced model (SDXL) to highlight the consistent improvements across different base models, and showcases the significant performance gains obtained by leveraging W2SD for improved image generation quality.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results of W2SD based on a full parameter fine-tuning strategy. Our method generates results better aligned with human preferences. Datasets: Pick-a-Pic.
> </details>





### In-depth insights


#### Weak-to-Strong Diff
The concept of "Weak-to-Strong Diff" presents a novel approach to enhance diffusion models.  It leverages the **difference in density gradients** between a weaker and stronger model to approximate the gap between a strong model and an ideal model. This difference is used to guide the sampling process, effectively steering latent variables towards regions representing the true data distribution.  The method's strength lies in its **flexibility and broad applicability**, allowing diverse improvements by strategically selecting model pairs.  This approach offers a theoretical understanding of how the weak-to-strong difference can enhance sampling trajectories, improving results in various modalities, architectures, and benchmarks. The **reflective operation** employed further enhances the effectiveness, as it iteratively refines the latent variables.  **Computational overhead** appears minimal, suggesting a practical and impactful approach to improving generative models.

#### Reflection's Role
The concept of 'Reflection's Role' in the context of a research paper likely revolves around **iterative refinement** and **feedback mechanisms**.  It suggests a process where generated outputs are evaluated against a benchmark (potentially an ideal model or a stronger model), and the discrepancies are used to adjust subsequent iterations. This implies that reflection is not a passive process but an **active feedback loop**.  The effectiveness hinges on the choice of what constitutes the reflection benchmark (**strong vs. weak model comparison**).  This choice critically determines the direction and magnitude of improvement, with mismatched benchmarks potentially leading to detrimental effects. The iterative nature suggests that **successive refinements** can accumulate into substantial overall improvement, but also highlights the importance of careful design and the selection of appropriate comparison models to maximize the benefits of this feedback loop.

#### W2SD Algorithm
The W2SD algorithm is a novel framework for enhancing diffusion model inference.  It leverages the concept of **weak-to-strong model differences** to approximate the inaccessible gap between a strong model and an ideal model. The core innovation lies in its **reflective operation**, which alternates between denoising using a strong model and inversion using a weak model guided by the estimated weak-to-strong difference. This iterative process theoretically steers latent variables towards the true data distribution, refining the generated samples.  **The algorithm's flexibility** is highlighted by its adaptability to various model pairs and its capacity to combine with existing inference enhancement methods, further amplifying its effectiveness. The effectiveness hinges on how well the weak-to-strong difference approximates the strong-to-ideal difference,  demonstrating a **theoretical understanding** of its mechanism.  Empirical results across different modalities, architectures, and datasets underscore its significant improvements in multiple evaluation metrics, showcasing its broad applicability and practical utility.

#### Empirical Analyses
An Empirical Analysis section in a research paper would rigorously evaluate the proposed method's performance.  It would likely present quantitative results, comparing the novel approach against existing state-of-the-art methods across multiple metrics and datasets.  **Key aspects would include the statistical significance of any performance gains**, demonstrating the method's reliability and not just random chance.  The analysis should also explore the method's efficiency and scalability, considering computational cost and resource usage.  A thorough empirical analysis would explore potential limitations of the approach, presenting scenarios where the method underperforms and offering potential explanations.  **Visualizations such as graphs and charts are crucial for effectively communicating the results.**  Finally, an insightful discussion would interpret the findings, relating them back to the method's underlying principles and theoretical framework, potentially suggesting future research directions.

#### Future of W2SD
The future of Weak-to-Strong Diffusion with Reflection (W2SD) appears bright, given its strong empirical performance and theoretical foundation. **Further research could explore more sophisticated methods for estimating the weak-to-strong difference**, perhaps leveraging advanced techniques from density estimation or optimal transport.  **Investigating the impact of different weak-strong model pairings on various downstream tasks** is crucial to unlock W2SD's full potential across diverse applications.  **Extending W2SD to other generative models beyond diffusion models** is a promising avenue for broader impact.  For example, applying the reflective mechanism to GANs or VAEs could lead to novel architectures and improved generation quality.  Finally, **a more in-depth theoretical analysis** could help clarify the underlying mechanisms of W2SD and guide future improvements.  Specifically, rigorously analyzing the conditions under which the weak-to-strong difference accurately approximates the strong-to-ideal difference would strengthen the theoretical justification of the method.  Addressing these research questions will further solidify W2SD's position as a powerful tool in the field of generative modeling.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.00473/x2.png)

> 🔼 Figure 2 presents a qualitative comparison of image generation results between a standard diffusion model and the proposed Weak-to-Strong Diffusion with Reflection (W2SD) method.  The figure showcases examples highlighting W2SD's improvements across multiple aspects of image generation. These aspects include accurate text rendering within images, precise object positioning, correct color representation, accurate counting of objects, and appropriate co-occurrence of objects within a scene. The results suggest that W2SD enhances the overall quality and coherence of generated images. More examples are available in Appendix C.2.
> <details>
> <summary>read the caption</summary>
> Figure 2: The qualitative results of W2SD demonstrate the effectiveness of our method in various aspects, such as text rendering, position, color, counting, and object co-occurrence. We present more cases in Appendix C.2.
> </details>



![](https://arxiv.org/html/2502.00473/x3.png)

> 🔼 This figure illustrates the core concept of Weak-to-Strong Diffusion with Reflection (W2SD). It shows how W2SD uses the difference between a weak and a strong diffusion model to approximate the gap between the strong model and an ideal model that perfectly represents the real data distribution.  The figure visually demonstrates that by iteratively applying a reflective operation that uses the weak-to-strong difference (Δ₁), the latent variable (x̃t) is guided towards the ideal latent variable (xgt).  When the weak-to-strong difference is a good approximation of the strong-to-ideal difference (Δ₂ - Δ₁ is small), the refined latent variable converges to the ideal latent variable, thereby improving the quality of the generated samples.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualizing the effectiveness of W2SD. When the weak-to-strong difference closely approximates the strong-to-ideal difference (e.g., Δ2⁢(t)−Δ1⁢(t)subscriptΔ2𝑡subscriptΔ1𝑡\Delta_{2}(t)-\Delta_{1}(t)roman_Δ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ( italic_t ) - roman_Δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ( italic_t ) is small), the refined latent variable x~tsubscript~𝑥𝑡\tilde{x}_{t}over~ start_ARG italic_x end_ARG start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT converges to the ideal latent variable xtgtsuperscriptsubscript𝑥𝑡gtx_{t}^{\mathrm{gt}}italic_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT roman_gt end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2502.00473/x4.png)

> 🔼 Figure 4 illustrates the denoising process of a 1D Gaussian distribution with two peaks.  A weak model, trained on data lacking samples from the left peak, only generates data around the right peak (blue line). A stronger model, trained on a more complete dataset, generates data covering both peaks (red line). The proposed Weak-to-Strong Diffusion with Reflection (W2SD) method, using a reflective operator that combines the weak and strong models, effectively balances the generated distribution, producing samples from both peaks (purple line). This demonstrates W2SD's ability to correct for deficiencies in model training data.
> <details>
> <summary>read the caption</summary>
> Figure 4: Denoising trajectories across different settings (1-D Gauss). The weak model (blue) generates only right-peak data due to missing left-peak training samples, while the strong model (red) produces data between both peaks. W2SD balances the distribution by leveraging the reflective operator ℳinvw⁢(ℳs⁢(⋅))superscriptsubscriptℳinvwsuperscriptℳs⋅\mathcal{M}_{\mathrm{inv}}^{\mathrm{w}}(\mathcal{M}^{\mathrm{s}}(\cdot))caligraphic_M start_POSTSUBSCRIPT roman_inv end_POSTSUBSCRIPT start_POSTSUPERSCRIPT roman_w end_POSTSUPERSCRIPT ( caligraphic_M start_POSTSUPERSCRIPT roman_s end_POSTSUPERSCRIPT ( ⋅ ) ).
> </details>



![](https://arxiv.org/html/2502.00473/x6.png)

> 🔼 This figure visualizes the effectiveness of Weak-to-Strong Diffusion with Reflection (W2SD) on a 2-dimensional Gaussian mixture dataset.  It shows probability contour plots and sampling trajectories for three different methods: a strong model (trained on a biased dataset), a weak model (trained on another biased dataset), and W2SD. The contour plots illustrate the learned data distributions of each method, with the ideal distribution represented by the real data distribution. The trajectories show how the latent variable evolves during the sampling process. The results demonstrate that W2SD effectively balances the learned distribution, bringing it closer to the true underlying distribution of the data, showcasing its ability to bridge the gap between weak and strong models and improve the quality of generated samples.
> <details>
> <summary>read the caption</summary>
> Figure 5: Probability contour plot and denoising trajectories across different settings (2-D Gauss). W2SD balances the learned distribution, bringing it closer to the real data distribution
> </details>



![](https://arxiv.org/html/2502.00473/x7.png)

> 🔼 This figure displays a comparison of image generation results from a strong model, a weak model, and the proposed W2SD method, all trained on subsets of the CIFAR-10 dataset.  The strong model shows a bias towards generating horse images, while the weak model struggles to generate either cars or horses effectively. The W2SD method mitigates this bias, resulting in a more balanced distribution with a higher likelihood of generating car images, showcasing the method's ability to improve the diversity and quality of image generation by addressing imbalances in training data.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results of W2SD based on dataset differences (CIFAR-10). Our method enhances the probability of generating “cars” and promote a more balanced generation distribution.
> </details>



![](https://arxiv.org/html/2502.00473/x8.png)

> 🔼 This figure visualizes the impact of W2SD on data generation balance using t-SNE to project 32x32x3 CLIP features into a 2D space.  It compares four scenarios: (a) a strong model (Ms) effectively generates cars; (b) a weak model (Mw) struggles to generate cars; (c) W2SD balances car and horse generation; and (d) applying the inverse weak model (Minv(Mw)) exacerbates the imbalance, showcasing W2SD's ability to improve data generation balance.
> <details>
> <summary>read the caption</summary>
> Figure 7: The CLIP feature corresponding to the generated image (32×\times×32×\times×3) is projected into a 2D space. W2SD effectively disentangles the representations of “car” and “horse” in the 2D space. (a) ℳssuperscriptℳs\mathcal{M}^{\mathrm{s}}caligraphic_M start_POSTSUPERSCRIPT roman_s end_POSTSUPERSCRIPT demonstrates the ability to generate cars; (b) ℳwsuperscriptℳw\mathcal{M}^{\mathrm{w}}caligraphic_M start_POSTSUPERSCRIPT roman_w end_POSTSUPERSCRIPT can hardly generate cars; (c) W2SD balances the generation distribution, increasing the likelihood of generating cars; (d) S2WD (i.e., ℳi⁢n⁢vs⁢(ℳw⁢(⋅))superscriptsubscriptℳ𝑖𝑛𝑣𝑠superscriptℳ𝑤⋅\mathcal{M}_{inv}^{s}(\mathcal{M}^{w}(\cdot))caligraphic_M start_POSTSUBSCRIPT italic_i italic_n italic_v end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_s end_POSTSUPERSCRIPT ( caligraphic_M start_POSTSUPERSCRIPT italic_w end_POSTSUPERSCRIPT ( ⋅ ) )) exacerbates the imbalance in data generation.
> </details>



![](https://arxiv.org/html/2502.00473/x9.png)

> 🔼 Figure 8 displays a qualitative comparison of image generation results from three different methods: a weak model, a strong model, and the proposed Weak-to-Strong Diffusion with Reflection (W2SD) method. The weak model produces lower quality results, while the strong model generates images with improved quality but still exhibits certain limitations. The W2SD method leverages the differences between these models to produce improved results across various dimensions including style, character, and clothing detail. The images demonstrate W2SD's ability to refine the generated output, resulting in more visually appealing results. More examples are shown in Section C.2 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative comparisons with weak model (left), strong model (middle) and W2SD based on weight difference (right). Our method utilizes the differences between chosen strong and weak models (e.g., high-detail LoRA vs. standard model) to deliver improvements in various dimensions, including style, character, clothing, and beyond. We provide more qualitative results in Section C.2.
> </details>



![](https://arxiv.org/html/2502.00473/x10.png)

> 🔼 This figure displays a comparison of image generation results using DiT-MoE-S (a Mixture-of-Experts model) with and without the Weak-to-Strong Diffusion with Reflection (W2SD) method. The top row shows samples generated by the DiT-MoE-S model alone, demonstrating its limitations, especially given its relatively small size (71 million activated parameters).  The bottom row presents results obtained after applying the W2SD technique to the same model.  The visual difference showcases the significant improvements in image quality achieved by W2SD, highlighting its ability to enhance performance even in resource-constrained models.
> <details>
> <summary>read the caption</summary>
> Figure 9: Quantitative Results of W2SD Based on the MoE Mechanism. The first row shows the results for DiT-MoE-S, while the second row presents W2SD. W2SD achieves significant improvements, even with small models featuring 71M activated parameters.
> </details>



![](https://arxiv.org/html/2502.00473/x11.png)

> 🔼 This figure demonstrates the effectiveness of Weak-to-Strong Diffusion with Reflection (W2SD) when using different sampling pipelines.  ControlNet, a pipeline that incorporates additional network structures to allow for controllable image generation based on reference images (like edge maps), is used as the strong model (ℳ<sup>s</sup>).  The standard DDIM sampling pipeline is used as the weak model (ℳ<sup>w</sup>). The figure shows that by employing W2SD, the generated images exhibit significantly improved alignment with the provided reference images, highlighting the method's ability to enhance generation quality across diverse sampling methodologies.
> <details>
> <summary>read the caption</summary>
> Figure 10: Qualitative results of W2SD based on pipeline difference. We set ControlNet as ℳssuperscriptℳs\mathcal{M}^{\mathrm{s}}caligraphic_M start_POSTSUPERSCRIPT roman_s end_POSTSUPERSCRIPT, DDIM as ℳwsuperscriptℳw\mathcal{M}^{\mathrm{w}}caligraphic_M start_POSTSUPERSCRIPT roman_w end_POSTSUPERSCRIPT. W2SD improves alignment with reference images.
> </details>



![](https://arxiv.org/html/2502.00473/x12.png)

> 🔼 This figure analyzes the relationship between the magnitude of the difference between a strong and a weak diffusion model and the improvement in image quality achieved by the Weak-to-Strong Diffusion with Reflection (W2SD) method.  The x-axis represents the magnitude of this difference, while the y-axis shows the average HPS v2 score (a metric measuring human preference for generated images) on the Pick-a-Pic dataset. The graph reveals that when the strong model is significantly better than the weak model (large positive difference), W2SD leads to substantial improvements in the HPS v2 score.  Conversely, if the strong model is weaker or comparable to the weak model (small or negative difference), W2SD may even yield negative gains, indicating a reduction in image quality compared to using the strong model alone.
> <details>
> <summary>read the caption</summary>
> Figure 11: The magnitude of weak-to-strong difference is a key factor impacting the effects of improvements. The horizontal axis shows the magnitude of the weak-to-strong difference, while the vertical axis shows the average HPS v2 on the Pick-a-Pic. When ℳssuperscriptℳs\mathcal{M}^{\mathrm{s}}caligraphic_M start_POSTSUPERSCRIPT roman_s end_POSTSUPERSCRIPT is weaker than ℳwsuperscriptℳw\mathcal{M}^{\mathrm{w}}caligraphic_M start_POSTSUPERSCRIPT roman_w end_POSTSUPERSCRIPT, W2SD results in negative gains.
> </details>



![](https://arxiv.org/html/2502.00473/x13.png)

> 🔼 This figure demonstrates the impact of the magnitude of the weak-to-strong difference on the performance of the Weak-to-Strong Diffusion with Reflection (W2SD) method.  The x-axis represents the difference between a strong and weak model, while the y-axis shows the improvement in the Human Preference Score v2 (HPSv2) metric.  When the weak-to-strong difference is positive (strong model is significantly better than weak model), W2SD improves the results. If the difference is zero (models have similar performance), W2SD performs identically to standard sampling. If the difference is negative (weak model performs better than strong model), the results degrade, indicating that a strong model is crucial for the effectiveness of W2SD. The plots show both the results using LoRA-based methods and using different guidance scales to illustrate the versatility of this finding across different methods of establishing the weak-to-strong model pair.
> <details>
> <summary>read the caption</summary>
> Figure 12: When the weak-to-strong difference is greater than 0, W2SD yields positive gains. When it equals 0, the process degenerates into standard sampling. When it is less than 0, negative gains occurs, resulting in poor image quality.
> </details>



![](https://arxiv.org/html/2502.00473/x14.png)

> 🔼 This figure compares the performance of W2SD against standard sampling methods in terms of generation time and image quality.  The x-axis represents the average time taken to generate a single image, while the y-axis shows the HPS v2 score (a metric evaluating human preference for image quality) achieved on the Pick-a-Pic dataset. The results demonstrate that W2SD achieves a higher HPS v2 score than standard sampling while maintaining the same average generation time per image, highlighting its efficiency in improving image quality without increasing computational costs.
> <details>
> <summary>read the caption</summary>
> Figure 13: W2SD outperforms standard sampling with identical time costs. The horizontal axis denotes the average generation time per image, the vertical axis represents the HPS v2 on Pick-a-Pic.
> </details>



![](https://arxiv.org/html/2502.00473/x15.png)

> 🔼 Table 8 presents a quantitative comparison of image generation results using a standard model and the W2SD method.  The evaluation was conducted on the Drawbench dataset, which assesses various aspects of image quality relevant to human preferences. The table shows that W2SD, using a full parameter fine-tuning strategy, leads to improvements in multiple metrics, indicating better alignment with human aesthetic preferences compared to the standard model.
> <details>
> <summary>read the caption</summary>
> Table 8: Quantitative results of W2SD based on a full parameter fine-tuning strategy. Our method generates results better aligned with human preferences. Datasets: Drawbench.
> </details>



![](https://arxiv.org/html/2502.00473/x16.png)

> 🔼 Table 9 presents a quantitative analysis of the Weak-to-Strong Diffusion with Reflection (W2SD) method.  Specifically, it shows the performance improvements achieved by W2SD when leveraging differences in guidance scales between a strong and weak model. The model used is SDXL, and the results are evaluated using the DrawBench dataset.  The table likely includes metrics such as FID, Inception Score, Precision, Recall, and potentially others to comprehensively assess the impact of W2SD on image generation quality under varying guidance levels.
> <details>
> <summary>read the caption</summary>
> Table 9: Quantitative results of W2SD based on guidance difference. Model: SDXL. Datasets: DrawBench.
> </details>



![](https://arxiv.org/html/2502.00473/x17.png)

> 🔼 This table presents a quantitative analysis of the Weak-to-Strong Diffusion with Reflection (W2SD) method.  The method is evaluated using a human preference LoRA model, specifically assessing its ability to generate results that are better aligned with human preferences. The results are compared against baseline models without W2SD on the Pick-a-Pic dataset.  Metrics such as HPSv2, AES, PickScore, and MPS are used to evaluate different aspects of image quality and user preference, allowing for a comprehensive assessment of the method's effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 10: Quantitative results of W2SD based on human preference LoRA model. Our method generates results better aligned with human preferences. Datasets: Pick-a-Pic.
> </details>



![](https://arxiv.org/html/2502.00473/x18.png)

> 🔼 Table 11 presents a quantitative analysis of the Weak-to-Strong Diffusion with Reflection (W2SD) method.  The study focuses on how W2SD, using a human preference LoRA model, improves the alignment of generated results with human preferences. The results are evaluated using the DrawBench dataset, a comprehensive benchmark for evaluating image generation models. The table likely compares W2SD's performance to other baseline models across various metrics relevant to image quality and human perception, showcasing the effectiveness of the W2SD technique.
> <details>
> <summary>read the caption</summary>
> Table 11: Quantitative results of W2SD based on human preference LoRA model. Our method generates results better aligned with human preferences. Datasets: DrawBench.
> </details>



![](https://arxiv.org/html/2502.00473/x19.png)

> 🔼 This figure displays a qualitative comparison of image generation results using three different models: a weak model (SDXL), a strong model (xlMoreArtFullV1), and the proposed W2SD method.  Each row shows the same prompt's output for the three models. The images generated by the weak model alone often lack detail or deviate significantly from the prompt's intent.  The strong model generally produces more aesthetically pleasing and accurate results.  W2SD, combining elements of both weak and strong models, produces images that are closer to the strong model's quality but often contain more accurate and prompt-relevant details than the strong model alone.  This demonstrates W2SD's capability to enhance human preference by balancing the strengths of weaker and stronger models.
> <details>
> <summary>read the caption</summary>
> Figure 14: Qualitative results of W2SD based on weight differences (human preference). Here we select xlMoreArtFullV1 as the strong model and SDXL as the weak model. W2SD can effectively enhance the performance of human preference.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.7.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.7.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.7.3.3.3.4"><span class="ltx_text" id="S4.T2.7.3.3.3.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.1.1.1.1">
<span class="ltx_text" id="S4.T2.5.1.1.1.1.1" style="font-size:90%;">DINO </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.1.1.1.1.m1.1"><semantics id="S4.T2.5.1.1.1.1.m1.1a"><mo id="S4.T2.5.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.1.1.1.1.m1.1b"><ci id="S4.T2.5.1.1.1.1.m1.1.1.cmml" xref="S4.T2.5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.6.2.2.2.2">
<span class="ltx_text" id="S4.T2.6.2.2.2.2.1" style="font-size:90%;">CLIP-I </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.2.2.2.2.m1.1"><semantics id="S4.T2.6.2.2.2.2.m1.1a"><mo id="S4.T2.6.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.6.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.2.2.2.2.m1.1b"><ci id="S4.T2.6.2.2.2.2.m1.1.1.cmml" xref="S4.T2.6.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.3.3.3.3">
<span class="ltx_text" id="S4.T2.7.3.3.3.3.1" style="font-size:90%;">CLIP-T </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.3.3.3.3.m1.1"><semantics id="S4.T2.7.3.3.3.3.m1.1a"><mo id="S4.T2.7.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.3.3.3.3.m1.1b"><ci id="S4.T2.7.3.3.3.3.m1.1.1.cmml" xref="S4.T2.7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.3.3.3.5"></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.7.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.7.3.3.4.1.1"><span class="ltx_text" id="S4.T2.7.3.3.4.1.1.1" style="font-size:90%;">SD1.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.3.3.4.1.2"><span class="ltx_text" id="S4.T2.7.3.3.4.1.2.1" style="font-size:90%;">27.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.3.3.4.1.3"><span class="ltx_text" id="S4.T2.7.3.3.4.1.3.1" style="font-size:90%;">52.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.3.3.4.1.4"><span class="ltx_text" id="S4.T2.7.3.3.4.1.4.1" style="font-size:90%;">20.14</span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.7.3.3.4.1.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.7.3.3.5.2.1"><span class="ltx_text" id="S4.T2.7.3.3.5.2.1.1" style="font-size:90%;">Personalized LoRA</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.7.3.3.5.2.2"><span class="ltx_text" id="S4.T2.7.3.3.5.2.2.1" style="font-size:90%;">48.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.3.3.5.2.3"><span class="ltx_text" id="S4.T2.7.3.3.5.2.3.1" style="font-size:90%;">64.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.3.3.5.2.4"><span class="ltx_text" id="S4.T2.7.3.3.5.2.4.1" style="font-size:90%;">25.99</span></td>
<td class="ltx_td" id="S4.T2.7.3.3.5.2.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.7.3.3.6.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.7.3.3.6.3.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.3.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S4.T2.7.3.3.6.3.2.1" style="font-size:90%;">51.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.3.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.7.3.3.6.3.3.1" style="font-size:90%;">68.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.3.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S4.T2.7.3.3.6.3.4.1" style="font-size:90%;">27.66</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T2.7.3.3.6.3.5"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of the performance of the Weak-to-Strong Diffusion with Reflection (W2SD) method, using a personalized LoRA (Low-Rank Adaptation) model.  The experiment focuses on measuring the impact of W2SD when the difference in model weights between a base model (SD1.5) and a LoRA-tuned version (SD1.5 + LoRA) is used to steer generation towards more personalized outputs.  The table likely shows various metrics to evaluate this personalization, such as metrics measuring image quality, alignment with prompts, and possibly others. The results demonstrate how W2SD leverages this weight difference to enhance the results, showcasing the efficacy of the method in achieving personalized generation.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results of W2SD based on personalized LoRA model. Here, the weight difference between ℳwsuperscriptℳ𝑤\mathcal{M}^{w}caligraphic_M start_POSTSUPERSCRIPT italic_w end_POSTSUPERSCRIPT (SD1.5) and ℳssuperscriptℳ𝑠\mathcal{M}^{s}caligraphic_M start_POSTSUPERSCRIPT italic_s end_POSTSUPERSCRIPT (SD1.5 +LoRA) biases the generated results towards a more personalized direction.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.4.4.4.4.5"><span class="ltx_text" id="S4.T3.4.4.4.4.5.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1.1.1" style="font-size:90%;">IS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.2.2.1" style="font-size:90%;">FiD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.3.3.1" style="font-size:90%;">AES </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4.4">
<span class="ltx_text" id="S4.T3.4.4.4.4.4.1" style="font-size:90%;">HPS v2 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.4.4.4.5.1.1"><span class="ltx_text" id="S4.T3.4.4.4.5.1.1.1" style="font-size:90%;">DiT-MoE-S</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5.1.2"><span class="ltx_text" id="S4.T3.4.4.4.5.1.2.1" style="font-size:90%;">45.4437</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5.1.3"><span class="ltx_text" id="S4.T3.4.4.4.5.1.3.1" style="font-size:90%;">15.1032</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5.1.4"><span class="ltx_text" id="S4.T3.4.4.4.5.1.4.1" style="font-size:90%;">4.4755</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5.1.5"><span class="ltx_text" id="S4.T3.4.4.4.5.1.5.1" style="font-size:90%;">20.0486</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.4.4.4.6.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.6.2.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.4.6.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.6.2.2.1" style="font-size:90%;">55.5341</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.4.6.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.6.2.3.1" style="font-size:90%;">9.1001</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.4.6.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.6.2.4.1" style="font-size:90%;">4.5053</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.4.6.2.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.6.2.5.1" style="font-size:90%;">22.3225</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the Weak-to-Strong Diffusion with Reflection (W2SD) method when applied to Mixture of Experts (MoE) models, using the ImageNet 50K dataset.  It shows the improvements achieved by W2SD compared to a standard DiT-MoE-S model across several metrics, including Inception Score (IS), Fréchet Inception Distance (FID),  Average Expert Selection (AES), and Human Preference Score version 2 (HPSv2).  These metrics assess different aspects of image quality and generation, helping to demonstrate the effectiveness of W2SD in enhancing image generation performance within the MoE framework.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results of W2SD based on MoE Mechanism. Datasets: ImageNet 50K.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.4.4.4.4.5"><span class="ltx_text" id="S4.T4.4.4.4.4.5.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1.1.1" style="font-size:90%;">HPS v2 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.2.2">
<span class="ltx_text" id="S4.T4.2.2.2.2.2.1" style="font-size:90%;">AES </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.3.3">
<span class="ltx_text" id="S4.T4.3.3.3.3.3.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4.4.4">
<span class="ltx_text" id="S4.T4.4.4.4.4.4.1" style="font-size:90%;">MPS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.4.4.4.5.1.1"><span class="ltx_text" id="S4.T4.4.4.4.5.1.1.1" style="font-size:90%;">SD1.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.5.1.2"><span class="ltx_text" id="S4.T4.4.4.4.5.1.2.1" style="font-size:90%;">24.9558</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.5.1.3"><span class="ltx_text" id="S4.T4.4.4.4.5.1.3.1" style="font-size:90%;">5.5003</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.5.1.4"><span class="ltx_text" id="S4.T4.4.4.4.5.1.4.1" style="font-size:90%;">20.1368</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.5.1.5"><span class="ltx_text" id="S4.T4.4.4.4.5.1.5.1" style="font-size:90%;">42.1101</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.4.4.4.6.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.6.2.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.6.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.6.2.2.1" style="font-size:90%;">25.5069</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.6.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.6.2.3.1" style="font-size:90%;">5.5073</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.6.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.6.2.4.1" style="font-size:90%;">20.2443</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.6.2.5"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.6.2.5.1" style="font-size:90%;">57.8903</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.4.4.4.7.3.1"><span class="ltx_text" id="S4.T4.4.4.4.7.3.1.1" style="font-size:90%;">SDXL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.7.3.2"><span class="ltx_text" id="S4.T4.4.4.4.7.3.2.1" style="font-size:90%;">29.8701</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.7.3.3"><span class="ltx_text" id="S4.T4.4.4.4.7.3.3.1" style="font-size:90%;">6.0939</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.7.3.4"><span class="ltx_text" id="S4.T4.4.4.4.7.3.4.1" style="font-size:90%;">21.6487</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.7.3.5"><span class="ltx_text" id="S4.T4.4.4.4.7.3.5.1" style="font-size:90%;">43.9425</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.4.4.4.8.4.1"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.8.4.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.8.4.2.1" style="font-size:90%;">31.2020</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.8.4.3.1" style="font-size:90%;">6.0970</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.4.8.4.4"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.8.4.4.1" style="font-size:90%;">21.7980</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.4.8.4.5"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.8.4.5.1" style="font-size:90%;">56.0608</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of the Weak-to-Strong Diffusion with Reflection (W2SD) method against a standard SDXL model, using the Pick-a-Pic dataset.  The comparison focuses specifically on the impact of varying the guidance scale, a parameter that influences the balance between the input prompt and the model's own generation tendencies.  The results are evaluated across four metrics: HPS v2 (Human Preference Score v2), AES (Aesthetic Quality), PickScore, and MPS (multi-perspective score).  These metrics offer a comprehensive assessment of the generated images' quality, aligning with human preferences and covering various aspects of image quality. The table helps illustrate how leveraging the differences in guidance scales (as a proxy for a weak-strong model difference) improves image generation by W2SD.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative results of W2SD based on guidance difference. Model: SDXL. Datasets: Pick-a-Pic.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.4.4.4.4.5"><span class="ltx_text" id="S4.T5.4.4.4.4.5.1" style="font-size:90%;">Prompt Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1.1">
<span class="ltx_text" id="S4.T5.1.1.1.1.1.1" style="font-size:90%;">HPS v2 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2.2.2">
<span class="ltx_text" id="S4.T5.2.2.2.2.2.1" style="font-size:90%;">AES </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3.3.3">
<span class="ltx_text" id="S4.T5.3.3.3.3.3.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.4.4.4.4.4">
<span class="ltx_text" id="S4.T5.4.4.4.4.4.1" style="font-size:90%;">MPS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.4.4.m1.1a"><mo id="S4.T5.4.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.4.4.m1.1b"><ci id="S4.T5.4.4.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.4.5.1.1"><span class="ltx_text" id="S4.T5.4.4.4.5.1.1.1" style="font-size:90%;">Raw Prompt</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.5.1.2"><span class="ltx_text" id="S4.T5.4.4.4.5.1.2.1" style="font-size:90%;">25.3897</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.5.1.3"><span class="ltx_text" id="S4.T5.4.4.4.5.1.3.1" style="font-size:90%;">5.4454</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.5.1.4"><span class="ltx_text" id="S4.T5.4.4.4.5.1.4.1" style="font-size:90%;">20.7144</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.5.1.5"><span class="ltx_text" id="S4.T5.4.4.4.5.1.5.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.4.4.4.6.2.1"><span class="ltx_text" id="S4.T5.4.4.4.6.2.1.1" style="font-size:90%;">Refined Prompt</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.6.2.2"><span class="ltx_text" id="S4.T5.4.4.4.6.2.2.1" style="font-size:90%;">28.5698</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.6.2.3"><span class="ltx_text" id="S4.T5.4.4.4.6.2.3.1" style="font-size:90%;">5.7714</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.6.2.4"><span class="ltx_text" id="S4.T5.4.4.4.6.2.4.1" style="font-size:90%;">21.6350</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.6.2.5"><span class="ltx_text" id="S4.T5.4.4.4.6.2.5.1" style="font-size:90%;">45.7719</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.4.4.4.7.3.1"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.7.3.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.4.4.7.3.2"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.7.3.2.1" style="font-size:90%;">29.4023</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.4.4.7.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.7.3.3.1" style="font-size:90%;">5.8812</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.4.4.7.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.7.3.4.1" style="font-size:90%;">21.8053</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.4.4.7.3.5"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.7.3.5.1" style="font-size:90%;">54.2275</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the Weak-to-Strong Diffusion with Reflection (W2SD) method.  Specifically, it evaluates the performance improvements achieved by W2SD when leveraging semantic differences between prompts. The model used is SDXL, and the dataset is GenEval. The table likely shows various metrics (e.g., HPS v2, AES, PickScore, MPS) to assess the quality of generated images, comparing the results obtained with W2SD against a baseline method (likely the SDXL model without W2SD).  The results demonstrate the effectiveness of W2SD in enhancing the image generation quality by utilizing nuanced prompt variations.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative results of W2SD based on semantic differences between prompts. Model: SDXL. Datasets: GenEval.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.10.10.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.2.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T6.2.2.2.2.3"><span class="ltx_text" id="S4.T6.2.2.2.2.3.1" style="font-size:90%;">Weight Difference</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T6.2.2.2.2.4"><span class="ltx_text" id="S4.T6.2.2.2.2.4.1" style="font-size:90%;">Condition Difference</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.1.1.1">
<span class="ltx_text" id="S4.T6.1.1.1.1.1.1" style="font-size:90%;">HPS v2 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.2.2.2">
<span class="ltx_text" id="S4.T6.2.2.2.2.2.1" style="font-size:90%;">Winning Rate </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.2.2.m1.1a"><mo id="S4.T6.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T6.3.3.3.3.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.3.3.3.3.1.m1.1"><semantics id="S4.T6.3.3.3.3.1.m1.1a"><mo id="S4.T6.3.3.3.3.1.m1.1.1" mathsize="90%" xref="S4.T6.3.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.3.1.m1.1b"><times id="S4.T6.3.3.3.3.1.m1.1.1.cmml" xref="S4.T6.3.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.3.1.m1.1d">×</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.4.4.4.4.2"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.4.4.4.4.2.m1.1"><semantics id="S4.T6.4.4.4.4.2.m1.1a"><mo id="S4.T6.4.4.4.4.2.m1.1.1" mathsize="90%" xref="S4.T6.4.4.4.4.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.4.4.2.m1.1b"><times id="S4.T6.4.4.4.4.2.m1.1.1.cmml" xref="S4.T6.4.4.4.4.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.4.4.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.4.4.2.m1.1d">×</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.4.4.3"><span class="ltx_text" id="S4.T6.4.4.4.4.3.1" style="font-size:90%;">31.6412</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.4.4.4"><span class="ltx_text" id="S4.T6.4.4.4.4.4.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.5.5.5.5.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.5.5.5.5.1.m1.1"><semantics id="S4.T6.5.5.5.5.1.m1.1a"><mo id="S4.T6.5.5.5.5.1.m1.1.1" mathsize="90%" xref="S4.T6.5.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.5.5.5.5.1.m1.1b"><times id="S4.T6.5.5.5.5.1.m1.1.1.cmml" xref="S4.T6.5.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.5.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.5.5.5.5.1.m1.1d">×</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.6.6.6.6.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T6.6.6.6.6.2.m1.1"><semantics id="S4.T6.6.6.6.6.2.m1.1a"><mi id="S4.T6.6.6.6.6.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T6.6.6.6.6.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T6.6.6.6.6.2.m1.1b"><ci id="S4.T6.6.6.6.6.2.m1.1.1.cmml" xref="S4.T6.6.6.6.6.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.6.6.6.6.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T6.6.6.6.6.2.m1.1d">✓</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.6.6.3"><span class="ltx_text" id="S4.T6.6.6.6.6.3.1" style="font-size:90%;">32.8217</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.6.6.4"><span class="ltx_text" id="S4.T6.6.6.6.6.4.1" style="font-size:90%;">84%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.8.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.7.7.7.7.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T6.7.7.7.7.1.m1.1"><semantics id="S4.T6.7.7.7.7.1.m1.1a"><mi id="S4.T6.7.7.7.7.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T6.7.7.7.7.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T6.7.7.7.7.1.m1.1b"><ci id="S4.T6.7.7.7.7.1.m1.1.1.cmml" xref="S4.T6.7.7.7.7.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.7.7.7.7.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T6.7.7.7.7.1.m1.1d">✓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.8.8.8.8.2"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.8.8.8.8.2.m1.1"><semantics id="S4.T6.8.8.8.8.2.m1.1a"><mo id="S4.T6.8.8.8.8.2.m1.1.1" mathsize="90%" xref="S4.T6.8.8.8.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.8.8.8.8.2.m1.1b"><times id="S4.T6.8.8.8.8.2.m1.1.1.cmml" xref="S4.T6.8.8.8.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.8.8.8.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.8.8.8.8.2.m1.1d">×</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.8.8.3"><span class="ltx_text" id="S4.T6.8.8.8.8.3.1" style="font-size:90%;">32.0992</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.8.8.8.4"><span class="ltx_text" id="S4.T6.8.8.8.8.4.1" style="font-size:90%;">76%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.10.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T6.9.9.9.9.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T6.9.9.9.9.1.m1.1"><semantics id="S4.T6.9.9.9.9.1.m1.1a"><mi id="S4.T6.9.9.9.9.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T6.9.9.9.9.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T6.9.9.9.9.1.m1.1b"><ci id="S4.T6.9.9.9.9.1.m1.1.1.cmml" xref="S4.T6.9.9.9.9.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.9.9.9.9.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T6.9.9.9.9.1.m1.1d">✓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T6.10.10.10.10.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T6.10.10.10.10.2.m1.1"><semantics id="S4.T6.10.10.10.10.2.m1.1a"><mi id="S4.T6.10.10.10.10.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T6.10.10.10.10.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T6.10.10.10.10.2.m1.1b"><ci id="S4.T6.10.10.10.10.2.m1.1.1.cmml" xref="S4.T6.10.10.10.10.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.10.10.10.10.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T6.10.10.10.10.2.m1.1d">✓</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.10.10.10.10.3"><span class="ltx_text ltx_font_bold" id="S4.T6.10.10.10.10.3.1" style="font-size:90%;">32.9623</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.10.10.10.10.4"><span class="ltx_text ltx_font_bold" id="S4.T6.10.10.10.10.4.1" style="font-size:90%;">90%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table demonstrates that the improvements from different types of model differences (weight difference and condition difference) in W2SD can be cumulative.  It shows that combining these differences leads to better results than using either one alone.  The Pick-a-Pic dataset is used for evaluation, and the specific metric shown is the HPSv2 score, which reflects human preference.
> <details>
> <summary>read the caption</summary>
> Table 6: The improvements effects from different model differences can be cumulative. Datasets: Pick-a-Pic.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T7.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T7.2.2.2.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.2.3.1" style="font-size:80%;">Model Difference</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T7.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><math alttext="\mathcal{M}^{\mathrm{s}}" class="ltx_Math" display="inline" id="A3.T7.1.1.1.1.m1.1"><semantics id="A3.T7.1.1.1.1.m1.1a"><msup id="A3.T7.1.1.1.1.m1.1.1" xref="A3.T7.1.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A3.T7.1.1.1.1.m1.1.1.2" mathsize="80%" xref="A3.T7.1.1.1.1.m1.1.1.2.cmml">ℳ</mi><mi id="A3.T7.1.1.1.1.m1.1.1.3" mathsize="80%" mathvariant="normal" xref="A3.T7.1.1.1.1.m1.1.1.3.cmml">s</mi></msup><annotation-xml encoding="MathML-Content" id="A3.T7.1.1.1.1.m1.1b"><apply id="A3.T7.1.1.1.1.m1.1.1.cmml" xref="A3.T7.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T7.1.1.1.1.m1.1.1.1.cmml" xref="A3.T7.1.1.1.1.m1.1.1">superscript</csymbol><ci id="A3.T7.1.1.1.1.m1.1.1.2.cmml" xref="A3.T7.1.1.1.1.m1.1.1.2">ℳ</ci><ci id="A3.T7.1.1.1.1.m1.1.1.3.cmml" xref="A3.T7.1.1.1.1.m1.1.1.3">s</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.1.1.1.1.m1.1c">\mathcal{M}^{\mathrm{s}}</annotation><annotation encoding="application/x-llamapun" id="A3.T7.1.1.1.1.m1.1d">caligraphic_M start_POSTSUPERSCRIPT roman_s end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T7.2.2.2.2" style="padding-top:2pt;padding-bottom:2pt;"><math alttext="\mathcal{M}^{\mathrm{w}}" class="ltx_Math" display="inline" id="A3.T7.2.2.2.2.m1.1"><semantics id="A3.T7.2.2.2.2.m1.1a"><msup id="A3.T7.2.2.2.2.m1.1.1" xref="A3.T7.2.2.2.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A3.T7.2.2.2.2.m1.1.1.2" mathsize="80%" xref="A3.T7.2.2.2.2.m1.1.1.2.cmml">ℳ</mi><mi id="A3.T7.2.2.2.2.m1.1.1.3" mathsize="80%" mathvariant="normal" xref="A3.T7.2.2.2.2.m1.1.1.3.cmml">w</mi></msup><annotation-xml encoding="MathML-Content" id="A3.T7.2.2.2.2.m1.1b"><apply id="A3.T7.2.2.2.2.m1.1.1.cmml" xref="A3.T7.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A3.T7.2.2.2.2.m1.1.1.1.cmml" xref="A3.T7.2.2.2.2.m1.1.1">superscript</csymbol><ci id="A3.T7.2.2.2.2.m1.1.1.2.cmml" xref="A3.T7.2.2.2.2.m1.1.1.2">ℳ</ci><ci id="A3.T7.2.2.2.2.m1.1.1.3.cmml" xref="A3.T7.2.2.2.2.m1.1.1.3">w</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.2.2.2.2.m1.1c">\mathcal{M}^{\mathrm{w}}</annotation><annotation encoding="application/x-llamapun" id="A3.T7.2.2.2.2.m1.1d">caligraphic_M start_POSTSUPERSCRIPT roman_w end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T7.2.2.2.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.2.4.1" style="font-size:80%;">Results</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.2.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T7.2.2.3.1.1" rowspan="3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.3.1.1.1" style="font-size:80%;">Weight Difference</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.3.1.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.3.1.2.1" style="font-size:80%;">Finetune Mechanism</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.3.1.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.3.1.3.1" style="font-size:80%;">SDXL/SD1.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.3.1.4" style="padding-top:2pt;padding-bottom:2pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#S4.T1" style="font-size:80%;" title="In Full Parameter Fine-tuning ‣ 4.1 Weight Difference ‣ 4 Empirical Analysis ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">Tables</span> <span class="ltx_text ltx_ref_tag">1</span></a><span class="ltx_text" id="A3.T7.2.2.3.1.4.1" style="font-size:80%;"> and </span><a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#A3.T9" style="font-size:80%;" title="Table 9 ‣ C.1 Quantitative Results ‣ Appendix C Supplementary experimental results ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">9</span></a>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.2.2.4.2">
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.4.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.4.2.1.1" style="font-size:80%;">LoRA Mechanism</span></td>
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.4.2.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.4.2.2.1" style="font-size:80%;">SDXL/SD1.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.4.2.3" style="padding-top:2pt;padding-bottom:2pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#S4.T2" style="font-size:80%;" title="In Full Parameter Fine-tuning ‣ 4.1 Weight Difference ‣ 4 Empirical Analysis ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">Tables</span> <span class="ltx_text ltx_ref_tag">2</span></a><span class="ltx_text" id="A3.T7.2.2.4.2.3.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#A3.T11" style="font-size:80%;" title="Table 11 ‣ C.1 Quantitative Results ‣ Appendix C Supplementary experimental results ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">11</span></a><span class="ltx_text" id="A3.T7.2.2.4.2.3.2" style="font-size:80%;"> and </span><a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#A3.T11" style="font-size:80%;" title="Table 11 ‣ C.1 Quantitative Results ‣ Appendix C Supplementary experimental results ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">11</span></a>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.2.2.5.3">
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.5.3.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.5.3.1.1" style="font-size:80%;">Strong Experts (MoE)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.5.3.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.5.3.2.1" style="font-size:80%;">Weak experts (MoE)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.5.3.3" style="padding-top:2pt;padding-bottom:2pt;"><a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#S4.T3" style="font-size:80%;" title="In LoRA Mechanism ‣ 4.1 Weight Difference ‣ 4 Empirical Analysis ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">Table</span> <span class="ltx_text ltx_ref_tag">3</span></a></td>
</tr>
<tr class="ltx_tr" id="A3.T7.2.2.6.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T7.2.2.6.4.1" rowspan="2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.6.4.1.1" style="font-size:80%;">Condition Difference</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.6.4.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.6.4.2.1" style="font-size:80%;">High CFG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.6.4.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.6.4.3.1" style="font-size:80%;">Low CFG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.6.4.4" style="padding-top:2pt;padding-bottom:2pt;">
<a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#S4.T4" style="font-size:80%;" title="In 4.2 Condition Difference ‣ 4 Empirical Analysis ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">Tables</span> <span class="ltx_text ltx_ref_tag">4</span></a><span class="ltx_text" id="A3.T7.2.2.6.4.4.1" style="font-size:80%;"> and </span><a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#A3.T9" style="font-size:80%;" title="Table 9 ‣ C.1 Quantitative Results ‣ Appendix C Supplementary experimental results ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">9</span></a>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.2.2.7.5">
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.7.5.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.7.5.1.1" style="font-size:80%;">Refined Prompt</span></td>
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.7.5.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.7.5.2.1" style="font-size:80%;">Raw Prompt</span></td>
<td class="ltx_td ltx_align_center" id="A3.T7.2.2.7.5.3" style="padding-top:2pt;padding-bottom:2pt;"><a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#S4.T5" style="font-size:80%;" title="In Semantics of Prompts ‣ 4.2 Condition Difference ‣ 4 Empirical Analysis ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">Table</span> <span class="ltx_text ltx_ref_tag">5</span></a></td>
</tr>
<tr class="ltx_tr" id="A3.T7.2.2.8.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A3.T7.2.2.8.6.1" rowspan="2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.8.6.1.1" style="font-size:80%;">Sampling Pipeline Difference</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.8.6.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.8.6.2.1" style="font-size:80%;">ControlNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.8.6.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.8.6.3.1" style="font-size:80%;">Standard Pipeline (DDIM)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.8.6.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_text" id="A3.T7.2.2.8.6.4.1" style="font-size:80%;"> </span><a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#S4.F10" style="font-size:80%;" title="In 4.3 Sampling Pipeline Difference ‣ 4 Empirical Analysis ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">Figure</span> <span class="ltx_text ltx_ref_tag">10</span></a>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.2.2.9.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.2.2.9.7.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.9.7.1.1" style="font-size:80%;">IP-Adapter</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.2.2.9.7.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text" id="A3.T7.2.2.9.7.2.1" style="font-size:80%;">Standard Pipeline (DDIM)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.2.2.9.7.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_text" id="A3.T7.2.2.9.7.3.1" style="font-size:80%;"> </span><a class="ltx_ref" href="https://arxiv.org/html/2502.00473v2#A3.F17" style="font-size:80%;" title="In Sampling Pipeline Difference ‣ C.2 Qualitative Results ‣ Appendix C Supplementary experimental results ‣ Weak-to-Strong Diffusion with Reflection"><span class="ltx_text ltx_ref_tag">Figure</span> <span class="ltx_text ltx_ref_tag">17</span></a>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows different ways to create a 'weak-to-strong' model difference for improving diffusion models. Each row represents a different method of creating this difference, along with the specific models or techniques used, and a reference to the section in the paper where the results are discussed.  The types of model differences explored include variations in model weights (full finetuning, LoRA, Mixture of Experts), differences in conditioning (guidance scale, prompt semantics), and differences in sampling pipelines.
> <details>
> <summary>read the caption</summary>
> Table 7: Different types of model differences lead to improvements effects in different directions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T9.4.4.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T9.4.4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A3.T9.4.4.4.4.4.5"><span class="ltx_text" id="A3.T9.4.4.4.4.4.5.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.1.1.1.1">
<span class="ltx_text" id="A3.T9.1.1.1.1.1.1.1" style="font-size:90%;">HPS v2 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.1.1.1.1.1.1.m1.1"><semantics id="A3.T9.1.1.1.1.1.1.m1.1a"><mo id="A3.T9.1.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="A3.T9.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.1.1.1.1.1.1.m1.1b"><ci id="A3.T9.1.1.1.1.1.1.m1.1.1.cmml" xref="A3.T9.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.2.2.2.2.2.2">
<span class="ltx_text" id="A3.T9.2.2.2.2.2.2.1" style="font-size:90%;">AES </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.2.2.2.2.2.2.m1.1"><semantics id="A3.T9.2.2.2.2.2.2.m1.1a"><mo id="A3.T9.2.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="A3.T9.2.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.2.2.2.2.2.2.m1.1b"><ci id="A3.T9.2.2.2.2.2.2.m1.1.1.cmml" xref="A3.T9.2.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.2.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.2.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.3.3.3.3.3.3">
<span class="ltx_text" id="A3.T9.3.3.3.3.3.3.1" style="font-size:90%;">PickScore </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.3.3.3.3.3.3.m1.1"><semantics id="A3.T9.3.3.3.3.3.3.m1.1a"><mo id="A3.T9.3.3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="A3.T9.3.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.3.3.3.3.3.3.m1.1b"><ci id="A3.T9.3.3.3.3.3.3.m1.1.1.cmml" xref="A3.T9.3.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.3.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.3.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.4.4.4.4">
<span class="ltx_text" id="A3.T9.4.4.4.4.4.4.1" style="font-size:90%;">MPS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T9.4.4.4.4.4.4.m1.1"><semantics id="A3.T9.4.4.4.4.4.4.m1.1a"><mo id="A3.T9.4.4.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="A3.T9.4.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T9.4.4.4.4.4.4.m1.1b"><ci id="A3.T9.4.4.4.4.4.4.m1.1.1.cmml" xref="A3.T9.4.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T9.4.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T9.4.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T9.4.4.4.4.5.1.1"><span class="ltx_text" id="A3.T9.4.4.4.4.5.1.1.1" style="font-size:90%;">SD1.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.5.1.2"><span class="ltx_text" id="A3.T9.4.4.4.4.5.1.2.1" style="font-size:90%;">25.3601</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.5.1.3"><span class="ltx_text" id="A3.T9.4.4.4.4.5.1.3.1" style="font-size:90%;">5.2023</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.5.1.4"><span class="ltx_text" id="A3.T9.4.4.4.4.5.1.4.1" style="font-size:90%;">21.0519</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.5.1.5"><span class="ltx_text" id="A3.T9.4.4.4.4.5.1.5.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T9.4.4.4.4.6.2.1"><span class="ltx_text" id="A3.T9.4.4.4.4.6.2.1.1" style="font-size:90%;">DreamShaper</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.6.2.2"><span class="ltx_text" id="A3.T9.4.4.4.4.6.2.2.1" style="font-size:90%;">28.7845</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.6.2.3"><span class="ltx_text" id="A3.T9.4.4.4.4.6.2.3.1" style="font-size:90%;">5.7047</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.6.2.4"><span class="ltx_text" id="A3.T9.4.4.4.4.6.2.4.1" style="font-size:90%;">21.8522</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.6.2.5"><span class="ltx_text" id="A3.T9.4.4.4.4.6.2.5.1" style="font-size:90%;">47.8813</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T9.4.4.4.4.7.3.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.7.3.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.4.4.7.3.2"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.7.3.2.1" style="font-size:90%;">28.7901</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.4.4.7.3.3"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.7.3.3.1" style="font-size:90%;">5.7847</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.4.4.7.3.4"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.7.3.4.1" style="font-size:90%;">21.9057</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.4.4.4.4.7.3.5"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.7.3.5.1" style="font-size:90%;">52.1192</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.4.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A3.T9.4.4.4.4.8.4.1"><span class="ltx_text" id="A3.T9.4.4.4.4.8.4.1.1" style="font-size:90%;">SDXL</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.4.4.8.4.2"><span class="ltx_text" id="A3.T9.4.4.4.4.8.4.2.1" style="font-size:90%;">28.5536</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.4.4.8.4.3"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.8.4.3.1" style="font-size:90%;">5.4946</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.4.4.8.4.4"><span class="ltx_text" id="A3.T9.4.4.4.4.8.4.4.1" style="font-size:90%;">22.2464</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.4.4.4.4.8.4.5"><span class="ltx_text" id="A3.T9.4.4.4.4.8.4.5.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.4.4.9.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T9.4.4.4.4.9.5.1"><span class="ltx_text" id="A3.T9.4.4.4.4.9.5.1.1" style="font-size:90%;">Juggernaut-XL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.9.5.2"><span class="ltx_text" id="A3.T9.4.4.4.4.9.5.2.1" style="font-size:90%;">28.9085</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.9.5.3"><span class="ltx_text" id="A3.T9.4.4.4.4.9.5.3.1" style="font-size:90%;">5.3455</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.9.5.4"><span class="ltx_text" id="A3.T9.4.4.4.4.9.5.4.1" style="font-size:90%;">22.4906</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.4.4.4.4.9.5.5"><span class="ltx_text" id="A3.T9.4.4.4.4.9.5.5.1" style="font-size:90%;">47.5648</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.4.4.4.4.10.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T9.4.4.4.4.10.6.1"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.10.6.1.1" style="font-size:90%;">W2SD</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.4.10.6.2"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.10.6.2.1" style="font-size:90%;">29.3246</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.4.10.6.3"><span class="ltx_text" id="A3.T9.4.4.4.4.10.6.3.1" style="font-size:90%;">5.4261</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.4.10.6.4"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.10.6.4.1" style="font-size:90%;">22.5803</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.4.4.4.4.10.6.5"><span class="ltx_text ltx_font_bold" id="A3.T9.4.4.4.4.10.6.5.1" style="font-size:90%;">52.4358</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 12 presents a quantitative analysis of the Weak-to-Strong Diffusion with Reflection (W2SD) method on video generation tasks.  The model used is AnimateDiff, and the evaluation is performed using the VBench dataset.  The table shows the performance improvements achieved by W2SD across various metrics relevant to video quality. These metrics likely include aspects such as subject consistency, background consistency, motion smoothness, dynamic range, and overall aesthetic and image quality.  By comparing the results obtained with W2SD to those obtained with the standard AnimateDiff model, the table demonstrates the efficacy of W2SD in enhancing the quality of generated videos.
> <details>
> <summary>read the caption</summary>
> Table 12: Quantitative results of W2SD on the video generation task. Model: AnimateDiff. Datasets: VBench.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.00473/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00473/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}