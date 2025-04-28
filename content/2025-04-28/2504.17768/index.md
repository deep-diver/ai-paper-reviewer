---
title: "The Sparse Frontier: Sparse Attention Trade-offs in Transformer LLMs"
summary: "Sparse attention offers promising trade-offs for longer Transformer LLMs, but requires careful performance evaluations. "
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Edinburgh",]
showSummary: true
date: 2025-04-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17768 {{< /keyword >}}
{{< keyword icon="writer" >}} Piotr Nawrot et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17768" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17768" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17768/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Transformer LLMs face challenges in processing long sequences due to the self-attention mechanism's quadratic complexity during prefilling and linear growth of the key-value cache during decoding. **Sparse attention offers a solution by approximating dense attention with a subset of key-query interactions to reduce computational overhead.** However, the viability and trade-offs of various sparse attention methods remain largely unexplored.



This paper conducts a large-scale empirical analysis of training-free sparse attention methods across different model sizes (7B-72B), sequence lengths (16K-128K), and sparsity levels. It **introduces scaling laws tailored for sparse attention**. The study identifies key findings, such as the preference for larger, highly sparse models for long sequences and the task- and phase-specific nature of optimal sparsification strategies.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Larger, highly sparse models are preferable to smaller, dense ones for very long sequences. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The level of sparsity attainable while preserving accuracy is higher during decoding than prefilling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} No single sparse attention strategy excels across all tasks and phases, highlighting the need for careful trade-off evaluations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for LLM researchers by **offering systematical evaluation results on the sparse attention method**. The trade-off between model size, sequence length, and sparsity will open new avenues for designing long-context LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17768/x1.png)

> 🔼 Figure 1 visualizes different sparse attention mechanisms used in Transformer LLMs during prefilling and generation phases.  The figure shows how different methods sparsify the attention matrix, which is a key component of self-attention calculations in Transformer models.  The left side illustrates the patterns for prefilling (processing the input prompt all at once), while the right side showcases those for generation (processing one token at a time). Each pattern is represented by a heatmap; the color intensity represents the preserved query-key interactions at various sparsity levels, with white indicating uncomputed interactions. The key differences highlighted are the unit of sparsification (whether attention is sparsified at block/page, vertical, or slash levels), the importance estimation method (whether sparsification is fixed or dynamic), and the KV cache management strategy (whether a full cache or eviction is used).  The figure helps to understand how different design choices affect the computational efficiency and accuracy of sparse attention methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of sparse attention methods for prefilling (left) and generation (right). These methods differ in the units of sparsification (blocks or pages vs. verticals and slashes), importance estimation, and KV cache management strategies. Colours represent query–key interactions preserved at different sparsity levels, while white areas indicate interactions that are not computed.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.2.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.2.1.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.1.2">Method</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.3">Unit</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.4">Budget</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.5">KV Cache Management</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.1.2.1.1" rowspan="3"><span class="ltx_text" id="S3.T1.2.1.2.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.2.1.2.1.1.1.1" style="width:6.9pt;height:26.6pt;vertical-align:-9.8pt;"><span class="ltx_transformed_inner" style="width:26.6pt;transform:translate(-9.81pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T1.2.1.2.1.1.1.1.1">Prefill</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.2.1.2.1.2">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.1.2.1">Vertical-Slash</span> <cite class="ltx_cite ltx_citemacro_citep">(Jiang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.17768v1#bib.bib19" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.2.1.3">verticals and slashes</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.2.1.4">uniform</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.2.1.5">N/A</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.2.1.3.2.1">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.3.2.1.1">FlexPrefill</span> <cite class="ltx_cite ltx_citemacro_citep">(Lai et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.17768v1#bib.bib23" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.3.2.2">verticals and slashes</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.3.2.3">threshold-based</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.3.2.4">N/A</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.2.1.4.3.1">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.4.3.1.1">Block-Sparse</span> <cite class="ltx_cite ltx_citemacro_citep">(Jiang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.17768v1#bib.bib19" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.4.3.2">blocks</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.4.3.3">uniform</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.4.3.4">N/A</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.2.1.5.4.1" rowspan="3"><span class="ltx_text" id="S3.T1.2.1.5.4.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.2.1.5.4.1.1.1" style="width:6.9pt;height:31.8pt;vertical-align:-12.4pt;"><span class="ltx_transformed_inner" style="width:31.8pt;transform:translate(-12.43pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T1.2.1.5.4.1.1.1.1">Decode</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.2.1.5.4.2">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.4.2.1">SnapKV</span> <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.17768v1#bib.bib27" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.5.4.3">tokens</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.5.4.4">uniform</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.5.4.5">Eviction</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.2.1.6.5.1">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.6.5.1.1">Ada-SnapKV</span> <cite class="ltx_cite ltx_citemacro_citep">(Feng et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.17768v1#bib.bib10" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.6.5.2">tokens</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.6.5.3">adaptive</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.6.5.4">Eviction</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.2.1.7.6.1">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.7.6.1.1">Quest</span> <cite class="ltx_cite ltx_citemacro_citep">(Tang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.17768v1#bib.bib42" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.2.1.7.6.2">pages</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.2.1.7.6.3">uniform</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.2.1.7.6.4">Full Cache</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the six different sparse attention methods used in the paper's experiments.  For each method, it details the key design choices: the units of sparsification (how the attention matrix is divided for pruning), the importance estimation method (how the most important parts of the matrix are selected), the budget allocation strategy (how the computational budget is distributed across layers/heads), and the KV cache management technique (how the key-value cache is handled during decoding). The methods are grouped by prefilling and decoding strategies to show how each is appropriate for different phases of inference.
> <details>
> <summary>read the caption</summary>
> Table 1: Full list of content-aware sparse attention methods benchmarked in our experiments. These represent diverse strategies in terms of units, budget allocation, and KV cache management.
> </details>





### In-depth insights


#### Sparse is Viable
The notion of "Sparse is Viable" encapsulates a critical paradigm shift in modern machine learning, especially within large language models (LLMs). It suggests that **models with strategically introduced sparsity can achieve comparable or even superior performance to their dense counterparts,** while significantly reducing computational costs and memory footprints. This viability hinges on several factors. **First**, effective sparsification techniques, such as attention pruning or weight quantization, are crucial for preserving model accuracy. **Second**, the architectural design must accommodate sparsity, allowing for efficient computation and memory access. **Third**, the training regime needs to be adapted to sparse models, potentially requiring specialized optimization algorithms or regularization strategies. The benefits of sparsity extend beyond mere efficiency; sparse models can be more robust to overfitting, exhibit better generalization capabilities, and facilitate deployment on resource-constrained devices. The ultimate success of "Sparse is Viable" lies in **carefully balancing sparsity levels with model performance,** ensuring that the gains in efficiency do not come at the expense of accuracy or robustness.

#### IsoFLOPS Insight
IsoFLOPS insights reveal a crucial **sequence length dependency** in sparse attention. For **shorter sequences**, denser, smaller models are more efficient. **Increasing density or size enhances performance**. However, with **longer contexts**, a paradigm shift occurs, and **highly sparse, larger models become preferable**. There is an efficiency crossover where a larger but sparse model outperforms a smaller but dense model, given the same computational budget. Performance differences depend on sparsity and the inference phase, in which **prefilling favors 5-15x compression ratios, while decoding exhibits greater resilience to high sparsity**, making 20x compression a viable option.

#### Decoding > Prefill
The comparison of decoding and prefilling in sparse attention LLMs reveals crucial performance trade-offs. **Decoding tolerates higher sparsity levels** than prefilling because of its sequential nature, benefiting from KV cache optimizations and memory access reduction. Methods like Quest excel in decoding by maintaining a full KV cache while selectively loading necessary pairs, mitigating information loss. In contrast, prefilling, which processes the entire input in parallel, is **more sensitive to sparsity**, with performance degrading significantly even at moderate levels. This is evident in tasks requiring integration of information across the entire sequence. **Adaptive budget allocation methods**, like Ada-SnapKV, show promise in decoding by dynamically adjusting token budgets per head. This enhances performance on complex tasks. Choosing between decoding and prefilling requires **careful evaluation**, highlighting the need for flexibility and diverse benchmarks.

#### Task Dependent
Task dependency is a core consideration in this research because the efficacy of sparse attention mechanisms is **highly sensitive** to the type of task being performed. Tasks with varying levels of complexity and information dispersion require different attention strategies. Simple tasks, such as question answering over a short context, can tolerate higher levels of sparsity without significant performance degradation. However, more complex tasks, requiring reasoning over longer contexts or integrating information from multiple sources, are **more susceptible** to performance drops with increased sparsity. It's essential to evaluate the performance of sparse attention models on diverse tasks to assess their suitability for real-world applications. Moreover, the selection of appropriate **units of sparsification** (blocks or pages vs. verticals and slashes) and the implementation of budget allocation (fixed vs adaptive) should vary on the task.

#### Scaling Laws Valid
In the context of scaling laws, which are empirical relationships describing how model performance improves with increased resources, the research likely investigates whether established scaling laws still hold when sparse attention mechanisms are introduced. This is crucial because **sparse attention alters the fundamental computational characteristics** of Transformer models. If scaling laws remain valid, it suggests that the benefits of increased model size, data, or training compute are not diminished by the use of sparsity. The research would likely analyze the relationship between these variables and performance. This would provide **valuable guidance for scaling sparse models effectively**, predicting performance gains, and optimizing resource allocation. It may reveal that **sparsity introduces new scaling exponents or modifies existing ones**, offering insights into the interplay between model size, data, and sparsity for achieving optimal performance.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17768/x2.png)

> 🔼 This figure shows the results of an isoFLOPS analysis for the prefilling phase of text generation using the Vertical-Slash sparse attention pattern.  It compares the performance (measured as average accuracy across various tasks) against the FLOPS (floating point operations) for different model sizes and sparsity levels.  The purpose is to determine whether a smaller, dense model or a larger, more sparse model is more computationally efficient for achieving a particular level of accuracy at a given sequence length.
> <details>
> <summary>read the caption</summary>
> (a) IsoFLOPS analysis for prefilling, using Vertical-Slash pattern.
> </details>



![](https://arxiv.org/html/2504.17768/x3.png)

> 🔼 This figure shows the results of an isoFLOPS analysis for the decoding phase of text generation, specifically using the Quest sparse attention pattern.  The x-axis represents the total floating-point operations (FLOPS) used, and the y-axis represents the average performance across various tasks. Different colored lines represent different model sizes (7B, 14B, 32B, and 72B parameters), and different markers along the lines represent different levels of compression (sparsity). The left panel shows results for sequence lengths of 32k tokens, while the right panel shows results for 128k tokens. The figure helps to understand the trade-off between computational cost (FLOPS) and performance for different model sizes and levels of sparsity during decoding with the Quest pattern.
> <details>
> <summary>read the caption</summary>
> (b) IsoFLOPS analysis for decoding, using Quest pattern.
> </details>



![](https://arxiv.org/html/2504.17768/x4.png)

> 🔼 This figure presents a comparison of the performance of different model sizes and sparsity levels across different sequence lengths.  It shows the trade-off between accuracy and FLOPs (floating point operations), a measure of computational cost.  The heatmap displays performance across different compression ratios (1x to 20x), indicating the level of sparsity. The plots separate the analysis by inference phase (prefilling and decoding) and sequence length (32k and 128k tokens). A key finding highlighted is a 'phase transition' where larger, highly sparse models become more efficient than smaller, dense models for long sequences.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance comparison for batch size 1 across FLOPS, which are a function of sequence length, model size and sparsity level. We report 4 model sizes (markers) and compression ratios up to 20×\times× (heatmap). Performance scores are aggregated across all 9 tasks. In the plots, we display two sequence lengths—32k (left) and 128k (right)—and two phases—prefilling (top) and decoding (bottom). Crucially, there is a phase transition where after a critical sequence length (32–64k tokens for Qwen family models), highly sparse and large models surpass dense and small models in performance for the same FLOPS budget. See Appendix D for details on how we estimate the FLOPS, including indexing costs for sparse attention methods.
> </details>



![](https://arxiv.org/html/2504.17768/x7.png)

> 🔼 Figure 3 illustrates the maximum compression ratio achievable for different sparse attention methods while maintaining statistically significant performance.  The y-axis shows the maximum compression ratio, while the x-axis represents the sequence length.  Each data point represents a specific task, and horizontal bars depict average maximum compression across all tasks for each model size and sequence length. Vertical bars illustrate the standard deviation of maximum compression across tasks.  The left panel shows results for the Vertical-Slash pattern (used during prefilling), and the right panel shows results for the Quest pattern (used during decoding).  The main finding is that the Quest method (decoding) allows for significantly higher compression ratios than Vertical-Slash (prefilling), and that larger models generally tolerate higher compression before a significant drop in performance.  However, even with the largest model (72B parameters), there is at least one task that exhibits significant performance degradation when using compression ratios exceeding 5x, with Quest being the only exception.
> <details>
> <summary>read the caption</summary>
> Figure 3: Maximum compression ratio with statistically significant performance retention (y-axis) across different model sizes (colours) and sequence lengths (x-axis). Each point represents a task, with horizontal bars showing the average maximum compression across tasks and vertical bars indicating standard deviation. Left: Vertical-Slash pattern for prefilling. Right: Quest pattern for decoding. The key conclusion is that decoding tolerates higher compression than prefilling on average, with larger models maintaining performance even at very high compression ratios. However, almost every configuration has at least one task where maximum tolerable compression is below 5×\times× (72B Quest being the only exception).
> </details>



![](https://arxiv.org/html/2504.17768/x8.png)

> 🔼 Figure 4 presents a comprehensive performance comparison of six different sparse attention methods across nine distinct long-context tasks.  The results are aggregated across various sequence lengths and model sizes, with shaded areas representing standard error.  The figure is divided into two sections: the top section showcases three prefilling methods (Vertical-Slash, FlexPrefill, Block-Sparse), while the bottom section displays three decoding methods (SnapKV, Ada-SnapKV, Quest). Each subplot within the figure focuses on a single task, illustrating the trade-off between performance and the compression ratio achieved by each sparse attention method. A key takeaway is the significant task-dependency observed in the performance-compression trade-off, highlighting that no single method consistently outperforms others across all tasks.  However, the figure suggests that the Vertical-Slash method generally performs best among the prefilling methods, while the Quest method tends to be the top performer for decoding.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance comparison of different sparse attention methods across 9 tasks, aggregated over sequence lengths and models (shaded areas indicate the standard error). Top: prefilling methods (Vertical-Slash, FlexPrefill, Block-Sparse). Bottom: decoding methods (SnapKV, Ada-SnapKV, Quest). Each subplot shows the relationship between performance and compression for a specific task. The trade-off appears extremely task-dependent. Overall, Vertical-Slash performs best among prefilling methods, while Quest performs best among decoding methods.
> </details>



![](https://arxiv.org/html/2504.17768/x9.png)

> 🔼 This figure shows the ablation study on the Block-Sparse method, investigating the impact of different block sizes on the performance. It reveals how the choice of block size influences the trade-off between computational efficiency and model accuracy, indicating the optimal block size for the Block-Sparse method.
> <details>
> <summary>read the caption</summary>
> Figure 5: Block-Sparse block size.
> </details>



![](https://arxiv.org/html/2504.17768/x10.png)

> 🔼 This figure shows the results of an ablation study on the Quest sparse attention method, investigating the impact of different page sizes on performance.  The x-axis represents the compression ratio, and the y-axis shows the performance score. Multiple lines are plotted, each representing a different page size (16, 32, and 64 tokens). The plot illustrates the trade-off between compression ratio and performance, showing that smaller page sizes may lead to better performance with higher compression. This suggests that for Quest, using smaller page sizes is better to maintain performance with high sparsity.
> <details>
> <summary>read the caption</summary>
> Figure 6: Quest page size.
> </details>



![](https://arxiv.org/html/2504.17768/x11.png)

> 🔼 This figure shows the ablation study on the minimum budget hyperparameter for the Ada-SnapKV sparse attention method.  The x-axis represents the compression ratio, and the y-axis represents the performance score. Different lines represent different minimum budget settings, demonstrating how the minimum budget impacts performance under varying levels of sparsity.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ada-SnapKV min budget.
> </details>



![](https://arxiv.org/html/2504.17768/x12.png)

> 🔼 This figure shows the impact of the `min_budget` hyperparameter on FlexPrefill's performance.  FlexPrefill is a sparse attention method that dynamically allocates a budget across layers and heads. The x-axis represents the compression ratio, indicating the level of sparsity. The y-axis shows the performance score. Different lines represent different values for `min_budget`, showing how the minimum budget allocated to each head affects performance at various levels of sparsity.  The graph illustrates the trade-off between sparsity and performance, highlighting the sensitivity of FlexPrefill to the choice of `min_budget` and how it influences the performance under high compression ratios.
> <details>
> <summary>read the caption</summary>
> Figure 8: FlexPrefill min budget.
> </details>



![](https://arxiv.org/html/2504.17768/x13.png)

> 🔼 This figure shows the ablation study on the approximation window size used by SnapKV and Ada-SnapKV methods. The x-axis represents the compression ratio, and the y-axis represents the aggregated performance across all nine tasks. Different colored lines represent different approximation window sizes.  The results indicate the optimal window size for achieving good performance at various compression levels.
> <details>
> <summary>read the caption</summary>
> Figure 9: SnapKV/Ada-SnapKV approximation window.
> </details>



![](https://arxiv.org/html/2504.17768/x14.png)

> 🔼 This figure shows the ablation study on the kernel size used for smoothing token importance scores in SnapKV and Ada-SnapKV methods.  The experiment evaluates various kernel sizes (5, 7, 13, and 21) across different compression ratios.  The results demonstrate that using a kernel size of 21 yields the best performance across various compression ratios, suggesting a balance between smoothing noisy importance scores and preserving fine-grained details.
> <details>
> <summary>read the caption</summary>
> Figure 10: SnapKV/Ada-SnapKV kernel size.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.1" style="font-size:80%;">Task Name</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.1.1.2.1">
<span class="ltx_p" id="S3.T2.2.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.2.1.1.1" style="font-size:80%;">Description</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.3.1" style="font-size:80%;">Dispersion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.4.1" style="font-size:80%;">Scope</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.5.1" style="font-size:80%;">Natural</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.2.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.2.1.1"><span class="ltx_text" id="S3.T2.2.2.1.1.1" style="font-size:80%;">QA (SQuAD)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T2.2.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.2.1.2.1">
<span class="ltx_p" id="S3.T2.2.2.1.2.1.1"><span class="ltx_text" id="S3.T2.2.2.1.2.1.1.1" style="font-size:80%;">Open-ended QA on a specified document among distractors</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.1.3"><span class="ltx_text" id="S3.T2.2.2.1.3.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.1.4"><span class="ltx_text" id="S3.T2.2.2.1.4.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.1.5"><span class="ltx_text" id="S3.T2.2.2.1.5.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.3.2">
<td class="ltx_td ltx_align_left" id="S3.T2.2.3.2.1"><span class="ltx_text" id="S3.T2.2.3.2.1.1" style="font-size:80%;">QA (QuALITY, TOEFL)</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T2.2.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.3.2.2.1">
<span class="ltx_p" id="S3.T2.2.3.2.2.1.1"><span class="ltx_text" id="S3.T2.2.3.2.2.1.1.1" style="font-size:80%;">Multiple-choice QA on a specified document among distractors</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.3.2.3"><span class="ltx_text" id="S3.T2.2.3.2.3.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.3.2.4"><span class="ltx_text" id="S3.T2.2.3.2.4.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.3.2.5"><span class="ltx_text" id="S3.T2.2.3.2.5.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.4.3">
<td class="ltx_td ltx_align_left" id="S3.T2.2.4.3.1"><span class="ltx_text" id="S3.T2.2.4.3.1.1" style="font-size:80%;">Ruler NIAH</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T2.2.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.4.3.2.1">
<span class="ltx_p" id="S3.T2.2.4.3.2.1.1"><span class="ltx_text" id="S3.T2.2.4.3.2.1.1.1" style="font-size:80%;">Extract 4 values for specified keys among many distractor key-value pairs</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.3.3"><span class="ltx_text" id="S3.T2.2.4.3.3.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.3.4"><span class="ltx_text" id="S3.T2.2.4.3.4.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.3.5"><span class="ltx_text" id="S3.T2.2.4.3.5.1" style="font-size:80%;">×</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.5.4">
<td class="ltx_td ltx_align_left" id="S3.T2.2.5.4.1"><span class="ltx_text" id="S3.T2.2.5.4.1.1" style="font-size:80%;">Ruler VT</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T2.2.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.5.4.2.1">
<span class="ltx_p" id="S3.T2.2.5.4.2.1.1"><span class="ltx_text" id="S3.T2.2.5.4.2.1.1.1" style="font-size:80%;">Identify variables that resolve to a specific value via chained assignments</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.4.3"><span class="ltx_text" id="S3.T2.2.5.4.3.1" style="font-size:80%;">High</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.4.4"><span class="ltx_text" id="S3.T2.2.5.4.4.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.4.5"><span class="ltx_text" id="S3.T2.2.5.4.5.1" style="font-size:80%;">×</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.6.5">
<td class="ltx_td ltx_align_left" id="S3.T2.2.6.5.1"><span class="ltx_text" id="S3.T2.2.6.5.1.1" style="font-size:80%;">Ruler CWE</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T2.2.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.6.5.2.1">
<span class="ltx_p" id="S3.T2.2.6.5.2.1.1"><span class="ltx_text" id="S3.T2.2.6.5.2.1.1.1" style="font-size:80%;">Identify the 10 most frequent words from a list with distractors</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.5.3"><span class="ltx_text" id="S3.T2.2.6.5.3.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.5.4"><span class="ltx_text" id="S3.T2.2.6.5.4.1" style="font-size:80%;">High</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.5.5"><span class="ltx_text" id="S3.T2.2.6.5.5.1" style="font-size:80%;">×</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.7.6">
<td class="ltx_td ltx_align_left" id="S3.T2.2.7.6.1"><span class="ltx_text" id="S3.T2.2.7.6.1.1" style="font-size:80%;">Story Retrieval</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T2.2.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.7.6.2.1">
<span class="ltx_p" id="S3.T2.2.7.6.2.1.1"><span class="ltx_text" id="S3.T2.2.7.6.2.1.1.1" style="font-size:80%;">Answer 16 factoid-style questions about specific chapters in a long narrative</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.6.3"><span class="ltx_text" id="S3.T2.2.7.6.3.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.6.4"><span class="ltx_text" id="S3.T2.2.7.6.4.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.6.5"><span class="ltx_text" id="S3.T2.2.7.6.5.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.8.7">
<td class="ltx_td ltx_align_left" id="S3.T2.2.8.7.1"><span class="ltx_text" id="S3.T2.2.8.7.1.1" style="font-size:80%;">Story Multi-hop</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T2.2.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.8.7.2.1">
<span class="ltx_p" id="S3.T2.2.8.7.2.1.1"><span class="ltx_text" id="S3.T2.2.8.7.2.1.1.1" style="font-size:80%;">Identify the item acquired immediately before a target item across chapters</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.8.7.3"><span class="ltx_text" id="S3.T2.2.8.7.3.1" style="font-size:80%;">High</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.8.7.4"><span class="ltx_text" id="S3.T2.2.8.7.4.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.8.7.5"><span class="ltx_text" id="S3.T2.2.8.7.5.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.2.9.8.1"><span class="ltx_text" id="S3.T2.2.9.8.1.1" style="font-size:80%;">Story Filtering</span></td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T2.2.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.9.8.2.1">
<span class="ltx_p" id="S3.T2.2.9.8.2.1.1"><span class="ltx_text" id="S3.T2.2.9.8.2.1.1.1" style="font-size:80%;">Identify chapters where no item purchases occurred in a long narrative</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.9.8.3"><span class="ltx_text" id="S3.T2.2.9.8.3.1" style="font-size:80%;">Low</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.9.8.4"><span class="ltx_text" id="S3.T2.2.9.8.4.1" style="font-size:80%;">High</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.9.8.5"><span class="ltx_text" id="S3.T2.2.9.8.5.1" style="font-size:80%;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive overview of the nine long-context tasks used to evaluate the performance of sparse attention methods.  It categorizes each task along three key dimensions: Task Difficulty (measured by Dispersion and Scope), and Data Naturalness.  Dispersion indicates how easily the necessary information can be found within the task's context, while Scope reflects the amount of information that needs to be processed to complete the task.  Data Naturalness indicates whether the task uses real-world, natural language data or synthetically generated data. Four tasks are established benchmarks focusing on specific capabilities (retrieval, multi-hop reasoning, aggregation, and question answering) while five are novel tasks designed to match the difficulty of the existing benchmarks but using naturalistic text. This ensures a comprehensive and representative evaluation of sparse attention's performance across diverse task types and data characteristics.
> <details>
> <summary>read the caption</summary>
> Table 2: Summary of 9 evaluation tasks: QA tasks are based on existing datasets—SQuAD (Rajpurkar et al., 2018), QuALITY (Pang et al., 2022), TOEFL (Tseng et al., 2016)—while NIAH, VT, and CWE are taken from the RULER benchmark Hsieh et al. (2024). The remaining three (Story Retrieval, Multi-hop, and Filtering) are our contribution: we automatically generate multi-chapter narratives to evaluate the same skills as RULER tasks but expressed in naturalistic text. For each task, we indicate whether it has High or Low dispersion (information is difficult to locate), High or Low scope (large amount of necessary information), and whether it is based on natural text or is synthetic.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.2"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.3"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1"><math alttext="\mathbf{R^{2}}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><msup id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.1.m1.1.1.2.cmml">𝐑</mi><mn id="S4.T3.1.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.1.m1.1.1.3.cmml">𝟐</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.1.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S4.T3.1.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.1.m1.1.1.2">𝐑</ci><cn id="S4.T3.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.1.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\mathbf{R^{2}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">bold_R start_POSTSUPERSCRIPT bold_2 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="12" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">Parameters</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.8.8.8.8"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.8.8.8.9"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S4.T3.8.8.8.10"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r" id="S4.T3.2.2.2.1"><math alttext="\epsilon" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mi id="S4.T3.2.2.2.1.m1.1.1" xref="S4.T3.2.2.2.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">italic_ϵ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T3.3.3.3.2"><math alttext="\delta_{\text{QA}}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.2.m1.1"><semantics id="S4.T3.3.3.3.2.m1.1a"><msub id="S4.T3.3.3.3.2.m1.1.1" xref="S4.T3.3.3.3.2.m1.1.1.cmml"><mi id="S4.T3.3.3.3.2.m1.1.1.2" xref="S4.T3.3.3.3.2.m1.1.1.2.cmml">δ</mi><mtext id="S4.T3.3.3.3.2.m1.1.1.3" xref="S4.T3.3.3.3.2.m1.1.1.3a.cmml">QA</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.2.m1.1b"><apply id="S4.T3.3.3.3.2.m1.1.1.cmml" xref="S4.T3.3.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.3.3.2.m1.1.1.1.cmml" xref="S4.T3.3.3.3.2.m1.1.1">subscript</csymbol><ci id="S4.T3.3.3.3.2.m1.1.1.2.cmml" xref="S4.T3.3.3.3.2.m1.1.1.2">𝛿</ci><ci id="S4.T3.3.3.3.2.m1.1.1.3a.cmml" xref="S4.T3.3.3.3.2.m1.1.1.3"><mtext id="S4.T3.3.3.3.2.m1.1.1.3.cmml" mathsize="70%" xref="S4.T3.3.3.3.2.m1.1.1.3">QA</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.2.m1.1c">\delta_{\text{QA}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.2.m1.1d">italic_δ start_POSTSUBSCRIPT QA end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="3" id="S4.T3.4.4.4.3"><math alttext="\delta_{\text{Ruler}}" class="ltx_Math" display="inline" id="S4.T3.4.4.4.3.m1.1"><semantics id="S4.T3.4.4.4.3.m1.1a"><msub id="S4.T3.4.4.4.3.m1.1.1" xref="S4.T3.4.4.4.3.m1.1.1.cmml"><mi id="S4.T3.4.4.4.3.m1.1.1.2" xref="S4.T3.4.4.4.3.m1.1.1.2.cmml">δ</mi><mtext id="S4.T3.4.4.4.3.m1.1.1.3" xref="S4.T3.4.4.4.3.m1.1.1.3a.cmml">Ruler</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.3.m1.1b"><apply id="S4.T3.4.4.4.3.m1.1.1.cmml" xref="S4.T3.4.4.4.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.4.4.3.m1.1.1.1.cmml" xref="S4.T3.4.4.4.3.m1.1.1">subscript</csymbol><ci id="S4.T3.4.4.4.3.m1.1.1.2.cmml" xref="S4.T3.4.4.4.3.m1.1.1.2">𝛿</ci><ci id="S4.T3.4.4.4.3.m1.1.1.3a.cmml" xref="S4.T3.4.4.4.3.m1.1.1.3"><mtext id="S4.T3.4.4.4.3.m1.1.1.3.cmml" mathsize="70%" xref="S4.T3.4.4.4.3.m1.1.1.3">Ruler</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.3.m1.1c">\delta_{\text{Ruler}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.3.m1.1d">italic_δ start_POSTSUBSCRIPT Ruler end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" colspan="3" id="S4.T3.5.5.5.4"><math alttext="\delta_{\text{Story}}" class="ltx_Math" display="inline" id="S4.T3.5.5.5.4.m1.1"><semantics id="S4.T3.5.5.5.4.m1.1a"><msub id="S4.T3.5.5.5.4.m1.1.1" xref="S4.T3.5.5.5.4.m1.1.1.cmml"><mi id="S4.T3.5.5.5.4.m1.1.1.2" xref="S4.T3.5.5.5.4.m1.1.1.2.cmml">δ</mi><mtext id="S4.T3.5.5.5.4.m1.1.1.3" xref="S4.T3.5.5.5.4.m1.1.1.3a.cmml">Story</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.4.m1.1b"><apply id="S4.T3.5.5.5.4.m1.1.1.cmml" xref="S4.T3.5.5.5.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.5.5.5.4.m1.1.1.1.cmml" xref="S4.T3.5.5.5.4.m1.1.1">subscript</csymbol><ci id="S4.T3.5.5.5.4.m1.1.1.2.cmml" xref="S4.T3.5.5.5.4.m1.1.1.2">𝛿</ci><ci id="S4.T3.5.5.5.4.m1.1.1.3a.cmml" xref="S4.T3.5.5.5.4.m1.1.1.3"><mtext id="S4.T3.5.5.5.4.m1.1.1.3.cmml" mathsize="70%" xref="S4.T3.5.5.5.4.m1.1.1.3">Story</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.4.m1.1c">\delta_{\text{Story}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.4.m1.1d">italic_δ start_POSTSUBSCRIPT Story end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T3.6.6.6.5"><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T3.6.6.6.5.m1.1"><semantics id="S4.T3.6.6.6.5.m1.1a"><mi id="S4.T3.6.6.6.5.m1.1.1" xref="S4.T3.6.6.6.5.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.5.m1.1b"><ci id="S4.T3.6.6.6.5.m1.1.1.cmml" xref="S4.T3.6.6.6.5.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.5.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.5.m1.1d">italic_α</annotation></semantics></math></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T3.7.7.7.6"><math alttext="\beta" class="ltx_Math" display="inline" id="S4.T3.7.7.7.6.m1.1"><semantics id="S4.T3.7.7.7.6.m1.1a"><mi id="S4.T3.7.7.7.6.m1.1.1" xref="S4.T3.7.7.7.6.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.6.m1.1b"><ci id="S4.T3.7.7.7.6.m1.1.1.cmml" xref="S4.T3.7.7.7.6.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.6.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.6.m1.1d">italic_β</annotation></semantics></math></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T3.8.8.8.7"><math alttext="\gamma" class="ltx_Math" display="inline" id="S4.T3.8.8.8.7.m1.1"><semantics id="S4.T3.8.8.8.7.m1.1a"><mi id="S4.T3.8.8.8.7.m1.1.1" xref="S4.T3.8.8.8.7.m1.1.1.cmml">γ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.7.m1.1b"><ci id="S4.T3.8.8.8.7.m1.1.1.cmml" xref="S4.T3.8.8.8.7.m1.1.1">𝛾</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.7.m1.1c">\gamma</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.7.m1.1d">italic_γ</annotation></semantics></math></th>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.9.1">
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.8.8.9.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.8.8.9.1.2"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S4.T3.8.8.9.1.3"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S4.T3.8.8.9.1.4"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T3.8.8.9.1.5">SQuAD</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r" id="S4.T3.8.8.9.1.6">TOEFL</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T3.8.8.9.1.7">CWE</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T3.8.8.9.1.8">NIAH</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r" id="S4.T3.8.8.9.1.9">VT</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T3.8.8.9.1.10">Filt.</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T3.8.8.9.1.11">Mult.</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_r" id="S4.T3.8.8.9.1.12">Retr.</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.8.8.9.1.13"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.8.8.9.1.14"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.8.8.9.1.15"></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.8.8.10.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.8.8.10.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.10.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T3.8.8.10.1.1.1.1" style="width:6.9pt;height:26.6pt;vertical-align:-9.8pt;"><span class="ltx_transformed_inner" style="width:26.6pt;transform:translate(-9.81pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T3.8.8.10.1.1.1.1.1">Prefill</span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.8.8.10.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.10.1.2.1">Sequence Length</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.8.8.10.1.3">0.74</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.8.8.10.1.4">-16.92</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.10.1.5">0.27</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.8.8.10.1.6">0.80</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.10.1.7">0.76</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.10.1.8">14.67</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.8.8.10.1.9">-1.60</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.10.1.10">-3.55</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.10.1.11">-3.21</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.8.8.10.1.12">1.43</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.10.1.13">1.31</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.10.1.14">-1.15</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.10.1.15">-1.00</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.11.2">
<td class="ltx_td ltx_align_left" id="S4.T3.8.8.11.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.11.2.1.1">Model Size</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.11.2.2">0.64</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.11.2.3">-18.10</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.11.2.4">0.20</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.11.2.5">0.73</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.11.2.6">-0.42</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.11.2.7">10.51</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.11.2.8">-1.63</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.11.2.9">-4.42</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.11.2.10">-3.74</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.11.2.11">0.46</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.11.2.12">1.58</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.11.2.13">-1.58</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.11.2.14">-0.83</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.12.3">
<td class="ltx_td ltx_align_left" id="S4.T3.8.8.12.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.12.3.1.1">Compression Ratio</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.12.3.2">0.72</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.12.3.3">-18.08</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.12.3.4">0.24</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.12.3.5">0.79</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.12.3.6">0.40</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.12.3.7">13.62</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.12.3.8">-1.54</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.12.3.9">-3.65</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.12.3.10">-3.55</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.12.3.11">1.17</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.12.3.12">1.51</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.12.3.13">-1.51</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.12.3.14">-0.73</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.13.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.8.8.13.4.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.13.4.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T3.8.8.13.4.1.1.1" style="width:6.9pt;height:31.8pt;vertical-align:-12.4pt;"><span class="ltx_transformed_inner" style="width:31.8pt;transform:translate(-12.43pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T3.8.8.13.4.1.1.1.1">Decode</span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.8.8.13.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.13.4.2.1">Sequence Length</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.8.8.13.4.3">0.64</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.8.8.13.4.4">-28.82</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.13.4.5">0.35</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.8.8.13.4.6">0.72</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.13.4.7">0.54</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.13.4.8">12.18</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.8.8.13.4.9">-0.85</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.13.4.10">-2.98</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.13.4.11">-2.87</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T3.8.8.13.4.12">2.32</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.13.4.13">1.72</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.13.4.14">-0.97</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.13.4.15">-0.94</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.14.5">
<td class="ltx_td ltx_align_left" id="S4.T3.8.8.14.5.1"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.14.5.1.1">Model Size</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.14.5.2">0.57</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.14.5.3">-35.57</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.14.5.4">0.32</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.14.5.5">0.60</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.14.5.6">-0.53</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.14.5.7">8.45</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.14.5.8">-0.89</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.14.5.9">-3.88</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.14.5.10">-3.44</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T3.8.8.14.5.11">1.31</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.14.5.12">2.25</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.14.5.13">-1.45</td>
<td class="ltx_td ltx_align_right" id="S4.T3.8.8.14.5.14">-0.81</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.15.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.8.8.15.6.1"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.15.6.1.1">Compression Ratio</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.8.8.15.6.2">0.64</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T3.8.8.15.6.3">-26.89</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.15.6.4">0.31</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T3.8.8.15.6.5">0.66</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.15.6.6">0.26</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.15.6.7">11.37</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T3.8.8.15.6.8">-0.90</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.15.6.9">-3.19</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.15.6.10">-3.40</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T3.8.8.15.6.11">1.78</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.15.6.12">1.81</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.15.6.13">-1.38</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.8.8.15.6.14">-0.82</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fitting log-linear scaling laws to predict the performance of sparse attention models.  The R-squared (R²) values indicate the goodness of fit for each scaling law, showing how well the model explains the variance in the data. The table also lists the inferred parameters (α, β, γ, δ, ε) for each scaling law. These parameters represent the influence of different factors (model size, sequence length, compression ratio, and task-specific effects) on model performance.
> <details>
> <summary>read the caption</summary>
> Table 3: R2superscript𝑅2R^{2}italic_R start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT as a measure of fitness and inferred parameters for our scaling laws.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.50.50">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.50.50.51.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.50.50.51.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.50.50.51.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T4.50.50.51.1.3">QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T4.50.50.51.1.4">Ruler</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T4.50.50.51.1.5">Story</th>
</tr>
<tr class="ltx_tr" id="S4.T4.50.50.52.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S4.T4.50.50.52.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T4.50.50.52.2.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T4.50.50.52.2.3">Quality</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T4.50.50.52.2.4">SQuAD</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T4.50.50.52.2.5">TOEFL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T4.50.50.52.2.6">CWE</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T4.50.50.52.2.7">NIAH</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S4.T4.50.50.52.2.8">VT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T4.50.50.52.2.9">Filtering</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T4.50.50.52.2.10">Multi-hop</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T4.50.50.52.2.11">Retrieval</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.8.8.8.9" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T4.8.8.8.9.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T4.8.8.8.9.1.1" style="width:6.9pt;height:26.6pt;vertical-align:-9.8pt;"><span class="ltx_transformed_inner" style="width:26.6pt;transform:translate(-9.81pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T4.8.8.8.9.1.1.1">Prefill</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.8.8.8.10"><span class="ltx_text ltx_font_bold" id="S4.T4.8.8.8.10.1">Sequence Length</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.1.1">.73 <sup class="ltx_sup" id="S4.T4.1.1.1.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.2.2.2">.79 <sup class="ltx_sup" id="S4.T4.2.2.2.2.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.3.3.3.3">.78 <sup class="ltx_sup" id="S4.T4.3.3.3.3.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.4.4.4.4">.86 <sup class="ltx_sup" id="S4.T4.4.4.4.4.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.5.5.5">.87 <sup class="ltx_sup" id="S4.T4.5.5.5.5.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.6.6.6.6">.86 <sup class="ltx_sup" id="S4.T4.6.6.6.6.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.7.7.7.7">.90 <sup class="ltx_sup" id="S4.T4.7.7.7.7.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.8.11">.34</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.8.8">.82 <sup class="ltx_sup" id="S4.T4.8.8.8.8.1">⋆</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.17.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.17.17.17.10"><span class="ltx_text ltx_font_bold" id="S4.T4.17.17.17.10.1">Model Size</span></th>
<td class="ltx_td ltx_align_left" id="S4.T4.9.9.9.1">.68 <sup class="ltx_sup" id="S4.T4.9.9.9.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.10.10.10.2">.75 <sup class="ltx_sup" id="S4.T4.10.10.10.2.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.11.11.11.3">.60 <sup class="ltx_sup" id="S4.T4.11.11.11.3.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.12.12.12.4">.85 <sup class="ltx_sup" id="S4.T4.12.12.12.4.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.13.13.13.5">.56 <sup class="ltx_sup" id="S4.T4.13.13.13.5.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.14.14.14.6">.68 <sup class="ltx_sup" id="S4.T4.14.14.14.6.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.15.15.15.7">.89 <sup class="ltx_sup" id="S4.T4.15.15.15.7.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.16.16.16.8">.90 <sup class="ltx_sup" id="S4.T4.16.16.16.8.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.17.17.17.9">.85 <sup class="ltx_sup" id="S4.T4.17.17.17.9.1">⋆</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.24.24.24.8"><span class="ltx_text ltx_font_bold" id="S4.T4.24.24.24.8.1">Compression Ratio</span></th>
<td class="ltx_td ltx_align_left" id="S4.T4.18.18.18.1">.77 <sup class="ltx_sup" id="S4.T4.18.18.18.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.19.19.19.2">.87 <sup class="ltx_sup" id="S4.T4.19.19.19.2.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.20.20.20.3">.63 <sup class="ltx_sup" id="S4.T4.20.20.20.3.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.21.21.21.4">.75 <sup class="ltx_sup" id="S4.T4.21.21.21.4.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.22.22.22.5">.82 <sup class="ltx_sup" id="S4.T4.22.22.22.5.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.24.24.24.9">.40</td>
<td class="ltx_td ltx_align_left" id="S4.T4.23.23.23.6">.79 <sup class="ltx_sup" id="S4.T4.23.23.23.6.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.24.24.24.10">.38</td>
<td class="ltx_td ltx_align_left" id="S4.T4.24.24.24.7">.65 <sup class="ltx_sup" id="S4.T4.24.24.24.7.1">⋆</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.33.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.33.33.33.10" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T4.33.33.33.10.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T4.33.33.33.10.1.1" style="width:6.9pt;height:31.8pt;vertical-align:-12.4pt;"><span class="ltx_transformed_inner" style="width:31.8pt;transform:translate(-12.43pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T4.33.33.33.10.1.1.1">Decode</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.33.33.33.11"><span class="ltx_text ltx_font_bold" id="S4.T4.33.33.33.11.1">Sequence Length</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.25.25.25.1">.75 <sup class="ltx_sup" id="S4.T4.25.25.25.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.26.26.26.2">.81 <sup class="ltx_sup" id="S4.T4.26.26.26.2.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.27.27.27.3">.69 <sup class="ltx_sup" id="S4.T4.27.27.27.3.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.28.28.28.4">.93 <sup class="ltx_sup" id="S4.T4.28.28.28.4.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.29.29.29.5">.84 <sup class="ltx_sup" id="S4.T4.29.29.29.5.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.30.30.30.6">.54 <sup class="ltx_sup" id="S4.T4.30.30.30.6.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.31.31.31.7">.67 <sup class="ltx_sup" id="S4.T4.31.31.31.7.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.32.32.32.8">.50 <sup class="ltx_sup" id="S4.T4.32.32.32.8.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.33.33.33.9">.92 <sup class="ltx_sup" id="S4.T4.33.33.33.9.1">⋆</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.42.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.42.42.42.10"><span class="ltx_text ltx_font_bold" id="S4.T4.42.42.42.10.1">Model Size</span></th>
<td class="ltx_td ltx_align_left" id="S4.T4.34.34.34.1">.77 <sup class="ltx_sup" id="S4.T4.34.34.34.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.35.35.35.2">.49 <sup class="ltx_sup" id="S4.T4.35.35.35.2.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.36.36.36.3">.31 <sup class="ltx_sup" id="S4.T4.36.36.36.3.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.37.37.37.4">.92 <sup class="ltx_sup" id="S4.T4.37.37.37.4.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.38.38.38.5">.52 <sup class="ltx_sup" id="S4.T4.38.38.38.5.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.39.39.39.6">.84 <sup class="ltx_sup" id="S4.T4.39.39.39.6.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.40.40.40.7">.84 <sup class="ltx_sup" id="S4.T4.40.40.40.7.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.41.41.41.8">.89 <sup class="ltx_sup" id="S4.T4.41.41.41.8.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.42.42.42.9">.81 <sup class="ltx_sup" id="S4.T4.42.42.42.9.1">⋆</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.50.50.50">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.50.50.50.9"><span class="ltx_text ltx_font_bold" id="S4.T4.50.50.50.9.1">Compression Ratio</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.43.43.43.1">.88 <sup class="ltx_sup" id="S4.T4.43.43.43.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.44.44.44.2">.91 <sup class="ltx_sup" id="S4.T4.44.44.44.2.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T4.45.45.45.3">.87 <sup class="ltx_sup" id="S4.T4.45.45.45.3.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.46.46.46.4">.97 <sup class="ltx_sup" id="S4.T4.46.46.46.4.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.47.47.47.5">.75 <sup class="ltx_sup" id="S4.T4.47.47.47.5.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T4.48.48.48.6">.92 <sup class="ltx_sup" id="S4.T4.48.48.48.6.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.49.49.49.7">.96 <sup class="ltx_sup" id="S4.T4.49.49.49.7.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.50.50.50.10">.59</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.50.50.50.8">.93 <sup class="ltx_sup" id="S4.T4.50.50.50.8.1">⋆</sup>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Spearman's rank correlation coefficients (ρ) between the true and predicted accuracies of a sparse attention scaling law.  The model's accuracy is predicted based on sequence length, model size, and compression ratio, with separate predictions for the prefilling and decoding phases of text generation.  The correlation is calculated for each of the nine tasks used in the study.  A statistically significant correlation (p<0.05) is indicated by a star (*). This helps to evaluate how well the scaling law generalizes to unseen configurations of these parameters.
> <details>
> <summary>read the caption</summary>
> Table 4: Spearman’s correlation ρ𝜌\rhoitalic_ρ by task between true and predicted accuracy on each held-out axis (sequence length, model size, compression ratio) and each phase (prefilling and decoding). We mark statistically significant entries where p<0.05𝑝0.05p<0.05italic_p < 0.05 with ⋆.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.4.1.1.1.1.1">Task</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.4.1.1.1.2.1">Mean Tokens</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.4.1.1.1.3.1">Min Tokens</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.4.1.1.1.4.1">Max Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.4.1.2.1.1">QA QuALITY</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T5.4.1.2.1.2">243.63</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.4.1.2.1.3">196</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.4.1.2.1.4">423</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.4.1.3.2.1">QA SQuAD</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.4.1.3.2.2">217.08</th>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.3.2.3">210</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.3.2.4">235</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.4.1.4.3.1">QA ToeflQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.4.1.4.3.2">237.67</th>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.4.3.3">202</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.4.3.4">270</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.4.1.5.4.1">RULER CWE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.4.1.5.4.2">227.00</th>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.5.4.3">227</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.5.4.4">227</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.4.1.6.5.1">RULER NIAH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.4.1.6.5.2">337.74</th>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.6.5.3">330</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.6.5.4">350</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.4.1.7.6.1">RULER VT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.4.1.7.6.2">230.00</th>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.7.6.3">230</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.7.6.4">230</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.4.1.8.7.1">Story Filtering</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.4.1.8.7.2">184.00</th>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.8.7.3">184</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.8.7.4">184</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.4.1.9.8.1">Story Multi-hop</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T5.4.1.9.8.2">192.97</th>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.9.8.3">192</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.1.9.8.4">195</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T5.4.1.10.9.1">Story Retrieval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T5.4.1.10.9.2">457.54</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.4.1.10.9.3">452</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.4.1.10.9.4">462</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the lengths of questions and instructions used in the nine tasks described in the paper. For each task, it shows the mean, minimum, and maximum token lengths across 100 samples.  The data helps to inform the selection of optimal approximation window sizes used in two specific sparse attention methods: Vertical-Slash and FlexPrefill.  The choice of window size impacts how efficiently these methods can process long sequences; therefore, understanding the typical lengths of queries and instructions is key for optimal hyperparameter tuning.
> <details>
> <summary>read the caption</summary>
> Table 5: Statistics of token lengths of question and instruction for each task across 100 samples, informing the choice of approximation window size for Vertical-Slash and FlexPrefill.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.2.1.1.1">Pattern</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.2.1.2.1">Parameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.2.1.3.1">Sequence Length</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.2.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.2.1.4.1">Values for Different Compression Ratios</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.3.1.1" rowspan="3"><span class="ltx_text" id="A1.T6.1.1.3.1.1.1">Vertical &amp; Slash</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.3.1.2" rowspan="3"><span class="ltx_text" id="A1.T6.1.1.3.1.2.1">Verticals/Slashes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.1.3">16384</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.1.4">164, 240, 315, 400, 448, 576, 768, 1024, 1536, 2304</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4.2">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.2.1">32768</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.2.2">290, 384, 448, 576, 704, 1024, 1536, 2304, 3584, 4608</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5.3">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.3.1">65536</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.3.2">400, 448, 544, 640, 960, 1280, 2304, 4096, 6144, 8192</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.6.4">
<td class="ltx_td" id="A1.T6.1.1.6.4.1"></td>
<td class="ltx_td" id="A1.T6.1.1.6.4.2"></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.4.3">128000</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.4.4">480, 768, 1024, 1536, 2048, 3584, 5632, 10240, 13312, 18432</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.1.2" rowspan="3"><span class="ltx_text" id="A1.T6.1.1.1.2.1">FlexPrefill</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.1.1" rowspan="3"><span class="ltx_text" id="A1.T6.1.1.1.1.1">(<math alttext="\alpha" class="ltx_Math" display="inline" id="A1.T6.1.1.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.1.1.m1.1a"><mi id="A1.T6.1.1.1.1.1.m1.1.1" xref="A1.T6.1.1.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.1.1.m1.1b"><ci id="A1.T6.1.1.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.1.1.m1.1d">italic_α</annotation></semantics></math>, min_budget)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.1.3">16384</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.1.4">(0, 164), (0, 240), (0, 315), (0, 400), (0.55, 512), (0.71, 512), (0.88, 512)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.7.5">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.7.5.1">32768</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.7.5.2">(0, 290), (0, 384), (0.45, 512), (0.6, 512), (0.7, 512), (0.8, 512), (0.92, 512)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.8.6">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.6.1">65536</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.6.2">(0, 400), (0.45, 512), (0.55, 512), (0.7, 512), (0.77, 512), (0.85, 512), (0.94, 512)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.9.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.9.7.1" rowspan="3"><span class="ltx_text" id="A1.T6.1.1.9.7.1.1">Block Sparse</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.9.7.2" rowspan="3"><span class="ltx_text" id="A1.T6.1.1.9.7.2.1">top_chunks</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.9.7.3">16384</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.9.7.4">26, 35, 53, 71, 108, 188, 300</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.10.8">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.8.1">32768</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.8.2">52, 69, 105, 141, 216, 376, 600</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.11.9">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.9.1">65536</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.9.2">104, 139, 210, 283, 432, 752, 1200</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.12.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.12.10.1" rowspan="4"><span class="ltx_text" id="A1.T6.1.1.12.10.1.1">SnapKV/AdaSnapKV</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.12.10.2" rowspan="4"><span class="ltx_text" id="A1.T6.1.1.12.10.2.1">token_capacity</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.10.3">16384</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.10.4">819, 1092, 1638, 2183, 3276, 4915, 6553, 8192, 9830, 11468</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.13.11">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.11.1">32768</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.11.2">1638, 2185, 3276, 4367, 6553, 9830, 13107, 16384, 19660, 22937</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.14.12">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.12.1">65536</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.12.2">3276, 4371, 6553, 8735, 13107, 19660, 26214, 32768, 39321, 45875</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.15.13">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.13.1">128000</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.13.2">6400, 8544, 12800, 17056, 25600, 38400, 51200, 64000, 76800, 89600</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.16.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T6.1.1.16.14.1" rowspan="4"><span class="ltx_text" id="A1.T6.1.1.16.14.1.1">Quest</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T6.1.1.16.14.2" rowspan="4"><span class="ltx_text" id="A1.T6.1.1.16.14.2.1">token_budget</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.16.14.3">16384</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.16.14.4">816, 1088, 1632, 2176, 3280, 4912, 6560, 8192, 9824, 11472</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.17.15">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.17.15.1">32768</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.17.15.2">1632, 2192, 3280, 4368, 6560, 9824, 13104, 16384, 19664, 22944</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.18.16">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.18.16.1">65536</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.18.16.2">3280, 4368, 6560, 8736, 13104, 19664, 26208, 32768, 39328, 45872</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.19.17">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.19.17.1">128000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.19.17.2">6400, 8544, 12800, 17056, 25600, 38400, 51200, 64000, 76800, 89600</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for each of the six sparse attention methods evaluated in the paper, across different sequence lengths and compression ratios.  For each method, it shows the specific parameters that were tuned to achieve the target compression ratios. The sequence lengths considered are 16k, 32k, 65k, and 128k tokens, and the compression ratios range from 1.5x to 20x.  Understanding this table is crucial for reproducing the experimental results presented in the paper, as it details the exact configurations used for each sparse attention method.
> <details>
> <summary>read the caption</summary>
> Table 6: Pattern parameters for different sequence lengths and compression ratios
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T7.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.4.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T7.4.1.1.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T7.4.1.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="A3.T7.4.1.1.1.3">QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="A3.T7.4.1.1.1.4">Ruler</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A3.T7.4.1.1.1.5">Story</th>
</tr>
<tr class="ltx_tr" id="A3.T7.4.1.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="A3.T7.4.1.2.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r" id="A3.T7.4.1.2.2.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T7.4.1.2.2.3">QuALITY</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T7.4.1.2.2.4">SQuAD</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A3.T7.4.1.2.2.5">TOEFL</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T7.4.1.2.2.6">CWE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T7.4.1.2.2.7">NIAH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A3.T7.4.1.2.2.8">VT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T7.4.1.2.2.9">Filtering</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T7.4.1.2.2.10">Multi-hop</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T7.4.1.2.2.11">Retrieval</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.4.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T7.4.1.3.1.1" rowspan="3"><span class="ltx_text" id="A3.T7.4.1.3.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T7.4.1.3.1.1.1.1" style="width:6.9pt;height:26.6pt;vertical-align:-9.8pt;"><span class="ltx_transformed_inner" style="width:26.6pt;transform:translate(-9.81pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T7.4.1.3.1.1.1.1.1">Prefill</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T7.4.1.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.4.1.3.1.2.1">Model Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.3.1.3">0.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.3.1.4">0.11</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T7.4.1.3.1.5">0.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.3.1.6">0.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.3.1.7">0.02</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T7.4.1.3.1.8">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.3.1.9">0.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.3.1.10">0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.3.1.11">0.07</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T7.4.1.4.2.1"><span class="ltx_text ltx_font_bold" id="A3.T7.4.1.4.2.1.1">Sequence Length</span></th>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.4.2.2">0.12</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.4.2.3">0.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T7.4.1.4.2.4">0.10</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.4.2.5">0.23</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.4.2.6">0.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T7.4.1.4.2.7">0.06</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.4.2.8">0.04</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.4.2.9">0.06</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.4.2.10">0.20</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T7.4.1.5.3.1"><span class="ltx_text ltx_font_bold" id="A3.T7.4.1.5.3.1.1">Compression Ratio</span></th>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.5.3.2">0.13</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.5.3.3">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T7.4.1.5.3.4">0.12</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.5.3.5">0.18</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.5.3.6">0.24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T7.4.1.5.3.7">0.10</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.5.3.8">0.02</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.5.3.9">0.05</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.5.3.10">0.41</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T7.4.1.6.4.1" rowspan="3"><span class="ltx_text" id="A3.T7.4.1.6.4.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T7.4.1.6.4.1.1.1" style="width:6.9pt;height:31.8pt;vertical-align:-12.4pt;"><span class="ltx_transformed_inner" style="width:31.8pt;transform:translate(-12.43pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T7.4.1.6.4.1.1.1.1">Decode</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T7.4.1.6.4.2"><span class="ltx_text ltx_font_bold" id="A3.T7.4.1.6.4.2.1">Model Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.6.4.3">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.6.4.4">0.15</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T7.4.1.6.4.5">0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.6.4.6">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.6.4.7">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T7.4.1.6.4.8">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.6.4.9">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.6.4.10">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.4.1.6.4.11">0.02</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T7.4.1.7.5.1"><span class="ltx_text ltx_font_bold" id="A3.T7.4.1.7.5.1.1">Sequence Length</span></th>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.7.5.2">0.16</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.7.5.3">0.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T7.4.1.7.5.4">0.17</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.7.5.5">0.14</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.7.5.6">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T7.4.1.7.5.7">0.08</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.7.5.8">0.04</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.7.5.9">0.07</td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.1.7.5.10">0.24</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T7.4.1.8.6.1"><span class="ltx_text ltx_font_bold" id="A3.T7.4.1.8.6.1.1">Compression Ratio</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.4.1.8.6.2">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.4.1.8.6.3">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T7.4.1.8.6.4">0.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.4.1.8.6.5">0.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.4.1.8.6.6">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T7.4.1.8.6.7">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.4.1.8.6.8">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.4.1.8.6.9">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.4.1.8.6.10">0.15</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Mean Absolute Error (MAE) values, which quantify the difference between the predicted and actual accuracy of a model.  The predictions are generated using scaling laws, and the MAE is calculated for each task after holding out the maximum value for three different axes: model size, sequence length, and compression ratio. Lower MAE indicates that the model's predictions are closer to the actual accuracy, signifying a better fit and more reliable extrapolation. The results are shown separately for prefilling and decoding phases.
> <details>
> <summary>read the caption</summary>
> Table 7: Mean Absolute Error (MAE) between predicted and true accuracy by task when extrapolating along different axes (holding out max value). Lower is better.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17768/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17768/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}