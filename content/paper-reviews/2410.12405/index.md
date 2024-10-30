---
title: "ProSA: Assessing and Understanding the Prompt Sensitivity of LLMs"
summary: "ProSA assesses LLM prompt sensitivity using a new metric, revealing that larger models are more robust but subjective evaluations are also affected by prompt variations."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", ]
showSummary: true
date: 2024-10-16
draft: false
---

{{< keyword >}} 2410.12405 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research introduces ProSA, a framework designed to evaluate and understand prompt sensitivity in large language models (LLMs).  ProSA uses a new metric, PromptSensiScore, to measure how much an LLM's response changes when given slightly different versions of the same instruction.  Their study shows that prompt sensitivity varies greatly across datasets and LLMs, with larger models generally showing more robustness.  Adding a few examples of how to phrase instructions (few-shot learning) helps to reduce the problem.  They also discover that subjective human ratings of LLM responses are affected by the way instructions are phrased.  Finally, they show that LLMs are more robust when they're very confident in their answers.  In essence, the paper provides a deeper understanding of how LLMs respond to different prompts and suggests ways to improve model robustness.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.12405" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.12405" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working with LLMs because it introduces ProSA, a novel framework for evaluating and understanding prompt sensitivity.  It provides a much-needed instance-level analysis, moving beyond dataset-level observations.  The findings highlight the impact of prompt variations on model performance and subjective evaluations, guiding future research towards more robust and user-friendly LLMs.  ProSA's sensitivity metric and focus on decoding confidence offer new avenues for investigating the underlying mechanisms of LLM behavior.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ProSA offers instance-level analysis of LLM prompt sensitivity, going beyond dataset-level assessments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Larger LLMs show greater robustness to prompt variations, but sensitivity remains an issue across various tasks and datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Prompt sensitivity correlates with model confidence; higher confidence implies greater robustness. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.12405/figures_1_0.png)

> 🔼 The figure showcases four different prompt templates used for mathematical tasks, highlighting the diversity in human prompt expression styles.
> <details>
> <summary>read the caption</summary>
> Figure 1: A Showcase of the Four Prompt Templates on MATH. These four prompt templates represent four different styles of constructing prompts, serving as an example of the diversity in human prompt expression.
> </details>





![](https://ai-paper-reviewer.com/2410.12405/charts_3_0.png)

> 🔼 The chart compares dataset-level and instance-level evaluations of LLMs' prompt sensitivity, highlighting that dataset-level analysis overlooks the model's sensitivity to different prompts within the same instance.
> <details>
> <summary>read the caption</summary>
> Figure 2: A Comparision of Evaluating LLMs' Prompt Sensitivity. ✓ and X indicate the accuracy of the LLM's responses. In this example, LLMs appear robust at the dataset level evaluation (calculated from the variance of different templates), but this overlooks the sensitivity of LLMs to different templates within the same instance.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">Generator</td><td colspan="2">LC AlpacaEval 2.0</td><td colspan="2">Arena Hard Auto</td></tr><tr><td>BS</td><td>HS</td><td>BS</td><td>HS</td></tr><tr><td>GPT-4o</td><td>0.94</td><td>0.89</td><td>0.94</td><td>0.92</td></tr><tr><td>GPT-4-0409</td><td>0.95</td><td>0.91</td><td>0.93</td><td>0.88</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of two quality verifications on the rewritten prompts using BERTScore and human evaluation, demonstrating high semantic similarity between original and rewritten prompts.
> <details>
> <summary>read the caption</summary>
> Table 1: Verifications for Rewritten Prompts. Here, BS stands for BERTScore, and HS stands for Human-labeled Similarity.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.12405/charts_4_0.png)

> 🔼 The chart displays the average performance and prompt sensitivity score (PSS) across four datasets for several LLMs, revealing variations in prompt sensitivity among models and datasets.
> <details>
> <summary>read the caption</summary>
> Figure 3: Main Results of Prompt Sensitivity. The scatter represents the average performance score of 12 prompts and the PSS under different datasets.
> </details>


![](https://ai-paper-reviewer.com/2410.12405/charts_5_0.png)

> 🔼 The chart displays the relationship between the size of a language model (in billions of parameters) and its prompt sensitivity, as measured by the average PromptSensiScore (PSS) across four datasets.
> <details>
> <summary>read the caption</summary>
> Figure 4: Prompt Sensitivity vs. Model Size. The comparative charts display the relationship between the size of the model's parameters and prompts sensitivity. PSS refers to the average PSS of four datasets.
> </details>


![](https://ai-paper-reviewer.com/2410.12405/charts_6_0.png)

> 🔼 The chart shows the impact of few-shot examples on the performance and prompt sensitivity of four different sized language models on two datasets, CommonsenseQA and ARC-Challenge.
> <details>
> <summary>read the caption</summary>
> Figure 5: Impact of Few-shot on the Performance and Sensitivity. Conduct experiments on the CommonsenseQA and ARC-Challenge datasets using five few-shot settings and four models from the Qwen series. The blue line represents the changes in the scores of LLMs (using the left scale). The orange line represents the changes in the PSS of LLMs (using the right scale).
> </details>


![](https://ai-paper-reviewer.com/2410.12405/charts_8_0.png)

> 🔼 The bar chart visualizes the average prompt sensitivity scores (PSS) across different task categories, revealing variations in LLM robustness across various tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prompt Sensitivity of Different Categories on Arena Hard Auto. We separately presented the five most sensitive and the five least sensitive categories on Arena Hard Auto. The PSS for a particular category refers to the average of the PSS of five LLMs in that category.
> </details>


![](https://ai-paper-reviewer.com/2410.12405/charts_8_1.png)

> 🔼 The chart displays the relationship between model confidence and prompt sensitivity across three different LLMs, categorized by their prompt sensitivity scores.
> <details>
> <summary>read the caption</summary>
> Figure 7: The Relationship between Model Confidence and Prompt Sensitivity on CommonsenseQA. Each bar represents the model’s average confidence when its PPS falls within that interval. Note that due to variations in model and vocabulary size, cross-model confidence comparisons are not meaningful.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Benchmarks</td><td>LC AlpacaEval 2.0</td><td>Arena Hard Auto</td></tr><tr><td>Reference</td><td>0.167</td><td>0.275</td></tr><tr><td>InternLM2-20B-Chat</td><td>0.022</td><td>0.249</td></tr><tr><td>Llama3-8B-Instruct</td><td>0.013</td><td>0.266</td></tr><tr><td>Llama3-70B-Instruct</td><td>0.016</td><td>0.258</td></tr><tr><td>Qwen1.5-14B-Chat</td><td>0.022</td><td>0.249</td></tr><tr><td>Qwen1.5-72B-Chat</td><td>0.036</td><td>0.250</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the Prompt Sensitivity Score (PSS) for several LLMs across two subjective evaluation benchmarks, showing their robustness to prompt variations.
> <details>
> <summary>read the caption</summary>
> Table 2: PSS on LC AlpacaEval 2.0 and Arena Hard Auto. Reference refers to the average quality difference of responses generated by Llama3-8b-Instruct and Llama3-70b-Instruct. The others represent the PSS of LLMs under the three prompt versions (One original and two generated). Due to the different default comparison models, the PSS of LC AlpacaEval 2.0 and Arena Hard cannot be directly compared.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Examples</td><td>Responses</td><td>PSS</td></tr><tr><td>1</td><td>[1, 1, 1, 1, 1, 1, 1, 1, 1, 1]</td><td>0</td></tr><tr><td>2</td><td>[1, 1, 1, 0, 1, 1, 1 1, 1, 1]</td><td>0.17</td></tr><tr><td>3</td><td>[1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1]</td><td>0.41</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows examples of model responses to different prompts for three instances, illustrating the variation in correctness and the calculation of the PromptSensiScore (PSS).
> <details>
> <summary>read the caption</summary>
> Table 3: Examples of Model Responses and PSS. This table provides three examples of what the PSS values are for given responses.
> </details>

{{< table-caption >}}
<table id='22' style='font-size:20px'><tr><td>LLMs</td><td>PSS</td><td>Avg Acc.</td></tr><tr><td>Claude-3.5-sonnet</td><td>0.14</td><td>76.37</td></tr><tr><td>GPT-4o</td><td>0.15</td><td>79.78</td></tr><tr><td>Llama3-8B-Instruct</td><td>0.10</td><td>54.73</td></tr><tr><td>Llama3-70B-Instruct</td><td>0.07</td><td>70.83</td></tr><tr><td>Qwen1.5-72B-Instruct</td><td>0.15</td><td>57.88</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the prompt sensitivity (PSS) and average accuracy of several LLMs on the HumanEval benchmark.
> <details>
> <summary>read the caption</summary>
> Table 4: Results about Several Models on Humaneval.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.12405/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12405/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}