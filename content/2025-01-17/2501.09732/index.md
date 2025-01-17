---
title: "Inference-Time Scaling for Diffusion Models beyond Scaling Denoising Steps"
summary: "Boosting diffusion model performance at inference time, this research introduces a novel framework that goes beyond simply increasing denoising steps. By cleverly searching for better noise candidates..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 NYU",]
showSummary: true
date: 2025-01-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.09732 {{< /keyword >}}
{{< keyword icon="writer" >}} Nanye Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.09732" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.09732" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.09732/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current research on generative models focuses on enhancing training-time scaling. However, inference-time scaling, which involves improving model performance with additional compute during inference, is less explored. This paper tackles this gap for diffusion models, a class of generative models known for their flexibility in adjusting inference-time computation via the number of denoising steps.  The authors point out that previous research shows the performance gains typically flatten after a few dozen denoising steps, highlighting a need for exploring different avenues to improve inference-time scaling.



This work proposes a search framework aimed at identifying better noises during the diffusion sampling process. The framework involves a search strategy across a design space defined by two axes: the verifiers that provide feedback on noise candidates and the algorithms used to find those candidates. Extensive experiments on various image generation benchmarks (class-conditioned and text-conditioned) demonstrate that increasing inference-time compute through the proposed search leads to significant quality improvements in the generated samples. The authors found that no single configuration is universally optimal; instead, each task requires a specific search setup for optimal performance. This discovery underscores the importance of carefully selecting verifiers and algorithms based on the specific application scenario.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel framework for inference-time scaling of diffusion models is proposed, enabling significant performance gains beyond simply increasing denoising steps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study identifies two key design axes for efficient inference-time scaling: the verifiers used to assess candidates and the algorithms employed to search for better noise candidates. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments demonstrate that the optimal combination of verifiers and algorithms varies considerably across different tasks and datasets, highlighting the need for task-specific configurations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in generative models because it introduces a novel framework for **inference-time scaling** in diffusion models. This expands the scope of scaling laws beyond training and opens avenues for improving the efficiency and quality of generative models, particularly in computationally expensive tasks. The findings also highlight the need for carefully designed verifiers in different application scenarios and thus provide new directions for future work.  The research is relevant to current trends of efficient AI and improving generative model performance.

------
#### Visual Insights



![](https://arxiv.org/html/2501.09732/x1.png)

> 🔼 This figure displays the results of an experiment investigating inference-time scaling in diffusion models.  It compares the performance of simply increasing the number of function evaluations (NFEs) via denoising steps against a novel search framework for better noise candidates.  Four metrics are used to evaluate performance: Fréchet Inception Distance (FID), Inception Score (IS), CLIPScore, and Aesthetic Score.  Lower FID values and higher IS, CLIPScore, and Aesthetic Score values indicate better image generation quality.  The results demonstrate that the search framework leads to significant performance improvements compared to simply increasing denoising steps, suggesting that a major source of efficiency lies in efficiently searching for good noise candidates instead of just solely relying on increasing the computational budget via more denoising steps. The improvement is observed on both ImageNet and DrawBench datasets.
> <details>
> <summary>read the caption</summary>
> Figure 1: Inference scaling beyond increasing denoising steps. We demonstrate the performance with respect to FID ↓bold-↓\boldsymbol{\downarrow}bold_↓, IS ↑bold-↑\boldsymbol{\uparrow}bold_↑ on ImageNet, and CLIPScore ↑bold-↑\boldsymbol{\uparrow}bold_↑, Aesthetic Score ↑bold-↑\boldsymbol{\uparrow}bold_↑ on DrawBench. Our search framework exhibits substantial improvements in all settings over purely scaling NFEs with increasing denoising steps.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.1.1.1.1">Verifier</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.1.1.1.2">Color</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.1.1.1.3">Shape</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.1.1.1.4">Texture</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.1.1.1.5">Spatial</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.1.1.1.6">Numeracy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.1.1.1.7">Complex</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.1.2.1.1">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.2.1.2">0.7692</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.2.1.3">0.5187</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.2.1.4">0.6287</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.2.1.5">0.2429</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.2.1.6">0.6167</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.2.1.7">0.3600</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.1.3.2.1">Aesthetic</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.3.2.2">0.7618</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.3.2.3">0.5119</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.3.2.4">0.5826</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.3.2.5">0.2593</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.3.2.6">0.6159</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.3.2.7">0.3472</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.1.4.3.1">CLIP</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.3.2">0.8009</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.3.3">0.5722</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.3.4">0.7005</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.3.5">0.2988</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.3.6">0.6457</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.3.7">0.3704</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.1.5.4.1">ImageReward</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.5.4.2.1">0.8303</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.5.4.3.1">0.6274</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.5.4.4.1">0.7364</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.5.4.5.1">0.3151</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.4.6"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.5.4.6.1">0.6789</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.4.7"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.5.4.7.1">0.3810</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.5.1.6.5.1">Ensemble</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.1.6.5.2">0.8204</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.1.6.5.3">0.5959</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.1.6.5.4">0.7197</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.1.6.5.5">0.3043</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.1.6.5.6">0.6623</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.1.6.5.7">0.3754</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of applying a search algorithm to improve the performance of a text-to-image model (FLUX-1-dev) on the T2I-CompBench benchmark.  The search algorithm uses a 'Verifier Ensemble' which combines multiple evaluation metrics. The table shows the performance of the model with and without the search algorithm, comparing different aspects of image generation quality such as color, shape, texture, spatial relationships, numeracy, and complex composition.  The 'no search' baseline uses 30 NFEs (Number of Function Evaluations) for denoising, while the search experiments use an additional 1920 NFEs allocated to the search process.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of search with FLUX.1-dev on T2I-CompBench. We use random search with Verifier Ensemble to obtain the samples; for evaluation, we use the pipeline provided in T2I-CompBench. The first row denotes the performance without search where we fix the denoising budget to be 30303030 NFEs, and for the rest, we fix the search budget to be 1920192019201920 NFEs.
> </details>





### In-depth insights


#### Inference-Time Scaling
Inference-time scaling investigates enhancing model performance not by training longer or with more data, but by allocating additional compute during the inference phase itself.  This contrasts with traditional scaling laws which focus on training-time improvements. The paper explores this concept within the context of diffusion models, a class of generative models with inherent flexibility in inference-time computation due to their iterative denoising process. **The core idea is that increased computational resources at inference time can lead to better results, going beyond simply increasing the number of denoising steps.**  The authors propose a framework with two key axes: verifiers (to evaluate sample quality) and search algorithms (to identify optimal noise candidates for the sampling process). Through experiments, they demonstrate that **inference-time scaling, particularly using search strategies, significantly improves the quality of generated samples**. This improvement is shown across different benchmarks, showcasing the viability and efficiency of this approach. Importantly, the study highlights that the optimal combination of verifiers and algorithms is task-dependent, demanding careful consideration and tailoring for specific applications.

#### Search Algorithms
The core of the proposed inference-time scaling framework lies in its innovative search algorithms.  Instead of solely relying on increasing denoising steps, these algorithms actively seek out superior noise candidates within the sampling process. **Three distinct search algorithms** are explored: Random Search (a baseline approach), Zero-Order Search (iteratively refining noise candidates via verifier feedback), and Search over Paths (iteratively refining the entire sampling trajectory).  **The choice of algorithm significantly impacts performance**, with Zero-Order and Search over Paths offering more nuanced control and often superior results compared to Random Search. A key consideration is the algorithm's ability to effectively leverage verifier feedback without overfitting to verifier biases or causing mode collapse; **finding the balance is crucial for optimal performance**. The framework's design highlights the interplay between verifier selection and algorithm choice, underscoring the need for task-specific configurations to maximize efficiency and prevent suboptimal outcomes.

#### Verifier Analysis
Verifier analysis in this context would involve a deep dive into the different methods used to assess the quality of generated samples.  It would consider not only the quantitative metrics employed, but also the inherent biases and limitations of each approach. **Key aspects would include exploring the alignment between verifiers and specific generation tasks**, investigating how different verifiers respond to various image attributes, and evaluating the effectiveness of various combinations of verifiers, such as ensembles, to gain a more holistic understanding. A crucial point to analyze is the potential for overfitting or "verifier hacking," where the generation process becomes excessively optimized for a particular verifier at the expense of overall quality. By systematically examining these factors, a comprehensive analysis can reveal valuable insights into the strengths and weaknesses of different verifiers and inform the design of more robust and effective evaluation strategies.

#### Scaling Limits
The concept of "Scaling Limits" in the context of diffusion models refers to the **inherent boundaries** in improving model performance by simply increasing computational resources, such as the number of denoising steps. While increasing computation initially yields improvements, gains eventually plateau, implying that **other strategies** are required to surpass this limit.  This plateau signifies a critical point beyond which further computational investment provides diminishing returns. The paper likely explores alternative approaches to inference-time scaling, such as **refined noise search** techniques, which offer a pathway to improved generation quality even with fixed computational budgets.  **Identifying the optimal balance** between increased denoising steps and noise search strategies is crucial for efficient and effective inference-time scaling.

#### Future Directions
Future research should explore more sophisticated search algorithms beyond random and zero-order methods, potentially incorporating gradient-based techniques or reinforcement learning for more efficient noise exploration.  **Developing task-specific verifiers** is crucial to overcome the limitations of generic verifiers and address the issue of verifier hacking.  **Investigating the interplay between training and inference-time scaling** is key to unlocking the full potential of diffusion models.  Further research should assess the **generalizability of inference-time scaling across diverse model architectures** and datasets.  Finally, a more thorough examination of the **computational cost versus quality trade-off** is needed for different search strategies and model sizes to optimize for specific application requirements.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.09732/x2.png)

> 🔼 This figure illustrates three different search algorithms used to find better noise candidates during the sampling process of diffusion models.  Random Search randomly samples noise candidates and selects the one with the best verifier score. Zero-Order Search iteratively refines noise candidates by sampling from the neighborhood of a 'pivot' noise, choosing the best candidate at each step. Search over Paths samples noise at intermediate points in the diffusion process to explore alternative sampling trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of Search Algorithms. Left: Random Search selects the best sample according to the verifier score and rejects the rest. Center: Zero-Order Search samples N𝑁Nitalic_N candidates in the neighborhood of the pivot noise at each step, and selects the best one according to the verifier to continue the search from. Right: Search over Paths sample noises at intermediate sampling steps to add to current samples to expand the sampling trajectories, and select the best one to continue the search.
> </details>



![](https://arxiv.org/html/2501.09732/x5.png)

> 🔼 This figure displays the results of experiments using oracle verifiers (FID and IS) on ImageNet with the Random Search algorithm.  The x-axis represents the total number of function evaluations (NFEs), which is the computational budget allocated to both denoising steps and the search process. The y-axis shows the performance metrics (FID and IS).  The starting points of each curve indicate the baseline performance achieved by only using the optimal number of NFEs for denoising steps (no NFEs devoted to the search). The curves demonstrate how performance improves as more NFEs are allocated to the search process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performances of Oracle Verifiers. Random Search with FID and IS on ImageNet. Inference Compute is given by the total NFEs devoted to denoising steps and search; the starting points of all curves in each and the following figures denote only devoting NFEs to denoising steps and 0 NFEs in search.
> </details>



![](https://arxiv.org/html/2501.09732/x13.png)

> 🔼 This figure displays the performance of using CLIP and DINO as supervised verifiers for a random search method on the ImageNet dataset. The x-axis represents the inference compute (measured in number of function evaluations or NFEs), while the y-axis shows the Inception Score (IS). Different lines represent different classifier-free guidance (CFG) weights (1.0, 1.35, and 1.5). CLIP-ZeroShot uses the logits from CLIP's zero-shot classifier, created using prompt engineering, while DINO-LinearHead uses a pre-trained linear classifier from the DINO model. The graph showcases how the ImageNet model's performance improves with increasing inference compute when using supervised verifiers, illustrating inference-time scaling.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performances of Supervised Verifiers. Random Search with CLIP and DINO on ImageNet across different classifier-free guidance weights. CLIP-ZeroShot refers to using the logits output by the CLIP zero-shot classifier formulated with Prompt Engineering, and DINO-LinearHead refers to using the pre-trained linear classifier provided by Oquab et al. [53].
> </details>



![](https://arxiv.org/html/2501.09732/x14.png)

> 🔼 This figure analyzes the effectiveness of self-supervised verifiers for inference-time scaling in diffusion models.  The left panel shows the strong correlation between the cosine similarity of CLIP/DINO features (comparing low-noise and final generated image features) and the classification logits produced by CLIP/DINO classifiers. This correlation justifies using feature similarity as a surrogate for classification logits, avoiding the need for explicit class labels. The right panel demonstrates the performance improvement achieved by using CLIP/DINO feature similarity scores in a Random Search framework across various classifier-free guidance (CFG) weights on an ImageNet classification task. The results highlight the efficacy of self-supervised methods, showing substantial performance gains from scaling inference compute using a search-based approach.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performances of Self-Supervised Verifiers. Left: correlation between CLIP and DINO feature similarity score and their classification logits; Right: Random Search with CLIP and DINO feature similarity score as verifiers across different classifier-free guidance weight.
> </details>



![](https://arxiv.org/html/2501.09732/x15.png)

> 🔼 This figure displays the performance of different search algorithms (Random Search, Zero-Order Search, and Search over Paths) used for improving the inference-time scaling of diffusion models.  The experiments were conducted on the ImageNet dataset, using the DINO-LinearHead verifier to evaluate the generated images.  The results are shown in terms of Fréchet Inception Distance (FID) and Inception Score (IS).  The relationship between the performance of the algorithms and the hyperparameter N (the number of noise candidates or intermediate sampling steps) is investigated.  Lower FID values and higher IS values indicate better image quality.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performances of Search Algorithms. We fix the verifier to be DINO-LinearHead and investigate the FID and IS of Zero-Order Search and Search over Paths on ImageNet. For each algorithm, we further demonstrate the relationship between N𝑁Nitalic_N and their performances.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/sit_visuals/33_grid.png)

> 🔼 This figure visualizes the impact of scaling computation on diffusion model generation quality.  Each row shows samples generated from a different model (SiT-XL, PixArt-Σ, FLUX-1.dev) using two different strategies: increasing the number of function evaluations (NFEs) in denoising steps (left three images) and increasing the NFEs in search for better noises (right four images).  The first two rows use the SiT-XL model with a DINO-LinearHead verifier, while the third row utilizes the PixArt-Σ model with a Verifier Ensemble, and the last two rows use the FLUX-1.dev model with a Verifier Ensemble. This demonstrates how increasing computational budget can improve generation quality in different ways.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualizations of Scaling Behaviors. Each row is constructed as follows: left three: sampled with increasing NFEs in denoising steps; right four: sampled with increasing NFEs in search. First two rows are sampled from SiT-XL [50] with DINO-LinearHead, third row is sampled from PixArt-ΣΣ\Sigmaroman_Σ [8] with Verifier Ensemble, and last two rows are sampled from FLUX-1.dev [41] with Verifier Ensemble.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/sit_visuals/89_grid.png)

> 🔼 This figure showcases the performance improvements achieved by incorporating a search process into the inference stage of the FLUX-1-dev model, a cutting-edge text-to-image diffusion model.  The experiment uses a fixed search budget of 3840 NFEs (Number of Function Evaluations) with a random search strategy, and compares the results to model generations made without any search at all. The results are presented as percentage improvements across various evaluation metrics, including the aesthetic score, CLIP score, ImageReward score, and a combined Verifier Ensemble score. This provides a comprehensive assessment of how effectively the search method enhances the quality of generated images.
> <details>
> <summary>read the caption</summary>
> Figure 8: Performances of Search with FLUX.1-dev at inference-time. We fix the search budget to be 3840384038403840 NFEs with random search, and demonstrate the relative performance gain (%) with generation without any search budget.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/sit_visuals/250_grid.png)

> 🔼 Figure 9 illustrates the scalability of the proposed inference-time scaling method using the FLUX-1-dev model on the DrawBench dataset.  The experiment uses random search with a Verifier Ensemble to evaluate performance.  The graph displays the relative improvement in various metrics (Aesthetic, CLIPScore, ImageReward, and LLM Grader) when using the search method compared to generation without any search.  The results show that the improvement is consistent across all four metrics, showcasing the scalability and effectiveness of the search method even with a more complex, multi-faceted dataset like DrawBench. The scaling behavior is similar to that observed earlier in experiments using the ImageNet dataset. This demonstrates the generalizability of the inference-time scaling framework across different datasets and metrics.
> <details>
> <summary>read the caption</summary>
> Figure 9: Scalability of search with FLUX.1-dev on DrawBench. We use random search with Verifier Ensemble to obtain the results, and demonstrate the relative performance gain (%) with generation without any search budget. Similar scaling behavior to ImageNet setting is observed across different metrics.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/sit_visuals/270_grid.png)

> 🔼 This figure shows how the number of function evaluations (NFEs) used in a single search iteration affects the performance of the SiT-XL diffusion model on the ImageNet dataset.  The denoising budget (the number of NFEs used in the denoising process) is held constant at 250.  The plot displays how different allocations of NFEs to the search process affect the model's final performance.  It shows that there are regions of optimal NFEs/iter, with diminishing returns when more NFEs/iter are used.  The results show different performance curves for different NFEs/iter values, helping to identify the most computationally efficient way to balance search and denoising.
> <details>
> <summary>read the caption</summary>
> Figure 10: Performance of scaling compute for single search iteration. We use the SiT-XL model, fix the denoising budget to 250250250250 NFE, and demonstrate the performance differences with respect to the NFEs devoted to a single search iteration.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/sit_visuals/429_grid.png)

> 🔼 This figure demonstrates the effectiveness of inference-time scaling for different-sized diffusion models on the ImageNet dataset.  It compares the performance of two search methods (Zero-Order Search and Random Search) when applied to three different sizes of the SiT model (SiT-B, SiT-L, and SiT-XL). The performance metric used is the Frechet Inception Distance (FID) and the Inception Score (IS). For each model size, the plot shows how the FID and IS improve as the computation budget (measured in GFLOPs) allocated to the search process increases. The left panel shows the results obtained using Zero-Order Search (ZO-4) with a DINO-LinearHead verifier, and the right panel shows the results of Random Search with a DINO-LinearHead verifier. By comparing the performance across different model sizes and search methods, the figure helps to illustrate how effectively inference-time compute can be used to enhance the quality of images generated by diffusion models, particularly when resources are limited.
> <details>
> <summary>read the caption</summary>
> Figure 11: Performance of our search methods across different model sizes (SiT-{B,L,XL}) on ImageNet. We use the best set up for FID and IS separately. Left: ZO-4 with DINO-LinearHead.; Right: Random Search with DINO-LinearHead.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/sit_visuals/587_grid.png)

> 🔼 This figure demonstrates the effect of tuning two hyperparameters on the performance of two different search algorithms used to improve the quality of samples generated by a diffusion model.  The left panel shows the impact of varying step sizes (λ) in the Zero-Order Search algorithm on the FID (Fréchet Inception Distance) and IS (Inception Score) metrics. The right panel illustrates how changing the path lengths (L) in the Search Over Paths algorithm affects these same metrics. Both experiments utilize the SiT-XL model and employ DINO classification logits as the verifier.  The results highlight the interplay between hyperparameter tuning, algorithm choice, and overall model performance.
> <details>
> <summary>read the caption</summary>
> Figure 12: Performance of tuning additional parameters for algorithms.  Left: Zero-Order Search with step sizes λ𝜆\lambdaitalic_λ; Right: Search Over Paths with lengths L𝐿Litalic_L. We use SiT-XL and fix the verifier to be the classification logits from DINO.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/sit_visuals/980_grid.png)

> 🔼 This figure displays the results of applying random search on ImageNet using the SiT-XL model. The search process was guided by either DINO or CLIP classification logits. The figure presents four key metrics: FID (Fréchet Inception Distance), IS (Inception Score), Precision, and Recall, which are evaluated to assess the quality and diversity of the generated images.  The x-axis likely represents increasing computational cost, as more samples are processed during the search, and the y-axis shows the corresponding metric scores. The plots visualize how these metrics change as the amount of computation allocated to the search is increased, showcasing the trade-off between computation cost and image quality.
> <details>
> <summary>read the caption</summary>
> Figure 13: Performance of Random Search on ImageNet against DINO and CLIP classification logits. We use random search on the SiT-XL model and report FID, IS, Precision, and Recall.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/flux_visuals/194_grid.jpg)

> 🔼 This figure compares the performance of two search algorithms, Zero-Order Search and First-Order Search, used to improve the quality of samples generated by a diffusion model.  The SiT-XL model was used with the DINO-LinearHead verifier.  Zero-Order Search iteratively refines noise candidates based on verifier feedback, while First-Order Search uses the gradient of the verifier to guide the refinement. The x-axis represents the computational cost (in number of function evaluations), and the y-axis shows the resulting FID and IS scores. The comparison is made at approximately the same computational cost for both algorithms; the cost of the backward pass in First-Order Search is estimated to be roughly three times that of the forward pass.
> <details>
> <summary>read the caption</summary>
> Figure 14: Comparison between Zero-Order and First-Order Search. We use the SiT-XL model and fix the verifier to be the DINO-LinearHead. The Inference Compute is aligned via the rough estimation of cost(backward) ∼similar-to\sim∼ 3×\times×cost(forward).
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/flux_visuals/123_grid.jpg)

> 🔼 Figure 15 presents a correlation analysis between three self-supervised verifiers (CLIP, DINO, and SigLIP) and CLIPScore, a human-evaluated metric for image-text alignment, using samples generated by the FLUX-1-dev model. The figure displays the relationships using scatter plots to show how well the similarity scores calculated by each of the self-supervised verifiers aligns with human judgment (CLIPScore). This analysis helps to understand the biases of each verifier and how well they are aligned with human perception of the quality of generated images.
> <details>
> <summary>read the caption</summary>
> Figure 15: From Left to Right: Correlation of CLIP, DINO, and SigLIP feature similarity score with CLIPScore. All points are generated from FLUX.1-dev.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/flux_visuals/126_grid.jpg)

> 🔼 This figure shows the detailed prompt used to instruct the large language model (LLM) grader on how to evaluate generated images.  The prompt outlines five key aspects to assess: Accuracy to Prompt, Creativity and Originality, Visual Quality and Realism, Consistency and Cohesion, and Emotional or Thematic Resonance.  For each aspect, the grader is instructed to provide a score from 0 to 10 and a brief justification.  Finally, the grader is asked to provide an overall weighted score reflecting the overall image quality.
> <details>
> <summary>read the caption</summary>
> Figure 16: The detailed prompt for evaluation with the LLM Grader.
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/flux_visuals/149_grid.jpg)

> 🔼 This figure visualizes the impact of increasing inference-time compute on the quality of generated images. The left three images are generated by increasing the number of denoising steps while keeping the inference-time compute constant. The right three images are generated by increasing the inference-time compute through search, while maintaining a constant number of denoising steps.  The goal is to show that increasing computation via search can improve image quality beyond simply increasing the number of denoising steps.
> <details>
> <summary>read the caption</summary>
> Figure 17: “loggerhead turtle” (33)
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/flux_visuals/145_grid.jpg)

> 🔼 Figure 18 presents a series of images generated using the SIT-XL model depicting a Sulphur-crested cockatoo. The top row shows images generated by increasing the number of denoising steps in the diffusion process. This demonstrates the model's improvement in image quality as more computational resources are allocated. The bottom row showcases images generated using the proposed search framework, which iteratively refines noise candidates to enhance image quality with increased computational investment.  The improvement shown in the bottom row highlights the effectiveness of the search framework in improving the generation performance beyond simply increasing the number of denoising steps.
> <details>
> <summary>read the caption</summary>
> Figure 18: “Sulphur-crested cockatoo” (89)
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/flux_visuals/183_grid.jpg)

> 🔼 Figure 19 displays six images of Siberian huskies generated using the SiT-XL model. The first three images were generated by increasing the number of denoising steps from 10 to 250, illustrating how the image quality improves with increased computational resources during the denoising process. The last three images were generated using Zero-Order Search with the DINO classification verifier, where the number of NFEs invested were increased from 450 to 6650.  This demonstrates the effect of the search process on image quality, highlighting that the quality further improves when increased computational resources are allocated to the noise search process during inference. 
> <details>
> <summary>read the caption</summary>
> Figure 19: “Siberian husky” (250)
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/flux_visuals/152_grid.jpg)

> 🔼 This figure visualizes the results of inference-time scaling experiments using the 'Arctic wolf' prompt.  The images showcase the variations in generated images when increasing the number of function evaluations (NFEs) in the denoising process versus increasing NFEs through a search process for improved noise selection. The left three images are generated by simply increasing denoising steps; the right four images are produced using a search algorithm to find better noises for the sampling process. This comparison highlights the impact of the search method on image quality and diversity.
> <details>
> <summary>read the caption</summary>
> Figure 20: “Arctic wolf” (270)
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/pixart_visuals/1_grid.jpg)

> 🔼 This figure shows six different images generated by a text-to-image model when prompted with the word 'baseball'.  The images demonstrate variations in style, perspective, and level of detail, highlighting the model's ability to generate multiple plausible interpretations of the prompt. Three images on the left are generated by simply increasing the number of denoising steps; and the three images on the right are generated by employing a search algorithm to identify better sampling noises in the diffusion process, demonstrating the effectiveness of the search method in improving the quality of the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 21: “baseball” (429)
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/pixart_visuals/3_grid.jpg)

> 🔼 This figure shows six different images generated by the FLUX-1.dev model using the Verifier Ensemble for the prompt 'hammer'.  The left three images show the result of using the standard denoising process with an increasing number of denoising steps (10, 20, and 250).  The right three images display the outputs of using the Zero-Order search method with increased inference-time compute (450, 1850, and 6650). This illustrates how increased computation during inference time, through search, can lead to improved image quality in diffusion models.
> <details>
> <summary>read the caption</summary>
> Figure 22: “hammer” (587)
> </details>



![](https://arxiv.org/html/2501.09732/extracted/6136690/figures/pixart_visuals/4_grid.jpg)

> 🔼 This figure shows six images generated by a text-to-image model using the prompt 'volcano'. The left three images demonstrate the visual results as the number of denoising steps increases (10, 20, 250). The right three images illustrate the impact of increasing inference-time compute through search using a zero-order search method with the DINO classifier as a verifier. This visualization demonstrates how the quality and detail of the generated image improve with both increased denoising steps and increased inference computation in the search process.
> <details>
> <summary>read the caption</summary>
> Figure 23: “volcano” (980)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.1.1">Verifier</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.1.1.1.2">Aesthetic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.1.1.1.3">CLIPScore</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.1.1.1.4">ImageReward</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.1.1.1.5">LLM Grader</th>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T2.5.1.2.2.1">-</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.2">5.79</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.3">0.71</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.4">0.97</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.5">84.29</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.1.3.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.1.3.1.1">Aesthetic + Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.2.1">6.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.3">0.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.4">0.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.5">86.04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.4.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.1.4.2.1">+ ZO-2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.2">6.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.3">0.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.4">0.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.5">85.90</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.5.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.1.5.3.1">+ Paths-2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.2">6.31</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.3">0.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.4">0.95</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.5">85.86</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.6.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.1.6.4.1">CLIPScore + Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.6.4.2">5.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.6.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.6.4.3.1">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.6.4.4">1.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.6.4.5">86.15</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.7.5">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.1.7.5.1">+ ZO-2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.5.2">5.72</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.5.3">0.81</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.5.4">1.16</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.5.5">85.48</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.8.6">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.1.8.6.1">+ Paths-2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.6.2">5.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.6.3">0.81</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.6.4">1.14</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.6.5">85.45</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.9.7">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.1.9.7.1">ImageReward + Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.9.7.2">5.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.9.7.3">0.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.9.7.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.9.7.4.1">1.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.9.7.5">87.09</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.10.8">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.1.10.8.1">+ ZO-2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.8.2">5.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.8.3">0.73</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.8.4">1.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.8.5">86.22</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.11.9">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.1.11.9.1">+ Paths-2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.9.2">5.76</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.9.3">0.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.9.4">1.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.9.5">86.33</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.12.10">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.1.12.10.1">Ensemble + Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.12.10.2">6.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.12.10.3">0.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.12.10.4">1.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.12.10.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.12.10.5.1">88.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.13.11">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T2.5.1.13.11.1">+ ZO-2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.11.2">5.99</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.11.3">0.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.11.4">1.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.11.5">87.25</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.14.12">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S4.T2.5.1.14.12.1">+ Paths-2</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.12.2">6.02</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.12.3">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.12.4">1.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.12.5">86.84</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different search algorithms (Random Search, Zero-Order Search with 2 neighbors, and Search over Paths with 2 paths) combined with various verifiers (Aesthetic, CLIPScore, ImageReward, and a Verifier Ensemble) for text-to-image generation using the FLUX-1-dev model on the DrawBench dataset.  The first row shows baseline performance without any search, using 30 NFEs for denoising.  The remaining rows show the results of applying the search algorithms, with 2880 NFEs allocated to the search process.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of search algorithms with different verifiers on DrawBench. The results are obtained from FLUX.1-dev evaluated on DrawBench. The first row denotes the performance without search where we fix denoising budget to be 30303030 NFEs, and for the rest we fix search budget to be 2880288028802880 NFEs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.1.2">Aesthetic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.1.3">CLIP</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.1.4">PickScore</th>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.5.1.2.2.1">SDXL</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.2">5.56</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.3">0.73</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.4">22.39</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.1.3.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.1.3.1.1">+ DPO</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.2">5.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.3">0.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.4">22.54</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.4.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S4.T3.5.1.4.2.1">+ DPO &amp; Search</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.4.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.4.2.2.1">5.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.4.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.4.2.3.1">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.4.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.4.2.4.1">23.54</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of applying inference-time scaling to a pre-trained Stable Diffusion XL (SDXL) model that has been fine-tuned using a diffusion-based preference optimization (DPO) technique.  The experiment uses the DrawBench dataset, which is designed to assess the ability of models to generate realistic and high-quality images from complex prompts. Random search was employed with the verifier ensemble, ensuring a holistic evaluation across various metrics. The table compares the performance when only denoising steps are used (no search) to various levels of computation investment for the search process.  The denoising budget was kept constant at 40 NFEs, while the search budget was varied, indicating how much additional computational power is being used for searching improved noise parameters during the sampling phase, which improves sample quality.  The metrics reported are Aesthetic, CLIPScore, and ImageReward, all of which capture different aspects of image quality.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of Search with DPO-finetuned SDXL. We use random search with Verifier Ensemble on DrawBench to obtain the result. We set the denoising budget to 40404040 NFEs, and search budget to 1280128012801280 NFEs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.4.4.5.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.5.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.4.4.5.1.2">Compute Ratio</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.3">Aesthetic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.4">CLIP</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.5">ImageReward</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.6">LLM Grader</th>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T4.4.4.6.2.1">FLUX</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T4.4.4.6.2.2">1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.3">5.79</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.4">0.71</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.5">0.97</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.6">84.29</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.1.1">PixArt-<math alttext="\Sigma" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mi id="S5.T4.1.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T4.1.1.1.1.m1.1.1.cmml">Σ</mi><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">Σ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\Sigma</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">roman_Σ</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.2.2.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.2.m1.1.1" xref="S5.T4.2.2.2.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><csymbol cd="latexml" id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">∼</annotation></semantics></math>0.06</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.3">5.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.4">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.5">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2.6">84.67</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T4.3.3.3.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T4.3.3.3.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.m1.1"><semantics id="S5.T4.3.3.3.1.m1.1a"><mo id="S5.T4.3.3.3.1.m1.1.1" xref="S5.T4.3.3.3.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.m1.1b"><csymbol cd="latexml" id="S5.T4.3.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.m1.1d">∼</annotation></semantics></math>0.09</th>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.3">6.03</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.4">0.71</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.5">0.97</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.6">85.62</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S5.T4.4.4.4.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T4.4.4.4.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S5.T4.4.4.4.1.m1.1"><semantics id="S5.T4.4.4.4.1.m1.1a"><mo id="S5.T4.4.4.4.1.m1.1.1" xref="S5.T4.4.4.4.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.1.m1.1b"><csymbol cd="latexml" id="S5.T4.4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.1.m1.1d">∼</annotation></semantics></math>2.59</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.3"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.3.1">6.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.4.1">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.5"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.5.1">1.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.6"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.6.1">86.95</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the PixArt-Σ model with and without the proposed inference-time search method.  The baseline is the FLUX model without search.  The total compute used by the FLUX model to generate a single sample is used as a standard unit, against which the compute used by PixArt-Σ (with varying search intensity) is scaled. Note that the compute estimations provided in the table are approximations.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison between PixArt-ΣΣ\Sigmaroman_Σ when search with Verifier Ensemble and FLUX without search. We use the total compute consumed by FLUX to generate one sample as the standard unit and scale the compute used by PixArt-ΣΣ\Sigmaroman_Σ accordingly. These total compute estimates are based on our best approximation and may not be entirely precise.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.14.14.15.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.14.14.15.1.1"><span class="ltx_text ltx_font_italic" id="A1.T5.14.14.15.1.1.1">Configs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.14.14.15.1.2"><span class="ltx_text ltx_font_italic" id="A1.T5.14.14.15.1.2.1">Class-conditioned</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T5.14.14.15.1.3"><span class="ltx_text ltx_font_italic" id="A1.T5.14.14.15.1.3.1">Text-conditioned</span></th>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.1">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T5.1.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T5.1.1.1.3">SiT-XL</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T5.1.1.1.4">FLUX.1-dev</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T5.1.1.1.1">PixArt-<math alttext="\Sigma" class="ltx_Math" display="inline" id="A1.T5.1.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.1.m1.1a"><mi id="A1.T5.1.1.1.1.m1.1.1" mathvariant="normal" xref="A1.T5.1.1.1.1.m1.1.1.cmml">Σ</mi><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.1.m1.1b"><ci id="A1.T5.1.1.1.1.m1.1.1.cmml" xref="A1.T5.1.1.1.1.m1.1.1">Σ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.1.m1.1c">\Sigma</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.1.m1.1d">roman_Σ</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T5.2.2.2.2">ODE solver</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.2.2.2.1">2<math alttext="{}^{\text{nd}}" class="ltx_Math" display="inline" id="A1.T5.2.2.2.1.m1.1"><semantics id="A1.T5.2.2.2.1.m1.1a"><msup id="A1.T5.2.2.2.1.m1.1.1" xref="A1.T5.2.2.2.1.m1.1.1.cmml"><mi id="A1.T5.2.2.2.1.m1.1.1a" xref="A1.T5.2.2.2.1.m1.1.1.cmml"></mi><mtext id="A1.T5.2.2.2.1.m1.1.1.1" xref="A1.T5.2.2.2.1.m1.1.1.1a.cmml">nd</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.2.1.m1.1b"><apply id="A1.T5.2.2.2.1.m1.1.1.cmml" xref="A1.T5.2.2.2.1.m1.1.1"><ci id="A1.T5.2.2.2.1.m1.1.1.1a.cmml" xref="A1.T5.2.2.2.1.m1.1.1.1"><mtext id="A1.T5.2.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T5.2.2.2.1.m1.1.1.1">nd</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.2.1.m1.1c">{}^{\text{nd}}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.2.1.m1.1d">start_FLOATSUPERSCRIPT nd end_FLOATSUPERSCRIPT</annotation></semantics></math> order Heun</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.2.2.2.3">Euler</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.2.2.2.4">DDIM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.5.5.5.4">NFEs/iter</th>
<td class="ltx_td ltx_align_center" id="A1.T5.3.3.3.1"><math alttext="50^{\dagger}" class="ltx_Math" display="inline" id="A1.T5.3.3.3.1.m1.1"><semantics id="A1.T5.3.3.3.1.m1.1a"><msup id="A1.T5.3.3.3.1.m1.1.1" xref="A1.T5.3.3.3.1.m1.1.1.cmml"><mn id="A1.T5.3.3.3.1.m1.1.1.2" xref="A1.T5.3.3.3.1.m1.1.1.2.cmml">50</mn><mo id="A1.T5.3.3.3.1.m1.1.1.3" xref="A1.T5.3.3.3.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.3.1.m1.1b"><apply id="A1.T5.3.3.3.1.m1.1.1.cmml" xref="A1.T5.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.3.3.3.1.m1.1.1.1.cmml" xref="A1.T5.3.3.3.1.m1.1.1">superscript</csymbol><cn id="A1.T5.3.3.3.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.3.3.3.1.m1.1.1.2">50</cn><ci id="A1.T5.3.3.3.1.m1.1.1.3.cmml" xref="A1.T5.3.3.3.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.3.1.m1.1c">50^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.3.1.m1.1d">50 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.4.4.2"><math alttext="30" class="ltx_Math" display="inline" id="A1.T5.4.4.4.2.m1.1"><semantics id="A1.T5.4.4.4.2.m1.1a"><mn id="A1.T5.4.4.4.2.m1.1.1" xref="A1.T5.4.4.4.2.m1.1.1.cmml">30</mn><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.4.2.m1.1b"><cn id="A1.T5.4.4.4.2.m1.1.1.cmml" type="integer" xref="A1.T5.4.4.4.2.m1.1.1">30</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.4.2.m1.1c">30</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.4.2.m1.1d">30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.3"><math alttext="30" class="ltx_Math" display="inline" id="A1.T5.5.5.5.3.m1.1"><semantics id="A1.T5.5.5.5.3.m1.1a"><mn id="A1.T5.5.5.5.3.m1.1.1" xref="A1.T5.5.5.5.3.m1.1.1.cmml">30</mn><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.5.3.m1.1b"><cn id="A1.T5.5.5.5.3.m1.1.1.cmml" type="integer" xref="A1.T5.5.5.5.3.m1.1.1">30</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.5.3.m1.1c">30</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.5.3.m1.1d">30</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.8.8.8.4">final denoising steps</th>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.6.1"><math alttext="250" class="ltx_Math" display="inline" id="A1.T5.6.6.6.1.m1.1"><semantics id="A1.T5.6.6.6.1.m1.1a"><mn id="A1.T5.6.6.6.1.m1.1.1" xref="A1.T5.6.6.6.1.m1.1.1.cmml">250</mn><annotation-xml encoding="MathML-Content" id="A1.T5.6.6.6.1.m1.1b"><cn id="A1.T5.6.6.6.1.m1.1.1.cmml" type="integer" xref="A1.T5.6.6.6.1.m1.1.1">250</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.6.6.1.m1.1c">250</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.6.6.1.m1.1d">250</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.7.7.7.2"><math alttext="30" class="ltx_Math" display="inline" id="A1.T5.7.7.7.2.m1.1"><semantics id="A1.T5.7.7.7.2.m1.1a"><mn id="A1.T5.7.7.7.2.m1.1.1" xref="A1.T5.7.7.7.2.m1.1.1.cmml">30</mn><annotation-xml encoding="MathML-Content" id="A1.T5.7.7.7.2.m1.1b"><cn id="A1.T5.7.7.7.2.m1.1.1.cmml" type="integer" xref="A1.T5.7.7.7.2.m1.1.1">30</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.7.7.2.m1.1c">30</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.7.7.2.m1.1d">30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.8.3"><math alttext="30" class="ltx_Math" display="inline" id="A1.T5.8.8.8.3.m1.1"><semantics id="A1.T5.8.8.8.3.m1.1a"><mn id="A1.T5.8.8.8.3.m1.1.1" xref="A1.T5.8.8.8.3.m1.1.1.cmml">30</mn><annotation-xml encoding="MathML-Content" id="A1.T5.8.8.8.3.m1.1b"><cn id="A1.T5.8.8.8.3.m1.1.1.cmml" type="integer" xref="A1.T5.8.8.8.3.m1.1.1">30</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.8.8.3.m1.1c">30</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.8.8.3.m1.1d">30</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.11.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.11.11.11.4">guidance scale</th>
<td class="ltx_td ltx_align_center" id="A1.T5.9.9.9.1"><math alttext="1.0^{\ddagger}" class="ltx_Math" display="inline" id="A1.T5.9.9.9.1.m1.1"><semantics id="A1.T5.9.9.9.1.m1.1a"><msup id="A1.T5.9.9.9.1.m1.1.1" xref="A1.T5.9.9.9.1.m1.1.1.cmml"><mn id="A1.T5.9.9.9.1.m1.1.1.2" xref="A1.T5.9.9.9.1.m1.1.1.2.cmml">1.0</mn><mo id="A1.T5.9.9.9.1.m1.1.1.3" xref="A1.T5.9.9.9.1.m1.1.1.3.cmml">‡</mo></msup><annotation-xml encoding="MathML-Content" id="A1.T5.9.9.9.1.m1.1b"><apply id="A1.T5.9.9.9.1.m1.1.1.cmml" xref="A1.T5.9.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T5.9.9.9.1.m1.1.1.1.cmml" xref="A1.T5.9.9.9.1.m1.1.1">superscript</csymbol><cn id="A1.T5.9.9.9.1.m1.1.1.2.cmml" type="float" xref="A1.T5.9.9.9.1.m1.1.1.2">1.0</cn><ci id="A1.T5.9.9.9.1.m1.1.1.3.cmml" xref="A1.T5.9.9.9.1.m1.1.1.3">‡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.9.9.9.1.m1.1c">1.0^{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.9.9.9.1.m1.1d">1.0 start_POSTSUPERSCRIPT ‡ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.10.10.10.2"><math alttext="3.5" class="ltx_Math" display="inline" id="A1.T5.10.10.10.2.m1.1"><semantics id="A1.T5.10.10.10.2.m1.1a"><mn id="A1.T5.10.10.10.2.m1.1.1" xref="A1.T5.10.10.10.2.m1.1.1.cmml">3.5</mn><annotation-xml encoding="MathML-Content" id="A1.T5.10.10.10.2.m1.1b"><cn id="A1.T5.10.10.10.2.m1.1.1.cmml" type="float" xref="A1.T5.10.10.10.2.m1.1.1">3.5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.10.10.10.2.m1.1c">3.5</annotation><annotation encoding="application/x-llamapun" id="A1.T5.10.10.10.2.m1.1d">3.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.11.11.11.3"><math alttext="4.5" class="ltx_Math" display="inline" id="A1.T5.11.11.11.3.m1.1"><semantics id="A1.T5.11.11.11.3.m1.1a"><mn id="A1.T5.11.11.11.3.m1.1.1" xref="A1.T5.11.11.11.3.m1.1.1.cmml">4.5</mn><annotation-xml encoding="MathML-Content" id="A1.T5.11.11.11.3.m1.1b"><cn id="A1.T5.11.11.11.3.m1.1.1.cmml" type="float" xref="A1.T5.11.11.11.3.m1.1.1">4.5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.11.11.11.3.m1.1c">4.5</annotation><annotation encoding="application/x-llamapun" id="A1.T5.11.11.11.3.m1.1d">4.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.14.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T5.14.14.14.4">resolution</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.12.12.12.1"><math alttext="256" class="ltx_Math" display="inline" id="A1.T5.12.12.12.1.m1.1"><semantics id="A1.T5.12.12.12.1.m1.1a"><mn id="A1.T5.12.12.12.1.m1.1.1" xref="A1.T5.12.12.12.1.m1.1.1.cmml">256</mn><annotation-xml encoding="MathML-Content" id="A1.T5.12.12.12.1.m1.1b"><cn id="A1.T5.12.12.12.1.m1.1.1.cmml" type="integer" xref="A1.T5.12.12.12.1.m1.1.1">256</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.12.12.12.1.m1.1c">256</annotation><annotation encoding="application/x-llamapun" id="A1.T5.12.12.12.1.m1.1d">256</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.13.13.13.2"><math alttext="1024" class="ltx_Math" display="inline" id="A1.T5.13.13.13.2.m1.1"><semantics id="A1.T5.13.13.13.2.m1.1a"><mn id="A1.T5.13.13.13.2.m1.1.1" xref="A1.T5.13.13.13.2.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A1.T5.13.13.13.2.m1.1b"><cn id="A1.T5.13.13.13.2.m1.1.1.cmml" type="integer" xref="A1.T5.13.13.13.2.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.13.13.13.2.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A1.T5.13.13.13.2.m1.1d">1024</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.14.14.14.3"><math alttext="1024" class="ltx_Math" display="inline" id="A1.T5.14.14.14.3.m1.1"><semantics id="A1.T5.14.14.14.3.m1.1a"><mn id="A1.T5.14.14.14.3.m1.1.1" xref="A1.T5.14.14.14.3.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A1.T5.14.14.14.3.m1.1b"><cn id="A1.T5.14.14.14.3.m1.1.1.cmml" type="integer" xref="A1.T5.14.14.14.3.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.14.14.14.3.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A1.T5.14.14.14.3.m1.1d">1024</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the default settings used for generating class-conditioned and text-conditioned images using diffusion models.  It specifies the ODE solver, number of function evaluations per iteration (NFEs/iter), the number of final denoising steps, the guidance scale, and the image resolution used for different models in the paper's experiments. Note that some rows contain annotations indicating where in the paper variations of these settings are explored: the NFEs/iter value may differ in the experiments of Figure 10; and the guidance scale may be different in the experiments reported in Figure 4.
> <details>
> <summary>read the caption</summary>
> Table 5: Default sampling settings for Class-conditioned and Text-conditioned generation. ††\dagger† In Figure 10 we report numbers with different NFEs/iter; ‡‡\ddagger‡ In Figure 4 we report results with different guidance scales.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.6.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T6.6.6.7.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.6.6.7.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.6.6.7.1.2"><span class="ltx_text ltx_font_italic" id="A1.T6.6.6.7.1.2.1">Description</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.1.2">initial paths</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.1.1"><math alttext="N" class="ltx_Math" display="inline" id="A1.T6.1.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.1.m1.1a"><mi id="A1.T6.1.1.1.1.m1.1.1" xref="A1.T6.1.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.1.m1.1b"><ci id="A1.T6.1.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.1.m1.1d">italic_N</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.1.3">The number of paths to start the search with.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.2.2">
<td class="ltx_td ltx_align_left" id="A1.T6.2.2.2.2">paths width</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.2.2.1"><math alttext="M" class="ltx_Math" display="inline" id="A1.T6.2.2.2.1.m1.1"><semantics id="A1.T6.2.2.2.1.m1.1a"><mi id="A1.T6.2.2.2.1.m1.1.1" xref="A1.T6.2.2.2.1.m1.1.1.cmml">M</mi><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.2.1.m1.1b"><ci id="A1.T6.2.2.2.1.m1.1.1.cmml" xref="A1.T6.2.2.2.1.m1.1.1">𝑀</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.2.1.m1.1c">M</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.2.1.m1.1d">italic_M</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T6.2.2.2.3">The number of noises to sample within each path.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.3.3">
<td class="ltx_td ltx_align_left" id="A1.T6.3.3.3.2">search start</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.3.3.1"><math alttext="\sigma" class="ltx_Math" display="inline" id="A1.T6.3.3.3.1.m1.1"><semantics id="A1.T6.3.3.3.1.m1.1a"><mi id="A1.T6.3.3.3.1.m1.1.1" xref="A1.T6.3.3.3.1.m1.1.1.cmml">σ</mi><annotation-xml encoding="MathML-Content" id="A1.T6.3.3.3.1.m1.1b"><ci id="A1.T6.3.3.3.1.m1.1.1.cmml" xref="A1.T6.3.3.3.1.m1.1.1">𝜎</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.3.3.3.1.m1.1c">\sigma</annotation><annotation encoding="application/x-llamapun" id="A1.T6.3.3.3.1.m1.1d">italic_σ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T6.3.3.3.3">The time to start search.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.4">
<td class="ltx_td ltx_align_left" id="A1.T6.4.4.4.2">backward stepsize</td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.4.4.1"><math alttext="\Delta b" class="ltx_Math" display="inline" id="A1.T6.4.4.4.1.m1.1"><semantics id="A1.T6.4.4.4.1.m1.1a"><mrow id="A1.T6.4.4.4.1.m1.1.1" xref="A1.T6.4.4.4.1.m1.1.1.cmml"><mi id="A1.T6.4.4.4.1.m1.1.1.2" mathvariant="normal" xref="A1.T6.4.4.4.1.m1.1.1.2.cmml">Δ</mi><mo id="A1.T6.4.4.4.1.m1.1.1.1" xref="A1.T6.4.4.4.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T6.4.4.4.1.m1.1.1.3" xref="A1.T6.4.4.4.1.m1.1.1.3.cmml">b</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.4.4.4.1.m1.1b"><apply id="A1.T6.4.4.4.1.m1.1.1.cmml" xref="A1.T6.4.4.4.1.m1.1.1"><times id="A1.T6.4.4.4.1.m1.1.1.1.cmml" xref="A1.T6.4.4.4.1.m1.1.1.1"></times><ci id="A1.T6.4.4.4.1.m1.1.1.2.cmml" xref="A1.T6.4.4.4.1.m1.1.1.2">Δ</ci><ci id="A1.T6.4.4.4.1.m1.1.1.3.cmml" xref="A1.T6.4.4.4.1.m1.1.1.3">𝑏</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.4.4.4.1.m1.1c">\Delta b</annotation><annotation encoding="application/x-llamapun" id="A1.T6.4.4.4.1.m1.1d">roman_Δ italic_b</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T6.4.4.4.3">The length of time interval to run ODE solver.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.5">
<td class="ltx_td ltx_align_left" id="A1.T6.5.5.5.2">forward stepsize</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.1"><math alttext="\Delta f" class="ltx_Math" display="inline" id="A1.T6.5.5.5.1.m1.1"><semantics id="A1.T6.5.5.5.1.m1.1a"><mrow id="A1.T6.5.5.5.1.m1.1.1" xref="A1.T6.5.5.5.1.m1.1.1.cmml"><mi id="A1.T6.5.5.5.1.m1.1.1.2" mathvariant="normal" xref="A1.T6.5.5.5.1.m1.1.1.2.cmml">Δ</mi><mo id="A1.T6.5.5.5.1.m1.1.1.1" xref="A1.T6.5.5.5.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T6.5.5.5.1.m1.1.1.3" xref="A1.T6.5.5.5.1.m1.1.1.3.cmml">f</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.5.5.5.1.m1.1b"><apply id="A1.T6.5.5.5.1.m1.1.1.cmml" xref="A1.T6.5.5.5.1.m1.1.1"><times id="A1.T6.5.5.5.1.m1.1.1.1.cmml" xref="A1.T6.5.5.5.1.m1.1.1.1"></times><ci id="A1.T6.5.5.5.1.m1.1.1.2.cmml" xref="A1.T6.5.5.5.1.m1.1.1.2">Δ</ci><ci id="A1.T6.5.5.5.1.m1.1.1.3.cmml" xref="A1.T6.5.5.5.1.m1.1.1.3">𝑓</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.5.5.5.1.m1.1c">\Delta f</annotation><annotation encoding="application/x-llamapun" id="A1.T6.5.5.5.1.m1.1d">roman_Δ italic_f</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T6.5.5.5.3">The length of time interval to run noising process.</td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.6.6.6.2">paths length</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.6.6.6.1"><math alttext="L" class="ltx_Math" display="inline" id="A1.T6.6.6.6.1.m1.1"><semantics id="A1.T6.6.6.6.1.m1.1a"><mi id="A1.T6.6.6.6.1.m1.1.1" xref="A1.T6.6.6.6.1.m1.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="A1.T6.6.6.6.1.m1.1b"><ci id="A1.T6.6.6.6.1.m1.1.1.cmml" xref="A1.T6.6.6.6.1.m1.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.6.6.6.1.m1.1c">L</annotation><annotation encoding="application/x-llamapun" id="A1.T6.6.6.6.1.m1.1d">italic_L</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.6.6.6.3">The NFEs devoted in each backward step.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists and describes the hyperparameters used in the 'Search Over Paths' algorithm, a method for optimizing the noise sampling process within diffusion models.  The hyperparameters control aspects of the search, including the initial number of sampling paths explored, the width of each path (number of noise candidates), the starting point of the search in the noise schedule, and the step sizes for forward and backward passes within the sampling process, as well as the computation budget allocated to each backward step.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyperparameters for Search Over Paths.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="A1.T7.6.6.6.7">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1">Accuracy<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.1.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.1.m1.1a"><mo id="A1.T7.1.1.1.1.m1.1.1" stretchy="false" xref="A1.T7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.1.m1.1b"><ci id="A1.T7.1.1.1.1.m1.1.1.cmml" xref="A1.T7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.2.2.2.2">Originality<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.2.2.2.2.m1.1"><semantics id="A1.T7.2.2.2.2.m1.1a"><mo id="A1.T7.2.2.2.2.m1.1.1" stretchy="false" xref="A1.T7.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.2.2.m1.1b"><ci id="A1.T7.2.2.2.2.m1.1.1.cmml" xref="A1.T7.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.3.3.3.3">Visual<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.3.3.3.3.m1.1"><semantics id="A1.T7.3.3.3.3.m1.1a"><mo id="A1.T7.3.3.3.3.m1.1.1" stretchy="false" xref="A1.T7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.3.3.3.3.m1.1b"><ci id="A1.T7.3.3.3.3.m1.1.1.cmml" xref="A1.T7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.4">Consistency<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.4.4.4.4.m1.1"><semantics id="A1.T7.4.4.4.4.m1.1a"><mo id="A1.T7.4.4.4.4.m1.1.1" stretchy="false" xref="A1.T7.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.4.4.4.4.m1.1b"><ci id="A1.T7.4.4.4.4.m1.1.1.cmml" xref="A1.T7.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.5.5.5.5">Emotional<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.5.5.5.5.m1.1"><semantics id="A1.T7.5.5.5.5.m1.1a"><mo id="A1.T7.5.5.5.5.m1.1.1" stretchy="false" xref="A1.T7.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.5.5.5.5.m1.1b"><ci id="A1.T7.5.5.5.5.m1.1.1.cmml" xref="A1.T7.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.6.6.6.6">Overall<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.6.6.6.6.m1.1"><semantics id="A1.T7.6.6.6.6.m1.1a"><mo id="A1.T7.6.6.6.6.m1.1.1" stretchy="false" xref="A1.T7.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.6.6.6.6.m1.1b"><ci id="A1.T7.6.6.6.6.m1.1.1.cmml" xref="A1.T7.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.7.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.7.7.8.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.8.1.1.1">FLUX.1-dev</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T7.7.7.8.1.2"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.8.1.3">89.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.8.1.4">67.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.8.1.5">93.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.8.1.6">97.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.8.1.7">73.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.8.1.8">84.29</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7.9.2">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T7.7.7.9.2.1"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="A1.T7.7.7.9.2.2">+ 4 search iters</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.9.2.3">91.33</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.9.2.4">68.49</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.9.2.5">93.42</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.9.2.6">96.99</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.9.2.7">75.31</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.9.2.8">85.17</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7.10.3">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T7.7.7.10.3.1"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="A1.T7.7.7.10.3.2">+ 16 search iters</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.10.3.3">91.95</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.10.3.4">71.52</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.10.3.5"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.10.3.5.1">93.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.10.3.6"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.10.3.6.1">97.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.10.3.7">76.30</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.10.3.8">86.42</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7.11.4">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T7.7.7.11.4.1"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="A1.T7.7.7.11.4.2">+ 64 search iters</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.11.4.3"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.11.4.3.1">93.83</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.11.4.4"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.11.4.4.1">75.38</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.11.4.5">93.57</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.11.4.6">97.04</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.11.4.7"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.11.4.7.1">79.34</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.11.4.8"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.11.4.8.1">88.08</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.7.7.7.1"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.7.1.1">PixArt-<math alttext="\Sigma" class="ltx_Math" display="inline" id="A1.T7.7.7.7.1.1.m1.1"><semantics id="A1.T7.7.7.7.1.1.m1.1a"><mi id="A1.T7.7.7.7.1.1.m1.1.1" mathvariant="normal" xref="A1.T7.7.7.7.1.1.m1.1.1.cmml">Σ</mi><annotation-xml encoding="MathML-Content" id="A1.T7.7.7.7.1.1.m1.1b"><ci id="A1.T7.7.7.7.1.1.m1.1.1.cmml" xref="A1.T7.7.7.7.1.1.m1.1.1">Σ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.7.7.7.1.1.m1.1c">\Sigma</annotation><annotation encoding="application/x-llamapun" id="A1.T7.7.7.7.1.1.m1.1d">roman_Σ</annotation></semantics></math></span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T7.7.7.7.2"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.7.3">84.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.7.4">73.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.7.5">91.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.7.6">95.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.7.7">76.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.7.8">84.67</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7.12.5">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T7.7.7.12.5.1"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="A1.T7.7.7.12.5.2">+ 4 search iters</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.12.5.3">87.88</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.12.5.4">74.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.12.5.5">91.92</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.12.5.6">96.29</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.12.5.7">77.32</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.12.5.8">85.62</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7.13.6">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T7.7.7.13.6.1"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="A1.T7.7.7.13.6.2">+ 16 search iters</th>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.13.6.3">88.15</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.13.6.4">75.39</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.13.6.5">91.72</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.13.6.6">96.04</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.13.6.7">79.17</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.13.6.8">86.27</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.7.14.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="A1.T7.7.7.14.7.1"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T7.7.7.14.7.2">+ 64 search iters</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.7.14.7.3"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.14.7.3.1">89.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.7.14.7.4"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.14.7.4.1">77.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.7.14.7.5"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.14.7.5.1">92.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.7.14.7.6"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.14.7.6.1">96.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.7.14.7.7"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.14.7.7.1">80.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.7.14.7.8"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.14.7.8.1">87.55</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the scores assigned by a Large Language Model (LLM) evaluator to images generated by two different text-to-image models: FLUX-1-dev and PixArt-Σ.  The LLM assessed each image based on five key aspects: Accuracy to Prompt, Creativity and Originality, Visual Quality and Realism, Consistency and Cohesion, and Emotional or Thematic Resonance. Each aspect received a score from 0 to 10, with higher scores representing better performance. The table shows the average scores for each aspect and an overall average score for images generated with different numbers of search iterations. The results were obtained using random search and a verifier ensemble.
> <details>
> <summary>read the caption</summary>
> Table 7: Break-down scores of LLM Grader for FLUX.1-dev and PixArt-ΣΣ\Sigmaroman_Σ. The evaluation is done on DrawBench with random search and verifier ensemble.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T8.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A4.T8.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.1.1.1">Verifiers</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.1.2">Aesthetic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.1.3">CLIPScore</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.1.4">ImageReward</th>
</tr>
<tr class="ltx_tr" id="A4.T8.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A4.T8.1.1.2.2.1">-</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.1.1.2.2.2">5.79</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.1.1.2.2.3">0.71</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.1.1.2.2.4">0.97</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.1.1.3.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="A4.T8.1.1.3.1.1">CLIP-SSL + 4 search iters</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.3.1.2">5.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.3.1.3">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.3.1.4">0.99</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.1.4.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="A4.T8.1.1.4.2.1">+ 16 search iters</th>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.4.2.2">5.72</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.4.2.3">0.71</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.4.2.4">1.04</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.1.5.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="A4.T8.1.1.5.3.1">DINO-SSL + 4 search iters</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.5.3.2">5.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.5.3.3">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.5.3.4">0.99</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.1.6.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="A4.T8.1.1.6.4.1">+ 16 search iters</th>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.6.4.2">5.78</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.6.4.3">0.70</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.6.4.4">1.03</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.1.7.5">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="A4.T8.1.1.7.5.1">SigLIP-SSL + 4 search iters</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.7.5.2">5.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.7.5.3">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.1.7.5.4">1.02</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.1.8.6">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="A4.T8.1.1.8.6.1">+ 16 search iters</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.1.8.6.2">5.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.1.8.6.3">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.1.8.6.4">1.02</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the effectiveness of self-supervised verifiers (CLIP-SSL, DINO-SSL, SigLIP-SSL) in the context of inference-time scaling for diffusion models.  The experiments used the FLUX.1-dev model and employed a random search strategy on the DrawBench dataset.  The table compares the performance (aesthetic score, CLIP score, ImageReward) of the model when using these self-supervised verifiers with varying amounts of compute allocated to the search process (4 and 16 search iterations).  The first row provides a baseline of the model's performance without any search (i.e., only using the model's inherent capabilities).
> <details>
> <summary>read the caption</summary>
> Table 8: Performance of self-supervised verifiers on DrawBench. All numbers are from FLUX.1-dev with random search. The first row is the reference performance without search.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.09732/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09732/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}