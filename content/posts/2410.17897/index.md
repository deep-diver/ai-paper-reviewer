---
title: "Value Residual Learning For Alleviating Attention Concentration In Transformers"
summary: "To address attention concentration in deep Transformers, this paper proposes ResFormer, which uses residual connections from the first layer's values, and SVFormer, which shares value embeddings acros....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

To address attention concentration in deep Transformers, this paper proposes ResFormer, which uses residual connections from the first layer's values, and SVFormer, which shares value embeddings across all layers. Both models improve training efficiency and downstream performance compared to vanilla Transformers and other related methods.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17897" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces ResFormer and SVFormer, two novel Transformer architectures designed to mitigate attention concentration, a phenomenon where attention increasingly focuses on fewer tokens as the network deepens. ResFormer adds a residual connection from the first layer's values to subsequent layers, approximating cross-layer attention without high computational costs. SVFormer further improves efficiency by sharing the same value embeddings across all layers. Experiments show both models improve training efficiency and downstream task performance compared to standard Transformers and related methods.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ResFormer mitigates attention concentration in deep Transformers by adding a residual connection from the first layer's values, improving training efficiency and downstream performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SVFormer significantly reduces the KV cache size (by ~50%) by using single-layer value embeddings, leading to faster training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Both ResFormer and SVFormer demonstrate performance gains on various downstream tasks, highlighting the effectiveness of the proposed value residual learning approach for improving Transformer efficiency and representation learning. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_3_0.png "🔼 Simplified illustration of the vanilla Transformer, NeuTRENO, DenseFormer, ResFormer, and SVFormer, with only three-layer structures and no operations other than attention. A², Vi, and H² denote the attention matrix, value vectors, and attention outputs at the i-th layer, respectively. ⊕, −, and ⊗ represent standard matrix addition, subtraction, and multiplication, respectively.")





{{< table-caption caption="🔽 Table 1: Zero-shot accuracy on commonsense reasoning tasks." >}}
| Model | Max Length | HellaSwag | Obqa | WinoGrande | ARC-c | ARC-e | PIQA | Avg. |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Transformer | 2,048 | 0.263 | 0.142 | 0.492 | 0.199 | 0.331 | 0.572 | 0.333 |
| ResFormer | 2,048 | 0.273 | 0.148 | 0.512 | 0.182 | 0.414 | 0.604 | 0.355 |
| Transformer | 64,000 | 0.267 | 0.142 | 0.485 | 0.179 | 0.322 | 0.570 | 0.328 |
| ResFormer | 64,000 | 0.274 | 0.136 | 0.513 | 0.184 | 0.407 | 0.588 | 0.350 |
{{< /table-caption >}}









<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: The details of pre-train dataset." >}}
| Data source | proportions | Tokens |
| --- | --- | --- |
| Commoncrawl | 50% | 10 B |
| C4 | 20% | 4 B |
| GitHub | 10% | 2 B |
| Books | 5% | 1 B |
| ArXiv | 5% | 1 B |
| Wikpedia | 5% | 1 B |
| StackExchange | 5% | 1 B |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Validation loss on slimpajama." >}}
| Max Sequence Length | 512 | 2,048 | 8,192 | 32,000 | 64,000 |
| --- | --- | --- | --- | --- | --- |
| Total Batch Size | 4,096 | 1,024 | 256 | 64 | 32 |
| Per-GPU Batch Size | 128 | 32 | 8 | 2 | 1 |
| Gradient Accumulation Step |  |  | 32 |  |  |
| GPUs |  |  | 8 |  |  |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Training details for models with different size." >}}
| Model Size | 2M | 82M | 180M | 468M |
| --- | --- | --- | --- | --- |
| Layers | 4 | 8 | 12 | 24 |
| Attention Heads | 2 | 8 | 12 | 16 |
| Hidden Dimension | 16 | 512 | 768 | 1,024 |
| FFN Dimension | 56 | 1,792 | 2,688 | 3,584 |
| Tie Word Embedding | False | False | False | False |
| (Peak Learning Rate, Final Learning Rate) | (6e - 4, 6e - 5) | (6e - 4, 6e - 5) | (6e - 4, 6e - 5) | (6e - 4, 6e - 5) |
| Learning Rate Schedule | Cosine Decay | Cosine Decay | Cosine Decay | Cosine Decay |
| Vocabulary Size | 50,277 | 50,277 | 50,277 | 50,277 |
| Activation Function | SwiGLU | SwiGLU | SwiGLU | SwiGLU |
| Position Embedding | RoPE (0 = 10,000) | RoPE (0 = 10,000) | RoPE (0 = 10,000) | RoPE (0 = 10,000) |
| Batch Size | 2M tokens | 2M tokens | 2M tokens | 2M tokens |
| Data Size | 20B tokens | 20B tokens | 20B tokens | 20B tokens |
| (Warmup Steps, Training Steps) | (120, 10,000) | (120, 10,000) | (120, 10,000) | (120, 10,000) |
| Adam B | (0.9, 0.95) | (0.9, 0.95) | (0.9, 0.95) | (0.9, 0.95) |
| Dropout | 0.0 | 0.0 | 0.0 | 0.0 |
| Weight Decay | 0.1 | 0.1 | 0.1 | 0.1 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Validation loss on slimpajama." >}}
| Model | Common Crawl | C4 | Github | Stack Exchange | Wikipedia | Book | Arxiv | Avg. |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Transformer (82M) | 3.3595 | 3.5388 | 1.4247 | 2.3872 | 2.9047 | 3.3797 | 2.1779 | 2.7389 |
| Transformer (180M) | 3.0961 | 3.2834 | 1.2451 | 2.1651 | 2.5897 | 3.1309 | 2.0001 | 2.5015 |
| Transformer (468M) | 2.8514 | 3.0430 | 1.0908 | 1.9628 | 2.2821 | 2.8979 | 1.8362 | 2.2806 |
| Resformer (82M) | 3.3362 | 3.5191 | 1.3941 | 2.3592 | 2.8646 | 3.3572 | 2.1518 | 2.7117 |
| Resformer (180M) | 3.0631 | 3.2504 | 1.2200 | 2.1350 | 2.5435 | 3.0994 | 1.9732 | 2.4692 |
| Resformer (468M) | 2.8214 | 3.0115 | 1.0730 | 1.9388 | 2.2477 | 2.8696 | 1.8142 | 2.2537 |
{{< /table-caption >}}


</details>

------



### Full paper

{{< gallery >}}

  <img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

{{< /gallery >}}