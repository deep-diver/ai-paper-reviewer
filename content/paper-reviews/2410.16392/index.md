---
title: "LLM-based Optimization of Compound AI Systems: A Survey"
summary: "LLMs are revolutionizing compound AI optimization by efficiently handling complex parameters without gradient calculations, enabling end-to-end system tuning."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-23"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This research explores how Large Language Models (LLMs) are being used to optimize complex AI systems, often called 'compound AI systems'. These systems combine LLMs with other components like databases or code interpreters to perform tasks.  The paper focuses on methods that optimize these systems by directly adjusting parameters (like instructions or tool definitions) using an LLM as the optimizer, eliminating the need for complex gradient calculations which is typically required for other optimization methods.  It introduces a new way of thinking about this process, drawing parallels to 'program analysis' from computer science.  This helps researchers better understand how to design prompts for the LLM optimizer – either by analyzing the system's code ('static analysis') or by observing the system's behaviour during execution ('dynamic analysis'). The paper also discusses advanced techniques for optimizing multiple interacting parameters simultaneously, like using backpropagation or trace propagation inspired by methods from deep learning.  Overall, the paper provides a useful overview of current LLM-based optimization methods for compound AI systems, a rapidly evolving field of AI research.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16392" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does it matter?
This paper surveys LLM-based optimization techniques for compound AI systems, offering a novel framework using program analysis concepts for understanding and improving LLM-based optimization.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs offer efficient, gradient-free optimization for complex AI systems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A program analysis framework helps understand LLM prompt engineering for optimization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Dynamic program analysis, including backpropagation and trace propagation, enhances multi-parameter optimization. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Figure 1: Organization of this survey. A non-exhaustive list of papers is provided.")

> The figure shows a tree-like structure that organizes the survey of LLM-based optimization of compound AI systems by workflow, optimization methods, applications, and discussions.







### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_5_0.png "🔼 Figure 2: Credit assignment: a local vs. a global approach. In backpropagation, the optimizer updates each parameter individually. In trace propagation, the prompt contains the execution trace, which allows it to generate all updated variables in a single call. Note that the loss is a textual feedback. In addition, the gradient of the instruction is not the gradient of the output, but the gradient of the instruction with respect to the gradient of the output.")

> The figure illustrates the difference between backpropagation and trace propagation in credit assignment for LLM-based optimization of compound AI systems.


![](figures/figures_5_1.png "🔼 Figure 2: Credit assignment: a local vs. a global approach. In backpropagation, the optimizer updates each parameter individually. In trace propagation, the prompt contains the execution trace, which allows it to generate all updated variables in a single call. Note that the loss is a textual feedback. In addition, the gradient of the instruction is not the gradient of the output, but the gradient of the instruction with respect to the gradient of the output.")

> The figure illustrates the difference between backpropagation and trace propagation in credit assignment for LLM-based optimization of compound AI systems.


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
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}