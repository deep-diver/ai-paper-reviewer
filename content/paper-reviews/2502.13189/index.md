---
title: "MoBA: Mixture of Block Attention for Long-Context LLMs"
summary: "MoBA: Mixture of Block Attention enables efficient long-context LLMs by dynamically selecting relevant blocks, improving performance without compromising efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Moonshot AI",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13189 {{< /keyword >}}
{{< keyword icon="writer" >}} Enzhe Lu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13189" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13189" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13189/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Scaling effective context length is vital for AGI, but traditional attention mechanisms face quadratic complexity. Current solutions involve biased structures or linear approximations, which impacts complex reasoning. This paper tackles the challenge by adhering to the "less structure" principle, enabling models to autonomously decide where to focus, sidestepping predefined biases.



The paper introduces Mixture of Block Attention(MoBA), which brings MoE principles to attention mechanisms. MoBA demonstrates superior performance on long-context tasks and smoothly transitions between full and sparse attention to boost efficiency. Deployed in Kimi, MoBA showcases progress in LLM attention computation and is available at https://github.com/MoonshotAI/MoBA.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Mixture of Block Attention (MoBA) significantly enhances the efficiency of LLMs in processing long contexts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MoBA allows for smooth transitions between full and sparse attention, maintaining strong performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The implementation of MoBA builds upon Mixture-of-Experts (MoE) and FlashAttention, optimizing attention mechanisms. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces MoBA, which is a mixture of block attention for long-context LLMs. **This is important because it enhances efficiency without compromising performance.** It also opens up possibilities for integrating existing models without significant retraining costs, establishing a direction for developing long-context capabilities in LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13189/x1.png)

> 🔼 The figure shows the scaling law comparison between Mixture of Block Attention (MOBA) and full attention.  Specifically, it plots the language modeling (LM) loss on the validation set against the PFLOP/s-days, a measure of computational cost.  The plot shows that both MOBA and full attention exhibit similar scaling trends, demonstrating that MOBA achieves comparable scaling performance despite employing a sparse attention mechanism.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1">Model Param</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.2">Head</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.3">Layer</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.4">Hidden</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.5">Training Token</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.6">Block size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.7">TopK</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.2.1.1">568M</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.1.2">14</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.1.3">14</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.1.4">1792</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.2.1.5">10.8B</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.1.6">512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.7">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.3.2.1">822M</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.3.2.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.3.2.3">16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.3.2.4">2048</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.3.2.5">15.3B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.3.2.6">512</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.7">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.4.3.1">1.1B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.3.2">18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.3.3">18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.3.4">2304</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.4.3.5">20.6B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.3.6">512</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.7">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.5.4.1">1.5B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.4.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.4.3">20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.4.4">2560</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.5.4.5">27.4B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.4.6">512</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.7">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.1.6.5.1">2.1B</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.6.5.2">22</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.6.5.3">22</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.6.5.4">2816</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.1.6.5.5">36.9B</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.6.5.6">512</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.6.5.7">3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the configurations used in the scaling law experiments.  For each model size, it shows the number of model parameters, the number of attention heads, the number of layers, the hidden dimension size, the total number of training tokens used, the block size used in the MOBA (Mixture of Block Attention) approach (if applicable), and the top-k hyperparameter for MOBA (also only if applicable).  This information details the experimental setup used to evaluate the scaling behavior of the language models.
> <details>
> <summary>read the caption</summary>
> Table 1: Configuration of Scaling Law Experiments
> </details>





### In-depth insights


#### MOBA: Long Context
**MOBA's architecture excels in processing long contexts** by selectively attending to relevant blocks of information. Traditional attention mechanisms face quadratic complexity with increasing sequence length, making them computationally expensive for long contexts. **MOBA addresses this by partitioning the context into blocks and employing a gating mechanism to dynamically select the most informative blocks** for each query token. This approach mimics the Mixture of Experts (MoE) paradigm, enabling a **more efficient computation without sacrificing performance**. By focusing on relevant blocks, MOBA reduces the computational burden, making it feasible to process extremely long sequences. This capability is crucial for tasks like document summarization, question answering, and machine translation, where understanding the context is essential for generating accurate results. MOBA's ability to handle long contexts effectively **opens new possibilities for large language models**, allowing them to tackle more complex and nuanced tasks.

#### Less Structure
The 'less structure' principle in the context of attention mechanisms highlights the advantage of **allowing the model to autonomously learn where to attend, rather than imposing predefined biases or structures**. This approach contrasts with methods like sink attention or sliding window attention, which, while efficient, can limit the model's generalizability by restricting its focus to specific areas of the input sequence. The goal is to **maximize model flexibility and adaptability**, enabling it to discover and leverage relevant patterns without being constrained by human-engineered assumptions. This approach **can also enable the model to identify complex relationships** that might be missed by more rigid structures. It is important to note that by enabling the model to autonomously learn which points in the context it should attend to **the model may take more computational time and resources**. While this principle aims for greater flexibility, it necessitates careful design to ensure the model learns efficiently and effectively, avoiding potential pitfalls like overfitting or ignoring crucial contextual information.

#### Efficient Scaling
**Efficient scaling in LLMs is critical** due to the quadratic complexity of attention. Innovations like sparse attention and MoE are vital to reduce computational costs while maintaining performance. Approaches range from static patterns (e.g., fixed attention) to dynamic methods (e.g., routing transformers), each offering trade-offs. The choice depends on sequence length, resources, and the balance between efficiency and performance. Future work should explore novel selection strategies, modality applications, and generalization improvements, to achieve more efficient and scalable LLMs. MoBA serves as an effective and balanced framework to address this limitation. High throughput can be accomplished due to the method's memory-efficiency and the efficient computation.

#### Hybrid Attention
**Hybrid attention** likely refers to combining different attention mechanisms, potentially mixing global and local attention. This could mean integrating sparse and dense methods to balance computational efficiency with performance. **Layer-wise application** is a common strategy, utilizing different attention types in different network layers. **Dynamic switching** between attention mechanisms based on input characteristics is another possibility. **Improved long-range dependency capture** while maintaining local context awareness is a likely goal. Computational cost reduction and **adaptability** to various tasks are key benefits, enabling efficient processing of long sequences and complex relationships within the data.

#### Future Directions
Given the context of efficient attention mechanisms for large language models (LLMs), future directions could explore more adaptive block selection strategies within MOBA. This could involve **dynamic adjustment of block sizes** based on content complexity or task demands. Further research should investigate the application of MOBA to other modalities beyond text, such as images or video, to assess its generalizability. Moreover, exploring the combination of MOBA with other efficient attention techniques, like linear attention or attention sinks, might yield further performance improvements. A crucial aspect is the investigation of MOBA's potential in enhancing the **reasoning capabilities of LLMs**, particularly in tasks requiring complex contextual understanding. Finally, future work could focus on developing more sophisticated gating mechanisms within MOBA, potentially incorporating learned routing functions or hierarchical gating structures, leading to enhanced efficiency and scalability, and ultimately enhancing the ability to tackle increasingly complex tasks while maintaining efficiency.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13189/x2.png)

> 🔼 This figure shows the scaling law comparison between MOBA and full attention for the trailing LM loss on a validation set with a sequence length of 32K, focusing on the last 2K tokens. It visually represents the relationship between computational cost (PFLOP/s-days) and the trailing LM loss for both MOBA and full attention models of varying sizes.  The plot helps to understand how the loss changes as the model size and computational resources increase, providing insights into the efficiency and scalability of MOBA compared to the traditional full attention mechanism in the context of processing long sequences.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2502.13189/x3.png)

> 🔼 Figure 1 illustrates the Mixture of Block Attention (MoBA) architecture. (a) shows a simplified example of MoBA in action, demonstrating how query tokens attend to only a subset of key-value blocks rather than the entire context, enabling efficient processing of long sequences.  A gating network dynamically selects the relevant blocks for each query.  (b) shows how MoBA integrates with FlashAttention, a high-performance attention mechanism, to further enhance computational efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of mixture of block attention (MoBA). (a) A running example of MoBA; (b) Integration of MoBA into Flash Attention.
> </details>



![](https://arxiv.org/html/2502.13189/x4.png)

> 🔼 This figure shows the scaling law comparison between MOBA and full attention for LM loss on the validation set with a sequence length of 8K.  The x-axis represents the computation (PFLOP/s-days), while the y-axis represents the LM loss. Two curves, one for MOBA and one for full attention, show how loss changes with increasing computational resources. The figure helps to demonstrate the scalability and efficiency of the MOBA model by comparing it to the full attention model.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2502.13189/x5.png)

> 🔼 This figure shows the scaling law comparison between MOBA and full attention for the trailing LM loss on the validation set. The sequence length is 32K, and only the last 2K tokens' loss is considered. The x-axis represents the training FLOPs in PFLOPs-days, and the y-axis represents the trailing LM loss.  The plot shows the loss curves for MOBA and full attention methods.  This helps to evaluate the long context capability of MOBA by looking at the loss of the final tokens in a sequence.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2502.13189/x6.png)

> 🔼 Figure 2 presents a comparison of the computational efficiency of Mixture of Block Attention (MOBA) against standard full attention, both implemented using Flash Attention.  Subfigure (a) shows the speedup achieved by MOBA compared to full attention on a 1M parameter model across increasing sequence lengths (8K to 1M tokens).  Subfigure (b) demonstrates the scaling behavior while maintaining a consistent sparsity ratio of approximately 95.31% by adjusting block sizes and keeping the number of MoBA blocks fixed at 64 and top-k fixed at 3. This figure highlights MOBA's ability to achieve significant speedups over traditional full attention, particularly beneficial for longer sequences while controlling sparsity.
> <details>
> <summary>read the caption</summary>
> Figure 2: Efficiency of MoBA vs. full attention (implemented with Flash Attention). (a) 1M Model speedup evaluation: Computation time scaling of MoBA versus Flash Attention on 1M model with increasing sequence lengths (8K-1M). (b) Fixed Sparsity Ratio scaling: Computation time scaling comparison between MoBA and Flash Attention across increasing sequence lengths (8K-10M), maintaining a constant sparsity ratio of 95.31%percent95.3195.31\%95.31 % (fixed 64 MoBA blocks with variance block size and fixed top-k=3).
> </details>



![](https://arxiv.org/html/2502.13189/x7.png)

> 🔼 This figure shows the scaling law comparison between MOBA and full attention for the LM loss on the validation set with a sequence length of 8K.  The x-axis represents the compute (PFLOP/s-days), and the y-axis represents the LM loss.  The plot shows the loss curves for both MOBA and full attention models. The figure visually demonstrates that MOBA achieves a comparable performance to that of full attention, even with its sparse attention pattern.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2502.13189/x8.png)

> 🔼 This figure displays the scaling law comparison between Mixture of Block Attention (MOBA) and full attention, specifically focusing on the trailing Language Model (LM) loss on a validation set with a sequence length of 32K, considering only the last 1K tokens. It visually represents the relationship between the computational cost (PFLOP/s-days) and the trailing LM loss for both MOBA and full attention models of varying sizes. The graph helps assess the efficiency and long-context capabilities of MOBA by comparing how well each method handles long sequences and how the loss scales with increasing computational resources.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2502.13189/x9.png)

> 🔼 This figure displays the scaling law comparison between MOBA and full attention. Specifically, it shows the trailing LM loss on the validation set (sequence length = 32K, last 2K tokens). The fitted scaling law curve is also shown, illustrating the relationship between compute (in PFLOP/s-days) and LM loss. The plot allows one to observe how the loss changes for both the MOBA and Full Attention methods as the compute resources increase.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2502.13189/x10.png)

> 🔼 This figure displays the results of scaling law experiments comparing MoBA (Mixture of Block Attention) and Full Attention mechanisms.  Subfigure (a) shows the Language Model (LM) loss on a validation set using sequences of length 8K. Subfigure (b) presents the trailing LM loss, focusing on the last 1K tokens of sequences with length 32K, which assesses the model's ability to accurately generate the concluding part of long sequences. Finally, subfigure (c) illustrates the fitted scaling law curve derived from the experimental data, showing the relationship between compute and model performance for both MoBA and Full Attention.
> <details>
> <summary>read the caption</summary>
> Figure 3: Scaling law comparison between MoBA and full attention. (a) LM loss on validation set (seqlen=8K); (b) trailing LM loss on validation set (seqlen=32K, last 1K tokens); (c) fitted scaling law curve.
> </details>



![](https://arxiv.org/html/2502.13189/x11.png)

> 🔼 This figure displays the results of an ablation study on the impact of different block granularities in the Mixture of Block Attention (MoBA) model.  The experiment used a 1.5B parameter model with a 32K context length.  Various block sizes (8, 16, 32, 64, and 128) and corresponding top-k values (2, 4, 8, 16, and 32) were used to maintain a constant 75% sparsity.  The LM loss on the validation set is plotted against the different block granularities. This allows for an assessment of the model's performance with varying levels of granularity in block segmentation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Fine-Grained Block Segmentation. The LM loss on validation set v.s. MoBA with different block granularity.
> </details>



![](https://arxiv.org/html/2502.13189/x12.png)

> 🔼 This figure shows the scaling law comparison between MOBA and full attention in terms of LM loss on the validation set with a sequence length of 8K.  The x-axis represents the compute (PFLOP/s-days), and the y-axis represents the LM loss. Two lines are plotted, one for MOBA and another for full attention. The figure demonstrates that MOBA achieves scaling performance comparable to full attention.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2502.13189/x13.png)

> 🔼 The figure shows the scaling law comparison between MOBA and full attention in terms of trailing LM loss (on validation set, sequence length = 32K, last 1K tokens).  It displays the relationship between the computational cost (PFLOP/s-days) and the trailing LM loss for models trained with MOBA and with full attention. The plot helps to visualize the efficiency gains achieved by using MOBA, especially when dealing with longer sequences. The scaling law curve shows that MoBA achieves comparable performance to full attention while using significantly less computation.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2502.13189/x14.png)

> 🔼 This figure displays the fitted scaling law curve, comparing the loss between MOBA and full attention models across different computational costs (PFLOP/s-days).  The x-axis represents the computational cost, while the y-axis shows the language model loss. The plot visualizes the relationship between computational resources and model performance for both MOBA and full attention.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2502.13189/x15.png)

> 🔼 Figure 5 presents a comparison of three different training approaches: using only MoBA, using only full attention, and a hybrid approach that combines both.  Panel (a) displays the position-wise LM loss across a sequence.  Panels (b) and (c) analyze the impact of progressively incorporating full attention layers during supervised fine-tuning (SFT).  Panel (b) shows the SFT LM loss while (c) shows the SFT trailing LM loss specifically focusing on the last 2K tokens of a 32K sequence, providing insights into the models' ability to generate long sequences effectively.
> <details>
> <summary>read the caption</summary>
> Figure 5: Hybrid of MoBA and full attention. (a) position-wise LM loss for MoBA, full attention, and MoBA/full hybrid training; (b) SFT LM loss w.r.t the number of full attention layers in layer-wise hybrid; (c) SFT trailing LM loss (seqlen=32K, last 2K) w.r.t the number of full attention layers in layer-wise hybrid.
> </details>



![](https://arxiv.org/html/2502.13189/x16.png)

> 🔼 Figure 6 illustrates the training pipeline used for the continual pre-training and subsequent supervised fine-tuning (SFT) of language models.  The continual pre-training stage involves gradually increasing the context length (from 256K to 1M tokens) through a series of pre-training phases.  After each pre-training phase, supervised fine-tuning is performed with increasingly large context lengths (from 32K to 1M tokens).  This figure visually represents the steps involved in this iterative training process, clarifying the context window expansion at each stage and depicting the transitions between pre-training and SFT.
> <details>
> <summary>read the caption</summary>
> Figure 6: The continual pre-training and SFT recipes.
> </details>



![](https://arxiv.org/html/2502.13189/x17.png)

> 🔼 This figure displays the performance of the Llama-8B-1M-MoBA model on the Needle in a Haystack benchmark. The Needle in a Haystack benchmark tests a model's ability to find a specific piece of information within a large context.  The x-axis represents the context length (up to 1 million tokens), and the y-axis shows the performance score. The heatmap visualization makes it easy to see how the model's performance changes as the context length increases. This experiment demonstrates the model's ability to effectively process extremely long contexts.
> <details>
> <summary>read the caption</summary>
> Figure 7: Performance of LLama-8B-1M-MoBA on the Needle in the Haystack benchmark (upto 1M context length).
> </details>



![](https://arxiv.org/html/2502.13189/x18.png)

> 🔼 This figure displays the scaling law for the initial 2000 tokens.  It shows the relationship between the computational cost (PFLOP/s-days) and the loss achieved by models using MOBA (Mixture of Block Attention) versus full attention.  The x-axis represents the computational cost, and the y-axis represents the loss. The graph shows two curves, one for MOBA and one for the full attention approach, allowing comparison of the performance and efficiency of the two methods for this portion of the sequence.
> <details>
> <summary>read the caption</summary>
> (a) Scaling law (0-2k)
> </details>



![](https://arxiv.org/html/2502.13189/x19.png)

> 🔼 This figure shows the scaling law for positions 2000-4000.  It plots the PFLOP/s-days (floating point operations per second-days, a measure of computational cost) against the LM Loss (language model loss, a measure of model performance). Two lines are shown: one for the MOBA (Mixture of Block Attention) model and one for a full attention model. The lines illustrate the relationship between computational cost and model performance for different model sizes in this specific token range.  The slope of the lines indicates how the loss changes as computational cost increases.
> <details>
> <summary>read the caption</summary>
> (b) Scaling law (2-4k)
> </details>



![](https://arxiv.org/html/2502.13189/x20.png)

> 🔼 This figure shows the scaling law for positions 4000-6000, comparing the performance of MoBA and full attention in terms of LM loss and PFLOP/s-days. The x-axis represents the computational cost (PFLOP/s-days), and the y-axis represents the LM loss. The lines represent different model sizes, and the plot illustrates how the LM loss scales with computational resources for both MoBA and full attention.
> <details>
> <summary>read the caption</summary>
> (c) Scaling law (4-6k)
> </details>



![](https://arxiv.org/html/2502.13189/x21.png)

> 🔼 This figure shows the scaling law for positions 6000 to 8000.  It plots the PFLOP/s-days (performance) against the LM Loss (training loss) for both MoBA (Mixture of Block Attention) and Full Attention models.  The lines represent different model sizes, illustrating how training loss changes with compute and model size for each approach.  This helps determine the efficiency and scaling behavior of MoBA relative to traditional full attention mechanisms for long sequences.
> <details>
> <summary>read the caption</summary>
> (d) Scaling law (6-8k)
> </details>



![](https://arxiv.org/html/2502.13189/x22.png)

> 🔼 This figure shows the scaling law for positions 8000 to 10000.  It plots the PFLOP/s-days against the LM loss for both MOBA (Mixture of Block Attention) and Full Attention models.  The graph illustrates how the computational cost (PFLOP/s-days) scales with the language model loss (LM loss) for different model sizes in this specific range of token positions within a sequence. It helps to assess the computational efficiency of MOBA compared to traditional Full Attention in a particular region of the sequence being processed.
> <details>
> <summary>read the caption</summary>
> (e) Scaling law (8-10k)
> </details>



![](https://arxiv.org/html/2502.13189/x23.png)

> 🔼 This figure shows the scaling law for positions 10k-12k. It is part of a set of figures (Figure 8) demonstrating scaling laws for various ranges of token positions (0-16k and 16-32k) and comparing the performance of MOBA and full attention models across different computational costs.  The x-axis represents the computational cost (PFLOP/s-days), and the y-axis represents the LM loss.  The curves show the relationship between computational resources and model performance for both MOBA and the full-attention baseline.
> <details>
> <summary>read the caption</summary>
> (f) Scaling law (10-12k)
> </details>



![](https://arxiv.org/html/2502.13189/x24.png)

> 🔼 This figure is part of a scaling law experiment comparing MOBA and Full Attention. Specifically, it shows the relationship between PFLOP/s-days (a metric related to computational cost) and LM loss (a measure of model performance) for the token positions 12000-14000 in the training data.  It demonstrates how the model performance changes as computational resources are scaled, allowing assessment of both MOBA's efficiency and scalability compared to the baseline Full Attention mechanism.
> <details>
> <summary>read the caption</summary>
> (g) Scaling law (12-14k)
> </details>



![](https://arxiv.org/html/2502.13189/x25.png)

> 🔼 This figure shows the scaling law for positions 14,000 to 16,000.  It presents the relationship between compute (PFLOP/s-days) and LM loss for both the MOBA (Mixture of Block Attention) and Full Attention models. The plot helps visualize how the loss changes with varying computational resources, offering insights into the efficiency of MOBA compared to traditional full attention. The lines represent the results from different model sizes. 
> <details>
> <summary>read the caption</summary>
> (h) Scaling law (14-16k)
> </details>



![](https://arxiv.org/html/2502.13189/x26.png)

> 🔼 This figure displays scaling laws for different positions within the context window, specifically from position 0 to 16k.  It shows the relationship between the computational cost (in PFLOP/s-days) and the loss of the language model. The plots are separated into subfigures (a) through (h), each covering a 2k-token range within the 0-16k span.  Each subfigure presents the scaling laws for both MOBA (Mixture of Block Attention) and full attention models.  By comparing the curves for MOBA and full attention across different parts of the context window, we can analyze how efficiently MOBA uses computational resources while maintaining performance comparable to full attention.
> <details>
> <summary>read the caption</summary>
> Figure 8: Scaling laws for positions 0-16k
> </details>



![](https://arxiv.org/html/2502.13189/x27.png)

> 🔼 This figure presents the scaling law for positions 16,000 to 18,000 in the context of a large language model. It showcases the relationship between the computational resources (PFLOP/s-days) and the resulting loss (LM Loss) using two different attention mechanisms: MoBA (Mixture of Block Attention) and Full Attention.  The graph allows for a visual comparison of the performance and efficiency of both mechanisms at this specific context window within the model.
> <details>
> <summary>read the caption</summary>
> (i) Scaling law (16-18k)
> </details>



![](https://arxiv.org/html/2502.13189/x28.png)

> 🔼 This figure shows the scaling law for positions 18k to 20k in a language model.  It plots the performance (likely LM loss) of the model against the computational resources (PFLOP/s-days). Two lines are shown, one for the model using the proposed Mixture of Block Attention (MOBA) and another for the model using full attention. The graph illustrates how the loss changes with increasing computational resources for the specified position range within the text sequence.  This helps assess the efficiency and scalability of MOBA compared to the traditional full attention mechanism for long sequences.
> <details>
> <summary>read the caption</summary>
> (j) Scaling law (18-20k)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.F3.sf3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.F3.sf3.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.F3.sf3.4.5.1.1">L(C)</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.F3.sf3.4.5.1.2">MoBA</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.F3.sf3.4.5.1.3">Full</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F3.sf3.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.F3.sf3.2.2.3">LM loss (seqlen=8K)</th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.F3.sf3.1.1.1"><math alttext="2.625\times C^{-0.063}" class="ltx_Math" display="inline" id="S3.F3.sf3.1.1.1.m1.1"><semantics id="S3.F3.sf3.1.1.1.m1.1a"><mrow id="S3.F3.sf3.1.1.1.m1.1.1" xref="S3.F3.sf3.1.1.1.m1.1.1.cmml"><mn id="S3.F3.sf3.1.1.1.m1.1.1.2" xref="S3.F3.sf3.1.1.1.m1.1.1.2.cmml">2.625</mn><mo id="S3.F3.sf3.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.F3.sf3.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S3.F3.sf3.1.1.1.m1.1.1.3" xref="S3.F3.sf3.1.1.1.m1.1.1.3.cmml"><mi id="S3.F3.sf3.1.1.1.m1.1.1.3.2" xref="S3.F3.sf3.1.1.1.m1.1.1.3.2.cmml">C</mi><mrow id="S3.F3.sf3.1.1.1.m1.1.1.3.3" xref="S3.F3.sf3.1.1.1.m1.1.1.3.3.cmml"><mo id="S3.F3.sf3.1.1.1.m1.1.1.3.3a" xref="S3.F3.sf3.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.F3.sf3.1.1.1.m1.1.1.3.3.2" xref="S3.F3.sf3.1.1.1.m1.1.1.3.3.2.cmml">0.063</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.F3.sf3.1.1.1.m1.1b"><apply id="S3.F3.sf3.1.1.1.m1.1.1.cmml" xref="S3.F3.sf3.1.1.1.m1.1.1"><times id="S3.F3.sf3.1.1.1.m1.1.1.1.cmml" xref="S3.F3.sf3.1.1.1.m1.1.1.1"></times><cn id="S3.F3.sf3.1.1.1.m1.1.1.2.cmml" type="float" xref="S3.F3.sf3.1.1.1.m1.1.1.2">2.625</cn><apply id="S3.F3.sf3.1.1.1.m1.1.1.3.cmml" xref="S3.F3.sf3.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.F3.sf3.1.1.1.m1.1.1.3.1.cmml" xref="S3.F3.sf3.1.1.1.m1.1.1.3">superscript</csymbol><ci id="S3.F3.sf3.1.1.1.m1.1.1.3.2.cmml" xref="S3.F3.sf3.1.1.1.m1.1.1.3.2">𝐶</ci><apply id="S3.F3.sf3.1.1.1.m1.1.1.3.3.cmml" xref="S3.F3.sf3.1.1.1.m1.1.1.3.3"><minus id="S3.F3.sf3.1.1.1.m1.1.1.3.3.1.cmml" xref="S3.F3.sf3.1.1.1.m1.1.1.3.3"></minus><cn id="S3.F3.sf3.1.1.1.m1.1.1.3.3.2.cmml" type="float" xref="S3.F3.sf3.1.1.1.m1.1.1.3.3.2">0.063</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.F3.sf3.1.1.1.m1.1c">2.625\times C^{-0.063}</annotation><annotation encoding="application/x-llamapun" id="S3.F3.sf3.1.1.1.m1.1d">2.625 × italic_C start_POSTSUPERSCRIPT - 0.063 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F3.sf3.2.2.2"><math alttext="2.622\times C^{-0.063}" class="ltx_Math" display="inline" id="S3.F3.sf3.2.2.2.m1.1"><semantics id="S3.F3.sf3.2.2.2.m1.1a"><mrow id="S3.F3.sf3.2.2.2.m1.1.1" xref="S3.F3.sf3.2.2.2.m1.1.1.cmml"><mn id="S3.F3.sf3.2.2.2.m1.1.1.2" xref="S3.F3.sf3.2.2.2.m1.1.1.2.cmml">2.622</mn><mo id="S3.F3.sf3.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.F3.sf3.2.2.2.m1.1.1.1.cmml">×</mo><msup id="S3.F3.sf3.2.2.2.m1.1.1.3" xref="S3.F3.sf3.2.2.2.m1.1.1.3.cmml"><mi id="S3.F3.sf3.2.2.2.m1.1.1.3.2" xref="S3.F3.sf3.2.2.2.m1.1.1.3.2.cmml">C</mi><mrow id="S3.F3.sf3.2.2.2.m1.1.1.3.3" xref="S3.F3.sf3.2.2.2.m1.1.1.3.3.cmml"><mo id="S3.F3.sf3.2.2.2.m1.1.1.3.3a" xref="S3.F3.sf3.2.2.2.m1.1.1.3.3.cmml">−</mo><mn id="S3.F3.sf3.2.2.2.m1.1.1.3.3.2" xref="S3.F3.sf3.2.2.2.m1.1.1.3.3.2.cmml">0.063</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.F3.sf3.2.2.2.m1.1b"><apply id="S3.F3.sf3.2.2.2.m1.1.1.cmml" xref="S3.F3.sf3.2.2.2.m1.1.1"><times id="S3.F3.sf3.2.2.2.m1.1.1.1.cmml" xref="S3.F3.sf3.2.2.2.m1.1.1.1"></times><cn id="S3.F3.sf3.2.2.2.m1.1.1.2.cmml" type="float" xref="S3.F3.sf3.2.2.2.m1.1.1.2">2.622</cn><apply id="S3.F3.sf3.2.2.2.m1.1.1.3.cmml" xref="S3.F3.sf3.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S3.F3.sf3.2.2.2.m1.1.1.3.1.cmml" xref="S3.F3.sf3.2.2.2.m1.1.1.3">superscript</csymbol><ci id="S3.F3.sf3.2.2.2.m1.1.1.3.2.cmml" xref="S3.F3.sf3.2.2.2.m1.1.1.3.2">𝐶</ci><apply id="S3.F3.sf3.2.2.2.m1.1.1.3.3.cmml" xref="S3.F3.sf3.2.2.2.m1.1.1.3.3"><minus id="S3.F3.sf3.2.2.2.m1.1.1.3.3.1.cmml" xref="S3.F3.sf3.2.2.2.m1.1.1.3.3"></minus><cn id="S3.F3.sf3.2.2.2.m1.1.1.3.3.2.cmml" type="float" xref="S3.F3.sf3.2.2.2.m1.1.1.3.3.2">0.063</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.F3.sf3.2.2.2.m1.1c">2.622\times C^{-0.063}</annotation><annotation encoding="application/x-llamapun" id="S3.F3.sf3.2.2.2.m1.1d">2.622 × italic_C start_POSTSUPERSCRIPT - 0.063 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.F3.sf3.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.F3.sf3.4.4.3">Trailing LM loss (seqlen=32K, last 2K)</th>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.F3.sf3.3.3.1"><math alttext="1.546\times C^{-0.108}" class="ltx_Math" display="inline" id="S3.F3.sf3.3.3.1.m1.1"><semantics id="S3.F3.sf3.3.3.1.m1.1a"><mrow id="S3.F3.sf3.3.3.1.m1.1.1" xref="S3.F3.sf3.3.3.1.m1.1.1.cmml"><mn id="S3.F3.sf3.3.3.1.m1.1.1.2" xref="S3.F3.sf3.3.3.1.m1.1.1.2.cmml">1.546</mn><mo id="S3.F3.sf3.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.F3.sf3.3.3.1.m1.1.1.1.cmml">×</mo><msup id="S3.F3.sf3.3.3.1.m1.1.1.3" xref="S3.F3.sf3.3.3.1.m1.1.1.3.cmml"><mi id="S3.F3.sf3.3.3.1.m1.1.1.3.2" xref="S3.F3.sf3.3.3.1.m1.1.1.3.2.cmml">C</mi><mrow id="S3.F3.sf3.3.3.1.m1.1.1.3.3" xref="S3.F3.sf3.3.3.1.m1.1.1.3.3.cmml"><mo id="S3.F3.sf3.3.3.1.m1.1.1.3.3a" xref="S3.F3.sf3.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.F3.sf3.3.3.1.m1.1.1.3.3.2" xref="S3.F3.sf3.3.3.1.m1.1.1.3.3.2.cmml">0.108</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.F3.sf3.3.3.1.m1.1b"><apply id="S3.F3.sf3.3.3.1.m1.1.1.cmml" xref="S3.F3.sf3.3.3.1.m1.1.1"><times id="S3.F3.sf3.3.3.1.m1.1.1.1.cmml" xref="S3.F3.sf3.3.3.1.m1.1.1.1"></times><cn id="S3.F3.sf3.3.3.1.m1.1.1.2.cmml" type="float" xref="S3.F3.sf3.3.3.1.m1.1.1.2">1.546</cn><apply id="S3.F3.sf3.3.3.1.m1.1.1.3.cmml" xref="S3.F3.sf3.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.F3.sf3.3.3.1.m1.1.1.3.1.cmml" xref="S3.F3.sf3.3.3.1.m1.1.1.3">superscript</csymbol><ci id="S3.F3.sf3.3.3.1.m1.1.1.3.2.cmml" xref="S3.F3.sf3.3.3.1.m1.1.1.3.2">𝐶</ci><apply id="S3.F3.sf3.3.3.1.m1.1.1.3.3.cmml" xref="S3.F3.sf3.3.3.1.m1.1.1.3.3"><minus id="S3.F3.sf3.3.3.1.m1.1.1.3.3.1.cmml" xref="S3.F3.sf3.3.3.1.m1.1.1.3.3"></minus><cn id="S3.F3.sf3.3.3.1.m1.1.1.3.3.2.cmml" type="float" xref="S3.F3.sf3.3.3.1.m1.1.1.3.3.2">0.108</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.F3.sf3.3.3.1.m1.1c">1.546\times C^{-0.108}</annotation><annotation encoding="application/x-llamapun" id="S3.F3.sf3.3.3.1.m1.1d">1.546 × italic_C start_POSTSUPERSCRIPT - 0.108 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.F3.sf3.4.4.2"><math alttext="1.464\times C^{-0.097}" class="ltx_Math" display="inline" id="S3.F3.sf3.4.4.2.m1.1"><semantics id="S3.F3.sf3.4.4.2.m1.1a"><mrow id="S3.F3.sf3.4.4.2.m1.1.1" xref="S3.F3.sf3.4.4.2.m1.1.1.cmml"><mn id="S3.F3.sf3.4.4.2.m1.1.1.2" xref="S3.F3.sf3.4.4.2.m1.1.1.2.cmml">1.464</mn><mo id="S3.F3.sf3.4.4.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.F3.sf3.4.4.2.m1.1.1.1.cmml">×</mo><msup id="S3.F3.sf3.4.4.2.m1.1.1.3" xref="S3.F3.sf3.4.4.2.m1.1.1.3.cmml"><mi id="S3.F3.sf3.4.4.2.m1.1.1.3.2" xref="S3.F3.sf3.4.4.2.m1.1.1.3.2.cmml">C</mi><mrow id="S3.F3.sf3.4.4.2.m1.1.1.3.3" xref="S3.F3.sf3.4.4.2.m1.1.1.3.3.cmml"><mo id="S3.F3.sf3.4.4.2.m1.1.1.3.3a" xref="S3.F3.sf3.4.4.2.m1.1.1.3.3.cmml">−</mo><mn id="S3.F3.sf3.4.4.2.m1.1.1.3.3.2" xref="S3.F3.sf3.4.4.2.m1.1.1.3.3.2.cmml">0.097</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.F3.sf3.4.4.2.m1.1b"><apply id="S3.F3.sf3.4.4.2.m1.1.1.cmml" xref="S3.F3.sf3.4.4.2.m1.1.1"><times id="S3.F3.sf3.4.4.2.m1.1.1.1.cmml" xref="S3.F3.sf3.4.4.2.m1.1.1.1"></times><cn id="S3.F3.sf3.4.4.2.m1.1.1.2.cmml" type="float" xref="S3.F3.sf3.4.4.2.m1.1.1.2">1.464</cn><apply id="S3.F3.sf3.4.4.2.m1.1.1.3.cmml" xref="S3.F3.sf3.4.4.2.m1.1.1.3"><csymbol cd="ambiguous" id="S3.F3.sf3.4.4.2.m1.1.1.3.1.cmml" xref="S3.F3.sf3.4.4.2.m1.1.1.3">superscript</csymbol><ci id="S3.F3.sf3.4.4.2.m1.1.1.3.2.cmml" xref="S3.F3.sf3.4.4.2.m1.1.1.3.2">𝐶</ci><apply id="S3.F3.sf3.4.4.2.m1.1.1.3.3.cmml" xref="S3.F3.sf3.4.4.2.m1.1.1.3.3"><minus id="S3.F3.sf3.4.4.2.m1.1.1.3.3.1.cmml" xref="S3.F3.sf3.4.4.2.m1.1.1.3.3"></minus><cn id="S3.F3.sf3.4.4.2.m1.1.1.3.3.2.cmml" type="float" xref="S3.F3.sf3.4.4.2.m1.1.1.3.3.2">0.097</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.F3.sf3.4.4.2.m1.1c">1.464\times C^{-0.097}</annotation><annotation encoding="application/x-llamapun" id="S3.F3.sf3.4.4.2.m1.1d">1.464 × italic_C start_POSTSUPERSCRIPT - 0.097 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance achieved by two different attention mechanisms: Mixture of Block Attention (MOBA) and Full Attention.  The comparison is conducted across a range of established evaluation benchmarks commonly used to assess the capabilities of large language models (LLMs).  Each benchmark assesses different aspects of LLM performance, offering a holistic view of how the two methods compare in various tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison between MoBA and full Attention across different evaluation benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Benchmark</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">Llama-8B-1M-MoBA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1">Llama-8B-1M-Full</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.1.2.1.1">AGIEval [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.1.2.1.2">0.5144</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.2.1.3.1">0.5146</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.3.2.1">BBH [3-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.3.2.2">0.6573</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.3.2.3.1">0.6589</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.4.3.1">CEval [5-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.4.3.2.1">0.6273</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.3.3">0.6165</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.5.4.1">GSM8K [5-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.4.2.1">0.7278</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.3">0.7142</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.6.5.1">HellaSWAG [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.6.5.2">0.8262</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.6.5.3.1">0.8279</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.7.6.1">Loogle [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.7.6.2.1">0.4209</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.6.3">0.4016</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.8.7.1">Competition Math [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.8.7.2">0.4254</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.8.7.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.8.7.3.1">0.4324</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.9.8.1">MBPP [3-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.9.8.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.9.8.2.1">0.5380</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.8.3">0.5320</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.10.9.1">MBPP Sanitized [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.10.9.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.10.9.2.1">0.6926</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.10.9.3">0.6615</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.11.10.1">MMLU [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.11.10.2">0.4903</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.11.10.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.11.10.3.1">0.4904</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.12.11.1">MMLU Pro [5-shot][CoT]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.12.11.2">0.4295</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.12.11.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.12.11.3.1">0.4328</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.13.12.1">OpenAI HumanEval [0-shot][pass@1]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.13.12.2">0.6951</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.13.12.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.13.12.3.1">0.7012</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.14.13.1">SimpleQA [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.14.13.2">0.0465</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.14.13.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.14.13.3.1">0.0492</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.15.14.1">TriviaQA [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.15.14.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.15.14.2.1">0.5673</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.15.14.3">0.5667</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.16.15.1">LongBench @32K [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.16.15.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.16.15.2.1">0.4828</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.16.15.3">0.4821</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.1.17.16.1">RULER @128K [0-shot]</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.1.17.16.2">0.7818</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.17.16.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.17.16.3.1">0.7849</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the scaling law for the loss of language models trained with different attention mechanisms (MOBA and Full Attention) across various sequence length ranges (from 0k to 32k tokens).  It shows the relationship between the computational cost (in PFLOPs/day) and the resulting loss, providing insights into the efficiency and scalability of MOBA compared to the traditional full attention mechanism. For each sequence length range, the table gives fitted scaling law curves for both MOBA and Full Attention, allowing for a direct comparison of their performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Loss scaling with different positions
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13189/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13189/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}