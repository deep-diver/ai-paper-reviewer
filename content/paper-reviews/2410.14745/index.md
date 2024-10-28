---
title: "SemiEvol: Semi-supervised Fine-tuning for LLM Adaptation"
summary: "SEMIEVOL: A novel semi-supervised fine-tuning framework boosts LLM performance by cleverly integrating labeled and unlabeled data via knowledge propagation and adaptive selection, enabling efficient m..."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-22"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

The paper introduces SEMIEVOL, a new method for improving large language models (LLMs) using both labeled and unlabeled data.  It's designed to work in real-world situations where getting lots of labeled data is difficult and expensive.  SEMIEVOL uses a two-part approach. First, it propagates knowledge from the labeled data to the unlabeled data in two ways: by adjusting the model's internal settings (in-weight) and by using the labeled data as examples for the model to learn from (in-context). Second, it uses a collaborative learning technique where multiple LLMs work together to identify high-quality unlabeled data, improving the overall accuracy.  Experiments on various datasets showed that SEMIEVOL consistently outperforms other methods, especially when labeled data is scarce.  It also shows potential for continuous improvement by iteratively using previously unlabeled data as new training data. This makes SEMIEVOL a practical tool for adapting LLMs to new tasks and domains efficiently.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.14745" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

{{< button href="https://huggingface.co/papers/2410.14745" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is significant because it addresses the critical challenge of adapting large language models (LLMs) with limited labeled data, a common constraint in real-world applications.  The proposed SEMIEVOL framework offers a practical solution by effectively combining labeled and unlabeled data for enhanced model performance, opening new avenues for data-efficient LLM adaptation and semi-supervised learning research.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SEMIEVOL effectively leverages both labeled and unlabeled data for LLM adaptation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A bi-level knowledge propagation strategy (in-weight and in-context) significantly improves model performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Collaborative learning and adaptive selection of high-quality pseudo-responses enhance model accuracy and robustness. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 Figure 1 compares SEMIEVOL with previous supervised fine-tuning (SFT) methods, highlighting SEMIEVOL's ability to interact with diverse data types (labeled and unlabeled) for improved performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of SEMIEVOL with previous SFT methods. SEMIEVOL enables interaction between diverse data types for superior performance evolution.
> </details>





![](charts/charts_6_0.png)

> 🔼 The chart displays SEMIEVOL's performance sensitivity to the number of collaborating LLMs (n) and the data selection ratio (θ).
> <details>
> <summary>read the caption</summary>
> Figure 3: Sensitivity analysis of SEMIEVOL's performance under different n and θ on variant datasets.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Model and Strategy</td><td>MMLU</td><td>MMLU Pro</td><td>ARC</td><td>FPB</td><td>USMLE</td><td>PubMedQA</td><td>ConvFinQA</td></tr><tr><td>GPT-4o-mini Vanilla</td><td>77.4</td><td>57.8</td><td>91.5</td><td>93.4</td><td>73.8</td><td>77.5</td><td>63.9</td></tr><tr><td>GPT-4o-mini SFT</td><td>77.8</td><td>58.8</td><td>90.3</td><td>98.0</td><td>75.0</td><td>77.5</td><td>88.8</td></tr><tr><td>GPT-4o-mini SEMIEVOL</td><td>79.9</td><td>60.8</td><td>92.7</td><td>98.9</td><td>77.2</td><td>79.5</td><td>89.2</td></tr><tr><td>Error Reduction</td><td>11.1%</td><td>7.11%</td><td>14.1%</td><td>83.3%</td><td>13.0%</td><td>8.89%</td><td>70.1%</td></tr><tr><td>Llama3.1-8B Vanilla</td><td>66.4</td><td>47.1</td><td>81.1</td><td>81.7</td><td>70.2</td><td>73.5</td><td>51.1</td></tr><tr><td>Llama3.1-8B SFT</td><td>67.9</td><td>49.8</td><td>81.8</td><td>96.2</td><td>70.8</td><td>75.0</td><td>81.3</td></tr><tr><td>AdaptLLM</td><td>-</td><td>-</td><td>一</td><td>49.7</td><td>31.5</td><td>27.6</td><td>30.9</td></tr><tr><td>InstructPT</td><td>-</td><td>-</td><td>-</td><td>76.1</td><td>47.4</td><td>44.5</td><td>55.2</td></tr><tr><td>MemoryLLM</td><td>56.4</td><td>31.8</td><td>56.3</td><td>57.7</td><td>37.8</td><td>55.5</td><td>37.2</td></tr><tr><td>RAG (BM25)</td><td>66.6</td><td>37.4</td><td>80.8</td><td>83.7</td><td>69.3</td><td>69.0</td><td>63.4</td></tr><tr><td>RAG (FAISS)</td><td>66.5</td><td>38.8</td><td>81.3</td><td>82.5</td><td>69.1</td><td>71.5</td><td>64.6</td></tr><tr><td>Hermes-3</td><td>63.6</td><td>37.9</td><td>74.9</td><td>73.9</td><td>54.5</td><td>68.5</td><td>54.9</td></tr><tr><td>Reflection-Llama</td><td>65.5</td><td>37.5</td><td>82.2</td><td>80.8</td><td>67.4</td><td>77.5</td><td>40.8</td></tr><tr><td>Llama3.1-8B SEMIEVOL</td><td>70.3</td><td>54.3</td><td>83.4</td><td>96.9</td><td>71.6</td><td>76.0</td><td>83.6</td></tr><tr><td>Error Reduction</td><td>11.6%</td><td>13.6%</td><td>16.9%</td><td>81.4%</td><td>4.70%</td><td>9.43%</td><td>66.5%</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the performance of various models, including SEMIEVOL, on seven different datasets, showcasing the effectiveness of SEMIEVOL across various tasks and models.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across different models on various datasets.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](charts/charts_7_0.png "🔼 Figure 4: Entropy distribution indicates SEMIEVOL can enhanced response confidence. Lower entropy values indicate more confident predictions.")

> 🔼 The chart displays the entropy distribution of Vanilla, SFT, and SEMIEVOL models' predictions on MMLU and MMLU-Pro datasets, illustrating SEMIEVOL's enhanced response confidence.
> <details>
> <summary>read the caption</summary>
> Figure 4: Entropy distribution indicates SEMIEVOL can enhanced response confidence. Lower entropy values indicate more confident predictions.
> </details>


![](charts/charts_7_1.png "🔼 Figure 6: Category-wise performance of SEMIEVOL.")

> 🔼 The radar chart displays a category-wise comparison of the performance of Vanilla, SFT, and SEMIEVOL models on the MMLU-Pro dataset using Llama-3.1 8B.
> <details>
> <summary>read the caption</summary>
> Figure 6: Category-wise performance of SEMIEVOL.
> </details>


![](charts/charts_7_2.png "🔼 Figure 3: Sensitivity analysis of SEMIEVOL's performance under different n and θ on variant datasets.")

> 🔼 The chart displays the sensitivity analysis of SEMIEVOL's performance across different values of n (number of collaborating models) and θ (data selection ratio) on MMLU and MMLU-Pro datasets.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sensitivity analysis of SEMIEVOL's performance under different n and θ on variant datasets.
> </details>


![](charts/charts_8_0.png "🔼 Figure 7: Iterative evolution performance, each iteration means perform a round of SEMIEVOL.")

> 🔼 The chart displays the iterative evolution performance of the SEMIEVOL model on MMLU and MMLU-Pro datasets across four iterations.
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
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents a comparison of various LLMs' performance across seven datasets, using different fine-tuning strategies, including vanilla, SFT, and SEMIEVOL, showing error reduction percentages.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Base Model</td><td colspan="4">MMLU (Dunlabeled / Dlabled)</td><td colspan="4">MMLU-Pro (Dunlabeled / Dlabled)</td></tr><tr><td></td><td>50%</td><td>100%</td><td>200%</td><td>300%</td><td>50%</td><td>100%</td><td>200%</td><td>300%</td></tr><tr><td>GPT-4o mini</td><td>78.2</td><td>78.6</td><td>79.3</td><td>79.9</td><td>58.9</td><td>59.5</td><td>60.1</td><td>60.8</td></tr><tr><td>Llama3.1-8B</td><td>68.3</td><td>69.5</td><td>69.7</td><td>70.3</td><td>50.8</td><td>52.0</td><td>53.5</td><td>54.3</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents a performance comparison of various LLMs (GPT-40-mini and Llama-3.1-8B) using different fine-tuning strategies (vanilla, SFT, and SEMIEVOL) across seven diverse datasets.


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
{{< /gallery >}}