---
title: "Language Models are Symbolic Learners in Arithmetic"
summary: "Large language models (LLMs) surprisingly don't utilize partial products for arithmetic, instead operating as symbolic learners. They solve arithmetic problems by decomposing them into manageable subg....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-21", "🤗 2024-10-25"]
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









<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: Diagnostic sets with four calculation methods." >}}
| Standard Multiplication | Pstd = {A1 xB1B2, A2xB1B2, B1 xA1A2,B2 x A1A2} |
| --- | --- |
| Repetitive Addition | Pra = {�B1B2 A1A2, ��� B1B2} |
| Lattice Method | Plattice = {A10x B10,A10x B2,A2 x B10, A2 x B2} |
| Egyptian Multiplication | Pegyptian = {2k xA1A2|ke0,1,..., [log2(B1B2)]} |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Label space statistics with different rule perturbations. H(L) represents the entropy of the label space, and |L| is the size of the label space. {C}i=1 represents all positions in output digits." >}}
|  |  | C1 | C2 | C3 | C4 | C5 | {Ci}i=1 | {Ci}i=1 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Task | Format | H(L) | H(L) | H(L) | H(L) | H(L) | ILI | H(L) |
| f(a,b) = a + b | A1A2 + B1B2 = C1C2C3 | 0.9710 | 3.3215 | 3.3219 |  |  | 179 | 7.2130 |
| f(a,b) = a + b + 1 | A1A2 + B1B2 = C1C2C3 | 0.9649 | 3.3215 | 3.3219 |  |  | 179 | 7.2130 |
| f(a,b) = a +6+ 15 | A1A2 + B1B2 = C1C2C3 | 0.9280 | 3.3214 | 3.3219 |  |  | 179 | 7.2130 |
| f(a,b) = a +b + 115 | A1A2 + B1B2 = C1C2C3 | 0.9280 | 3.3214 | 3.3219 | - |  | 179 | 7.2130 |
| f(a,b) = (a+ b) mod 100 | A1A2 + B1B2 = C1C2 | 3.3214 | 3.3219 | - | - | - | 100 | 6.6432 |
| f(a,b) = (a+ b) mod 50 | A1A2 + B1B2 = C1C2 | 2.3217 | 3.3219 | - | - | - | 50 | 5.6436 |
| f(a,b) = (a+b) mod 10 | A1A2 + B1B2 = C1 | 3.3219 | - | - | - | - | 10 | 3.3219 |
| f(a,b) = a xb | A1A2 x B1B2 = C1C2C3C4 | 2.8979 | 3.3215 | 3.3160 | 3.0340 | - | 2621 | 11.1172 |
| f(a,b) = a xbx 2 | A1A2 x B1B2 = C1C2C3C4C5 | 0.6873 | 3.2173 | 3.3215 | 3.2964 | 2.2227 | 2621 | 11.1172 |
| f(a,b) = a xbx 4 | A1A2 x B1B2 = C1C2C3C4C5 | 1.6030 | 3.3020 | 3.3204 | 3.2234 | 2.2227 | 2621 | 11.1172 |
| f(a,b) = a xbx 8 | A1A2 x B1B2 = C1C2C3C4C5 | 2.5811 | 3.3202 | 3.3151 | 3.2235 | 2.2227 | 2621 | 11.1172 |
| f(a,b) = (a x b) mod 100 | A1A2 x B1B2 = C1C2 | 3.3160 | 3.0340 | - | - | - | 100 | 6.2912 |
| f(a,b) = (a x b) mod 50 | A1A2 x B1B2 = C1C2 | 2.3210 | 3.0340 | - | - | - | 50 | 5.3494 |
| f(a,b) = (a x b) mod 10 | A1A2 x B1B2 = C1 | 3.0340 | - | - | - | - | 10 | 3.0340 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Test Accuracy difference Δ on perturbed addition and multiplication." >}}
|  | Gemma-2-2B | Llama-3.1-8B |
| --- | --- | --- |
| f(a,b) = a + 6 |  |  |
| f(a,b) = a + 6 + 1 | -0.1% | -0.1% |
| f(a,b) = a + 6 + 15 | -0.9% | +0.1% |
| f(a,b) = a + b + 115 | -1.4% | +0.7% |
| f(a,b) = (a + b) mod 100 | +10.1% | +3.7% |
| f(a,b) = (a + b) mod 50 | +13.1% | +6.7% |
| f(a,b) = (a+b) mod 10 | +26.1% | +13.7% |
| f(a,b) = a x 6 | - |  |
| f(a,b) = a X 6 X 2 | -1.1% | -2.7% |
| f(a,b) = a x 6 x 4 | -1.7% | +0.7% |
| f(a,b) = a X b x 8 | +0.2% | -3.7% |
| f(a,b) = (a x b) mod 100 | +7.1% | +3.8% |
| f(a,b) = (a X b) mod 50 | +12.1% | +5.3% |
| f(a,b) = (a x b) mod 10 | +18.9% | +10.7% |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Label space statistics with different format perturbations. H(L) represents the entropy of the space, and |L| is the size of the space. {Cj}=1 represents all possible output digits." >}}
|  |  | C1 | C2 | C3 | C4 | C5 | {Cj}『=1 | {Cj}『=1 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Task | Format | H(L) | H(L) | H(L) | H(L) | H(L) | ILI | H(L) |
| f(a,b) = a+b | A1A2 + B1B2 = C1C2C3 | 0.9710 | 3.3215 | 3.3219 |  |  | 179 | 7.2130 |
| f(a,b) = a+b | What is A1A2 add B1B2? Answer: C1C2C3 | 0.9649 | 3.3215 | 3.3219 |  |  | 179 | 7.2130 |
| f(a,b) = a+b | fafrif A1A2 hfk B1B2? Ffhjar: C1C2C3 | 3.3214 | 3.3219 | - | - | - | 179 | 7.2130 |
| f(a,b) = a +6 | 3.123 34 A1A2 461 B1B2? 952414: C1C2C3 | 0.9280 | 3.3214 | 3.3219 | - |  | 179 | 7.2130 |
| f(a,b) = a x b | A1A2 x B1B2 = C1C2C3C4C5 | 2.5811 | 3.3202 | 3.3151 | 3.2235 | 2.2227 | 2621 | 11.1172 |
| f(a,b) = a xb | Whatis A1A2 multiply B1B2? Answer: C1C2C3C4 | 2.8979 | 3.3215 | 3.3160 | 3.0340 |  | 2621 | 11.1172 |
| f(a,b) = ax b | fafrif A1A2 hfk B1B2? Ffhjar: C1C2C3C4 | 0.6873 | 3.2173 | 3.3215 | 3.2964 | 2.2227 | 2621 | 11.1172 |
| f(a,b) = a X b | 3.123 34 A1A2 461 B1B2? 952414: C1C2C3C4 | 1.6030 | 3.3020 | 3.3204 | 3.2234 | 2.2227 | 2621 | 11.1172 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 6: Test Accuracy difference Δ on perturbed addition and multiplication." >}}
|  | Format | Gemma-2-2B | Llama-3.1-8B |
| --- | --- | --- | --- |
| f(a,b) =a+b | Natural Language | - | - |
| f(a,b) = a+b | Random String | +0.1% | -0.2% |
| f(a,b) =a+b | Disturbed Digits | -3.9% | -2.1% |
| f(a,b) = a x b | Natural Language | - | - |
| f(a,b) = a x b | Random String | +0.3% | -0.5% |
| f(a,b) = a X b | Disturbed Digits | -1.9% | -3.1% |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Inductive and deductive accuracy difference Δ." >}}
|  | B1 B2 |
| --- | --- |
| A1 | A1B1 A1B2 |
| A2 | A2B1 A2B2 |
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

{{< /gallery >}}