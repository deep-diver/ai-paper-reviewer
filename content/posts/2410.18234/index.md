---
title: "Multi-Draft Speculative Sampling: Canonical Architectures and Theoretical Limits"
summary: "This paper proposes a novel multi-draft speculative sampling method for faster LLM decoding. It introduces a two-step optimal token selection architecture (importance sampling and single-draft specula....."
categories: ["AI Generated"]
tags: ["2024-10-23"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

This paper proposes a novel multi-draft speculative sampling method for faster LLM decoding. It introduces a two-step optimal token selection architecture (importance sampling and single-draft speculative sampling), offering theoretical analysis and demonstrating significant improvements in block efficiency and token rates, particularly when draft sequences have non-identical distributions. This method improves decoding speed and efficiency for LLMs.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18234" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces multi-draft speculative sampling, improving large language model (LLM) decoding efficiency.  It provides a canonical two-step architecture for optimal token selection and theoretical analysis demonstrating improvements over existing methods.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multi-draft speculative sampling improves LLM decoding efficiency by using multiple draft models to generate candidate tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} An optimal token selection scheme can be decomposed into a two-step process: importance sampling followed by single-draft speculative sampling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Theoretical analysis provides insights into optimal acceptance probabilities and a new token selection scheme based on weighted importance sampling. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_4_0.png "🔼 Optimal Approach for Multi-Draft Speculative Sampling")

{{< table-caption caption="🔽 Table 1: Block efficiency achieved in the Dolly task for different number of draft models." >}}
| Scheme | K = 2 | K = 3 | K = 4 | K = 5 | K = 6 |
| --- | --- | --- | --- | --- | --- |
| IS | 2.13 土 0.05 | 2.22 士 0.05 | 2.26 土 0.05 | 2.27 士 0.05 | 2.28 士 0.06 |
| SpecInfer | 1.76 士 0.04 | 1.86 士 0.05 | 1.95 土 0.05 | 2.00 士 0.04 | 2.04 士 0.05 |
| SpecTr | 1.77 土 0.04 | 1.89 土 0.05 | 1.96 土 0.05 | 2.03 士 0.06 | 2.08 土 0.04 |
{{< /table-caption >}}

------



<details>
<summary>More on figures
</summary>


![](figures/figures_24_0.png "🔼 Optimal Approach for Multi-Draft Speculative Sampling")

![](figures/figures_35_0.png "🔼 Figure 2: Numerical evaluation of Pr(accept) for the optimal scheme (Theorem 3) as well as two baseline schemes – SpecTr (Sun et al., 2024b) and SpecInfer (Miao et al., 2024). For sake of illustration we select alphabet Ω = {1,2,3} and p = [1/3,1/3, 1/3]. The left plot sets q = [1/3, q2, 2/3-q2] while the right plot sets q = [1/6, q2, 5/6 - q2] where q2 is varied on the x-axis.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: Effect of LP Truncation and Alphabet Truncation" >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of average acceptance probability across different tasks for K = 2, 4, 8 drafts." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Block Efficiency achieved in the Dolly Task with top-k sampling" >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of average acceptance probability across different tasks for K = 2, 4, 8 drafts." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of average acceptance probability across different tasks for K = 2, 4, 8 drafts." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 7: ROUGE-L scores on the XSum task across various decoders and sampling temperatures." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 8: BLEU scores on the WMT dataset across various decoders and sampling temperatures." >}}
{{< /table-caption >}}


</details>

------

