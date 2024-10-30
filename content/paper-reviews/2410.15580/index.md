---
title: "Language Models are Symbolic Learners in Arithmetic"
summary: "LLMs don't calculate; they're symbolic learners in arithmetic, mastering tasks through subgroup pattern recognition, prioritizing easy-to-hard pattern selection."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", ]
showSummary: true
date: 2024-10-21
draft: false
---

{{< keyword >}} 2410.15580 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research paper investigates how large language models (LLMs) learn arithmetic.  Contrary to the belief that LLMs perform calculations like humans do, the study reveals LLMs learn symbolically, focusing on patterns and relations within the numbers rather than performing step-by-step calculations.  The researchers explored this by examining whether LLMs use 'partial products' (intermediate results in multiplication) during learning. They found that LLMs struggle to utilize partial products, even after targeted training, suggesting they don't operate like traditional calculators.  The researchers then analyzed how LLMs handle arithmetic tasks by breaking them down into smaller sub-problems or 'subgroups'.  They found that the complexity of these subgroups, measured by factors such as the number of possible inputs and outputs, significantly impacts the LLM's success.  Importantly, they observed a U-shaped learning curve, where LLMs quickly learn the simplest parts of a problem (e.g., the first and last digits in multiplication) but struggle more with intermediate steps.  This 'easy-to-hard' learning paradigm suggests LLMs focus on pattern recognition and subgroup selection, revealing a symbolic learning approach rather than direct numerical computation.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.15580" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.15580" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on large language models (LLMs) and their application to mathematical reasoning. It challenges the common assumption that LLMs perform calculations, offering a novel perspective on their symbolic learning capabilities. This opens up new research avenues in understanding how LLMs learn, improving their mathematical abilities, and potentially even broadening the scope of LLM capabilities beyond arithmetic to more complex symbolic tasks.  The findings highlight the importance of subgroup-level analysis in evaluating and improving LLMs for symbolic reasoning tasks, which is a significant contribution to the field.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Large language models (LLMs) do not perform arithmetic calculations directly but instead utilize symbolic learning methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLMs' learning process in arithmetic is heavily influenced by the selection of subgroups (sub-tasks) based on their complexity and label space entropy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The accuracy of LLMs in arithmetic tasks follows a U-shaped pattern across digit positions due to varying subgroup complexity. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.15580/figures_2_0.png)

> 🔼 The figure illustrates the two-pronged approach of the paper: investigating partial product usage and analyzing arithmetic learning through subgroup-level complexity and selection.
> <details>
> <summary>read the caption</summary>
> Figure 1: Fundamental structure of the paper. We begin by investigating partial products and proceed to a detailed examination at the subgroup level to understand the mechanism in a symbolic manner.
> </details>





![](https://ai-paper-reviewer.com/2410.15580/charts_5_0.png)

> 🔼 The chart displays the accuracy of identifying partial products in four different multiplication methods (standard, repetitive addition, lattice, and Egyptian) before and after fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 2: Partial products identification accuracy before and after fine-tuning on tasks. Scores are reported on average of Gemma-2-2B and Llama-3.1-8B.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td></td><td colspan="4">Gemma-2-2B</td><td colspan="4">Llama-3.1-8B</td></tr><tr><td></td><td>Standard</td><td>Lattice</td><td>Repetitive</td><td>Egyptian</td><td>Standard</td><td>Lattice</td><td>Repetitive</td><td>Egyptian</td></tr><tr><td>Task → Partial P.</td><td>+4.1%</td><td>+6.8%</td><td>-29.0%</td><td>+3.6%</td><td>+40.6%</td><td>+40.8%</td><td>-59.0%</td><td>+29.6%</td></tr><tr><td>Partial P. → Task</td><td>-6.1%</td><td>-10.7%</td><td>-20.3%</td><td>-9.6%</td><td>-3.7%</td><td>-0.2%</td><td>-0.9%</td><td>-2.7%</td></tr></table>{{< /table-caption >}}

> 🔼 This table shows the inductive and deductive accuracy differences in identifying tasks and partial products for two LLMs (Gemma-2-2B and Llama-3.1-8B) across four multiplication calculation methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Inductive and deductive accuracy difference Δ.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.15580/charts_8_0.png)

> 🔼 The chart displays the U-shaped pattern of position-level accuracy across different training set sizes for 3, 4, and 5-digit multiplication tasks using Gemma-2-2B and Llama-3.1-8B language models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.
> </details>


![](https://ai-paper-reviewer.com/2410.15580/charts_8_1.png)

> 🔼 The chart displays the position-level accuracy of LLMs in multiplication tasks across various training set sizes, revealing a U-shaped pattern.
> <details>
> <summary>read the caption</summary>
> Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.
> </details>


![](https://ai-paper-reviewer.com/2410.15580/charts_8_2.png)

> 🔼 The chart displays the U-shaped pattern of position-level accuracy across different training set sizes for 3-digit, 4-digit, and 5-digit multiplication tasks using Gemma-2-2B and Llama-3.1-8B language models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.
> </details>


![](https://ai-paper-reviewer.com/2410.15580/charts_8_3.png)

> 🔼 The chart displays the position-level accuracy of LLMs in multiplication tasks across different training set sizes, revealing a U-shaped pattern.
> <details>
> <summary>read the caption</summary>
> Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.
> </details>


![](https://ai-paper-reviewer.com/2410.15580/charts_8_4.png)

> 🔼 The chart displays the U-shaped pattern of position-level accuracy in 3-digit, 4-digit, and 5-digit multiplication tasks across various training set sizes for Gemma-2-2B and Llama-3.1-8B language models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.
> </details>


![](https://ai-paper-reviewer.com/2410.15580/charts_8_5.png)

> 🔼 The chart displays the position-level accuracy of LLMs in 3, 4, and 5-digit multiplication tasks across varying training set sizes, revealing a U-shaped pattern where accuracy is highest at the beginning and end positions and lowest in the middle.
> <details>
> <summary>read the caption</summary>
> Figure 3: Position-level Accuracy from Gemma-2-2B and Llama-3.1-8B.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='5' style='font-size:16px'><tr><td>Standard Multiplication</td><td>Pstd = {A1 xB1B2, A2xB1B2, B1 xA1A2,B2 x A1A2}</td></tr><tr><td>Repetitive Addition</td><td>Pra = {�B1B2 A1A2, ��� B1B2}</td></tr><tr><td>Lattice Method</td><td>Plattice = {A10x B10,A10x B2,A2 x B10, A2 x B2}</td></tr><tr><td>Egyptian Multiplication</td><td>Pegyptian = {2k xA1A2|ke0,1,..., [log2(B1B2)]}</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the diagnostic sets used to probe language models' partial products in four different multiplication calculation methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Diagnostic sets with four calculation methods.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td></td><td></td><td>C1</td><td>C2</td><td>C3</td><td>C4</td><td>C5</td><td colspan="2">{Ci}i=1</td></tr><tr><td>Task</td><td>Format</td><td>H(L)</td><td>H(L)</td><td>H(L)</td><td>H(L)</td><td>H(L)</td><td>ILI</td><td>H(L)</td></tr><tr><td>f(a,b) = a + b</td><td>A1A2 + B1B2 = C1C2C3</td><td>0.9710</td><td>3.3215</td><td>3.3219</td><td></td><td></td><td>179</td><td>7.2130</td></tr><tr><td>f(a,b) = a + b + 1</td><td>A1A2 + B1B2 = C1C2C3</td><td>0.9649</td><td>3.3215</td><td>3.3219</td><td></td><td></td><td>179</td><td>7.2130</td></tr><tr><td>f(a,b) = a +6+ 15</td><td>A1A2 + B1B2 = C1C2C3</td><td>0.9280</td><td>3.3214</td><td>3.3219</td><td></td><td></td><td>179</td><td>7.2130</td></tr><tr><td>f(a,b) = a +b + 115</td><td>A1A2 + B1B2 = C1C2C3</td><td>0.9280</td><td>3.3214</td><td>3.3219</td><td>-</td><td></td><td>179</td><td>7.2130</td></tr><tr><td>f(a,b) = (a+ b) mod 100</td><td>A1A2 + B1B2 = C1C2</td><td>3.3214</td><td>3.3219</td><td>-</td><td>-</td><td>-</td><td>100</td><td>6.6432</td></tr><tr><td>f(a,b) = (a+ b) mod 50</td><td>A1A2 + B1B2 = C1C2</td><td>2.3217</td><td>3.3219</td><td>-</td><td>-</td><td>-</td><td>50</td><td>5.6436</td></tr><tr><td>f(a,b) = (a+b) mod 10</td><td>A1A2 + B1B2 = C1</td><td>3.3219</td><td>-</td><td>-</td><td>-</td><td>-</td><td>10</td><td>3.3219</td></tr><tr><td>f(a,b) = a xb</td><td>A1A2 x B1B2 = C1C2C3C4</td><td>2.8979</td><td>3.3215</td><td>3.3160</td><td>3.0340</td><td>-</td><td>2621</td><td>11.1172</td></tr><tr><td>f(a,b) = a xbx 2</td><td>A1A2 x B1B2 = C1C2C3C4C5</td><td>0.6873</td><td>3.2173</td><td>3.3215</td><td>3.2964</td><td>2.2227</td><td>2621</td><td>11.1172</td></tr><tr><td>f(a,b) = a xbx 4</td><td>A1A2 x B1B2 = C1C2C3C4C5</td><td>1.6030</td><td>3.3020</td><td>3.3204</td><td>3.2234</td><td>2.2227</td><td>2621</td><td>11.1172</td></tr><tr><td>f(a,b) = a xbx 8</td><td>A1A2 x B1B2 = C1C2C3C4C5</td><td>2.5811</td><td>3.3202</td><td>3.3151</td><td>3.2235</td><td>2.2227</td><td>2621</td><td>11.1172</td></tr><tr><td>f(a,b) = (a x b) mod 100</td><td>A1A2 x B1B2 = C1C2</td><td>3.3160</td><td>3.0340</td><td>-</td><td>-</td><td>-</td><td>100</td><td>6.2912</td></tr><tr><td>f(a,b) = (a x b) mod 50</td><td>A1A2 x B1B2 = C1C2</td><td>2.3210</td><td>3.0340</td><td>-</td><td>-</td><td>-</td><td>50</td><td>5.3494</td></tr><tr><td>f(a,b) = (a x b) mod 10</td><td>A1A2 x B1B2 = C1</td><td>3.0340</td><td>-</td><td>-</td><td>-</td><td>-</td><td>10</td><td>3.0340</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the label space entropy and size for different rule perturbations applied to addition and multiplication tasks, highlighting the impact of rule variations on task complexity.
> <details>
> <summary>read the caption</summary>
> Table 3: Label space statistics with different rule perturbations. H(L) represents the entropy of the label space, and |L| is the size of the label space. {C}i=1 represents all positions in output digits.
> </details>

{{< table-caption >}}
<table id='7' style='font-size:14px'><tr><td></td><td>Gemma-2-2B</td><td>Llama-3.1-8B</td></tr><tr><td>f(a,b) = a + 6</td><td></td><td></td></tr><tr><td>f(a,b) = a + 6 + 1</td><td>-0.1%</td><td>-0.1%</td></tr><tr><td>f(a,b) = a + 6 + 15</td><td>-0.9%</td><td>+0.1%</td></tr><tr><td>f(a,b) = a + b + 115</td><td>-1.4%</td><td>+0.7%</td></tr><tr><td>f(a,b) = (a + b) mod 100</td><td>+10.1%</td><td>+3.7%</td></tr><tr><td>f(a,b) = (a + b) mod 50</td><td>+13.1%</td><td>+6.7%</td></tr><tr><td>f(a,b) = (a+b) mod 10</td><td>+26.1%</td><td>+13.7%</td></tr><tr><td>f(a,b) = a x 6</td><td>-</td><td></td></tr><tr><td>f(a,b) = a X 6 X 2</td><td>-1.1%</td><td>-2.7%</td></tr><tr><td>f(a,b) = a x 6 x 4</td><td>-1.7%</td><td>+0.7%</td></tr><tr><td>f(a,b) = a X b x 8</td><td>+0.2%</td><td>-3.7%</td></tr><tr><td>f(a,b) = (a x b) mod 100</td><td>+7.1%</td><td>+3.8%</td></tr><tr><td>f(a,b) = (a X b) mod 50</td><td>+12.1%</td><td>+5.3%</td></tr><tr><td>f(a,b) = (a x b) mod 10</td><td>+18.9%</td><td>+10.7%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the accuracy difference (Δ) in percentage for addition and multiplication tasks, showing the impact of rule perturbation on the performance of Gemma-2-2B and Llama-3.1-8B language models.
> <details>
> <summary>read the caption</summary>
> Table 4: Test Accuracy difference Δ on perturbed addition and multiplication.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td></td><td>Format</td><td>Gemma-2-2B</td><td>Llama-3.1-8B</td></tr><tr><td>f(a,b) =a+b</td><td>Natural Language</td><td>-</td><td>-</td></tr><tr><td>f(a,b) = a+b</td><td>Random String</td><td>+0.1%</td><td>-0.2%</td></tr><tr><td>f(a,b) =a+b</td><td>Disturbed Digits</td><td>-3.9%</td><td>-2.1%</td></tr><tr><td>f(a,b) = a x b</td><td>Natural Language</td><td>-</td><td>-</td></tr><tr><td>f(a,b) = a x b</td><td>Random String</td><td>+0.3%</td><td>-0.5%</td></tr><tr><td>f(a,b) = a X b</td><td>Disturbed Digits</td><td>-1.9%</td><td>-3.1%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents the accuracy difference (Δ) in percentage for addition and multiplication tasks with different input format perturbations (Natural Language, Random String, and Disturbed Digits) using Gemma-2-2B and Llama-3.1-8B language models.
> <details>
> <summary>read the caption</summary>
> Table 6: Test Accuracy difference Δ on perturbed addition and multiplication.
> </details>

{{< table-caption >}}
<table id='16' style='font-size:22px'><tr><td></td><td>B1 B2</td></tr><tr><td>A1</td><td>A1B1 A1B2</td></tr><tr><td>A2</td><td>A2B1 A2B2</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the changes in accuracy for identifying partial products and solving arithmetic tasks before and after fine-tuning LLMs on different sets of diagnostic tasks, comparing the performance across four multiplication calculation methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Inductive and deductive accuracy difference Δ.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.15580/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.15580/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}