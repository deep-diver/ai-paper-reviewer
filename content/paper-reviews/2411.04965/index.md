---
title: "BitNet a4.8: 4-bit Activations for 1-bit LLMs"
summary: "BitNet a4.8 achieves performance comparable to existing 1-bit LLMs with 4-bit activations, significantly enhancing large-scale LLM deployment and inference efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Microsoft Research",]
showSummary: true
date: 2024-11-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.04965 {{< /keyword >}}
{{< keyword icon="writer" >}} Hongyu Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.04965" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.04965" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/bitnet-a4-8-4-bit-activations-for-1-bit-llms" target="_self" >}}
↗ Papers with Code
{{< /button >}}


### TL;DR


{{< lead >}}

Current 1-bit LLMs, while efficient, still face challenges in inference speed due to computational costs.  Addressing this requires optimizing activation representation without sacrificing accuracy.  Previous methods often struggled with outlier activation values that caused significant quantization errors. 

BitNet a4.8 tackles this by employing a hybrid strategy combining 4-bit quantization with sparsification.  It selectively applies 4-bit activations to critical layers, while managing outliers via sparsification and 8-bit quantization for intermediate states. This approach delivers performance on par with existing 1-bit LLMs, but with greatly increased inference speed and reduced memory usage.  Furthermore, the architecture is optimized for large-scale deployment, leading to significantly improved overall efficiency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} BitNet a4.8 uses a hybrid quantization and sparsification strategy to mitigate quantization errors, achieving performance comparable to BitNet b1.58. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} BitNet a4.8 achieves faster inference due to the use of 4-bit (INT4/FP4) kernels. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} BitNet a4.8 reduces model size and increases efficiency by activating only 55% of parameters and supporting a 3-bit KV cache. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it significantly advances the efficiency of large language models (LLMs)** by introducing BitNet a4.8, a method that achieves comparable performance to existing 1-bit LLMs while using only 4-bit activations.  This **reduces computational costs**, opens avenues for **more efficient LLM deployment on resource-constrained devices**, and **inspires further research** into low-bit quantization techniques for LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2411.04965/x1.png)

> 🔼 BitNet a4.8 employs a hybrid approach to quantization, using 1.58-bit weights (ternary: -1, 0, 1) and a mixed strategy for activations.  For inputs to the attention and feed-forward network layers, it uses 4-bit quantization. However, to mitigate the effects of outlier activations, intermediate states within certain Transformer sub-layers are sparsified (using TopK) before being quantized to 8 bits. This hybrid method balances the benefits of low-bit quantization with a strategy to handle data points that might otherwise cause significant quantization errors. The figure visually depicts this data flow through the network layers.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of BitNet a4.8 with both weight and activation quantization. All the parameters are ternery (i.e., 1.58-bit as in BitNet b1.58 [12]). We use a hybrid quantization and sparsification strategy to deal with outlier activations in certain Transformer sub-layers.
> </details>





{{< table-caption >}}
| Models | Size | PPL↓ | ARCc↑ | ARCe↑ | HS↑ | PQ↑ | WGe↑ | Avg↑ |
|---|---|---|---|---|---|---|---|---|
| LLaMA LLM | 700M | 11.44 | 27.13 | 43.27 | 44.70 | 68.12 | 53.99 | 47.44 |
| BitNet b1.58 | 700M | 12.32 | 25.00 | 42.68 | 42.08 | 66.97 | 54.14 | 46.17 |
| **BitNet a4.8** (FP4) | 700M | 12.40 | 25.17 | 42.68 | 42.36 | 66.27 | 52.96 | 45.89 |
| **BitNet a4.8** | 700M | 12.40 | 25.17 | 41.58 | 42.44 | 66.38 | 53.04 | 45.72 |
| LLaMA LLM | 1.3B | 10.82 | 27.90 | 45.16 | 47.65 | 69.91 | 53.35 | 48.79 |
| BitNet b1.58 | 1.3B | 11.27 | 27.65 | 45.33 | 46.86 | 68.39 | 54.06 | 48.46 |
| **BitNet a4.8** (FP4) | 1.3B | 11.38 | 28.50 | 44.36 | 47.03 | 68.61 | 54.06 | 48.51 |
| **BitNet a4.8** | 1.3B | 11.35 | 28.50 | 44.15 | 46.98 | 68.34 | 54.14 | 48.42 |
| LLaMA LLM | 3B | 9.61 | 29.95 | 48.11 | 55.25 | 71.76 | 57.46 | 52.51 |
| BitNet b1.58 | 3B | 9.97 | 29.27 | 49.41 | 54.42 | 70.89 | 57.54 | 52.30 |
| **BitNet a4.8** (FP4) | 3B | 9.99 | 29.10 | 49.24 | 54.60 | 71.38 | 56.12 | 52.08 |
| **BitNet a4.8** | 3B | 9.97 | 28.33 | 49.58 | 54.62 | 71.16 | 54.38 | 51.61 |
| LLaMA LLM | 7B | 9.20 | 33.36 | 51.22 | 58.33 | 73.34 | 58.41 | 54.93 |
| BitNet b1.58 | 7B | 9.24 | 32.00 | 50.88 | 59.79 | 72.96 | 59.83 | 55.09 |
| **BitNet a4.8** (FP4) | 7B | 9.42 | 31.57 | 51.22 | 58.20 | 72.47 | 59.59 | 54.61 |
| **BitNet a4.8** | 7B | 9.37 | 31.66 | 50.88 | 58.78 | 73.01 | 59.35 | 54.74 |{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of three different language models: BitNet a4.8, BitNet b1.58, and LLaMA, across various sizes (700M, 1.3B, 3B, and 7B parameters).  The models are evaluated on several downstream tasks, measuring perplexity (PPL) and accuracy on ARC-Easy (ARCe), ARC-Challenge (ARCc), HellaSwag (HS), PIQA (PQ), Winogrande (WGe).  The average score across all tasks is also shown for each model and size.  The standard deviation of the average scores is 1.06%. This allows for a direct comparison of the effectiveness of the different models in terms of their performance and size.
> <details>
> <summary>read the caption</summary>
> Table 1: Perplexity and results of BitNet a4.8, BitNet b1.58 and LLaMA LLM on the end tasks. The standard variance of error for average scores is 1.06%.
> </details>





### In-depth insights


#### 1-bit LLM Inference
1-bit LLMs aim to drastically reduce the computational cost of large language model inference.  **The core idea is to represent the model's weights using only 1 bit**, significantly reducing memory footprint and accelerating computations. However, this extreme quantization introduces challenges.  **Quantization error**, stemming from the loss of precision, can lead to significant performance degradation.  Therefore, innovative techniques are necessary to mitigate these errors, such as hybrid quantization strategies that combine 1-bit weights with higher-precision activations or specialized training methods.  **Research is focused on finding optimal quantization methods and architectures** that preserve accuracy despite the drastic reduction in bit-width. The exploration of 1-bit inference involves balancing the trade-off between memory efficiency and accuracy, paving the way for more energy-efficient and cost-effective deployment of large language models.

#### Hybrid Quantization
Hybrid quantization, as discussed in the context of this research paper, presents a **novel approach to address the challenges of low-bit quantization** in large language models (LLMs).  Standard quantization methods often struggle with the presence of outlier activations, leading to significant performance degradation. The hybrid approach cleverly **combines quantization with sparsification**, selectively applying each technique based on the distribution characteristics of the activations. This is a significant improvement over prior methods that solely rely on either quantization or sparsity, demonstrating that the strategic combination of both techniques offers a more robust and efficient solution. By analyzing activation distributions, the model can determine which layers benefit most from quantization and which require sparsification, optimizing for performance while reducing computational cost.  **This hybrid methodology thus achieves a balance between maintaining accuracy and efficiency**, paving the way for more effective deployment of LLMs on resource-constrained platforms.

#### Sparsification Impact
Sparsification, a crucial technique in optimizing large language models (LLMs), significantly impacts model performance and efficiency.  By strategically removing less important activation entries, sparsification reduces computational costs without severely compromising accuracy.  **The degree of sparsity is a critical parameter**, impacting both speed and performance.  High sparsity accelerates inference dramatically but might also lead to a noticeable accuracy drop if not carefully implemented.  **The effectiveness of sparsification is highly dependent on the specific LLM architecture and training method.**  Careful consideration must be given to the sparsity level and the selection of which parameters or activations to remove, typically focusing on those with lower magnitudes or less influence on the model's output.  **Hybrid approaches**, combining sparsification with other optimization methods like quantization, often demonstrate the best results, achieving a balance between speed and accuracy.  Ultimately, the success of a sparsification strategy hinges on its ability to minimize accuracy degradation while maximizing inference speed and memory savings.

#### Training Efficiency
Training efficiency is crucial for large language model (LLM) development.  The paper highlights the **two-stage training recipe** employed for BitNet a4.8, which starts with 8-bit activations and then transitions to the hybrid 4-bit quantization and sparsification strategy. This approach proves remarkably effective, requiring only a few additional training tokens to adapt to the lower-bit activations, demonstrating **significant time savings**.  Furthermore, the use of a **straight-through estimator (STE)** for gradient approximation streamlines the training process and avoids the complexities of dealing with non-differentiable quantization functions directly. The research also underscores the importance of careful consideration of **activation distribution**, selectively employing 4-bit quantization or sparsification based on observed patterns. This targeted approach minimizes the performance impact of quantization and effectively enhances training speed. The overall result is a **substantial improvement in training efficiency** without compromising model performance, paving the way for faster and more cost-effective LLM development.

#### Future of BitNet
The future of BitNet hinges on addressing its current limitations and exploring new avenues for optimization.  **Further research into more sophisticated quantization techniques** beyond 4-bit activations could significantly improve performance and efficiency.  **Investigating alternative sparsification strategies** that minimize information loss while maximizing compression is crucial. Exploring different training methodologies that better handle quantization errors during model training would be beneficial.  **Integration with advanced hardware accelerators** specifically designed for low-bit arithmetic is essential to fully unleash BitNet’s potential.  Furthermore, extending BitNet's applicability to other large language models and exploring its use in diverse applications beyond language processing will determine its long-term impact. **Investigating the trade-off between bit-width and model size** will be key to optimizing performance for various resource constraints. Finally, studying the effects of quantization on different layers of the model could lead to further advancements in efficiency.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.04965/x2.png)

> 🔼 Figure 2 visualizes the distribution of input values for different projection layers within a 7B parameter BitNet b1.58 model.  The distributions are shown for a subset of the validation set (C4).  The key takeaway is the differing approaches used based on the shape of the distribution:  layers with Gaussian-like distributions use 4-bit activation quantization, whereas layers exhibiting sharp, non-Gaussian distributions employ the Q-Sparse technique for sparsification to mitigate the impact of outliers.
> <details>
> <summary>read the caption</summary>
> Figure 2: The distribution of the inputs to each projection. The visualization is conducted with a 7B BitNet b1.58 model on a subset of the valid set of C4. For the layers that exhibit Gaussian-like distributions, we employ 4-bit activation quantization. For the layers which distributions are sharp, we adopt Q-Sparse [18] to perform sparsification on the activations.
> </details>



![](https://arxiv.org/html/2411.04965/x3.png)

> 🔼 This figure visualizes the impact of different quantization and sparsification techniques on the distribution of inputs to the output projection layer of the attention mechanism within a 7B parameter BitNet b1.58 model.  The distributions are shown for three different scenarios: 8-bit integer quantization, 4-bit integer quantization, and a hybrid approach combining 8-bit integer quantization with 50% top-K sparsification. Each distribution plot represents a layer's input distribution from the attention mechanism, illustrating how different quantization methods affect activation sparsity and data characteristics.  The analysis is performed on a subset of the C4 validation dataset.  The figure highlights the effectiveness of the hybrid quantization/sparsification strategy in managing outlier values.
> <details>
> <summary>read the caption</summary>
> Figure 3: The distribution of the inputs to the output projection of attention with different quantization and sparsification. The visualization is conducted with a 7B BitNet b1.58 model on a subset of the valid set of C4.
> </details>



![](https://arxiv.org/html/2411.04965/x4.png)

> 🔼 This figure presents an ablation study comparing the training performance of different quantization methods for a large language model.  The study contrasts a fully 4-bit integer (INT4) quantization approach with the hybrid quantization and sparsification strategy proposed in the paper (A4.8).  The x-axis represents the number of training tokens, and the y-axis shows the perplexity, a metric indicating the model's performance. The results demonstrate that the hybrid approach significantly outperforms the fully INT4 quantization method.  A comparison with a full floating point (FP4) quantization is also included. The figure visually shows that the hybrid method is more stable and effective during training.
> <details>
> <summary>read the caption</summary>
> Figure 4: Ablation study on the hybrid quantization and sparsification.
> </details>



![](https://arxiv.org/html/2411.04965/x5.png)

> 🔼 This ablation study investigates the impact of different quantization methods (INT4, FP4, INT8) and activation functions (Swish, ReLU) on the down-projection layer of the feed-forward network (FFN).  The results show how the choice of quantization and activation function affect the training loss of a 1.3B parameter language model.  The experiment aims to determine the optimal combination for minimizing training loss and maximizing model efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablation study on different quantization or activation function for the inputs to down projection of FFN.
> </details>



![](https://arxiv.org/html/2411.04965/x6.png)

> 🔼 This figure presents an ablation study comparing different 4-bit quantization methods for the inputs to the attention and feed-forward network (FFN) layers.  It shows the training loss curves for various quantization techniques, including floating-point (FP4) with E1M2 and E2M1 formats using the MinMax quantizer, and integer quantization (INT4) using the absmax and absmean quantizers.  The goal is to determine which quantization method provides the best training performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablations on 4-bit quantizers for the inputs to attention and FFN.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Models | Activated | QKV | Out | Up | Gate | Down | Overall |
|---|---|---|---|---|---|---|---| 
| **LLaMA LLM** | 679M | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 |
| BitNet b1.58 | 638M | 1.2 | 5.9 | 1.2 | 1.2 | 21.8 | 6.2 |
| **BitNet a4.8** | 390M | 12.1 | 50.0 | 66.2 | 12.1 | 80.9 | 42.5 |
| **LLaMA LLM** | 1.2B | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 |
| BitNet b1.58 | 1.1B | 1.3 | 5.8 | 1.2 | 1.2 | 22.8 | 6.4 |
| **BitNet a4.8** | 0.7B | 12.0 | 50.0 | 65.9 | 12.1 | 81.8 | 42.7 |
| **LLaMA LLM** | 3.2B | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 |
| BitNet b1.58 | 3.0B | 1.4 | 7.1 | 1.3 | 1.3 | 30.0 | 8.2 |
| **BitNet a4.8** | 1.8B | 12.1 | 50.0 | 70.7 | 12.1 | 85.6 | 44.7 |
| **LLaMA LLM** | 6.5B | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 |
| BitNet b1.58 | 6.0B | 1.7 | 11.2 | 1.4 | 1.4 | 24.2 | 7.3 |
| **BitNet a4.8** | 3.4B | 12.1 | 50.0 | 71.4 | 12.0 | 84.2 | 44.5 |{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the sparsity (percentage of non-activated parameters) across different components of the BitNet a4.8, BitNet b1.58, and LLaMA LLMs.  The components analyzed include query, key, value (QKV) projections, output projections, up and gate projections, down projections within the attention and feed-forward networks, and the overall model.  Sparsity is calculated using the valid set of C4 dataset.  The table helps to illustrate the significant reduction in active parameters achieved by BitNet a4.8 compared to BitNet b1.58 and LLaMA LLMs.
> <details>
> <summary>read the caption</summary>
> Table 2: Detailed sparsity of BitNet a4.8, BitNet b1.58 and LLaMA LLM on the valid set of C4.
> </details>

{{< table-caption >}}
| Models | Size | ARCc↑ | ARCe↑ | HS↑ | PQ↑ | WGe↑ | Avg↑ |
|---|---|---|---|---|---|---|---| 
| BitNet a4.8 | 3B | 28.33 | 49.58 | 54.62 | 71.16 | 54.38 | 51.61 |
| w/ 4-bit KV |  | 28.24 | 48.86 | 54.41 | 71.87 | 55.49 | 51.77 |
| w/ 4-bit QKV |  | 27.30 | 48.91 | 54.32 | 71.98 | 56.75 | 51.85 |
| w/ 4-bit Q, 3-bit KV |  | 28.84 | 48.91 | 53.87 | 70.95 | 56.35 | 51.78 |
| BitNet a4.8 | 7B | 31.66 | 50.88 | 58.78 | 73.01 | 59.35 | 54.74 |
| w/ 4-bit KV |  | 31.40 | 50.93 | 58.68 | 73.12 | 60.85 | 55.00 |
| w/ 4-bit QKV |  | 30.63 | 51.30 | 58.45 | 72.52 | 59.83 | 54.55 |
| w/ 4-bit Q, 3-bit KV |  | 31.14 | 50.93 | 58.07 | 72.96 | 59.04 | 54.43 |{{< /table-caption >}}
> 🔼 This table presents a detailed comparison of BitNet a4.8's performance on various downstream tasks under different quantization configurations of the Query, Key, and Value (QKV) states within the attention mechanism.  Specifically, it shows the impact of using 4-bit quantization for the QKV states, and the combined effects of 4-bit QKV and 3-bit Key/Value (KV) quantization. The zero-shot accuracy results for these different configurations are provided for several model sizes, providing insights into the trade-offs between quantization levels and performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Detailed results of BitNet a4.8 with QKV states varying bit-widths on the end tasks. We reported the zero-shot accuracy of all models.
> </details>

{{< table-caption >}}
| Quantization | Sparsification | PPL↓ | ARCc↑ | ARCe↑ | HS↑ | PQ↑ | WGe↑ | Avg↑ |
|---|---|---|---|---|---|---|---|---|
| INT8 | - | 9.95 | 28.33 | 48.53 | 54.90 | 72.31 | 56.51 | 52.11 |
| INT8 | TopK 50% | 9.97 | 28.33 | 49.58 | 54.62 | 71.16 | 54.38 | 51.61 |{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of TopK sparsification applied to the input of the output projection within the attention mechanism. It compares the performance (PPL, ARCc, ARCe, HS, PQ, WGe, Avg) of a model with and without TopK sparsification, shedding light on the effectiveness of this technique for improving efficiency.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablations on the TopK sparsification for the inputs to the output projection of attention.
> </details>

{{< table-caption >}}
| Models | HS | PQ | WGe | OBQA | Lambada | MMLU | ARCc | ARCe | Avg |
|---|---|---|---|---|---|---|---|---|---| 
| BitNet b1.58 2B | 68.66 | 77.09 | 62.58 | 41.40 | 63.36 | 50.29 | 47.61 | 70.74 | 60.22 |
| **BitNet a4.8 2B** | 68.21 | 76.55 | 64.40 | 40.60 | 63.75 | 50.30 | 46.59 | 70.00 | 60.05 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of BitNet a4.8 and BitNet b1.58, both trained with 2 billion parameters and 2 trillion training tokens.  It shows the results on several downstream tasks, offering insights into the relative performance of these models, which use different activation quantization strategies, under a larger training regime than previously explored.
> <details>
> <summary>read the caption</summary>
> Table 5: Results of BitNet a4.8 and BitNet b1.58 with 2B parameters and 2T training tokens.
> </details>

{{< table-caption >}}
| Size | Hidden Size | GLU Size | #Heads | #Layers | Batch Size | # Tokens | Seq Length |
|---|---|---|---|---|---|---|---| 
| 700M | 1536 | 4096 | 24 | 24 | 1M | 100B | 2048 |
| 1.3B | 2048 | 5460 | 32 | 24 | 1M | 100B | 2048 |
| 3B | 3200 | 8640 | 32 | 26 | 1M | 100B | 2048 |
| 7B | 4096 | 11008 | 32 | 32 | 1M | 100B | 2048 |{{< /table-caption >}}
> 🔼 This table details the architectural hyperparameters used for training three different large language models: BitNet a4.8, BitNet b1.58, and LLaMA.  For each model, it lists the model size, hidden layer size, GLU (Gated Linear Unit) size, number of attention heads, number of layers, batch size used during training, total number of training tokens, and the sequence length used.
> <details>
> <summary>read the caption</summary>
> Table 6: Model configurations for both BitNet a4.8, BitNet b1.58 and LLaMA LLM.
> </details>

{{< table-caption >}}
| Model | Size | Learning Rate | Weight Decay | Warm-up | Adam β | 
|---|---|---|---|---|---| 
| BitNet a4.8 | 700M | 1.5e-3 → 1e-3 | 0.1 → 0 | 375 | (0.9, 0.95) | 
|  | 1.3B | 1.2e-3 → 8e-4 | 0.1 → 0 | 375 | (0.9, 0.95) | 
|  | 3B | 1.2e-3 → 6.4e-4 | 0.1 → 0 | 375 | (0.9, 0.95) | 
|  | 7B | 1e-3 → 6e-4 | 0.1 → 0 | 375 | (0.9, 0.95) | 
| LLaMA LLM | 700M | 2.5e-4 | 0.1 | 375 | (0.9, 0.95) | 
|  | 1.3B | 2.0e-4 | 0.1 | 375 | (0.9, 0.95) | 
|  | 3B | 2.0e-4 | 0.1 | 375 | (0.9, 0.95) | 
|  | 7B | 1.5e-4 | 0.1 | 375 | (0.9, 0.95) | {{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training process for both BitNet a4.8 and the LLaMA Large Language Model (LLM).  It includes the model size, learning rate, weight decay, warm-up period, and Adam optimizer parameters (beta1 and beta2).  Different values are shown for different sizes of the models, reflecting adjustments needed for optimal training across various model scales.
> <details>
> <summary>read the caption</summary>
> Table 7: Hyper-parameters for both BitNet a4.8 and LLaMA LLM training.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.04965/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.04965/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}