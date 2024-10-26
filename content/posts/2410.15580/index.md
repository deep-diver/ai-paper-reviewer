---
title: "Language Models are Symbolic Learners in Arithmetic"
summary: "Large language models (LLMs) surprisingly don't utilize partial products for arithmetic, instead operating as symbolic learners. They solve arithmetic problems by decomposing them into manageable subg....."
categories: ["AI Generated"]
tags: ["2024-10-21"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

Large language models (LLMs) surprisingly don't utilize partial products for arithmetic, instead operating as symbolic learners. They solve arithmetic problems by decomposing them into manageable subgroups, selecting easier patterns first.  The difficulty of these sub-tasks is linked to their complexity and label space entropy.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.15580" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper investigates how large language models (LLMs) learn arithmetic.  The authors find that LLMs don't use partial products, but instead learn arithmetically in a purely symbolic way by breaking tasks into subgroups, suggesting that LLMs are symbol-level learners. This challenges previous assumptions about how LLMs perform arithmetic and offers insights into their learning dynamics.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs do not leverage partial products in arithmetic calculations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLMs learn arithmetic symbolically by selecting subgroups based on complexity, following an easy-to-hard paradigm. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The difficulty of arithmetic tasks is influenced by the label space entropy and subgroup quality. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_2_0.png "🔼 Fundamental structure of the paper. We begin by investigating partial products and proceed to a detailed examination at the subgroup level to understand the mechanism in a symbolic manner.")

{{< table-caption caption="🔽 Inductive and deductive accuracy difference Δ." >}}
|  | Gemma-2-2B | Gemma-2-2B | Gemma-2-2B | Gemma-2-2B | Llama-3.1-8B | Llama-3.1-8B | Llama-3.1-8B | Llama-3.1-8B |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Standard | Lattice | Repetitive | Egyptian | Standard | Lattice | Repetitive | Egyptian |
| Task → Partial P. | +4.1% | +6.8% | -29.0% | +3.6% | +40.6% | +40.8% | -59.0% | +29.6% |
| Partial P. → Task | -6.1% | -10.7% | -20.3% | -9.6% | -3.7% | -0.2% | -0.9% | -2.7% |
{{< /table-caption >}}

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: Diagnostic sets with four calculation methods." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Label space statistics with different rule perturbations. H(L) represents the entropy of the label space, and |L| is the size of the label space. {C}i=1 represents all positions in output digits." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Test Accuracy difference Δ on perturbed addition and multiplication." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Label space statistics with different format perturbations. H(L) represents the entropy of the space, and |L| is the size of the space. {Cj}=1 represents all possible output digits." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 6: Test Accuracy difference Δ on perturbed addition and multiplication." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Inductive and deductive accuracy difference Δ." >}}
{{< /table-caption >}}


</details>

------

