---
title: "LLM-based Optimization of Compound AI Systems: A Survey"
summary: "This survey explores using LLMs to optimize compound AI systems, offering a unified framework based on program analysis to understand and improve LLM-based optimization strategies."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-23"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This research paper surveys the use of Large Language Models (LLMs) to optimize complex AI systems, known as compound AI systems. These systems combine LLMs with other components like retrievers or code interpreters. The core idea is that instead of manually tweaking parameters, an LLM acts as an optimizer.  The paper introduces a new way to understand how this LLM-based optimization works, drawing an analogy from computer science: it uses concepts like 'static' and 'dynamic' program analysis to explain how you instruct the LLM to find the best parameters.  'Static' means giving the LLM all the necessary information upfront to make the optimization, while 'dynamic' means the LLM gets feedback based on how the system performs, allowing it to iteratively improve.  The paper covers several examples and discusses the potential broader impact of this approach, including applications in question answering, mathematical problem-solving, and making decisions.  The authors also highlight challenges and opportunities for future research, including ensuring the safety and reliability of these systems.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16392" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does it matter?
This paper is crucial for AI researchers working on large language models and compound AI systems.  It provides a much-needed structured overview of LLM-based optimization techniques, filling a gap in current literature. The framework presented, using concepts from program analysis, offers a novel and unifying perspective that could significantly impact future research directions in the field.  The identification of challenges and future directions encourages further investigation into key aspects of LLM optimization, promoting safer, more efficient, and explainable AI systems.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs can efficiently optimize compound AI systems' parameters end-to-end, avoiding gradient calculations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel framework, drawing parallels to program analysis (static and dynamic), clarifies how to effectively prompt LLMs for optimization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The survey highlights key applications and discusses future research directions, focusing on process supervision and safety aspects of LLM optimization. {{< /typeit >}}
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