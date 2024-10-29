---
title: "Harnessing Webpage UIs for Text-Rich Visual Understanding"
summary: "MultiUI, a massive dataset of 7.3M multimodal instructions synthesized from web UIs, significantly boosts text-rich visual understanding model performance across diverse tasks, exceeding specialized m..."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-18"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

This research introduces MultiUI, a large-scale dataset created by leveraging webpage user interfaces (UIs).  Instead of using direct visual input, the researchers used large language models (LLMs) to process structured text representations from webpage accessibility trees.  This resulted in 7.3 million samples with multimodal instructions, paired with UI screenshots.  The researchers found that models trained on this dataset significantly outperformed existing models on various web UI tasks (achieving up to 48% improvement).  Surprisingly, the models also generalized well to non-web UI tasks and even non-UI domains like document understanding and chart interpretation. The findings highlight the broad applicability of web UI data for training robust text-rich visual understanding models.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13824" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13824" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in multimodal learning and visual understanding.  It introduces a novel dataset and training methodology that significantly improves the performance of models on text-rich visual tasks, surpassing even specialized models.  The work opens new avenues for research into general-purpose multimodal models and the use of web UI data for training.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MultiUI dataset improves text-rich visual understanding model performance on diverse tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Web UI data is surprisingly effective for training general-purpose multimodal models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Models trained on MultiUI generalize well beyond web UI tasks to document, OCR, and chart understanding. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure shows an overview of the MultiUI dataset, highlighting its size, diversity, and the generalization capabilities of a model trained on it across various tasks, including GUI and non-GUI tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MultiUI, a 7M multimodal instruction-tuning dataset built from a diverse collection of Webpage UIs. The model UIX, trained on MultiUI, generalizes effectively to a broad range of unseen scenarios, including GUI understanding (web and mobile interfaces) and, surprisingly, non-GUI tasks such as document and chart understanding.
> </details>





![](charts/charts_10_0.png)

> 🔼 The chart compares the performance of single-stage and two-stage training strategies on various benchmarks, showing that the two-stage approach generally yields better results.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison between single-stage and two-stage training strategies.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Platform</td><td colspan="5">Visual Understanding and Reasoning</td><td colspan="2">Grounding</td><td colspan="2">Text Recognition</td><td rowspan="2">Total</td></tr><tr><td>Web Capt.</td><td>Img Capt.</td><td>Web QA</td><td>Img QA</td><td>Act. Pred.</td><td>Action</td><td>Elem.</td><td>Head</td><td>Elem.</td></tr><tr><td>Desktop</td><td>150K</td><td>526K</td><td>1.1M</td><td>979K</td><td>65K</td><td>1.2M</td><td>694K</td><td>98K</td><td>175K</td><td>5.0M</td></tr><tr><td>Mobile</td><td>100K</td><td>0</td><td>936K</td><td>0</td><td>34K</td><td>613K</td><td>488K</td><td>74K</td><td>41K</td><td>2.3M</td></tr><tr><td>Total</td><td>250K</td><td>526K</td><td>2.1M</td><td>979K</td><td>99K</td><td>1.8M</td><td>1.2M</td><td>172K</td><td>217K</td><td>7.3M</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the statistics of the MultiUI dataset, breaking down the number of samples by platform (desktop and mobile), task category (visual understanding and reasoning, grounding, and text recognition), and specific task.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of our dataset MultiUI.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_2_0.png)

> 🔼 This figure compares MultiUI with prior methods for constructing multimodal instruction samples from web UIs, highlighting MultiUI's use of powerful LLMs to synthesize diverse and generalizable training samples.
> <details>
> <summary>read the caption</summary>
> Figure 2: MultiUI compared with previous methods. Our proposed MultiUI construction approach synthesizes full structured webpage UIs into multimodal instruction samples of versatile tasks by harnessing powerful LLMs, which leads to more generalizable training samples.
> </details>



![](figures/figures_3_0.png)

> 🔼 The figure illustrates the four main stages of the MultiUI dataset construction pipeline: website scraping, curation, task extraction, and generalization.
> <details>
> <summary>read the caption</summary>
> Figure 3: Construction pipeline of MultiUI. The process consists of four main stages: (1) Website Scraping; (2) Website Curation with Llama-3-70b-Instruct; (3) Task Extraction utilizing Llama-3-70b-Instruct, GPT-40 mini, and rule-based approaches to generate Web UI tasks across three categories: visual understanding and reasoning, text recognition, and grounding; (4) For each task, generate tasks samples by applying the diverse instruction templates paraphrased by GPT-40.
> </details>



![](figures/figures_4_0.png)

> 🔼 The figure illustrates the MultiUI dataset, highlighting its size, diversity of tasks and UI types, and the model's generalization capabilities across various scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MultiUI, a 7M multimodal instruction-tuning dataset built from a diverse collection of Webpage UIs. The model UIX, trained on MultiUI, generalizes effectively to a broad range of unseen scenarios, including GUI understanding (web and mobile interfaces) and, surprisingly, non-GUI tasks such as document and chart understanding.
> </details>



![](figures/figures_19_0.png)

> 🔼 The figure illustrates the MultiUI dataset, showing its size, sources, tasks covered, and the generalization capabilities of a model trained on it, highlighting its effectiveness for text-rich visual understanding.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MultiUI, a 7M multimodal instruction-tuning dataset built from a diverse collection of Webpage UIs. The model UIX, trained on MultiUI, generalizes effectively to a broad range of unseen scenarios, including GUI understanding (web and mobile interfaces) and, surprisingly, non-GUI tasks such as document and chart understanding.
> </details>



![](figures/figures_25_0.png)

> 🔼 Figure 1 is an overview of the MultiUI dataset, showing its composition, the model trained on it (UIX), and the model's generalization capabilities across diverse tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MultiUI, a 7M multimodal instruction-tuning dataset built from a diverse collection of Webpage UIs. The model UIX, trained on MultiUI, generalizes effectively to a broad range of unseen scenarios, including GUI understanding (web and mobile interfaces) and, surprisingly, non-GUI tasks such as document and chart understanding.
> </details>



![](figures/figures_26_0.png)

> 🔼 Figure 1 provides a high-level overview of MultiUI, a large-scale multimodal instruction-tuning dataset derived from web UIs, and demonstrates the model's generalization capabilities across various tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MultiUI, a 7M multimodal instruction-tuning dataset built from a diverse collection of Webpage UIs. The model UIX, trained on MultiUI, generalizes effectively to a broad range of unseen scenarios, including GUI understanding (web and mobile interfaces) and, surprisingly, non-GUI tasks such as document and chart understanding.
> </details>



![](figures/figures_26_1.png)

> 🔼 The figure illustrates the MultiUI dataset, its construction, and the generalization ability of a model trained on it to various tasks including GUI and non-GUI tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MultiUI, a 7M multimodal instruction-tuning dataset built from a diverse collection of Webpage UIs. The model UIX, trained on MultiUI, generalizes effectively to a broad range of unseen scenarios, including GUI understanding (web and mobile interfaces) and, surprisingly, non-GUI tasks such as document and chart understanding.
> </details>



![](figures/figures_27_0.png)

> 🔼 The figure illustrates the MultiUI dataset, showing its composition, the training process, and the generalization ability of the model trained on it to various tasks, including GUI and non-GUI tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MultiUI, a 7M multimodal instruction-tuning dataset built from a diverse collection of Webpage UIs. The model UIX, trained on MultiUI, generalizes effectively to a broad range of unseen scenarios, including GUI understanding (web and mobile interfaces) and, surprisingly, non-GUI tasks such as document and chart understanding.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_10_1.png "🔼 Figure 6: Effect of scaling up sample size.")

> 🔼 The chart displays the effect of increasing the size of the MultiUI dataset on the average scores of four task categories: GUI Understanding, GUI Grounding, General OCR/Doc/Chart, and General Grounding.
> <details>
> <summary>read the caption</summary>
> Figure 6: Effect of scaling up sample size.
> </details>


![](charts/charts_11_0.png "🔼 Figure 7: Ablation study of training on four task types.")

> 🔼 The chart displays the ablation study results of training on different task types (QA, Caption, OCR, Grounding) and their combinations for four different benchmarks (VisualWebBench, ScreenSpot, DocVQA, RefCOCO+).
> <details>
> <summary>read the caption</summary>
> Figure 7: Ablation study of training on four task types.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Model</td><td colspan="4">GUI Understanding</td><td colspan="4">GUI Grounding</td></tr><tr><td>Visual WebBench</td><td>Web SRC</td><td>SQA Short</td><td>Widget Cap</td><td>VWB Ele-G</td><td>VWB Act-G</td><td>SSpot</td><td>RefExp</td></tr><tr><td>GPT-4V OpenAI, 2023</td><td>64.6</td><td>-</td><td>-</td><td>-</td><td>0.2</td><td>0</td><td>-</td><td>-</td></tr><tr><td>Pix2Struct Lee et al. 2023</td><td>-</td><td>-</td><td>-</td><td>136.7*</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>S4 Gao et al. 2024</td><td>-</td><td>61.1*</td><td>-</td><td>130.6*</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>SeeClick Cheng et al 2024</td><td>9.7</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>CogAgent Hong et al. 2023</td><td>28.7</td><td>-</td><td>-</td><td>-</td><td>29.3</td><td>36.6</td><td>-</td><td>-</td></tr><tr><td>ScreenAI Baechler et al. 2024</td><td>-</td><td>87.2*</td><td>94.8*</td><td>156.4*</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td colspan="9">Trained with LLaVA-1.5 data</td></tr><tr><td>LLaVA-1.5-7B Liu et al. 2023a</td><td>17.0</td><td>30.9</td><td>42.6</td><td>20.0</td><td>0.7</td><td>0.0</td><td>0.6</td><td>0.4</td></tr><tr><td>LLaVA-1.5-13B Liu et al. 2023a</td><td>19.4</td><td>32.5</td><td>46.0</td><td>10.2</td><td>0.0</td><td>0.0</td><td>0.9</td><td>1.1</td></tr><tr><td>LLaVA-Vicuna+</td><td>23.1</td><td>41.5</td><td>53.0</td><td>38.4</td><td>0.0</td><td>0.0</td><td>1.3</td><td>1.2</td></tr><tr><td colspan="9">Trained with LLaVA-1.5 data + MultiUI</td></tr><tr><td>UIX-Vicuna</td><td>71.1</td><td>69.5</td><td>73.9</td><td>66.5</td><td>55.5</td><td>26.7</td><td>44.7</td><td>35.8</td></tr><tr><td>△ over LLaVA-Vicuna</td><td>+48.0</td><td>+28.0</td><td>+20.9</td><td>+28.1</td><td>+55.5</td><td>+26.7</td><td>+43.4</td><td>+34.6</td></tr><tr><td colspan="9">Trained with LLaVA-NeXT data</td></tr><tr><td>LLaVA-1.6-7B Liu et al. 2023a</td><td>36.0</td><td>67.2</td><td>66.0</td><td>35.4</td><td>0.2</td><td>0.0</td><td>0.9</td><td>0.4</td></tr><tr><td>LLaVA-1.6-13B Liu et al. 2023a</td><td>39.4</td><td>71.2</td><td>68.3</td><td>23.4</td><td>0.0</td><td>1.0</td><td>0.4</td><td>0.0</td></tr><tr><td>LLaVA-1.6-34B Liu et al. 2023a</td><td>50.5</td><td>83.2</td><td>74.0</td><td>46.3</td><td>1.7</td><td>3.0</td><td>2.8</td><td>3.4</td></tr><tr><td>LLaVA-NeXT-8B Liu et al 2024b</td><td>42.1</td><td>72.8</td><td>68.0</td><td>49.8</td><td>1.0</td><td>0.0</td><td>1.7</td><td>1.1</td></tr><tr><td>LLaVA-Llama3.1+ Liu et al 2024b</td><td>35.3</td><td>65.0</td><td>65.7</td><td>34.2</td><td>0.5</td><td>0.0</td><td>1.3</td><td>0.9</td></tr><tr><td>LLaVA-Qwen2+ Liu et al. 2024b</td><td>41.7</td><td>72.5</td><td>68.6</td><td>38.0</td><td>1.2</td><td>0.0</td><td>1.3</td><td>1.9</td></tr><tr><td colspan="9">Trained with MultiUI+ LLaVA-NeXT data</td></tr><tr><td>UIX-Llama3.1</td><td>74.2</td><td>75.3</td><td>72.7</td><td>55.6</td><td>16.2</td><td>11.9</td><td>22.2</td><td>17.9</td></tr><tr><td>△ over LLaVA-Llama3.1</td><td>+38.9</td><td>+10.3</td><td>+7.0</td><td>+21.4</td><td>+16.2</td><td>+11.9</td><td>+20.9</td><td>+17.0</td></tr><tr><td>UIX-Qwen2-7B</td><td>75.9</td><td>82.9</td><td>78.8</td><td>72.7</td><td>66.1</td><td>35.6</td><td>55.2</td><td>43.5</td></tr><tr><td>△ over LLaVA-Qwen2</td><td>+34.2</td><td>+10.4</td><td>+10.2</td><td>+34.7</td><td>+64.9</td><td>+35.6</td><td>+53.9</td><td>+41.6</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the performance comparison of different models on GUI understanding and grounding benchmarks, highlighting the improvement achieved by the proposed model.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Model</td><td colspan="6">General OCR / DocQA / ChartQA</td><td>General Grounding</td></tr><tr><td>Doc VQA</td><td>Chart QA</td><td>Text VQA</td><td>Info VQA</td><td>Visual MRC</td><td>OCR Bench</td><td>RefCOCO+</td></tr><tr><td>GPT-4V OpenAI, 2023</td><td>88.4</td><td>78.5</td><td>78</td><td>-</td><td>-</td><td>64.5</td><td>-</td></tr><tr><td>GPT-4o</td><td>92.8</td><td>85.7</td><td>-</td><td>-</td><td>-</td><td>73.6</td><td>-</td></tr><tr><td>Pix2Struct Lee et al 2023</td><td>76.6</td><td>58.6</td><td>-</td><td>40</td><td>-</td><td>-</td><td>-</td></tr><tr><td>S4 Gao et al.. 2024</td><td>-</td><td>55.0</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>CogAgent Hong et al. 2023</td><td>81.6</td><td>68.4</td><td>76.1</td><td>44.5</td><td>-</td><td>-</td><td>-</td></tr><tr><td>DocOwl-1.5-Chat Hu et al., 2024a</td><td>82.2</td><td>70.2</td><td>68.6</td><td>50.7</td><td>-</td><td>-</td><td>-</td></tr><tr><td>DocOwl2 Hu et al. 2024b</td><td>80.7</td><td>70</td><td>66.7</td><td>46.4</td><td>-</td><td>-</td><td>-</td></tr><tr><td colspan="8">Trained with LLaVA-1.5 data</td></tr><tr><td>LLaVA-1.5-7B Liu et al. 2023a</td><td>28.1</td><td>18.1</td><td>46.0</td><td>25.8</td><td>35.3</td><td>31.3</td><td>50.0</td></tr><tr><td>LLaVA-1.5-13B (Liu et al. 2023a</td><td>30.2</td><td>18.2</td><td>48.7</td><td>29.4</td><td>38.3</td><td>52.1</td><td>59.9</td></tr><tr><td>LLaVA-Vicuna+</td><td>46.1</td><td>21.2</td><td>59.6</td><td>31.9</td><td>39.7</td><td>38.1</td><td>61.7</td></tr><tr><td colspan="8">Trained with MultiUI + LLaVA-1.5 data</td></tr><tr><td>UIX- Vicuna</td><td>72.8</td><td>24.2</td><td>67.0</td><td>41.6</td><td>43.3</td><td>53.4</td><td>65.7</td></tr><tr><td>△ over LLaVA- Vicuna</td><td>+26.7</td><td>+3.0</td><td>+7.4</td><td>+9.7</td><td>+3.6</td><td>+15.3</td><td>+4.0</td></tr><tr><td colspan="8">Trained with LLaVA-NeXT data</td></tr><tr><td>LLaVA-1.6-7B Liu et al. 2023a</td><td>74.4</td><td>54.8</td><td>64.8</td><td>37.0</td><td>33.3</td><td>52.1</td><td>77.0</td></tr><tr><td>LLaVA-1.6-13B Liu et al. 2023a</td><td>77.5</td><td>62.4</td><td>67.0</td><td>41.5</td><td>35.9</td><td>55.0</td><td>80.8</td></tr><tr><td>LLaVA-1.6-34B Liu et al. 2023a</td><td>83.9</td><td>68.6</td><td>69.4</td><td>51.3</td><td>37.9</td><td>57.2</td><td>84.8</td></tr><tr><td>LLaVA-NeXT-8B Liu et al. 2024b</td><td>78.2</td><td>69.2</td><td>65.3</td><td>37.6</td><td>29.3</td><td>55.2</td><td>79.5</td></tr><tr><td>LLaVA-Llama3.1+</td><td>74.7</td><td>66.5</td><td>64.3</td><td>35.7</td><td>46.8</td><td>54.0</td><td>74.8</td></tr><tr><td>LLaVA-Qwen2+</td><td>76.5</td><td>68.5</td><td>67.0</td><td>41.1</td><td>44.1</td><td>55.7</td><td>75.9</td></tr><tr><td colspan="8">Trained with MultiUI + LLaVA-NeXT data</td></tr><tr><td>UIX-Llama3.1</td><td>78.0</td><td>66.9</td><td>65.1</td><td>44.2</td><td>49.7</td><td>58.6</td><td>71.7</td></tr><tr><td>△ over LLaVA-Llama3.1</td><td>+3.3</td><td>+0.4</td><td>+0.8</td><td>+8.5</td><td>+2.9</td><td>+4.6</td><td>-3.1</td></tr><tr><td>UIX-Qwen2</td><td>85.3</td><td>74.0</td><td>72.7</td><td>52.2</td><td>49.1</td><td>66.3</td><td>79.1</td></tr><tr><td>△ over LLaVA-Qwen2</td><td>+8.8</td><td>+5.5</td><td>+5.7</td><td>+11.1</td><td>+5.0</td><td>+10.6</td><td>+3.2</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 presents the performance of various models on general OCR, document question answering (DocQA), chart question answering (ChartQA), and grounding tasks, highlighting the best-performing models in each category.


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td rowspan="3">Model</td><td colspan="6">Mind2Web</td></tr><tr><td colspan="2">Cross-Task</td><td colspan="2">Cross-Website</td><td colspan="2">Cross-Domain</td></tr><tr><td>Step SR</td><td>Element Acc.</td><td>Step SR</td><td>Element Acc.</td><td>Step SR</td><td>Element Acc.</td></tr><tr><td>SeeClick Cheng et al. 2024</td><td>25.5�</td><td>28.3†</td><td>16.4†</td><td>21.4†</td><td>20.8†</td><td>23.2t</td></tr><tr><td>CogAgent(Hong et al. 2023</td><td>26.9</td><td>30.2</td><td>23.4</td><td>27.3</td><td>28.5</td><td>33.1</td></tr><tr><td>LLaVA-Qwen2</td><td>-</td><td>7.5</td><td>-</td><td>7.6</td><td>-</td><td>10.4</td></tr><tr><td>UIX-Qwen2</td><td>-</td><td>13.5</td><td>-</td><td>9.8</td><td>-</td><td>13.8</td></tr><tr><td>LLaVA-Qwen2-M2W</td><td>20.4</td><td>24.3</td><td>14.3</td><td>20.1</td><td>16.4</td><td>20.0</td></tr><tr><td>UIX-Qwen2-M2W</td><td>38.2</td><td>43.4</td><td>31.0</td><td>39.2</td><td>34.9</td><td>40.4</td></tr><tr><td>△ over LLaVA-Qwen2-M2W</td><td>+17.8</td><td>+19.1</td><td>+16.7</td><td>+19.1</td><td>+18.5</td><td>+20.4</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of the MultiUI dataset, showing the number of samples for each task category and platform (desktop and mobile).


{{< table-caption >}}
<br><table id='9' style='font-size:16px'><tr><td>Model</td><td>MMMU</td><td>MMBench</td><td>VQA-V2</td></tr><tr><td>LLaVA-Llama3.1</td><td>38.8</td><td>72.0</td><td>80.0</td></tr><tr><td>UIX-Llama3.1</td><td>42.3</td><td>74.7</td><td>80.0</td></tr><tr><td>LLaVA-Qwen2</td><td>44.7</td><td>76.5</td><td>81.6</td></tr><tr><td>UIX-Qwen2</td><td>41.8</td><td>77.4</td><td>82.1</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 5 presents the performance of different models on three general multimodal benchmarks: MMMU, MMBench, and VQA-V2, showcasing the models' capabilities in various multimodal tasks.


{{< table-caption >}}
<br><table id='8' style='font-size:14px'><tr><td>PermanentToulst Wedding trip part 3: arrival in England</td><td>Response: The image depicts a stunning, gothic-style chapel, likely King's College Chapel at the University of Cambridge, illuminated during the night. The chapel stands tall with its intricate stone architecture, large pointed windows, and spires reaching towards a sky filled with textured clouds, dramatically lit by the moon. The moonlight and artificial lighting create a serene yet slightly eerie ambiance. The foreground is dominated by a grassy field and trees, which frame the structure and add to the overall picturesque and timeless feel of the scene.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistical distribution of 7.3 million samples across various tasks and platforms within the MultiUI dataset.


{{< table-caption >}}
<br><table id='5' style='font-size:16px'><tr><td>Prompt: What is the phone number for customer inquiries? Using the image as a reference, give an elaborate response to the question.</td></tr><tr><td>ONEWEST.MLT Two Months FREE! INTERNET SERVICE PROVIDER Use Prom⌀tional Code 630 ▶▶ DSL or Dial-Up CLICK FOR MORE Call 1 -86 6-ONEW EST</td></tr><tr><td>Response: The phone number "1-866-ONEWEST" is provided at the bottom of the advertisement for customers to contact for inquiries or support.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of the MultiUI dataset, showing the number of samples for each task and platform.


{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td>best possible experience. We therefore feel that this course of action is the responsible thing to do as producers, both for our cast and production staff at the theatre and for our audiences. This is not a</td><td rowspan="3">Quigley said "201ceach Response: and every ticket holder will be offered reseating options and should contact their original point of purchase for further details".</td></tr><tr><td>decision taken lightly and I'd like to apologise to those who had booked, and indeed sold out, these initial two performances." Quigley said "each and every ticket holder will be offered reseating options and should contact their original point ofpurchase for further details".</td></tr><tr><td>"The entire I Can't Sing! famity cannot wait for everyone to see the show and we thank everyone for their patience and understanding," she added.</td></tr><tr><td>Monday 24th February 2014</td><td></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of the MultiUI dataset, showing the number of samples for each task and platform (desktop and mobile).


{{< table-caption >}}
<br><table id='6' style='font-size:16px'><tr><td>Prompt: Please locate and retrieve the main header text of the webpage.</td><td>Making Business Fun</td></tr><tr><td>Response: Making Business Fun</td><td>ADVERTISEMENT BUSINESS MANAGEMENT ETHICS FINANCE</td></tr><tr><td></td><td>rcial Printing Companies Provide Several Advantages</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of the MultiUI dataset, showing the number of samples for each platform (desktop and mobile) and task category (visual understanding and reasoning, grounding, and text recognition).


{{< table-caption >}}
<table id='8' style='font-size:14px'><tr><td colspan="2">Element Grounding</td></tr><tr><td>Prompt: Based on the element description: "A5 Sportback", identify the , UI element and provide its bounding box coordinates. Use four float numbers between 0 and 1, [left, top, right, bottom].</td><td rowspan="3">CATEGORIES · 2017 · 2018 · 2019 · 2020 · 2021 · 2022 ders the purchase of a luxury performance vehicle, such as the Audi Q8, there are many · 2023 ts expected to be realized bythe ownership of a quality, precision vehicle. The buyer · 2024 fined and stylish design, created with top-of-line materials. Performance will likely be a · A5 Sportback ision-making, meaning a true gem will include the horsepower and handling expected of · A8 de. Comfort and luxury features should be the standard, leaving bothdriver and · Audi A3 ing for nothing in pursuit of an amazing experience. The 2019 Audi Q8 checks all the · Audi A4 consider Its exciting features, impressive performance, and head-turning style. Audi has · Audi AS every detail, from design to comfort to sound quality. · Audi A6 · Audi A6 allr⌀ad</td></tr><tr><td></td></tr><tr><td>Response: [0.706, 0.643, 0.781, 0.657]</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of the MultiUI dataset, showing the number of samples for each task and platform (desktop and mobile).


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Model</td><td>LLM</td><td>Vision Encoder</td><td>Max Res.</td><td>Training Data</td></tr><tr><td>UIX-Vicuna</td><td>Vicuna-7B-v1.5</td><td>CLIP</td><td>672 x 672</td><td>LLaVA 1.5 + MultiUI</td></tr><tr><td>UIX-Llama3.1</td><td>Llama-3.1-8B-Instruct</td><td>CLIP</td><td>672 x 672</td><td>LLaVA 1.6 + MultiUI</td></tr><tr><td>UIX-Qwen2</td><td>Qwen2-7B-Instruct</td><td>Siglip</td><td>768 x 768</td><td>LLaVA 1.6 + MultiUI</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of the MultiUI dataset, breaking down the number of samples across different platforms (desktop and mobile), tasks (visual understanding and reasoning, grounding, and text recognition), and subtasks.


{{< table-caption >}}
<table id='4' style='font-size:18px'><tr><td>Benchmarks</td><td>Metric</td></tr><tr><td>VisualWebBench</td><td>Aggregated Score</td></tr><tr><td>WebSRC</td><td>SQuAD-F1</td></tr><tr><td>ScreenQA-short</td><td>SQuAD-F1</td></tr><tr><td>WidgetCap</td><td>CIDEr</td></tr><tr><td>Element Ground (VWB)</td><td>Accuracy (IoU>0.5)</td></tr><tr><td>Action Ground (VWB)</td><td>Accuracy (IoU>0.5)</td></tr><tr><td>ScreenSpot</td><td>Accuracy (IoU>0.5)</td></tr><tr><td>RefExp</td><td>Accuracy (IoU>0.5)</td></tr><tr><td>DocVQA</td><td>ANLS</td></tr><tr><td>ChartQA</td><td>Relaxed Accuracy</td></tr><tr><td>TextVQA</td><td>Exact Match</td></tr><tr><td>InfoVQA</td><td>ANLS</td></tr><tr><td>VisualMRC</td><td>ROUGE-L</td></tr><tr><td>OCRBench</td><td>Accuracy (%)</td></tr><tr><td>RefCOCO+ (REC)</td><td>Accuracy (IoU>0.5)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of the MultiUI dataset, showing the number of samples for various tasks and platforms.


{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td></td><td>LLaVA-</td><td>LLaVA-</td><td>LLaVA- 1.6-7B</td><td>LLaVA- 1.6-13B</td><td>LLaVA-</td><td>LLaVA-</td></tr><tr><td></td><td>1.5-7B 17.0</td><td>1.5-13B 19.4</td><td>36.0</td><td>39.4</td><td>1.6-34B</td><td>NeXT-8B 42.1</td></tr><tr><td>VisualWebBench WebSRC</td><td>30.9</td><td>32.5</td><td>67.2</td><td>71.2</td><td>50.5 83.2</td><td>72.8</td></tr><tr><td>ScreenQA-short</td><td>42.6</td><td>46</td><td>66</td><td>68.3</td><td>74</td><td>68</td></tr><tr><td>WidgetCap</td><td>20</td><td>10.2</td><td>35.4</td><td>23.4</td><td>46.3</td><td></td></tr><tr><td>Element Ground (VWB)</td><td></td><td></td><td></td><td></td><td></td><td>49.8</td></tr><tr><td></td><td>0.73</td><td>0</td><td>0.24</td><td>0</td><td>1.7</td><td>0.97</td></tr><tr><td>Action Ground (VWB)</td><td>0</td><td>0</td><td>0</td><td>0.99</td><td>3</td><td>0</td></tr><tr><td>ScreenSpot</td><td>0.6</td><td>0.9</td><td>0.9</td><td>0.4</td><td>2.8</td><td>1.7</td></tr><tr><td>RefExp</td><td>0.4</td><td>1.1</td><td>0.4</td><td>0</td><td>3.4</td><td>1.1</td></tr><tr><td>DocVQA</td><td>28.1</td><td>30.2 18.2</td><td>74.4</td><td>77.5</td><td>83.9</td><td>78.2</td></tr><tr><td>ChartQA TextVQA</td><td>18.1 46</td><td>48.7</td><td>54.8 64.8</td><td>62.4 67</td><td>68.6</td><td>69.2 65.3</td></tr><tr><td>InfoVQA</td><td>25.8</td><td>29.4</td><td>37</td><td>41.5</td><td>69.4 51.3</td><td></td></tr><tr><td>VisualMRC</td><td></td><td>38.3</td><td>33.3</td><td>35.9</td><td>37.9</td><td>37.6 29.3</td></tr><tr><td></td><td>35.3 31.3</td><td></td><td>52.1</td><td></td><td></td><td></td></tr><tr><td>OCRBench</td><td>50</td><td>33.6</td><td></td><td>55</td><td>57.2</td><td>55.2</td></tr><tr><td>RefCOCO+</td><td></td><td>59.9 35.4</td><td>77 36.3</td><td>80.8 35</td><td>84.8</td><td>79.5</td></tr><tr><td>MMMU MMBench</td><td>36.3</td><td></td><td>67.1</td><td>69.2</td><td>49.3</td><td>40.3</td></tr><tr><td>VQAv2</td><td>64.2 76.1</td><td>68.5 77.8</td><td>79.9</td><td>80.6</td><td>78.1 81.8</td><td>72.2 80.7</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of the MultiUI dataset, showing the number of samples for each task and platform.


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td></td><td>LLaVA- Vicuna</td><td>UIX- Vicuna</td><td>LLaVA- Llama3.1</td><td>UIX- Llama3.1</td><td>LLaVA- Qwen2</td><td>UIX- Qwen2</td></tr><tr><td>VisualWebBench</td><td>23.1</td><td>71.1</td><td>35.3</td><td>74.2</td><td>41.7</td><td>75.9</td></tr><tr><td>WebSRC</td><td>41.5</td><td>69.5</td><td>65.0</td><td>75.3</td><td>72.5</td><td>82.9</td></tr><tr><td>ScreenQA-short</td><td>53.0</td><td>73.9</td><td>65.7</td><td>72.7</td><td>68.6</td><td>78.8</td></tr><tr><td>WidgetCap</td><td>38.4</td><td>66.5</td><td>34.2</td><td>55.6</td><td>38.0</td><td>72.7</td></tr><tr><td>Element Ground (VWB)</td><td>0.0</td><td>55.5</td><td>0.5</td><td>16.7</td><td>1.2</td><td>66.1</td></tr><tr><td>Action Ground (VWB)</td><td>0.0</td><td>26.7</td><td>0.0</td><td>11.9</td><td>0.0</td><td>35.6</td></tr><tr><td>ScreenSpot</td><td>1.3</td><td>44.7</td><td>1.3</td><td>22.2</td><td>1.3</td><td>55.2</td></tr><tr><td>RefExp</td><td>1.2</td><td>35.8</td><td>0.9</td><td>17.9</td><td>1.9</td><td>43.5</td></tr><tr><td>DocVQA</td><td>46.1</td><td>72.8</td><td>74.7</td><td>78.0</td><td>76.5</td><td>85.3</td></tr><tr><td>ChartQA</td><td>21.2</td><td>24.2</td><td>66.5</td><td>66.9</td><td>68.5</td><td>74.0</td></tr><tr><td>TextVQA</td><td>59.6</td><td>67.0</td><td>64.3</td><td>65.1</td><td>67.0</td><td>72.7</td></tr><tr><td>InfoVQA</td><td>31.9</td><td>41.6</td><td>35.7</td><td>44.2</td><td>41.1</td><td>52.2</td></tr><tr><td>VisualMRC</td><td>39.7</td><td>43.3</td><td>46.8</td><td>49.7</td><td>44.1</td><td>49.1</td></tr><tr><td>OCRBench</td><td>38.1</td><td>53.4</td><td>54.0</td><td>58.6</td><td>55.7</td><td>66.3</td></tr><tr><td>RefCOCO+</td><td>61.7</td><td>65.7</td><td>74.8</td><td>71.7</td><td>75.9</td><td>79.1</td></tr><tr><td>MMMU</td><td>34.7</td><td>33.6</td><td>38.8</td><td>42.3</td><td>44.7</td><td>41.8</td></tr><tr><td>MMBench</td><td>66.1</td><td>66.9</td><td>72.0</td><td>74.7</td><td>76.5</td><td>77.4</td></tr><tr><td>VQAv2</td><td>78.5</td><td>79.8</td><td>80.0</td><td>80.0</td><td>81.6</td><td>82.1</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the complete performance results of the three UIX models (UIX-Vicuna, UIX-Llama3.1, UIX-Qwen2) and their corresponding LLaVA baselines across various benchmarks, showcasing the impact of different model backbones on performance.


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
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}