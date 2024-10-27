---
title: "Language Models are Symbolic Learners in Arithmetic"
summary: "LLMs don't calculate; they're symbolic pattern-matchers in arithmetic, mastering easy patterns first, then tackling harder ones through subgroup selection, as shown by a novel experimental framework."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-25"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This research investigates how large language models (LLMs) perform arithmetic. Contrary to the belief that LLMs perform calculations like humans, this study reveals that they function more like symbolic pattern-matchers. The researchers conducted experiments to determine whether LLMs leverage partial products during arithmetic tasks, discovering that while LLMs can identify partial products, they don't utilize them for calculations.  To further explore this, they broke down arithmetic problems into smaller sub-problems or 'subgroups,' hypothesizing that the difficulty arises from the complexity and selection of these subgroups. They found that LLMs first learn the easiest patterns within these subgroups and then progress to harder ones, following a U-shaped learning curve where accuracy is highest for the easiest, beginning and end positions.  The findings underscore that label space entropy significantly affects the difficulty of these problems, indicating LLMs function as symbolic learners identifying patterns rather than performing explicit computations.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.15580" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does it matter?
This paper is important because it challenges the common assumption that large language models (LLMs) perform arithmetic through numerical computation.  It introduces a novel framework for analyzing LLMs' arithmetic abilities by focusing on subgroup-level complexity and selection, offering a new perspective on how these models learn and solve mathematical problems. This work opens avenues for designing more effective training methods and improving the performance of LLMs on arithmetic tasks.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Large language models (LLMs) do not use numerical calculation methods like partial products in arithmetic; instead, they learn through symbolic pattern matching. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLMs' arithmetic learning follows an "easy-to-hard" paradigm, prioritizing simple patterns before tackling more complex ones within subgroups. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A novel framework is proposed to analyze LLMs' arithmetic learning by quantifying subgroup complexity and selection, highlighting the importance of label space entropy. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Figure 1: Fundamental structure of the paper. We begin by investigating partial products and proceed to a detailed examination at the subgroup level to understand the mechanism in a symbolic manner.")

> The figure illustrates the two-pronged approach of the paper: investigating partial product usage in LLMs and analyzing arithmetic learning through subgroup-level complexity and selection.





![](charts/charts_5_0.png "🔼 Figure 2: Partial products identification accuracy before and after fine-tuning on tasks. Scores are reported on average of Gemma-2-2B and Llama-3.1-8B.")

> The chart displays the accuracy of identifying partial products in different multiplication methods before and after fine-tuning for two large language models.





{{< table-caption caption="🔽 Table 1: Inductive and deductive accuracy difference Δ." >}}
<table id='0' style='font-size:18px'><tr><td></td><td colspan="4">Gemma-2-2B</td><td colspan="4">Llama-3.1-8B</td></tr><tr><td></td><td>Standard</td><td>Lattice</td><td>Repetitive</td><td>Egyptian</td><td>Standard</td><td>Lattice</td><td>Repetitive</td><td>Egyptian</td></tr><tr><td>Task → Partial P.</td><td>+4.1%</td><td>+6.8%</td><td>-29.0%</td><td>+3.6%</td><td>+40.6%</td><td>+40.8%</td><td>-59.0%</td><td>+29.6%</td></tr><tr><td>Partial P. → Task</td><td>-6.1%</td><td>-10.7%</td><td>-20.3%</td><td>-9.6%</td><td>-3.7%</td><td>-0.2%</td><td>-0.9%</td><td>-2.7%</td></tr></table>{{< /table-caption >}}

> This table presents the changes in accuracy on multiplication tasks before and after fine-tuning LLMs on diagnostic sets for four different multiplication calculation methods.



### More visual insights



<details>
<summary>More on charts
</summary>


![](charts/charts_8_0.png "🔼 Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.")

> The chart displays the U-shaped pattern of position-level accuracy in 3, 4, and 5-digit multiplication tasks across various training set sizes for Gemma-2-2B and Llama-3.1-8B models.


![](charts/charts_8_1.png "🔼 Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.")

> The chart displays the position-level accuracy of LLMs in multiplication tasks, revealing a U-shaped pattern across different training set sizes.


![](charts/charts_8_2.png "🔼 Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.")

> The chart displays the position-level accuracy of LLMs in 3, 4, and 5-digit multiplication tasks across different training set sizes, revealing a U-shaped pattern.


![](charts/charts_8_3.png "🔼 Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.")

> The chart displays the position-level accuracy of LLMs in multiplication tasks across varying training set sizes, revealing a U-shaped pattern.


![](charts/charts_8_4.png "🔼 Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.")

> The chart displays the position-level accuracy of LLMs in 3, 4, and 5 digit multiplication tasks across different training set sizes, revealing a U-shaped pattern.


![](charts/charts_8_5.png "🔼 Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.")

> The chart displays the position-level accuracy of LLMs (Gemma-2-2B and Llama-3.1-8B) in 3, 4, and 5-digit multiplication tasks across different training set sizes, revealing a U-shaped pattern.


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: Diagnostic sets with four calculation methods." >}}
<br><table id='5' style='font-size:16px'><tr><td>Standard Multiplication</td><td>Pstd = {A1 xB1B2, A2xB1B2, B1 xA1A2,B2 x A1A2}</td></tr><tr><td>Repetitive Addition</td><td>Pra = {�B1B2 A1A2, ��� B1B2}</td></tr><tr><td>Lattice Method</td><td>Plattice = {A10x B10,A10x B2,A2 x B10, A2 x B2}</td></tr><tr><td>Egyptian Multiplication</td><td>Pegyptian = {2k xA1A2|ke0,1,..., [log2(B1B2)]}</td></tr></table>{{< /table-caption >}}

> The table presents diagnostic sets for four multiplication calculation methods (standard multiplication, repetitive addition, lattice method, and Egyptian multiplication) used to investigate whether LLMs leverage partial products during arithmetic learning.


{{< table-caption caption="🔽 Table 3: Label space statistics with different rule perturbations. H(L) represents the entropy of the label space, and |L| is the size of the label space. {C}i=1 represents all positions in output digits." >}}
<table id='0' style='font-size:14px'><tr><td></td><td></td><td>C1</td><td>C2</td><td>C3</td><td>C4</td><td>C5</td><td colspan="2">{Ci}i=1</td></tr><tr><td>Task</td><td>Format</td><td>H(L)</td><td>H(L)</td><td>H(L)</td><td>H(L)</td><td>H(L)</td><td>ILI</td><td>H(L)</td></tr><tr><td>f(a,b) = a + b</td><td>A1A2 + B1B2 = C1C2C3</td><td>0.9710</td><td>3.3215</td><td>3.3219</td><td></td><td></td><td>179</td><td>7.2130</td></tr><tr><td>f(a,b) = a + b + 1</td><td>A1A2 + B1B2 = C1C2C3</td><td>0.9649</td><td>3.3215</td><td>3.3219</td><td></td><td></td><td>179</td><td>7.2130</td></tr><tr><td>f(a,b) = a +6+ 15</td><td>A1A2 + B1B2 = C1C2C3</td><td>0.9280</td><td>3.3214</td><td>3.3219</td><td></td><td></td><td>179</td><td>7.2130</td></tr><tr><td>f(a,b) = a +b + 115</td><td>A1A2 + B1B2 = C1C2C3</td><td>0.9280</td><td>3.3214</td><td>3.3219</td><td>-</td><td></td><td>179</td><td>7.2130</td></tr><tr><td>f(a,b) = (a+ b) mod 100</td><td>A1A2 + B1B2 = C1C2</td><td>3.3214</td><td>3.3219</td><td>-</td><td>-</td><td>-</td><td>100</td><td>6.6432</td></tr><tr><td>f(a,b) = (a+ b) mod 50</td><td>A1A2 + B1B2 = C1C2</td><td>2.3217</td><td>3.3219</td><td>-</td><td>-</td><td>-</td><td>50</td><td>5.6436</td></tr><tr><td>f(a,b) = (a+b) mod 10</td><td>A1A2 + B1B2 = C1</td><td>3.3219</td><td>-</td><td>-</td><td>-</td><td>-</td><td>10</td><td>3.3219</td></tr><tr><td>f(a,b) = a xb</td><td>A1A2 x B1B2 = C1C2C3C4</td><td>2.8979</td><td>3.3215</td><td>3.3160</td><td>3.0340</td><td>-</td><td>2621</td><td>11.1172</td></tr><tr><td>f(a,b) = a xbx 2</td><td>A1A2 x B1B2 = C1C2C3C4C5</td><td>0.6873</td><td>3.2173</td><td>3.3215</td><td>3.2964</td><td>2.2227</td><td>2621</td><td>11.1172</td></tr><tr><td>f(a,b) = a xbx 4</td><td>A1A2 x B1B2 = C1C2C3C4C5</td><td>1.6030</td><td>3.3020</td><td>3.3204</td><td>3.2234</td><td>2.2227</td><td>2621</td><td>11.1172</td></tr><tr><td>f(a,b) = a xbx 8</td><td>A1A2 x B1B2 = C1C2C3C4C5</td><td>2.5811</td><td>3.3202</td><td>3.3151</td><td>3.2235</td><td>2.2227</td><td>2621</td><td>11.1172</td></tr><tr><td>f(a,b) = (a x b) mod 100</td><td>A1A2 x B1B2 = C1C2</td><td>3.3160</td><td>3.0340</td><td>-</td><td>-</td><td>-</td><td>100</td><td>6.2912</td></tr><tr><td>f(a,b) = (a x b) mod 50</td><td>A1A2 x B1B2 = C1C2</td><td>2.3210</td><td>3.0340</td><td>-</td><td>-</td><td>-</td><td>50</td><td>5.3494</td></tr><tr><td>f(a,b) = (a x b) mod 10</td><td>A1A2 x B1B2 = C1</td><td>3.0340</td><td>-</td><td>-</td><td>-</td><td>-</td><td>10</td><td>3.0340</td></tr></table>{{< /table-caption >}}

> Table 3 shows the label space entropy and cardinality for various addition and multiplication tasks with different rule perturbations.


{{< table-caption caption="🔽 Table 4: Test Accuracy difference Δ on perturbed addition and multiplication." >}}
<table id='7' style='font-size:14px'><tr><td></td><td>Gemma-2-2B</td><td>Llama-3.1-8B</td></tr><tr><td>f(a,b) = a + 6</td><td></td><td></td></tr><tr><td>f(a,b) = a + 6 + 1</td><td>-0.1%</td><td>-0.1%</td></tr><tr><td>f(a,b) = a + 6 + 15</td><td>-0.9%</td><td>+0.1%</td></tr><tr><td>f(a,b) = a + b + 115</td><td>-1.4%</td><td>+0.7%</td></tr><tr><td>f(a,b) = (a + b) mod 100</td><td>+10.1%</td><td>+3.7%</td></tr><tr><td>f(a,b) = (a + b) mod 50</td><td>+13.1%</td><td>+6.7%</td></tr><tr><td>f(a,b) = (a+b) mod 10</td><td>+26.1%</td><td>+13.7%</td></tr><tr><td>f(a,b) = a x 6</td><td>-</td><td></td></tr><tr><td>f(a,b) = a X 6 X 2</td><td>-1.1%</td><td>-2.7%</td></tr><tr><td>f(a,b) = a x 6 x 4</td><td>-1.7%</td><td>+0.7%</td></tr><tr><td>f(a,b) = a X b x 8</td><td>+0.2%</td><td>-3.7%</td></tr><tr><td>f(a,b) = (a x b) mod 100</td><td>+7.1%</td><td>+3.8%</td></tr><tr><td>f(a,b) = (a X b) mod 50</td><td>+12.1%</td><td>+5.3%</td></tr><tr><td>f(a,b) = (a x b) mod 10</td><td>+18.9%</td><td>+10.7%</td></tr></table>{{< /table-caption >}}

> The table shows the accuracy difference (Δ) in percentage for addition and multiplication tasks on Gemma-2-2B and Llama-3.1-8B models with various rule perturbations.


{{< table-caption caption="🔽 Table 6: Test Accuracy difference Δ on perturbed addition and multiplication." >}}
<table id='2' style='font-size:14px'><tr><td></td><td>Format</td><td>Gemma-2-2B</td><td>Llama-3.1-8B</td></tr><tr><td>f(a,b) =a+b</td><td>Natural Language</td><td>-</td><td>-</td></tr><tr><td>f(a,b) = a+b</td><td>Random String</td><td>+0.1%</td><td>-0.2%</td></tr><tr><td>f(a,b) =a+b</td><td>Disturbed Digits</td><td>-3.9%</td><td>-2.1%</td></tr><tr><td>f(a,b) = a x b</td><td>Natural Language</td><td>-</td><td>-</td></tr><tr><td>f(a,b) = a x b</td><td>Random String</td><td>+0.3%</td><td>-0.5%</td></tr><tr><td>f(a,b) = a X b</td><td>Disturbed Digits</td><td>-1.9%</td><td>-3.1%</td></tr></table>{{< /table-caption >}}

> This table presents the accuracy difference (Δ) in percentage points for addition and multiplication tasks, comparing the performance of Gemma-2-2B and Llama-3.1-8B models under three different input format perturbations (Natural Language, Random String, and Disturbed Digits).


{{< table-caption caption="🔽 Table 1: Inductive and deductive accuracy difference Δ." >}}
<table id='16' style='font-size:22px'><tr><td></td><td>B1 B2</td></tr><tr><td>A1</td><td>A1B1 A1B2</td></tr><tr><td>A2</td><td>A2B1 A2B2</td></tr></table>{{< /table-caption >}}

> The table presents the inductive and deductive accuracy differences (Δ) for four multiplication calculation methods (Standard, Lattice, Repetitive, Egyptian) across two LLMs (Gemma-2-2B and Llama-3.1-8B), showing the impact of fine-tuning on partial products.


</details>


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