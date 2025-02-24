---
title: "HeadInfer: Memory-Efficient LLM Inference by Head-wise Offloading"
summary: "HEADINFER achieves memory-efficient LLM inference by cleverly offloading key-value cache to the CPU, enabling 4 million token inference on a single consumer GPU."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 California Institute of Technology",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12574 {{< /keyword >}}
{{< keyword icon="writer" >}} Cheng Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12574" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12574" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12574/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) excel at generating long texts, but processing extensive contexts strains GPU memory, particularly the key-value (KV) cache. Current solutions like quantization or layer-wise offloading have limitations in reducing memory usage or are not suitable for consumer-level hardware. This creates a significant hurdle for widespread LLM deployment, especially on devices with limited memory resources.



To overcome these memory limitations, the researchers introduce HEADINFER, a novel framework that offloads the KV cache to the CPU in a head-wise manner. This means only a portion of the KV cache is kept in the GPU memory at any given time, improving memory efficiency.  **HEADINFER incorporates several key optimizations like adaptive head grouping, asynchronous data transfer, and chunked pre-filling to maintain high computational efficiency while significantly reducing memory usage.** The experiments show that HEADINFER drastically reduces memory usage while enabling significantly longer context lengths, even on a single consumer-grade GPU.  This innovative approach democratizes access to powerful LLMs by making them accessible on more affordable and readily available hardware.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HEADINFER significantly reduces the GPU memory footprint for LLM inference by offloading the key-value cache to the CPU. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It enables efficient inference with extremely long contexts (4 million tokens) using a single consumer-grade GPU (e.g., NVIDIA RTX 4090). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method is computationally efficient and compatible with various LLMs and attention mechanisms. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on large language models (LLMs) and memory-efficient inference.  It addresses the critical challenge of high memory consumption in LLMs, particularly when handling long contexts. **The proposed HEADINFER method offers a practical solution for deploying LLMs on consumer-grade hardware, opening up new avenues of research in efficient LLM inference and expanding accessibility to advanced AI.** This has significant implications for the wider adoption of LLMs across various domains and contributes to the advancement of memory-efficient AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.12574/x1.png)

> 🔼 The bar chart visualizes the memory usage breakdown for inferencing a Llama-3-8B model with a 1 million token input sequence on a single GPU.  It compares the memory consumption of the key-value cache (KV cache), activations, and model weights.  The chart highlights the disproportionately large memory footprint of the KV cache compared to the other components, emphasizing the memory challenge posed by long context inference.
> <details>
> <summary>read the caption</summary>
> Figure 1: Estimated memory consumption of inference a Llama-3-8B model with 1 million token on a single GPU.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.1.1.1">LongBench V2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.3.1.1.2">Overall</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.3.1.1.3">Easy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.3.1.1.4">Hard</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.3.1.1.5">Short</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.3.1.1.6">Medium</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.3.1.1.7">Long</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.2.1.1">Standard 25K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.2.1.2">28.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.2.1.3">30.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.2.1.4">27.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.2.1.5">33.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.2.1.6">25.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.2.1.7">25.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.3.2.1">Chunked Prefill 30K</th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.2.2">28.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.2.3">27.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.2.4">28.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.2.5">32.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.2.6">25.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.2.7">25.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.4.3.1">Layer-wise offload 45K</th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.4.3.2">29.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.4.3.3">29.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.4.3.4">28.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.4.3.5"><span class="ltx_text ltx_font_bold" id="S5.T1.3.4.3.5.1">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.4.3.6">24.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.4.3.7">26.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T1.3.5.4.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T1.3.5.4.1.1">HeadInfer<span class="ltx_text ltx_font_upright" id="S5.T1.3.5.4.1.1.1"> 1024K</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.5.4.2"><span class="ltx_text ltx_font_bold" id="S5.T1.3.5.4.2.1">30.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T1.3.5.4.3.1">31.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T1.3.5.4.4.1">29.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.5.4.5">33.9</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.5.4.6"><span class="ltx_text ltx_font_bold" id="S5.T1.3.5.4.6.1">27.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.3.5.4.7"><span class="ltx_text ltx_font_bold" id="S5.T1.3.5.4.7.1">30.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance comparison of four different methods on the LongBench v2 benchmark, using a single RTX 4090 GPU.  The benchmark evaluates performance on various question-answering tasks with different difficulty levels (Easy and Hard) and various context lengths (Short, Medium, and Long).  The four methods compared are Standard inference, Chunked Prefill, Layer-wise offload, and HEADINFER.  The 'Overall' column shows the average score across all questions, while the individual columns for Short, Medium, and Long show the average score for questions with those respective context lengths. The table highlights the impact of different context lengths and offloading techniques on the performance of long-context question answering tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance(benchmark score) of different methods on LongBench v2 on a single RTX-4090 GPU, under different task difficulties (Easy/Hard) and context lengths (Short/Medium/Long). Overall performance is average scores on all questions.
> </details>





### In-depth insights


#### Head-wise Offload
The core concept of "Head-wise Offload" in the HeadINFER model is a **fine-grained memory management strategy** for large language models (LLMs) during inference. Unlike layer-wise offloading, which moves entire layers' key-value caches to CPU memory, Head-wise Offload operates at the level of individual attention heads.  This granular approach allows the system to **selectively maintain only the most crucial heads' information in the GPU's high-bandwidth memory (HBM)**, dynamically offloading less important heads to the CPU RAM. This significantly reduces GPU memory footprint, enabling the processing of extremely long input sequences that would otherwise be infeasible due to memory limitations.  The strategy's effectiveness is augmented by techniques like **adaptive head grouping**, which dynamically adjusts the number of heads kept in GPU memory based on context length, maintaining computational efficiency.  **Asynchronous data transfer** further enhances performance by overlapping offloading operations with GPU computations, preventing stalls.  Overall, this head-wise approach demonstrates a significant improvement in memory efficiency and scalability for LLM inference, particularly on consumer-grade GPUs with limited memory capacity.

#### Memory Efficiency
The research paper explores memory efficiency in large language model (LLM) inference, focusing on reducing the memory footprint of the key-value (KV) cache.  A key contribution is the introduction of HEADINFER, a novel framework that offloads the KV cache to the CPU in a fine-grained, head-wise manner. This approach maintains computational efficiency while significantly reducing GPU memory usage, enabling inference with significantly longer contexts. **HEADINFER achieves this by selectively offloading attention heads' KV caches to the CPU, maintaining only critical heads on the GPU at any given time.** The paper validates its approach through extensive experimentation and analysis, including roofline analysis to demonstrate computational efficiency and benchmark results showing substantial memory reduction and improved context length handling on consumer-grade GPUs. The results highlight the **significant potential of HEADINFER to democratize access to advanced LLMs by making long-context inference feasible on hardware with limited resources.**  The authors introduce further optimizations such as adaptive head grouping, chunked prefill, and asynchronous data transfer to enhance efficiency.  Overall, the paper makes a substantial contribution to the field by presenting a practical and efficient solution to the memory constraints in LLM inference.  **The head-wise approach provides a more granular control over memory usage compared to previous layer-wise offloading techniques, offering increased flexibility and improved performance.**

#### Roofline Analysis
Roofline analysis is a powerful technique for evaluating the performance of computational kernels, especially on GPUs.  In the context of large language model (LLM) inference, this analysis is particularly insightful because it helps to understand the interplay between computation and memory bandwidth. **The roofline plot visually represents the peak performance achievable by a GPU, limited by either its computational capabilities or its memory bandwidth.** The analysis is crucial because LLMs can quickly become memory-bound as context length grows, particularly concerning the key-value (KV) cache.  Therefore, the plot helps researchers assess whether an optimization is compute-bound (limited by arithmetic intensity) or memory-bound (limited by memory bandwidth).  By analyzing the position of the kernel on the roofline plot, researchers can identify performance bottlenecks and determine whether optimization efforts should focus on computational enhancements or memory access improvements.  **HEADINFER's roofline analysis clearly demonstrates its efficiency, maintaining compute efficiency even with reduced memory usage.** This is a critical finding because it shows that HEADINFER's head-wise offloading strategy does not sacrifice computational performance for memory efficiency.  The analysis provides strong evidence for HEADINFER's effectiveness and offers valuable insights into the design and optimization of memory-efficient LLMs.

#### Long-Context LLM
Long-context LLMs demonstrate significant advancements in natural language processing by enabling the handling of substantially longer input sequences. This capability is crucial for various applications requiring the processing of extensive textual data, such as book summarization and complex question answering.  However, **increased context length presents substantial challenges**, primarily concerning memory consumption.  The quadratic growth of memory requirements with context length poses a significant hurdle to inference, limiting the practicality of these models on resource-constrained hardware.  **Efficient memory management strategies are thus essential**, including techniques like KV cache optimization, quantization, and offloading to alleviate these limitations.  This research area actively explores innovative approaches to strike a balance between maximizing context length and maintaining computational efficiency, aiming for practical deployment on consumer-grade hardware while preserving accuracy.

#### Ablation Study
An ablation study systematically removes components of a model to determine their individual contributions. In the context of the research paper, an ablation study on HEADINFER would likely involve removing or modifying key aspects of its design to evaluate their impact.  This could include disabling head-wise offloading, removing the asynchronous data transfer optimization, or altering the adaptive head grouping strategy. By comparing the performance of the modified models against the full HEADINFER model, researchers could quantify the impact of each component and determine which aspects are essential for achieving memory efficiency and high performance. **The results would highlight the trade-offs between different design choices and potentially identify areas for further optimization or simplification.**  For example, removing asynchronous data transfers might reveal a performance penalty, indicating its importance. Removing adaptive head grouping might show less flexibility in handling varied context lengths, revealing its value in robust memory management.  **Ultimately, a well-executed ablation study provides a crucial understanding of the model's inner workings, justifying design choices and paving the way for future improvements.**  It provides concrete evidence supporting claims made about the significance of each part of the HEADINFER architecture.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12574/x2.png)

> 🔼 This figure illustrates different strategies for managing the key-value (KV) cache in large language model (LLM) inference.  The KV cache stores intermediate activations crucial for efficient attention computation.  The figure shows three scenarios: (1) No offloading: the entire KV cache resides in GPU memory, which is inefficient for long sequences; (2) Layer-wise offloading: KV cache for each layer is treated as a single unit, and a portion may be offloaded to CPU RAM, reducing GPU memory footprint, but the granularity is quite coarse; (3) HeadInfer: the KV cache is managed at a much finer granularity - per attention head.  Only the necessary heads' KV cache remain in GPU memory, with others offloaded to CPU RAM, offering a significant reduction in GPU memory use compared to Layer-wise offloading.  This head-wise adaptive strategy optimizes memory usage dynamically during inference.
> <details>
> <summary>read the caption</summary>
> Figure 2: Demonstrations of KV cache policies in inference. Full KV cache contains two main dimensions: layer and head. Layer-wise offloads KV cache in the layer’s dimension, with a cache budget of all heads per layer. HeadInfer further reduces GPU memory by adaptively reallocating cache budgets in the head’s dimension, with a cache budget of one head.
> </details>



![](https://arxiv.org/html/2502.12574/x3.png)

> 🔼 Figure 3 illustrates the different granularities of various LLMs inference methods.  Each cube visually represents the entire attention process, broken down into three dimensions: sequence length (S), number of layers (L), and number of attention heads (H).  Standard inference loads the entire computation onto the GPU, resulting in high memory consumption. Chunked pre-filling optimizes memory usage by processing only a portion of the sequence at a time. Layer-wise offloading reduces memory footprint by moving some layers from GPU memory to CPU memory.  Finally, HeadInfer employs a head-wise approach, significantly reducing memory needs by keeping only a small subset of attention heads in GPU memory and offloading the rest to the CPU, offering the finest granularity.
> <details>
> <summary>read the caption</summary>
> Figure 3: Granularity of different methods. Each cube represents the entire attention process along three dimensions: Sequence (S), Layers (L), and Heads (H). Standard inference puts everything on the GPU. Chunked-prefill fetches only a part of the sequence dimension of all tokens on the GPU at a time. Layer-wise offloading fetches a subset of layers on the GPU, offloading the rest. HeadInfer introduces an even finer approach that maintains only selected heads within a layer.
> </details>



![](https://arxiv.org/html/2502.12574/x4.png)

> 🔼 This figure illustrates the memory management strategy of HEADINFER.  Unlike traditional methods where the entire key-value (KV) cache resides on the GPU, HEADINFER partitions the KV cache into individual heads. Only a single head's KV cache is held on the GPU at any given time, with the remaining heads stored in CPU RAM.  The ping-pong memory mechanism is used to efficiently transfer data between the GPU and CPU, ensuring that computation on the GPU is not stalled by data movement. This approach drastically reduces the GPU memory footprint, enabling inference with significantly longer context lengths.
> <details>
> <summary>read the caption</summary>
> Figure 4: HeadInfer snapshot. All parameters are stored on the GPU. Head-wise partitioned KV cache is moved across GPU and CPU with the ping-pong memory.
> </details>



![](https://arxiv.org/html/2502.12574/x5.png)

> 🔼 This roofline plot visualizes the performance of FlashAttention on an NVIDIA RTX 4090 GPU, contrasting different inference methods with varying context lengths. The plot shows the arithmetic intensity (FLOPs/Byte) on the x-axis, representing the computational efficiency, and the performance in TFLOPs/s on the y-axis.  Separate lines represent baseline, offloading, and HEADINFER methods for both prefill (input processing) and decoding (output generation) phases.  The plot helps to understand how these methods perform under different levels of computational intensity and whether they are compute-bound or memory-bound. The plot illustrates HEADINFER's performance relative to other methods under varying context lengths.
> <details>
> <summary>read the caption</summary>
> Figure 5: Flashattention in the roofline plot analysis using the RTX-4090 device setting.
> </details>



![](https://arxiv.org/html/2502.12574/x6.png)

> 🔼 The figure displays the results of the Needle-in-a-Haystack benchmark, which assesses a model's ability to accurately identify and retrieve information from a long context.  It shows that HeadInfer achieves the same accuracy as standard inference methods, demonstrating its effectiveness in long-context tasks without sacrificing accuracy. The graph likely shows accuracy or other relevant metric across various context lengths, highlighting HeadInfer's performance consistency across different context sizes.
> <details>
> <summary>read the caption</summary>
> Figure 6: HeadInfer provides equal accuracy as standard inference on the Needle-in-a-Haystack benchmark
> </details>



![](https://arxiv.org/html/2502.12574/x7.png)

> 🔼 Figure 7 demonstrates the limitations of token eviction methods in handling less relevant information within long contexts.  A 10,000-token document from the LongBench benchmark is used, with an added sentence unrelated to the main theme.  Existing methods like H2O, which discards less relevant tokens, produce erroneous outputs.  Similarly, StreamingLLM, which discards tokens based on the query but retains question tokens, results in hallucinations. In contrast, HeadInfer correctly retrieves the target information, even with a 75% reduction in KV cache size, highlighting its robustness and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 7: Token eviction methods cannot work when querying the less relevant information to the main theme. Here, we use a 10K document from LongBench (Bai et al., 2023b) and add one sentence that is not relevant to the main theme. In this case, H2O discards tokens less relevant to the main theme, leading to error generation. StreamingLLM discards tokens based on the query but remaining question tokens, making it Hallucinations. HeadInfer can successfully output the exact information from the lengthy input, even when we compress 75% of the KV cache
> </details>



![](https://arxiv.org/html/2502.12574/x8.png)

> 🔼 This roofline plot visualizes the performance of FlashAttention on an NVIDIA A100 GPU, comparing the performance of standard inference, offloading, and HEADINFER methods at different arithmetic intensity levels.  It shows the peak performance achievable by the GPU's memory bandwidth and computational capabilities, revealing whether the kernel is compute-bound or memory-bound under various conditions.  This helps in understanding how different inference strategies affect performance by comparing their arithmetic intensity and peak throughput against the GPU's theoretical limits.
> <details>
> <summary>read the caption</summary>
> Figure 8: Flashattention in the roofline plot analysis using A100 device setting.
> </details>



![](https://arxiv.org/html/2502.12574/x9.png)

> 🔼 This figure compares different KV cache management strategies for LLM inference. The upper part uses symbolic cubes to visualize the different granularities of the approaches.  Standard inference keeps all keys and values in GPU memory. Chunked prefill loads only a portion of the sequence into GPU memory at a time. Layer-wise offloading loads a subset of layers into memory at once, while head-wise offloading loads only a small number of attention heads into memory at once. The lower part illustrates the HeadInfer architecture, showing the interplay between CPU and GPU and the adaptive head-wise offloading strategy.
> <details>
> <summary>read the caption</summary>
> Figure 9: Demonstrations of KV cache policies in inference from the head-wise view. Upper plots illustrate symbolic plots of an attention map deploying different policies in LLM generation. Lower: the overview of HeadInfer.
> </details>



![](https://arxiv.org/html/2502.12574/x10.png)

> 🔼 This figure illustrates the workflow of HeadInfer, a memory-efficient inference framework, during the generation of a model with (n+1) layers and (j+1) attention heads. It showcases the interplay between the GPU and CPU in managing the KV cache, highlighting the asynchronous data transfer and prefetching mechanisms. The GPU processes one head at a time while concurrently prefetching the next head's data from CPU memory, enabling overlapping computations and data transfers. The CPU manages the offloaded KV cache for the remaining heads. Asynchronous data transfers between the GPU and CPU are facilitated using PCIe, minimizing transfer delays.  The diagram visualizes the movement of data between the GPU and CPU memories during prefill and decoding stages, emphasizing the optimized utilization of both GPU and CPU resources for efficient long-context LLM inference.
> <details>
> <summary>read the caption</summary>
> Figure 10: Workflow of HeadInfer generating a model with (n+1) layers and (j+1) attention heads.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.3.1.1.1">SCBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.2">kv</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.3">prefix-suffix</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.4">vt</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.5">qa-chn</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.6">qa-eng</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.7">choice-eng</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.8">mf</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.9">many-shot</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.3.1.1.10">summary</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.3.2.1.1">Standard 25K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.2">15.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.3">9.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.4">4.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.5">9.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.6">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.7">36.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.8">2.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.9">16.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.2.1.10">32.3</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.3.3.2.1">Chunked Prefill 30K</th>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.2">21.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.3">10.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.4">6.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.5">9.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.6">15.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.7">38.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.8">2.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.9">25.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.3.2.10">33.5</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.3.4.3.1">Layer-wise offload 45K</th>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.2">22.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.3">12.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.4">8.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.5">10.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.6">15.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.7">37.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.8">2.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.9">25.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.4.3.10">33.6</td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T2.3.5.4.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T2.3.5.4.1.1">HeadInfer<span class="ltx_text ltx_font_upright" id="S5.T2.3.5.4.1.1.1"> 1024K</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.2"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.2.1">28</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.3.1">17.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.4.1">42</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.5"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.5.1">11.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.6"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.6.1">23.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.7"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.7.1">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.8"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.8.1">9.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.9"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.9.1">25.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.3.5.4.10"><span class="ltx_text ltx_font_bold" id="S5.T2.3.5.4.10.1">37.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of different LLMs' performance on the SCBench benchmark, utilizing a single NVIDIA RTX 4090 GPU.  The benchmark encompasses a range of tasks, including string retrieval (key-value and prefix-suffix), variable tracking (vt), question answering (English and Chinese, multiple-choice), math problem solving (mf), multi-shot reasoning (many-shot), and document summarization (summary).  Each row represents a different method for performing inference and their resulting performance score on each of these SCBench sub-tasks.  The table allows for comparison of various approaches in terms of their ability to handle long-context tasks and their overall performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance(benchmark score) of different methods on SCBench on a single RTX-4090 GPU. kv and prefix-suffix are string retrieval in key-value and prefix-suffix scenarios. vt is variable tracking. qa-chn, qa-eng, and choice-eng are English/Chinese question answering. mf is finding the math answer. many-shot is finding multiple shots in context. summary is document summarization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T3.1.1.1.1">Context Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.1.1.1.2">Llama-3-8B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.1.1.1.3">Llama-2-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.1.1.1.4">Mistral-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.1.1.1.5">Qwen2-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.1.1.1.6">Gemma-2-9b</th>
</tr>
<tr class="ltx_tr" id="S6.T3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T3.1.2.2.1">Standard</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.1.2.2.2">25K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.1.2.2.3">10K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.1.2.2.4">30K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.1.2.2.5">35K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.1.2.2.6">10K</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.1.3.1.1">Chunked Prefill</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.1.2">30K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.1.3">20K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.1.4">40K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.1.5">70K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.3.1.6">10K</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.1.4.2.1">4-bit KV-quant</th>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.2.2">45K</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.2.3">30K</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.2.4">40K</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.2.5">50K</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.4.2.6">20K</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.1.5.3.1">Layer-wise offload</th>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.3.2">45K</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.3.3">60K</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.3.4">45K</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.3.5">50K</td>
<td class="ltx_td ltx_align_center" id="S6.T3.1.5.3.6">35K</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T3.1.6.4.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T3.1.6.4.1.1">HeadInfer</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T3.1.6.4.2"><span class="ltx_text ltx_font_bold" id="S6.T3.1.6.4.2.1">4096K</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T3.1.6.4.3"><span class="ltx_text ltx_font_bold" id="S6.T3.1.6.4.3.1">1024K</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T3.1.6.4.4"><span class="ltx_text ltx_font_bold" id="S6.T3.1.6.4.4.1">4096K</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T3.1.6.4.5"><span class="ltx_text ltx_font_bold" id="S6.T3.1.6.4.5.1">4200K</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T3.1.6.4.6"><span class="ltx_text ltx_font_bold" id="S6.T3.1.6.4.6.1">1300K</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 compares the maximum context length achievable by different inference optimization methods across various large language models (LLMs).  The experiments were conducted using a single NVIDIA RTX 4090 GPU with 24GB of memory, along with AMD EPYC 7V12 CPUs and 1TB of RAM. The table presents the context length limits for standard inference, Chunked Prefill, 4-bit KV quantization, Layer-wise offloading, and HEADINFER methods. This comparison demonstrates the impact of each optimization strategy on extending context length for different LLMs.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of maximum context length with system optimization methods on various models inference. All experiments within this table run on a single RTX-4090 GPU with 24GB and AMD EPYC 7V12 CPUs with 1TB memory.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.1.1.1.1">Context Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.2">Llama-3-70B</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.2.1.1">Standard</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.1.2">10K</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.3.2.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T4.1.3.2.1.1">HeadInfer<span class="ltx_text ltx_font_upright" id="S6.T4.1.3.2.1.1.1"> + 10k chunk size</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.3.2.2.1">950K</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T4.1.4.3.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T4.1.4.3.1.1">HeadInfer<span class="ltx_text ltx_font_upright" id="S6.T4.1.4.3.1.1.1"> + 5k chunk size</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T4.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.4.3.2.1">1000K</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of inference experiments conducted on the Llama3-70B model using HEADINFER. It demonstrates HEADINFER's ability to handle long input sequences, specifically comparing the maximum context length achieved under standard inference and HEADINFER with different chunk sizes. The results highlight HEADINFER's efficiency in processing significantly longer contexts.
> <details>
> <summary>read the caption</summary>
> Table 4:  Llama3-70B Inference with long context input.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S7.T5.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T5.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S7.T5.3.1.1.1">Context Length</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T5.3.1.1.2">Llama-3-8B</td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S7.T5.3.2.2.1">Standard</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.2.2.2">25K</td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S7.T5.3.3.3.1">Layer-wise Offload</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.3.3.2">45K</td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T5.3.4.4.1">Chunked Prefill</th>
<td class="ltx_td ltx_align_center" id="S7.T5.3.4.4.2">30K</td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T5.3.5.5.1">
<span class="ltx_text ltx_font_smallcaps" id="S7.T5.3.5.5.1.1">HeadInfer</span> Head=8 Group = 1</th>
<td class="ltx_td ltx_align_center" id="S7.T5.3.5.5.2">550K</td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T5.3.6.6.1">
<span class="ltx_text ltx_font_smallcaps" id="S7.T5.3.6.6.1.1">HeadInfer</span> Head=4 Group = 2</th>
<td class="ltx_td ltx_align_center" id="S7.T5.3.6.6.2">1100K</td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T5.3.7.7.1">
<span class="ltx_text ltx_font_smallcaps" id="S7.T5.3.7.7.1.1">HeadInfer</span> Head=2 Group = 4</th>
<td class="ltx_td ltx_align_center" id="S7.T5.3.7.7.2">2100K</td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S7.T5.3.8.8.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S7.T5.3.8.8.1.1">HeadInfer</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S7.T5.3.8.8.2"><span class="ltx_text ltx_font_bold" id="S7.T5.3.8.8.2.1">4096K</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of different granularity levels (sequence, layer, and head) on the memory efficiency of the HEADINFER model. It uses the Llama-3-8B model and compares the maximum context length achieved by different approaches: Standard inference, Layer-wise offload, Chunked Prefill, and HEADINFER with varying head group sizes.
> <details>
> <summary>read the caption</summary>
> Table 5:  Ablation study of HeadInfer on Llama-3-8B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1">Prefill Latency(s)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.2.1">1K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.3.1">10K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.4.1">20K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.5.1">40K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.6.1">100K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.7.1">200K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.8.1">400K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.9.1">1M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.10"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.10.1">2M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.11"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.11.1">4M</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.2.1.1">Standard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.2">0.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.3">1.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.4">2.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.1.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T6.1.3.2.1">Chunked Prefill</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.2">0.11</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.3">1.23</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.4">2.83</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.5">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.7">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.8">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.9">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T6.1.4.3.1">Layer-offload</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.2">0.12</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.3">1.24</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.4">2.84</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.5">6.93</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.7">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.8">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.9">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T6.1.5.4.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T6.1.5.4.1.1">HeadInfer</span> (head=8/group=1)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.2">0.12</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.3">1.24</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.4">2.84</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.5">7.11</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.6">30.2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.7">100</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.8">357</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.9">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T6.1.6.5.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T6.1.6.5.1.1">HeadInfer</span> (head=4/group=2)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.2">0.13</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.3">1.23</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.4">2.89</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.5">7.26</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.6">30.2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.7">99</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.8">351</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.9">2033</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T6.1.7.6.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T6.1.7.6.1.1">HeadInfer</span> (head=2/group=4)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.2">0.14</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.3">1.23</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.4">2.94</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.5">7.54</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.6">30.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.7">100</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.8">353</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.9">2035</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.10">7952</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T6.1.8.7.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T6.1.8.7.1.1">HeadInfer</span> (head=1/group=8)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.2">0.21</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.3">1.27</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.4">3.06</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.5">7.77</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.6">31.2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.7">101</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.8">356</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.9">2054</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.10">7975</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.11">27114</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.1.9.8.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T6.1.9.8.1.1">HeadInfer</span> Adaptive</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.2">0.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.3">1.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.4">2.84</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.5">7.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.6">30.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.7">99</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.8">351</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.9">2033</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.10">7952</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.11">27114</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the time (in seconds) taken for the prefill stage of Llama-3-8B model inference under different context lengths.  The prefill stage processes the input prompt and builds the key-value cache. The table compares the standard inference method against several optimization techniques, showing how prefill times change with longer sequences and different optimization strategies (chunked prefill and different HEADINFER configurations).  The goal is to demonstrate the efficiency gains and scalability of HEADINFER for long-context inputs.
> <details>
> <summary>read the caption</summary>
> Table 6: Prefill overhead (in seconds) of Llama3-8B under different context lengths.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1">Decoding Latency(s)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.2.1">1K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.3.1">10K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.4.1">20K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.5.1">40K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.6.1">100K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.7.1">200K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.8.1">400K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.9.1">1M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.10"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.10.1">2M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.11"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.11.1">4M</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.2.1.1">Standard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.2">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.3">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.4">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.5">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T7.1.3.2.1">Chunked Prefill</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.2">0.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.3">0.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.4">0.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.5">0.04</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.7">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.8">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.9">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T7.1.4.3.1">Layer-offload</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.2">0.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.3">0.09</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.4">0.17</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.5">0.28</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.6">0.66</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.7">1.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.8">2.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.9">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T7.1.5.4.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T7.1.5.4.1.1">HeadInfer</span> (head=8/group=1)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.2">0.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.3">0.09</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.4">0.17</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.5">0.28</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.6">0.66</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.7">1.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.8">2.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.9">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T7.1.6.5.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T7.1.6.5.1.1">HeadInfer</span> (head=4/group=2)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.2">0.04</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.3">0.10</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.4">0.16</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.5">0.28</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.6">0.67</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.7">1.31</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.8">2.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.9">6.41</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T7.1.7.6.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T7.1.7.6.1.1">HeadInfer</span> (head=2/group=4)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.2">0.06</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.3">0.11</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.4">0.17</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.5">0.30</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.6">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.7">1.32</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.8">2.59</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.9">6.46</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.10">13.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.7.6.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T7.1.8.7.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T7.1.8.7.1.1">HeadInfer</span> (head=1/group=8)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.2">0.10</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.3">0.14</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.4">0.21</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.5">0.33</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.6">0.71</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.7">1.33</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.8">2.61</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.9">6.51</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.10">13.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.7.11">27.2</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T7.1.9.8.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T7.1.9.8.1.1">HeadInfer</span> Adaptive</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.2">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.3">0.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.4">0.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.5">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.6">0.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.7">1.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.8">3.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.9">6.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.10">13.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.9.8.11">27.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the decoding time (in seconds) needed to generate each new token for the Llama-3-8B language model. The decoding time is measured under various context sizes (1K, 10K, 20K, 40K, 100K, 200K, 400K, 1M, 2M, and 4M tokens).  The table compares different inference methods, illustrating how decoding time changes as the context length increases and when different strategies (Standard, Chunked Prefill, Layer-offload, and various HEADINFER configurations) are used.
> <details>
> <summary>read the caption</summary>
> Table 7: Decoding overhead (in seconds per generated token) of Llama3-8B under different KV cache (context) sizes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.2">Supported Sequence Length within Ruler</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.2.1.1">Standard Inference</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.2">16K</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.3.2.1">Chunked-Prefill</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.2">32K</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.4.3.1">Layer-wise Offload</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.2">32K</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T8.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A1.T8.1.5.4.1.1">HeadInfer</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.5.4.2">128K</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the maximum context lengths supported by different inference methods on the Ruler benchmark dataset.  It shows how various optimization strategies impact the model's ability to handle longer sequences. The methods compared include standard inference, chunked prefill, layer-wise offloading, and HEADINFER.  The results highlight the significant improvement in maximum context length achieved by HEADINFER, demonstrating its effectiveness in managing GPU memory resources.
> <details>
> <summary>read the caption</summary>
> Table 8: Maximum achievable sequence lengths for different inference methods
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T9.1.1.1.1"><span class="ltx_text" id="A1.T9.1.1.1.1.1" style="font-size:90%;">Context</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.2"><span class="ltx_text" id="A1.T9.1.1.1.2.1" style="font-size:90%;">NIAH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.3"><span class="ltx_text" id="A1.T9.1.1.1.3.1" style="font-size:90%;">MK-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.4"><span class="ltx_text" id="A1.T9.1.1.1.4.1" style="font-size:90%;">MK-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.5"><span class="ltx_text" id="A1.T9.1.1.1.5.1" style="font-size:90%;">VT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.6"><span class="ltx_text" id="A1.T9.1.1.1.6.1" style="font-size:90%;">CWE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.7"><span class="ltx_text" id="A1.T9.1.1.1.7.1" style="font-size:90%;">FWE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.8"><span class="ltx_text" id="A1.T9.1.1.1.8.1" style="font-size:90%;">QA-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.9"><span class="ltx_text" id="A1.T9.1.1.1.9.1" style="font-size:90%;">QA-2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.2.2.1"><span class="ltx_text" id="A1.T9.1.2.2.1.1" style="font-size:90%;">Length</span></th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.2.2.2"><span class="ltx_text" id="A1.T9.1.2.2.2.1" style="font-size:90%;">(%)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.2.2.3"><span class="ltx_text" id="A1.T9.1.2.2.3.1" style="font-size:90%;">(%)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.2.2.4"><span class="ltx_text" id="A1.T9.1.2.2.4.1" style="font-size:90%;">(%)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.2.2.5"><span class="ltx_text" id="A1.T9.1.2.2.5.1" style="font-size:90%;">(%)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.2.2.6"><span class="ltx_text" id="A1.T9.1.2.2.6.1" style="font-size:90%;">(%)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.2.2.7"><span class="ltx_text" id="A1.T9.1.2.2.7.1" style="font-size:90%;">(%)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.2.2.8"><span class="ltx_text" id="A1.T9.1.2.2.8.1" style="font-size:90%;">(%)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.2.2.9"><span class="ltx_text" id="A1.T9.1.2.2.9.1" style="font-size:90%;">(%)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T9.1.3.3.1"><span class="ltx_text" id="A1.T9.1.3.3.1.1" style="font-size:90%;">4K</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.3.3.2"><span class="ltx_text" id="A1.T9.1.3.3.2.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.3.3.3"><span class="ltx_text" id="A1.T9.1.3.3.3.1" style="font-size:90%;">99.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.3.3.4"><span class="ltx_text" id="A1.T9.1.3.3.4.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.3.3.5"><span class="ltx_text" id="A1.T9.1.3.3.5.1" style="font-size:90%;">99.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.3.3.6"><span class="ltx_text" id="A1.T9.1.3.3.6.1" style="font-size:90%;">99.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.3.3.7"><span class="ltx_text" id="A1.T9.1.3.3.7.1" style="font-size:90%;">94.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.3.3.8"><span class="ltx_text" id="A1.T9.1.3.3.8.1" style="font-size:90%;">84.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.3.3.9"><span class="ltx_text" id="A1.T9.1.3.3.9.1" style="font-size:90%;">59.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.4.4.1"><span class="ltx_text" id="A1.T9.1.4.4.1.1" style="font-size:90%;">8K</span></th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.4.4.2"><span class="ltx_text" id="A1.T9.1.4.4.2.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.4.4.3"><span class="ltx_text" id="A1.T9.1.4.4.3.1" style="font-size:90%;">99.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.4.4.4"><span class="ltx_text" id="A1.T9.1.4.4.4.1" style="font-size:90%;">99.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.4.4.5"><span class="ltx_text" id="A1.T9.1.4.4.5.1" style="font-size:90%;">99.08</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.4.4.6"><span class="ltx_text" id="A1.T9.1.4.4.6.1" style="font-size:90%;">94.68</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.4.4.7"><span class="ltx_text" id="A1.T9.1.4.4.7.1" style="font-size:90%;">84.93</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.4.4.8"><span class="ltx_text" id="A1.T9.1.4.4.8.1" style="font-size:90%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.4.4.9"><span class="ltx_text" id="A1.T9.1.4.4.9.1" style="font-size:90%;">56.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.5.5.1"><span class="ltx_text" id="A1.T9.1.5.5.1.1" style="font-size:90%;">16K</span></th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.5.5.2"><span class="ltx_text" id="A1.T9.1.5.5.2.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.5.5.3"><span class="ltx_text" id="A1.T9.1.5.5.3.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.5.5.4"><span class="ltx_text" id="A1.T9.1.5.5.4.1" style="font-size:90%;">99.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.5.5.5"><span class="ltx_text" id="A1.T9.1.5.5.5.1" style="font-size:90%;">98.72</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.5.5.6"><span class="ltx_text" id="A1.T9.1.5.5.6.1" style="font-size:90%;">56.90</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.5.5.7"><span class="ltx_text" id="A1.T9.1.5.5.7.1" style="font-size:90%;">90.60</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.5.5.8"><span class="ltx_text" id="A1.T9.1.5.5.8.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.5.5.9"><span class="ltx_text" id="A1.T9.1.5.5.9.1" style="font-size:90%;">53.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.6.6.1"><span class="ltx_text" id="A1.T9.1.6.6.1.1" style="font-size:90%;">32K</span></th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.6.6.2"><span class="ltx_text" id="A1.T9.1.6.6.2.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.6.6.3"><span class="ltx_text" id="A1.T9.1.6.6.3.1" style="font-size:90%;">99.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.6.6.4"><span class="ltx_text" id="A1.T9.1.6.6.4.1" style="font-size:90%;">99.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.6.6.5"><span class="ltx_text" id="A1.T9.1.6.6.5.1" style="font-size:90%;">97.32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.6.6.6"><span class="ltx_text" id="A1.T9.1.6.6.6.1" style="font-size:90%;">2.78</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.6.6.7"><span class="ltx_text" id="A1.T9.1.6.6.7.1" style="font-size:90%;">93.20</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.6.6.8"><span class="ltx_text" id="A1.T9.1.6.6.8.1" style="font-size:90%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.6.6.9"><span class="ltx_text" id="A1.T9.1.6.6.9.1" style="font-size:90%;">50.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.7.7.1">
<span class="ltx_text" id="A1.T9.1.7.7.1.1" style="font-size:90%;">64K</span><sup class="ltx_sup" id="A1.T9.1.7.7.1.2"></sup>
</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.7.7.2"><span class="ltx_text" id="A1.T9.1.7.7.2.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.7.7.3"><span class="ltx_text" id="A1.T9.1.7.7.3.1" style="font-size:90%;">97.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.7.7.4"><span class="ltx_text" id="A1.T9.1.7.7.4.1" style="font-size:90%;">97.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.7.7.5"><span class="ltx_text" id="A1.T9.1.7.7.5.1" style="font-size:90%;">92.48</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.7.7.6"><span class="ltx_text" id="A1.T9.1.7.7.6.1" style="font-size:90%;">0.10</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.7.7.7"><span class="ltx_text" id="A1.T9.1.7.7.7.1" style="font-size:90%;">84.27</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.7.7.8"><span class="ltx_text" id="A1.T9.1.7.7.8.1" style="font-size:90%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.7.7.9"><span class="ltx_text" id="A1.T9.1.7.7.9.1" style="font-size:90%;">49.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.8.8.1">
<span class="ltx_text" id="A1.T9.1.8.8.1.1" style="font-size:90%;">128K</span><sup class="ltx_sup" id="A1.T9.1.8.8.1.2"></sup>
</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.8.8.2"><span class="ltx_text" id="A1.T9.1.8.8.2.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.8.8.3"><span class="ltx_text" id="A1.T9.1.8.8.3.1" style="font-size:90%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.8.8.4"><span class="ltx_text" id="A1.T9.1.8.8.4.1" style="font-size:90%;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.8.8.5"><span class="ltx_text" id="A1.T9.1.8.8.5.1" style="font-size:90%;">54.68</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.8.8.6"><span class="ltx_text" id="A1.T9.1.8.8.6.1" style="font-size:90%;">0.10</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.8.8.7"><span class="ltx_text" id="A1.T9.1.8.8.7.1" style="font-size:90%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.8.8.8"><span class="ltx_text" id="A1.T9.1.8.8.8.1" style="font-size:90%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.8.8.9"><span class="ltx_text" id="A1.T9.1.8.8.9.1" style="font-size:90%;">41.2</span></td>
</tr>
</tbody>
<tfoot class="ltx_tfoot">
<tr class="ltx_tr" id="A1.T9.1.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" colspan="9" id="A1.T9.1.9.1.1">
<sup class="ltx_sup" id="A1.T9.1.9.1.1.1"></sup><span class="ltx_text ltx_font_smallcaps" id="A1.T9.1.9.1.1.2" style="font-size:90%;">HeadInfer</span><span class="ltx_text" id="A1.T9.1.9.1.1.3" style="font-size:90%;"> only</span>
</th>
</tr>
</tfoot>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the HEADINFER model on the Ruler benchmark across various context lengths.  The Ruler benchmark is a comprehensive suite of tasks designed to evaluate a model's ability to accurately identify and retrieve information from long contexts.  This table shows the performance for different context lengths (4K, 8K, 16K, 32K, 64K, 128K tokens) across multiple tasks within the benchmark,  specifically focusing on the following categories:  Needle-in-a-Haystack (various subtasks), Multi-hop Tracing, Aggregation (Common Words Extraction and Frequent Words Extraction), and Question Answering. The performance is represented as a percentage, indicating the accuracy of the model on each task at each context length.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance on Ruler benchmark tasks across different context lengths
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T10.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T10.1.1.2">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A1.T10.1.1.3">Weight</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.1.1.4">KV-cache</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.1.1.5">Activation</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.1.1.6">Total</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.1.1.1">Total KV cache <sup class="ltx_sup" id="A1.T10.1.1.1.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T10.2.3.1.1">Standard</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T10.2.3.1.2">15.08</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.2.3.1.3">128</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.2.3.1.4">64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.2.3.1.5">207</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.2.3.1.6">128</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.2.4.2.1">Chunked Prefill</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T10.2.4.2.2">15.08</th>
<td class="ltx_td ltx_align_center" id="A1.T10.2.4.2.3">128</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.4.2.4">0.625</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.4.2.5">143</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.4.2.6">128</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.2.5.3.1">4bit-KV-quant</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T10.2.5.3.2">15.08</th>
<td class="ltx_td ltx_align_center" id="A1.T10.2.5.3.3">32</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.5.3.4">64</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.5.3.5">111</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.5.3.6">32</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.2.6.4.1">layer-wise-offload</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T10.2.6.4.2">15.08</th>
<td class="ltx_td ltx_align_center" id="A1.T10.2.6.4.3">8</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.6.4.4">64</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.6.4.5">87</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.6.4.6">128</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.2.7.5.1"><span class="ltx_text ltx_font_smallcaps" id="A1.T10.2.7.5.1.1">HeadInfer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T10.2.7.5.2">15.08</th>
<td class="ltx_td ltx_align_center" id="A1.T10.2.7.5.3">1</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.7.5.4">0.625</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.7.5.5">16.7</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.7.5.6">128</td>
</tr>
</tbody>
<tfoot class="ltx_tfoot">
<tr class="ltx_tr" id="A1.T10.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" colspan="6" id="A1.T10.2.2.1">
<sup class="ltx_sup" id="A1.T10.2.2.1.1"><span class="ltx_text" id="A1.T10.2.2.1.1.1" style="font-size:90%;">∗</span></sup><span class="ltx_text" id="A1.T10.2.2.1.2" style="font-size:90%;">Total KV cache includes both GPU and CPU memory for offloading methods</span>
</th>
</tr>
</tfoot>
</table>{{< /table-caption >}}
> 🔼 This table compares the GPU memory usage of different inference methods for the Llama-3-8B large language model when processing a 1 million token context.  It breaks down the memory usage into the key components: Weights (model parameters), KV-cache (key-value cache used for attention), and Activations (intermediate activations during computation). It shows how different optimization techniques like chunked pre-filling, 4-bit quantization, and layer-wise offloading affect the memory footprint. The key highlight is the substantial reduction in memory usage achieved by HEADINFER, which uses a head-wise offloading strategy.
> <details>
> <summary>read the caption</summary>
> Table 10: Memory usage comparison for Llama3-8B with 1 million context length
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T11.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T11.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T11.1.1.2">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T11.1.1.3">Weights</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T11.1.1.4">KV cache</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T11.1.1.5">Activation</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T11.1.1.6">Total</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T11.1.1.1">Total KV cache <sup class="ltx_sup" id="A1.T11.1.1.1.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T11.2.3.1.1">Standard-25K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.2.3.1.2">15.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.2.3.1.3">3.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.2.3.1.4">1.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.2.3.1.5">19.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.2.3.1.6">3.13</td>
</tr>
<tr class="ltx_tr" id="A1.T11.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.2.4.2.1">Chunked-Prefill-30K</th>
<td class="ltx_td ltx_align_center" id="A1.T11.2.4.2.2">15.08</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.4.2.3">3.75</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.4.2.4">0.63</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.4.2.5">19.46</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.4.2.6">3.75</td>
</tr>
<tr class="ltx_tr" id="A1.T11.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.2.5.3.1">4bit-KV-Quant-45K</th>
<td class="ltx_td ltx_align_center" id="A1.T11.2.5.3.2">15.08</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.5.3.3">1.41</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.5.3.4">2.81</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.5.3.5">19.30</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.5.3.6">1.41</td>
</tr>
<tr class="ltx_tr" id="A1.T11.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.2.6.4.1">Layer-Wise-Offload-45K</th>
<td class="ltx_td ltx_align_center" id="A1.T11.2.6.4.2">15.08</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.6.4.3">0.35</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.6.4.4">2.81</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.6.4.5">18.25</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.6.4.6">5.63</td>
</tr>
<tr class="ltx_tr" id="A1.T11.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.2.7.5.1">
<span class="ltx_text ltx_font_smallcaps" id="A1.T11.2.7.5.1.1">HeadInfer</span>-4000K</th>
<td class="ltx_td ltx_align_center" id="A1.T11.2.7.5.2">15.08</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.7.5.3">3.91</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.7.5.4">0.63</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.7.5.5">19.61</td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.7.5.6">500</td>
</tr>
</tbody>
<tfoot class="ltx_tfoot">
<tr class="ltx_tr" id="A1.T11.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" colspan="6" id="A1.T11.2.2.1">
<sup class="ltx_sup" id="A1.T11.2.2.1.1"><span class="ltx_text" id="A1.T11.2.2.1.1.1" style="font-size:90%;">∗</span></sup><span class="ltx_text" id="A1.T11.2.2.1.2" style="font-size:90%;">Total KV cache includes both GPU and CPU memory for offloading methods</span>
</th>
</tr>
</tfoot>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of GPU memory usage (in GB) for different Llama-3-8B inference methods, including standard inference, chunked prefill, 4-bit KV quantization, layer-wise offloading, and HEADINFER. For each method, it shows the memory consumption for weights, KV cache, and activations, along with the total memory used and the total KV cache size. The total KV cache size includes both GPU and CPU memory, if applicable. This comparison highlights the memory efficiency gains achieved by each optimization technique in handling long-context inference.
> <details>
> <summary>read the caption</summary>
> Table 11: Memory consumption analysis for different inference methods (in GB) on Llama-3-8B
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T12.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T12.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T12.1.1.1.1" rowspan="2"><span class="ltx_text" id="A3.T12.1.1.1.1.1" style="font-size:90%;">Operator</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="5" id="A3.T12.1.1.1.2"><span class="ltx_text" id="A3.T12.1.1.1.2.1" style="font-size:90%;">Regular</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A3.T12.1.1.1.3"><span class="ltx_text" id="A3.T12.1.1.1.3.1" style="font-size:90%;">Offload</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.1"><span class="ltx_text" id="A3.T12.1.2.2.1.1" style="font-size:90%;">Ops</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.2"><span class="ltx_text" id="A3.T12.1.2.2.2.1" style="font-size:90%;">Memory</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.3">
<table class="ltx_tabular ltx_align_middle" id="A3.T12.1.2.2.3.1">
<tr class="ltx_tr" id="A3.T12.1.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.3.1.1.1"><span class="ltx_text" id="A3.T12.1.2.2.3.1.1.1.1" style="font-size:90%;">Arithmetic</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.3.1.2.1"><span class="ltx_text" id="A3.T12.1.2.2.3.1.2.1.1" style="font-size:90%;">Intensity</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.4"><span class="ltx_text" id="A3.T12.1.2.2.4.1" style="font-size:90%;">FLOPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.1.2.2.5"><span class="ltx_text" id="A3.T12.1.2.2.5.1" style="font-size:90%;">Bound</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.6">
<table class="ltx_tabular ltx_align_middle" id="A3.T12.1.2.2.6.1">
<tr class="ltx_tr" id="A3.T12.1.2.2.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.6.1.1.1"><span class="ltx_text" id="A3.T12.1.2.2.6.1.1.1.1" style="font-size:90%;">Memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.2.2.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.6.1.2.1"><span class="ltx_text" id="A3.T12.1.2.2.6.1.2.1.1" style="font-size:90%;">(KV cache)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.7">
<table class="ltx_tabular ltx_align_middle" id="A3.T12.1.2.2.7.1">
<tr class="ltx_tr" id="A3.T12.1.2.2.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.7.1.1.1"><span class="ltx_text" id="A3.T12.1.2.2.7.1.1.1.1" style="font-size:90%;">Arithmetic</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.2.2.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.7.1.2.1"><span class="ltx_text" id="A3.T12.1.2.2.7.1.2.1.1" style="font-size:90%;">Intensity</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.8"><span class="ltx_text" id="A3.T12.1.2.2.8.1" style="font-size:90%;">FLOPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.9"><span class="ltx_text" id="A3.T12.1.2.2.9.1" style="font-size:90%;">Bound</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="A3.T12.1.3.3.1"><span class="ltx_text ltx_font_bold" id="A3.T12.1.3.3.1.1" style="font-size:90%;">Prefill</span></td>
<td class="ltx_td ltx_border_t" id="A3.T12.1.3.3.2"></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T12.1.4.4.1"><span class="ltx_text" id="A3.T12.1.4.4.1.1" style="font-size:90%;">flashattention (1k)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.4.4.2"><span class="ltx_text" id="A3.T12.1.4.4.2.1" style="font-size:90%;">17G</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.4.4.3"><span class="ltx_text" id="A3.T12.1.4.4.3.1" style="font-size:90%;">21M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.4.4.4"><span class="ltx_text" id="A3.T12.1.4.4.4.1" style="font-size:90%;">820</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.4.4.5"><span class="ltx_text" id="A3.T12.1.4.4.5.1" style="font-size:90%;">165T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.1.4.4.6"><span class="ltx_text" id="A3.T12.1.4.4.6.1" style="font-size:90%;">compute</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.4.4.7"><span class="ltx_text" id="A3.T12.1.4.4.7.1" style="font-size:90%;">4.2M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.4.4.8"><span class="ltx_text" id="A3.T12.1.4.4.8.1" style="font-size:90%;">4100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.4.4.9"><span class="ltx_text" id="A3.T12.1.4.4.9.1" style="font-size:90%;">102T</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.4.4.10"><span class="ltx_text" id="A3.T12.1.4.4.10.1" style="font-size:90%;">memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.5.5.1"><span class="ltx_text" id="A3.T12.1.5.5.1.1" style="font-size:90%;">flashattention (10k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.5.5.2"><span class="ltx_text" id="A3.T12.1.5.5.2.1" style="font-size:90%;">1.7T</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.5.5.3"><span class="ltx_text" id="A3.T12.1.5.5.3.1" style="font-size:90%;">209M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.5.5.4"><span class="ltx_text" id="A3.T12.1.5.5.4.1" style="font-size:90%;">8200</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.5.5.5"><span class="ltx_text" id="A3.T12.1.5.5.5.1" style="font-size:90%;">165T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.5.5.6"><span class="ltx_text" id="A3.T12.1.5.5.6.1" style="font-size:90%;">compute</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.5.5.7"><span class="ltx_text" id="A3.T12.1.5.5.7.1" style="font-size:90%;">42M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.5.5.8"><span class="ltx_text" id="A3.T12.1.5.5.8.1" style="font-size:90%;">41000</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.5.5.9"><span class="ltx_text" id="A3.T12.1.5.5.9.1" style="font-size:90%;">165T</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.5.5.10"><span class="ltx_text" id="A3.T12.1.5.5.10.1" style="font-size:90%;">compute</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.6.6.1"><span class="ltx_text" id="A3.T12.1.6.6.1.1" style="font-size:90%;">flashattention (100k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.6.6.2"><span class="ltx_text" id="A3.T12.1.6.6.2.1" style="font-size:90%;">172T</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.6.6.3"><span class="ltx_text" id="A3.T12.1.6.6.3.1" style="font-size:90%;">2.1G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.6.6.4"><span class="ltx_text" id="A3.T12.1.6.6.4.1" style="font-size:90%;">82000</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.6.6.5"><span class="ltx_text" id="A3.T12.1.6.6.5.1" style="font-size:90%;">165T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.6.6.6"><span class="ltx_text" id="A3.T12.1.6.6.6.1" style="font-size:90%;">compute</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.6.6.7"><span class="ltx_text" id="A3.T12.1.6.6.7.1" style="font-size:90%;">419M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.6.6.8"><span class="ltx_text" id="A3.T12.1.6.6.8.1" style="font-size:90%;">410000</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.6.6.9"><span class="ltx_text" id="A3.T12.1.6.6.9.1" style="font-size:90%;">165T</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.6.6.10"><span class="ltx_text" id="A3.T12.1.6.6.10.1" style="font-size:90%;">compute</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.7.7.1"><span class="ltx_text" id="A3.T12.1.7.7.1.1" style="font-size:90%;">head-wise (1k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.7.7.2"><span class="ltx_text" id="A3.T12.1.7.7.2.1" style="font-size:90%;">2.1G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.7.7.3"><span class="ltx_text" id="A3.T12.1.7.7.3.1" style="font-size:90%;">2.6M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.7.7.4"><span class="ltx_text" id="A3.T12.1.7.7.4.1" style="font-size:90%;">820</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.7.7.5"><span class="ltx_text" id="A3.T12.1.7.7.5.1" style="font-size:90%;">165T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.7.7.6"><span class="ltx_text" id="A3.T12.1.7.7.6.1" style="font-size:90%;">compute</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.7.7.7"><span class="ltx_text" id="A3.T12.1.7.7.7.1" style="font-size:90%;">0.5M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.7.7.8"><span class="ltx_text" id="A3.T12.1.7.7.8.1" style="font-size:90%;">4100</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.7.7.9"><span class="ltx_text" id="A3.T12.1.7.7.9.1" style="font-size:90%;">102T</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.7.7.10"><span class="ltx_text" id="A3.T12.1.7.7.10.1" style="font-size:90%;">memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.8.8.1"><span class="ltx_text" id="A3.T12.1.8.8.1.1" style="font-size:90%;">head-wise (10k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.8.8.2"><span class="ltx_text" id="A3.T12.1.8.8.2.1" style="font-size:90%;">215G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.8.8.3"><span class="ltx_text" id="A3.T12.1.8.8.3.1" style="font-size:90%;">26M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.8.8.4"><span class="ltx_text" id="A3.T12.1.8.8.4.1" style="font-size:90%;">8200</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.8.8.5"><span class="ltx_text" id="A3.T12.1.8.8.5.1" style="font-size:90%;">165T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.8.8.6"><span class="ltx_text" id="A3.T12.1.8.8.6.1" style="font-size:90%;">compute</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.8.8.7"><span class="ltx_text" id="A3.T12.1.8.8.7.1" style="font-size:90%;">5.2M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.8.8.8"><span class="ltx_text" id="A3.T12.1.8.8.8.1" style="font-size:90%;">41000</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.8.8.9"><span class="ltx_text" id="A3.T12.1.8.8.9.1" style="font-size:90%;">312T</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.8.8.10"><span class="ltx_text" id="A3.T12.1.8.8.10.1" style="font-size:90%;">compute</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.9.9.1"><span class="ltx_text" id="A3.T12.1.9.9.1.1" style="font-size:90%;">head-wise (100k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.9.9.2"><span class="ltx_text" id="A3.T12.1.9.9.2.1" style="font-size:90%;">21T</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.9.9.3"><span class="ltx_text" id="A3.T12.1.9.9.3.1" style="font-size:90%;">262M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.9.9.4"><span class="ltx_text" id="A3.T12.1.9.9.4.1" style="font-size:90%;">82000</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.9.9.5"><span class="ltx_text" id="A3.T12.1.9.9.5.1" style="font-size:90%;">165T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.9.9.6"><span class="ltx_text" id="A3.T12.1.9.9.6.1" style="font-size:90%;">compute</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.9.9.7"><span class="ltx_text" id="A3.T12.1.9.9.7.1" style="font-size:90%;">52M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.9.9.8"><span class="ltx_text" id="A3.T12.1.9.9.8.1" style="font-size:90%;">410000</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.9.9.9"><span class="ltx_text" id="A3.T12.1.9.9.9.1" style="font-size:90%;">312T</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.9.9.10"><span class="ltx_text" id="A3.T12.1.9.9.10.1" style="font-size:90%;">compute</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="A3.T12.1.10.10.1"><span class="ltx_text ltx_font_bold" id="A3.T12.1.10.10.1.1" style="font-size:90%;">Decode</span></td>
<td class="ltx_td ltx_border_t" id="A3.T12.1.10.10.2"></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T12.1.11.11.1"><span class="ltx_text" id="A3.T12.1.11.11.1.1" style="font-size:90%;">flashattention (1k)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.11.11.2"><span class="ltx_text" id="A3.T12.1.11.11.2.1" style="font-size:90%;">17M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.11.11.3"><span class="ltx_text" id="A3.T12.1.11.11.3.1" style="font-size:90%;">17M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.11.11.4"><span class="ltx_text" id="A3.T12.1.11.11.4.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.11.11.5"><span class="ltx_text" id="A3.T12.1.11.11.5.1" style="font-size:90%;">1T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.1.11.11.6"><span class="ltx_text" id="A3.T12.1.11.11.6.1" style="font-size:90%;">memory</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.11.11.7"><span class="ltx_text" id="A3.T12.1.11.11.7.1" style="font-size:90%;">17M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.11.11.8"><span class="ltx_text" id="A3.T12.1.11.11.8.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.11.11.9"><span class="ltx_text" id="A3.T12.1.11.11.9.1" style="font-size:90%;">13G</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.11.11.10"><span class="ltx_text" id="A3.T12.1.11.11.10.1" style="font-size:90%;">memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.12.12.1"><span class="ltx_text" id="A3.T12.1.12.12.1.1" style="font-size:90%;">flashattention (10k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.12.12.2"><span class="ltx_text" id="A3.T12.1.12.12.2.1" style="font-size:90%;">168M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.12.12.3"><span class="ltx_text" id="A3.T12.1.12.12.3.1" style="font-size:90%;">168M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.12.12.4"><span class="ltx_text" id="A3.T12.1.12.12.4.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.12.12.5"><span class="ltx_text" id="A3.T12.1.12.12.5.1" style="font-size:90%;">1T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.12.12.6"><span class="ltx_text" id="A3.T12.1.12.12.6.1" style="font-size:90%;">memory</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.12.12.7"><span class="ltx_text" id="A3.T12.1.12.12.7.1" style="font-size:90%;">168M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.12.12.8"><span class="ltx_text" id="A3.T12.1.12.12.8.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.12.12.9"><span class="ltx_text" id="A3.T12.1.12.12.9.1" style="font-size:90%;">13G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.12.12.10"><span class="ltx_text" id="A3.T12.1.12.12.10.1" style="font-size:90%;">memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.13.13.1"><span class="ltx_text" id="A3.T12.1.13.13.1.1" style="font-size:90%;">flashattention (100k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.13.13.2"><span class="ltx_text" id="A3.T12.1.13.13.2.1" style="font-size:90%;">1.7G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.13.13.3"><span class="ltx_text" id="A3.T12.1.13.13.3.1" style="font-size:90%;">1.7G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.13.13.4"><span class="ltx_text" id="A3.T12.1.13.13.4.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.13.13.5"><span class="ltx_text" id="A3.T12.1.13.13.5.1" style="font-size:90%;">1T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.13.13.6"><span class="ltx_text" id="A3.T12.1.13.13.6.1" style="font-size:90%;">memory</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.13.13.7"><span class="ltx_text" id="A3.T12.1.13.13.7.1" style="font-size:90%;">1.7G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.13.13.8"><span class="ltx_text" id="A3.T12.1.13.13.8.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.13.13.9"><span class="ltx_text" id="A3.T12.1.13.13.9.1" style="font-size:90%;">13G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.13.13.10"><span class="ltx_text" id="A3.T12.1.13.13.10.1" style="font-size:90%;">memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.14.14.1"><span class="ltx_text" id="A3.T12.1.14.14.1.1" style="font-size:90%;">head-wise (1k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.14.14.2"><span class="ltx_text" id="A3.T12.1.14.14.2.1" style="font-size:90%;">2.1M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.14.14.3"><span class="ltx_text" id="A3.T12.1.14.14.3.1" style="font-size:90%;">2.1M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.14.14.4"><span class="ltx_text" id="A3.T12.1.14.14.4.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.14.14.5"><span class="ltx_text" id="A3.T12.1.14.14.5.1" style="font-size:90%;">1T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.14.14.6"><span class="ltx_text" id="A3.T12.1.14.14.6.1" style="font-size:90%;">memory</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.14.14.7"><span class="ltx_text" id="A3.T12.1.14.14.7.1" style="font-size:90%;">2.1M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.14.14.8"><span class="ltx_text" id="A3.T12.1.14.14.8.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.14.14.9"><span class="ltx_text" id="A3.T12.1.14.14.9.1" style="font-size:90%;">13G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.14.14.10"><span class="ltx_text" id="A3.T12.1.14.14.10.1" style="font-size:90%;">memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T12.1.15.15.1"><span class="ltx_text" id="A3.T12.1.15.15.1.1" style="font-size:90%;">head-wise (10k)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.15.15.2"><span class="ltx_text" id="A3.T12.1.15.15.2.1" style="font-size:90%;">21M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.15.15.3"><span class="ltx_text" id="A3.T12.1.15.15.3.1" style="font-size:90%;">21M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.15.15.4"><span class="ltx_text" id="A3.T12.1.15.15.4.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.15.15.5"><span class="ltx_text" id="A3.T12.1.15.15.5.1" style="font-size:90%;">1T</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.1.15.15.6"><span class="ltx_text" id="A3.T12.1.15.15.6.1" style="font-size:90%;">memory</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.15.15.7"><span class="ltx_text" id="A3.T12.1.15.15.7.1" style="font-size:90%;">21M</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.15.15.8"><span class="ltx_text" id="A3.T12.1.15.15.8.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.15.15.9"><span class="ltx_text" id="A3.T12.1.15.15.9.1" style="font-size:90%;">13G</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.15.15.10"><span class="ltx_text" id="A3.T12.1.15.15.10.1" style="font-size:90%;">memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A3.T12.1.16.16.1"><span class="ltx_text" id="A3.T12.1.16.16.1.1" style="font-size:90%;">head-wise (100k)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T12.1.16.16.2"><span class="ltx_text" id="A3.T12.1.16.16.2.1" style="font-size:90%;">210M</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T12.1.16.16.3"><span class="ltx_text" id="A3.T12.1.16.16.3.1" style="font-size:90%;">210M</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T12.1.16.16.4"><span class="ltx_text" id="A3.T12.1.16.16.4.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T12.1.16.16.5"><span class="ltx_text" id="A3.T12.1.16.16.5.1" style="font-size:90%;">1T</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.T12.1.16.16.6"><span class="ltx_text" id="A3.T12.1.16.16.6.1" style="font-size:90%;">memory</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T12.1.16.16.7"><span class="ltx_text" id="A3.T12.1.16.16.7.1" style="font-size:90%;">210M</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T12.1.16.16.8"><span class="ltx_text" id="A3.T12.1.16.16.8.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T12.1.16.16.9"><span class="ltx_text" id="A3.T12.1.16.16.9.1" style="font-size:90%;">13G</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T12.1.16.16.10"><span class="ltx_text" id="A3.T12.1.16.16.10.1" style="font-size:90%;">memory</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different attention mechanisms implemented on an NVIDIA RTX 4090 GPU.  It compares the performance of standard FlashAttention against a head-wise offloading approach for prefill and decoding stages at varying sequence lengths (1K, 10K, and 100K tokens). Metrics include operations (Ops), memory usage, arithmetic intensity, FLOPS, whether the operation was compute-bound or memory-bound, and the KV cache size. This analysis helps determine the effectiveness of head-wise offloading in terms of computational efficiency and memory footprint.
> <details>
> <summary>read the caption</summary>
> Table 12: Performance comparison of different attention mechanisms under RTX-4090 setting
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T12.1.2.2.3.1">
<tr class="ltx_tr" id="A3.T12.1.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.3.1.1.1"><span class="ltx_text" id="A3.T12.1.2.2.3.1.1.1.1" style="font-size:90%;">Arithmetic</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.3.1.2.1"><span class="ltx_text" id="A3.T12.1.2.2.3.1.2.1.1" style="font-size:90%;">Intensity</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different attention mechanisms on an NVIDIA A100 GPU.  It shows the number of operations (Ops), memory usage (Memory), arithmetic intensity, theoretical peak FLOPS (GFLOPS), whether the computation is compute-bound or memory-bound, and KV cache size for both prefill and decoding phases of the attention mechanism. The comparison is made across different context lengths (1K, 10K, and 100K tokens) for different attention mechanisms: Flashattention and HEADINFER's head-wise offloading strategy.
> <details>
> <summary>read the caption</summary>
> Table 13: Performance comparison of different attention mechanisms under A100 setting
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T12.1.2.2.6.1">
<tr class="ltx_tr" id="A3.T12.1.2.2.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.6.1.1.1"><span class="ltx_text" id="A3.T12.1.2.2.6.1.1.1.1" style="font-size:90%;">Memory</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.2.2.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T12.1.2.2.6.1.2.1"><span class="ltx_text" id="A3.T12.1.2.2.6.1.2.1.1" style="font-size:90%;">(KV cache)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the HEADINFER model with and without 50% sparsity in terms of prefill and decoding latency.  The experiment involves processing a 1 million-token context (1M). The results show the effect of incorporating sparsity into the HEADINFER model on performance.
> <details>
> <summary>read the caption</summary>
> Table 14: Prefill 1M, Decoding with 1M KV cache performance comparison
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12574/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12574/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}