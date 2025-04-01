---
title: "LogQuant: Log-Distributed 2-Bit Quantization of KV Cache with Superior Accuracy Preservation"
summary: "LogQuant: 2-bit quantization for KV cache, superior accuracy!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 National University of Singapore",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19950 {{< /keyword >}}
{{< keyword icon="writer" >}} Han Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19950" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19950" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19950/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models' (LLMs) rapid evolution requires efficient KV cache management due to increasing context window sizes. Existing methods for KV Cache compression either remove less important tokens or reduce token precision, often struggling with accurate importance identification and facing performance bottlenecks or mispredictions.  The paper addresses these shortcomings by observing that attention spikes follow a log distribution, becoming sparser farther from the current position.



To address these issues, LogQuant is introduced to significantly improves accuracy through better token preservation. Ignoring absolute KV cache entry positions optimizes quantization/dequantization speed. Benchmarks show a 25% throughput increase and 60% batch size boost without extra memory. Complex tasks like Math and Code see 40-200% accuracy gains, surpassing KiVi and H2O. LogQuant integrates with Python’s transformers library.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LogQuant uses a log-based filtering mechanism for better KV cache compression. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It enhances throughput by 25% and boosts batch size by 60% without increasing memory use. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Accuracy improves by 40-200% on math and code tasks, outperforming existing methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces LogQuant, an innovative 2-bit quantization technique for KV caches in LLMs, offering superior accuracy and efficiency. It addresses the critical challenge of balancing memory savings and performance, paving the way for more practical deployment of large models, **especially in resource-constrained environments**. The findings open new avenues for optimizing LLM inference and enhancing performance across various tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19950/x1.png)

> 🔼 This figure displays a graph showing the distribution of attention scores across different token positions. The x-axis represents the token position, and the y-axis represents the attention score. The graph shows that the attention scores follow a log-distribution pattern, with higher scores concentrated near the most recent token position and gradually decreasing as the distance from the most recent token increases. The figure illustrates this phenomenon using the Llama3-8B-Instruct model and the GSM8K dataset. The observation is consistent across different models and tasks, and it forms the basis of the LogQuant algorithm for efficiently compressing KV cache in LLMs. The log-distribution means the model's attention is more focused on recent tokens.
> <details>
> <summary>read the caption</summary>
> Figure 1: The observed log-distribution pattern is evident not only in the magnitude of attention scores but also in the positions of attention spikes. These spikes become sparser as the model attends to tokens further from the most recent position, indicating that the model not only focuses on nearby tokens. This phenomenon, illustrated here with Llama3-8B-Instruct (Dubey et al., 2024) on the GSM8K dataset (Cobbe et al., 2021), is consistent across different tasks and models, as further detailed in Section 2.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.3.1">
<tr class="ltx_tr" id="S2.T1.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.3.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.3.1.1.3.1">baseline(BF16)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.3.1.1.4.1">KiVi(4-bit)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.3.1.1.5.1">KiVi(2-bit)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.1.6"><span class="ltx_text ltx_font_bold" id="S2.T1.3.1.1.6.1">KiVi(2-bit)+Sink(BF16)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.3.1.1.1"><math alttext="\Delta_{Sink}" class="ltx_Math" display="inline" id="S2.T1.3.1.1.1.m1.1"><semantics id="S2.T1.3.1.1.1.m1.1a"><msub id="S2.T1.3.1.1.1.m1.1.1" xref="S2.T1.3.1.1.1.m1.1.1.cmml"><mi id="S2.T1.3.1.1.1.m1.1.1.2" mathvariant="normal" xref="S2.T1.3.1.1.1.m1.1.1.2.cmml">Δ</mi><mrow id="S2.T1.3.1.1.1.m1.1.1.3" xref="S2.T1.3.1.1.1.m1.1.1.3.cmml"><mi id="S2.T1.3.1.1.1.m1.1.1.3.2" xref="S2.T1.3.1.1.1.m1.1.1.3.2.cmml">S</mi><mo id="S2.T1.3.1.1.1.m1.1.1.3.1" xref="S2.T1.3.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S2.T1.3.1.1.1.m1.1.1.3.3" xref="S2.T1.3.1.1.1.m1.1.1.3.3.cmml">i</mi><mo id="S2.T1.3.1.1.1.m1.1.1.3.1a" xref="S2.T1.3.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S2.T1.3.1.1.1.m1.1.1.3.4" xref="S2.T1.3.1.1.1.m1.1.1.3.4.cmml">n</mi><mo id="S2.T1.3.1.1.1.m1.1.1.3.1b" xref="S2.T1.3.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S2.T1.3.1.1.1.m1.1.1.3.5" xref="S2.T1.3.1.1.1.m1.1.1.3.5.cmml">k</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S2.T1.3.1.1.1.m1.1b"><apply id="S2.T1.3.1.1.1.m1.1.1.cmml" xref="S2.T1.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.3.1.1.1.m1.1.1.1.cmml" xref="S2.T1.3.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.3.1.1.1.m1.1.1.2.cmml" xref="S2.T1.3.1.1.1.m1.1.1.2">Δ</ci><apply id="S2.T1.3.1.1.1.m1.1.1.3.cmml" xref="S2.T1.3.1.1.1.m1.1.1.3"><times id="S2.T1.3.1.1.1.m1.1.1.3.1.cmml" xref="S2.T1.3.1.1.1.m1.1.1.3.1"></times><ci id="S2.T1.3.1.1.1.m1.1.1.3.2.cmml" xref="S2.T1.3.1.1.1.m1.1.1.3.2">𝑆</ci><ci id="S2.T1.3.1.1.1.m1.1.1.3.3.cmml" xref="S2.T1.3.1.1.1.m1.1.1.3.3">𝑖</ci><ci id="S2.T1.3.1.1.1.m1.1.1.3.4.cmml" xref="S2.T1.3.1.1.1.m1.1.1.3.4">𝑛</ci><ci id="S2.T1.3.1.1.1.m1.1.1.3.5.cmml" xref="S2.T1.3.1.1.1.m1.1.1.3.5">𝑘</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.1.1.1.m1.1c">\Delta_{Sink}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.1.1.1.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_S italic_i italic_n italic_k end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.2.1">Llama3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.2.2">71.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.2.3">67.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.2.4">18.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.2.5">18.49</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.3.1.2.6">+0.45</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.1.3">
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.3.1.3.1">Qwen1.5-7B-Chat</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.3.1.3.2">57.24</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.3.1.3.3">52.27</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.3.1.3.4">39.80</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.3.1.3.5">39.42</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S2.T1.3.1.3.6">-0.38</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table investigates the effect of preserving the first two tokens (referred to as 'sink tokens') at their original precision (full precision, not quantized) during 2-bit quantization of the KV cache.  The experiment is conducted using the GSM8K dataset. It shows the final answer accuracy for different quantization methods: a baseline method without any tokens preserved at full precision and a method that keeps the first two tokens at original precision. The difference in accuracy between these two methods (ΔSink) is calculated and shown to illustrate the impact of retaining the sink tokens. Both methods use the most recent 128 tokens at original precision.
> <details>
> <summary>read the caption</summary>
> Table 1: Impact of retaining the first two tokens (referred to as ”Sink”) at original precision. The final answer accuracy results on GSM8K Cobbe et al. (2021) are presented. We present the improvement as ΔSinksubscriptΔSink\Delta_{\text{Sink}}roman_Δ start_POSTSUBSCRIPT Sink end_POSTSUBSCRIPT. Both methods maintain the recent 128 tokens at original precision.
> </details>





### In-depth insights


#### LogQuant Intro
The paper introduces LogQuant, a **novel 2-bit quantization technique** designed to optimize KV Cache in LLMs, addressing memory limitations in long-context scenarios. **LogQuant employs a log-distributed approach**, selectively compressing the KV Cache across the entire context based on the observation that attention spikes follow a log distribution. This means, the KV cache entries becomes sparser as the model attends to tokens further away from the most recent position. This strategy contrasts with previous methods that assume later tokens are more important or attempt to predict important tokens based on earlier attention patterns, which often leads to performance bottlenecks. The log-based filtering mechanism enables LogQuant to preserve superior performance and enhance throughput by 25% and boost batch size by 60% without increasing memory consumption. Most importantly, this enables the model to improve accuracy on challenging tasks by 40-200% at the same compression ratio. This improvement outperforms comparable techniques. **LogQuant integrates with transformers library**. This is readily available on github.

#### Log-Spike Aware
The concept of 'Log-Spike Aware' hints at a system that intelligently identifies and manages data spikes exhibiting a logarithmic distribution. In the context of KV cache optimization, this could mean recognizing that certain data points or memory locations, when plotted on a logarithmic scale, show sudden, significant increases in activity or importance. **Log-Spike Aware quantization may involve dynamically allocating more resources or applying finer-grained quantization to these spikes, ensuring high accuracy is maintained for critical information.** This method likely leverages the observation that spikes are sparser farther away from the current token.  A 'Log-Spike Aware' system could **proactively adjust its quantization strategy based on the predicted or observed log-spike distribution**, preventing bottlenecks and improving overall efficiency by reserving full precision to important spikes. It could selectively filter less valuable spikes by applying a log-based mechanism while improving LLM inference and performance.

#### Quant vs Evict
**Quantization versus eviction** presents a fundamental trade-off in KV cache compression for LLMs. **Quantization reduces the precision of token representations**, offering memory savings while retaining all tokens, but potentially introducing inaccuracies due to the lower bit-depth. **Eviction, on the other hand, discards tokens entirely**, leading to a smaller cache size but potentially losing crucial context. The choice hinges on the sensitivity of the LLM to precision loss versus contextual information loss. **Quantization can be less disruptive**, as it preserves the overall structure of the attention mechanism, while eviction can drastically alter the attention distribution, particularly with softmax normalization. Effective strategies must consider the model architecture, task requirements, and desired compression ratio to optimize for accuracy and efficiency. **LogQuant strategy focuses on the quantization for maintaining the accuracy.**

#### Pos-Agnostic Calc
I believe 'Pos-Agnostic Calc' refers to a computation method independent of the positional embeddings in a transformer network. This suggests an approach that may disregard the absolute or relative positions of tokens when performing calculations, potentially for efficiency or to handle variable-length inputs. **Positional encodings are crucial for transformers to understand sequential data,** so removing this might lead to issues. Positional agnosticism has been applied to KV Cache entries, enabling memory locality and speeding up inference without altering attention outputs. This can be achieved by concatenating high-precision tokens with quantized ones, disregarding their original order. Such 'Pos-Agnostic Calc' can be useful for optimization to reduce complexity when the precise positions don't drastically affect the meaning. Although it might mean less accurate context extraction, it could offer an efficient way to summarize information, or when the calculation involves properties invariant to order, a **Pos-Agnostic method can improve computational speed** and memory footprint. It works by reordering the KV cache without impacting final results.

#### Future:Op Fusion
**Operator fusion** presents a promising avenue for future research in optimizing large language model (LLM) inference. By combining multiple operations into a single kernel, we can **reduce memory traffic** and overhead, leading to **significant performance gains**. This is especially beneficial for KV cache quantization, where dequantization operations can be fused with attention calculations. Exploring different fusion strategies, such as horizontal and vertical fusion, and developing specialized fusion kernels for quantized data types are worthwhile directions. Furthermore, investigating **dynamic fusion** techniques that adaptively fuse operations based on the input data and hardware characteristics could lead to even greater efficiency. Addressing challenges like kernel complexity and hardware compatibility is crucial for realizing the full potential of operator fusion.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19950/x2.png)

> 🔼 Figure 2 visualizes the unpredictable nature of attention weights in LLMs over time. It displays the maximum attention score for each token position across four consecutive decoding steps, using the Llama3-8B-Instruct model on both GSM8K and OpenBookQA datasets. The unpredictable fluctuations highlight the challenges in accurately predicting important tokens for efficient memory management, especially when considering compression techniques.
> <details>
> <summary>read the caption</summary>
> Figure 2: The maximum attention score of each token position across four consecutive decoding steps, marking the high attention positions for illustrating the unpredictable nature of attention scores. This analysis was conducted using Llama3-8B-Instruct (Dubey et al., 2024) on the GSM8K (Cobbe et al., 2021) and OpenBookQA (Mihaylov et al., 2018) datasets.
> </details>



![](https://arxiv.org/html/2503.19950/x3.png)

> 🔼 Figure 3 illustrates the distribution of attention weights across different token positions within the context window of a large language model.  Boxplots summarize the attention scores across all attention heads, showing the median and interquartile range (25th and 75th percentiles) for each token position.  The figure highlights that the attention scores for the first two tokens (referred to as 'sink tokens'), which are typically the most recently processed tokens, exhibit a higher median and overall distribution of scores compared to the combined scores of the subsequent 128 tokens. This observation supports the notion that the most recent tokens carry more weight in the attention mechanism.  The data presented in this graph is derived from experiments conducted using the Llama3-8B-Instruct model on the GSM8K dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Attention distribution across different token positions, represented as boxplots based on 25% quantiles across all attention heads. The median and overall distribution of attention scores for sink tokens (Xiao et al., 2023) (tokens 0 and 1) are greater than the sum of the most recent 128 tokens. The attention scores are derived from experiments using Llama3-8B-Instruct (Dubey et al., 2024) and the GSM8K (Cobbe et al., 2021) dataset.
> </details>



![](https://arxiv.org/html/2503.19950/x4.png)

> 🔼 Figure 4 compares the effectiveness of different token selection methods for compressing the key-value (KV) cache in large language models (LLMs).  It shows the attention coverage achieved by four different methods: LogQuant, Kivi, Streaming, and H2O.  The comparison is made across various LLMs (Llama3-8B-Instruct, Qwen-2-7B-Instruct, Phi-3-mini-128k-Instruct) and uses a subset of the GSM8K dataset. The x-axis represents the length of the reserved portion of the KV cache, while the y-axis shows the average attention scores captured by each selection method. The figure demonstrates that LogQuant achieves better attention coverage than the other methods, indicating its superior ability to select and retain important tokens while reducing memory usage.  The first two sink tokens (tokens with consistently high attention scores) are excluded from the analysis to focus on the relative performance of the selection methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: The attention coverage without the first two sink tokens for different selection methods (Liu et al., 2024c; Xiao et al., 2023; Zhang et al., 2024) and different models (Dubey et al., 2024; Yang et al., 2024; Abdin et al., 2024), tested on a subset of the GSM8K (Cobbe et al., 2021) dataset. Details of LogQuant will be introduced in Section 2.5.
> </details>



![](https://arxiv.org/html/2503.19950/x5.png)

> 🔼 This figure compares the effects of two different KV Cache compression strategies: quantization and eviction.  It demonstrates that using quantization to reduce the numerical precision of tokens instead of removing them entirely (eviction) leads to significantly less distortion of the attention distribution.  The plot visualizes the L1 error between the original attention distribution and the distributions after compression using both methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Eviction and Quantization Loss on Attention Distribution
> </details>



![](https://arxiv.org/html/2503.19950/x6.png)

> 🔼 LogQuant's KV cache compression workflow is illustrated.  Initially, 3W tokens are kept at full precision. A log-sparse filtering strategy is then applied to the first 2W tokens, resulting in half of them being quantized. This process reduces the number of full-precision tokens, ultimately compressing the reserved token length back down to 2W. This cyclical process ensures efficient memory management.
> <details>
> <summary>read the caption</summary>
> Figure 6: LogQuant’s KV cache compression workflow. The number of reserved original-precision tokens increases from 2⁢W2𝑊2W2 italic_W to 3⁢W3𝑊3W3 italic_W. We then apply a log-sparse strategy to filter the first 2⁢W2𝑊2W2 italic_W tokens, quantize half of these tokens, and compress the reserved token length back to 2⁢W2𝑊2W2 italic_W.
> </details>



![](https://arxiv.org/html/2503.19950/x7.png)

> 🔼 This figure displays the accuracy (exact match) results on the GSM8K dataset for various language models using different compression ratios.  It visualizes the performance trade-off between compression and accuracy for different models and compression strategies, allowing for a comparison of the effectiveness of LogQuant relative to other approaches.
> <details>
> <summary>read the caption</summary>
> Figure 7: Accuracy(EM) with different compression ratio in GSM8K tasks for different models.
> </details>



![](https://arxiv.org/html/2503.19950/x8.png)

> 🔼 Figure 8 illustrates a comparison of memory usage and throughput between LogQuant with 2-bit quantization and a 16-bit baseline.  The experiment used the Hugging Face generation pipeline, the Llama 3.1-8B model, and an NVIDIA H100 GPU.  The graph shows how throughput and memory consumption change as the batch size increases for both methods. This helps to demonstrate the memory efficiency and performance gains achieved by LogQuant.
> <details>
> <summary>read the caption</summary>
> Figure 8: memory usage and throughput comparison between 2bit LogQuant and 16bit baseline under huggingface generation pipeline with llama3.1-8B and H100.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T2.1">
<tr class="ltx_tr" id="S2.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1">LogQuant (2-bit)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.2.1">KiVi (2-bit)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.3.1">LogQuant (Eviction)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.4.1">KiVi (Eviction)</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.2">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T2.1.2.1">432.50</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T2.1.2.2">556.10</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T2.1.2.3">1076.70</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S2.T2.1.2.4">1612.56</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the L1 error, a measure of difference between the original attention scores and those obtained after applying either eviction or quantization techniques.  It shows how much the attention distribution is altered by each method, indicating the potential impact on model accuracy. Lower L1 error values suggest better preservation of the original attention distribution.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of L1 error with original attention for eviction and quantization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.26.24">
<tr class="ltx_tr" id="S3.T3.26.24.25">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.26.24.25.1"><span class="ltx_text ltx_font_bold" id="S3.T3.26.24.25.1.1">Category</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.26.24.25.2"><span class="ltx_text ltx_font_bold" id="S3.T3.26.24.25.2.1">KiVi (2-bit)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.26.24.25.3"><span class="ltx_text ltx_font_bold" id="S3.T3.26.24.25.3.1">KiVi (4-bit)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.26.24.25.4"><span class="ltx_text ltx_font_bold" id="S3.T3.26.24.25.4.1">LogQuant (2-bit)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.26.24.25.5"><span class="ltx_text ltx_font_bold" id="S3.T3.26.24.25.5.1">LogQuant (4-bit)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.26.24.25.6">baseline</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.4.4.5">Single-Document QA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.3.1.1.1">38.89 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.3.1.1.1.m1.1"><semantics id="S3.T3.3.1.1.1.m1.1a"><mi id="S3.T3.3.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T3.3.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.3.1.1.1.m1.1b"><ci id="S3.T3.3.1.1.1.m1.1.1.cmml" xref="S3.T3.3.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.1.1.1.m1.1d">roman_Δ</annotation></semantics></math> -8.11)</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.4.2.2.2">47.75 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.4.2.2.2.m1.1"><semantics id="S3.T3.4.2.2.2.m1.1a"><mi id="S3.T3.4.2.2.2.m1.1.1" mathvariant="normal" xref="S3.T3.4.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.4.2.2.2.m1.1b"><ci id="S3.T3.4.2.2.2.m1.1.1.cmml" xref="S3.T3.4.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.2.2.2.m1.1d">roman_Δ</annotation></semantics></math> +0.75)</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.5.3.3.3">41.91 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.5.3.3.3.m1.1"><semantics id="S3.T3.5.3.3.3.m1.1a"><mi id="S3.T3.5.3.3.3.m1.1.1" mathvariant="normal" xref="S3.T3.5.3.3.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.5.3.3.3.m1.1b"><ci id="S3.T3.5.3.3.3.m1.1.1.cmml" xref="S3.T3.5.3.3.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.3.3.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.3.3.3.m1.1d">roman_Δ</annotation></semantics></math> -5.09)</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.6.4.4.4">47.73 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.6.4.4.4.m1.1"><semantics id="S3.T3.6.4.4.4.m1.1a"><mi id="S3.T3.6.4.4.4.m1.1.1" mathvariant="normal" xref="S3.T3.6.4.4.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.6.4.4.4.m1.1b"><ci id="S3.T3.6.4.4.4.m1.1.1.cmml" xref="S3.T3.6.4.4.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.4.4.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.4.4.4.m1.1d">roman_Δ</annotation></semantics></math> +0.73)</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.6.4.4.6">47.71</td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8.8">
<td class="ltx_td ltx_align_left" id="S3.T3.10.8.8.5">Multi-Document QA</td>
<td class="ltx_td ltx_align_right" id="S3.T3.7.5.5.1">34.02 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.7.5.5.1.m1.1"><semantics id="S3.T3.7.5.5.1.m1.1a"><mi id="S3.T3.7.5.5.1.m1.1.1" mathvariant="normal" xref="S3.T3.7.5.5.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.7.5.5.1.m1.1b"><ci id="S3.T3.7.5.5.1.m1.1.1.cmml" xref="S3.T3.7.5.5.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.5.5.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.5.5.1.m1.1d">roman_Δ</annotation></semantics></math> -4.98)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.8.6.6.2">39.74 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.8.6.6.2.m1.1"><semantics id="S3.T3.8.6.6.2.m1.1a"><mi id="S3.T3.8.6.6.2.m1.1.1" mathvariant="normal" xref="S3.T3.8.6.6.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.8.6.6.2.m1.1b"><ci id="S3.T3.8.6.6.2.m1.1.1.cmml" xref="S3.T3.8.6.6.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.6.6.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.6.6.2.m1.1d">roman_Δ</annotation></semantics></math> +0.74)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.9.7.7.3">36.08 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.9.7.7.3.m1.1"><semantics id="S3.T3.9.7.7.3.m1.1a"><mi id="S3.T3.9.7.7.3.m1.1.1" mathvariant="normal" xref="S3.T3.9.7.7.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.9.7.7.3.m1.1b"><ci id="S3.T3.9.7.7.3.m1.1.1.cmml" xref="S3.T3.9.7.7.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.7.7.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.7.7.3.m1.1d">roman_Δ</annotation></semantics></math> -2.92)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.10.8.8.4">39.93 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.10.8.8.4.m1.1"><semantics id="S3.T3.10.8.8.4.m1.1a"><mi id="S3.T3.10.8.8.4.m1.1.1" mathvariant="normal" xref="S3.T3.10.8.8.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.10.8.8.4.m1.1b"><ci id="S3.T3.10.8.8.4.m1.1.1.cmml" xref="S3.T3.10.8.8.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.10.8.8.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.10.8.8.4.m1.1d">roman_Δ</annotation></semantics></math> +0.93)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.10.8.8.6">39.96</td>
</tr>
<tr class="ltx_tr" id="S3.T3.14.12.12">
<td class="ltx_td ltx_align_left" id="S3.T3.14.12.12.5">Summarization</td>
<td class="ltx_td ltx_align_right" id="S3.T3.11.9.9.1">16.10 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.11.9.9.1.m1.1"><semantics id="S3.T3.11.9.9.1.m1.1a"><mi id="S3.T3.11.9.9.1.m1.1.1" mathvariant="normal" xref="S3.T3.11.9.9.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.11.9.9.1.m1.1b"><ci id="S3.T3.11.9.9.1.m1.1.1.cmml" xref="S3.T3.11.9.9.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.11.9.9.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.11.9.9.1.m1.1d">roman_Δ</annotation></semantics></math> -1.90)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.12.10.10.2">17.94 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.12.10.10.2.m1.1"><semantics id="S3.T3.12.10.10.2.m1.1a"><mi id="S3.T3.12.10.10.2.m1.1.1" mathvariant="normal" xref="S3.T3.12.10.10.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.12.10.10.2.m1.1b"><ci id="S3.T3.12.10.10.2.m1.1.1.cmml" xref="S3.T3.12.10.10.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.12.10.10.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.12.10.10.2.m1.1d">roman_Δ</annotation></semantics></math> -0.06)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.13.11.11.3">16.62 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.13.11.11.3.m1.1"><semantics id="S3.T3.13.11.11.3.m1.1a"><mi id="S3.T3.13.11.11.3.m1.1.1" mathvariant="normal" xref="S3.T3.13.11.11.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.13.11.11.3.m1.1b"><ci id="S3.T3.13.11.11.3.m1.1.1.cmml" xref="S3.T3.13.11.11.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.13.11.11.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.13.11.11.3.m1.1d">roman_Δ</annotation></semantics></math> -1.38)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.14.12.12.4">17.92 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.14.12.12.4.m1.1"><semantics id="S3.T3.14.12.12.4.m1.1a"><mi id="S3.T3.14.12.12.4.m1.1.1" mathvariant="normal" xref="S3.T3.14.12.12.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.14.12.12.4.m1.1b"><ci id="S3.T3.14.12.12.4.m1.1.1.cmml" xref="S3.T3.14.12.12.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.14.12.12.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.14.12.12.4.m1.1d">roman_Δ</annotation></semantics></math> -0.08)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.14.12.12.6">18.08</td>
</tr>
<tr class="ltx_tr" id="S3.T3.18.16.16">
<td class="ltx_td ltx_align_left" id="S3.T3.18.16.16.5">Few-shot Learning</td>
<td class="ltx_td ltx_align_right" id="S3.T3.15.13.13.1">52.51 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.15.13.13.1.m1.1"><semantics id="S3.T3.15.13.13.1.m1.1a"><mi id="S3.T3.15.13.13.1.m1.1.1" mathvariant="normal" xref="S3.T3.15.13.13.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.15.13.13.1.m1.1b"><ci id="S3.T3.15.13.13.1.m1.1.1.cmml" xref="S3.T3.15.13.13.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.15.13.13.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.15.13.13.1.m1.1d">roman_Δ</annotation></semantics></math> -8.49)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.16.14.14.2">61.34 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.16.14.14.2.m1.1"><semantics id="S3.T3.16.14.14.2.m1.1a"><mi id="S3.T3.16.14.14.2.m1.1.1" mathvariant="normal" xref="S3.T3.16.14.14.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.16.14.14.2.m1.1b"><ci id="S3.T3.16.14.14.2.m1.1.1.cmml" xref="S3.T3.16.14.14.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.16.14.14.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.16.14.14.2.m1.1d">roman_Δ</annotation></semantics></math> +0.34)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.17.15.15.3">56.43 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.17.15.15.3.m1.1"><semantics id="S3.T3.17.15.15.3.m1.1a"><mi id="S3.T3.17.15.15.3.m1.1.1" mathvariant="normal" xref="S3.T3.17.15.15.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.17.15.15.3.m1.1b"><ci id="S3.T3.17.15.15.3.m1.1.1.cmml" xref="S3.T3.17.15.15.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.17.15.15.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.17.15.15.3.m1.1d">roman_Δ</annotation></semantics></math> -4.57)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.18.16.16.4">61.21 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.18.16.16.4.m1.1"><semantics id="S3.T3.18.16.16.4.m1.1a"><mi id="S3.T3.18.16.16.4.m1.1.1" mathvariant="normal" xref="S3.T3.18.16.16.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.18.16.16.4.m1.1b"><ci id="S3.T3.18.16.16.4.m1.1.1.cmml" xref="S3.T3.18.16.16.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.18.16.16.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.18.16.16.4.m1.1d">roman_Δ</annotation></semantics></math> +0.21)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.18.16.16.6">61.22</td>
</tr>
<tr class="ltx_tr" id="S3.T3.22.20.20">
<td class="ltx_td ltx_align_left" id="S3.T3.22.20.20.5">Synthetic Tasks</td>
<td class="ltx_td ltx_align_right" id="S3.T3.19.17.17.1">45.02 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.19.17.17.1.m1.1"><semantics id="S3.T3.19.17.17.1.m1.1a"><mi id="S3.T3.19.17.17.1.m1.1.1" mathvariant="normal" xref="S3.T3.19.17.17.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.19.17.17.1.m1.1b"><ci id="S3.T3.19.17.17.1.m1.1.1.cmml" xref="S3.T3.19.17.17.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.19.17.17.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.19.17.17.1.m1.1d">roman_Δ</annotation></semantics></math> -21.98)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.20.18.18.2">67.74 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.20.18.18.2.m1.1"><semantics id="S3.T3.20.18.18.2.m1.1a"><mi id="S3.T3.20.18.18.2.m1.1.1" mathvariant="normal" xref="S3.T3.20.18.18.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.20.18.18.2.m1.1b"><ci id="S3.T3.20.18.18.2.m1.1.1.cmml" xref="S3.T3.20.18.18.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.20.18.18.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.20.18.18.2.m1.1d">roman_Δ</annotation></semantics></math> +0.74)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.21.19.19.3">52.51 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.21.19.19.3.m1.1"><semantics id="S3.T3.21.19.19.3.m1.1a"><mi id="S3.T3.21.19.19.3.m1.1.1" mathvariant="normal" xref="S3.T3.21.19.19.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.21.19.19.3.m1.1b"><ci id="S3.T3.21.19.19.3.m1.1.1.cmml" xref="S3.T3.21.19.19.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.21.19.19.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.21.19.19.3.m1.1d">roman_Δ</annotation></semantics></math> -14.49)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.22.20.20.4">67.68 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.22.20.20.4.m1.1"><semantics id="S3.T3.22.20.20.4.m1.1a"><mi id="S3.T3.22.20.20.4.m1.1.1" mathvariant="normal" xref="S3.T3.22.20.20.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.22.20.20.4.m1.1b"><ci id="S3.T3.22.20.20.4.m1.1.1.cmml" xref="S3.T3.22.20.20.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.22.20.20.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.22.20.20.4.m1.1d">roman_Δ</annotation></semantics></math> +0.68)</td>
<td class="ltx_td ltx_align_right" id="S3.T3.22.20.20.6">67.78</td>
</tr>
<tr class="ltx_tr" id="S3.T3.26.24.24">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T3.26.24.24.5">Code Completion</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T3.23.21.21.1">43.06 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.23.21.21.1.m1.1"><semantics id="S3.T3.23.21.21.1.m1.1a"><mi id="S3.T3.23.21.21.1.m1.1.1" mathvariant="normal" xref="S3.T3.23.21.21.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.23.21.21.1.m1.1b"><ci id="S3.T3.23.21.21.1.m1.1.1.cmml" xref="S3.T3.23.21.21.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.23.21.21.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.23.21.21.1.m1.1d">roman_Δ</annotation></semantics></math> -15.94)</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T3.24.22.22.2">59.53 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.24.22.22.2.m1.1"><semantics id="S3.T3.24.22.22.2.m1.1a"><mi id="S3.T3.24.22.22.2.m1.1.1" mathvariant="normal" xref="S3.T3.24.22.22.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.24.22.22.2.m1.1b"><ci id="S3.T3.24.22.22.2.m1.1.1.cmml" xref="S3.T3.24.22.22.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.24.22.22.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.24.22.22.2.m1.1d">roman_Δ</annotation></semantics></math> +0.53)</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T3.25.23.23.3">52.10 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.25.23.23.3.m1.1"><semantics id="S3.T3.25.23.23.3.m1.1a"><mi id="S3.T3.25.23.23.3.m1.1.1" mathvariant="normal" xref="S3.T3.25.23.23.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.25.23.23.3.m1.1b"><ci id="S3.T3.25.23.23.3.m1.1.1.cmml" xref="S3.T3.25.23.23.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.25.23.23.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.25.23.23.3.m1.1d">roman_Δ</annotation></semantics></math> -6.90)</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T3.26.24.24.4">59.57 (<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.26.24.24.4.m1.1"><semantics id="S3.T3.26.24.24.4.m1.1a"><mi id="S3.T3.26.24.24.4.m1.1.1" mathvariant="normal" xref="S3.T3.26.24.24.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.26.24.24.4.m1.1b"><ci id="S3.T3.26.24.24.4.m1.1.1.cmml" xref="S3.T3.26.24.24.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.26.24.24.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.26.24.24.4.m1.1d">roman_Δ</annotation></semantics></math> +0.57)</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S3.T3.26.24.24.6">59.78</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the accuracy achieved using different bit precisions (2-bit and 4-bit) for both KiVi and LogQuant quantization methods, in relation to the baseline accuracy (using original precision) on Llama3.1-8B model for various tasks.  The Delta (Δ) column indicates the difference in accuracy percentage between each method and the baseline. For detailed per-task accuracy scores, please refer to Table C6.
> <details>
> <summary>read the caption</summary>
> Table 3: Accuracy of Different Precision on Llama3.1-8B. Refer to the Table C6 for the scores of each specific task. The ΔΔ\Deltaroman_Δ shows the difference to baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.1.1">
<tr class="ltx_tr" id="S3.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.3.1">Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.4.1">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.5.1">Few-shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.6.1">Multi-QA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.7.1">Single-QA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.8.1">Summ.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.9.1">Synth.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.2.1" rowspan="3"><span class="ltx_text" id="S3.T4.1.1.2.1.1">llama-3.1-8B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.2.2">16-bit Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.3">71.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.4">59.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.5">61.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.6">39.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.7">47.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.8">18.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.9">67.78</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.3.1">KiVi</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.2">18.04</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3">43.06</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.4">52.50</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.5">34.01</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.6">38.89</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.7">16.10</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.8">45.02</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.4.1">LogQuant (ours)</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.4.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.4.2.1">40.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.4.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.4.3.1">52.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.4.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.4.4.1">56.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.4.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.4.5.1">36.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.4.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.4.6.1">41.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.4.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.4.7.1">16.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.4.8"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.4.8.1">52.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.5.1" rowspan="3"><span class="ltx_text" id="S3.T4.1.1.5.1.1">Qwen1.5-7B-Chat-AWQ</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.5.2">16-bit Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.3">56.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.4">52.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5">53.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.6">33.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.7">39.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.8">17.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.9">26.50</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.6">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.6.1">KiVi</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.2">39.27</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.3">34.79</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.4">51.32</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.5">31.08</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6">35.80</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.7">17.16</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.8">10.00</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.7.1">LogQuant (ours)</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.2.1">49.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.3.1">40.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.4.1">52.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.5.1">32.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.6.1">37.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.7.1">17.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.8"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.8.1">13.50</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.8.1" rowspan="3"><span class="ltx_text" id="S3.T4.1.1.8.1.1">Qwen1.5-14B-Chat-AWQ</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.8.2">16-bit Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.8.3">70.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.8.4">57.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.8.5">59.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.8.6">39.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.8.7">42.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.8.8">17.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.8.9">61.33</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.9">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.9.1">KiVi</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.2">59.82</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.3">37.48</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.4">57.50</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.5">37.91</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.6">40.39</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.7">17.17</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.8">46.85</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.10">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.10.1">LogQuant (ours)</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.10.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.2.1">63.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.10.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.3.1">49.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.10.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.4.1">58.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.10.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.5.1">38.01</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.10.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.6.1">41.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.10.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.7.1">17.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.10.8"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.8.1">52.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.11.1" rowspan="3"><span class="ltx_text" id="S3.T4.1.1.11.1.1">Qwen2-7B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.11.2">16-bit Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.3">52.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.4">58.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.5">61.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.6">33.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.7">44.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.8">16.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.9">43.00</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.12">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.12.1">KiVi</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.2">3.71</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.3">35.91</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.4">35.26</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.5">12.35</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.6">20.52</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.7">9.31</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.8">11.42</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.13">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.13.1">LogQuant (ours)</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.13.2.1">34.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.13.3.1">48.71</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.13.4.1">51.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.13.5.1">28.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.13.6.1">34.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.13.7.1">13.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.8"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.13.8.1">22.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S3.T4.1.1.14.1" rowspan="3"><span class="ltx_text" id="S3.T4.1.1.14.1.1">Phi-3-mini-128k-instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.14.2">16-bit Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.14.3">80.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.14.4">55.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.14.5">52.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.14.6">33.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.14.7">42.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.14.8">17.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.14.9">48.00</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.15">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.15.1">KiVi</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.15.2">12.59</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.15.3">33.97</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.15.4">36.17</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.15.5">18.19</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.15.6">19.58</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.15.7">9.10</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.15.8">4.83</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T4.1.1.16.1">LogQuant (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T4.1.1.16.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.16.2.1">51.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T4.1.1.16.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.16.3.1">40.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T4.1.1.16.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.16.4.1">39.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T4.1.1.16.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.16.5.1">21.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T4.1.1.16.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.16.6.1">23.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T4.1.1.16.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.16.7.1">9.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T4.1.1.16.8"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.16.8.1">5.39</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the average performance across seven task groups (Math, Code, Few-shot, Multi-QA, Single-QA, Summarization, and Synthetic) for three different LLMs (Llama-3.1-8B, Qwen1.5-7B-Chat, and Phi-3-mini-128k) using 2-bit quantization for the KV cache.  It compares the accuracy of LogQuant against Kivi and a 16-bit baseline. The best result for each model and task using 2-bit quantization is highlighted in bold.  Detailed results for each individual task within each group can be found in Table D7.
> <details>
> <summary>read the caption</summary>
> Table 4: Task Group Average Score for Different Models with 2-bit KV Cache Quantization. (The best result of 2-bit quantization is in bold. Refer to Table LABEL:tab:longbench_all for the scores of each specific task in LongBench.)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.1.1">
<tr class="ltx_tr" id="A2.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.1.1">Task Group</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.2.1">Dataset</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.3.1">Avg len</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.4.1">Metric</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.5.1">Language</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.6.1">#data</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.2.1.1">Math</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.2.2">GSM8K</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.2.3">240</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.2.4">Accuracy (EM)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.2.5">English</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.2.6">1319</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.3.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.3.1.1">Single-Document QA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.3.2">NarrativeQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.3.3">18,409</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.3.4">F1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.3.5">English</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.3.6">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.4">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.4.1">Qasper</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.4.2">3,619</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.4.3">F1</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.4.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.4.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.5">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.5.1">MultiFieldQA-en</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.5.2">4,559</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.5.3">F1</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.5.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.5.5">150</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.6">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.6.1">MultiFieldQA-zh</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.6.2">6,701</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.6.3">F1</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.6.4">Chinese</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.6.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.7.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.7.1.1">Multi-Document QA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.7.2">HotpotQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.7.3">9,151</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.7.4">F1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.7.5">English</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.7.6">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.8">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.8.1">2WikiMultihopQA</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.8.2">4,887</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.8.3">F1</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.8.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.8.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.9">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.9.1">MuSiQue</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.9.2">11,214</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.9.3">F1</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.9.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.9.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.10">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.10.1">DuReader</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.10.2">15,768</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.10.3">Rouge-L</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.10.4">Chinese</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.10.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.11.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.11.1.1">Summarization</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.11.2">GovReport</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.11.3">8,734</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.11.4">Rouge-L</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.11.5">English</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.11.6">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.12">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.12.1">QMSum</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.12.2">10,614</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.12.3">Rouge-L</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.12.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.12.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.13">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.13.1">MultiNews</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.13.2">2,113</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.13.3">Rouge-L</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.13.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.13.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.14">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.14.1">VCSUM</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.14.2">15,380</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.14.3">Rouge-L</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.14.4">Chinese</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.14.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.15.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.15.1.1">Few-shot Learning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.15.2">TREC</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.15.3">5,177</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.15.4">Accuracy (CLS)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.15.5">English</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.15.6">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.16">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.16.1">TriviaQA</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.16.2">8,209</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.16.3">F1</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.16.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.16.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.17">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.17.1">SAMSum</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.17.2">6,258</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.17.3">Rouge-L</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.17.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.17.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.18">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.18.1">LSHT</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.18.2">22,337</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.18.3">Accuracy (CLS)</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.18.4">Chinese</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.18.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.19">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.19.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.19.1.1">Synthetic Task</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.19.2">PassageCount</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.19.3">11,141</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.19.4">Accuracy (EM)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.19.5">English</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.19.6">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.20">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.20.1">PassageRetrieval-en</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.20.2">9,289</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.20.3">Accuracy (EM)</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.20.4">English</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.20.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.21">
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.21.1">PassageRetrieval-zh</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.21.2">6,745</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.21.3">Accuracy (EM)</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.1.21.4">Chinese</td>
<td class="ltx_td ltx_align_right" id="A2.T5.1.1.21.5">200</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.22">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A2.T5.1.1.22.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.22.1.1">Code Completion</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.22.2">LCC</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.22.3">1,235</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.22.4">Edit Sim</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.22.5">Python/C#/Java</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A2.T5.1.1.22.6">500</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.23">
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T5.1.1.23.1">RepoBench-P</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A2.T5.1.1.23.2">4,206</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T5.1.1.23.3">Edit Sim</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T5.1.1.23.4">Python/Java</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A2.T5.1.1.23.5">500</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table B5 presents a comprehensive overview of the datasets used for evaluating the performance of the proposed model.  For each dataset, the table provides the task group it belongs to (e.g., Math, Single-Document QA, etc.), the dataset name, the average length of the data points (calculated as the number of words for English datasets and the number of characters for Chinese datasets), the evaluation metric used (e.g., Accuracy (EM) for Exact Match accuracy, Accuracy (CLS) for classification accuracy, F1 score, Rouge-L score), the language of the dataset (English or Chinese), and the total number of data samples.
> <details>
> <summary>read the caption</summary>
> Table B5: Overview of all test datasets. ‘Avg len’ (average length) is computed using the number of words for the English (code) datasets and the number of characters for the Chinese datasets. ‘Accuracy (CLS)’ refers to classification accuracy, while ‘Accuracy (EM)’ refers to exact match accuracy
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T6.1.1">
<tr class="ltx_tr" id="A3.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.2.1">KiVi (2-bit)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.3.1">KiVi (4-bit)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.4.1">LogQuant (2-bit)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.5.1">LogQuant (4-bit)</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.6.1">Baseline</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.2.1">2wikimqa</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.2.2">39.52</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.2.3">44.79</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.2.4">40.69</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.2.5">45.18</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T6.1.1.2.6">45.06</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.3">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.3.1">dureader</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.3.2">22.20</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.3.3">27.75</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.3.4">22.59</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.3.5">27.99</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.3.6">28.48</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.4.1">gov_report</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.4.2">18.60</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.4.3">19.86</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.4.4">18.78</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.4.5">20.09</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.4.6">20.41</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.5.1">hotpotqa</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.5.2">48.83</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.5.3">55.78</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.5.4">52.43</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.5.5">55.85</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.5.6">55.90</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.6.1">lcc</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.6.2">47.09</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.6.3">63.44</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.6.4">57.52</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.6.5">62.85</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.6.6">62.99</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.7.1">lsht</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.7.2">31.42</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.7.3">45.00</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.7.4">33.75</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.7.5">45.00</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.7.6">45.00</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.8">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.8.1">multi_news</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.8.2">15.07</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.8.3">15.65</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.8.4">15.11</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.8.5">15.64</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.8.6">15.89</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.9">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.9.1">multifieldqa_en</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.9.2">42.51</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.9.3">55.10</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.9.4">45.98</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.9.5">54.63</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.9.6">54.91</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.10">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.10.1">multifieldqa_zh</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.10.2">50.12</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.10.3">62.77</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.10.4">55.51</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.10.5">63.27</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.10.6">62.72</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.11">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.11.1">musique</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.11.2">25.52</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.11.3">30.65</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.11.4">28.62</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.11.5">30.70</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.11.6">30.39</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.12">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.12.1">narrativeqa</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.12.2">26.44</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.12.3">27.91</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.12.4">27.93</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.12.5">28.28</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.12.6">28.19</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.13">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.13.1">passage_count</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.13.2">5.67</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.13.3">6.31</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.13.4">5.63</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.13.5">6.15</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.13.6">6.31</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.14">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.14.1">passage_retrieval_en</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.14.2">83.17</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.14.3">99.50</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.14.4">92.25</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.14.5">99.50</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.14.6">99.50</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.15">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.15.1">passage_retrieval_zh</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.15.2">46.23</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.15.3">97.42</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.15.4">59.65</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.15.5">97.38</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.15.6">97.54</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.16">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.16.1">qasper</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.16.2">36.50</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.16.3">45.20</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.16.4">38.21</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.16.5">44.74</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.16.6">45.03</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.17">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.17.1">qmsum</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.17.2">17.41</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.17.3">19.07</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.17.4">18.19</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.17.5">18.92</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.17.6">19.15</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.18">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.18.1">repobench-p</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.18.2">39.03</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.18.3">55.61</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.18.4">46.67</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.18.5">56.28</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.18.6">56.57</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.19">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.19.1">samsum</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.19.2">23.88</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.19.3">36.12</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.19.4">33.33</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.19.5">35.45</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.19.6">35.72</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.20">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.20.1">trec</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.20.2">65.00</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.20.3">72.50</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.20.4">67.00</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.20.5">72.50</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.20.6">72.50</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.21">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.21.1">triviaqa</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.21.2">89.72</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.21.3">91.73</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.21.4">91.63</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.21.5">91.89</td>
<td class="ltx_td ltx_align_right" id="A3.T6.1.1.21.6">91.64</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.22">
<td class="ltx_td ltx_align_left ltx_border_b" id="A3.T6.1.1.22.1">vcsum</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A3.T6.1.1.22.2">13.33</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A3.T6.1.1.22.3">17.17</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A3.T6.1.1.22.4">14.41</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A3.T6.1.1.22.5">17.04</td>
<td class="ltx_td ltx_align_right ltx_border_b" id="A3.T6.1.1.22.6">16.85</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the accuracy achieved by different quantization methods (KiVi and LogQuant) on the Llama3.1-8B-Instruct model across various datasets.  It shows the performance of both methods using 2-bit and 4-bit quantization,  comparing them against a baseline of original precision (16-bit).  The results highlight the trade-off between compression ratio and accuracy, indicating how much accuracy is lost when using lower precision quantization.  The datasets included are diverse, encompassing various natural language tasks.
> <details>
> <summary>read the caption</summary>
> Table C6: Comparison on Llama3.1-8B-Instruct of different quantization precisions
> </details>

{{< table-caption >}}
<table class="ltx_tabular" id="A4.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.1">precision</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A4.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.2.1">16-bit</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A4.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.3.1">2-bit</span></th>
</tr>
<tr class="ltx_tr" id="A4.T7.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="A4.T7.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.2.2.1.1">Task Group</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="A4.T7.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A4.T7.1.2.2.2.1">Baseline</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="A4.T7.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.2.2.3.1">KiVi</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="A4.T7.1.2.2.4">
<span class="ltx_text" id="A4.T7.1.2.2.4.1"></span> <span class="ltx_text" id="A4.T7.1.2.2.4.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.1.2.2.4.2.1">
<span class="ltx_tr" id="A4.T7.1.2.2.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_right" id="A4.T7.1.2.2.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.2.2.4.2.1.1.1.1">LogQuant</span></span></span>
<span class="ltx_tr" id="A4.T7.1.2.2.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_right" id="A4.T7.1.2.2.4.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.2.2.4.2.1.2.1.1">(ours)</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.1.2.2.4.3"></span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A4.T7.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.3.1.1.1">llama-3-8B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.4.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T7.1.4.2.1">2WikiMultihopQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.4.2.2">37.24</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.4.2.3">31.72</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.4.2.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.4.2.4.1">35.08</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.5.3.1">DuReader</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.5.3.2">16.73</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.5.3.3">12.45</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.5.3.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.5.3.4.1">15.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.6.4.1">GovReport</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.6.4.2">17.8</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.6.4.3">12.8</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.6.4.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.6.4.4.1">15.63</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.7.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.7.5.1">HotpotQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.7.5.2">46.1</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.7.5.3">43.87</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.7.5.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.7.5.4.1">44.96</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.8.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.8.6.1">LCC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.8.6.2">56.85</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.8.6.3">31.73</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.8.6.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.8.6.4.1">41.75</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.9.7.1">LSHT</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.9.7.2">25.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.9.7.3">21.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.9.7.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.9.7.4.1">21.75</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.10.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.10.8.1">MultiFieldQA-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.10.8.2">44.44</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.10.8.3">38.68</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.10.8.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.10.8.4.1">41.04</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.11.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.11.9.1">MultiFieldQA-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.11.9.2">56.3</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.11.9.3">43.96</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.11.9.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.11.9.4.1">48.44</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.12.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.12.10.1">MultiNews</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.12.10.2">16.59</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.12.10.3">15.76</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.12.10.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.12.10.4.1">16.06</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.13.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.13.11.1">MuSiQue</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.13.11.2">21.44</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.13.11.3">19.56</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.13.11.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.13.11.4.1">20.59</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.14.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.14.12.1">NarrativeQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.14.12.2">22.07</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.14.12.3">19.82</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.14.12.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.14.12.4.1">21.56</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.15.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.15.13.1">PassageCount</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.15.13.2">6.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.15.13.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.15.13.3.1">5.5</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.15.13.4">4.0</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.16.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.16.14.1">PassageRetrieval-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.16.14.2">66.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.16.14.3">53.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.16.14.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.16.14.4.1">58.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.17.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.17.15.1">PassageRetrieval-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.17.15.2">91.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.17.15.3">33.45</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.17.15.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.17.15.4.1">72.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.18.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.18.16.1">Qasper</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.18.16.2">43.69</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.18.16.3">33.9</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.18.16.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.18.16.4.1">39.46</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.19.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.19.17.1">QMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.19.17.2">17.49</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.19.17.3">17.01</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.19.17.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.19.17.4.1">17.37</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.20.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.20.18.1">RepoBench-P</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.20.18.2">51.32</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.20.18.3">31.99</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.20.18.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.20.18.4.1">40.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.21.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.21.19.1">SAMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.21.19.2">33.22</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.21.19.3">22.44</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.21.19.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.21.19.4.1">32.66</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.22.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.22.20.1">TREC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.22.20.2">74.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.22.20.3">72.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.22.20.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.22.20.4.1">73.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.23.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.23.21.1">TriviaQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.23.21.2">90.48</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.23.21.3">87.65</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.23.21.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.23.21.4.1">89.36</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.24.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.24.22.1">VCSUM</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.24.22.2">0.16</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.24.22.3">0.17</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.24.22.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.24.22.4.1">0.25</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.25.23">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A4.T7.1.25.23.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.25.23.1.1">llama-3.1-8B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.26.24">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T7.1.26.24.1">2WikiMultihopQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.26.24.2">45.06</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.26.24.3">39.52</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.26.24.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.26.24.4.1">40.69</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.27.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.27.25.1">DuReader</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.27.25.2">28.48</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.27.25.3">22.2</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.27.25.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.27.25.4.1">22.59</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.28.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.28.26.1">GovReport</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.28.26.2">20.41</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.28.26.3">18.6</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.28.26.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.28.26.4.1">18.78</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.29.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.29.27.1">HotpotQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.29.27.2">55.9</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.29.27.3">48.83</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.29.27.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.29.27.4.1">52.43</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.30.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.30.28.1">LCC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.30.28.2">62.99</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.30.28.3">47.09</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.30.28.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.30.28.4.1">57.52</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.31.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.31.29.1">LSHT</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.31.29.2">45.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.31.29.3">31.42</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.31.29.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.31.29.4.1">33.75</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.32.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.32.30.1">MultiFieldQA-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.32.30.2">54.91</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.32.30.3">42.51</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.32.30.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.32.30.4.1">45.98</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.33.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.33.31.1">MultiFieldQA-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.33.31.2">62.72</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.33.31.3">50.12</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.33.31.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.33.31.4.1">55.51</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.34.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.34.32.1">MultiNews</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.34.32.2">15.89</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.34.32.3">15.07</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.34.32.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.34.32.4.1">15.11</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.35.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.35.33.1">MuSiQue</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.35.33.2">30.39</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.35.33.3">25.52</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.35.33.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.35.33.4.1">28.62</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.36.34">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.36.34.1">NarrativeQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.36.34.2">28.19</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.36.34.3">26.44</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.36.34.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.36.34.4.1">27.93</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.37.35">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.37.35.1">PassageCount</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.37.35.2">6.31</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.37.35.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.37.35.3.1">5.67</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.37.35.4">5.63</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.38.36">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.38.36.1">PassageRetrieval-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.38.36.2">99.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.38.36.3">83.17</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.38.36.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.38.36.4.1">92.25</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.39.37">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.39.37.1">PassageRetrieval-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.39.37.2">97.54</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.39.37.3">46.23</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.39.37.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.39.37.4.1">59.65</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.40.38">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.40.38.1">Qasper</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.40.38.2">45.03</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.40.38.3">36.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.40.38.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.40.38.4.1">38.21</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.41.39">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.41.39.1">QMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.41.39.2">19.15</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.41.39.3">17.41</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.41.39.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.41.39.4.1">18.19</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.42.40">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.42.40.1">RepoBench-P</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.42.40.2">56.57</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.42.40.3">39.03</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.42.40.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.42.40.4.1">46.67</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.43.41">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.43.41.1">SAMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.43.41.2">35.72</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.43.41.3">23.88</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.43.41.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.43.41.4.1">33.33</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.44.42">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.44.42.1">TREC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.44.42.2">72.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.44.42.3">65.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.44.42.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.44.42.4.1">67.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.45.43">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.45.43.1">TriviaQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.45.43.2">91.64</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.45.43.3">89.72</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.45.43.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.45.43.4.1">91.63</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.46.44">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.46.44.1">VCSUM</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.46.44.2">16.85</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.46.44.3">13.33</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.46.44.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.46.44.4.1">14.41</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.47.45">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A4.T7.1.47.45.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.47.45.1.1">Phi-3-mini-128k-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.48.46">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T7.1.48.46.1">2WikiMultihopQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.48.46.2">35.78</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.48.46.3">19.12</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.48.46.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.48.46.4.1">24.61</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.49.47">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.49.47.1">DuReader</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.49.47.2">22.75</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.49.47.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.49.47.3.1">10.38</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.49.47.4">9.26</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.50.48">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.50.48.1">GovReport</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.50.48.2">18.7</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.50.48.3">8.83</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.50.48.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.50.48.4.1">9.47</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.51.49">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.51.49.1">HotpotQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.51.49.2">50.44</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.51.49.3">31.33</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.51.49.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.51.49.4.1">37.48</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.52.50">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.52.50.1">LCC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.52.50.2">57.44</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.52.50.3">39.85</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.52.50.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.52.50.4.1">47.53</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.53.51">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.53.51.1">LSHT</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.53.51.2">27.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.53.51.3">14.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.53.51.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.53.51.4.1">13.75</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.54.52">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.54.52.1">MultiFieldQA-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.54.52.2">54.9</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.54.52.3">29.04</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.54.52.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.54.52.4.1">34.91</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.55.53">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.55.53.1">MultiFieldQA-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.55.53.2">52.09</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.55.53.3">8.16</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.55.53.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.55.53.4.1">12.32</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.56.54">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.56.54.1">MultiNews</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.56.54.2">15.52</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.56.54.3">12.72</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.56.54.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.56.54.4.1">13.33</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.57.55">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.57.55.1">MuSiQue</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.57.55.2">25.23</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.57.55.3">11.92</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.57.55.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.57.55.4.1">15.46</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.58.56">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.58.56.1">NarrativeQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.58.56.2">23.28</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.58.56.3">15.34</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.58.56.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.58.56.4.1">17.37</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.59.57">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.59.57.1">PassageCount</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.59.57.2">3.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.59.57.3">2.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.59.57.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.59.57.4.1">4.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.60.58">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.60.58.1">PassageRetrieval-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.60.58.2">82.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.60.58.3">11.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.60.58.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.60.58.4.1">9.68</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.61.59">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.61.59.1">PassageRetrieval-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.61.59.2">58.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.61.59.3">1.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.61.59.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.61.59.4.1">2.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.62.60">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.62.60.1">Qasper</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.62.60.2">39.6</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.62.60.3">25.78</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.62.60.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.62.60.4.1">29.91</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.63.61">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.63.61.1">QMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.63.61.2">17.97</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.63.61.3">5.88</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.63.61.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.63.61.4.1">7.04</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.64.62">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.64.62.1">RepoBench-P</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.64.62.2">54.49</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.64.62.3">28.09</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.64.62.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.64.62.4.1">34.16</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.65.63">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.65.63.1">SAMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.65.63.2">30.62</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.65.63.3">9.23</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.65.63.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.65.63.4.1">13.03</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.66.64">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.66.64.1">TREC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.66.64.2">66.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.66.64.3">59.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.66.64.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.66.64.4.1">62.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.67.65">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.67.65.1">TriviaQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.67.65.2">86.43</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.67.65.3">61.72</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.67.65.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.67.65.4.1">68.15</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.68.66">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.68.66.1">VCSUM</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.68.66.2">18.04</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.68.66.3">8.97</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.68.66.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.68.66.4.1">9.74</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.69.67">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A4.T7.1.69.67.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.69.67.1.1">Qwen1.5-14B-Chat-AWQ</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.70.68">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T7.1.70.68.1">2WikiMultihopQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.70.68.2">44.81</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.70.68.3">44.35</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.70.68.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.70.68.4.1">44.39</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.71.69">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.71.69.1">DuReader</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.71.69.2">26.02</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.71.69.3">23.34</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.71.69.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.71.69.4.1">23.28</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.72.70">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.72.70.1">GovReport</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.72.70.2">16.31</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.72.70.3">16.23</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.72.70.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.72.70.4.1">16.25</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.73.71">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.73.71.1">HotpotQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.73.71.2">55.67</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.73.71.3">53.69</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.73.71.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.73.71.4.1">53.9</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.74.72">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.74.72.1">LCC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.74.72.2">56.69</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.74.72.3">36.94</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.74.72.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.74.72.4.1">50.95</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.75.73">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.75.73.1">LSHT</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.75.73.2">37.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.75.73.3">32.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.75.73.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.75.73.4.1">34.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.76.74">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.76.74.1">MultiFieldQA-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.76.74.2">48.36</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.76.74.3">44.75</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.76.74.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.76.74.4.1">45.68</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.77.75">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.77.75.1">MultiFieldQA-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.77.75.2">60.35</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.77.75.3">58.54</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.77.75.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.77.75.4.1">59.43</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.78.76">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.78.76.1">MultiNews</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.78.76.2">14.95</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.78.76.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.78.76.3.1">15.01</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.78.76.4">14.94</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.79.77">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.79.77.1">MuSiQue</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.79.77.2">32.38</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.79.77.3">30.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.79.77.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.79.77.4.1">30.45</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.80.78">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.80.78.1">NarrativeQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.80.78.2">22.26</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.80.78.3">21.73</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.80.78.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.80.78.4.1">22.83</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.81.79">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.81.79.1">PassageCount</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.81.79.2">1.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.81.79.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.81.79.3.1">2.55</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.81.79.4">2.0</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.82.80">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.82.80.1">PassageRetrieval-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.82.80.2">94.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.82.80.3">71.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.82.80.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.82.80.4.1">80.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.83.81">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.83.81.1">PassageRetrieval-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.83.81.2">88.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.83.81.3">67.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.83.81.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.83.81.4.1">74.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.84.82">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.84.82.1">Qasper</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.84.82.2">38.93</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.84.82.3">36.56</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.84.82.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.84.82.4.1">37.54</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.85.83">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.85.83.1">QMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.85.83.2">18.16</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.85.83.3">18.03</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.85.83.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.85.83.4.1">18.13</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.86.84">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.86.84.1">RepoBench-P</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.86.84.2">58.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.86.84.3">38.03</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.86.84.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.86.84.4.1">47.79</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.87.85">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.87.85.1">SAMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.87.85.2">32.95</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.87.85.3">32.69</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.87.85.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.87.85.4.1">33.34</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.88.86">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.88.86.1">TREC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.88.86.2">77.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.88.86.3">76.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.88.86.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.88.86.4.1">77.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.89.87">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.89.87.1">TriviaQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.89.87.2">88.63</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.89.87.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.89.87.3.1">88.32</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.89.87.4">87.66</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.90.88">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.90.88.1">VCSUM</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.90.88.2">19.41</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.90.88.3">19.42</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.90.88.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.90.88.4.1">19.65</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.91.89">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A4.T7.1.91.89.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.91.89.1.1">Qwen1.5-7B-Chat</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.92.90">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T7.1.92.90.1">2WikiMultihopQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.92.90.2">32.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.92.90.3">31.83</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.92.90.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.92.90.4.1">32.14</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.93.91">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.93.91.1">DuReader</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.93.91.2">25.96</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.93.91.3">22.64</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.93.91.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.93.91.4.1">24.06</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.94.92">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.94.92.1">GovReport</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.94.92.2">16.66</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.94.92.3">15.57</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.94.92.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.94.92.4.1">15.84</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.95.93">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.95.93.1">HotpotQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.95.93.2">48.11</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.95.93.3">47.37</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.95.93.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.95.93.4.1">48.91</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.96.94">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.96.94.1">LCC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.96.94.2">58.17</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.96.94.3">45.87</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.96.94.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.96.94.4.1">53.77</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.97.95">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.97.95.1">LSHT</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.97.95.2">28.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.97.95.3">24.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.97.95.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.97.95.4.1">24.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.98.96">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.98.96.1">MultiFieldQA-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.98.96.2">47.14</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.98.96.3">42.26</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.98.96.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.98.96.4.1">43.72</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.99.97">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.99.97.1">MultiFieldQA-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.99.97.2">53.4</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.99.97.3">50.18</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.99.97.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.99.97.4.1">51.68</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.100.98">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.100.98.1">MultiNews</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.100.98.2">15.02</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.100.98.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.100.98.3.1">15.0</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.100.98.4">14.92</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.101.99">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.101.99.1">MuSiQue</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.101.99.2">26.74</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.101.99.3">25.88</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.101.99.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.101.99.4.1">27.09</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.102.100">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.102.100.1">NarrativeQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.102.100.2">20.06</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.102.100.3">19.02</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.102.100.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.102.100.4.1">20.06</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.103.101">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.103.101.1">PassageCount</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.103.101.2">1.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.103.101.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.103.101.3.1">0.5</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.103.101.4">0.0</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.104.102">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.104.102.1">PassageRetrieval-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.104.102.2">40.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.104.102.3">20.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.104.102.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.104.102.4.1">24.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.105.103">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.105.103.1">PassageRetrieval-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.105.103.2">59.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.105.103.3">18.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.105.103.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.105.103.4.1">29.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.106.104">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.106.104.1">Qasper</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.106.104.2">39.84</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.106.104.3">37.19</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.106.104.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.106.104.4.1">37.28</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.107.105">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.107.105.1">QMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.107.105.2">18.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.107.105.3">17.59</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.107.105.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.107.105.4.1">18.18</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.108.106">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.108.106.1">RepoBench-P</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.108.106.2">45.46</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.108.106.3">26.33</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.108.106.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.108.106.4.1">30.76</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.109.107">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.109.107.1">SAMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.109.107.2">33.01</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.109.107.3">29.7</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.109.107.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.109.107.4.1">33.31</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.110.108">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.110.108.1">TREC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.110.108.2">70.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.110.108.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.110.108.3.1">69.5</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.110.108.4">67.5</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.111.109">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.111.109.1">TriviaQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.111.109.2">86.76</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.111.109.3">86.51</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.111.109.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.111.109.4.1">87.37</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.112.110">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.112.110.1">VCSUM</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.112.110.2">17.98</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.112.110.3">19.15</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.112.110.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.112.110.4.1">19.34</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.113.111">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A4.T7.1.113.111.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.113.111.1.1">Qwen1.5-7B-Chat-AWQ</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.114.112">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T7.1.114.112.1">2WikiMultihopQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.114.112.2">32.43</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.114.112.3">30.82</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.114.112.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.114.112.4.1">33.46</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.115.113">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.115.113.1">DuReader</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.115.113.2">25.84</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.115.113.3">23.1</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.115.113.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.115.113.4.1">24.36</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.116.114">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.116.114.1">GovReport</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.116.114.2">16.98</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.116.114.3">16.31</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.116.114.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.116.114.4.1">16.65</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.117.115">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.117.115.1">HotpotQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.117.115.2">47.77</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.117.115.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.117.115.3.1">47.17</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.117.115.4">46.0</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.118.116">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.118.116.1">LCC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.118.116.2">57.98</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.118.116.3">44.56</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.118.116.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.118.116.4.1">52.33</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.119.117">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.119.117.1">LSHT</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.119.117.2">29.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.119.117.3">25.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.119.117.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.119.117.4.1">27.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.120.118">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.120.118.1">MultiFieldQA-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.120.118.2">46.72</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.120.118.3">42.87</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.120.118.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.120.118.4.1">45.85</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.121.119">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.121.119.1">MultiFieldQA-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.121.119.2">50.97</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.121.119.3">45.51</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.121.119.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.121.119.4.1">46.73</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.122.120">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.122.120.1">MultiNews</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.122.120.2">14.97</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.122.120.3">15.04</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.122.120.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.122.120.4.1">15.16</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.123.121">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.123.121.1">MuSiQue</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.123.121.2">26.18</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.123.121.3">23.23</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.123.121.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.123.121.4.1">24.36</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.124.122">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.124.122.1">NarrativeQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.124.122.2">20.93</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.124.122.3">19.58</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.124.122.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.124.122.4.1">20.14</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.125.123">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.125.123.1">PassageCount</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.125.123.2">0.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.125.123.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.125.123.3.1">0.0</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.125.123.4">0.0</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.126.124">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.126.124.1">PassageRetrieval-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.126.124.2">30.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.126.124.3">16.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.126.124.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.126.124.4.1">18.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.127.125">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.127.125.1">PassageRetrieval-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.127.125.2">48.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.127.125.3">14.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.127.125.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.127.125.4.1">22.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.128.126">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.128.126.1">Qasper</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.128.126.2">38.45</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.128.126.3">35.27</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.128.126.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.128.126.4.1">36.16</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.129.127">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.129.127.1">QMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.129.127.2">17.85</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.129.127.3">17.34</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.129.127.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.129.127.4.1">17.77</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.130.128">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.130.128.1">RepoBench-P</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.130.128.2">46.95</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.130.128.3">25.02</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.130.128.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.130.128.4.1">29.03</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.131.129">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.131.129.1">SAMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.131.129.2">31.98</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.131.129.3">28.3</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.131.129.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.131.129.4.1">32.06</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.132.130">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.132.130.1">TREC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.132.130.2">67.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.132.130.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.132.130.3.1">65.0</span></td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.132.130.4">63.5</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.133.131">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.133.131.1">TriviaQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.133.131.2">87.56</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.133.131.3">86.48</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.133.131.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.133.131.4.1">87.61</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.134.132">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.134.132.1">VCSUM</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.134.132.2">18.66</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.134.132.3">19.95</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.134.132.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.134.132.4.1">19.96</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.135.133">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A4.T7.1.135.133.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.135.133.1.1">Qwen2-7B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.136.134">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T7.1.136.134.1">2WikiMultihopQA</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.136.134.2">44.15</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.136.134.3">11.33</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T7.1.136.134.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.136.134.4.1">40.12</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.137.135">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.137.135.1">DuReader</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.137.135.2">19.22</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.137.135.3">13.08</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.137.135.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.137.135.4.1">15.01</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.138.136">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.138.136.1">GovReport</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.138.136.2">18.09</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.138.136.3">10.82</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.138.136.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.138.136.4.1">16.07</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.139.137">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.139.137.1">HotpotQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.139.137.2">44.3</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.139.137.3">17.39</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.139.137.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.139.137.4.1">39.92</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.140.138">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.140.138.1">LCC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.140.138.2">57.72</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.140.138.3">36.63</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.140.138.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.140.138.4.1">51.46</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.141.139">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.141.139.1">LSHT</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.141.139.2">44.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.141.139.3">23.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.141.139.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.141.139.4.1">26.25</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.142.140">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.142.140.1">MultiFieldQA-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.142.140.2">46.89</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.142.140.3">21.97</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.142.140.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.142.140.4.1">36.42</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.143.141">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.143.141.1">MultiFieldQA-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.143.141.2">61.48</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.143.141.3">33.67</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.143.141.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.143.141.4.1">47.57</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.144.142">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.144.142.1">MultiNews</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.144.142.2">15.58</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.144.142.3">8.53</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.144.142.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.144.142.4.1">13.6</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.145.143">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.145.143.1">MuSiQue</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.145.143.2">25.71</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.145.143.3">7.58</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.145.143.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.145.143.4.1">18.07</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.146.144">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.146.144.1">NarrativeQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.146.144.2">24.43</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.146.144.3">5.29</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.146.144.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.146.144.4.1">18.43</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.147.145">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.147.145.1">PassageCount</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.147.145.2">5.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.147.145.3">5.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.147.145.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.147.145.4.1">5.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.148.146">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.148.146.1">PassageRetrieval-en</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.148.146.2">69.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.148.146.3">19.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.148.146.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.148.146.4.1">33.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.149.147">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.149.147.1">PassageRetrieval-zh</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.149.147.2">55.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.149.147.3">9.5</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.149.147.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.149.147.4.1">29.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.150.148">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.150.148.1">Qasper</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.150.148.2">45.82</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.150.148.3">21.16</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.150.148.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.150.148.4.1">36.94</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.151.149">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.151.149.1">QMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.151.149.2">17.92</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.151.149.3">9.08</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.151.149.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.151.149.4.1">12.25</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.152.150">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.152.150.1">RepoBench-P</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.152.150.2">58.74</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.152.150.3">35.18</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.152.150.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.152.150.4.1">45.95</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.153.151">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.153.151.1">SAMSum</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.153.151.2">35.94</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.153.151.3">18.23</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.153.151.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.153.151.4.1">28.03</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.154.152">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.154.152.1">TREC</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.154.152.2">78.0</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.154.152.3">58.25</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.154.152.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.154.152.4.1">68.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.155.153">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T7.1.155.153.1">TriviaQA</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.155.153.2">89.66</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.155.153.3">41.56</td>
<td class="ltx_td ltx_align_right" id="A4.T7.1.155.153.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.155.153.4.1">82.63</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.156.154">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A4.T7.1.156.154.1">VCSUM</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T7.1.156.154.2">13.74</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T7.1.156.154.3">8.82</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T7.1.156.154.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.156.154.4.1">10.58</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different models (Llama-3.8B-Instruct, Llama-3.1-8B-Instruct, Qwen1.5-7B-Chat-AWQ, Qwen1.5-14B-Chat-AWQ, Qwen2-7B-Instruct) on various subtasks within the LongBench benchmark, categorized into groups like Math, Single/Multi-Document QA, Summarization, Few-shot Learning, Synthetic Tasks, and Code Completion.  It shows the accuracy (score) achieved using the 16-bit baseline, KiVi's 2-bit quantization, and LogQuant's 2-bit quantization method for each model on each subtask. This allows for a comparison of the accuracy loss introduced by each quantization technique against the full precision baseline.
> <details>
> <summary>read the caption</summary>
> Table D7: LongBench score of each dataset
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19950/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19950/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}