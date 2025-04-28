---
title: "The Bitter Lesson Learned from 2,000+ Multilingual Benchmarks"
summary: "Multilingual benchmarks are biased, under-representative and not well-aligned with human judgment; this paper proposes guidelines for effective evaluation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Alibaba International Digital Commerce",]
showSummary: true
date: 2025-04-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15521 {{< /keyword >}}
{{< keyword icon="writer" >}} Minghao Wu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15521" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15521" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15521/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

As multilingual Large Language Models(LLMs) grow, robust evaluation is key for equitable advancement. This paper examines 2,000+ multilingual benchmarks from 148 countries (2021-2024), assessing past, present, and future practices. It reveals that English is over-represented, benchmarks favor original language content, mostly from high-resource countries, and benchmark performance shows disparities with human judgments (especially in non-STEM tasks).



To address the issues, the paper highlights limitations in multilingual evaluation, proposing principles for effective benchmarking and critical research directions. It advocates for global collaboration to develop human-aligned benchmarks and also **emphasizes creating culturally and linguistically tailored benchmarks instead of relying on translations**. This comprehensive analysis aims to guide future directions for a more equitable, representative, and effective evaluation of language technologies.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current multilingual benchmarks are heavily biased towards English and high-resource languages. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Simply translating benchmarks is insufficient; localized benchmarks better reflect human judgments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The research community needs global collaboration to create culturally and linguistically authentic benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is a wake-up call, highlighting the limitations of relying solely on translated benchmarks. By advocating for **culturally and linguistically authentic evaluations**, this work can reshape multilingual research, driving improvements that are relevant across diverse global communities. This work opens many avenues for creating high quality datasets by prioritizing human alignment and localized evaluation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15521/extracted/6378882/figures/past_present_future-1.png)

> 🔼 This figure provides a visual overview of the paper's research on multilingual benchmarks. It illustrates the three phases of the study: past (2021-2024), present, and future.  The past phase shows the number of benchmarks, their correlation with human evaluations, and their approximate costs. The present phase displays the current status of multilingual evaluation by highlighting the distribution of tasks, the correlation of benchmark performance with human evaluations in various language groups, and insights into current evaluation practices. The future phase outlines the key research directions proposed by the authors, focusing on improvements to existing methodologies and the development of more equitable and comprehensive multilingual benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overview of this work. We examine over 2,000 multilingual (non-English) benchmarks, published between 2021 and 2024, to evaluate past, present, and future practices in multilingual benchmarking.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.2.3.1.1">Aspect</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.3.1.2.1">
<span class="ltx_p" id="S3.T1.2.3.1.2.1.1" style="width:325.2pt;">Description</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.4.1.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.2.4.1.1.1" style="background-color:#F2F2F2;">Year and Month</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.2.4.1.2" style="background-color:#F2F2F2;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.4.1.2.1">
<span class="ltx_p" id="S3.T1.2.4.1.2.1.1" style="width:325.2pt;"><span class="ltx_text" id="S3.T1.2.4.1.2.1.1.1" style="background-color:#F2F2F2;">The publication year and month of the paper.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.5.2.1">Languages</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.5.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.5.2.2.1">
<span class="ltx_p" id="S3.T1.2.5.2.2.1.1" style="width:325.2pt;">The languages covered by the dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.6.3.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.2.6.3.1.1" style="background-color:#F2F2F2;">Task Category</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.6.3.2" style="background-color:#F2F2F2;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.6.3.2.1">
<span class="ltx_p" id="S3.T1.2.6.3.2.1.1" style="width:325.2pt;"><span class="ltx_text" id="S3.T1.2.6.3.2.1.1.1" style="background-color:#F2F2F2;">The task types discussed in the paper (e.g., discriminative, generative, or both).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.7.4.1">Tasks</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.7.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.7.4.2.1">
<span class="ltx_p" id="S3.T1.2.7.4.2.1.1" style="width:325.2pt;">The specific tasks covered (e.g., sentiment analysis, question answering, summarization, etc.).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.2.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.2.2.3.1" style="background-color:#F2F2F2;">Dataset Size</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.2.2" style="background-color:#F2F2F2;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.2.2.2">
<span class="ltx_p" id="S3.T1.2.2.2.2.2" style="width:325.2pt;"><span class="ltx_text" id="S3.T1.2.2.2.2.2.2" style="background-color:#F2F2F2;">The approximate size of the dataset, categorized as: <math alttext="&lt;" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S3.T1.1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" xref="S3.T1.1.1.1.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.m1.1b"><lt id="S3.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.m1.1d">&lt;</annotation></semantics></math>100, 100–1K, 1K–10K, 10K–100K, or <math alttext="&gt;" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.2.2.m2.1" style="background-color:#F2F2F2;"><semantics id="S3.T1.2.2.2.2.2.2.m2.1a"><mo id="S3.T1.2.2.2.2.2.2.m2.1.1" mathbackground="#F2F2F2" xref="S3.T1.2.2.2.2.2.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.2.2.m2.1b"><gt id="S3.T1.2.2.2.2.2.2.m2.1.1.cmml" xref="S3.T1.2.2.2.2.2.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.2.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.2.2.m2.1d">&gt;</annotation></semantics></math>100K.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.8.5.1">Affiliation Type</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.8.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.8.5.2.1">
<span class="ltx_p" id="S3.T1.2.8.5.2.1.1" style="width:325.2pt;">The Affiliation type of the creator of the dataset (e.g. academic, industry, or both).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.9.6.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.2.9.6.1.1" style="background-color:#F2F2F2;">Affiliation</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.9.6.2" style="background-color:#F2F2F2;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.9.6.2.1">
<span class="ltx_p" id="S3.T1.2.9.6.2.1.1" style="width:325.2pt;"><span class="ltx_text" id="S3.T1.2.9.6.2.1.1.1" style="background-color:#F2F2F2;">The affiliations that create the dataset.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.10.7.1">Country</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.10.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.10.7.2.1">
<span class="ltx_p" id="S3.T1.2.10.7.2.1.1" style="width:325.2pt;">The countries of the affiliations that create the dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.2.11.8.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S3.T1.2.11.8.1.1" style="background-color:#F2F2F2;">Translation</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.2.11.8.2" style="background-color:#F2F2F2;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.11.8.2.1">
<span class="ltx_p" id="S3.T1.2.11.8.2.1.1" style="width:325.2pt;"><span class="ltx_text" id="S3.T1.2.11.8.2.1.1.1" style="background-color:#F2F2F2;">The method used for dataset translation (e.g., not translated, human translation, Google Translate, etc.).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.2.12.9.1">Domain</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.2.12.9.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.12.9.2.1">
<span class="ltx_p" id="S3.T1.2.12.9.2.1.1" style="width:325.2pt;">The domains of the dataset (e.g., news, social media, etc.).</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the annotation scheme used for the papers included in the study's dataset of multilingual benchmarks.  Each row represents an aspect of the papers annotated, detailing what information was extracted and recorded for each. This includes metadata like publication year and month, the languages covered in the dataset described in each paper, the type of task (discriminative, generative, or both), the specific tasks, the dataset size, the dataset creator's affiliation, the country of affiliation, the translation method used, and the domain of the dataset.
> <details>
> <summary>read the caption</summary>
> Table 1:  Annotation scheme for the collected paper.
> </details>





### In-depth insights


#### ML Evaluation Gaps
**ML evaluation gaps** arise from several factors. Datasets might not reflect real-world diversity, leading to biased performance. **Evaluation metrics** can be inadequate, failing to capture nuanced aspects of model behavior like fairness or robustness. There is often a **lack of standardized evaluation protocols**, making it difficult to compare results across different studies.  Moreover, **the computational cost** of evaluating complex ML models on large datasets can be prohibitive, limiting the scope and depth of evaluation. Further, **the potential for data leakage** during evaluation poses a significant threat to the validity of results. Addressing these gaps is crucial for ensuring the reliability and trustworthiness of ML systems.

#### Multilingual LLMs
Multilingual LLMs are revolutionizing NLP by processing multiple languages. **Early models** were pre-trained mainly on English datasets, **recent advancements** prioritize multilingual capabilities. Significant work is focused on curating multilingual corpora for pre-training and fine-tuning. These models are crucial for fair evaluation across cultures and languages, facilitating cross-lingual transfer learning and enabling applications such as machine translation and multilingual content generation. Multilingual models can improve communication and access to information globally, making them valuable in various fields.

#### Human Alignment
**Human alignment** in the context of multilingual benchmarks signifies a critical need to bridge the gap between computational metrics and genuine human understanding. As language models become increasingly sophisticated, their evaluation must extend beyond mere task completion to encompass nuanced aspects of human cognition, cultural understanding, and contextual awareness. Prioritizing human alignment involves engaging native speakers and linguistic experts in benchmark design and validation. **This would involve aligning evaluation metrics with human judgements** to reflect real-world use. Future benchmarking must shift to a model where successful language technology demonstrates not just grammatical correctness, but cultural appropriateness.

#### Future Directions
Future research should prioritize Natural Language Generation (NLG), currently overshadowed by discriminative tasks. **Low-resource languages** need specialized benchmarks to address underrepresentation and improve model performance. Localized benchmarking, moving beyond translated content, is crucial for capturing linguistic and cultural nuances. Leveraging **LLMs as multilingual judges** presents opportunities but requires addressing potential biases. Finally, efficient benchmarking methods are needed to manage the growing complexity of evaluating models across numerous languages and tasks. These five points call for future research directions for advancing multilingual evaluation.

#### Global Collab
**Global collaboration** in multilingual benchmarking is crucial due to the inherent complexities of diverse languages and cultures. A unified, international effort is needed to overcome the limitations of fragmented research, which leads to duplicated work and resource inefficiencies. **A global research consortium** focused on multilingual benchmarks, incorporating expertise from various linguistic and cultural backgrounds, can ensure **comprehensive and fair evaluation frameworks**. This approach allows for efficient resource allocation and deeper insights into diverse linguistic nuances.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15521/x1.png)

> 🔼 Figure 2 shows the frequency distribution of the top 50 languages used in the 2024 multilingual benchmark dataset.  Despite the deliberate exclusion of English-language benchmarks during data collection, English remains the most frequently represented language.  This visualization highlights a significant imbalance in the current landscape of multilingual benchmark creation, with high-resource languages heavily overrepresented and low-resource languages underrepresented.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Distribution of the top 50 languages in our multilingual benchmark collection. Although English is deliberately excluded from the collection, it still appears as the most frequent language in the collection. This distribution illustrates the current imbalance in multilingual evaluation benchmarks.
> </details>



![](https://arxiv.org/html/2504.15521/extracted/6378882/figures/translation.png)

> 🔼 This figure shows a pie chart that illustrates the distribution of translation methods employed in the creation of multilingual benchmarks.  The methods are categorized as: 'Not Translated' (original language content), 'Human Translator' (professional human translation), 'Google Translate' (machine translation using Google Translate), and other machine translation tools such as GPT series models, DeepL, NLLB series, IndicTrans, Opus-MT, and Microsoft Translator. The chart visually represents the proportion of benchmarks created using each method.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution of translation methods used in benchmark creation.
> </details>



![](https://arxiv.org/html/2504.15521/extracted/6378882/figures/domains1.png)

> 🔼 This figure shows the distribution of domains across the 2024 multilingual benchmarks collected in this study.  It reveals the source domains of the datasets used for benchmark creation. The most frequent domains are news (17.0%), social media (13.3%), and Wikipedia-derived content (9.6%), showing a prevalence of publicly accessible data.  Less frequent are specialized and higher-value domains like healthcare, law, and entertainment. This highlights a bias towards easily accessible data rather than specialized or high-value content.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of domains across multilingual benchmarks in our collection.
> </details>



![](https://arxiv.org/html/2504.15521/x2.png)

> 🔼 This figure shows the distribution of user requests across six different languages (English, Chinese, French, German, Spanish, and Russian) within the Chatbot Arena platform.  The data is categorized into several task-oriented instruction types, such as Writing, Translation, Math, and Programming, offering insights into how users across various linguistic backgrounds utilize large language models. Notably, the 'Greetings' category has been excluded from the analysis because it is not considered a task-oriented instruction.
> <details>
> <summary>read the caption</summary>
> Figure 7: Distribution of user instruction categories across six languages. We discard the “Greetings' category, as it is not a task-oriented instruction.
> </details>



![](https://arxiv.org/html/2504.15521/x3.png)

> 🔼 Figure 8 presents a conceptual framework outlining the key characteristics of effective multilingual benchmarks and suggests future research directions to improve multilingual evaluation. The framework is divided into two main parts: Core Characteristics and Future Directions.  Core Characteristics lists essential qualities for effective benchmarks, including accuracy, absence of contamination (where training data overlaps with benchmark data), sufficient challenge, practical relevance, linguistic diversity, and cultural authenticity.  Future Directions highlights five key areas for future research: improving natural language generation capabilities, broadening coverage to include low-resource languages, developing localized benchmarks, using LLMs as evaluators, and creating efficient benchmarking methods. The figure visually links these future directions to the previously mentioned core characteristics, showing how each research area contributes to improving the overall quality and effectiveness of multilingual benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 8: A conceptual framework illustrating the essential characteristics of effective multilingual benchmarks and future research directions for advancing multilingual evaluation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.4.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T2.4.1.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T2.4.1.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.1.1.2.1" style="font-size:90%;">Type</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.1.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.1.1.3.1" style="font-size:90%;">Chinese</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.1.1.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.1.1.4.1" style="font-size:90%;">French</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.1.1.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.1.1.5.1" style="font-size:90%;">German</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.1.1.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.1.1.6.1" style="font-size:90%;">Spanish</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.1.1.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.1.1.7.1" style="font-size:90%;">Russian</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="7" id="S5.T2.4.2.2.1" style="background-color:#E6E6E6;padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.4.2.2.1.1" style="font-size:90%;background-color:#E6E6E6;">Discriminative</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.3.3.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.3.3.1.1" style="font-size:90%;">XNLI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.3.3.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.3.3.2.1" style="font-size:90%;">Natural Language Inference</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.3.3.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.3.3.3.1" style="font-size:90%;">0.233</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.3.3.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.3.3.4.1" style="font-size:90%;">0.235</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.3.3.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.3.3.5.1" style="font-size:90%;">0.410</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.3.3.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.3.3.6.1" style="font-size:90%;">0.483</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.3.3.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.3.3.7.1" style="font-size:90%;">0.588</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.4.4.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.1.1" style="font-size:90%;">ARC</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.4.4.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.2.1" style="font-size:90%;">STEM Question Answering</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.3.1" style="font-size:90%;">0.818</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.4.1" style="font-size:90%;">0.735</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.5.1" style="font-size:90%;">0.767</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.4.6.1" style="font-size:90%;">0.801</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.4.4.7.1" style="font-size:90%;">0.803</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.5.5.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.5.5.1.1" style="font-size:90%;">HellaSwag</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.5.5.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.5.5.2.1" style="font-size:90%;">Commonsense Reasoning</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.5.5.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.5.5.3.1" style="font-size:90%;">—</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.5.5.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.5.5.4.1" style="font-size:90%;">0.684</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.5.5.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.5.5.5.1" style="font-size:90%;">0.745</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.5.5.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.5.5.6.1" style="font-size:90%;">0.772</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.5.5.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.5.5.7.1" style="font-size:90%;">0.811</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.6.6.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.6.6.1.1" style="font-size:90%;">TruthfulQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.6.6.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.6.6.2.1" style="font-size:90%;">Question Answering</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.6.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.6.6.3.1" style="font-size:90%;">0.547</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.6.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.6.6.4.1" style="font-size:90%;">0.613</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.6.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.6.6.5.1" style="font-size:90%;">0.614</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.6.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.6.6.6.1" style="font-size:90%;">0.624</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.6.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.6.6.7.1" style="font-size:90%;">0.773</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.7.7.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.7.7.1.1" style="font-size:90%;">MMLU</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.7.7.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.7.7.2.1" style="font-size:90%;">Understanding</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.7.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.7.7.3.1" style="font-size:90%;">0.473</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.7.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.7.7.4.1" style="font-size:90%;">0.398</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.7.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.7.7.5.1" style="font-size:90%;">0.371</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.7.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.7.7.6.1" style="font-size:90%;">0.345</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.7.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.7.7.7.1" style="font-size:90%;">0.303</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.8.8.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.8.8.1.1" style="font-size:90%;">GlobalMMLU</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.8.8.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.8.8.2.1" style="font-size:90%;">Understanding</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.8.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.8.8.3.1" style="font-size:90%;">0.487</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.8.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.8.8.4.1" style="font-size:90%;">0.422</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.8.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.8.8.5.1" style="font-size:90%;">0.395</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.8.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.8.8.6.1" style="font-size:90%;">0.349</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.8.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.8.8.7.1" style="font-size:90%;">0.331</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="7" id="S5.T2.4.9.9.1" style="background-color:#E6E6E6;padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.4.9.9.1.1" style="font-size:90%;background-color:#E6E6E6;">Generative</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.4.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.10.10.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.10.10.1.1" style="font-size:90%;">XQuAD</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.10.10.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.10.10.2.1" style="font-size:90%;">Question Answering</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.10.10.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.10.10.3.1" style="font-size:90%;">0.110</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.10.10.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.10.10.4.1" style="font-size:90%;">—</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.10.10.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.10.10.5.1" style="font-size:90%;">0.301</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.10.10.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.10.10.6.1" style="font-size:90%;">0.225</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.10.10.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.10.10.7.1" style="font-size:90%;">0.154</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.4.11.11.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.11.11.1.1" style="font-size:90%;">MGSM</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.4.11.11.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.11.11.2.1" style="font-size:90%;">Mathematics</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.11.11.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.11.11.3.1" style="font-size:90%;">0.855</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.11.11.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.11.11.4.1" style="font-size:90%;">0.814</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.11.11.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.11.11.5.1" style="font-size:90%;">0.848</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.11.11.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.11.11.6.1" style="font-size:90%;">0.798</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.11.11.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T2.4.11.11.7.1" style="font-size:90%;">0.711</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Spearman's rank correlation coefficient (ρ) between Large Language Model (LLM) performance on various multilingual benchmarks and human judgments for five languages: Chinese, French, German, Spanish, and Russian.  Each benchmark is categorized by its task type (discriminative or generative) and the cognitive capability being assessed (e.g., natural language inference, commonsense reasoning, STEM question answering). The highest correlation for each language is shown in bold. This helps assess how well the benchmarks align with human evaluation, indicating which benchmarks best capture human-like understanding in each language.
> <details>
> <summary>read the caption</summary>
> Table 2:  The Spearman’s ρ𝜌\rhoitalic_ρ for various benchmarks across 5 languages. The highest correlation for each language is highlighted in bold. Type indicates the capability type that the benchmark is testing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T3.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.2.1.1.1"><span class="ltx_text" id="A1.T3.2.1.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.1.1.2"><span class="ltx_text" id="A1.T3.2.1.1.2.1" style="font-size:90%;">Chinese</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.1.1.3"><span class="ltx_text" id="A1.T3.2.1.1.3.1" style="font-size:90%;">French</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.1.1.4"><span class="ltx_text" id="A1.T3.2.1.1.4.1" style="font-size:90%;">German</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.1.1.5"><span class="ltx_text" id="A1.T3.2.1.1.5.1" style="font-size:90%;">Spanish</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.1.1.6"><span class="ltx_text" id="A1.T3.2.1.1.6.1" style="font-size:90%;">Russian</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.2.2.2.1"><span class="ltx_text" id="A1.T3.2.2.2.1.1" style="font-size:90%;">google/gemma-1.1-7b-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.2.2"><span class="ltx_text" id="A1.T3.2.2.2.2.1" style="font-size:90%;">1118.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.2.3"><span class="ltx_text" id="A1.T3.2.2.2.3.1" style="font-size:90%;">1018.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.2.4"><span class="ltx_text" id="A1.T3.2.2.2.4.1" style="font-size:90%;">1049.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.2.5"><span class="ltx_text" id="A1.T3.2.2.2.5.1" style="font-size:90%;">1052.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.2.6"><span class="ltx_text" id="A1.T3.2.2.2.6.1" style="font-size:90%;">1076.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.3.3">
<td class="ltx_td ltx_align_left" id="A1.T3.2.3.3.1"><span class="ltx_text" id="A1.T3.2.3.3.1.1" style="font-size:90%;">CohereForAI/aya-expanse-32b</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.3.3.2"><span class="ltx_text" id="A1.T3.2.3.3.2.1" style="font-size:90%;">1267.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.3.3.3"><span class="ltx_text" id="A1.T3.2.3.3.3.1" style="font-size:90%;">1199.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.3.3.4"><span class="ltx_text" id="A1.T3.2.3.3.4.1" style="font-size:90%;">1196.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.3.3.5"><span class="ltx_text" id="A1.T3.2.3.3.5.1" style="font-size:90%;">1199.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.3.3.6"><span class="ltx_text" id="A1.T3.2.3.3.6.1" style="font-size:90%;">1249.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.4.4">
<td class="ltx_td ltx_align_left" id="A1.T3.2.4.4.1"><span class="ltx_text" id="A1.T3.2.4.4.1.1" style="font-size:90%;">google/gemma-7b-it</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.4.2"><span class="ltx_text" id="A1.T3.2.4.4.2.1" style="font-size:90%;">1095.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.4.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.4.4.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.4.4.3.2" style="font-size:90%;">979.7</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.4.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.4.4.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.4.4.4.2" style="font-size:90%;">978.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.4.5">
<span class="ltx_text ltx_phantom" id="A1.T3.2.4.4.5.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.4.4.5.2" style="font-size:90%;">983.3</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.4.6"><span class="ltx_text" id="A1.T3.2.4.4.6.1" style="font-size:90%;">1014.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.5.5">
<td class="ltx_td ltx_align_left" id="A1.T3.2.5.5.1"><span class="ltx_text" id="A1.T3.2.5.5.1.1" style="font-size:90%;">meta-llama/Llama-3.1-8B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.5.2"><span class="ltx_text" id="A1.T3.2.5.5.2.1" style="font-size:90%;">1211.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.5.3"><span class="ltx_text" id="A1.T3.2.5.5.3.1" style="font-size:90%;">1142.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.5.4"><span class="ltx_text" id="A1.T3.2.5.5.4.1" style="font-size:90%;">1138.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.5.5"><span class="ltx_text" id="A1.T3.2.5.5.5.1" style="font-size:90%;">1176.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.5.6"><span class="ltx_text" id="A1.T3.2.5.5.6.1" style="font-size:90%;">1187.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.6.6">
<td class="ltx_td ltx_align_left" id="A1.T3.2.6.6.1"><span class="ltx_text" id="A1.T3.2.6.6.1.1" style="font-size:90%;">meta-llama/Llama-2-7b-chat-hf</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.6.2"><span class="ltx_text" id="A1.T3.2.6.6.2.1" style="font-size:90%;">1031.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.6.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.6.6.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.6.6.3.2" style="font-size:90%;">925.1</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.6.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.6.6.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.6.6.4.2" style="font-size:90%;">956.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.6.5">
<span class="ltx_text ltx_phantom" id="A1.T3.2.6.6.5.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.6.6.5.2" style="font-size:90%;">989.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.6.6"><span class="ltx_text" id="A1.T3.2.6.6.6.1" style="font-size:90%;">1015.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.7.7">
<td class="ltx_td ltx_align_left" id="A1.T3.2.7.7.1"><span class="ltx_text" id="A1.T3.2.7.7.1.1" style="font-size:90%;">microsoft/Phi-3-small-8k-instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.7.7.2"><span class="ltx_text" id="A1.T3.2.7.7.2.1" style="font-size:90%;">1122.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.7.7.3"><span class="ltx_text" id="A1.T3.2.7.7.3.1" style="font-size:90%;">1091.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.7.7.4"><span class="ltx_text" id="A1.T3.2.7.7.4.1" style="font-size:90%;">1075.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.7.7.5"><span class="ltx_text" id="A1.T3.2.7.7.5.1" style="font-size:90%;">1110.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.7.7.6"><span class="ltx_text" id="A1.T3.2.7.7.6.1" style="font-size:90%;">1138.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.8.8">
<td class="ltx_td ltx_align_left" id="A1.T3.2.8.8.1"><span class="ltx_text" id="A1.T3.2.8.8.1.1" style="font-size:90%;">Qwen/Qwen2.5-Coder-32B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.8.8.2"><span class="ltx_text" id="A1.T3.2.8.8.2.1" style="font-size:90%;">1277.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.8.8.3"><span class="ltx_text" id="A1.T3.2.8.8.3.1" style="font-size:90%;">1182.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.8.8.4"><span class="ltx_text" id="A1.T3.2.8.8.4.1" style="font-size:90%;">1192.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.8.8.5"><span class="ltx_text" id="A1.T3.2.8.8.5.1" style="font-size:90%;">1219.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.8.8.6"><span class="ltx_text" id="A1.T3.2.8.8.6.1" style="font-size:90%;">1250.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.9.9">
<td class="ltx_td ltx_align_left" id="A1.T3.2.9.9.1"><span class="ltx_text" id="A1.T3.2.9.9.1.1" style="font-size:90%;">meta-llama/Meta-Llama-3-8B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.9.9.2"><span class="ltx_text" id="A1.T3.2.9.9.2.1" style="font-size:90%;">1135.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.9.9.3"><span class="ltx_text" id="A1.T3.2.9.9.3.1" style="font-size:90%;">1113.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.9.9.4"><span class="ltx_text" id="A1.T3.2.9.9.4.1" style="font-size:90%;">1101.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.9.9.5"><span class="ltx_text" id="A1.T3.2.9.9.5.1" style="font-size:90%;">1174.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.9.9.6"><span class="ltx_text" id="A1.T3.2.9.9.6.1" style="font-size:90%;">1138.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.10.10">
<td class="ltx_td ltx_align_left" id="A1.T3.2.10.10.1"><span class="ltx_text" id="A1.T3.2.10.10.1.1" style="font-size:90%;">ibm-granite/granite-3.0-8b-instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.10.10.2"><span class="ltx_text" id="A1.T3.2.10.10.2.1" style="font-size:90%;">1130.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.10.10.3"><span class="ltx_text" id="A1.T3.2.10.10.3.1" style="font-size:90%;">1027.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.10.10.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.10.10.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.10.10.4.2" style="font-size:90%;">983.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.10.10.5"><span class="ltx_text" id="A1.T3.2.10.10.5.1" style="font-size:90%;">1034.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.10.10.6"><span class="ltx_text" id="A1.T3.2.10.10.6.1" style="font-size:90%;">1102.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.11.11">
<td class="ltx_td ltx_align_left" id="A1.T3.2.11.11.1"><span class="ltx_text" id="A1.T3.2.11.11.1.1" style="font-size:90%;">microsoft/Phi-3-medium-4k-instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.11.11.2"><span class="ltx_text" id="A1.T3.2.11.11.2.1" style="font-size:90%;">1165.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.11.11.3"><span class="ltx_text" id="A1.T3.2.11.11.3.1" style="font-size:90%;">1070.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.11.11.4"><span class="ltx_text" id="A1.T3.2.11.11.4.1" style="font-size:90%;">1100.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.11.11.5"><span class="ltx_text" id="A1.T3.2.11.11.5.1" style="font-size:90%;">1098.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.11.11.6"><span class="ltx_text" id="A1.T3.2.11.11.6.1" style="font-size:90%;">1169.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.12.12">
<td class="ltx_td ltx_align_left" id="A1.T3.2.12.12.1"><span class="ltx_text" id="A1.T3.2.12.12.1.1" style="font-size:90%;">google/gemma-2-27b-it</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.12.12.2"><span class="ltx_text" id="A1.T3.2.12.12.2.1" style="font-size:90%;">1278.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.12.12.3"><span class="ltx_text" id="A1.T3.2.12.12.3.1" style="font-size:90%;">1190.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.12.12.4"><span class="ltx_text" id="A1.T3.2.12.12.4.1" style="font-size:90%;">1206.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.12.12.5"><span class="ltx_text" id="A1.T3.2.12.12.5.1" style="font-size:90%;">1223.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.12.12.6"><span class="ltx_text" id="A1.T3.2.12.12.6.1" style="font-size:90%;">1255.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.13.13">
<td class="ltx_td ltx_align_left" id="A1.T3.2.13.13.1"><span class="ltx_text" id="A1.T3.2.13.13.1.1" style="font-size:90%;">google/gemma-1.1-2b-it</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.13.13.2"><span class="ltx_text" id="A1.T3.2.13.13.2.1" style="font-size:90%;">1076.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.13.13.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.13.13.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.13.13.3.2" style="font-size:90%;">963.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.13.13.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.13.13.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.13.13.4.2" style="font-size:90%;">947.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.13.13.5">
<span class="ltx_text ltx_phantom" id="A1.T3.2.13.13.5.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.13.13.5.2" style="font-size:90%;">991.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.13.13.6"><span class="ltx_text" id="A1.T3.2.13.13.6.1" style="font-size:90%;">1020.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.14.14">
<td class="ltx_td ltx_align_left" id="A1.T3.2.14.14.1"><span class="ltx_text" id="A1.T3.2.14.14.1.1" style="font-size:90%;">microsoft/Phi-3-mini-128k-instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.14.14.2"><span class="ltx_text" id="A1.T3.2.14.14.2.1" style="font-size:90%;">1076.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.14.14.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.14.14.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.14.14.3.2" style="font-size:90%;">994.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.14.14.4"><span class="ltx_text" id="A1.T3.2.14.14.4.1" style="font-size:90%;">1009.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.14.14.5"><span class="ltx_text" id="A1.T3.2.14.14.5.1" style="font-size:90%;">1056.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.14.14.6"><span class="ltx_text" id="A1.T3.2.14.14.6.1" style="font-size:90%;">1039.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.15.15">
<td class="ltx_td ltx_align_left" id="A1.T3.2.15.15.1"><span class="ltx_text" id="A1.T3.2.15.15.1.1" style="font-size:90%;">meta-llama/Llama-3.2-1B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.15.15.2"><span class="ltx_text" id="A1.T3.2.15.15.2.1" style="font-size:90%;">1023.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.15.15.3"><span class="ltx_text" id="A1.T3.2.15.15.3.1" style="font-size:90%;">1021.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.15.15.4"><span class="ltx_text" id="A1.T3.2.15.15.4.1" style="font-size:90%;">1010.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.15.15.5"><span class="ltx_text" id="A1.T3.2.15.15.5.1" style="font-size:90%;">1030.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.15.15.6">
<span class="ltx_text ltx_phantom" id="A1.T3.2.15.15.6.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.15.15.6.2" style="font-size:90%;">972.9</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.16.16">
<td class="ltx_td ltx_align_left" id="A1.T3.2.16.16.1"><span class="ltx_text" id="A1.T3.2.16.16.1.1" style="font-size:90%;">CohereForAI/aya-expanse-8b</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.16.16.2"><span class="ltx_text" id="A1.T3.2.16.16.2.1" style="font-size:90%;">1241.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.16.16.3"><span class="ltx_text" id="A1.T3.2.16.16.3.1" style="font-size:90%;">1166.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.16.16.4"><span class="ltx_text" id="A1.T3.2.16.16.4.1" style="font-size:90%;">1180.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.16.16.5"><span class="ltx_text" id="A1.T3.2.16.16.5.1" style="font-size:90%;">1161.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.16.16.6"><span class="ltx_text" id="A1.T3.2.16.16.6.1" style="font-size:90%;">1228.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.17.17">
<td class="ltx_td ltx_align_left" id="A1.T3.2.17.17.1"><span class="ltx_text" id="A1.T3.2.17.17.1.1" style="font-size:90%;">meta-llama/Llama-2-13b-chat-hf</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.17.17.2"><span class="ltx_text" id="A1.T3.2.17.17.2.1" style="font-size:90%;">1055.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.17.17.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.17.17.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.17.17.3.2" style="font-size:90%;">992.3</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.17.17.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.17.17.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.17.17.4.2" style="font-size:90%;">998.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.17.17.5"><span class="ltx_text" id="A1.T3.2.17.17.5.1" style="font-size:90%;">1076.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.17.17.6"><span class="ltx_text" id="A1.T3.2.17.17.6.1" style="font-size:90%;">1075.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.18.18">
<td class="ltx_td ltx_align_left" id="A1.T3.2.18.18.1"><span class="ltx_text" id="A1.T3.2.18.18.1.1" style="font-size:90%;">meta-llama/Llama-3.2-3B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.18.18.2"><span class="ltx_text" id="A1.T3.2.18.18.2.1" style="font-size:90%;">1084.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.18.18.3"><span class="ltx_text" id="A1.T3.2.18.18.3.1" style="font-size:90%;">1031.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.18.18.4"><span class="ltx_text" id="A1.T3.2.18.18.4.1" style="font-size:90%;">1053.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.18.18.5"><span class="ltx_text" id="A1.T3.2.18.18.5.1" style="font-size:90%;">1095.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.18.18.6">
<span class="ltx_text ltx_phantom" id="A1.T3.2.18.18.6.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.18.18.6.2" style="font-size:90%;">984.0</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.19.19">
<td class="ltx_td ltx_align_left" id="A1.T3.2.19.19.1"><span class="ltx_text" id="A1.T3.2.19.19.1.1" style="font-size:90%;">google/gemma-2-2b-it</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.19.19.2"><span class="ltx_text" id="A1.T3.2.19.19.2.1" style="font-size:90%;">1190.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.19.19.3"><span class="ltx_text" id="A1.T3.2.19.19.3.1" style="font-size:90%;">1129.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.19.19.4"><span class="ltx_text" id="A1.T3.2.19.19.4.1" style="font-size:90%;">1105.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.19.19.5"><span class="ltx_text" id="A1.T3.2.19.19.5.1" style="font-size:90%;">1144.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.19.19.6"><span class="ltx_text" id="A1.T3.2.19.19.6.1" style="font-size:90%;">1142.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.20.20">
<td class="ltx_td ltx_align_left" id="A1.T3.2.20.20.1"><span class="ltx_text" id="A1.T3.2.20.20.1.1" style="font-size:90%;">HuggingFaceH4/zephyr-7b-beta</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.20.20.2"><span class="ltx_text" id="A1.T3.2.20.20.2.1" style="font-size:90%;">1017.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.20.20.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.20.20.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.20.20.3.2" style="font-size:90%;">989.5</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.20.20.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.20.20.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.20.20.4.2" style="font-size:90%;">975.5</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.20.20.5"><span class="ltx_text" id="A1.T3.2.20.20.5.1" style="font-size:90%;">1040.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.20.20.6"><span class="ltx_text" id="A1.T3.2.20.20.6.1" style="font-size:90%;">1067.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.21.21">
<td class="ltx_td ltx_align_left" id="A1.T3.2.21.21.1"><span class="ltx_text" id="A1.T3.2.21.21.1.1" style="font-size:90%;">microsoft/Phi-3-mini-4k-instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.21.21.2"><span class="ltx_text" id="A1.T3.2.21.21.2.1" style="font-size:90%;">1081.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.21.21.3"><span class="ltx_text" id="A1.T3.2.21.21.3.1" style="font-size:90%;">1033.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.21.21.4"><span class="ltx_text" id="A1.T3.2.21.21.4.1" style="font-size:90%;">1038.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.21.21.5"><span class="ltx_text" id="A1.T3.2.21.21.5.1" style="font-size:90%;">1094.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.21.21.6"><span class="ltx_text" id="A1.T3.2.21.21.6.1" style="font-size:90%;">1056.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.22.22">
<td class="ltx_td ltx_align_left" id="A1.T3.2.22.22.1"><span class="ltx_text" id="A1.T3.2.22.22.1.1" style="font-size:90%;">google/gemma-2b-it</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.22.22.2"><span class="ltx_text" id="A1.T3.2.22.22.2.1" style="font-size:90%;">1049.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.22.22.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.22.22.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.22.22.3.2" style="font-size:90%;">852.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.22.22.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.22.22.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.22.22.4.2" style="font-size:90%;">909.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.22.22.5">
<span class="ltx_text ltx_phantom" id="A1.T3.2.22.22.5.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.22.22.5.2" style="font-size:90%;">985.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.22.22.6">
<span class="ltx_text ltx_phantom" id="A1.T3.2.22.22.6.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.22.22.6.2" style="font-size:90%;">964.9</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.23.23">
<td class="ltx_td ltx_align_left" id="A1.T3.2.23.23.1"><span class="ltx_text" id="A1.T3.2.23.23.1.1" style="font-size:90%;">mistralai/Mistral-7B-Instruct-v0.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.23.23.2"><span class="ltx_text" id="A1.T3.2.23.23.2.1" style="font-size:90%;">1068.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.23.23.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.23.23.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.23.23.3.2" style="font-size:90%;">983.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.23.23.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.23.23.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.23.23.4.2" style="font-size:90%;">979.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.23.23.5"><span class="ltx_text" id="A1.T3.2.23.23.5.1" style="font-size:90%;">1025.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.23.23.6"><span class="ltx_text" id="A1.T3.2.23.23.6.1" style="font-size:90%;">1045.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.24.24">
<td class="ltx_td ltx_align_left" id="A1.T3.2.24.24.1"><span class="ltx_text" id="A1.T3.2.24.24.1.1" style="font-size:90%;">HuggingFaceTB/SmolLM2-1.7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.24.24.2"><span class="ltx_text" id="A1.T3.2.24.24.2.1" style="font-size:90%;">1106.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.24.24.3"><span class="ltx_text" id="A1.T3.2.24.24.3.1" style="font-size:90%;">1001.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.24.24.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.24.24.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.24.24.4.2" style="font-size:90%;">948.5</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.24.24.5">
<span class="ltx_text ltx_phantom" id="A1.T3.2.24.24.5.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.24.24.5.2" style="font-size:90%;">941.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.24.24.6"><span class="ltx_text" id="A1.T3.2.24.24.6.1" style="font-size:90%;">1033.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.25.25">
<td class="ltx_td ltx_align_left" id="A1.T3.2.25.25.1"><span class="ltx_text" id="A1.T3.2.25.25.1.1" style="font-size:90%;">Qwen/Qwen1.5-14B-Chat</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.25.25.2"><span class="ltx_text" id="A1.T3.2.25.25.2.1" style="font-size:90%;">1202.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.25.25.3"><span class="ltx_text" id="A1.T3.2.25.25.3.1" style="font-size:90%;">1068.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.25.25.4"><span class="ltx_text" id="A1.T3.2.25.25.4.1" style="font-size:90%;">1042.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.25.25.5"><span class="ltx_text" id="A1.T3.2.25.25.5.1" style="font-size:90%;">1079.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.25.25.6"><span class="ltx_text" id="A1.T3.2.25.25.6.1" style="font-size:90%;">1073.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.26.26">
<td class="ltx_td ltx_align_left" id="A1.T3.2.26.26.1"><span class="ltx_text" id="A1.T3.2.26.26.1.1" style="font-size:90%;">google/gemma-2-9b-it</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.26.26.2"><span class="ltx_text" id="A1.T3.2.26.26.2.1" style="font-size:90%;">1243.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.26.26.3"><span class="ltx_text" id="A1.T3.2.26.26.3.1" style="font-size:90%;">1142.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.26.26.4"><span class="ltx_text" id="A1.T3.2.26.26.4.1" style="font-size:90%;">1180.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.26.26.5"><span class="ltx_text" id="A1.T3.2.26.26.5.1" style="font-size:90%;">1199.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.26.26.6"><span class="ltx_text" id="A1.T3.2.26.26.6.1" style="font-size:90%;">1220.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.27.27">
<td class="ltx_td ltx_align_left" id="A1.T3.2.27.27.1"><span class="ltx_text" id="A1.T3.2.27.27.1.1" style="font-size:90%;">Qwen/Qwen1.5-4B-Chat</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.27.27.2"><span class="ltx_text" id="A1.T3.2.27.27.2.1" style="font-size:90%;">1083.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.27.27.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.27.27.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.27.27.3.2" style="font-size:90%;">929.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.27.27.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.27.27.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.27.27.4.2" style="font-size:90%;">904.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.27.27.5"><span class="ltx_text" id="A1.T3.2.27.27.5.1" style="font-size:90%;">1013.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.27.27.6">
<span class="ltx_text ltx_phantom" id="A1.T3.2.27.27.6.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.27.27.6.2" style="font-size:90%;">977.5</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.28.28">
<td class="ltx_td ltx_align_left" id="A1.T3.2.28.28.1"><span class="ltx_text" id="A1.T3.2.28.28.1.1" style="font-size:90%;">mistralai/Ministral-8B-Instruct-2410</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.28.28.2"><span class="ltx_text" id="A1.T3.2.28.28.2.1" style="font-size:90%;">1256.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.28.28.3"><span class="ltx_text" id="A1.T3.2.28.28.3.1" style="font-size:90%;">1133.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.28.28.4"><span class="ltx_text" id="A1.T3.2.28.28.4.1" style="font-size:90%;">1128.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.28.28.5"><span class="ltx_text" id="A1.T3.2.28.28.5.1" style="font-size:90%;">1131.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.28.28.6"><span class="ltx_text" id="A1.T3.2.28.28.6.1" style="font-size:90%;">1222.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.29.29">
<td class="ltx_td ltx_align_left" id="A1.T3.2.29.29.1"><span class="ltx_text" id="A1.T3.2.29.29.1.1" style="font-size:90%;">ibm-granite/granite-3.0-2b-instruct</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.29.29.2"><span class="ltx_text" id="A1.T3.2.29.29.2.1" style="font-size:90%;">1130.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.29.29.3"><span class="ltx_text" id="A1.T3.2.29.29.3.1" style="font-size:90%;">1003.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.29.29.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.29.29.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.29.29.4.2" style="font-size:90%;">988.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.29.29.5"><span class="ltx_text" id="A1.T3.2.29.29.5.1" style="font-size:90%;">1037.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.29.29.6"><span class="ltx_text" id="A1.T3.2.29.29.6.1" style="font-size:90%;">1081.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.30.30">
<td class="ltx_td ltx_align_left" id="A1.T3.2.30.30.1"><span class="ltx_text" id="A1.T3.2.30.30.1.1" style="font-size:90%;">Qwen/Qwen1.5-7B-Chat</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.30.30.2"><span class="ltx_text" id="A1.T3.2.30.30.2.1" style="font-size:90%;">1196.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.30.30.3"><span class="ltx_text" id="A1.T3.2.30.30.3.1" style="font-size:90%;">1017.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.30.30.4"><span class="ltx_text" id="A1.T3.2.30.30.4.1" style="font-size:90%;">1022.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.30.30.5"><span class="ltx_text" id="A1.T3.2.30.30.5.1" style="font-size:90%;">1012.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.30.30.6"><span class="ltx_text" id="A1.T3.2.30.30.6.1" style="font-size:90%;">1035.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.31.31">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.2.31.31.1"><span class="ltx_text" id="A1.T3.2.31.31.1.1" style="font-size:90%;">allenai/OLMo-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.2.31.31.2"><span class="ltx_text" id="A1.T3.2.31.31.2.1" style="font-size:90%;">1071.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.2.31.31.3">
<span class="ltx_text ltx_phantom" id="A1.T3.2.31.31.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.31.31.3.2" style="font-size:90%;">879.6</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.2.31.31.4">
<span class="ltx_text ltx_phantom" id="A1.T3.2.31.31.4.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.31.31.4.2" style="font-size:90%;">885.3</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.2.31.31.5">
<span class="ltx_text ltx_phantom" id="A1.T3.2.31.31.5.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.31.31.5.2" style="font-size:90%;">975.9</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.2.31.31.6">
<span class="ltx_text ltx_phantom" id="A1.T3.2.31.31.6.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="A1.T3.2.31.31.6.2" style="font-size:90%;">970.9</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the list of 30 Large Language Models (LLMs) used in the paper's evaluation. For each LLM, its Elo scores on five languages (Chinese, French, German, Spanish, and Russian) are shown, as of December 30, 2024.  The Elo score reflects the model's performance relative to other LLMs based on head-to-head comparisons in the Chatbot Arena.  This provides a quantitative assessment of each LLM's multilingual capabilities across these five languages.
> <details>
> <summary>read the caption</summary>
> Table 3: LLMs used for evaluation and their Elo scores on 5 languages up to December 30, 2024.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15521/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15521/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}