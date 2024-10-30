---
title: "SemiEvol: Semi-supervised Fine-tuning for LLM Adaptation"
summary: "SEMIEVOL, a novel semi-supervised framework, significantly improves large language model adaptation by effectively leveraging both limited labeled and abundant unlabeled data, achieving superior perfo..."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.14745 {{< /keyword >}}

### TL;DR


{{< lead >}}

This paper introduces SEMIEVOL, a novel semi-supervised framework that effectively adapts large language models (LLMs) using a combination of labeled and unlabeled data.  The core idea is to propagate knowledge from labeled to unlabeled data using a bi-level approach, involving both in-weight (adjusting model parameters) and in-context (using labeled data as context during inference) methods.  To improve the selection of unlabeled data samples, SEMIEVOL incorporates a collaborative learning approach, where multiple LLMs work together to generate pseudo-responses and self-justify them, leading to more confident and reliable data.  The unlabeled data are then adaptively selected using response entropy as a measure of confidence. Experiments on seven datasets, using GPT-40-mini and Llama-3.1, showed that SEMIEVOL significantly outperformed supervised fine-tuning (SFT) and self-evolution methods, highlighting the effectiveness of the method in utilizing hybrid data scenarios.  The findings suggest that SEMIEVOL is a practical and valuable tool for researchers looking to adapt LLMs data-efficiently.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.14745" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.14745" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is significant because it tackles the challenge of adapting large language models (LLMs) with limited labeled data, a common constraint in real-world applications.  It introduces a novel semi-supervised fine-tuning framework that efficiently uses both labeled and unlabeled data, offering a practical solution for researchers working with LLMs. The results demonstrate substantial improvements in model performance across various tasks and datasets, opening avenues for further research in data-efficient LLM adaptation and semi-supervised learning techniques for LLMs.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SEMIEVOL, a new semi-supervised fine-tuning method, significantly enhances LLM adaptation using a combination of labeled and unlabeled data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The bi-level approach of knowledge propagation (in-weight and in-context) and collaborative learning with adaptive selection improves model performance and confidence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SEMIEVOL demonstrates consistent improvement across diverse tasks and datasets, showcasing its practical value for data-efficient LLM adaptation in real-world scenarios with limited labeled data and abundant unlabeled data {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.14745/figures_1_0.png)

> 🔼 The figure compares the supervised fine-tuning (SFT) method with the proposed SEMIEVOL framework, highlighting SEMIEVOL's ability to leverage both labeled and unlabeled data for improved LLM adaptation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of SEMIEVOL with previous SFT methods. SEMIEVOL enables interaction between diverse data types for superior performance evolution.
> </details>





![](https://ai-paper-reviewer.com/2410.14745/charts_6_0.png)

> 🔼 The chart displays the sensitivity analysis of SEMIEVOL's performance across different numbers of collaborating models (n) and data selection ratios (θ).
> <details>
> <summary>read the caption</summary>
> Figure 3: Sensitivity analysis of SEMIEVOL's performance under different n and θ on variant datasets.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Model and Strategy</td><td>MMLU</td><td>MMLU Pro</td><td>ARC</td><td>FPB</td><td>USMLE</td><td>PubMedQA</td><td>ConvFinQA</td></tr><tr><td>GPT-4o-mini Vanilla</td><td>77.4</td><td>57.8</td><td>91.5</td><td>93.4</td><td>73.8</td><td>77.5</td><td>63.9</td></tr><tr><td>GPT-4o-mini SFT</td><td>77.8</td><td>58.8</td><td>90.3</td><td>98.0</td><td>75.0</td><td>77.5</td><td>88.8</td></tr><tr><td>GPT-4o-mini SEMIEVOL</td><td>79.9</td><td>60.8</td><td>92.7</td><td>98.9</td><td>77.2</td><td>79.5</td><td>89.2</td></tr><tr><td>Error Reduction</td><td>11.1%</td><td>7.11%</td><td>14.1%</td><td>83.3%</td><td>13.0%</td><td>8.89%</td><td>70.1%</td></tr><tr><td>Llama3.1-8B Vanilla</td><td>66.4</td><td>47.1</td><td>81.1</td><td>81.7</td><td>70.2</td><td>73.5</td><td>51.1</td></tr><tr><td>Llama3.1-8B SFT</td><td>67.9</td><td>49.8</td><td>81.8</td><td>96.2</td><td>70.8</td><td>75.0</td><td>81.3</td></tr><tr><td>AdaptLLM</td><td>-</td><td>-</td><td>一</td><td>49.7</td><td>31.5</td><td>27.6</td><td>30.9</td></tr><tr><td>InstructPT</td><td>-</td><td>-</td><td>-</td><td>76.1</td><td>47.4</td><td>44.5</td><td>55.2</td></tr><tr><td>MemoryLLM</td><td>56.4</td><td>31.8</td><td>56.3</td><td>57.7</td><td>37.8</td><td>55.5</td><td>37.2</td></tr><tr><td>RAG (BM25)</td><td>66.6</td><td>37.4</td><td>80.8</td><td>83.7</td><td>69.3</td><td>69.0</td><td>63.4</td></tr><tr><td>RAG (FAISS)</td><td>66.5</td><td>38.8</td><td>81.3</td><td>82.5</td><td>69.1</td><td>71.5</td><td>64.6</td></tr><tr><td>Hermes-3</td><td>63.6</td><td>37.9</td><td>74.9</td><td>73.9</td><td>54.5</td><td>68.5</td><td>54.9</td></tr><tr><td>Reflection-Llama</td><td>65.5</td><td>37.5</td><td>82.2</td><td>80.8</td><td>67.4</td><td>77.5</td><td>40.8</td></tr><tr><td>Llama3.1-8B SEMIEVOL</td><td>70.3</td><td>54.3</td><td>83.4</td><td>96.9</td><td>71.6</td><td>76.0</td><td>83.6</td></tr><tr><td>Error Reduction</td><td>11.6%</td><td>13.6%</td><td>16.9%</td><td>81.4%</td><td>4.70%</td><td>9.43%</td><td>66.5%</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents a comparison of various LLMs' performance across seven general or domain-specific datasets, using different fine-tuning strategies.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across different models on various datasets.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.14745/charts_7_0.png)

> 🔼 The chart displays the distribution of prediction entropies for Vanilla, SFT, and SEMIEVOL models on the MMLU and MMLU-Pro datasets, illustrating that SEMIEVOL produces more confident predictions with lower entropy.
> <details>
> <summary>read the caption</summary>
> Figure 4: Entropy distribution indicates SEMIEVOL can enhanced response confidence. Lower entropy values indicate more confident predictions.
> </details>


![](https://ai-paper-reviewer.com/2410.14745/charts_7_1.png)

> 🔼 The radar chart compares the performance of Vanilla, SFT, and SEMIEVOL across various categories in the MMLU-Pro dataset, showing SEMIEVOL's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Category-wise performance of SEMIEVOL.
> </details>


![](https://ai-paper-reviewer.com/2410.14745/charts_7_2.png)

> 🔼 The chart displays SEMIEVOL's performance sensitivity analysis across different numbers of collaborative models and data selection ratios on MMLU and MMLU-Pro datasets.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sensitivity analysis of SEMIEVOL's performance under different n and θ on variant datasets.
> </details>


![](https://ai-paper-reviewer.com/2410.14745/charts_8_0.png)

> 🔼 Figure 7 shows the iterative evolution performance of the SEMIEVOL model on MMLU and MMLU-Pro datasets across four iterations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Iterative evolution performance, each iteration means perform a round of SEMIEVOL.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='8' style='font-size:14px'><tr><td>Variant</td><td>MMLU</td><td>MMLU-Pro</td><td>ARC</td></tr><tr><td>Llama3.1-8B SEMIEVOL</td><td>70.3</td><td>54.3</td><td>83.4</td></tr><tr><td>w/o IWP</td><td>68.7</td><td>52.1</td><td>82.4</td></tr><tr><td>w/o ICP</td><td>69.7</td><td>53.2</td><td>83.0</td></tr><tr><td>w/o CL</td><td>69.1</td><td>53.0</td><td>82.4</td></tr><tr><td>w/o AS</td><td>69.9</td><td>53.5</td><td>82.1</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a performance comparison of various LLMs on seven datasets using different fine-tuning strategies, including vanilla, SFT, and SEMIEVOL, highlighting SEMIEVOL's consistent improvement.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across different models on various datasets.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Base Model</td><td colspan="4">MMLU (Dunlabeled / Dlabled)</td><td colspan="4">MMLU-Pro (Dunlabeled / Dlabled)</td></tr><tr><td></td><td>50%</td><td>100%</td><td>200%</td><td>300%</td><td>50%</td><td>100%</td><td>200%</td><td>300%</td></tr><tr><td>GPT-4o mini</td><td>78.2</td><td>78.6</td><td>79.3</td><td>79.9</td><td>58.9</td><td>59.5</td><td>60.1</td><td>60.8</td></tr><tr><td>Llama3.1-8B</td><td>68.3</td><td>69.5</td><td>69.7</td><td>70.3</td><td>50.8</td><td>52.0</td><td>53.5</td><td>54.3</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of SEMIEVOL and various baselines across seven datasets using two different base LLMs, showing SEMIEVOL's consistent improvement across various tasks and models.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across different models on various datasets.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.14745/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.14745/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}