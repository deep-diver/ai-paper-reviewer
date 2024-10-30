---
title: "MedMobile: A mobile-sized language model with expert-level clinical capabilities"
summary: "MedMobile: A mobile-ready 3.8B parameter language model achieves expert-level clinical performance, surpassing USMLE benchmarks with unprecedented efficiency and accessibility."
categories: ["AI Generated"]
tags: ["🔖 24-10-11", ]
showSummary: true
date: 2024-10-11
draft: false
---

{{< keyword >}} 2410.09019 {{< /keyword >}}

### TL;DR


{{< lead >}}

Researchers developed MedMobile, a surprisingly small (3.8 billion parameters) language model designed to work on mobile devices.  Despite its size, it performs remarkably well on medical question answering tasks, even outperforming some much larger models. This was achieved using techniques like 'chain-of-thought' prompting (guiding the model to reason step-by-step), ensembling results from multiple runs, and fine-tuning the model with a large dataset.  The model's ability to run on mobile devices is a significant advance, making powerful medical AI more accessible.  This is a promising step towards bringing the benefits of advanced AI to healthcare settings with limited resources.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.09019" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.09019" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces MedMobile, a small, efficient language model for medical applications that performs comparably to much larger models.  Its open-source nature and mobile compatibility make it highly accessible to researchers and practitioners, fostering broader adoption and further research into efficient medical AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MedMobile, a 3.8 billion parameter language model, achieves expert-level performance on medical question answering tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MedMobile runs efficiently on mobile devices, overcoming limitations of larger models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study highlights the importance of chain-of-thought prompting, ensembling, and fine-tuning for optimal performance. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.09019/figures_3_0.png)

> 🔼 The figure illustrates the components of MultiMedQA, the MedMobile framework for medical question answering, and an example output from MedMobile.
> <details>
> <summary>read the caption</summary>
> Figure 1. Overview of MedMobile. Panel A) shows components of MultiMedQA [12], the evaluation tasks descriptions, and the number of questions in each data test set. MultiMedQA is a collection of 8 different datasets encompassing the medical domain. In tasks such as the MMLU, we test the model on its ability to perform complex reasoning tasks across medical and medical-adjacent domains. PubMedQA tests a model's ability to perform reasoned conclusions based on research-grade text. Finally, MedQA (USMLE) and MedMCQA evaluates the model on its ability to answer standardized medical questions necessary to be a licensed physician. In Panel B), we present a framework of medical Q&A evaluation and model building. MultiMedQA is used to evaluate a fine-tuned phi-3-mini model, MedMobile, and is optimized in its prompting using automatic differentiation with GPT-4 as described in TextGrad [15]. Responses are then filtered via an ensemble approach, where the most common answer is selected as the model's final answer. We also fine-tune our model on synthetic and manually medical questions, annotated with CoT by GPT-4. Panel C) exhibits a sample MedQA
> </details>





![](https://ai-paper-reviewer.com/2410.09019/charts_4_0.png)

> 🔼 Figure 2 shows the progression of language models over time and their performance on USMLE style questions, comparing MedMobile to other models across various metrics.
> <details>
> <summary>read the caption</summary>
> Figure 2. Overview of language models and their performance on USMLE-style questions, contextualized over time. Panel A) shows the progession of smallest language model that is able to pass the USMLE, based on the MedQA. Panel B) displays MedMobile (red) compared to Llama-3 Ultra-Medical 8B (purple), and a baseline phi-3-mini (green) model on the entire MultiMedQA. MedMobile achieves almost identical or superior performance across the entirety of the MultiMedQA compared to the SOTA of <10B parameter language models (UltraMedical 8B), with a fraction of the parameters. Panel C) presents the relative accuracy of MedMobile to other language models on the MedQA. Current models range vastly in parameter size; with closed-source models such as Med-Palm 2 requiring
> </details>





{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Task</td><td># of MCQs</td><td>Task Overview</td></tr><tr><td>MedQA (USMLE)</td><td>1273</td><td>MCQs based on the US medical licensing exam</td></tr><tr><td>MedMCQA</td><td>4183</td><td>MCQs based on Indian medical entrance exams (NEET, AIIMS)</td></tr><tr><td>MMLU (Clinical knowledge)</td><td>265</td><td>Clinical knowledge MCQs</td></tr><tr><td>MMLU (Medical genetics)</td><td>100</td><td>Medical genetics MCQs</td></tr><tr><td>MMLU (Anatomy)</td><td>135</td><td>Anatomy MCQs</td></tr><tr><td>MMLU (Professional medicine)</td><td>272</td><td>Professional medicine MCQs (based on USMLE)</td></tr><tr><td>MMLU (College biology)</td><td>144</td><td>College biology MCQs</td></tr><tr><td>MMLU (College medicine)</td><td>173</td><td>College medicine MCQs</td></tr><tr><td>PubMedQA</td><td>500</td><td>Research question (yes/no/maybe) with a corresponding PubMed abstract</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents eight datasets used for evaluating the model's performance in MultiMedQA, encompassing various medical and medical-adjacent domains, with the number of MCQs and a brief description of each task.
> <details>
> <summary>read the caption</summary>
> Table 1. Multiple-choice question (MCQ) evaluation datasets part of the MultiMedQA.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.09019/charts_11_0.png)

> 🔼 Supplemental Figure 1 compares the number of output tokens generated by two language models (a baseline model and a fine-tuned model) against their accuracy on the MedQA question set, highlighting the impact of model size and fine-tuning on performance.
> <details>
> <summary>read the caption</summary>
> Supplemental Figure 1. Comparison of number of output tokens in a response and accuracy on MedQA questions. Each question of the MedQA test set is represented 5x in this figure due to the ensemble performed. Some questions are not included in the plots (<20) as model response exceeded maximum generation output and an accuracy could not be evaluated. Top panel is a CoT enhanced baseline phi-3-mini model, whereas the bottom panel is our fine-tuned model, MedMobile.
> </details>


![](https://ai-paper-reviewer.com/2410.09019/charts_12_0.png)

> 🔼 Supplemental Figure 1 shows the relationship between the number of output tokens generated by two different language models (a baseline phi-3-mini model and the fine-tuned MedMobile model) and their accuracy on the MedQA questions.
> <details>
> <summary>read the caption</summary>
> Supplemental Figure 1. Comparison of number of output tokens in a response and accuracy on MedQA questions. Each question of the MedQA test set is represented 5x in this figure due to the ensemble performed. Some questions are not included in the plots (<20) as model response exceeded maximum generation output and an accuracy could not be evaluated. Top panel is a CoT enhanced baseline phi-3-mini model, whereas the bottom panel is our fine-tuned model, MedMobile.
> </details>


![](https://ai-paper-reviewer.com/2410.09019/charts_12_1.png)

> 🔼 Supplemental Figure 2 shows the relationship between the number of input tokens in a response and the accuracy of the model (MedMobile) on the MedQA questions.
> <details>
> <summary>read the caption</summary>
> Supplemental Figure 2. Comparison of number of input tokens in a response and accuracy on MedQA questions. Each question of the MedQA test set is represented 5x in this figure due to the ensemble performed. Some questions are not included in the plots (<20) as model response exceeded maximum generation output and an accuracy could not be evaluated. Top panel is a CoT enhanced baseline phi-3-mini model, whereas the bottom panel is our trained model, MedMobile.
> </details>


![](https://ai-paper-reviewer.com/2410.09019/charts_13_0.png)

> 🔼 Supplemental Figure 3 shows the effect of k-shot prompting and various retrieval methods on the accuracy of the MedMobile model on the MedQA dataset.
> <details>
> <summary>read the caption</summary>
> Supplemental Figure 3. Panel A) depicts the accuracy of MedMobile on the MedQA relative to the number of k-shot prompting (i.e., number of examples given to the model alongside the evaluation question). Panel B) shows different forms of retrieval for RAG and their resultant effects on the accuracy of MedMobile on the MedQA dataset. To conduct RAG based on vector embeddings, we compute cosine similarity based on MedCPT vectors generation between the question and paragraphs in the textbook. RAG built on BM-25 is developed through the lucine implementation, and selects the paragraph with the highest score for a particular question. While all forms of RAG achieve sub-optimal results, we note that BM-25 seemed to affect the model least negatively with the addition of context. The source of information for these evaluations is from Harrison’s Principles of Internal Medicine, 21e [28].
> </details>


![](https://ai-paper-reviewer.com/2410.09019/charts_13_1.png)

> 🔼 Supplemental Figure 3 shows the impact of different retrieval augmented generation (RAG) methods and k-shot prompting on MedMobile's performance on the MedQA dataset.
> <details>
> <summary>read the caption</summary>
> Supplemental Figure 3. Panel A) depicts the accuracy of MedMobile on the MedQA relative to the number of k-shot prompting (i.e., number of examples given to the model alongside the evaluation question). Panel B) shows different forms of retrieval for RAG and their resultant effects on the accuracy of MedMobile on the MedQA dataset. To conduct RAG based on vector embeddings, we compute cosine similarity based on MedCPT vectors generation between the question and paragraphs in the textbook. RAG built on BM-25 is developed through the lucine implementation, and selects the paragraph with the highest score for a particular question. While all forms of RAG achieve sub-optimal results, we note that BM25 seemed to affect the model least negatively with the addition of context. The source of information for these evaluations is from Harrison's Principles of Internal Medicine, 21e [28].
> </details>


</details>



### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.09019/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09019/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}