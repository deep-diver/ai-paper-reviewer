---
title: "Value Residual Learning For Alleviating Attention Concentration In Transformers"
summary: "To address attention concentration in deep Transformers, this paper proposes ResFormer, which uses residual connections from the first layer's values, and SVFormer, which shares value embeddings acros....."
categories: ["AI Generated"]
tags: ["2024-10-23"]
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

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: The details of pre-train dataset." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Validation loss on slimpajama." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Training details for models with different size." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Validation loss on slimpajama." >}}
{{< /table-caption >}}


</details>

------

