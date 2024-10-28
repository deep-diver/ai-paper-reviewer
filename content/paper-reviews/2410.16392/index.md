---
title: "LLM-based Optimization of Compound AI Systems: A Survey"
summary: "This survey reveals how Large Language Models (LLMs) efficiently optimize complex AI systems by acting as end-to-end optimizers, bypassing gradient calculations and generating intricate instructions."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-23"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This research paper explores the use of Large Language Models (LLMs) to optimize complex AI systems.  These 'compound AI systems' combine LLMs with other components like code interpreters or tools. Traditionally, optimizing these systems involved manually adjusting parameters, which is time-consuming and complex. This paper introduces a new method: using an LLM as the optimizer. The LLM receives the task description and dataset and automatically generates or refines the system's parameters to improve performance.  The paper also draws a useful analogy between this optimization process and program analysis (a field in computer science) – specifically, static (without running the program) and dynamic (by running the program and observing its behavior) program analysis.  The researchers examine various types of compound AI systems and discuss the potential impact and limitations of this new approach, proposing backpropagation and trace propagation as efficient credit assignment methods for handling multiple parameters simultaneously.  Overall, the paper highlights the potential of LLMs for efficient and adaptable optimization in the rapidly growing field of compound AI systems.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16392" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16392" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for AI researchers because it surveys a novel approach to optimizing complex AI systems.  LLM-based optimization offers efficiency gains and broader applicability compared to traditional methods. The framework presented opens new avenues for research into prompt engineering, program analysis within LLMs, and the development of safer, more interpretable AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs can effectively optimize intricate AI systems by acting as end-to-end optimizers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel framework using concepts from program analysis unifies the various approaches to LLM-based optimization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} This approach enables optimization of systems with closed-source LLMs, offering broader applicability. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure shows the organization of the survey, illustrating the relationships between different sections and the papers covered in each section.
> <details>
> <summary>read the caption</summary>
> Figure 1: Organization of this survey. A non-exhaustive list of papers is provided.
> </details>







### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_5_0.png)

> 🔼 This figure illustrates the difference between backpropagation and trace propagation in credit assignment for optimizing compound AI systems using LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Credit assignment: a local vs. a global approach. In backpropagation, the optimizer updates each parameter individually. In trace propagation, the prompt contains the execution trace, which allows it to generate all updated variables in a single call. Note that the loss is a textual feedback. In addition, the gradient of the instruction is not the gradient of the output, but the gradient of the instruction with respect to the gradient of the output.
> </details>



![](figures/figures_5_1.png)

> 🔼 The figure illustrates the difference between backpropagation and trace propagation in credit assignment for compound AI systems, showing how trace propagation uses the execution trace to update parameters in a single LLM call.
> <details>
> <summary>read the caption</summary>
> Figure 2: Credit assignment: a local vs. a global approach. In backpropagation, the optimizer updates each parameter individually. In trace propagation, the prompt contains the execution trace, which allows it to generate all updated variables in a single call. Note that the loss is a textual feedback. In addition, the gradient of the instruction is not the gradient of the output, but the gradient of the instruction with respect to the gradient of the output.
> </details>



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