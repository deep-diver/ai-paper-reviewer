---
title: "FFN Fusion: Rethinking Sequential Computation in Large Language Models"
summary: "FFN Fusion: Parallelizing sequential computation in large language models for significant speedups!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 NVIDIA",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18908 {{< /keyword >}}
{{< keyword icon="writer" >}} Akhiad Bercovich et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18908" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18908" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18908/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models(LLMs) have revolutionized AI, but their computational demands are a bottleneck. Traditional runtime optimizations like quantization and pruning have limitations, urging complementary approaches to improve efficiency while maintaining simplicity and scaling. Addressing the challenge, the paper introduces novel way to enhance LLM efficiency.



The study presents **FFN Fusion**, an optimization technique that reduces sequential computation in LLMs by parallelizing Feed-Forward Network(FFN) layers. By identifying opportunities for parallelization, FFN Fusion transforms sequential operations into parallel ones, reducing inference latency while preserving model behavior. The authors introduce **Ultra-253B-Base**, derived from Llama-3.1-405B, demonstrating significant speedups and strong performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FFN Fusion enables parallel computation in LLMs by fusing feed-forward network layers, reducing inference latency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Ultra-253B-Base, derived from Llama-3.1-405B, achieves state-of-the-art performance with a 1.71x speedup and 35x lower cost. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The effectiveness of FFN Fusion increases with model scale and complements existing optimization techniques. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **FFN Fusion**, a groundbreaking technique for optimizing LLMs, and releases Ultra-253B-Base to the public. It paves the way for future research into **parallel architectures and efficient AI**, providing a valuable resource for researchers and practitioners.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18908/extracted/6306213/assets/nvlogo2.png)

> 🔼 This figure illustrates the FFN Fusion technique used to optimize large language models.  The process begins by using the Puzzle algorithm (Step 1) to remove some feed-forward network (FFN) layers and all attention layers from the model. The remaining FFN layers are often found in consecutive sequences.  In Step 2, these sequences of FFN layers are 'fused' together into a single, wider FFN layer. This fusion allows for parallel processing of these layers, significantly increasing computational efficiency during inference without significantly impacting accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of our FFN Fusion approach. Step 1111: We apply Puzzle to partially remove FFN layers and remove entire attention layers. Step 2222: We fuse consecutive FFN layers into a single wide FFN layer.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Alignment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">MMLU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.4.1">MMLU-Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.5.1">Arena Hard</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.6.1">HumanEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.7.1">MT-Bench</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.2.1.1"><span class="ltx_text" id="S4.T1.1.2.1.1.1" style="background-color:#F2F2F2;">Ultra-253B-Base</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.2"><span class="ltx_text" id="S4.T1.1.2.1.2.1" style="background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.3"><span class="ltx_text" id="S4.T1.1.2.1.3.1" style="background-color:#F2F2F2;">85.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.4"><span class="ltx_text" id="S4.T1.1.2.1.4.1" style="background-color:#F2F2F2;">71.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.5"><span class="ltx_text" id="S4.T1.1.2.1.5.1" style="background-color:#F2F2F2;">71.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.6"><span class="ltx_text" id="S4.T1.1.2.1.6.1" style="background-color:#F2F2F2;">84.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.7"><span class="ltx_text" id="S4.T1.1.2.1.7.1" style="background-color:#F2F2F2;">9.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.3.2.1"><span class="ltx_text" id="S4.T1.1.3.2.1.1" style="background-color:#FFFFFF;">Ultra-253B-Base</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.3.2.2"><span class="ltx_text" id="S4.T1.1.3.2.2.1" style="background-color:#FFFFFF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.3.2.3"><span class="ltx_text" id="S4.T1.1.3.2.3.1" style="background-color:#FFFFFF;">85.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.3.2.4"><span class="ltx_text" id="S4.T1.1.3.2.4.1" style="background-color:#FFFFFF;">72.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.3.2.5"><span class="ltx_text" id="S4.T1.1.3.2.5.1" style="background-color:#FFFFFF;">84.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.3.2.6"><span class="ltx_text" id="S4.T1.1.3.2.6.1" style="background-color:#FFFFFF;">86.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.3.2.7"><span class="ltx_text" id="S4.T1.1.3.2.7.1" style="background-color:#FFFFFF;">9.19</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the Ultra-253B-Base model's performance on several benchmark datasets before and after applying an alignment technique.  The benchmarks assess the model's capabilities in different areas, such as reasoning and question answering. The 'Alignment' column indicates whether the alignment technique was applied. The table shows the performance scores (accuracy percentages) for the model on each benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Ultra-253B-Base performance before and after alignment.
> </details>





### In-depth insights


#### FFN Parallelism
**FFN Parallelism** could revolutionize LLM efficiency. By identifying computationally independent FFN layers, specifically post-attention removal, and processing them in parallel, we minimize accuracy impact while drastically cutting inference latency. This stems from LLMs exhibiting surprisingly low inter-layer dependencies, enabling the fusion of sequential FFN layers into a single, wider one for parallel execution. This approach excels in modern GPU setups, where tensor-parallel implementations often stumble due to synchronization delays. By concentrating computation into fewer layers and streamlining cross-device communication, we significantly enhance hardware utilization. This strategy could challenge the conventional sequential nature of transformer computation, offering a pathway to harness greater computational power. The key lies in exploiting computational independence and reducing synchronization overhead, ultimately making larger language models more accessible and efficient.

#### Puzzle & Fusion
The concept of 'Puzzle & Fusion' suggests a combined strategy for optimizing large language models (LLMs). **'Puzzle' likely refers to a method of identifying and dissecting the LLM architecture to pinpoint redundant or inefficient components**, possibly through techniques like neural architecture search (NAS) or pruning. By analogy, it can mean understanding each and every part of the puzzle (network) and their interactions. Then, **'Fusion' implies consolidating or merging remaining components to streamline computation.** This could involve techniques like layer fusion (e.g., FFN Fusion), where multiple sequential operations are combined into a single, more efficient operation, thereby removing computational overheads, which results in faster processing and reduced memory footprint. The ultimate aim is to improve inference speed and resource utilization without significantly sacrificing model accuracy. The effectiveness of this approach hinges on the ability to identify truly independent or weakly dependent components that can be safely fused without disrupting the model's overall functionality.

#### Ultra-253B-Base
The research centers around a model named **Ultra-253B-Base**, which represents a core contribution. It's derived from Llama-3.1-405B through 'FFN Fusion' and 'attention pruning', indicating a strategy of optimizing an existing architecture. Key achievements include significant efficiency gains without sacrificing performance, potentially surpassing its predecessor. This optimized model's public release further emphasizes the study's practical impact. Performance metrics suggest the model attains state-of-the-art results on key benchmarks, showcasing the effectiveness of 'FFN Fusion'. The model achieves significant speedup in inference latency and reduced per-token cost. It underscores a commitment to improving accessibility. The model involves reducing parameter count, and improving memory footprint in KV-cache memory.

#### LLM Redundancy
**LLM Redundancy** is implicitly explored. The paper delves into **structural redundancy**, with attention heads being selectively removed without significant accuracy loss, suggesting some heads are less critical. This parallels the idea of redundant parameters or computations within the network. The core idea of **FFN Fusion exploits computational independence**, implying certain FFN layers perform similar or non-essential transformations, enabling parallelization without impacting the model's overall behavior. This reveals another layer of redundancy, this time at the architectural level. Even entire blocks may be parallelizable, showing potential for further redundancy exploitation to improve efficiency.

#### MoE Tradeoffs
Mixture-of-Experts (MoE) models present a unique set of tradeoffs compared to dense models. While they offer the potential for increased model capacity and performance with a seemingly manageable computational cost, several practical challenges limit their effectiveness. The routing mechanism in MoEs, while enabling conditional computation, itself introduces overhead. **MoEs suffer from bad scaling with the number of tokens, larger low-level overheads, and worse parallelization scaling than dense models**. The effectiveness of MoEs is highly dependent on batch size, load balancing, and hardware capabilities. **Smaller batch sizes are not as efficient, while smaller layers incur large latency**. Consequently, MoEs might not always be the optimal choice, especially when deployment constraints favor simplicity, predictable scaling, or smaller batch sizes. Dense models, enhanced with techniques like FFN Fusion, can offer a compelling alternative, providing a balance between performance and efficiency.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18908/x1.png)

> 🔼 This figure is a heatmap visualizing the dependencies between blocks in the Ultra-PreFusion model. Each cell (i,j) represents the cosine similarity between the contribution of block j to the model's output when block i is present and when block i is removed. Darker blue indicates low dependency (good for parallelization), and darker red indicates high dependency (bad for parallelization). The dotted box highlights a region where attention layers have been removed, showing low inter-block dependencies, thus indicating a good candidate for FFN fusion.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Block-wise dependency heatmap for Ultra-PreFusion (log-scale). Each coordinate (i,j)𝑖𝑗(i,j)( italic_i , italic_j ) encodes how much block j𝑗jitalic_j depends on block i𝑖iitalic_i, measured by the cosine distance between hj⁢(𝑿)superscriptℎ𝑗𝑿h^{j}({\bm{X}})italic_h start_POSTSUPERSCRIPT italic_j end_POSTSUPERSCRIPT ( bold_italic_X ) and h~ij⁢(𝑿)subscriptsuperscript~ℎ𝑗𝑖𝑿\tilde{h}^{j}_{i}({\bm{X}})over~ start_ARG italic_h end_ARG start_POSTSUPERSCRIPT italic_j end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ( bold_italic_X ). Darker blue hues indicate weaker dependencies. The attention-removed region (dotted box) shows consistently lower values, suggesting greater potential for parallelization. Darker red hues indicate stronger dependencies. Further analysis of this Figure can be found in Appendix E.
> </details>



![](https://arxiv.org/html/2503.18908/x2.png)

> 🔼 This figure compares the performance of the Ultra-253B-Base model before and after an additional, longer continual pre-training (CPT) phase.  It shows benchmark results across several tasks (MMLU, MATH500, HumanEval, and RULER 128K) to illustrate the impact of the extended training on model accuracy. The bars represent the performance scores achieved on each benchmark for both the pre-CPT and post-CPT versions of the Ultra-253B-Base model, allowing for a direct visual comparison of improvements.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of Ultra-253B-Base before and after applying an additional longer continual pretraining.
> </details>



![](https://arxiv.org/html/2503.18908/x3.png)

> 🔼 Figure 4 presents a performance comparison of the Ultra-253B-Base language model against other models.  The x-axis represents the model's inference latency (measured in tokens per second) on a single NVIDIA H100 GPU with tensor parallelism (TP8) using FP8 precision.  The y-axis shows the model's accuracy, which is a composite score calculated as the average of several benchmark metrics. The benchmarks include MT-Bench (weighted 10x), MMLU, MMLU-Pro, Arena Hard, and HumanEval.  The red line illustrates the efficient frontier, which highlights the models that best balance accuracy and speed.  Points above the red line represent models that achieve higher accuracy for a given latency, indicating superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Accuracy vs. latency performance of Ultra-253B-Base. Latency is measured on a single NVIDIA H100 node with tensor parallel (TP) 8, running in FP8. The red line represents the efficient frontier, highlighting models with the best accuracy-to-throughput tradeoff. Accuracy = (MT-Bench×10+MMLU+MMLU-Pro+Arena Hard+HumanEval)/5MT-Bench10MMLUMMLU-ProArena HardHumanEval5(\text{MT-Bench}\times 10+\text{MMLU}+\text{MMLU-Pro}+\text{Arena Hard}+\text{% HumanEval})/5( MT-Bench × 10 + MMLU + MMLU-Pro + Arena Hard + HumanEval ) / 5.
> </details>



![](https://arxiv.org/html/2503.18908/x4.png)

> 🔼 This figure compares the accuracy and latency trade-offs between removing FFN layers and fusing them using FFN Fusion.  The x-axis represents latency (in milliseconds), and the y-axis represents accuracy (%).  Multiple lines are shown, each representing a different strategy: (1) a baseline (no FFN removal or fusion), (2) removal of 15 FFN layers, (3) removal of 20 FFN layers, (4) applying FFN Fusion in a single step, and (5) applying FFN Fusion followed by knowledge distillation (KD). The results demonstrate that FFN Fusion achieves significantly better accuracy at comparable latencies compared to simply removing FFN layers. Knowledge distillation further improves the performance of the fusion method.
> <details>
> <summary>read the caption</summary>
> Figure 5: Accuracy vs. Latency for FFN Removal vs. Fusion.
> </details>



![](https://arxiv.org/html/2503.18908/x5.png)

> 🔼 Figure 6 presents a per-layer analysis of two key metrics, comparing the 49B and 253B models.  The top row shows the cosine distance between the input (X) and the output (f(X)) of each layer.  A lower cosine distance suggests that the layer's output is very similar to its input, implying less processing and transformation is occurring. The bottom row visualizes the ratio of h(X) (the block's contribution to X) to X itself.  A lower ratio indicates that the layer has minimal effect on the input's direction, suggesting a low dependency on preceding layers. This analysis helps to identify regions within the model that are suitable for parallelization, as observed by minimal impact from fusing FFN layers.
> <details>
> <summary>read the caption</summary>
> Figure 6: Per-layer metrics. Upper row is the cosine distance between f⁢(𝑿)𝑓𝑿f({\bm{X}})italic_f ( bold_italic_X ) and 𝑿𝑿{\bm{X}}bold_italic_X for the (a) The 49B model and (b) Ultra-253B-Base model. Bottom row represents the ratio between h⁢(𝑿)ℎ𝑿h({\bm{X}})italic_h ( bold_italic_X ) and 𝑿𝑿{\bm{X}}bold_italic_X for the (c) The 49B model and (d) Ultra-253B-Base model.
> </details>



![](https://arxiv.org/html/2503.18908/x6.png)

> 🔼 This figure shows the cosine distance between the output of each layer and its input for the 49B parameter model (left) and the Ultra-253B-Base model (right).  The cosine distance is a measure of the similarity between two vectors; a lower cosine distance indicates higher similarity.  The plot shows that in certain regions of the model (primarily those with fused FFN layers), the cosine distance between the input and output is relatively small. This suggests that the FFN layers in these regions have a limited effect on the input's direction, allowing them to be fused without significantly impacting the model's accuracy.  The low cosine distance in these regions is a key observation supporting the FFN Fusion optimization technique.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.18908/x7.png)

> 🔼 This figure shows the heatmap of the block-wise dependency for the Ultra-PreFusion model (before applying FFN fusion). The heatmap visualizes the dependency between blocks using cosine distance. Darker blue colors represent lower dependency (meaning blocks are relatively independent), while darker red colors indicate higher dependency (meaning blocks are strongly dependent). The figure highlights a region where multiple consecutive FFN layers exhibit low interdependencies, suggesting a significant potential for parallelization using FFN fusion. The dark blue region (marked by a dashed square) indicates such a region, while the redder regions indicate higher dependencies making parallelization more challenging or potentially less effective.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.18908/x8.png)

> 🔼 Figure 7 visualizes the dependencies between blocks in a 49B parameter language model.  Panel (a) is a heatmap showing pairwise dependencies; darker blue indicates weaker dependence, while darker red shows stronger dependence.  Panel (b) displays two metrics (Mmax and Msum) calculated for sequences of four consecutive blocks, which quantify the maximum and sum of dependencies within those sequences, respectively. Lower values of Mmax and Msum suggest greater potential for parallelization.
> <details>
> <summary>read the caption</summary>
> Figure 7: (a) Block-wise Dependency Heatmap of the 49B model (log-scale). Darker blue hues indicate weaker dependencies, darker red hues indicate stronger dependencies. (b) 𝑴maxsubscript𝑴max{\bm{M}}_{\text{max}}bold_italic_M start_POSTSUBSCRIPT max end_POSTSUBSCRIPT and 𝑴sumsubscript𝑴sum{\bm{M}}_{\text{sum}}bold_italic_M start_POSTSUBSCRIPT sum end_POSTSUBSCRIPT values for 4-Block Sequences of the 49B model. Lower values indicating more promising candidates for parallelization.
> </details>



![](https://arxiv.org/html/2503.18908/x9.png)

> 🔼 Figure 8 illustrates the FFN Fusion technique applied to the SwiGLU activation function. The left side shows two separate SwiGLU layers, each with its own weight matrices (W1, W2, W3).  The input to the second layer depends on the output of the first. FFN Fusion combines these two layers into a single, wider SwiGLU layer (right). The new layer has combined weight matrices which achieve the same result as the two sequential layers but allows for parallel processing. The figure visually demonstrates the effect of reducing sequential computations and improving efficiency by merging FFN layers.
> <details>
> <summary>read the caption</summary>
> Figure 8: A visualization of FFN Fusion applied to SwiGLU. Two FFNs (left) are fused into a single FFN (right).
> </details>



![](https://arxiv.org/html/2503.18908/x10.png)

> 🔼 This figure shows the layout of attention layers in the Ultra-PreFusion model before applying FFN Fusion.  The x-axis represents the layer index, and the y-axis indicates the type of layer.  The figure visually represents the sequence and distribution of attention layers and other layers within the model's architecture.  This helps to illustrate the pattern of attention layers that are removed or fused during model optimization.
> <details>
> <summary>read the caption</summary>
> (a) Ultra-PreFusion Attention Layout
> </details>



![](https://arxiv.org/html/2503.18908/x11.png)

> 🔼 This figure shows the layout of feed-forward networks (FFNs) in the Ultra-PreFusion model. It illustrates the arrangement of FFN layers, their widths (number of neurons), and how they are distributed throughout the model's architecture.  The x-axis represents the layer index, and the y-axis represents the FFN width (or the number of neurons in each FFN layer).  The plot visually depicts the changes in the width of the FFN layers across the various layers of the model. This visualization helps to understand the model's structure and how the computational complexity varies across different layers.
> <details>
> <summary>read the caption</summary>
> (b) Ultra-PreFusion FFN Layout
> </details>



![](https://arxiv.org/html/2503.18908/x12.png)

> 🔼 This figure is a visualization of the attention layers layout in the Puzzle-49B model architecture. It shows the arrangement and quantity of attention layers across the model's layers, illustrating how the Puzzle algorithm has pruned or removed certain layers. The x-axis represents the layer index, while the y-axis shows the number of attention layers present at each layer. The figure helps in understanding the sparsity introduced by the Puzzle optimization technique, specifically in the context of the 49B parameter model.
> <details>
> <summary>read the caption</summary>
> (c) Puzzle-49B Attention Layout
> </details>



![](https://arxiv.org/html/2503.18908/x13.png)

> 🔼 This figure is a visualization of the feed-forward network (FFN) layer layout for the Puzzle-49B model.  It shows the number of FFN layers across the model's depth, and visually depicts the varying widths of these FFN layers as a result of the Puzzle algorithm's optimization. The x-axis represents the layer index and the y-axis represents the width (scaling multiplier) of the FFN layer.  This helps illustrate the effect of Puzzle in making FFN layer widths vary across the layers, and highlights sequences of consecutive FFN layers resulting from the pruning of attention layers.
> <details>
> <summary>read the caption</summary>
> (d) Puzzle-49B FFN Layout
> </details>



![](https://arxiv.org/html/2503.18908/x14.png)

> 🔼 This figure provides a detailed comparison of the architectural layouts of two large language models: Ultra-253B-Base and Puzzle-49B.  The top row displays the architecture of the Ultra-253B-Base model, showing the arrangement of attention and feed-forward network (FFN) layers.  The bottom row shows the corresponding architecture for the Puzzle-49B model.  Subfigures (a) and (b) specifically detail the attention and FFN layers, respectively, within the Ultra-253B-Base model. Subfigures (c) and (d) present the same information for the Puzzle-49B model.  A key takeaway is that both models exhibit variable FFN widths and sections where attention layers have been removed, although the scale of these variations differs between the two models.
> <details>
> <summary>read the caption</summary>
> Figure 9:  A 2x2 overview of Ultra-253B-Base (top row) and Puzzle-49B (bottom row). Subfigures (9(a)) and (9(b)) illustrate the attention and FFN configurations, respectively, for the 253B model. Subfigures (9(c)) and (9(d)) show the corresponding layouts for the 49B model. Both architectures feature variable FFN widths and regions where attention has been removed, although at different scales.
> </details>



![](https://arxiv.org/html/2503.18908/x15.png)

> 🔼 This figure illustrates how FFN Fusion improves latency.  The left side shows a traditional approach with sequential FFN layers (FFN1 and FFN2). Each FFN layer requires synchronization (represented by the 'Sync' label), leading to longer execution times due to the need for communication between GPUs. In contrast, the right side depicts the FFN Fusion method, where FFN1 and FFN2 are merged into a single, wider layer. This reduces the number of synchronization points and increases GPU utilization, resulting in faster inference latency.
> <details>
> <summary>read the caption</summary>
> Figure 10: FFN Fusion helps reduce latency by increasing GPU utilization and by reducing syncs
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.2.1">Tokens/Second</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2.4.1" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.2.4.1.1"><span class="ltx_text" id="S4.T2.2.2.4.1.1.1" style="background-color:#F2F2F2;">Llama-405B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.1.2"><span class="ltx_text" id="S4.T2.2.2.4.1.2.1" style="background-color:#F2F2F2;">41.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.1.2"><span class="ltx_text" id="S4.T2.1.1.1.2.1" style="background-color:#FFFFFF;">Ultra-PreFusion</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.1"><span class="ltx_text" id="S4.T2.1.1.1.1.1" style="background-color:#FFFFFF;">63.38 (1.53<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" mathbackground="#FFFFFF" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><times id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">×</annotation></semantics></math> Speedup)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1" style="background-color:#F2F2F2;">Ultra-253B-Base</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.1"><span class="ltx_text" id="S4.T2.2.2.2.1.1" style="background-color:#F2F2F2;">70.92 (1.71<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.1.m1.1"><semantics id="S4.T2.2.2.2.1.1.m1.1a"><mo id="S4.T2.2.2.2.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S4.T2.2.2.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.1.m1.1b"><times id="S4.T2.2.2.2.1.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.1.m1.1d">×</annotation></semantics></math> Speedup)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.5.2" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.2.5.2.1"><span class="ltx_text" id="S4.T2.2.2.5.2.1.1" style="background-color:#FFFFFF;">Llama-3.3-70B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.5.2.2"><span class="ltx_text" id="S4.T2.2.2.5.2.2.1" style="background-color:#FFFFFF;">94.03</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the inference latency (measured as tokens per second) for different large language models (LLMs) running on a single NVIDIA H100 GPU with Tensor Parallelism set to 8. Lower latency is better, indicating faster inference.  The models compared include Llama-405B (the original model), Ultra-PreFusion (an intermediate model produced through attention pruning), and Ultra-253B-Base (the final model obtained using FFN Fusion).  The table also includes a 70B parameter model for comparison.  The results showcase the speedup achieved by FFN Fusion, which helps optimize the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 2: User latency under Tensor Parallel (TP) 8 on a single H100 node. A higher tokens/second value indicates lower latency for a single user.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Metric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Llama-405B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">Ultra-253B-Base</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.2.1.1"><span class="ltx_text" id="S4.T3.1.2.1.1.1" style="background-color:#F2F2F2;">MMLU Instruct <cite class="ltx_cite ltx_citemacro_citep">(Nvidia et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18908v1#bib.bib31" title="">2024</a>)</cite></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.2"><span class="ltx_text" id="S4.T3.1.2.1.2.1" style="background-color:#F2F2F2;">86.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.3"><span class="ltx_text" id="S4.T3.1.2.1.3.1" style="background-color:#F2F2F2;">87.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.3.2.1"><span class="ltx_text" id="S4.T3.1.3.2.1.1" style="background-color:#FFFFFF;">MMLU-Pro <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18908v1#bib.bib43" title="">2024a</a>)</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.2"><span class="ltx_text" id="S4.T3.1.3.2.2.1" style="background-color:#FFFFFF;">71.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.3"><span class="ltx_text" id="S4.T3.1.3.2.3.1" style="background-color:#FFFFFF;">72.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.4.3.1"><span class="ltx_text" id="S4.T3.1.4.3.1.1" style="background-color:#F2F2F2;">Arena Hard <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18908v1#bib.bib28" title="">2024</a>)</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.3.2"><span class="ltx_text" id="S4.T3.1.4.3.2.1" style="background-color:#F2F2F2;">72.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.3.3"><span class="ltx_text" id="S4.T3.1.4.3.3.1" style="background-color:#F2F2F2;">84.92</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.4" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.5.4.1"><span class="ltx_text" id="S4.T3.1.5.4.1.1" style="background-color:#FFFFFF;">HumanEval <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18908v1#bib.bib4" title="">2021</a>)</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.4.2"><span class="ltx_text" id="S4.T3.1.5.4.2.1" style="background-color:#FFFFFF;">85.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.4.3"><span class="ltx_text" id="S4.T3.1.5.4.3.1" style="background-color:#FFFFFF;">86.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.5" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.6.5.1"><span class="ltx_text" id="S4.T3.1.6.5.1.1" style="background-color:#F2F2F2;">MT-Bench <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18908v1#bib.bib49" title="">2023</a>)</cite></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.6.5.2"><span class="ltx_text" id="S4.T3.1.6.5.2.1" style="background-color:#F2F2F2;">9.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.6.5.3"><span class="ltx_text" id="S4.T3.1.6.5.3.1" style="background-color:#F2F2F2;">9.19</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the Ultra-253B-Base model and its parent model, Llama-405B, across several key benchmarks.  Ultra-253B-Base is derived from Llama-405B through the application of three optimization techniques: FFN Fusion (a novel parallelization technique), Knowledge Distillation (KD), and alignment. The table shows the accuracy scores achieved by both models on these benchmarks, highlighting the impact of the optimization techniques on model performance while maintaining or even surpassing the original model's capabilities.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of Ultra-253B-Base and its parent Llama-405B after applying FFN Fusion, KD, and alignment.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.25">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.25.24.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.25.24.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">Model</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.25.24.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">Fusion</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.25.24.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">MMLU</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.25.24.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">MT-Bench</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.25.24.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">Accuracy</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.5.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.5.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T4.5.3.4.1" style="background-color:#F2F2F2;">Baseline (49B Model)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.5.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T4.5.3.5.1" style="background-color:#F2F2F2;">-</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.3.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="80.73" class="ltx_Math" display="inline" id="S5.T4.3.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.3.1.1.m1.1a"><mn id="S5.T4.3.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.3.1.1.m1.1.1.cmml">80.73</mn><annotation-xml encoding="MathML-Content" id="S5.T4.3.1.1.m1.1b"><cn id="S5.T4.3.1.1.m1.1.1.cmml" type="float" xref="S5.T4.3.1.1.m1.1.1">80.73</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.1.1.m1.1c">80.73</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.1.1.m1.1d">80.73</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.4.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="8.87" class="ltx_Math" display="inline" id="S5.T4.4.2.2.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.4.2.2.m1.1a"><mn id="S5.T4.4.2.2.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.4.2.2.m1.1.1.cmml">8.87</mn><annotation-xml encoding="MathML-Content" id="S5.T4.4.2.2.m1.1b"><cn id="S5.T4.4.2.2.m1.1.1.cmml" type="float" xref="S5.T4.4.2.2.m1.1.1">8.87</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.2.2.m1.1c">8.87</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.2.2.m1.1d">8.87</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.5.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="84.71" class="ltx_Math" display="inline" id="S5.T4.5.3.3.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.5.3.3.m1.1a"><mn id="S5.T4.5.3.3.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.5.3.3.m1.1.1.cmml">84.71</mn><annotation-xml encoding="MathML-Content" id="S5.T4.5.3.3.m1.1b"><cn id="S5.T4.5.3.3.m1.1.1.cmml" type="float" xref="S5.T4.5.3.3.m1.1.1">84.71</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.3.3.m1.1c">84.71</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.3.3.m1.1d">84.71</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.7" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.9.7.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T4.9.7.5.1" style="background-color:#FFFFFF;">Step 1</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.4.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="26\to 12" class="ltx_Math" display="inline" id="S5.T4.6.4.1.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.6.4.1.m1.1a"><mrow id="S5.T4.6.4.1.m1.1.1" xref="S5.T4.6.4.1.m1.1.1.cmml"><mn id="S5.T4.6.4.1.m1.1.1.2" mathbackground="#FFFFFF" xref="S5.T4.6.4.1.m1.1.1.2.cmml">26</mn><mo id="S5.T4.6.4.1.m1.1.1.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T4.6.4.1.m1.1.1.1.cmml">→</mo><mn id="S5.T4.6.4.1.m1.1.1.3" mathbackground="#FFFFFF" xref="S5.T4.6.4.1.m1.1.1.3.cmml">12</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.6.4.1.m1.1b"><apply id="S5.T4.6.4.1.m1.1.1.cmml" xref="S5.T4.6.4.1.m1.1.1"><ci id="S5.T4.6.4.1.m1.1.1.1.cmml" xref="S5.T4.6.4.1.m1.1.1.1">→</ci><cn id="S5.T4.6.4.1.m1.1.1.2.cmml" type="integer" xref="S5.T4.6.4.1.m1.1.1.2">26</cn><cn id="S5.T4.6.4.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.6.4.1.m1.1.1.3">12</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.4.1.m1.1c">26\to 12</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.4.1.m1.1d">26 → 12</annotation></semantics></math></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.7.5.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="80.64" class="ltx_Math" display="inline" id="S5.T4.7.5.2.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.7.5.2.m1.1a"><mn id="S5.T4.7.5.2.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.7.5.2.m1.1.1.cmml">80.64</mn><annotation-xml encoding="MathML-Content" id="S5.T4.7.5.2.m1.1b"><cn id="S5.T4.7.5.2.m1.1.1.cmml" type="float" xref="S5.T4.7.5.2.m1.1.1">80.64</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.5.2.m1.1c">80.64</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.5.2.m1.1d">80.64</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.8.6.3" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="8.72" class="ltx_Math" display="inline" id="S5.T4.8.6.3.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.8.6.3.m1.1a"><mn id="S5.T4.8.6.3.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.8.6.3.m1.1.1.cmml">8.72</mn><annotation-xml encoding="MathML-Content" id="S5.T4.8.6.3.m1.1b"><cn id="S5.T4.8.6.3.m1.1.1.cmml" type="float" xref="S5.T4.8.6.3.m1.1.1">8.72</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.6.3.m1.1c">8.72</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.6.3.m1.1d">8.72</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.9.7.4" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="83.92" class="ltx_Math" display="inline" id="S5.T4.9.7.4.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.9.7.4.m1.1a"><mn id="S5.T4.9.7.4.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.9.7.4.m1.1.1.cmml">83.92</mn><annotation-xml encoding="MathML-Content" id="S5.T4.9.7.4.m1.1b"><cn id="S5.T4.9.7.4.m1.1.1.cmml" type="float" xref="S5.T4.9.7.4.m1.1.1">83.92</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.9.7.4.m1.1c">83.92</annotation><annotation encoding="application/x-llamapun" id="S5.T4.9.7.4.m1.1d">83.92</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.13.11" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.13.11.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T4.13.11.5.1" style="background-color:#F2F2F2;">Step 2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T4.10.8.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="26\to 6" class="ltx_Math" display="inline" id="S5.T4.10.8.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.10.8.1.m1.1a"><mrow id="S5.T4.10.8.1.m1.1.1" xref="S5.T4.10.8.1.m1.1.1.cmml"><mn id="S5.T4.10.8.1.m1.1.1.2" mathbackground="#F2F2F2" xref="S5.T4.10.8.1.m1.1.1.2.cmml">26</mn><mo id="S5.T4.10.8.1.m1.1.1.1" mathbackground="#F2F2F2" stretchy="false" xref="S5.T4.10.8.1.m1.1.1.1.cmml">→</mo><mn id="S5.T4.10.8.1.m1.1.1.3" mathbackground="#F2F2F2" xref="S5.T4.10.8.1.m1.1.1.3.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.10.8.1.m1.1b"><apply id="S5.T4.10.8.1.m1.1.1.cmml" xref="S5.T4.10.8.1.m1.1.1"><ci id="S5.T4.10.8.1.m1.1.1.1.cmml" xref="S5.T4.10.8.1.m1.1.1.1">→</ci><cn id="S5.T4.10.8.1.m1.1.1.2.cmml" type="integer" xref="S5.T4.10.8.1.m1.1.1.2">26</cn><cn id="S5.T4.10.8.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.10.8.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.10.8.1.m1.1c">26\to 6</annotation><annotation encoding="application/x-llamapun" id="S5.T4.10.8.1.m1.1d">26 → 6</annotation></semantics></math></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.11.9.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="80.29" class="ltx_Math" display="inline" id="S5.T4.11.9.2.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.11.9.2.m1.1a"><mn id="S5.T4.11.9.2.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.11.9.2.m1.1.1.cmml">80.29</mn><annotation-xml encoding="MathML-Content" id="S5.T4.11.9.2.m1.1b"><cn id="S5.T4.11.9.2.m1.1.1.cmml" type="float" xref="S5.T4.11.9.2.m1.1.1">80.29</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.11.9.2.m1.1c">80.29</annotation><annotation encoding="application/x-llamapun" id="S5.T4.11.9.2.m1.1d">80.29</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.12.10.3" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="8.54" class="ltx_Math" display="inline" id="S5.T4.12.10.3.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.12.10.3.m1.1a"><mn id="S5.T4.12.10.3.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.12.10.3.m1.1.1.cmml">8.54</mn><annotation-xml encoding="MathML-Content" id="S5.T4.12.10.3.m1.1b"><cn id="S5.T4.12.10.3.m1.1.1.cmml" type="float" xref="S5.T4.12.10.3.m1.1.1">8.54</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.12.10.3.m1.1c">8.54</annotation><annotation encoding="application/x-llamapun" id="S5.T4.12.10.3.m1.1d">8.54</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.13.11.4" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="82.84" class="ltx_Math" display="inline" id="S5.T4.13.11.4.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.13.11.4.m1.1a"><mn id="S5.T4.13.11.4.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.13.11.4.m1.1.1.cmml">82.84</mn><annotation-xml encoding="MathML-Content" id="S5.T4.13.11.4.m1.1b"><cn id="S5.T4.13.11.4.m1.1.1.cmml" type="float" xref="S5.T4.13.11.4.m1.1.1">82.84</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.13.11.4.m1.1c">82.84</annotation><annotation encoding="application/x-llamapun" id="S5.T4.13.11.4.m1.1d">82.84</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.17.15" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.17.15.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T4.17.15.5.1" style="background-color:#FFFFFF;">Step 3</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T4.14.12.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="26\to 3" class="ltx_Math" display="inline" id="S5.T4.14.12.1.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.14.12.1.m1.1a"><mrow id="S5.T4.14.12.1.m1.1.1" xref="S5.T4.14.12.1.m1.1.1.cmml"><mn id="S5.T4.14.12.1.m1.1.1.2" mathbackground="#FFFFFF" xref="S5.T4.14.12.1.m1.1.1.2.cmml">26</mn><mo id="S5.T4.14.12.1.m1.1.1.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T4.14.12.1.m1.1.1.1.cmml">→</mo><mn id="S5.T4.14.12.1.m1.1.1.3" mathbackground="#FFFFFF" xref="S5.T4.14.12.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.14.12.1.m1.1b"><apply id="S5.T4.14.12.1.m1.1.1.cmml" xref="S5.T4.14.12.1.m1.1.1"><ci id="S5.T4.14.12.1.m1.1.1.1.cmml" xref="S5.T4.14.12.1.m1.1.1.1">→</ci><cn id="S5.T4.14.12.1.m1.1.1.2.cmml" type="integer" xref="S5.T4.14.12.1.m1.1.1.2">26</cn><cn id="S5.T4.14.12.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.14.12.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.14.12.1.m1.1c">26\to 3</annotation><annotation encoding="application/x-llamapun" id="S5.T4.14.12.1.m1.1d">26 → 3</annotation></semantics></math></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.15.13.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="80.39" class="ltx_Math" display="inline" id="S5.T4.15.13.2.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.15.13.2.m1.1a"><mn id="S5.T4.15.13.2.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.15.13.2.m1.1.1.cmml">80.39</mn><annotation-xml encoding="MathML-Content" id="S5.T4.15.13.2.m1.1b"><cn id="S5.T4.15.13.2.m1.1.1.cmml" type="float" xref="S5.T4.15.13.2.m1.1.1">80.39</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.15.13.2.m1.1c">80.39</annotation><annotation encoding="application/x-llamapun" id="S5.T4.15.13.2.m1.1d">80.39</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.16.14.3" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="8.30" class="ltx_Math" display="inline" id="S5.T4.16.14.3.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.16.14.3.m1.1a"><mn id="S5.T4.16.14.3.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.16.14.3.m1.1.1.cmml">8.30</mn><annotation-xml encoding="MathML-Content" id="S5.T4.16.14.3.m1.1b"><cn id="S5.T4.16.14.3.m1.1.1.cmml" type="float" xref="S5.T4.16.14.3.m1.1.1">8.30</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.16.14.3.m1.1c">8.30</annotation><annotation encoding="application/x-llamapun" id="S5.T4.16.14.3.m1.1d">8.30</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.17.15.4" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="81.69" class="ltx_Math" display="inline" id="S5.T4.17.15.4.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.17.15.4.m1.1a"><mn id="S5.T4.17.15.4.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.17.15.4.m1.1.1.cmml">81.69</mn><annotation-xml encoding="MathML-Content" id="S5.T4.17.15.4.m1.1b"><cn id="S5.T4.17.15.4.m1.1.1.cmml" type="float" xref="S5.T4.17.15.4.m1.1.1">81.69</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.17.15.4.m1.1c">81.69</annotation><annotation encoding="application/x-llamapun" id="S5.T4.17.15.4.m1.1d">81.69</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.21.19" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.21.19.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T4.21.19.5.1" style="background-color:#F2F2F2;">Step 4</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T4.18.16.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="26\to 2" class="ltx_Math" display="inline" id="S5.T4.18.16.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.18.16.1.m1.1a"><mrow id="S5.T4.18.16.1.m1.1.1" xref="S5.T4.18.16.1.m1.1.1.cmml"><mn id="S5.T4.18.16.1.m1.1.1.2" mathbackground="#F2F2F2" xref="S5.T4.18.16.1.m1.1.1.2.cmml">26</mn><mo id="S5.T4.18.16.1.m1.1.1.1" mathbackground="#F2F2F2" stretchy="false" xref="S5.T4.18.16.1.m1.1.1.1.cmml">→</mo><mn id="S5.T4.18.16.1.m1.1.1.3" mathbackground="#F2F2F2" xref="S5.T4.18.16.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.18.16.1.m1.1b"><apply id="S5.T4.18.16.1.m1.1.1.cmml" xref="S5.T4.18.16.1.m1.1.1"><ci id="S5.T4.18.16.1.m1.1.1.1.cmml" xref="S5.T4.18.16.1.m1.1.1.1">→</ci><cn id="S5.T4.18.16.1.m1.1.1.2.cmml" type="integer" xref="S5.T4.18.16.1.m1.1.1.2">26</cn><cn id="S5.T4.18.16.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.18.16.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.18.16.1.m1.1c">26\to 2</annotation><annotation encoding="application/x-llamapun" id="S5.T4.18.16.1.m1.1d">26 → 2</annotation></semantics></math></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.19.17.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="79.98" class="ltx_Math" display="inline" id="S5.T4.19.17.2.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.19.17.2.m1.1a"><mn id="S5.T4.19.17.2.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.19.17.2.m1.1.1.cmml">79.98</mn><annotation-xml encoding="MathML-Content" id="S5.T4.19.17.2.m1.1b"><cn id="S5.T4.19.17.2.m1.1.1.cmml" type="float" xref="S5.T4.19.17.2.m1.1.1">79.98</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.19.17.2.m1.1c">79.98</annotation><annotation encoding="application/x-llamapun" id="S5.T4.19.17.2.m1.1d">79.98</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.20.18.3" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="8.25" class="ltx_Math" display="inline" id="S5.T4.20.18.3.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.20.18.3.m1.1a"><mn id="S5.T4.20.18.3.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.20.18.3.m1.1.1.cmml">8.25</mn><annotation-xml encoding="MathML-Content" id="S5.T4.20.18.3.m1.1b"><cn id="S5.T4.20.18.3.m1.1.1.cmml" type="float" xref="S5.T4.20.18.3.m1.1.1">8.25</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.20.18.3.m1.1c">8.25</annotation><annotation encoding="application/x-llamapun" id="S5.T4.20.18.3.m1.1d">8.25</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.21.19.4" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="81.24" class="ltx_Math" display="inline" id="S5.T4.21.19.4.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T4.21.19.4.m1.1a"><mn id="S5.T4.21.19.4.m1.1.1" mathbackground="#F2F2F2" xref="S5.T4.21.19.4.m1.1.1.cmml">81.24</mn><annotation-xml encoding="MathML-Content" id="S5.T4.21.19.4.m1.1b"><cn id="S5.T4.21.19.4.m1.1.1.cmml" type="float" xref="S5.T4.21.19.4.m1.1.1">81.24</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.21.19.4.m1.1c">81.24</annotation><annotation encoding="application/x-llamapun" id="S5.T4.21.19.4.m1.1d">81.24</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.25.23" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.25.23.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T4.25.23.5.1" style="background-color:#FFFFFF;">Step 3 + KD</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.22.20.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="26\to 3" class="ltx_Math" display="inline" id="S5.T4.22.20.1.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.22.20.1.m1.1a"><mrow id="S5.T4.22.20.1.m1.1.1" xref="S5.T4.22.20.1.m1.1.1.cmml"><mn id="S5.T4.22.20.1.m1.1.1.2" mathbackground="#FFFFFF" xref="S5.T4.22.20.1.m1.1.1.2.cmml">26</mn><mo id="S5.T4.22.20.1.m1.1.1.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T4.22.20.1.m1.1.1.1.cmml">→</mo><mn id="S5.T4.22.20.1.m1.1.1.3" mathbackground="#FFFFFF" xref="S5.T4.22.20.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.22.20.1.m1.1b"><apply id="S5.T4.22.20.1.m1.1.1.cmml" xref="S5.T4.22.20.1.m1.1.1"><ci id="S5.T4.22.20.1.m1.1.1.1.cmml" xref="S5.T4.22.20.1.m1.1.1.1">→</ci><cn id="S5.T4.22.20.1.m1.1.1.2.cmml" type="integer" xref="S5.T4.22.20.1.m1.1.1.2">26</cn><cn id="S5.T4.22.20.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.22.20.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.22.20.1.m1.1c">26\to 3</annotation><annotation encoding="application/x-llamapun" id="S5.T4.22.20.1.m1.1d">26 → 3</annotation></semantics></math></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.23.21.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="80.56" class="ltx_Math" display="inline" id="S5.T4.23.21.2.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.23.21.2.m1.1a"><mn id="S5.T4.23.21.2.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.23.21.2.m1.1.1.cmml">80.56</mn><annotation-xml encoding="MathML-Content" id="S5.T4.23.21.2.m1.1b"><cn id="S5.T4.23.21.2.m1.1.1.cmml" type="float" xref="S5.T4.23.21.2.m1.1.1">80.56</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.23.21.2.m1.1c">80.56</annotation><annotation encoding="application/x-llamapun" id="S5.T4.23.21.2.m1.1d">80.56</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.24.22.3" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="9.00" class="ltx_Math" display="inline" id="S5.T4.24.22.3.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.24.22.3.m1.1a"><mn id="S5.T4.24.22.3.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.24.22.3.m1.1.1.cmml">9.00</mn><annotation-xml encoding="MathML-Content" id="S5.T4.24.22.3.m1.1b"><cn id="S5.T4.24.22.3.m1.1.1.cmml" type="float" xref="S5.T4.24.22.3.m1.1.1">9.00</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.24.22.3.m1.1c">9.00</annotation><annotation encoding="application/x-llamapun" id="S5.T4.24.22.3.m1.1d">9.00</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.25.23.4" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="85.28" class="ltx_Math" display="inline" id="S5.T4.25.23.4.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T4.25.23.4.m1.1a"><mn id="S5.T4.25.23.4.m1.1.1" mathbackground="#FFFFFF" xref="S5.T4.25.23.4.m1.1.1.cmml">85.28</mn><annotation-xml encoding="MathML-Content" id="S5.T4.25.23.4.m1.1b"><cn id="S5.T4.25.23.4.m1.1.1.cmml" type="float" xref="S5.T4.25.23.4.m1.1.1">85.28</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.25.23.4.m1.1c">85.28</annotation><annotation encoding="application/x-llamapun" id="S5.T4.25.23.4.m1.1d">85.28</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of applying FFN Fusion to a 49B parameter model derived from Llama-3.1-70B-Instruct.  The model was preprocessed using the Puzzle algorithm, resulting in two main sequences of consecutive FFN layers. FFN Fusion was applied in four steps of increasing intensity, each step reducing the number of FFN layers more than the previous.  Each row shows the performance of a different fusion variant (MMLU accuracy, MT-Bench score, and a combined accuracy score). The second column displays how many original FFN layers were replaced by the fused layers in each step. The table demonstrates the trade-off between model efficiency (fewer layers) and accuracy as more aggressive fusion is applied.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation of FFN Fusion. A detailed description of each fusion step (step x𝑥xitalic_x) is provided in the main text. The second column from the left indicates how many FFN layers were replaced by the corresponding number of new layers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T5.8.8.9.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.8.8.9.1.1.1">Fused FFN Sequence(s)</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.8.8.9.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.8.8.9.1.2.1">MMLU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.8.8.9.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.8.8.9.1.3.1">MT-Bench</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.10.2" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.8.8.10.2.1"><span class="ltx_text" id="S5.T5.8.8.10.2.1.1" style="background-color:#F2F2F2;">Puzzle-49B (No Fusion)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.10.2.2"><span class="ltx_text" id="S5.T5.8.8.10.2.2.1" style="background-color:#F2F2F2;">80.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.8.8.10.2.3"><span class="ltx_text" id="S5.T5.8.8.10.2.3.1" style="background-color:#F2F2F2;">8.87</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.11.3" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="S5.T5.8.8.11.3.1"><span class="ltx_text ltx_font_bold" id="S5.T5.8.8.11.3.1.1" style="background-color:#FFFFFF;">Fusing a Single Sequence</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.1.1.1.1"><math alttext="[53,69]" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.2" style="background-color:#F2F2F2;"><semantics id="S5.T5.1.1.1.1.m1.2a"><mrow id="S5.T5.1.1.1.1.m1.2.3.2" xref="S5.T5.1.1.1.1.m1.2.3.1.cmml"><mo id="S5.T5.1.1.1.1.m1.2.3.2.1" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.1.1.1.1.m1.2.3.1.cmml">[</mo><mn id="S5.T5.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S5.T5.1.1.1.1.m1.1.1.cmml">53</mn><mo id="S5.T5.1.1.1.1.m1.2.3.2.2" mathbackground="#F2F2F2" xref="S5.T5.1.1.1.1.m1.2.3.1.cmml">,</mo><mn id="S5.T5.1.1.1.1.m1.2.2" mathbackground="#F2F2F2" xref="S5.T5.1.1.1.1.m1.2.2.cmml">69</mn><mo id="S5.T5.1.1.1.1.m1.2.3.2.3" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.1.1.1.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.2b"><interval closure="closed" id="S5.T5.1.1.1.1.m1.2.3.1.cmml" xref="S5.T5.1.1.1.1.m1.2.3.2"><cn id="S5.T5.1.1.1.1.m1.1.1.cmml" type="integer" xref="S5.T5.1.1.1.1.m1.1.1">53</cn><cn id="S5.T5.1.1.1.1.m1.2.2.cmml" type="integer" xref="S5.T5.1.1.1.1.m1.2.2">69</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.2c">[53,69]</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.2d">[ 53 , 69 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.2"><span class="ltx_text" id="S5.T5.1.1.1.2.1" style="background-color:#F2F2F2;">80.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.3"><span class="ltx_text" id="S5.T5.1.1.1.3.1" style="background-color:#F2F2F2;">8.49</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.2" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.2.2.2.1"><math alttext="[54,70]" class="ltx_Math" display="inline" id="S5.T5.2.2.2.1.m1.2" style="background-color:#FFFFFF;"><semantics id="S5.T5.2.2.2.1.m1.2a"><mrow id="S5.T5.2.2.2.1.m1.2.3.2" xref="S5.T5.2.2.2.1.m1.2.3.1.cmml"><mo id="S5.T5.2.2.2.1.m1.2.3.2.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.2.2.2.1.m1.2.3.1.cmml">[</mo><mn id="S5.T5.2.2.2.1.m1.1.1" mathbackground="#FFFFFF" xref="S5.T5.2.2.2.1.m1.1.1.cmml">54</mn><mo id="S5.T5.2.2.2.1.m1.2.3.2.2" mathbackground="#FFFFFF" xref="S5.T5.2.2.2.1.m1.2.3.1.cmml">,</mo><mn id="S5.T5.2.2.2.1.m1.2.2" mathbackground="#FFFFFF" xref="S5.T5.2.2.2.1.m1.2.2.cmml">70</mn><mo id="S5.T5.2.2.2.1.m1.2.3.2.3" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.2.2.2.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.1.m1.2b"><interval closure="closed" id="S5.T5.2.2.2.1.m1.2.3.1.cmml" xref="S5.T5.2.2.2.1.m1.2.3.2"><cn id="S5.T5.2.2.2.1.m1.1.1.cmml" type="integer" xref="S5.T5.2.2.2.1.m1.1.1">54</cn><cn id="S5.T5.2.2.2.1.m1.2.2.cmml" type="integer" xref="S5.T5.2.2.2.1.m1.2.2">70</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.1.m1.2c">[54,70]</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.1.m1.2d">[ 54 , 70 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.2"><span class="ltx_text" id="S5.T5.2.2.2.2.1" style="background-color:#FFFFFF;">79.89</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.3"><span class="ltx_text" id="S5.T5.2.2.2.3.1" style="background-color:#FFFFFF;">8.12</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.3.3.3.1"><math alttext="[42,50]" class="ltx_Math" display="inline" id="S5.T5.3.3.3.1.m1.2" style="background-color:#F2F2F2;"><semantics id="S5.T5.3.3.3.1.m1.2a"><mrow id="S5.T5.3.3.3.1.m1.2.3.2" xref="S5.T5.3.3.3.1.m1.2.3.1.cmml"><mo id="S5.T5.3.3.3.1.m1.2.3.2.1" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.3.3.3.1.m1.2.3.1.cmml">[</mo><mn id="S5.T5.3.3.3.1.m1.1.1" mathbackground="#F2F2F2" xref="S5.T5.3.3.3.1.m1.1.1.cmml">42</mn><mo id="S5.T5.3.3.3.1.m1.2.3.2.2" mathbackground="#F2F2F2" xref="S5.T5.3.3.3.1.m1.2.3.1.cmml">,</mo><mn id="S5.T5.3.3.3.1.m1.2.2" mathbackground="#F2F2F2" xref="S5.T5.3.3.3.1.m1.2.2.cmml">50</mn><mo id="S5.T5.3.3.3.1.m1.2.3.2.3" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.3.3.3.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.1.m1.2b"><interval closure="closed" id="S5.T5.3.3.3.1.m1.2.3.1.cmml" xref="S5.T5.3.3.3.1.m1.2.3.2"><cn id="S5.T5.3.3.3.1.m1.1.1.cmml" type="integer" xref="S5.T5.3.3.3.1.m1.1.1">42</cn><cn id="S5.T5.3.3.3.1.m1.2.2.cmml" type="integer" xref="S5.T5.3.3.3.1.m1.2.2">50</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.1.m1.2c">[42,50]</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.1.m1.2d">[ 42 , 50 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.3.2"><span class="ltx_text" id="S5.T5.3.3.3.2.1" style="background-color:#F2F2F2;">80.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.3.3"><span class="ltx_text" id="S5.T5.3.3.3.3.1" style="background-color:#F2F2F2;">8.39</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.4" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.4.4.4.1"><math alttext="[43,51]" class="ltx_Math" display="inline" id="S5.T5.4.4.4.1.m1.2" style="background-color:#FFFFFF;"><semantics id="S5.T5.4.4.4.1.m1.2a"><mrow id="S5.T5.4.4.4.1.m1.2.3.2" xref="S5.T5.4.4.4.1.m1.2.3.1.cmml"><mo id="S5.T5.4.4.4.1.m1.2.3.2.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.4.4.4.1.m1.2.3.1.cmml">[</mo><mn id="S5.T5.4.4.4.1.m1.1.1" mathbackground="#FFFFFF" xref="S5.T5.4.4.4.1.m1.1.1.cmml">43</mn><mo id="S5.T5.4.4.4.1.m1.2.3.2.2" mathbackground="#FFFFFF" xref="S5.T5.4.4.4.1.m1.2.3.1.cmml">,</mo><mn id="S5.T5.4.4.4.1.m1.2.2" mathbackground="#FFFFFF" xref="S5.T5.4.4.4.1.m1.2.2.cmml">51</mn><mo id="S5.T5.4.4.4.1.m1.2.3.2.3" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.4.4.4.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.1.m1.2b"><interval closure="closed" id="S5.T5.4.4.4.1.m1.2.3.1.cmml" xref="S5.T5.4.4.4.1.m1.2.3.2"><cn id="S5.T5.4.4.4.1.m1.1.1.cmml" type="integer" xref="S5.T5.4.4.4.1.m1.1.1">43</cn><cn id="S5.T5.4.4.4.1.m1.2.2.cmml" type="integer" xref="S5.T5.4.4.4.1.m1.2.2">51</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.1.m1.2c">[43,51]</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.1.m1.2d">[ 43 , 51 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.2"><span class="ltx_text" id="S5.T5.4.4.4.2.1" style="background-color:#FFFFFF;">80.46</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.3"><span class="ltx_text" id="S5.T5.4.4.4.3.1" style="background-color:#FFFFFF;">8.42</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.12.4" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="S5.T5.8.8.12.4.1"><span class="ltx_text ltx_font_bold" id="S5.T5.8.8.12.4.1.1" style="background-color:#F2F2F2;">Fusing Both Sequences</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.5.5.5.1"><math alttext="[42,50],[53,69]" class="ltx_Math" display="inline" id="S5.T5.5.5.5.1.m1.6" style="background-color:#FFFFFF;"><semantics id="S5.T5.5.5.5.1.m1.6a"><mrow id="S5.T5.5.5.5.1.m1.6.6.2" xref="S5.T5.5.5.5.1.m1.6.6.3.cmml"><mrow id="S5.T5.5.5.5.1.m1.5.5.1.1.2" xref="S5.T5.5.5.5.1.m1.5.5.1.1.1.cmml"><mo id="S5.T5.5.5.5.1.m1.5.5.1.1.2.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.5.5.5.1.m1.5.5.1.1.1.cmml">[</mo><mn id="S5.T5.5.5.5.1.m1.1.1" mathbackground="#FFFFFF" xref="S5.T5.5.5.5.1.m1.1.1.cmml">42</mn><mo id="S5.T5.5.5.5.1.m1.5.5.1.1.2.2" mathbackground="#FFFFFF" xref="S5.T5.5.5.5.1.m1.5.5.1.1.1.cmml">,</mo><mn id="S5.T5.5.5.5.1.m1.2.2" mathbackground="#FFFFFF" xref="S5.T5.5.5.5.1.m1.2.2.cmml">50</mn><mo id="S5.T5.5.5.5.1.m1.5.5.1.1.2.3" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.5.5.5.1.m1.5.5.1.1.1.cmml">]</mo></mrow><mo id="S5.T5.5.5.5.1.m1.6.6.2.3" mathbackground="#FFFFFF" xref="S5.T5.5.5.5.1.m1.6.6.3.cmml">,</mo><mrow id="S5.T5.5.5.5.1.m1.6.6.2.2.2" xref="S5.T5.5.5.5.1.m1.6.6.2.2.1.cmml"><mo id="S5.T5.5.5.5.1.m1.6.6.2.2.2.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.5.5.5.1.m1.6.6.2.2.1.cmml">[</mo><mn id="S5.T5.5.5.5.1.m1.3.3" mathbackground="#FFFFFF" xref="S5.T5.5.5.5.1.m1.3.3.cmml">53</mn><mo id="S5.T5.5.5.5.1.m1.6.6.2.2.2.2" mathbackground="#FFFFFF" xref="S5.T5.5.5.5.1.m1.6.6.2.2.1.cmml">,</mo><mn id="S5.T5.5.5.5.1.m1.4.4" mathbackground="#FFFFFF" xref="S5.T5.5.5.5.1.m1.4.4.cmml">69</mn><mo id="S5.T5.5.5.5.1.m1.6.6.2.2.2.3" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.5.5.5.1.m1.6.6.2.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.1.m1.6b"><list id="S5.T5.5.5.5.1.m1.6.6.3.cmml" xref="S5.T5.5.5.5.1.m1.6.6.2"><interval closure="closed" id="S5.T5.5.5.5.1.m1.5.5.1.1.1.cmml" xref="S5.T5.5.5.5.1.m1.5.5.1.1.2"><cn id="S5.T5.5.5.5.1.m1.1.1.cmml" type="integer" xref="S5.T5.5.5.5.1.m1.1.1">42</cn><cn id="S5.T5.5.5.5.1.m1.2.2.cmml" type="integer" xref="S5.T5.5.5.5.1.m1.2.2">50</cn></interval><interval closure="closed" id="S5.T5.5.5.5.1.m1.6.6.2.2.1.cmml" xref="S5.T5.5.5.5.1.m1.6.6.2.2.2"><cn id="S5.T5.5.5.5.1.m1.3.3.cmml" type="integer" xref="S5.T5.5.5.5.1.m1.3.3">53</cn><cn id="S5.T5.5.5.5.1.m1.4.4.cmml" type="integer" xref="S5.T5.5.5.5.1.m1.4.4">69</cn></interval></list></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.1.m1.6c">[42,50],[53,69]</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.1.m1.6d">[ 42 , 50 ] , [ 53 , 69 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.2"><span class="ltx_text" id="S5.T5.5.5.5.2.1" style="background-color:#FFFFFF;">79.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.5.3"><span class="ltx_text" id="S5.T5.5.5.5.3.1" style="background-color:#FFFFFF;">8.25</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.6.6" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.6.6.1"><math alttext="[42,51],[53,69]" class="ltx_Math" display="inline" id="S5.T5.6.6.6.1.m1.6" style="background-color:#F2F2F2;"><semantics id="S5.T5.6.6.6.1.m1.6a"><mrow id="S5.T5.6.6.6.1.m1.6.6.2" xref="S5.T5.6.6.6.1.m1.6.6.3.cmml"><mrow id="S5.T5.6.6.6.1.m1.5.5.1.1.2" xref="S5.T5.6.6.6.1.m1.5.5.1.1.1.cmml"><mo id="S5.T5.6.6.6.1.m1.5.5.1.1.2.1" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.6.6.6.1.m1.5.5.1.1.1.cmml">[</mo><mn id="S5.T5.6.6.6.1.m1.1.1" mathbackground="#F2F2F2" xref="S5.T5.6.6.6.1.m1.1.1.cmml">42</mn><mo id="S5.T5.6.6.6.1.m1.5.5.1.1.2.2" mathbackground="#F2F2F2" xref="S5.T5.6.6.6.1.m1.5.5.1.1.1.cmml">,</mo><mn id="S5.T5.6.6.6.1.m1.2.2" mathbackground="#F2F2F2" xref="S5.T5.6.6.6.1.m1.2.2.cmml">51</mn><mo id="S5.T5.6.6.6.1.m1.5.5.1.1.2.3" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.6.6.6.1.m1.5.5.1.1.1.cmml">]</mo></mrow><mo id="S5.T5.6.6.6.1.m1.6.6.2.3" mathbackground="#F2F2F2" xref="S5.T5.6.6.6.1.m1.6.6.3.cmml">,</mo><mrow id="S5.T5.6.6.6.1.m1.6.6.2.2.2" xref="S5.T5.6.6.6.1.m1.6.6.2.2.1.cmml"><mo id="S5.T5.6.6.6.1.m1.6.6.2.2.2.1" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.6.6.6.1.m1.6.6.2.2.1.cmml">[</mo><mn id="S5.T5.6.6.6.1.m1.3.3" mathbackground="#F2F2F2" xref="S5.T5.6.6.6.1.m1.3.3.cmml">53</mn><mo id="S5.T5.6.6.6.1.m1.6.6.2.2.2.2" mathbackground="#F2F2F2" xref="S5.T5.6.6.6.1.m1.6.6.2.2.1.cmml">,</mo><mn id="S5.T5.6.6.6.1.m1.4.4" mathbackground="#F2F2F2" xref="S5.T5.6.6.6.1.m1.4.4.cmml">69</mn><mo id="S5.T5.6.6.6.1.m1.6.6.2.2.2.3" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.6.6.6.1.m1.6.6.2.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.1.m1.6b"><list id="S5.T5.6.6.6.1.m1.6.6.3.cmml" xref="S5.T5.6.6.6.1.m1.6.6.2"><interval closure="closed" id="S5.T5.6.6.6.1.m1.5.5.1.1.1.cmml" xref="S5.T5.6.6.6.1.m1.5.5.1.1.2"><cn id="S5.T5.6.6.6.1.m1.1.1.cmml" type="integer" xref="S5.T5.6.6.6.1.m1.1.1">42</cn><cn id="S5.T5.6.6.6.1.m1.2.2.cmml" type="integer" xref="S5.T5.6.6.6.1.m1.2.2">51</cn></interval><interval closure="closed" id="S5.T5.6.6.6.1.m1.6.6.2.2.1.cmml" xref="S5.T5.6.6.6.1.m1.6.6.2.2.2"><cn id="S5.T5.6.6.6.1.m1.3.3.cmml" type="integer" xref="S5.T5.6.6.6.1.m1.3.3">53</cn><cn id="S5.T5.6.6.6.1.m1.4.4.cmml" type="integer" xref="S5.T5.6.6.6.1.m1.4.4">69</cn></interval></list></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.1.m1.6c">[42,51],[53,69]</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.1.m1.6d">[ 42 , 51 ] , [ 53 , 69 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.6.2"><span class="ltx_text" id="S5.T5.6.6.6.2.1" style="background-color:#F2F2F2;">80.05</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.6.3"><span class="ltx_text" id="S5.T5.6.6.6.3.1" style="background-color:#F2F2F2;">7.64</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.7.7.7" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.7.7.7.1"><math alttext="[43,51],[54,70]" class="ltx_Math" display="inline" id="S5.T5.7.7.7.1.m1.6" style="background-color:#FFFFFF;"><semantics id="S5.T5.7.7.7.1.m1.6a"><mrow id="S5.T5.7.7.7.1.m1.6.6.2" xref="S5.T5.7.7.7.1.m1.6.6.3.cmml"><mrow id="S5.T5.7.7.7.1.m1.5.5.1.1.2" xref="S5.T5.7.7.7.1.m1.5.5.1.1.1.cmml"><mo id="S5.T5.7.7.7.1.m1.5.5.1.1.2.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.7.7.7.1.m1.5.5.1.1.1.cmml">[</mo><mn id="S5.T5.7.7.7.1.m1.1.1" mathbackground="#FFFFFF" xref="S5.T5.7.7.7.1.m1.1.1.cmml">43</mn><mo id="S5.T5.7.7.7.1.m1.5.5.1.1.2.2" mathbackground="#FFFFFF" xref="S5.T5.7.7.7.1.m1.5.5.1.1.1.cmml">,</mo><mn id="S5.T5.7.7.7.1.m1.2.2" mathbackground="#FFFFFF" xref="S5.T5.7.7.7.1.m1.2.2.cmml">51</mn><mo id="S5.T5.7.7.7.1.m1.5.5.1.1.2.3" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.7.7.7.1.m1.5.5.1.1.1.cmml">]</mo></mrow><mo id="S5.T5.7.7.7.1.m1.6.6.2.3" mathbackground="#FFFFFF" xref="S5.T5.7.7.7.1.m1.6.6.3.cmml">,</mo><mrow id="S5.T5.7.7.7.1.m1.6.6.2.2.2" xref="S5.T5.7.7.7.1.m1.6.6.2.2.1.cmml"><mo id="S5.T5.7.7.7.1.m1.6.6.2.2.2.1" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.7.7.7.1.m1.6.6.2.2.1.cmml">[</mo><mn id="S5.T5.7.7.7.1.m1.3.3" mathbackground="#FFFFFF" xref="S5.T5.7.7.7.1.m1.3.3.cmml">54</mn><mo id="S5.T5.7.7.7.1.m1.6.6.2.2.2.2" mathbackground="#FFFFFF" xref="S5.T5.7.7.7.1.m1.6.6.2.2.1.cmml">,</mo><mn id="S5.T5.7.7.7.1.m1.4.4" mathbackground="#FFFFFF" xref="S5.T5.7.7.7.1.m1.4.4.cmml">70</mn><mo id="S5.T5.7.7.7.1.m1.6.6.2.2.2.3" mathbackground="#FFFFFF" stretchy="false" xref="S5.T5.7.7.7.1.m1.6.6.2.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.7.7.7.1.m1.6b"><list id="S5.T5.7.7.7.1.m1.6.6.3.cmml" xref="S5.T5.7.7.7.1.m1.6.6.2"><interval closure="closed" id="S5.T5.7.7.7.1.m1.5.5.1.1.1.cmml" xref="S5.T5.7.7.7.1.m1.5.5.1.1.2"><cn id="S5.T5.7.7.7.1.m1.1.1.cmml" type="integer" xref="S5.T5.7.7.7.1.m1.1.1">43</cn><cn id="S5.T5.7.7.7.1.m1.2.2.cmml" type="integer" xref="S5.T5.7.7.7.1.m1.2.2">51</cn></interval><interval closure="closed" id="S5.T5.7.7.7.1.m1.6.6.2.2.1.cmml" xref="S5.T5.7.7.7.1.m1.6.6.2.2.2"><cn id="S5.T5.7.7.7.1.m1.3.3.cmml" type="integer" xref="S5.T5.7.7.7.1.m1.3.3">54</cn><cn id="S5.T5.7.7.7.1.m1.4.4.cmml" type="integer" xref="S5.T5.7.7.7.1.m1.4.4">70</cn></interval></list></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.7.7.1.m1.6c">[43,51],[54,70]</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.7.7.1.m1.6d">[ 43 , 51 ] , [ 54 , 70 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T5.7.7.7.2"><span class="ltx_text" id="S5.T5.7.7.7.2.1" style="background-color:#FFFFFF;">79.92</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.7.7.7.3"><span class="ltx_text" id="S5.T5.7.7.7.3.1" style="background-color:#FFFFFF;">7.38</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.8" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T5.8.8.8.1"><math alttext="[42,51],[53,70]" class="ltx_Math" display="inline" id="S5.T5.8.8.8.1.m1.6" style="background-color:#F2F2F2;"><semantics id="S5.T5.8.8.8.1.m1.6a"><mrow id="S5.T5.8.8.8.1.m1.6.6.2" xref="S5.T5.8.8.8.1.m1.6.6.3.cmml"><mrow id="S5.T5.8.8.8.1.m1.5.5.1.1.2" xref="S5.T5.8.8.8.1.m1.5.5.1.1.1.cmml"><mo id="S5.T5.8.8.8.1.m1.5.5.1.1.2.1" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.8.8.8.1.m1.5.5.1.1.1.cmml">[</mo><mn id="S5.T5.8.8.8.1.m1.1.1" mathbackground="#F2F2F2" xref="S5.T5.8.8.8.1.m1.1.1.cmml">42</mn><mo id="S5.T5.8.8.8.1.m1.5.5.1.1.2.2" mathbackground="#F2F2F2" xref="S5.T5.8.8.8.1.m1.5.5.1.1.1.cmml">,</mo><mn id="S5.T5.8.8.8.1.m1.2.2" mathbackground="#F2F2F2" xref="S5.T5.8.8.8.1.m1.2.2.cmml">51</mn><mo id="S5.T5.8.8.8.1.m1.5.5.1.1.2.3" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.8.8.8.1.m1.5.5.1.1.1.cmml">]</mo></mrow><mo id="S5.T5.8.8.8.1.m1.6.6.2.3" mathbackground="#F2F2F2" xref="S5.T5.8.8.8.1.m1.6.6.3.cmml">,</mo><mrow id="S5.T5.8.8.8.1.m1.6.6.2.2.2" xref="S5.T5.8.8.8.1.m1.6.6.2.2.1.cmml"><mo id="S5.T5.8.8.8.1.m1.6.6.2.2.2.1" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.8.8.8.1.m1.6.6.2.2.1.cmml">[</mo><mn id="S5.T5.8.8.8.1.m1.3.3" mathbackground="#F2F2F2" xref="S5.T5.8.8.8.1.m1.3.3.cmml">53</mn><mo id="S5.T5.8.8.8.1.m1.6.6.2.2.2.2" mathbackground="#F2F2F2" xref="S5.T5.8.8.8.1.m1.6.6.2.2.1.cmml">,</mo><mn id="S5.T5.8.8.8.1.m1.4.4" mathbackground="#F2F2F2" xref="S5.T5.8.8.8.1.m1.4.4.cmml">70</mn><mo id="S5.T5.8.8.8.1.m1.6.6.2.2.2.3" mathbackground="#F2F2F2" stretchy="false" xref="S5.T5.8.8.8.1.m1.6.6.2.2.1.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.8.8.8.1.m1.6b"><list id="S5.T5.8.8.8.1.m1.6.6.3.cmml" xref="S5.T5.8.8.8.1.m1.6.6.2"><interval closure="closed" id="S5.T5.8.8.8.1.m1.5.5.1.1.1.cmml" xref="S5.T5.8.8.8.1.m1.5.5.1.1.2"><cn id="S5.T5.8.8.8.1.m1.1.1.cmml" type="integer" xref="S5.T5.8.8.8.1.m1.1.1">42</cn><cn id="S5.T5.8.8.8.1.m1.2.2.cmml" type="integer" xref="S5.T5.8.8.8.1.m1.2.2">51</cn></interval><interval closure="closed" id="S5.T5.8.8.8.1.m1.6.6.2.2.1.cmml" xref="S5.T5.8.8.8.1.m1.6.6.2.2.2"><cn id="S5.T5.8.8.8.1.m1.3.3.cmml" type="integer" xref="S5.T5.8.8.8.1.m1.3.3">53</cn><cn id="S5.T5.8.8.8.1.m1.4.4.cmml" type="integer" xref="S5.T5.8.8.8.1.m1.4.4">70</cn></interval></list></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.8.8.1.m1.6c">[42,51],[53,70]</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.8.8.1.m1.6d">[ 42 , 51 ] , [ 53 , 70 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.8.8.8.2"><span class="ltx_text" id="S5.T5.8.8.8.2.1" style="background-color:#F2F2F2;">79.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.8.8.8.3"><span class="ltx_text" id="S5.T5.8.8.8.3.1" style="background-color:#F2F2F2;">7.30</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table investigates the effects of including or excluding the last feed-forward network (FFN) layer when applying FFN fusion in the Puzzle-49B model.  The table compares the model's performance on the MMLU and MT-Bench benchmarks under various FFN fusion configurations.  Different fusion strategies are tested, each involving different combinations of fusing FFN sequences in the model, with a particular focus on whether the final FFN in each sequence is included.  The results illustrate the sensitivity of model accuracy to the inclusion or exclusion of these final FFN layers, demonstrating that omitting the last FFN often minimizes accuracy loss, while including it can result in substantial performance degradation.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluating the impact of fusing the final FFN in Puzzle-49B. Fusing these final layers often causes more accuracy loss.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T6.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.14.14.13.1" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T6.14.14.13.1.1">Sequence</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.14.14.13.1.2">
<table class="ltx_tabular ltx_align_middle" id="S5.T6.14.14.13.1.2.1">
<tr class="ltx_tr" id="S5.T6.14.14.13.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.14.14.13.1.2.1.1.1">Fusion</td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.14.13.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.14.14.13.1.2.1.2.1"><span class="ltx_text" id="S5.T6.14.14.13.1.2.1.2.1.1" style="background-color:#F2F2F2;">Accuracy</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.14.14.13.1.3">
<table class="ltx_tabular ltx_align_middle" id="S5.T6.14.14.13.1.3.1">
<tr class="ltx_tr" id="S5.T6.14.14.13.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.14.14.13.1.3.1.1.1">Reverse</td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.14.13.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.14.14.13.1.3.1.2.1"><span class="ltx_text" id="S5.T6.14.14.13.1.3.1.2.1.1" style="background-color:#F2F2F2;">Accuracy</span></td>
</tr>
</table>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.5.5.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.3.3.1.1"><math alttext="\left[42,49\right]" class="ltx_Math" display="inline" id="S5.T6.3.3.1.1.m1.2" style="background-color:#F2F2F2;"><semantics id="S5.T6.3.3.1.1.m1.2a"><mrow id="S5.T6.3.3.1.1.m1.2.3.2" xref="S5.T6.3.3.1.1.m1.2.3.1.cmml"><mo id="S5.T6.3.3.1.1.m1.2.3.2.1" mathbackground="#F2F2F2" xref="S5.T6.3.3.1.1.m1.2.3.1.cmml">[</mo><mn id="S5.T6.3.3.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S5.T6.3.3.1.1.m1.1.1.cmml">42</mn><mo id="S5.T6.3.3.1.1.m1.2.3.2.2" mathbackground="#F2F2F2" xref="S5.T6.3.3.1.1.m1.2.3.1.cmml">,</mo><mn id="S5.T6.3.3.1.1.m1.2.2" mathbackground="#F2F2F2" xref="S5.T6.3.3.1.1.m1.2.2.cmml">49</mn><mo id="S5.T6.3.3.1.1.m1.2.3.2.3" mathbackground="#F2F2F2" xref="S5.T6.3.3.1.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.1.1.m1.2b"><interval closure="closed" id="S5.T6.3.3.1.1.m1.2.3.1.cmml" xref="S5.T6.3.3.1.1.m1.2.3.2"><cn id="S5.T6.3.3.1.1.m1.1.1.cmml" type="integer" xref="S5.T6.3.3.1.1.m1.1.1">42</cn><cn id="S5.T6.3.3.1.1.m1.2.2.cmml" type="integer" xref="S5.T6.3.3.1.1.m1.2.2">49</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.1.1.m1.2c">\left[42,49\right]</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.1.1.m1.2d">[ 42 , 49 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.2.2"><math alttext="83.74" class="ltx_Math" display="inline" id="S5.T6.4.4.2.2.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T6.4.4.2.2.m1.1a"><mn id="S5.T6.4.4.2.2.m1.1.1" mathbackground="#F2F2F2" xref="S5.T6.4.4.2.2.m1.1.1.cmml">83.74</mn><annotation-xml encoding="MathML-Content" id="S5.T6.4.4.2.2.m1.1b"><cn id="S5.T6.4.4.2.2.m1.1.1.cmml" type="float" xref="S5.T6.4.4.2.2.m1.1.1">83.74</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.4.4.2.2.m1.1c">83.74</annotation><annotation encoding="application/x-llamapun" id="S5.T6.4.4.2.2.m1.1d">83.74</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.5.5.3.3"><math alttext="83.52" class="ltx_Math" display="inline" id="S5.T6.5.5.3.3.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T6.5.5.3.3.m1.1a"><mn id="S5.T6.5.5.3.3.m1.1.1" mathbackground="#F2F2F2" xref="S5.T6.5.5.3.3.m1.1.1.cmml">83.52</mn><annotation-xml encoding="MathML-Content" id="S5.T6.5.5.3.3.m1.1b"><cn id="S5.T6.5.5.3.3.m1.1.1.cmml" type="float" xref="S5.T6.5.5.3.3.m1.1.1">83.52</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.5.5.3.3.m1.1c">83.52</annotation><annotation encoding="application/x-llamapun" id="S5.T6.5.5.3.3.m1.1d">83.52</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.8.6" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.6.6.4.1"><math alttext="\left[53,60\right]" class="ltx_Math" display="inline" id="S5.T6.6.6.4.1.m1.2" style="background-color:#FFFFFF;"><semantics id="S5.T6.6.6.4.1.m1.2a"><mrow id="S5.T6.6.6.4.1.m1.2.3.2" xref="S5.T6.6.6.4.1.m1.2.3.1.cmml"><mo id="S5.T6.6.6.4.1.m1.2.3.2.1" mathbackground="#FFFFFF" xref="S5.T6.6.6.4.1.m1.2.3.1.cmml">[</mo><mn id="S5.T6.6.6.4.1.m1.1.1" mathbackground="#FFFFFF" xref="S5.T6.6.6.4.1.m1.1.1.cmml">53</mn><mo id="S5.T6.6.6.4.1.m1.2.3.2.2" mathbackground="#FFFFFF" xref="S5.T6.6.6.4.1.m1.2.3.1.cmml">,</mo><mn id="S5.T6.6.6.4.1.m1.2.2" mathbackground="#FFFFFF" xref="S5.T6.6.6.4.1.m1.2.2.cmml">60</mn><mo id="S5.T6.6.6.4.1.m1.2.3.2.3" mathbackground="#FFFFFF" xref="S5.T6.6.6.4.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.6.6.4.1.m1.2b"><interval closure="closed" id="S5.T6.6.6.4.1.m1.2.3.1.cmml" xref="S5.T6.6.6.4.1.m1.2.3.2"><cn id="S5.T6.6.6.4.1.m1.1.1.cmml" type="integer" xref="S5.T6.6.6.4.1.m1.1.1">53</cn><cn id="S5.T6.6.6.4.1.m1.2.2.cmml" type="integer" xref="S5.T6.6.6.4.1.m1.2.2">60</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.6.6.4.1.m1.2c">\left[53,60\right]</annotation><annotation encoding="application/x-llamapun" id="S5.T6.6.6.4.1.m1.2d">[ 53 , 60 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.5.2"><math alttext="83.24" class="ltx_Math" display="inline" id="S5.T6.7.7.5.2.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T6.7.7.5.2.m1.1a"><mn id="S5.T6.7.7.5.2.m1.1.1" mathbackground="#FFFFFF" xref="S5.T6.7.7.5.2.m1.1.1.cmml">83.24</mn><annotation-xml encoding="MathML-Content" id="S5.T6.7.7.5.2.m1.1b"><cn id="S5.T6.7.7.5.2.m1.1.1.cmml" type="float" xref="S5.T6.7.7.5.2.m1.1.1">83.24</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.7.7.5.2.m1.1c">83.24</annotation><annotation encoding="application/x-llamapun" id="S5.T6.7.7.5.2.m1.1d">83.24</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.8.6.3"><math alttext="83.25" class="ltx_Math" display="inline" id="S5.T6.8.8.6.3.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T6.8.8.6.3.m1.1a"><mn id="S5.T6.8.8.6.3.m1.1.1" mathbackground="#FFFFFF" xref="S5.T6.8.8.6.3.m1.1.1.cmml">83.25</mn><annotation-xml encoding="MathML-Content" id="S5.T6.8.8.6.3.m1.1b"><cn id="S5.T6.8.8.6.3.m1.1.1.cmml" type="float" xref="S5.T6.8.8.6.3.m1.1.1">83.25</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.8.8.6.3.m1.1c">83.25</annotation><annotation encoding="application/x-llamapun" id="S5.T6.8.8.6.3.m1.1d">83.25</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.11.11.9" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.9.9.7.1"><math alttext="\left[63,67\right]" class="ltx_Math" display="inline" id="S5.T6.9.9.7.1.m1.2" style="background-color:#F2F2F2;"><semantics id="S5.T6.9.9.7.1.m1.2a"><mrow id="S5.T6.9.9.7.1.m1.2.3.2" xref="S5.T6.9.9.7.1.m1.2.3.1.cmml"><mo id="S5.T6.9.9.7.1.m1.2.3.2.1" mathbackground="#F2F2F2" xref="S5.T6.9.9.7.1.m1.2.3.1.cmml">[</mo><mn id="S5.T6.9.9.7.1.m1.1.1" mathbackground="#F2F2F2" xref="S5.T6.9.9.7.1.m1.1.1.cmml">63</mn><mo id="S5.T6.9.9.7.1.m1.2.3.2.2" mathbackground="#F2F2F2" xref="S5.T6.9.9.7.1.m1.2.3.1.cmml">,</mo><mn id="S5.T6.9.9.7.1.m1.2.2" mathbackground="#F2F2F2" xref="S5.T6.9.9.7.1.m1.2.2.cmml">67</mn><mo id="S5.T6.9.9.7.1.m1.2.3.2.3" mathbackground="#F2F2F2" xref="S5.T6.9.9.7.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.9.9.7.1.m1.2b"><interval closure="closed" id="S5.T6.9.9.7.1.m1.2.3.1.cmml" xref="S5.T6.9.9.7.1.m1.2.3.2"><cn id="S5.T6.9.9.7.1.m1.1.1.cmml" type="integer" xref="S5.T6.9.9.7.1.m1.1.1">63</cn><cn id="S5.T6.9.9.7.1.m1.2.2.cmml" type="integer" xref="S5.T6.9.9.7.1.m1.2.2">67</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.9.9.7.1.m1.2c">\left[63,67\right]</annotation><annotation encoding="application/x-llamapun" id="S5.T6.9.9.7.1.m1.2d">[ 63 , 67 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T6.10.10.8.2"><math alttext="84.22" class="ltx_Math" display="inline" id="S5.T6.10.10.8.2.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T6.10.10.8.2.m1.1a"><mn id="S5.T6.10.10.8.2.m1.1.1" mathbackground="#F2F2F2" xref="S5.T6.10.10.8.2.m1.1.1.cmml">84.22</mn><annotation-xml encoding="MathML-Content" id="S5.T6.10.10.8.2.m1.1b"><cn id="S5.T6.10.10.8.2.m1.1.1.cmml" type="float" xref="S5.T6.10.10.8.2.m1.1.1">84.22</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.10.10.8.2.m1.1c">84.22</annotation><annotation encoding="application/x-llamapun" id="S5.T6.10.10.8.2.m1.1d">84.22</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.9.3"><math alttext="84.10" class="ltx_Math" display="inline" id="S5.T6.11.11.9.3.m1.1" style="background-color:#F2F2F2;"><semantics id="S5.T6.11.11.9.3.m1.1a"><mn id="S5.T6.11.11.9.3.m1.1.1" mathbackground="#F2F2F2" xref="S5.T6.11.11.9.3.m1.1.1.cmml">84.10</mn><annotation-xml encoding="MathML-Content" id="S5.T6.11.11.9.3.m1.1b"><cn id="S5.T6.11.11.9.3.m1.1.1.cmml" type="float" xref="S5.T6.11.11.9.3.m1.1.1">84.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.11.11.9.3.m1.1c">84.10</annotation><annotation encoding="application/x-llamapun" id="S5.T6.11.11.9.3.m1.1d">84.10</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.14.12" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T6.12.12.10.1"><math alttext="\left[63,70\right]" class="ltx_Math" display="inline" id="S5.T6.12.12.10.1.m1.2" style="background-color:#FFFFFF;"><semantics id="S5.T6.12.12.10.1.m1.2a"><mrow id="S5.T6.12.12.10.1.m1.2.3.2" xref="S5.T6.12.12.10.1.m1.2.3.1.cmml"><mo id="S5.T6.12.12.10.1.m1.2.3.2.1" mathbackground="#FFFFFF" xref="S5.T6.12.12.10.1.m1.2.3.1.cmml">[</mo><mn id="S5.T6.12.12.10.1.m1.1.1" mathbackground="#FFFFFF" xref="S5.T6.12.12.10.1.m1.1.1.cmml">63</mn><mo id="S5.T6.12.12.10.1.m1.2.3.2.2" mathbackground="#FFFFFF" xref="S5.T6.12.12.10.1.m1.2.3.1.cmml">,</mo><mn id="S5.T6.12.12.10.1.m1.2.2" mathbackground="#FFFFFF" xref="S5.T6.12.12.10.1.m1.2.2.cmml">70</mn><mo id="S5.T6.12.12.10.1.m1.2.3.2.3" mathbackground="#FFFFFF" xref="S5.T6.12.12.10.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.12.12.10.1.m1.2b"><interval closure="closed" id="S5.T6.12.12.10.1.m1.2.3.1.cmml" xref="S5.T6.12.12.10.1.m1.2.3.2"><cn id="S5.T6.12.12.10.1.m1.1.1.cmml" type="integer" xref="S5.T6.12.12.10.1.m1.1.1">63</cn><cn id="S5.T6.12.12.10.1.m1.2.2.cmml" type="integer" xref="S5.T6.12.12.10.1.m1.2.2">70</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.12.12.10.1.m1.2c">\left[63,70\right]</annotation><annotation encoding="application/x-llamapun" id="S5.T6.12.12.10.1.m1.2d">[ 63 , 70 ]</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.13.13.11.2"><math alttext="84.00" class="ltx_Math" display="inline" id="S5.T6.13.13.11.2.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T6.13.13.11.2.m1.1a"><mn id="S5.T6.13.13.11.2.m1.1.1" mathbackground="#FFFFFF" xref="S5.T6.13.13.11.2.m1.1.1.cmml">84.00</mn><annotation-xml encoding="MathML-Content" id="S5.T6.13.13.11.2.m1.1b"><cn id="S5.T6.13.13.11.2.m1.1.1.cmml" type="float" xref="S5.T6.13.13.11.2.m1.1.1">84.00</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.13.13.11.2.m1.1c">84.00</annotation><annotation encoding="application/x-llamapun" id="S5.T6.13.13.11.2.m1.1d">84.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.14.14.12.3"><math alttext="83.88" class="ltx_Math" display="inline" id="S5.T6.14.14.12.3.m1.1" style="background-color:#FFFFFF;"><semantics id="S5.T6.14.14.12.3.m1.1a"><mn id="S5.T6.14.14.12.3.m1.1.1" mathbackground="#FFFFFF" xref="S5.T6.14.14.12.3.m1.1.1.cmml">83.88</mn><annotation-xml encoding="MathML-Content" id="S5.T6.14.14.12.3.m1.1b"><cn id="S5.T6.14.14.12.3.m1.1.1.cmml" type="float" xref="S5.T6.14.14.12.3.m1.1.1">83.88</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.14.14.12.3.m1.1c">83.88</annotation><annotation encoding="application/x-llamapun" id="S5.T6.14.14.12.3.m1.1d">83.88</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of FFN Fusion against a reverse-order arrangement of FFN layers within the Puzzle-49B model.  It shows the MMLU and MT-Bench accuracy scores for different configurations, illustrating the impact of fusing consecutive FFN layers versus simply reversing their order.
> <details>
> <summary>read the caption</summary>
> Table 6: Reverse order vs Fusion experiment on Puzzle-49494949B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.14.14.13.1.2.1">
<tr class="ltx_tr" id="S5.T6.14.14.13.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.14.14.13.1.2.1.1.1">Fusion</td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.14.13.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.14.14.13.1.2.1.2.1"><span class="ltx_text" id="S5.T6.14.14.13.1.2.1.2.1.1" style="background-color:#F2F2F2;">Accuracy</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating different parallelization strategies on a 49B parameter language model.  The strategies involve fusing varying numbers of consecutive transformer blocks for parallel processing, which is a departure from the standard sequential computation approach. The table shows the MMLU and MT-Bench scores achieved by the model under these different parallelization schemes, allowing for a comparison of accuracy trade-offs against the potential gains in speed offered by parallel execution.  The baseline performance (no parallelization) is also included for reference.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of MMLU and MT-Bench scores across different parallelization strategies .
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18908/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18908/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}