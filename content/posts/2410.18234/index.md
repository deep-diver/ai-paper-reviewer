---
title: "Multi-Draft Speculative Sampling: Canonical Architectures and Theoretical Limits"
summary: "This paper proposes a novel multi-draft speculative sampling method for faster LLM decoding. It introduces a two-step optimal token selection architecture (importance sampling and single-draft specula....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-25"]
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
|  |  | Block Efficiency | Token Rate (% improvement to SD) |
| --- | --- | --- | --- |
| Alphabet Truncation ( 2⌀ ) | 10 | 1.98 士 0.03 | -0.57 士 3.38% |
| Alphabet Truncation ( 2⌀ ) | 20 | 2.00 士 0.04 | 1.00 土 3.08% |
| Alphabet Truncation ( 2⌀ ) | 40 | 2.05 士 0.04 | 6.63 土 3.18% |
| Alphabet Truncation ( 2⌀ ) | 50 | 2.03 士 0.05 | 3.22 土 3.39% |
| LP-Truncation Threshold (s) | 5 | 2.05 士 0.04 | 6.63 士 3.18% |
| LP-Truncation Threshold (s) | 10 | 2.04 土 0.05 | 1.52 土 3.47% |
| LP-Truncation Threshold (s) | 15 | 2.04 士 0.04 | 1.74 土 2.36% |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of average acceptance probability across different tasks for K = 2, 4, 8 drafts." >}}
| Scheme | XSum | XSum | XSum | Dolly | Dolly | Dolly |
| --- | --- | --- | --- | --- | --- | --- |
|  | K=2 | K=4 | K=8 | K=2 | K=4 | K=8 |
| Optimal | 0.5009 | 0.5226 | 0.5419 | 0.6384 | 0.6731 | 0.6962 |
| IS | 0.4933 | 0.5145 | 0.5333 | 0.6348 | 0.6691 | 0.6919 |
| SpecTr | 0.4889 | 0.5083 | 0.5263 | 0.6246 | 0.6560 | 0.6800 |
| SpecInfer | 0.4875 | 0.5058 | 0.5227 | 0.6202 | 0.6489 | 0.6722 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Block Efficiency achieved in the Dolly Task with top-k sampling" >}}
| Sampling | Scheme | K = 2 drafts | K = 2 drafts | K = 3 drafts | K = 3 drafts |
| --- | --- | --- | --- | --- | --- |
| Sampling | Scheme | Block Efficiency | Loss | Block Efficiency | Loss |
| top-k (k = 10) | IS | 2.48 土 0.01 |  | 2.59 士 0.02 |  |
| top-k (k = 10) | SpecTr | 2.43 土 0.01 | 98% | 2.55 士 0.01 | 98% |
| top-k (k = 10) | SpecInfer | 2.38 士 0.02 | 96% | 2.49 士 0.02 | 96% |
| top-k (k = 5) | IS | 2.52 士 0.02 |  | 2.63 士 0.03 |  |
| top-k (k = 5) | SpecTr | 2.48 土 0.02 | 98% | 2.56 士 0.03 | 97% |
| top-k (k = 5) | SpecInfer | 2.47 士 0.01 | 98% | 2.55 士 0.04 | 97% |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of average acceptance probability across different tasks for K = 2, 4, 8 drafts." >}}
| Draft Temp. | 1.2 | 1.4 | 1.6 | 2.0 | 2.4 |
| --- | --- | --- | --- | --- | --- |
| Decoder | Decoder | Decoder | Decoder | Decoder | Decoder |
| IS | 0.186 士 0.004 | 0.188 土 0.002 | 0.191 土 0.003 | 0.186 土 0.004 | 0.187 士 0.003 |
| Signle-draft SD | 0.190 士 0.006 | 0.185 士 0.005 | 0.190 士 0.004 | 0.186 士 0.003 | 0.186 士 0.004 |
| SpecInfer | 0.184 土 0.004 | 0.190 土 0.002 | 0.187 土 0.001 | 0.186 士 0.003 | 0.186 士 0.004 |
| SpecTr | 0.188 土 0.002 | 0.182 土 0.006 | 0.188 士 0.001 | 0.185 土 0.006 | 0.188 土 0.001 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of average acceptance probability across different tasks for K = 2, 4, 8 drafts." >}}
| Draft Temp. | 1.2 | 1.4 | 1.6 | 2.0 | 2.4 |
| --- | --- | --- | --- | --- | --- |
| Decoder | Decoder | Decoder | Decoder | Decoder | Decoder |
| IS | 0.037 士 0.002 | 0.038 土 0.004 | 0.034 土 0.002 | 0.039 士 0.003 | 0.039 土 0.002 |
| Signle-draft SD | 0.036 土 0.000 | 0.037 土 0.003 | 0.038 土 0.004 | 0.037 士 0.003 | 0.038 土 0.002 |
| SpecInfer | 0.035 土 0.003 | 0.039 土 0.004 | 0.035 士 0.003 | 0.034 士 0.009 | 0.036 土 0.003 |
| SpecTr | 0.039 土 0.001 | 0.037 土 0.001 | 0.039 土 0.001 | 0.036 士 0.002 | 0.035 士 0.001 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 7: ROUGE-L scores on the XSum task across various decoders and sampling temperatures." >}}
|  | Temperature | Temperature | Temperature | Temperature | Temperature |
| --- | --- | --- | --- | --- | --- |
| Draft 1 | 1.2 | 1.2 | 1.2 | 1.2 | 1.2 |
| Draft 2 | 1.2 | 1.6 | 2.0 | 2.4 | N/A |
| Decoder |  |  |  |  |  |
| IS | 0.187 士 0.004 | 0.189 土 0.007 | 0.189 士 0.001 | 0.191 士 0.002 | - |
| SpecInfer | 0.184 士 0.004 | 0.190 土 0.003 | 0.185 土 0.006 | 0.189 土 0.006 |  |
| Single-draft SD | - |  |  | - | 0.190 土 0.006 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 8: BLEU scores on the WMT dataset across various decoders and sampling temperatures." >}}
|  | Temperature | Temperature | Temperature | Temperature | Temperature |
| --- | --- | --- | --- | --- | --- |
| Draft 1 | 1.2 | 1.2 | 1.2 | 1.2 | 1.2 |
| Draft 2 | 1.2 | 1.6 | 2.0 | 2.4 | N/A |
| Decoder |  |  |  |  |  |
| IS | 0.036 土 0.003 | 0.035 土 0.002 | 0.036 土 0.002 | 0.035 士 0.002 | - |
| SpecInfer | 0.035 士 0.003 | 0.038 土 0.005 | 0.041 土 0.002 | 0.040 土 0.002 |  |
| Single-draft SD | - | - | - | - | 0.036 士 0.000 |
{{< /table-caption >}}


</details>

------

