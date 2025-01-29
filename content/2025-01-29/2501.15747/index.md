---
title: "IndicMMLU-Pro: Benchmarking Indic Large Language Models on Multi-Task Language Understanding"
summary: "IndicMMLU-Pro: a new benchmark rigorously evaluates large language models' multi-task language understanding capabilities across nine major Indian languages, pushing Indic language AI research forward..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Artificial Intelligence Institute, University of South Carolina",]
showSummary: true
date: 2025-01-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.15747 {{< /keyword >}}
{{< keyword icon="writer" >}} Sankalp KJ et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-29 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.15747" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.15747" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.15747/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many languages in India lack resources for natural language processing (NLP) research, hindering development of accurate and culturally sensitive AI models.  This is a significant issue because these languages represent a substantial part of global communication and accessibility needs.  The paper addresses this problem by introducing a comprehensive benchmark. 



The benchmark, called IndicMMLU-Pro, evaluates large language models (LLMs) across nine major Indian languages using a wide range of tasks. It builds upon the MMLU Pro framework, adapting it to the unique linguistic challenges of these languages.  Results from state-of-the-art multilingual models show significant performance variability across languages, highlighting the need for language-specific approaches and further research.  IndicMMLU-Pro is publicly available, promoting reproducibility and advancing research in Indic language AI.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} IndicMMLU-Pro, a new benchmark dataset for evaluating large language models on multi-task language understanding across nine major Indian languages, is introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark addresses the scarcity of resources for Indic language AI research by providing standardized evaluation and facilitating development of more culturally sensitive models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} State-of-the-art multilingual models were evaluated on IndicMMLU-Pro, establishing baselines and highlighting the need for further improvements in Indic language AI. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for **NLP researchers** focusing on low-resource languages.  It introduces IndicMMLU-Pro, a **comprehensive benchmark** for evaluating language models in Indic languages, addressing the scarcity of resources in this area.  The benchmark's public availability promotes **reproducibility** and facilitates further research, potentially driving significant advancements in Indic language AI.

------
#### Visual Insights



![](https://arxiv.org/html/2501.15747/x1.png)

> 🔼 This figure details the creation and validation pipeline for the IndicMMLU-Pro dataset.  Starting with the English MMLU-Pro dataset, a machine translation model (IndicTrans2) translates the content into nine Indic languages.  Rigorous quality checks are then performed, including back-translation to English and evaluation using multiple metrics (chrF++, BLEU, METEOR, TER, SacreBLEU).  Only translations passing these quality thresholds are included in the final dataset. Finally, 13 expert reviewers assess the semantic accuracy, fluency, and linguistic style of the translations, ensuring high quality and cultural sensitivity. This process creates a multilingual benchmark that retains the integrity of the original English dataset while accurately reflecting Indic language nuances.
> <details>
> <summary>read the caption</summary>
> Figure 1: IndicMMLU-Pro Dataset Construction and Evaluation Pipeline. The diagram illustrates the end-to-end process of creating and validating the IndicMMLU-Pro dataset across nine Indic languages. Starting with the English MMLU-Pro dataset, content is translated using IndicTrans2 (1B parameters) and undergoes rigorous quality assurance through back-translation and multiple metric evaluations (chrF++, BLEU, METEOR, TER, and SacreBLEU). Only translations meeting quality thresholds proceed to the final dataset. The workflow also shows the comprehensive evaluation process including expert proofreading involving 13 reviewers who assess semantic accuracy, fluency, and linguistic style. This systematic approach ensures the creation of a high-quality, multilingual benchmark dataset that maintains the integrity of the original MMLU-Pro while adapting to the linguistic nuances of Indic languages.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">GPT-4o mini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.1">IndicBART</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.6.1">IndicBERT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.7.1">RemBERT</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.8" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.8.1">MuRIL</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.2.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">Hindi</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.2.1.2.1">44.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.3" style="padding-left:3.5pt;padding-right:3.5pt;">32.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.4" style="padding-left:3.5pt;padding-right:3.5pt;">18.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.5" style="padding-left:3.5pt;padding-right:3.5pt;">11.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.6" style="padding-left:3.5pt;padding-right:3.5pt;">10.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.7" style="padding-left:3.5pt;padding-right:3.5pt;">11.41</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.2.1.8" style="padding-left:3.5pt;padding-right:3.5pt;">10.87</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.3.2.1" style="padding-left:3.5pt;padding-right:3.5pt;">Bengali</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.2.1">44.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.3" style="padding-left:3.5pt;padding-right:3.5pt;">31.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.4" style="padding-left:3.5pt;padding-right:3.5pt;">N/A</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.5" style="padding-left:3.5pt;padding-right:3.5pt;">12.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.6" style="padding-left:3.5pt;padding-right:3.5pt;">10.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.7" style="padding-left:3.5pt;padding-right:3.5pt;">12.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.3.2.8" style="padding-left:3.5pt;padding-right:3.5pt;">9.90</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.4.3.1" style="padding-left:3.5pt;padding-right:3.5pt;">Punjabi</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.4.3.2.1">40.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.3" style="padding-left:3.5pt;padding-right:3.5pt;">26.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.4" style="padding-left:3.5pt;padding-right:3.5pt;">N/A</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.5" style="padding-left:3.5pt;padding-right:3.5pt;">11.78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.6" style="padding-left:3.5pt;padding-right:3.5pt;">10.36</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.7" style="padding-left:3.5pt;padding-right:3.5pt;">11.06</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.4.3.8" style="padding-left:3.5pt;padding-right:3.5pt;">10.36</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.5.4.1" style="padding-left:3.5pt;padding-right:3.5pt;">Marathi</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.5.4.2.1">42.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.3" style="padding-left:3.5pt;padding-right:3.5pt;">27.13</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">N/A</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.5" style="padding-left:3.5pt;padding-right:3.5pt;">11.65</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.6" style="padding-left:3.5pt;padding-right:3.5pt;">10.59</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.7" style="padding-left:3.5pt;padding-right:3.5pt;">12.93</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.5.4.8" style="padding-left:3.5pt;padding-right:3.5pt;">11.79</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.6.5.1" style="padding-left:3.5pt;padding-right:3.5pt;">Urdu</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.5.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.6.5.2.1">44.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.5.3" style="padding-left:3.5pt;padding-right:3.5pt;">31.13</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.5.4" style="padding-left:3.5pt;padding-right:3.5pt;">N/A</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">12.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.5.6" style="padding-left:3.5pt;padding-right:3.5pt;">11.63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.5.7" style="padding-left:3.5pt;padding-right:3.5pt;">11.32</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.6.5.8" style="padding-left:3.5pt;padding-right:3.5pt;">11.20</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.7.6.1" style="padding-left:3.5pt;padding-right:3.5pt;">Gujarati</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.6.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.7.6.2.1">41.77</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.6.3" style="padding-left:3.5pt;padding-right:3.5pt;">28.29</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.6.4" style="padding-left:3.5pt;padding-right:3.5pt;">N/A</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.6.5" style="padding-left:3.5pt;padding-right:3.5pt;">12.14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.6.6" style="padding-left:3.5pt;padding-right:3.5pt;">11.06</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.6.7" style="padding-left:3.5pt;padding-right:3.5pt;">12.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.7.6.8" style="padding-left:3.5pt;padding-right:3.5pt;">10.79</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.8.7.1" style="padding-left:3.5pt;padding-right:3.5pt;">Telugu</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.7.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.8.7.2.1">41.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.7.3" style="padding-left:3.5pt;padding-right:3.5pt;">26.78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.7.4" style="padding-left:3.5pt;padding-right:3.5pt;">N/A</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.7.5" style="padding-left:3.5pt;padding-right:3.5pt;">12.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.7.6" style="padding-left:3.5pt;padding-right:3.5pt;">11.36</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.7.7" style="padding-left:3.5pt;padding-right:3.5pt;">10.20</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.8.7.8" style="padding-left:3.5pt;padding-right:3.5pt;">9.96</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.9.8.1" style="padding-left:3.5pt;padding-right:3.5pt;">Tamil</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.8.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.9.8.2.1">38.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.8.3" style="padding-left:3.5pt;padding-right:3.5pt;">35.08</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.8.4" style="padding-left:3.5pt;padding-right:3.5pt;">N/A</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.8.5" style="padding-left:3.5pt;padding-right:3.5pt;">11.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.8.6" style="padding-left:3.5pt;padding-right:3.5pt;">10.96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.8.7" style="padding-left:3.5pt;padding-right:3.5pt;">10.98</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.9.8.8" style="padding-left:3.5pt;padding-right:3.5pt;">11.00</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.1.10.9.1" style="padding-left:3.5pt;padding-right:3.5pt;">Kannada</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.9.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.10.9.2.1">38.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.9.3" style="padding-left:3.5pt;padding-right:3.5pt;">25.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.9.4" style="padding-left:3.5pt;padding-right:3.5pt;">N/A</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.9.5" style="padding-left:3.5pt;padding-right:3.5pt;">11.51</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.9.6" style="padding-left:3.5pt;padding-right:3.5pt;">11.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.9.7" style="padding-left:3.5pt;padding-right:3.5pt;">10.87</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.1.10.9.8" style="padding-left:3.5pt;padding-right:3.5pt;">10.62</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a performance comparison of various large language models (LLMs) on the IndicMMLU-Pro benchmark.  The benchmark evaluates LLMs across nine major Indic languages: Hindi, Bengali, Telugu, Marathi, Tamil, Gujarati, Urdu, Kannada, and Punjabi.  These languages are categorized into Indo-Aryan and Dravidian language families. The table shows the accuracy (in percentage) achieved by each model on the IndicMMLU-Pro benchmark for each language.  The LLMs compared include GPT-4o, GPT-4o mini, IndicBART, IndicBERT, RemBERT, MuRIL, and Llama-3.1-8B-Instruct. This allows for a comparison of the performance of both general-purpose and Indic-language-specific models across a diverse set of Indic languages.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison of language models on the IndicMMLU-Pro benchmark across nine Indic languages, including Indo-Aryan (Hindi, Bengali, Punjabi, Marathi, Urdu, and Gujarati) and Dravidian (Telugu, Tamil, and Kannada) languages. Accuracy scores are shown as percentages. Models compared include GPT-4o, GPT-4o mini, IndicBART, IndicBERT, RemBERT, MuRIL, and Llama-3.1-8B-Instruct.
> </details>





### In-depth insights


#### Indic NLP Gaps
The field of Indic NLP faces significant challenges due to **limited resources**, **linguistic diversity**, and **data scarcity**.  The **imbalance in research funding and attention** compared to globally dominant languages like English creates a gap in the availability of high-quality datasets, tools, and pre-trained models crucial for developing accurate and effective NLP systems.  This lack of resources disproportionately affects low-resource Indic languages, hindering progress in areas like machine translation, text classification, and question answering.  Furthermore, the **complexity of Indic languages**, with their rich morphology and diverse scripts, poses unique challenges for NLP model development.  Addressing these gaps requires a **multi-pronged approach**, including increased investment in research and development, collaborative efforts to create and share high-quality datasets, and the development of robust and adaptable NLP techniques tailored to the unique characteristics of Indic languages.

#### Benchmark Design
The effective design of a benchmark is crucial for evaluating large language models (LLMs).  A well-designed benchmark should **accurately reflect real-world tasks** and **challenges**, ensuring that the evaluation results are meaningful and generalizable.  It needs to be **comprehensive**, covering a broad range of tasks and abilities.  **Linguistic diversity**, especially in the context of low-resource languages, is critical and must be incorporated. The benchmark must be **rigorously tested** and verified for bias, to avoid skewed or misleading results.  Furthermore, the benchmark's tasks should be **clearly defined and consistently evaluated**, with transparent metrics to allow researchers to understand and compare model performance. A strong benchmark design also facilitates the identification of strengths and weaknesses of different models, enabling future advancements.

#### Model Variablity
Analysis of the research paper reveals significant **model variability** in performance across different Indic languages. This highlights the **challenge of applying generalized multilingual models** to diverse linguistic contexts.  **No single model consistently outperforms others across all languages**, indicating a need for language-specific model architectures or extensive fine-tuning.  The observed variability underscores the **complexity of Indic languages** and the limitations of current multilingual approaches.  **Future research should focus on developing models** that are either explicitly tailored for specific Indic languages or employ techniques that effectively address cross-lingual transfer challenges.  Understanding the reasons behind this variability is crucial for advancing NLP research for low-resource languages.  Investigating the impact of factors such as script, morphology, and data scarcity is essential for creating more robust and effective models. The **substantial performance differences** suggest that a one-size-fits-all approach is insufficient and that more nuanced, context-aware models are necessary.

#### Translation Quality
The research paper section on Translation Quality is crucial for evaluating the reliability of the multilingual benchmark dataset.  The use of back-translation, a technique to assess translation accuracy by re-translating into the original language, is a **key strength**.  Multiple metrics (chrF++, BLEU, METEOR, TER, SacreBLEU) were used, providing a **comprehensive evaluation**.  While the high scores for Hindi and Gujarati suggest good quality, the limited data for other languages is a **major limitation**.  This highlights the need for **rigorous quality control and complete reporting** across all languages in the dataset to ensure the validity and fairness of the benchmark.  The threshold values used for each metric should be clearly defined and justified in the context of Indic languages. Future work should aim for a more comprehensive evaluation of translation quality across all nine languages to strengthen the credibility of the entire dataset and the study's findings.

#### Future Directions
The 'Future Directions' section of this research paper would ideally highlight crucial next steps for advancing Indic language AI.  **Data collection** is paramount, emphasizing the need for high-quality, diverse datasets across all Indic languages, especially for low-resource ones.  **Model development** should focus on architectures and training techniques robust enough to handle the linguistic complexities of these languages, addressing morphology and script diversity.  **Cross-lingual transfer** techniques, leveraging related languages to improve performance, especially for low-resource ones, are another key area.  Finally, the paper should stress the importance of **task-specific fine-tuning**, developing strategies to effectively adapt large multilingual models to particular Indic language tasks, as well as refining **evaluation metrics** to better capture the nuances of the languages and cultural contexts.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.15747/x2.png)

> 🔼 This figure demonstrates the machine translation and back-translation process used to create the IndicMMLU-Pro dataset.  It shows an example of an English text, its translation into Hindi using the IndicTrans2 model, and the subsequent back-translation of the Hindi text back into English.  Comparing the original English text with the back-translated version helps to assess the quality and accuracy of the translation process, ensuring the integrity of the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 2: The original text sample, its Hindi translation, and the corresponding back-translated text
> </details>



![](https://arxiv.org/html/2501.15747/x3.png)

> 🔼 Figure 3 displays a three-column comparison of text. The left column shows the original English text of a sample question from the IndicMMLU-Pro benchmark.  The middle column presents the Gujarati translation of the English text, demonstrating the machine translation process used to create the IndicMMLU-Pro dataset. The rightmost column shows the result of back-translating the Gujarati text back into English. This back-translation serves as a quality assurance check, allowing assessment of how accurately the machine translation preserved the original meaning and intent.
> <details>
> <summary>read the caption</summary>
> Figure 3: The original text sample, its Gujarati translation, and the corresponding back-translated text
> </details>



![](https://arxiv.org/html/2501.15747/x4.png)

> 🔼 Figure 4 displays the original English text of a sample question from the IndicMMLU-Pro benchmark, its translation into Tamil using the IndicTrans2 model, and the result of back-translating the Tamil version back into English. This process demonstrates the quality assurance step used to validate the accuracy of the IndicMMLU-Pro dataset. By comparing the original and back-translated English text, researchers can assess the fidelity of the translation.
> <details>
> <summary>read the caption</summary>
> Figure 4: The original text sample, its Tamil translation, and the corresponding back-translated text
> </details>



![](https://arxiv.org/html/2501.15747/x5.png)

> 🔼 This figure is a bar chart showing the accuracy of various language models across nine different Indic languages.  The models are represented on the y-axis, and the languages are on the x-axis.  The height of each bar represents the percentage accuracy of a given model on a particular language.  This allows for a direct comparison of model performance across languages, highlighting strengths and weaknesses of each model in handling the diverse linguistic characteristics of Indic languages.
> <details>
> <summary>read the caption</summary>
> Figure 5: Model Accuracy Across Different Languages
> </details>



![](https://arxiv.org/html/2501.15747/x6.png)

> 🔼 This figure displays the average lengths of questions and their corresponding options (choices) across nine Indic languages in the IndicMMLU-Pro dataset.  Lengths are presented in both number of words and number of tokens, providing insights into the linguistic characteristics of the dataset and potential implications for model performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Average Question and Option Lengths in # Words and # Tokens
> </details>



![](https://arxiv.org/html/2501.15747/x7.png)

> 🔼 This figure displays three sets of text: the original English text, its translation into Hindi using IndicTrans2, and the back-translation of the Hindi text back into English.  This process demonstrates the machine translation workflow and helps assess the accuracy and fluency of the translations. The comparison between the original and back-translated English texts highlights the effectiveness of the translation method in preserving meaning and linguistic integrity.
> <details>
> <summary>read the caption</summary>
> Figure 7: Additional examples showcasing the machine translation workflow, including the original text samples, their Hindi translations, and the corresponding back-translated texts.
> </details>



![](https://arxiv.org/html/2501.15747/x8.png)

> 🔼 Figure 8 presents several examples illustrating the machine translation process used in the creation of the IndicMMLU-Pro dataset.  For each example, the original English text is shown alongside its Gujarati translation and the result of back-translating the Gujarati text back into English. This demonstrates the entire workflow and allows for a visual assessment of the accuracy and fidelity of the translation process. The comparison reveals how well the meaning and structure of the original English text are preserved in the translation and back-translation steps, highlighting the quality of the translation model used for creating the IndicMMLU-Pro dataset.
> <details>
> <summary>read the caption</summary>
> Figure 8: Additional examples showcasing the machine translation workflow, including the original text samples, their Gujarati translations, and the corresponding back-translated texts.
> </details>



![](https://arxiv.org/html/2501.15747/x9.png)

> 🔼 Figure 9 presents several examples illustrating the machine translation process used in creating the IndicMMLU-Pro dataset.  For each example, the figure shows the original English text, its translation into Tamil, and the subsequent back-translation of the Tamil text into English. This allows for a visual comparison of the original and back-translated English text, demonstrating the accuracy and consistency of the translation process.  The examples highlight the system's ability to handle the nuances of the Tamil language while maintaining the semantic meaning of the original text.
> <details>
> <summary>read the caption</summary>
> Figure 9: Additional examples showcasing the machine translation workflow, including the original text samples, their Tamil translations, and the corresponding back-translated texts.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T2.1.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Language</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">XLM-RoBERTa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1">Navarasa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1">Airavata</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.5.1">OpenHathi</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.6.1">TamilLlama</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.7.1">MahaMarathi</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T2.1.2.2.1" style="padding-left:3.5pt;padding-right:3.5pt;">Hindi</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.2.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">12.33</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.2.2.3" style="padding-left:3.5pt;padding-right:3.5pt;">12.43</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.2.2.4" style="padding-left:3.5pt;padding-right:3.5pt;">11.60</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.2.2.5" style="padding-left:3.5pt;padding-right:3.5pt;">11.65</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.2.2.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T2.1.2.2.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.3.3.1" style="padding-left:3.5pt;padding-right:3.5pt;">Bengali</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3.2" style="padding-left:3.5pt;padding-right:3.5pt;">12.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3.3" style="padding-left:3.5pt;padding-right:3.5pt;">12.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.3.3.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.4.4.1" style="padding-left:3.5pt;padding-right:3.5pt;">Punjabi</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.4.2" style="padding-left:3.5pt;padding-right:3.5pt;">12.59</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.4.3" style="padding-left:3.5pt;padding-right:3.5pt;">11.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.4.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.4.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.4.4.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.5.5.1" style="padding-left:3.5pt;padding-right:3.5pt;">Marathi</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.5.2" style="padding-left:3.5pt;padding-right:3.5pt;">12.57</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.5.3" style="padding-left:3.5pt;padding-right:3.5pt;">11.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.5.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.5.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.5.5.7" style="padding-left:3.5pt;padding-right:3.5pt;">11.60</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.6.6.1" style="padding-left:3.5pt;padding-right:3.5pt;">Urdu</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.6.2" style="padding-left:3.5pt;padding-right:3.5pt;">12.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.6.3" style="padding-left:3.5pt;padding-right:3.5pt;">10.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.6.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.6.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.6.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.6.6.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.7.7.1" style="padding-left:3.5pt;padding-right:3.5pt;">Gujarati</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.7.2" style="padding-left:3.5pt;padding-right:3.5pt;">11.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.7.3" style="padding-left:3.5pt;padding-right:3.5pt;">11.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.7.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.7.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.7.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.7.7.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.8.8.1" style="padding-left:3.5pt;padding-right:3.5pt;">Telugu</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.8.8.2" style="padding-left:3.5pt;padding-right:3.5pt;">12.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.8.8.3" style="padding-left:3.5pt;padding-right:3.5pt;">11.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.8.8.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.8.8.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.8.8.6" style="padding-left:3.5pt;padding-right:3.5pt;">11.53</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.8.8.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.9.9.1" style="padding-left:3.5pt;padding-right:3.5pt;">Tamil</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.9.2" style="padding-left:3.5pt;padding-right:3.5pt;">12.34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.9.3" style="padding-left:3.5pt;padding-right:3.5pt;">12.38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.9.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.9.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.9.6" style="padding-left:3.5pt;padding-right:3.5pt;">11.66</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.9.9.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.1.10.10.1" style="padding-left:3.5pt;padding-right:3.5pt;">Kannada</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.10.10.2" style="padding-left:3.5pt;padding-right:3.5pt;">13.16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.10.10.3" style="padding-left:3.5pt;padding-right:3.5pt;">11.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.10.10.4" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.10.10.5" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.10.10.6" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.1.10.10.7" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various language models on the IndicMMLU-Pro benchmark, broken down by language family (Indo-Aryan and Dravidian) and individual language.  It shows the accuracy scores achieved by several models, including Llama 3.1, Navarasa, Airavata, OpenHathi, TamilLlama, and MahaMarathi, on tasks designed to evaluate the models’ ability to understand and process the nine major Indic languages included in the benchmark.  The scores provide insights into the strengths and weaknesses of different models in handling the linguistic nuances of each language and give an indication of the current state of the art in Indic language AI.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of language model performance across Indian languages, both Indo-Aryan (i.e., Hindi, Bengali, Punjabi, Marathi, Urdu, and Gujarati) and Dravidan (i.e., Telegu, Tamil, and Kannada). Scores are shown for Llama 3.1, Navarasa, Airavata, OpenHathi, TamilLlama, and MahaMarathi models where available.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1.1.1">Language</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.2.1">
<span class="ltx_p" id="S3.T3.1.1.1.2.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.2.1.1.1">chrF++</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.3.1">
<span class="ltx_p" id="S3.T3.1.1.1.3.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.3.1.1.1">BLEU</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.4.1">
<span class="ltx_p" id="S3.T3.1.1.1.4.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.4.1.1.1">METEOR</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.5.1">
<span class="ltx_p" id="S3.T3.1.1.1.5.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.5.1.1.1">TER</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.6.1">
<span class="ltx_p" id="S3.T3.1.1.1.6.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.6.1.1.1">SacreBLEU</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T3.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.2.1.1.1">
<span class="ltx_p" id="S3.T3.1.2.1.1.1.1" style="width:56.9pt;">Hindi</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T3.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.2.1.2.1">
<span class="ltx_p" id="S3.T3.1.2.1.2.1.1" style="width:56.9pt;">78.06</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T3.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.2.1.3.1">
<span class="ltx_p" id="S3.T3.1.2.1.3.1.1" style="width:56.9pt;">0.59</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T3.1.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.2.1.4.1">
<span class="ltx_p" id="S3.T3.1.2.1.4.1.1" style="width:56.9pt;">0.56</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T3.1.2.1.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.2.1.5.1">
<span class="ltx_p" id="S3.T3.1.2.1.5.1.1" style="width:56.9pt;">42.27</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T3.1.2.1.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.2.1.6.1">
<span class="ltx_p" id="S3.T3.1.2.1.6.1.1" style="width:56.9pt;">59.07</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.3.2.1.1">
<span class="ltx_p" id="S3.T3.1.3.2.1.1.1" style="width:56.9pt;">Gujarati</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.3.2.2.1">
<span class="ltx_p" id="S3.T3.1.3.2.2.1.1" style="width:56.9pt;">77.67</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.3.2.3.1">
<span class="ltx_p" id="S3.T3.1.3.2.3.1.1" style="width:56.9pt;">0.58</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.1.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.3.2.4.1">
<span class="ltx_p" id="S3.T3.1.3.2.4.1.1" style="width:56.9pt;">0.55</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.1.3.2.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.3.2.5.1">
<span class="ltx_p" id="S3.T3.1.3.2.5.1.1" style="width:56.9pt;">43.09</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.1.3.2.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.3.2.6.1">
<span class="ltx_p" id="S3.T3.1.3.2.6.1.1" style="width:56.9pt;">58.28</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T3.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.4.3.1.1">
<span class="ltx_p" id="S3.T3.1.4.3.1.1.1" style="width:56.9pt;">Tamil</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T3.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.4.3.2.1">
<span class="ltx_p" id="S3.T3.1.4.3.2.1.1" style="width:56.9pt;">74.32</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T3.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.4.3.3.1">
<span class="ltx_p" id="S3.T3.1.4.3.3.1.1" style="width:56.9pt;">0.54</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T3.1.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.4.3.4.1">
<span class="ltx_p" id="S3.T3.1.4.3.4.1.1" style="width:56.9pt;">0.52</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T3.1.4.3.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.4.3.5.1">
<span class="ltx_p" id="S3.T3.1.4.3.5.1.1" style="width:56.9pt;">46.41</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T3.1.4.3.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.4.3.6.1">
<span class="ltx_p" id="S3.T3.1.4.3.6.1.1" style="width:56.9pt;">53.64</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the quality assessment of the IndicMMLU-Pro dataset's translations using back-translation.  It specifically focuses on three Indic languages: Hindi, Gujarati, and Tamil.  The quality is evaluated using several metrics including chrF++, BLEU, METEOR, TER, and SacreBLEU, providing insights into the accuracy, fluency, and semantic similarity of the translations compared to the original English source.
> <details>
> <summary>read the caption</summary>
> Table 3: Back-translation evaluation metrics for the IndicMMLU-Pro dataset for 3 Indic languages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.2.1">Questions</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.3.1">Choices</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T4.1.2.1.1">Hindi</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.2.1.2">0.9109</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.2.1.3">0.9250</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.3.2.1">Bengali</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.3.2.2">0.9172</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.3.2.3">0.9251</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.4.3.1">Telugu</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.4.3.2">0.9193</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.4.3.3">0.9287</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.5.4.1">Marathi</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.5.4.2">0.9126</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.5.4.3">0.9242</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.6.5.1">Tamil</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.6.5.2">0.9194</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.6.5.3">0.9255</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.7.6.1">Gujarati</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.7.6.2">0.9164</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.7.6.3">0.9320</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.8.7.1">Urdu</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.8.7.2">0.9121</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.8.7.3">0.9302</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.9.8.1">Kannada</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.9.8.2">0.9149</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.9.8.3">0.9238</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T4.1.10.9.1">Punjabi</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.10.9.2">0.9177</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.10.9.3">0.9254</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents cosine similarity scores calculated using LaBSE embeddings.  It compares the semantic similarity between IndicMMLU-Pro datasets (in nine Indic languages) and the English MMLU-Pro dataset for both questions and their corresponding multiple-choice options. Higher scores indicate greater semantic similarity and better alignment of meaning across languages. This provides insight into the quality and consistency of the translations from English to the Indic languages within the IndicMMLU-Pro benchmark.
> <details>
> <summary>read the caption</summary>
> Table 4: Cosine similarity scores between LaBSE embeddings of IndicMMLU-Pro languages and English MMLU-Pro for questions and multiple-choice options. These scores are used as a measure of semantic similarity, with higher values suggesting closer meaning alignment across languages.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.15747/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.15747/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}