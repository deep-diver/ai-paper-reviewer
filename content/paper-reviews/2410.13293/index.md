---
title: "SBI-RAG: Enhancing Math Word Problem Solving for Students through Schema-Based Instruction and Retrieval-Augmented Generation"
summary: "SBI-RAG enhances math word problem solving by integrating schema-based instruction with a large language model, improving reasoning clarity and accuracy."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-18"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

Many students struggle with math word problems. This paper introduces SBI-RAG, a new framework that uses schema-based instruction (SBI) to categorize problems and large language models (LLMs) to generate step-by-step solutions. SBI helps students identify key information and operations. The LLM uses the SBI information to create a more structured solution.  The researchers tested SBI-RAG on the GSM8K dataset and compared it to GPT-4 and GPT-3.5 Turbo. SBI-RAG outperformed the LLMs, particularly in reasoning clarity, as measured by a new "reasoning score" metric. They also used an LLM to judge the solution quality, which confirmed SBI-RAG's advantage.  The findings suggest that SBI-RAG can improve students' understanding and problem-solving skills.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13293" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13293" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel framework for improving math word problem solving, combining schema-based instruction with large language models.  It offers a new evaluation metric and demonstrates superior performance compared to existing LLMs, opening new avenues for research in educational technology and AI-assisted learning.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The SBI-RAG framework significantly improves math word problem-solving accuracy and reasoning clarity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel "reasoning score" metric effectively evaluates the quality of step-by-step reasoning in generated solutions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The LLM-as-a-judge approach provides a scalable and objective method for evaluating response quality. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_3_0.png)

> 🔼 The figure illustrates the architecture of the SBI-RAG framework, showing the steps involved in schema classification, prompt creation, context retrieval, and answer generation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of SBI-RAG Architecture
> </details>





![](charts/charts_8_0.png)

> 🔼 The chart displays the distribution of math word problems across six sub-categories within the Schema-Based Instruction dataset.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of SBI Dataset
> </details>





{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Prakhar Dixit</td><td>Tim Oates</td></tr><tr><td>Department of Computer Science</td><td>Department of Computer Science</td></tr><tr><td>University of Maryland Baltimore County</td><td>University of Maryland Baltimore County</td></tr><tr><td>pdixit1 @umbc · edu</td><td>oates@cs · umbc · edu</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the hyperparameters used during the training process of the schema-based classifier, including learning rate, batch size, number of epochs, optimizer, and evaluation strategy.
> <details>
> <summary>read the caption</summary>
> Table 1: Training Hyperparameters for Schema-Based Classifier
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_14_0.png)

> 🔼 The figure illustrates the SBI-RAG architecture, showing the four main parts: Schema Classifier, Prompt Creation, Context Retrieval, and Answer and Response Generation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of SBI-RAG Architecture
> </details>



![](figures/figures_14_1.png)

> 🔼 The figure illustrates the four main parts of the SBI-RAG framework: Schema Classifier, Prompt Creation, Context Retrieval, and Answer and Response Generation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of SBI-RAG Architecture
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_10_0.png "🔼 Figure 4: Confusion matrix for the schema classifier")

> 🔼 The confusion matrix visualizes the performance of the schema classifier, showing the counts of correctly and incorrectly classified instances across six schema sub-categories.
> <details>
> <summary>read the caption</summary>
> Figure 4: Confusion matrix for the schema classifier
> </details>


![](charts/charts_10_1.png "🔼 Figure 5: Training and validation losses for the schema classifier")

> 🔼 The chart displays the training and validation losses of a schema classifier model over 20 epochs, showing model convergence.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training and validation losses for the schema classifier
> </details>


![](charts/charts_11_0.png "🔼 Figure 6: Reasoning Score SBI-RAG vs GPT-4")

> 🔼 The bar chart compares the reasoning scores of SBI-RAG and GPT-4, showing that SBI-RAG achieved a significantly higher reasoning score.
> <details>
> <summary>read the caption</summary>
> Figure 6: Reasoning Score SBI-RAG vs GPT-4
> </details>


![](charts/charts_11_1.png "🔼 Figure 7: Reasoning Score SBI-RAG vs GPT 3.5 Turbo")

> 🔼 The bar chart compares the reasoning scores of SBI-RAG and GPT 3.5 Turbo models, showing that SBI-RAG achieved a significantly higher score.
> <details>
> <summary>read the caption</summary>
> Figure 7: Reasoning Score SBI-RAG vs GPT 3.5 Turbo
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Learning rate</td><td>2 X 10 5</td></tr><tr><td>Batch size</td><td>16</td></tr><tr><td>Number of epochs</td><td>20</td></tr><tr><td>Optimizer</td><td>AdamW with weight decay of 0.01</td></tr><tr><td>Evaluation strategy</td><td>Model evaluation at the end of each epoch</td></tr><tr><td>Logging</td><td>Evaluation results logged every 10 steps</td></tr><tr><td colspan="2">Table 1: Training Hyperparameters for Schema-Based Classifier</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table lists the hyperparameters and their corresponding values used for training the schema-based classifier.


{{< table-caption >}}
<table id='3' style='font-size:22px'><tr><td>[Task]</td><td></td></tr><tr><td>You will be given a user question and Responses for that question. You have to act as a Judge and evaluate those responses from an educational point of view.</td><td></td></tr><tr><td>Your task is to provide a 'total rating' scoring to each response and how well the system answer answers the user concerns expressed in the question and</td><td></td></tr><tr><td>user whether they follow step by step reasoning with clarity Give your answers as a float on a scale of 0 to 10, where 0 means that the responses is not helpful at all, and 10 means that the answer completely and helpfully addresses the question from an educational point of view.</td><td></td></tr><tr><td>Feedback:::</td><td></td></tr><tr><td>Total rating: (your rating, as a float between 0 and 10)</td><td></td></tr><tr><td>Now here are the question and responses.</td><td></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the hyperparameters used during the training of the schema-based classifier, including the learning rate, batch size, number of epochs, optimizer, and evaluation strategy.


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
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}