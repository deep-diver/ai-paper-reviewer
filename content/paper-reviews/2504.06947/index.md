---
title: "RuOpinionNE-2024: Extraction of Opinion Tuples from Russian News Texts"
summary: "RuOpinionNE: Extracting opinion tuples from Russian news!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Sentiment Analysis", "🏢 Lomonosov Moscow State University",]
showSummary: true
date: 2025-04-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.06947 {{< /keyword >}}
{{< keyword icon="writer" >}} Natalia Loukachevitch et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.06947" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.06947" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.06947/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses the challenge of extracting structured opinions from Russian news texts, a task that requires identifying sentiment holders, targets, expressions, and sentiment polarity. Previous sentiment analysis often focused on overall sentiment or target-specific sentiment, neglecting the extraction of comprehensive opinion tuples. To tackle this, the authors organized the RuOpinionNE-2024 task with a new dataset to encourage the development of more detailed opinion extraction methods.



The shared task tested different language models (LLMs) and prompting techniques. More than 100 submissions experimented mainly with large language models in zero-shot, few-shot and fine-tuning formats. The best result was fine-tuning a large language model. The research included a comparison of different open source models with 3-32 billion parameters and many promptings in the 1 and 10-shot settings, and determined the best models and prompts.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces the RuOpinionNE-2024 task for extracting structured opinions from Russian news texts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Evaluates the performance of various language models, including large language models, in zero-shot, few-shot, and fine-tuning settings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Provides a comparative analysis of different prompts and open-source language models to identify the best models and prompts for the task. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new dataset and task that may be useful for researchers interested in developing more sophisticated NLP systems. It has potential to enhance future research in opinion mining, information extraction, and sentiment analysis, **leading to better systems for understanding and responding to nuanced information**. The comparative analysis in zero-shot, few-shot experiments provides valuable insights for LLM adaptation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.06947/extracted/6348657/images/examplenew.png)

> 🔼 Figure 1 illustrates the output of opinion extraction for the RuOpinionNE-2024 shared task.  The task involves identifying opinion tuples within a given sentence, where each tuple consists of a sentiment holder (the entity expressing the opinion), a target (the entity being evaluated), a sentiment expression, and the polarity (positive or negative) of the sentiment.  The figure displays the input sentence in both Russian and English, along with the extracted opinion tuples. The first tuple shows that Italy expresses a positive sentiment towards Bersani for beating the mayor of Florence.  The second shows that the author views Matteo Renzi positively, describing him as 'prominent'. This example highlights the task's complexity, requiring the system to not only identify sentiments but also correctly link them to the appropriate holder and target entities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Example of opinion extraction with explanations according to the RuOpinionNE-2024 task. Two opinion tuples are shown: (Italy, Bersany, beat Florence Mayor, positive) and (AUTHOR, Matteo Renzi, prominent, positive)
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="id1.tab1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="id1.tab1.1.1.1">
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.1.1.1" style="padding-left:8.5pt;padding-right:8.5pt;">                 <span class="ltx_text ltx_font_bold" id="id1.tab1.1.1.1.1.1">Лукашевич Н.В.</span>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.1.1.2" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="id1.tab1.1.1.1.2.1">Ткаченко Н.М.</span></td>
</tr>
<tr class="ltx_tr" id="id1.tab1.1.2.2">
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.2.2.1" style="padding-left:8.5pt;padding-right:8.5pt;">                 МГУ им. Ломоносова</td>
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.2.2.2" style="padding-left:8.5pt;padding-right:8.5pt;">МГУ им. Ломоносова</td>
</tr>
<tr class="ltx_tr" id="id1.tab1.1.3.3">
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.3.3.1" style="padding-left:8.5pt;padding-right:8.5pt;">                 Москва, Россия</td>
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.3.3.2" style="padding-left:8.5pt;padding-right:8.5pt;">Москва, Россия</td>
</tr>
<tr class="ltx_tr" id="id1.tab1.1.4.4">
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.4.4.1" style="padding-left:8.5pt;padding-right:8.5pt;">                  louk_nat@mail.ru</td>
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.4.4.2" style="padding-left:8.5pt;padding-right:8.5pt;">nataliya.m.tkahenko@gmail.com</td>
</tr>
<tr class="ltx_tr" id="id1.tab1.1.5.5">
<td class="ltx_td ltx_align_center" id="id1.tab1.1.5.5.1" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="id1.tab1.1.5.5.1.1">Лапаницына А.М.</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.5.5.2" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="id1.tab1.1.5.5.2.1">Тихомиров М.M.</span></td>
<td class="ltx_td ltx_align_center" id="id1.tab1.1.5.5.3" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="id1.tab1.1.5.5.3.1">Русначенко Н.Л.</span></td>
</tr>
<tr class="ltx_tr" id="id1.tab1.1.6.6">
<td class="ltx_td ltx_align_center" id="id1.tab1.1.6.6.1" style="padding-left:8.5pt;padding-right:8.5pt;">МГУ им. Ломоносова</td>
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.6.6.2" style="padding-left:8.5pt;padding-right:8.5pt;">МГУ им. Ломоносова</td>
<td class="ltx_td ltx_align_center" id="id1.tab1.1.6.6.3" style="padding-left:8.5pt;padding-right:8.5pt;">МГТУ им. Н.Э. Баумана</td>
</tr>
<tr class="ltx_tr" id="id1.tab1.1.7.7">
<td class="ltx_td ltx_align_center" id="id1.tab1.1.7.7.1" style="padding-left:8.5pt;padding-right:8.5pt;">Москва, Россия</td>
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.7.7.2" style="padding-left:8.5pt;padding-right:8.5pt;">Москва, Россия</td>
<td class="ltx_td ltx_align_center" id="id1.tab1.1.7.7.3" style="padding-left:8.5pt;padding-right:8.5pt;">Москва, Россия</td>
</tr>
<tr class="ltx_tr" id="id1.tab1.1.8.8">
<td class="ltx_td ltx_align_center" id="id1.tab1.1.8.8.1" style="padding-left:8.5pt;padding-right:8.5pt;">anna.lapachka@gmail.com</td>
<td class="ltx_td ltx_align_center" colspan="2" id="id1.tab1.1.8.8.2" style="padding-left:8.5pt;padding-right:8.5pt;">tikhomirov.mm@gmail.com</td>
<td class="ltx_td ltx_align_center" id="id1.tab1.1.8.8.3" style="padding-left:8.5pt;padding-right:8.5pt;">rusnicolay@gmail.com</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents example opinion tuples extracted from the RuOpinionNE-2024 dataset, illustrating the structure of the data used in the shared task.  Each row represents an opinion tuple consisting of the holder of the opinion (Holder), the target of the opinion (Target), the sentiment polarity (Polarity - either positive or negative), and the expression used to convey the sentiment (Expression).  These examples are derived from the dataset and visualized in Figure 2 of the paper. The table helps clarify the format of the opinion tuples that participants in the shared task were required to extract.
> <details>
> <summary>read the caption</summary>
> Table 1: Examples of sentiment opinions in RuOpinionNE-2024 dataset (Figure 2)
> </details>





### In-depth insights


#### Opinion Tuple Extraction
Opinion tuple extraction is a vital task in sentiment analysis, going beyond simple polarity detection to identify the nuanced relationships between opinion holders, targets, expressions, and sentiment. **The extraction process requires sophisticated techniques to handle implicit opinions**, fragmented entities, and varying contexts within news texts. Models must discern between authorial perspectives and general sentiment, **addressing challenges posed by complex sentence structures and long-range dependencies.** Fine-tuning large language models with comprehensive datasets becomes crucial for achieving high accuracy, enabling a deeper understanding of public opinion and attitudes from text. Furthermore, this extraction needs more sophisticated LLMs, for its higher accuracy.

#### RuSentNE Corpus
The **RuSentNE Corpus** is a key resource, forming the basis for the RuOpinionNE-2024 dataset. It contains **Russian news texts annotated with named entities** like PERSON, ORGANIZATION, and COUNTRY. Crucially, it identifies **positive or negative relations between entities**, reflecting sentiment. For each attitude, an **expression** serving as evidence is carefully annotated. The **RuOpinionNE dataset** then derives opinion tuples (holder, target, sentiment, expression) from this foundation, enabling extraction of structured opinions from the news. This intricate annotation process allows a granular understanding of opinions expressed within the Russian news landscape.

#### Evaluation Results
The evaluation results showcase the challenges in extracting structured opinions from Russian news texts. The best performance was achieved using a fine-tuned large language model. **The use of larger models generally correlated with better results**, but performance varied depending on the specific model, prompting strategy, and fine-tuning approach. The F1 scores indicate there is room for improvement, especially compared to results on English review datasets, suggesting that **challenges of nuanced sentiment understanding in news articles and the complexity of the Russian language require further research**. Analysis of errors revealed difficulties in capturing implicit sentiment, distinguishing between general opinions and authorial stances, and handling long-range dependencies within sentences. **The variations in performance across different models and prompts highlight the importance of prompt engineering**.

#### Student LLM Course
While not explicitly detailed, a 'Student LLM Course' suggests a practical, hands-on approach to Large Language Model (LLM) training. This implies students are actively involved in constructing prompts, experimenting with models (zero-shot, few-shot, fine-tuning), and analyzing results, fostering deep understanding. The course may explore diverse LLMs, model parameter analysis, and performance variations. A key aspect is prompt engineering's impact on model output. Emphasis may be on Russian language adaptation.  Student model outcomes, comparison metrics, and real-world LLM applications should be covered. **Student engagement and experimental results are key indicators of course effectiveness**.

#### Error Analysis
**Error analysis** is crucial for understanding model limitations. By examining discrepancies between predicted and actual outcomes, researchers can identify patterns and biases. The goal is to improve performance. One key area is **data quality**, where errors can stem from noisy or incomplete datasets. Further investigation in **annotation discrepancies**, model's ability to distinguish sentiment, and **contextual understanding** is required. By addressing these shortcomings, the study can foster model's ability to extract opinion tuples from text more reliably and accurately.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.1">Holder</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.2">Target</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.3">Polarity</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.4">Expression</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.1">Apple</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.2">Samsung</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.3">NEG</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.4">violated patents</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T1.1.3.2.1">Samsung</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.3.2.2">Apple</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.3.2.3">NEG</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T1.1.3.2.4">violated patents</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the distribution of sentences and opinion tuples within the training, development, and test sets of the RuOpinionNE-2024 dataset.  It indicates the number of sentences overall, the number of sentences without any sentiment expressed, the total number of opinion tuples, the number of tuples without a specified holder (source of opinion), and the number of tuples where the author is explicitly identified as the holder.
> <details>
> <summary>read the caption</summary>
> Table 2: Distribution of sentiment scores in training, validation and test sets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T2.1.1.1.1">Type</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T2.1.1.1.2">Stage</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.3">#Sent.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.4">#Sent.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.5">#Tuples</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.6">#Tuples</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.7">#Tuples with</th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.1.2.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S4.T2.1.2.2.2"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T2.1.2.2.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.2.2.4">w/o sentiment</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T2.1.2.2.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.2.2.6">w/o holder</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.2.2.7">author as holder</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.3.1.1">train</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.3.1.2">Train</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.1.3">2556</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.1.4">1062</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.1.5">2904</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.1.6">484</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.1.7">173</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.2.1">validation</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.2.2">Development</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2.3">1316</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2.4">547</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2.5">1612</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2.6">436</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2.7">196</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.3.1">test</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.3.2">Final</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3.3">804</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3.4">216</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3.5">1172</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3.6">334</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3.7">158</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S4.T2.1.6.4.1">Total</th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S4.T2.1.6.4.2"></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.6.4.3">4676</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.6.4.4">1825</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.6.4.5">5688</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.6.4.6">1254</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.6.4.7">527</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the development evaluation stage of the RuOpinionNE-2024 shared task.  It shows the F1 score achieved by different participants in the competition, including a baseline model. The F1 score is a metric that combines precision and recall to evaluate the overall performance of the opinion tuple extraction models.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of the Development evaluation stage of RuOpinionNE-2024
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T3.1.1.1.1">Participant</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.1.1.2">F1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.2.1.1">Zholtikov_Michail</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.2">0.34</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.3.2.1">msuai</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.2.2">0.28</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.4.3.1">iarnv</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.3.2">0.21</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T3.1.5.4.1">baseline_model</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.1.5.4.2">0.17</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the final evaluation stage of the RuOpinionNE-2024 shared task.  It shows the performance (F1 score) achieved by different participants in extracting opinion tuples from Russian news text.  The F1 score combines precision and recall, indicating the overall accuracy of the participants' extractions.  It includes a baseline model for comparison, which helps to assess the relative performance of each participant's approach.
> <details>
> <summary>read the caption</summary>
> Table 4: Results of the Final evaluation stage of RuOpinionNE-2024
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T4.1.1.1.1">Participant</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.1.1.2">F1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.1.1.1">VatolinAlexey</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.2.1.2">0.41</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.3.2.1.1">RefalMachine</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.3.2.2">0.35</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.4.3.1.1">msuai</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.4.3.2">0.33</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.5.4.1">iarnv</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.5.4.2">0.28</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.6.5.1">Zholtikov_Michail</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.6.5.2">0.24</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.7.6.1">baseline_model</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.7.6.2">0.24</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.8.7.1">vitalymegabyte</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.8.7.2">0.20</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T4.1.9.8.1">utmn</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.1.9.8.2">0.11</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average performance of eleven different language models in a sentiment analysis task using two different prompting techniques: 10-shot (providing 10 examples before the actual task) and 1-shot (providing only one example).  The models are evaluated on their ability to extract opinion tuples from Russian news texts using the RuOpinionNE test set. The performance metric used is the F1 score, a measure that balances precision and recall. The best performing model for each setting (10-shot and 1-shot) is shown in bold, while the second-best is underlined.  The results reveal how the model size and prompting method affect the accuracy of opinion tuple extraction.
> <details>
> <summary>read the caption</summary>
> Table 5: Average model quality in 10-shot and 1-shot settings for the RuOpinionNE test set. The best results are in bold, the second best results are underlined
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.1.1">model_name</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.2.1">k=10</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.3.1">k=1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T5.1.2.1.1">Qwen2.5-32B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S6.T5.1.2.1.2.1">0.195</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S6.T5.1.2.1.3.1">0.158</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.3.2.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T5.1.3.2.2.1">0.190</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.2.3">0.112</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.4.3.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.3.2">0.184</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.3.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T5.1.4.3.3.1">0.139</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.5.4.1">Saiga-LLaMA3-8B</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.4.2">0.179</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.4.3">0.091</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.6.5.1">T-lite-it-1.0</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.6.5.2">0.157</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.6.5.3">0.096</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.7.6.1">LLaMA-3-8b-Instruct</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6.2">0.153</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6.3">0.119</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.8.7.1">Qwen2.5-14B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.7.2">0.145</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.7.3">0.121</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.9.8.1">Meta-LlaMA-3.1-8B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.9.8.2">0.141</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.9.8.3">0.090</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.10.9.1">RuAdapt-LLaMA3</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.10.9.2">0.123</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.10.9.3">0.073</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.11.10.1">OpenChat-3.5-0106</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.11.10.2">0.113</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.11.10.3">0.087</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T5.1.12.11.1">Qwen2.5-3B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T5.1.12.11.2">0.091</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T5.1.12.11.3">0.088</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the maximum F1 scores achieved by different language models on the RuOpinionNE test set.  The models were evaluated using both 10-shot and 1-shot settings.  The 10-shot setting means the model was provided with 10 example inputs before receiving the test set, while the 1-shot setting means only one example input was provided.  The table highlights the best performing model in bold and the second-best performing model with an underline, offering a clear comparison across multiple models and prompt configurations.
> <details>
> <summary>read the caption</summary>
> Table 6: Maximum model quality in 10-shot and 1-shot settings for the RuOpinionNE test set. The best results are in bold, the second best results are underlined
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.1.1">model_name</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.2.1">k=10</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.3.1">k=1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T6.1.2.1.1">Qwen2.5-32B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S6.T6.1.2.1.2.1">0.229</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S6.T6.1.2.1.3.1">0.204</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.3.2.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.3.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T6.1.3.2.2.1">0.211</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.3.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T6.1.3.2.3.1">0.157</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.4.3.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.4.3.2">0.199</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.4.3.3">0.168</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.5.4.1">Saiga-LLaMA3-8B</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.5.4.2">0.193</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.5.4.3">0.118</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.6.5.1">LLaMA-3.1-8B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.6.5.2">0.173</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.6.5.3">0.110</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.7.6.1">T-lite-it-1.0</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.7.6.2">0.171</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.7.6.3">0.119</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.8.7.1">LLaMA-3-8B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.8.7.2">0.169</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.8.7.3">0.154</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.9.8.1">Qwen2.5-14B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.9.8.2">0.169</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.9.8.3">0.144</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.10.9.1">RuAdapt-LLaMA3</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.10.9.2">0.134</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.10.9.3">0.104</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.11.10.1">OpenChat-3.5-0106</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.11.10.2">0.132</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.11.10.3">0.108</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T6.1.12.11.1">Qwen2.5-3B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.12.11.2">0.120</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T6.1.12.11.3">0.119</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the average performance of various prompts (instructions) across multiple language models when used in both 1-shot and 10-shot settings for the RuOpinionNE test set.  The table shows the average F1 score achieved by each prompt, providing a comparison of their effectiveness in opinion extraction.  It helps determine the generalizability and robustness of prompts across different language models.
> <details>
> <summary>read the caption</summary>
> Table 7: Results of all instructions averaged on the models in 10-shot and 1-shot settings for the RuOpinionNE test set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T7.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.1.1.1">instruction_id</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.1.2.1">k=10</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.1.3.1">k=1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T7.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S6.T7.1.2.1.1">28</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.1.2.1.2">0.162</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.1.2.1.3">0.113</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T7.1.3.2.1">19</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.3.2.2">0.159</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.3.2.3">0.112</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T7.1.4.3.1">17</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.4.3.2">0.158</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.4.3.3">0.120</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T7.1.5.4.1">5</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.5.4.2">0.157</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.5.4.3">0.103</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T7.1.6.5.1">0</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.6.5.2">0.157</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.6.5.3">0.105</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T7.1.7.6.1">7</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.7.6.2">0.156</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.7.6.3">0.099</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T7.1.8.7.1">23</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.8.7.2">0.155</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.8.7.3">0.108</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T7.1.9.8.1">13</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.9.8.2">0.154</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.9.8.3">0.081</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T7.1.10.9.1">12</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.10.9.2">0.154</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.10.9.3">0.112</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S6.T7.1.11.10.1">16</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T7.1.11.10.2">0.154</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T7.1.11.10.3">0.118</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt used for the baseline model in the RuOpinionNE-2024 competition.  It shows both the original Russian version and its English translation. The prompt instructs the model to identify and extract opinion tuples from a given text, specifying the required components of each tuple: source, target, polarity (positive or negative), and expression.  The prompt also includes example sentences and their corresponding extracted tuples to help guide the model. The `{text}` placeholder indicates where the input sentence would be inserted for processing.
> <details>
> <summary>read the caption</summary>
> Table 8: Textual prompt of the baseline submission; {text} refers to the input parameter of the sentence
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.06947/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06947/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}