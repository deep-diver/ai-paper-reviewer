---
title: "RuCCoD: Towards Automated ICD Coding in Russian"
summary: "New dataset for automated ICD coding in Russian enhances clinical data accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Healthcare", "🏢 AIRI, Moscow, Russia",]
showSummary: true
date: 2025-02-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.21263 {{< /keyword >}}
{{< keyword icon="writer" >}} Aleksandr Nesterov et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.21263" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.21263" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.21263/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

This study explores automating clinical coding in Russian, a language with limited biomedical resources. Existing research focuses on English datasets, leaving a gap in resources for other languages. Assigning ICD codes is crucial for medical documentation but poses challenges due to medical terminology, subjective interpretations, and changing classification standards. Errors in manual coding can lead to misdiagnosis and financial repercussions, highlighting the need for accurate and efficient coding methods.



To address these issues, this paper presents **RuCCoD, a new dataset for ICD coding in Russian**, labeled by medical professionals. It benchmarks models like BERT and LLaMA and examines transfer learning across domains. Experiments show that training with automatically predicted codes improves accuracy compared to manually annotated data. These findings highlight the potential for automating clinical coding in resource-limited languages and enhancing clinical efficiency and data accuracy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces RuCCoD, a new Russian dataset for ICD coding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Benchmarks state-of-the-art models, including BERT and LLaMA. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates improved diagnosis accuracy with automated ICD coding. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **introduces RuCCoD, a novel dataset for ICD coding in Russian**, addressing a gap in resources for low-resource languages. It also offers insights into the **performance of various models, including LLMs, for automated clinical coding**, and demonstrates the potential for improved accuracy in diagnosis prediction using AI-guided coding.

------
#### Visual Insights



![](https://arxiv.org/html/2502.21263/extracted/6242124/figures/brat_example.png)

> 🔼 Figure 1 showcases examples from the RuCCoD dataset, illustrating the annotation process for ICD codes.  Each highlighted entity (in green) represents a medical concept extracted from a Russian electronic health record (EHR).  Above each green entity is its corresponding ICD code, with an English translation provided in yellow.  This visualization clarifies how annotators linked specific diagnostic information within EHR text to standard ICD codes.
> <details>
> <summary>read the caption</summary>
> Figure 1: Examples of ICD code assignments by annotators: each entity in green is annotated with its ICD code above and its English translation (in yellow).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_border_t" id="S2.T1.1.1.1.1"></td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1">Train</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1">Test</span></th>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.2.1"># of records</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.2.2">3000</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.2.3">500</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.3.1"># of assigned entities</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.3.2">8769</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.3.3">1557</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.4.1"># of unique ICD codes</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.4.2">1455</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.4.3">548</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.5.5.1">Avg. # of codes per record</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.5.5.2">3</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.5.5.3">3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the statistics for the RuCCoD dataset used in the ICD coding task.  It shows the number of records, the number of entities assigned ICD codes, the number of unique ICD codes present in the dataset, and the average number of codes per record, broken down for both the training and testing sets of the dataset. This provides a comprehensive overview of the size and complexity of the RuCCoD dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics for the RuCCoD training and testing sets on ICD coding of diagnosis.
> </details>





### In-depth insights


#### ICD Auto-Coding
**ICD auto-coding** aims to streamline medical record management by automatically assigning standardized codes to diagnoses. This is critical for billing, insurance, and research. The challenges include navigating complex medical terminology and maintaining accuracy amidst evolving classification standards. **Automation** can reduce human error and financial repercussions linked to manual coding errors, including financial losses. The process mirrors medical concept normalization, linking physician diagnoses to ICD codes via information extraction. Recent research focuses on neural networks to improve accuracy, but challenges remain, such as data scarcity in languages other than English, variability in clinical notes, and hierarchical ICD code structures. Advanced techniques like BERT, LLMs with PEFT, and RAG are being explored to tackle these hurdles. Further, automatic ICD coding requires integration of external medical knowledge sources like knowledge graphs which will facilitate LLMs generalization on rare codes.

#### RuCCoD Dataset
The RuCCoD dataset appears to be a novel resource for ICD coding in Russian, a **low-resource language** in the biomedical domain. It's a significant contribution because most existing ICD coding datasets are in English, hindering research and development in other languages. The **dataset's creation aims to address the limitations** of using UMLS for ICD coding in Russian, as UMLS may not fully capture the structured semantic requirements of ICD. RuCCoD's manual annotation by medical professionals, focusing on ICD-10 CM concepts, ensures high-quality labels tailored to clinical practice. The dataset's size, with over 3,000 records, and the **annotation process emphasizing inter-annotator agreement**, indicates a commitment to reliability. The use of RuCCoD as a benchmark for state-of-the-art models and its application in downstream tasks highlights its potential for advancing automated clinical coding in Russian and bridging the resource gap.

#### BERT vs LLAMA
**BERT** excels in nuanced language understanding through its bidirectional training, capturing contextual relationships effectively. It's computationally intensive but yields high accuracy in various NLP tasks. **LLaMA**, a large language model, prioritizes efficient inference and generation. While it may not match BERT's contextual depth, its speed and scalability make it suitable for real-time applications. The choice hinges on balancing accuracy needs with resource constraints.

#### EHR Improvement
**EHR improvement** through AI, as discussed in the paper, centers on enhancing data accuracy and utility. The study shows **auto-labeling EHRs improves diagnostic model performance**, surpassing doctor-assigned codes. This highlights AI's potential to **refine data entry**, reduce errors, and standardize clinical info. Key is using AI **to pre-train models** on vast, auto-labeled datasets, aiding disease diagnosis. The research underscores AI's role in **advancing data quality** for better healthcare outcomes and efficiency.

#### AI-Driven Assist.
**AI-driven assistance** in medical coding and diagnosis holds immense potential. By automating ICD coding, AI can reduce errors, enhance clinical efficiency, and improve data accuracy, especially in resource-limited languages. AI can provide **independent opinions** potentially beneficial in decision-making. Automating and providing better outcomes than manual data annotation by physicians proves the complexity of the ICD system for doctors and shows that **AI can assist doctors in the diagnosis**. AI helps address challenges like terminology navigation and classification standard updates. Furthermore, automating enables comprehensive analysis, thus aiding **early disease identification**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.21263/extracted/6242124/figures/two_tasks.png)

> 🔼 This figure illustrates the two main tasks addressed in the paper: ICD coding and diagnosis prediction.  The ICD coding task (shown in blue) involves using a doctor's diagnostic conclusion (from the current visit) to assign ICD codes. An AI model is trained to perform this task, generating AI-assigned ICD codes.  The diagnosis prediction task (shown in yellow) predicts likely ICD codes based on a patient's complete medical history, excluding the doctor's conclusion from the current visit.  Both the original ICD codes (assigned by doctors) and the AI-generated ICD codes are used as training targets for the diagnosis prediction models, enabling comparison and improvement of AI performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: Schematic description of ICD coding (in blue) and diagnosis prediction tasks (in yellow). Diagnosis prediction uses prior EHR data and current visit details, excluding the doctor’s conclusion, which is used for ICD coding to generate AI-assigned ICD codes. Both original and AI ICD code lists are then used as targets to train different diagnosis prediction models.
> </details>



![](https://arxiv.org/html/2502.21263/extracted/6242124/figures/codes_stats_bigger.png)

> 🔼 This histogram displays the frequency distribution of ICD codes within the RuCCoD training dataset.  The x-axis represents ICD codes sorted by their frequency of appearance in the dataset, and the y-axis shows the number of times each code appears.  The graph reveals a highly skewed distribution, with a relatively small number of codes appearing very frequently, and a large number of codes appearing very infrequently, reflecting the uneven distribution of diagnoses in real-world clinical data.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution of ICD code frequencies in the RuCCoD train set.
> </details>



![](https://arxiv.org/html/2502.21263/extracted/6242124/figures/delta_scatter_bigger.png)

> 🔼 This figure shows the performance comparison between two models trained for diagnosis prediction on a manual test set. One model was trained using the original dataset (manually annotated), while the other was trained using a linked dataset (automatically annotated using ICD codes generated by a model).  The x-axis represents the training steps, and the y-axis represents the weighted F1-score, a metric that accounts for class imbalances in the dataset. The graph illustrates how the weighted F1-score changes as the models are trained over different numbers of steps.  It shows that the model trained on the automatically annotated dataset performs significantly better than the model trained on the original dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of weighted F1 scores on the manual diagnosis prediction test set for models trained on original and linked datasets at different training steps.
> </details>



![](https://arxiv.org/html/2502.21263/extracted/6242124/figures/graph.png)

> 🔼 This figure displays the F1-score distribution for the top and bottom 10% most frequent ICD codes within a common test set, comparing performance of the model trained on the original dataset versus the linked dataset.  The top 10% represents the most frequently occurring ICD codes, while the bottom 10% represents the least frequent codes, with a minimum frequency threshold of 15 instances within the test set. This visualization highlights the effect of training data (original vs. linked) on the model's ability to predict both frequent and infrequent disease codes.
> <details>
> <summary>read the caption</summary>
> Figure 5: F1 score distribution for top and bottom 10% frequent ICD codes in the common test set.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.3.3.4.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S3.T2.3.3.4.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.4.1.2.1">Original Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.4.1.3.1">Linked Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.4.1.4.1">Manual Test Set</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.3.3.5.2.1">Number of records</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.2">865539</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.3">865539</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.5.2.4">494</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.3.3.6.3.1">Number of unique patients</th>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.2">164527</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.3">164527</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.6.3.4">450</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.3.3.7.4.1">Number of unique ICD codes</th>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.2">3546</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.3">3546</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.7.4.4">394</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.3.3.3.4">Avg. number of ICD codes per patient</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1.1"><math alttext="3\pm 2" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mrow id="S3.T2.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.cmml"><mn id="S3.T2.1.1.1.1.m1.1.1.2" xref="S3.T2.1.1.1.1.m1.1.1.2.cmml">3</mn><mo id="S3.T2.1.1.1.1.m1.1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.1.cmml">±</mo><mn id="S3.T2.1.1.1.1.m1.1.1.3" xref="S3.T2.1.1.1.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><apply id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1"><csymbol cd="latexml" id="S3.T2.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S3.T2.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T2.1.1.1.1.m1.1.1.2">3</cn><cn id="S3.T2.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.1.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">3\pm 2</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">3 ± 2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.2"><math alttext="5\pm 2" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mrow id="S3.T2.2.2.2.2.m1.1.1" xref="S3.T2.2.2.2.2.m1.1.1.cmml"><mn id="S3.T2.2.2.2.2.m1.1.1.2" xref="S3.T2.2.2.2.2.m1.1.1.2.cmml">5</mn><mo id="S3.T2.2.2.2.2.m1.1.1.1" xref="S3.T2.2.2.2.2.m1.1.1.1.cmml">±</mo><mn id="S3.T2.2.2.2.2.m1.1.1.3" xref="S3.T2.2.2.2.2.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><apply id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1"><csymbol cd="latexml" id="S3.T2.2.2.2.2.m1.1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S3.T2.2.2.2.2.m1.1.1.2.cmml" type="integer" xref="S3.T2.2.2.2.2.m1.1.1.2">5</cn><cn id="S3.T2.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T2.2.2.2.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">5\pm 2</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">5 ± 2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.3.3"><math alttext="4\pm 2" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mrow id="S3.T2.3.3.3.3.m1.1.1" xref="S3.T2.3.3.3.3.m1.1.1.cmml"><mn id="S3.T2.3.3.3.3.m1.1.1.2" xref="S3.T2.3.3.3.3.m1.1.1.2.cmml">4</mn><mo id="S3.T2.3.3.3.3.m1.1.1.1" xref="S3.T2.3.3.3.3.m1.1.1.1.cmml">±</mo><mn id="S3.T2.3.3.3.3.m1.1.1.3" xref="S3.T2.3.3.3.3.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><apply id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1"><csymbol cd="latexml" id="S3.T2.3.3.3.3.m1.1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1.1">plus-or-minus</csymbol><cn id="S3.T2.3.3.3.3.m1.1.1.2.cmml" type="integer" xref="S3.T2.3.3.3.3.m1.1.1.2">4</cn><cn id="S3.T2.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S3.T2.3.3.3.3.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">4\pm 2</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">4 ± 2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.3.3.8.5.1">Avg. number of EHR records before current appointment</th>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.2">(15, 36, 73)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.3">(15, 36, 73)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.8.5.4">(17, 36, 77)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.3.3.9.6.1">Avg. length of EHR records per one appointment</th>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.2">(77, 167, 316)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.3">(77, 167, 316)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.9.6.4">(86, 176, 320)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.3.3.10.7.1">Patient’s age</th>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.2">(59, 67, 74)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.3">(59, 67, 74)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.10.7.4">(60, 67, 75)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.3.3.11.8.1">Percentage of male patients</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.11.8.2">69</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.11.8.3">69</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.11.8.4">71</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the RuCCoD-DP dataset, which is used for diagnosis prediction.  RuCCoD-DP is a collection of real-world electronic health records (EHRs) divided into training and testing sets. The table shows the number of records, unique patients, and unique ICD codes in each set. It also provides the average number of ICD codes per patient, the average number of EHR records per patient before the current appointment, the average length of EHR records per appointment, the average age of patients, and the percentage of male patients.  The values in parentheses represent the 25th, 50th, and 75th percentiles, giving a clearer picture of the data distribution.
> <details>
> <summary>read the caption</summary>
> Table 2: Statistics for the randomly split training and testing sets of RuCCoD-DP for diagnosis prediction. Values in brackets show the 25th, 50th, and 75th percentiles.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.2.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.3.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.4.1">F-score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.5.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T3.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.2.2.1.1">Supervised with various corpora for NER and EL</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.3.3.1">BERT, NER: NEREL-BIO + RuCCoD, EL: RuCCoD</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.3.3.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.3.2.1">0.512</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.3.3.3">0.529</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.3.3.4">0.520</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.3.3.5">0.352</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.4.4.1">BERT, NER: RuCCoN + RuCCoD, EL: RuCCoD</th>
<td class="ltx_td ltx_align_right" id="S3.T3.1.4.4.2">0.471</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.4.4.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.3.1">0.543</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.4.4.4">0.504</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.4.4.5">0.337</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.5.5.1">BERT, NER: RuCCoD, EL: RuCCoD</th>
<td class="ltx_td ltx_align_right" id="S3.T3.1.5.5.2">0.510</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.5.5.3">0.542</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.5.5.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.5.5.4.1">0.525</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.5.5.5.1">0.356</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T3.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.6.6.1.1">LLM with RAG (zero-shot with dictionaries)</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.7.7.1">LLaMA3-8b-Instruct, NEREL-BIO</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.7.7.2">0.059</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.7.7.3">0.053</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.7.7.4">0.056</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.7.7.5">0.029</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.8.8.1">LLaMA3-8b-Instruct, RuCCoN</th>
<td class="ltx_td ltx_align_right" id="S3.T3.1.8.8.2">0.164</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.8.8.3">0.15</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.8.8.4">0.157</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.8.8.5">0.085</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.9.9.1">LLaMA3-8b-Instruct, ICD dict.</th>
<td class="ltx_td ltx_align_right" id="S3.T3.1.9.9.2">0.379</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.9.9.3">0.363</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.9.9.4">0.371</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.9.9.5">0.228</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.10.10.1">LLaMA3-8b-Instruct, ICD dict. + RuCCoD</th>
<td class="ltx_td ltx_align_right" id="S3.T3.1.10.10.2">0.465</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.10.10.3">0.451</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.10.10.4">0.458</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.10.10.5">0.297</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T3.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.11.11.1.1">LLM with tuning</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.12.12.1">Phi3_5_mini, ICD dict.</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.12.12.2">0.394</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.12.12.3">0.39</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.12.12.4">0.392</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.1.12.12.5">0.244</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.13.13.1">Phi3_5_mini, ICD dict. + RuCCoD</th>
<td class="ltx_td ltx_align_right" id="S3.T3.1.13.13.2">0.483</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.13.13.3">0.477</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.13.13.4">0.48</td>
<td class="ltx_td ltx_align_right" id="S3.T3.1.13.13.5">0.316</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.1.14.14.1">Phi3_5_mini, ICD dict. + BERGAMOT</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.1.14.14.2">0.454</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.1.14.14.3">0.448</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.1.14.14.4">0.451</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.1.14.14.5">0.291</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different models on the entity-level code assignment task using the RuCCoD test set.  The models evaluated include a BERT-based pipeline, LLMs with PEFT, and LLMs with RAG.  The metrics reported are precision, recall, F1-score, and accuracy, allowing for a comprehensive comparison of model effectiveness.  The 'best' performing model for each metric is highlighted in bold.  Further experimental results using different LLMs, corpora, and terminologies are detailed in the Appendix (sections D, E, and F).
> <details>
> <summary>read the caption</summary>
> Table 3: Entity-level code assignment metrics on RuCCoD’s test set. The best results are highlighted in bold. We also refer to Appx. D, E, F on more experiments with different LMs, corpora, and terminologies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.1.1">Task</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.2.1">Model or Approach</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.3.1">LR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.4.1"># Epochs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.5.1">BS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.6.1">Scheduler</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.7.1">WD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.1.1">NER</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.1.2">RuBioBERT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.1.3">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.1.4">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.1.5">32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.1.6">Cosine <cite class="ltx_cite ltx_citemacro_cite">Loshchilov and Hutter (<a class="ltx_ref" href="https://arxiv.org/html/2502.21263v1#bib.bib49" title="">2017</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.1.7">0.01</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.3.2">
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.3.2.1">EL</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.3.2.2">BERGAMOT+BioSyn</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.3.2.3">2e-5</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.3.2.4">20</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.3.2.5">32</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.3.2.6">Adam <cite class="ltx_cite ltx_citemacro_citep">(Kingma and Ba, <a class="ltx_ref" href="https://arxiv.org/html/2502.21263v1#bib.bib39" title="">2015</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.3.2.7">0.01</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.4.3">
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.3.1">LLM tuning</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.3.2">LoRA</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.3.3">5e-5</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.3.4">33</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.3.5">2</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.3.6">Linear with Warmup</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.3.7">0.01</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.5.4.1">ICD code prediction</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.5.4.2">Longformer</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.5.4.3">5e-5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.5.4.4">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.5.4.5">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.5.4.6">Linear with Warmup</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.5.4.7">0.01</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the models and training hyperparameters used in the experiments.  It lists the learning rate (LR), number of epochs, batch size (BS), scheduler type used for adjusting learning rate during training, and weight decay (WD) values for each model.  The models are categorized by task (NER, EL, and ICD code prediction).  Understanding these hyperparameters is crucial for replicating and interpreting the experimental results.
> <details>
> <summary>read the caption</summary>
> Table 4:  Models and training hyperparameters. LR stands for learning rate, BS for batch size, WD for weight decay
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="A3.T5.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A3.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.2.1">Train Data</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A3.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.3.1">F1-score</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A3.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.4.1">Precision</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A3.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.5.1">Recall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T5.1.2.1.1">RuBioBERT</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.2.1.2">RuCCoD train</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.2.1.3">0.756</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.2.1.4">0.75</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.2.1.5">0.77</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T5.1.3.2.1">RuBioBERT</th>
<td class="ltx_td ltx_align_left" id="A3.T5.1.3.2.2">BIO-NNE train</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.3.2.3">0.62</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.3.2.4">0.57</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.3.2.5">0.67</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T5.1.4.3.1">RuBioBERT</th>
<td class="ltx_td ltx_align_left" id="A3.T5.1.4.3.2">RuCCoD + BioNNE train</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.4.3.3">0.72</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.4.3.4">0.75</td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.4.3.5">0.70</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T5.1.5.4.1">BINDER + RuBioBERT</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.5.4.2">RuCCoD train</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.5.4.3">0.71</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.5.4.4">0.72</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.5.4.5">0.71</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different models on the Named Entity Recognition (NER) task using the RuCCoD dataset.  It shows the F1-score, precision, and recall achieved by various models trained on different combinations of training data. The models evaluated include RuBioBERT (with and without BINDER), highlighting their effectiveness in extracting relevant entities from clinical texts in the Russian language.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation results for NER task on RuCCoD dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A4.T6.1.1.1.1.1">Train set</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="A4.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T6.1.1.1.2.1">SapBERT</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A4.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T6.1.1.1.3.1">CODER</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A4.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T6.1.1.1.4.1">BERGAMOT</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.2.1">@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.2.2">@5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.2.3">@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.2.4">@5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.2.5">@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.2.2.6">@5</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="A4.T6.1.3.3.1"><span class="ltx_text ltx_font_bold" id="A4.T6.1.3.3.1.1">Zero-shot evaluation, strict</span></th>
</tr>
<tr class="ltx_tr" id="A4.T6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T6.1.4.4.1">ICD dict</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.4.4.2">0.3327</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.4.4.3"><span class="ltx_text ltx_font_bold" id="A4.T6.1.4.4.3.1">0.5712</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.4.4.4">0.2631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.4.4.5">0.4687</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.4.4.6">0.3495</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.4.4.7"><span class="ltx_text ltx_font_bold" id="A4.T6.1.4.4.7.1">0.6170</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.5.5.1">ICD dict+UMLS synonyms</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.5.2"><span class="ltx_text ltx_font_bold" id="A4.T6.1.5.5.2.1">0.3546</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.5.3">0.5197</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.5.4"><span class="ltx_text ltx_font_bold" id="A4.T6.1.5.5.4.1">0.3237</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.5.5"><span class="ltx_text ltx_font_bold" id="A4.T6.1.5.5.5.1">0.4765</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.5.6"><span class="ltx_text ltx_font_bold" id="A4.T6.1.5.5.6.1">0.3559</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.5.7">0.5487</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="A4.T6.1.6.6.1"><span class="ltx_text ltx_font_bold" id="A4.T6.1.6.6.1.1">Supervised evaluation, strict</span></th>
</tr>
<tr class="ltx_tr" id="A4.T6.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T6.1.7.7.1">ICD</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.7.7.2"><span class="ltx_text ltx_font_bold" id="A4.T6.1.7.7.2.1">0.6132</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.7.7.3"><span class="ltx_text ltx_font_bold" id="A4.T6.1.7.7.3.1">0.8182</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.7.7.4"><span class="ltx_text ltx_font_bold" id="A4.T6.1.7.7.4.1">0.6202</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.7.7.5"><span class="ltx_text ltx_font_bold" id="A4.T6.1.7.7.5.1">0.8169</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.7.7.6"><span class="ltx_text ltx_font_bold" id="A4.T6.1.7.7.6.1">0.6415</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.7.7.7"><span class="ltx_text ltx_font_bold" id="A4.T6.1.7.7.7.1">0.8459</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.8.8.1">ICD+UMLS sumonyms</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.8.8.2">0.5326</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.8.8.3">0.7382</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.8.8.4">0.5358</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.8.8.5">0.7318</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.8.8.6">0.4984</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.8.8.7">0.7253</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.9.9.1">RuCCoN</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.9.9.2">0.3591</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.9.9.3">0.5345</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.9.9.4">0.3598</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.9.9.5">0.5732</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.9.9.6">0.3643</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.9.9.7">0.5313</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.10.10.1">RuCCoN+ICD</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.10.10.2">0.3952</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.10.10.3">0.5732</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.10.10.4">0.3888</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.10.10.5">0.6570</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.10.10.6">0.3817</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.10.10.7">0.5983</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.11.11.1">NEREL-BIO</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.11.11.2">0.3443</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.11.11.3">0.4913</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.11.11.4">0.3378</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.11.11.5">0.5274</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.11.11.6">0.3353</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.11.11.7">0.5113</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.12.12.1">NEREL-BIO+ICD</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.12.12.2">0.3804</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.12.12.3">0.5596</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.12.12.4">0.3804</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.12.12.5">0.6325</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.12.12.6">0.3598</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.12.12.7">0.5525</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="A4.T6.1.13.13.1"><span class="ltx_text ltx_font_bold" id="A4.T6.1.13.13.1.1">Zero-shot evaluation, relaxed</span></th>
</tr>
<tr class="ltx_tr" id="A4.T6.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T6.1.14.14.1">ICD dict</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.14.14.2">0.4842</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.14.14.3"><span class="ltx_text ltx_font_bold" id="A4.T6.1.14.14.3.1">0.6886</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.14.14.4">0.3752</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.14.14.5">0.6190</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.14.14.6">0.5035</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.14.14.7"><span class="ltx_text ltx_font_bold" id="A4.T6.1.14.14.7.1">0.7286</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.15.15.1">ICD dict+UMLS synonyms</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.15.15.2"><span class="ltx_text ltx_font_bold" id="A4.T6.1.15.15.2.1">0.5551</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.15.15.3">0.6867</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.15.15.4"><span class="ltx_text ltx_font_bold" id="A4.T6.1.15.15.4.1">0.5055</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.15.15.5"><span class="ltx_text ltx_font_bold" id="A4.T6.1.15.15.5.1">0.6293</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.15.15.6"><span class="ltx_text ltx_font_bold" id="A4.T6.1.15.15.6.1">0.5603</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.15.15.7">0.7073</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.16.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="A4.T6.1.16.16.1"><span class="ltx_text ltx_font_bold" id="A4.T6.1.16.16.1.1">Supervised evaluation, relaxed</span></th>
</tr>
<tr class="ltx_tr" id="A4.T6.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T6.1.17.17.1">ICD</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.17.17.2">0.7763</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.17.17.3"><span class="ltx_text ltx_font_bold" id="A4.T6.1.17.17.3.1">0.8839</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.17.17.4"><span class="ltx_text ltx_font_bold" id="A4.T6.1.17.17.4.1">0.7872</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.17.17.5">0.8743</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.17.17.6"><span class="ltx_text ltx_font_bold" id="A4.T6.1.17.17.6.1">0.7917</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.17.17.7"><span class="ltx_text ltx_font_bold" id="A4.T6.1.17.17.7.1">0.8943</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.18.18.1">ICD+UMLS sumonyms</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.18.18.2"><span class="ltx_text ltx_font_bold" id="A4.T6.1.18.18.2.1">0.7788</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.18.18.3">0.8616</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.18.18.4">0.7714</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.18.18.5"><span class="ltx_text ltx_font_bold" id="A4.T6.1.18.18.5.1">0.8860</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.18.18.6">0.7449</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.18.18.7">0.8738</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.19.19.1">RuCCoN</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.19.19.2">0.5235</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.19.19.3">0.6531</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.19.19.4">0.5429</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.19.19.5">0.7208</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.19.19.6">0.5132</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.19.19.7">0.6564</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.20.20.1">RuCCoN+ICD</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.20.20.2">0.5493</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.20.20.3">0.6602</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.20.20.4">0.5770</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.20.20.5">0.7485</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.20.20.6">0.5571</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.20.20.7">0.6873</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T6.1.21.21.1">NEREL-BIO</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.21.21.2">0.4803</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.21.21.3">0.6067</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.21.21.4">0.4958</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.21.21.5">0.6634</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.21.21.6">0.4778</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.21.21.7">0.6170</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A4.T6.1.22.22.1">NEREL-BIO+ICD</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.22.22.2">0.5455</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.22.22.3">0.6447</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.22.22.4">0.5474</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.22.22.5">0.7292</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.22.22.6">0.5384</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.1.22.22.7">0.6505</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the effectiveness of transfer learning in biomedical entity linking.  Four different models (SapBERT, CODER, BERGAMOT) were trained using various combinations of datasets: RuCCoD (Russian ICD Coding Dataset), RuCCON, and NEREL-BIO.  Each model was tested with two evaluation methods: 'strict' (exact match between predicted and ground truth codes) and 'relaxed' (truncated codes to higher level).  The results show the precision, recall, F1-score, and accuracy for each model and dataset combination under both strict and relaxed evaluation schemes. One data setting, ICD+UMLS synonyms, involves enriching the training data with disease name synonyms from the UMLS knowledge base to assess the impact of vocabulary expansion.
> <details>
> <summary>read the caption</summary>
> Table 6: Cross-domain transfer results for biomedical linking models. Evaluation results for linking models trained on RuCOD, RuCCoN, NEREL-BIO as well as their union. ICD+UMLS synonyms stands for ICD train set with the vocabulary enriched with ICD disease name synonyms from the UMLS knowledge base. The best results for each model and set-up are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A6.T7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T7.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T7.1.1.1.2.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A6.T7.1.1.1.3.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A6.T7.1.1.1.4.1">F-score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A6.T7.1.1.1.5.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="A6.T7.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A6.T7.1.2.2.1.1">NER</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T7.1.3.3.1">Llama3-Med42-8B, RuCCoD</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.3.3.2"><span class="ltx_text ltx_font_bold" id="A6.T7.1.3.3.2.1">0.642</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.3.3.3"><span class="ltx_text ltx_font_bold" id="A6.T7.1.3.3.3.1">0.642</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.3.3.4"><span class="ltx_text ltx_font_bold" id="A6.T7.1.3.3.4.1">0.642</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.3.3.5"><span class="ltx_text ltx_font_bold" id="A6.T7.1.3.3.5.1">0.473</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.4.4">
<td class="ltx_td ltx_align_left" id="A6.T7.1.4.4.1">Qwen2.5-7B-Instruct, RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.4.4.2">0.567</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.4.4.3">0.562</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.4.4.4">0.565</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.4.4.5">0.393</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.5.5">
<td class="ltx_td ltx_align_left" id="A6.T7.1.5.5.1">Phi3_5_mini, RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.5.5.2">0.632</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.5.5.3">0.623</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.5.5.4">0.627</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.5.5.5">0.457</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.6.6">
<td class="ltx_td ltx_align_left" id="A6.T7.1.6.6.1">Mistral-Nemo, RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.6.6.2">0.631</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.6.6.3">0.598</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.6.6.4">0.614</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.6.6.5">0.443</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="A6.T7.1.7.7.1"><span class="ltx_text ltx_font_bold" id="A6.T7.1.7.7.1.1">NER+Linking</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T7.1.8.8.1">Llama3-Med42-8B, ICD dict.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.8.8.2">0.149</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.8.8.3">0.149</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.8.8.4">0.149</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.8.8.5">0.08</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.9.9">
<td class="ltx_td ltx_align_left" id="A6.T7.1.9.9.1">Llama3-Med42-8B, ICD dict. + RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.9.9.2">0.299</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.9.9.3">0.299</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.9.9.4">0.299</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.9.9.5">0.176</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.10.10">
<td class="ltx_td ltx_align_left" id="A6.T7.1.10.10.1">Llama3-Med42-8B, ICD dict. + BERGAMOT</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.10.10.2">0.286</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.10.10.3">0.286</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.10.10.4">0.286</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.10.10.5">0.167</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.11.11">
<td class="ltx_td ltx_align_left" id="A6.T7.1.11.11.1">Qwen2.5-7B-Instruct, ICD dict.</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.11.11.2">0.188</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.11.11.3">0.186</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.11.11.4">0.187</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.11.11.5">0.103</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.12.12">
<td class="ltx_td ltx_align_left" id="A6.T7.1.12.12.1">Qwen2.5-7B-Instruct, ICD dict. + RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.12.12.2">0.281</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.12.12.3">0.279</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.12.12.4">0.28</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.12.12.5">0.163</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.13.13">
<td class="ltx_td ltx_align_left" id="A6.T7.1.13.13.1">Qwen2.5-7B-Instruct, ICD dict. + BERGAMOT</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.13.13.2">0.2</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.13.13.3">0.198</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.13.13.4">0.199</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.13.13.5">0.11</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.14.14">
<td class="ltx_td ltx_align_left" id="A6.T7.1.14.14.1">Phi3_5_mini, ICD dict.</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.14.14.2">0.272</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.14.14.3">0.268</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.14.14.4">0.27</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.14.14.5">0.156</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.15.15">
<td class="ltx_td ltx_align_left" id="A6.T7.1.15.15.1">Phi3_5_mini, ICD dict. + RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.15.15.2"><span class="ltx_text ltx_font_bold" id="A6.T7.1.15.15.2.1">0.335</span></td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.15.15.3"><span class="ltx_text ltx_font_bold" id="A6.T7.1.15.15.3.1">0.33</span></td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.15.15.4"><span class="ltx_text ltx_font_bold" id="A6.T7.1.15.15.4.1">0.333</span></td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.15.15.5"><span class="ltx_text ltx_font_bold" id="A6.T7.1.15.15.5.1">0.199</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.16.16">
<td class="ltx_td ltx_align_left" id="A6.T7.1.16.16.1">Phi3_5_mini, ICD dict. + BERGAMOT</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.16.16.2">0.322</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.16.16.3">0.317</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.16.16.4">0.32</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.16.16.5">0.19</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.17.17">
<td class="ltx_td ltx_align_left" id="A6.T7.1.17.17.1">Mistral-Nemo, ICD dict.</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.17.17.2">0.231</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.17.17.3">0.219</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.17.17.4">0.224</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.17.17.5">0.126</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.18.18">
<td class="ltx_td ltx_align_left" id="A6.T7.1.18.18.1">Mistral-Nemo, ICD dict. + RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.18.18.2">0.303</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.18.18.3">0.287</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.18.18.4">0.295</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.18.18.5">0.173</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.19.19">
<td class="ltx_td ltx_align_left" id="A6.T7.1.19.19.1">Mistral-Nemo, ICD dict. + BERGAMOT</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.19.19.2">0.267</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.19.19.3">0.253</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.19.19.4">0.26</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.19.19.5">0.149</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.20.20">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="A6.T7.1.20.20.1"><span class="ltx_text ltx_font_bold" id="A6.T7.1.20.20.1.1">Code assignment</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T7.1.21.21.1">Llama3-Med42-8B, ICD dict.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.21.21.2">0.229</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.21.21.3">0.231</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.21.21.4">0.23</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T7.1.21.21.5">0.13</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.22.22">
<td class="ltx_td ltx_align_left" id="A6.T7.1.22.22.1">Llama3-Med42-8B, ICD dict. + RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.22.22.2">0.434</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.22.22.3">0.435</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.22.22.4">0.435</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.22.22.5">0.278</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.23.23">
<td class="ltx_td ltx_align_left" id="A6.T7.1.23.23.1">Llama3-Med42-8B, ICD dict. + BERGAMOT</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.23.23.2">0.403</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.23.23.3">0.405</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.23.23.4">0.404</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.23.23.5">0.253</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.24.24">
<td class="ltx_td ltx_align_left" id="A6.T7.1.24.24.1">Qwen2.5-7B-Instruct, ICD dict.</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.24.24.2">0.296</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.24.24.3">0.295</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.24.24.4">0.295</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.24.24.5">0.173</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.25.25">
<td class="ltx_td ltx_align_left" id="A6.T7.1.25.25.1">Qwen2.5-7B-Instruct, ICD dict. + RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.25.25.2">0.456</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.25.25.3">0.449</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.25.25.4">0.452</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.25.25.5">0.292</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.26.26">
<td class="ltx_td ltx_align_left" id="A6.T7.1.26.26.1">Qwen2.5-7B-Instruct, ICD dict. + BERGAMOT</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.26.26.2">0.305</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.26.26.3">0.303</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.26.26.4">0.304</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.26.26.5">0.179</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.27.27">
<td class="ltx_td ltx_align_left" id="A6.T7.1.27.27.1">Phi3_5_mini, ICD dict.</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.27.27.2">0.394</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.27.27.3">0.39</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.27.27.4">0.392</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.27.27.5">0.244</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.28.28">
<td class="ltx_td ltx_align_left" id="A6.T7.1.28.28.1">Phi3_5_mini, ICD dict. + RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.28.28.2"><span class="ltx_text ltx_font_bold" id="A6.T7.1.28.28.2.1">0.483</span></td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.28.28.3"><span class="ltx_text ltx_font_bold" id="A6.T7.1.28.28.3.1">0.477</span></td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.28.28.4"><span class="ltx_text ltx_font_bold" id="A6.T7.1.28.28.4.1">0.48</span></td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.28.28.5"><span class="ltx_text ltx_font_bold" id="A6.T7.1.28.28.5.1">0.316</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.29.29">
<td class="ltx_td ltx_align_left" id="A6.T7.1.29.29.1">Phi3_5_mini, ICD dict. + BERGAMOT</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.29.29.2">0.454</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.29.29.3">0.448</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.29.29.4">0.451</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.29.29.5">0.291</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.30.30">
<td class="ltx_td ltx_align_left" id="A6.T7.1.30.30.1">Mistral-Nemo, ICD dict.</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.30.30.2">0.326</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.30.30.3">0.311</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.30.30.4">0.319</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.30.30.5">0.189</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.31.31">
<td class="ltx_td ltx_align_left" id="A6.T7.1.31.31.1">Mistral-Nemo, ICD dict. + RuCCoD</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.31.31.2">0.458</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.31.31.3">0.435</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.31.31.4">0.446</td>
<td class="ltx_td ltx_align_right" id="A6.T7.1.31.31.5">0.287</td>
</tr>
<tr class="ltx_tr" id="A6.T7.1.32.32">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T7.1.32.32.1">Mistral-Nemo, ICD dict. + BERGAMOT</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T7.1.32.32.2">0.394</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T7.1.32.32.3">0.372</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T7.1.32.32.4">0.383</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A6.T7.1.32.32.5">0.237</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of several fine-tuned large language models (LLMs) on the RuCCoD dataset for the task of ICD (International Classification of Diseases) coding.  The models were evaluated using micro-averaged precision, recall, F1-score, and accuracy. The table shows the results broken down by the model used and the different corpora employed during training (ICD dict., ICD dict.+RuCCoD, ICD dict.+BERGAMOT).  The best-performing model and corpus combination for each metric are highlighted in bold, allowing for a direct comparison across various LLMs and training data configurations.
> <details>
> <summary>read the caption</summary>
> Table 7: ICD coding results for finetuned LLMs on RuCCoD. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T8.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A7.T8.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.2.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T8.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.3.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T8.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.4.1">F-score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T8.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.5.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T8.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A7.T8.1.2.2.1.1">NER</span></th>
</tr>
<tr class="ltx_tr" id="A7.T8.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T8.1.3.3.1">BioBERT, Biosyn, RuCCoD</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.3.3.2">0.649</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.3.3.3">0.655</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.3.3.4">0.653</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.3.3.5">0.485</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.4.4.1">BioBERT, RuCCoD</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.4.4.2"><span class="ltx_text ltx_font_bold" id="A7.T8.1.4.4.2.1">0.721</span></td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.4.4.3"><span class="ltx_text ltx_font_bold" id="A7.T8.1.4.4.3.1">0.769</span></td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.4.4.4"><span class="ltx_text ltx_font_bold" id="A7.T8.1.4.4.4.1">0.744</span></td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.4.4.5"><span class="ltx_text ltx_font_bold" id="A7.T8.1.4.4.5.1">0.592</span></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.5.5.1">BioBERT, NEREL-BIO</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.5.5.2">0.588</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.5.5.3">0.675</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.5.5.4">0.628</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.5.5.5">0.458</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.6.6.1">BioBERT, NEREL-BIO, RuCCoD</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.6.6.2">0.689</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.6.6.3">0.713</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.6.6.4">0.701</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.6.6.5">0.54</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.7.7.1">BioBERT, RuCCoN</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.7.7.2">0.637</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.7.7.3">0.613</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.7.7.4">0.625</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.7.7.5">0.454</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.8.8.1">BioBERT, RuCCoN + RuCCoD</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.8.8.2">0.609</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.8.8.3">0.709</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.8.8.4">0.655</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.8.8.5">0.487</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T8.1.9.9.1"><span class="ltx_text ltx_font_bold" id="A7.T8.1.9.9.1.1">NER+Linking</span></th>
</tr>
<tr class="ltx_tr" id="A7.T8.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T8.1.10.10.1">BioBERT, Biosyn, RuCCoD</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.10.10.2">0.392</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.10.10.3">0.396</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.10.10.4">0.394</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.10.10.5">0.245</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.11.11.1">BioBERT, RuCCoD</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.11.11.2"><span class="ltx_text ltx_font_bold" id="A7.T8.1.11.11.2.1">0.427</span></td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.11.11.3"><span class="ltx_text ltx_font_bold" id="A7.T8.1.11.11.3.1">0.455</span></td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.11.11.4"><span class="ltx_text ltx_font_bold" id="A7.T8.1.11.11.4.1">0.441</span></td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.11.11.5"><span class="ltx_text ltx_font_bold" id="A7.T8.1.11.11.5.1">0.283</span></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.12.12.1">BioBERT, NEREL-BIO</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.12.12.2">0.353</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.12.12.3">0.406</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.12.12.4">0.377</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.12.12.5">0.233</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.13.13.1">BioBERT, NEREL-BIO, RuCCoD</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.13.13.2">0.406</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.13.13.3">0.42</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.13.13.4">0.413</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.13.13.5">0.26</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.14.14.1">BioBERT, RuCCoN</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.14.14.2">0.387</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.14.14.3">0.372</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.14.14.4">0.379</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.14.14.5">0.234</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.15.15.1">BioBERT, RuCCoN + RuCCoD</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.15.15.2">0.351</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.15.15.3">0.409</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.15.15.4">0.378</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.15.15.5">0.233</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.16.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T8.1.16.16.1"><span class="ltx_text ltx_font_bold" id="A7.T8.1.16.16.1.1">Code assignment</span></th>
</tr>
<tr class="ltx_tr" id="A7.T8.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T8.1.17.17.1">BioBERT, Biosyn, RuCCoD</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.17.17.2">0.507</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.17.17.3">0.508</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.17.17.4">0.507</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T8.1.17.17.5">0.340</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.18.18.1">BioBERT, RuCCoD</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.18.18.2">0.51</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.18.18.3">0.542</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.18.18.4"><span class="ltx_text ltx_font_bold" id="A7.T8.1.18.18.4.1">0.525</span></td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.18.18.5"><span class="ltx_text ltx_font_bold" id="A7.T8.1.18.18.5.1">0.356</span></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.19.19.1">BioBERT, NEREL-BIO</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.19.19.2">0.466</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.19.19.3">0.531</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.19.19.4">0.497</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.19.19.5">0.33</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.20.20.1">BioBERT, NEREL-BIO, RuCCoD</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.20.20.2"><span class="ltx_text ltx_font_bold" id="A7.T8.1.20.20.2.1">0.512</span></td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.20.20.3">0.529</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.20.20.4">0.52</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.20.20.5">0.352</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.21.21.1">BioBERT, RuCCoN</th>
<td class="ltx_td ltx_align_right" id="A7.T8.1.21.21.2">0.508</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.21.21.3">0.485</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.21.21.4">0.496</td>
<td class="ltx_td ltx_align_right" id="A7.T8.1.21.21.5">0.33</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A7.T8.1.22.22.1">BioBERT, RuCCoN + RuCCoD</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T8.1.22.22.2">0.471</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T8.1.22.22.3"><span class="ltx_text ltx_font_bold" id="A7.T8.1.22.22.3.1">0.543</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T8.1.22.22.4">0.504</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T8.1.22.22.5">0.337</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of a BERT-based information extraction (IE) pipeline on the RuCCoD corpus for three entity-level tasks: Named Entity Recognition (NER), NER + Entity Linking, and ICD Code Assignment.  The pipeline uses various combinations of pre-trained models and training corpora (RuCCoD, NEREL-BIO, RuCCON, and BioSyn) for NER and entity linking.  The results are shown as precision, recall, F1-score, and accuracy metrics, highlighting the best-performing configurations for each task. This table demonstrates the impact of different model choices and training data on the accuracy of extracting and linking disease-related entities to ICD codes. 
> <details>
> <summary>read the caption</summary>
> Table 8: Evaluation results for entity-level tasks for BERT-based IE pipeline on RuCCoD corpus. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A7.T9.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T9.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.1.2.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T9.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.1.3.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T9.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.1.4.1">F-score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T9.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.1.5.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T9.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.2.2.1.1">NER: ICD dict.</span></th>
</tr>
<tr class="ltx_tr" id="A7.T9.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T9.1.3.3.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.3.3.2">0.208</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.3.3.3">0.088</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.3.3.4">0.124</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.3.3.5">0.066</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.4.4.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.4.4.2">0.202</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.4.4.3">0.084</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.4.4.4">0.118</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.4.4.5">0.063</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.5.5.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.5.5.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.5.5.2.1">0.211</span></td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.5.5.3"><span class="ltx_text ltx_font_bold" id="A7.T9.1.5.5.3.1">0.093</span></td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.5.5.4"><span class="ltx_text ltx_font_bold" id="A7.T9.1.5.5.4.1">0.129</span></td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.5.5.5"><span class="ltx_text ltx_font_bold" id="A7.T9.1.5.5.5.1">0.069</span></td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.6.6.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.6.6.2">0.198</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.6.6.3">0.072</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.6.6.4">0.105</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.6.6.5">0.055</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.7.7.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.7.7.2">0.206</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.7.7.3">0.087</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.7.7.4">0.122</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.7.7.5">0.065</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T9.1.8.8.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.8.8.1.1">NER: ICD dict. + RuCCoD</span></th>
</tr>
<tr class="ltx_tr" id="A7.T9.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T9.1.9.9.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.9.9.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.9.9.2.1">0.581</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.9.9.3"><span class="ltx_text ltx_font_bold" id="A7.T9.1.9.9.3.1">0.456</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.9.9.4"><span class="ltx_text ltx_font_bold" id="A7.T9.1.9.9.4.1">0.511</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.9.9.5"><span class="ltx_text ltx_font_bold" id="A7.T9.1.9.9.5.1">0.343</span></td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.10.10.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.10.10.2">0.556</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.10.10.3">0.441</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.10.10.4">0.492</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.10.10.5">0.326</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.11.11.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.11.11.2">0.543</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.11.11.3">0.450</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.11.11.4">0.492</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.11.11.5">0.326</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.12.12.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.12.12.2">0.541</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.12.12.3">0.372</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.12.12.4">0.441</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.12.12.5">0.283</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.13.13.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.13.13.2">0.566</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.13.13.3">0.440</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.13.13.4">0.495</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.13.13.5">0.329</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T9.1.14.14.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.14.14.1.1">NER+Linking: ICD dict.</span></th>
</tr>
<tr class="ltx_tr" id="A7.T9.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T9.1.15.15.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.15.15.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.15.15.2.1">0.071</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.15.15.3">0.067</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.15.15.4"><span class="ltx_text ltx_font_bold" id="A7.T9.1.15.15.4.1">0.069</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.15.15.5"><span class="ltx_text ltx_font_bold" id="A7.T9.1.15.15.5.1">0.036</span></td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.16.16.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.16.16.2">0.058</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.16.16.3">0.063</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.16.16.4">0.060</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.16.16.5">0.031</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.17.17.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.17.17.2">0.062</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.17.17.3"><span class="ltx_text ltx_font_bold" id="A7.T9.1.17.17.3.1">0.069</span></td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.17.17.4">0.065</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.17.17.5">0.034</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.18.18.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.18.18.2">0.066</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.18.18.3">0.056</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.18.18.4">0.060</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.18.18.5">0.031</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.19.19.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.19.19.2">0.065</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.19.19.3">0.065</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.19.19.4">0.065</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.19.19.5">0.033</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T9.1.20.20.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.20.20.1.1">NER+Linking: ICD dict. + RuCCoD</span></th>
</tr>
<tr class="ltx_tr" id="A7.T9.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T9.1.21.21.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.21.21.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.21.21.2.1">0.272</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.21.21.3"><span class="ltx_text ltx_font_bold" id="A7.T9.1.21.21.3.1">0.264</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.21.21.4"><span class="ltx_text ltx_font_bold" id="A7.T9.1.21.21.4.1">0.268</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.21.21.5"><span class="ltx_text ltx_font_bold" id="A7.T9.1.21.21.5.1">0.155</span></td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.22.22.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.22.22.2">0.235</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.22.22.3">0.261</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.22.22.4">0.247</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.22.22.5">0.141</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.23.23.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.23.23.2">0.228</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.23.23.3">0.257</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.23.23.4">0.242</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.23.23.5">0.137</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.24.24.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.24.24.2">0.247</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.24.24.3">0.215</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.24.24.4">0.230</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.24.24.5">0.130</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.25.25.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.25.25.2">0.244</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.25.25.3">0.246</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.25.25.4">0.245</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.25.25.5">0.140</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.26.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T9.1.26.26.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.26.26.1.1">Code assignment: ICD dict.</span></th>
</tr>
<tr class="ltx_tr" id="A7.T9.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T9.1.27.27.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.27.27.2">0.379</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.27.27.3">0.363</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.27.27.4">0.371</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.27.27.5">0.228</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.28.28.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.28.28.2">0.310</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.28.28.3">0.345</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.28.28.4">0.327</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.28.28.5">0.195</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.29.29.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.29.29.2">0.260</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.29.29.3">0.294</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.29.29.4">0.276</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.29.29.5">0.160</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.30.30.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.30.30.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.30.30.2.1">0.413</span></td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.30.30.3">0.360</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.30.30.4">0.385</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.30.30.5">0.238</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.31.31.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.31.31.2">0.401</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.31.31.3"><span class="ltx_text ltx_font_bold" id="A7.T9.1.31.31.3.1">0.411</span></td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.31.31.4"><span class="ltx_text ltx_font_bold" id="A7.T9.1.31.31.4.1">0.406</span></td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.31.31.5"><span class="ltx_text ltx_font_bold" id="A7.T9.1.31.31.5.1">0.255</span></td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.32.32">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T9.1.32.32.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.32.32.1.1">Code assignment: ICD dict. + RuCCoD</span></th>
</tr>
<tr class="ltx_tr" id="A7.T9.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T9.1.33.33.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.33.33.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.33.33.2.1">0.465</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.33.33.3">0.451</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.33.33.4">0.458</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T9.1.33.33.5">0.297</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.34.34.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.34.34.2">0.434</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.34.34.3"><span class="ltx_text ltx_font_bold" id="A7.T9.1.34.34.3.1">0.483</span></td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.34.34.4">0.457</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.34.34.5">0.296</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.35.35.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.35.35.2">0.409</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.35.35.3">0.458</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.35.35.4">0.432</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.35.35.5">0.276</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T9.1.36.36.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T9.1.36.36.2">0.462</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.36.36.3">0.401</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.36.36.4">0.429</td>
<td class="ltx_td ltx_align_right" id="A7.T9.1.36.36.5">0.273</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A7.T9.1.37.37.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T9.1.37.37.2">0.461</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T9.1.37.37.3">0.465</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T9.1.37.37.4"><span class="ltx_text ltx_font_bold" id="A7.T9.1.37.37.4.1">0.463</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T9.1.37.37.5"><span class="ltx_text ltx_font_bold" id="A7.T9.1.37.37.5.1">0.301</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different Large Language Models (LLMs) with Retrieval-Augmented Generation (RAG) on three tasks related to ICD coding: Named Entity Recognition (NER), linking entities to ICD codes, and end-to-end entity linking.  It shows precision, recall, F1-score, and accuracy for each LLM on each task, using different knowledge sources (ICD dictionary, RuCCOD dataset) for the RAG component.
> <details>
> <summary>read the caption</summary>
> Table 9: Evaluation results for NER, Code assignment, and end-to-end entity linking task on RuCCoD for LLM+RAG pipeline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T10.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T10.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A7.T10.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T10.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.2.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T10.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.3.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T10.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.4.1">F-score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T10.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.5.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T10.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.2.2.1.1">NER: NEREL-BIO</span></th>
</tr>
<tr class="ltx_tr" id="A7.T10.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T10.1.3.3.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.3.3.2">0.100</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.3.3.3">0.042</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.3.3.4">0.059</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.3.3.5">0.030</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.4.4.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.4.4.2">0.104</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.4.4.3">0.043</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.4.4.4">0.060</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.4.4.5">0.031</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.5.5.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.5.5.2">0.098</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.5.5.3">0.043</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.5.5.4">0.059</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.5.5.5">0.031</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.6.6.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.6.6.2"><span class="ltx_text ltx_font_bold" id="A7.T10.1.6.6.2.1">0.115</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.6.6.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.6.6.3.1">0.044</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.6.6.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.6.6.4.1">0.063</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.6.6.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.6.6.5.1">0.033</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.7.7.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.7.7.2">0.099</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.7.7.3">0.043</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.7.7.4">0.060</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.7.7.5">0.031</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T10.1.8.8.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.8.8.1.1">NER: RuCCoN</span></th>
</tr>
<tr class="ltx_tr" id="A7.T10.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T10.1.9.9.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.9.9.2">0.188</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.9.9.3">0.088</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.9.9.4">0.120</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.9.9.5">0.064</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.10.10.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.10.10.2">0.174</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.10.10.3">0.079</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.10.10.4">0.108</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.10.10.5">0.057</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.11.11.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.11.11.2">0.172</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.11.11.3">0.085</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.11.11.4">0.114</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.11.11.5">0.060</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.12.12.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.12.12.2"><span class="ltx_text ltx_font_bold" id="A7.T10.1.12.12.2.1">0.197</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.12.12.3">0.082</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.12.12.4">0.116</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.12.12.5">0.061</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.13.13.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.13.13.2">0.185</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.13.13.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.13.13.3.1">0.091</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.13.13.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.13.13.4.1">0.122</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.13.13.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.13.13.5.1">0.065</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T10.1.14.14.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.14.14.1.1">NER+Linking: NEREL-BIO</span></th>
</tr>
<tr class="ltx_tr" id="A7.T10.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T10.1.15.15.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.15.15.2">0.023</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.15.15.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.15.15.3.1">0.020</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.15.15.4">0.021</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.15.15.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.15.15.5.1">0.011</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.16.16.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.16.16.2">0.018</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.16.16.3">0.019</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.16.16.4">0.018</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.16.16.5">0.009</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.17.17.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.17.17.2">0.019</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.17.17.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.17.17.3.1">0.020</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.17.17.4">0.019</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.17.17.5">0.010</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.18.18.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.18.18.2"><span class="ltx_text ltx_font_bold" id="A7.T10.1.18.18.2.1">0.025</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.18.18.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.18.18.3.1">0.020</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.18.18.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.18.18.4.1">0.022</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.18.18.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.18.18.5.1">0.011</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.19.19.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.19.19.2">0.021</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.19.19.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.19.19.3.1">0.020</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.19.19.4">0.020</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.19.19.5">0.010</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T10.1.20.20.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.20.20.1.1">NER+Linking: RuCCoN</span></th>
</tr>
<tr class="ltx_tr" id="A7.T10.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T10.1.21.21.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.21.21.2">0.050</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.21.21.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.21.21.3.1">0.046</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.21.21.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.21.21.4.1">0.048</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.21.21.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.21.21.5.1">0.025</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.22.22.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.22.22.2">0.042</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.22.22.3">0.044</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.22.22.4">0.043</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.22.22.5">0.022</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.23.23.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.23.23.2">0.038</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.23.23.3">0.041</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.23.23.4">0.040</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.23.23.5">0.020</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.24.24.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.24.24.2"><span class="ltx_text ltx_font_bold" id="A7.T10.1.24.24.2.1">0.053</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.24.24.3">0.044</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.24.24.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.24.24.4.1">0.048</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.24.24.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.24.24.5.1">0.025</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.25.25.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.25.25.2">0.048</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.25.25.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.25.25.3.1">0.046</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.25.25.4">0.047</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.25.25.5">0.024</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.26.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T10.1.26.26.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.26.26.1.1">Code assignment: NEREL-BIO</span></th>
</tr>
<tr class="ltx_tr" id="A7.T10.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T10.1.27.27.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.27.27.2">0.059</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.27.27.3">0.053</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.27.27.4">0.056</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.27.27.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.27.27.5.1">0.029</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.28.28.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.28.28.2">0.045</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.28.28.3">0.047</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.28.28.4">0.046</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.28.28.5">0.024</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.29.29.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.29.29.2">0.046</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.29.29.3">0.049</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.29.29.4">0.047</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.29.29.5">0.024</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.30.30.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.30.30.2"><span class="ltx_text ltx_font_bold" id="A7.T10.1.30.30.2.1">0.062</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.30.30.3">0.051</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.30.30.4">0.056</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.30.30.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.30.30.5.1">0.029</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.31.31.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.31.31.2">0.058</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.31.31.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.31.31.3.1">0.056</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.31.31.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.31.31.4.1">0.057</span></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.31.31.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.31.31.5.1">0.029</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.32.32">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T10.1.32.32.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.32.32.1.1">Code assignment: RuCCoN</span></th>
</tr>
<tr class="ltx_tr" id="A7.T10.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T10.1.33.33.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.33.33.2"><span class="ltx_text ltx_font_bold" id="A7.T10.1.33.33.2.1">0.164</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.33.33.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.33.33.3.1">0.150</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.33.33.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.33.33.4.1">0.157</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.33.33.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.33.33.5.1">0.085</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.34.34.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.34.34.2">0.125</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.34.34.3">0.131</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.34.34.4">0.128</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.34.34.5">0.068</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.35.35.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.35.35.2">0.125</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.35.35.3">0.134</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.35.35.4">0.129</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.35.35.5">0.069</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.36.36.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.36.36.2">0.156</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.36.36.3">0.129</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.36.36.4">0.141</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.36.36.5">0.076</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A7.T10.1.37.37.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T10.1.37.37.2">0.156</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T10.1.37.37.3">0.152</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T10.1.37.37.4">0.154</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T10.1.37.37.5">0.084</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different Large Language Models (LLMs) with Retrieval Augmented Generation (RAG) on three tasks related to ICD coding: Named Entity Recognition (NER), NER+linking, and code assignment.  The evaluation was performed on the RuCCoD dataset, using either NEREL-BIO or RuCCoN as vectorstores. The results show precision, recall, F-score, and accuracy for each model and task.  This helps assess the efficacy of different LLMs and approaches in automating various stages of the ICD coding process.
> <details>
> <summary>read the caption</summary>
> Table 10: Evaluation results for NER, Code assignment, and end-to-end entity linking task on RuCCoD for LLM+RAG pipeline using NEREL-BIO and RuCCoN for vectorstore.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T11.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T11.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A7.T11.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T11.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.2.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T11.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.3.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T11.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.4.1">F-score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T11.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.5.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T11.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A7.T11.1.2.2.1.1">NER: ICD dict.</span></th>
</tr>
<tr class="ltx_tr" id="A7.T11.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T11.1.3.3.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.2">0.208</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.3">0.088</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.4">0.124</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.5">0.066</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.4.4.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.2">0.202</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.3">0.084</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.4">0.118</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.5">0.063</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.5.5.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.2"><span class="ltx_text ltx_font_bold" id="A7.T11.1.5.5.2.1">0.211</span></td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.3"><span class="ltx_text ltx_font_bold" id="A7.T11.1.5.5.3.1">0.093</span></td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.4"><span class="ltx_text ltx_font_bold" id="A7.T11.1.5.5.4.1">0.129</span></td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.5.5.5.1">0.069</span></td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.6.6.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.2">0.198</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.3">0.072</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.4">0.105</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.5">0.055</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.7.7.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.2">0.206</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.3">0.087</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.4">0.122</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.5">0.065</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T11.1.8.8.1"><span class="ltx_text ltx_font_bold" id="A7.T11.1.8.8.1.1">NER: ICD dict. + RuCCoD</span></th>
</tr>
<tr class="ltx_tr" id="A7.T11.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T11.1.9.9.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.9.9.2"><span class="ltx_text ltx_font_bold" id="A7.T11.1.9.9.2.1">0.581</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.9.9.3"><span class="ltx_text ltx_font_bold" id="A7.T11.1.9.9.3.1">0.456</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.9.9.4"><span class="ltx_text ltx_font_bold" id="A7.T11.1.9.9.4.1">0.511</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.9.9.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.9.9.5.1">0.343</span></td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.10.10.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.2">0.556</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.3">0.441</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.4">0.492</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.5">0.326</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.11.11.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.2">0.543</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.3">0.450</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.4">0.492</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.5">0.326</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.12.12.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.2">0.541</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.3">0.372</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.4">0.441</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.5">0.283</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.13.13.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.2">0.566</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.3">0.440</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.4">0.495</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.5">0.329</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T11.1.14.14.1"><span class="ltx_text ltx_font_bold" id="A7.T11.1.14.14.1.1">NER+Linking: ICD dict.</span></th>
</tr>
<tr class="ltx_tr" id="A7.T11.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T11.1.15.15.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.15.15.2"><span class="ltx_text ltx_font_bold" id="A7.T11.1.15.15.2.1">0.095</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.15.15.3">0.088</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.15.15.4"><span class="ltx_text ltx_font_bold" id="A7.T11.1.15.15.4.1">0.091</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.15.15.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.15.15.5.1">0.048</span></td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.16.16.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.2">0.077</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.3">0.083</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.4">0.080</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.5">0.042</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.17.17.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.2">0.083</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.3"><span class="ltx_text ltx_font_bold" id="A7.T11.1.17.17.3.1">0.092</span></td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.4">0.087</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.5">0.046</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.18.18.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.2">0.083</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.3">0.070</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.4">0.076</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.5">0.040</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.19.19.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.2">0.087</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.3">0.086</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.4">0.087</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.5">0.045</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T11.1.20.20.1"><span class="ltx_text ltx_font_bold" id="A7.T11.1.20.20.1.1">NER+Linking: ICD dict. + RuCCoD</span></th>
</tr>
<tr class="ltx_tr" id="A7.T11.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T11.1.21.21.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.21.21.2"><span class="ltx_text ltx_font_bold" id="A7.T11.1.21.21.2.1">0.378</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.21.21.3"><span class="ltx_text ltx_font_bold" id="A7.T11.1.21.21.3.1">0.362</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.21.21.4"><span class="ltx_text ltx_font_bold" id="A7.T11.1.21.21.4.1">0.369</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.21.21.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.21.21.5.1">0.227</span></td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.22.22.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.22.22.2">0.324</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.22.22.3">0.354</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.22.22.4">0.338</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.22.22.5">0.203</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.23.23.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.23.23.2">0.323</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.23.23.3">0.357</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.23.23.4">0.339</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.23.23.5">0.204</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.24.24.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.24.24.2">0.342</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.24.24.3">0.295</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.24.24.4">0.317</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.24.24.5">0.188</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.25.25.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.25.25.2">0.343</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.25.25.3">0.340</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.25.25.4">0.342</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.25.25.5">0.206</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.26.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T11.1.26.26.1"><span class="ltx_text ltx_font_bold" id="A7.T11.1.26.26.1.1">Code assignment: ICD dict.</span></th>
</tr>
<tr class="ltx_tr" id="A7.T11.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T11.1.27.27.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.27.27.2">0.575</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.27.27.3">0.561</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.27.27.4">0.568</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.27.27.5">0.396</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.28.28.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.28.28.2">0.523</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.28.28.3">0.594</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.28.28.4">0.556</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.28.28.5">0.385</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.29.29.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.29.29.2">0.437</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.29.29.3">0.510</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.29.29.4">0.471</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.29.29.5">0.308</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.30.30.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.30.30.2"><span class="ltx_text ltx_font_bold" id="A7.T11.1.30.30.2.1">0.598</span></td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.30.30.3">0.533</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.30.30.4">0.564</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.30.30.5">0.392</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.31.31.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.31.31.2">0.595</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.31.31.3"><span class="ltx_text ltx_font_bold" id="A7.T11.1.31.31.3.1">0.618</span></td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.31.31.4"><span class="ltx_text ltx_font_bold" id="A7.T11.1.31.31.4.1">0.607</span></td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.31.31.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.31.31.5.1">0.435</span></td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.32.32">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T11.1.32.32.1"><span class="ltx_text ltx_font_bold" id="A7.T11.1.32.32.1.1">Code assignment: ICD dict. + RuCCoD</span></th>
</tr>
<tr class="ltx_tr" id="A7.T11.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T11.1.33.33.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.33.33.2"><span class="ltx_text ltx_font_bold" id="A7.T11.1.33.33.2.1">0.701</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.33.33.3">0.684</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.33.33.4">0.692</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.33.33.5">0.529</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.34.34.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.34.34.2">0.644</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.34.34.3"><span class="ltx_text ltx_font_bold" id="A7.T11.1.34.34.3.1">0.720</span></td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.34.34.4">0.680</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.34.34.5">0.515</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.35.35.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.35.35.2">0.627</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.35.35.3">0.703</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.35.35.4">0.663</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.35.35.5">0.496</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T11.1.36.36.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T11.1.36.36.2">0.691</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.36.36.3">0.605</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.36.36.4">0.645</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.36.36.5">0.476</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A7.T11.1.37.37.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.37.37.2">0.700</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.37.37.3">0.704</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.37.37.4"><span class="ltx_text ltx_font_bold" id="A7.T11.1.37.37.4.1">0.702</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.37.37.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.37.37.5.1">0.541</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the performance of different Large Language Models (LLMs) with Retrieval-Augmented Generation (RAG) on the RuCCoD dataset.  The evaluation used a relaxed scoring approach, focusing on the NER (Named Entity Recognition), code assignment, and end-to-end entity linking tasks.  The models are compared based on their precision, recall, F1-score, and accuracy, with results shown for various configurations, including the use of different dictionaries and datasets in the RAG pipeline. The results are analyzed to understand the effectiveness of each model in the relaxed setting.
> <details>
> <summary>read the caption</summary>
> Table 11: Relaxed evaluation results for NER, Code assignment, and end-to-end entity linking task on RuCCoD for LLM+RAG pipeline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T12.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T12.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A7.T12.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T12.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T12.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.1.1.2.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T12.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A7.T12.1.1.1.3.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T12.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A7.T12.1.1.1.4.1">F-score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T12.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A7.T12.1.1.1.5.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T12.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A7.T12.1.2.2.1.1">NER: NEREL-BIO</span></th>
</tr>
<tr class="ltx_tr" id="A7.T12.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T12.1.3.3.1">Llama3.1:8b-instruct-fp16</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.3.3.2">0.100</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.3.3.3">0.042</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.3.3.4">0.059</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.3.3.5">0.030</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.4.4.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.4.4.2">0.104</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.4.4.3">0.043</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.4.4.4">0.060</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.4.4.5">0.031</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.5.5.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.5.5.2">0.098</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.5.5.3">0.043</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.5.5.4">0.059</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.5.5.5">0.031</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.6.6.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.6.6.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.6.6.2.1">0.115</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.6.6.3"><span class="ltx_text ltx_font_bold" id="A7.T12.1.6.6.3.1">0.044</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.6.6.4"><span class="ltx_text ltx_font_bold" id="A7.T12.1.6.6.4.1">0.063</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.6.6.5"><span class="ltx_text ltx_font_bold" id="A7.T12.1.6.6.5.1">0.033</span></td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.7.7.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.7.7.2">0.099</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.7.7.3">0.043</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.7.7.4">0.060</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.7.7.5">0.031</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T12.1.8.8.1"><span class="ltx_text ltx_font_bold" id="A7.T12.1.8.8.1.1">NER: RuCCoN</span></th>
</tr>
<tr class="ltx_tr" id="A7.T12.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T12.1.9.9.1">Llama3.1:8b-instruct-fp16</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.9.9.2">0.188</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.9.9.3">0.088</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.9.9.4">0.120</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.9.9.5">0.064</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.10.10.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.10.10.2">0.174</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.10.10.3">0.079</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.10.10.4">0.108</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.10.10.5">0.057</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.11.11.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.11.11.2">0.172</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.11.11.3">0.085</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.11.11.4">0.114</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.11.11.5">0.060</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.12.12.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.12.12.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.12.12.2.1">0.197</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.12.12.3">0.082</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.12.12.4">0.116</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.12.12.5">0.061</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.13.13.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.13.13.2">0.185</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.13.13.3"><span class="ltx_text ltx_font_bold" id="A7.T12.1.13.13.3.1">0.091</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.13.13.4"><span class="ltx_text ltx_font_bold" id="A7.T12.1.13.13.4.1">0.122</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.13.13.5"><span class="ltx_text ltx_font_bold" id="A7.T12.1.13.13.5.1">0.065</span></td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T12.1.14.14.1"><span class="ltx_text ltx_font_bold" id="A7.T12.1.14.14.1.1">NER+Linking: NEREL-BIO</span></th>
</tr>
<tr class="ltx_tr" id="A7.T12.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T12.1.15.15.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.15.15.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.15.15.2.1">0.033</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.15.15.3"><span class="ltx_text ltx_font_bold" id="A7.T12.1.15.15.3.1">0.029</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.15.15.4"><span class="ltx_text ltx_font_bold" id="A7.T12.1.15.15.4.1">0.031</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.15.15.5"><span class="ltx_text ltx_font_bold" id="A7.T12.1.15.15.5.1">0.016</span></td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.16.16.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.16.16.2">0.024</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.16.16.3">0.025</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.16.16.4">0.025</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.16.16.5">0.013</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.17.17.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.17.17.2">0.026</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.17.17.3">0.028</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.17.17.4">0.027</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.17.17.5">0.014</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.18.18.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.18.18.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.18.18.2.1">0.033</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.18.18.3">0.027</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.18.18.4">0.030</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.18.18.5">0.015</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.19.19.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.19.19.2">0.030</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.19.19.3"><span class="ltx_text ltx_font_bold" id="A7.T12.1.19.19.3.1">0.029</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.19.19.4">0.030</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.19.19.5">0.015</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T12.1.20.20.1"><span class="ltx_text ltx_font_bold" id="A7.T12.1.20.20.1.1">NER+Linking: RuCCoN</span></th>
</tr>
<tr class="ltx_tr" id="A7.T12.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T12.1.21.21.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.21.21.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.21.21.2.1">0.076</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.21.21.3">0.069</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.21.21.4"><span class="ltx_text ltx_font_bold" id="A7.T12.1.21.21.4.1">0.072</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.21.21.5"><span class="ltx_text ltx_font_bold" id="A7.T12.1.21.21.5.1">0.038</span></td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.22.22.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.22.22.2">0.061</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.22.22.3">0.063</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.22.22.4">0.062</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.22.22.5">0.032</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.23.23.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.23.23.2">0.060</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.23.23.3">0.064</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.23.23.4">0.062</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.23.23.5">0.032</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.24.24.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.24.24.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.24.24.2.1">0.076</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.24.24.3">0.062</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.24.24.4">0.068</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.24.24.5">0.035</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.25.25.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.25.25.2">0.073</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.25.25.3"><span class="ltx_text ltx_font_bold" id="A7.T12.1.25.25.3.1">0.070</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.25.25.4"><span class="ltx_text ltx_font_bold" id="A7.T12.1.25.25.4.1">0.072</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.25.25.5">0.037</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.26.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T12.1.26.26.1"><span class="ltx_text ltx_font_bold" id="A7.T12.1.26.26.1.1">Code assignment: NEREL-BIO</span></th>
</tr>
<tr class="ltx_tr" id="A7.T12.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T12.1.27.27.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.27.27.2">0.114</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.27.27.3">0.107</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.27.27.4">0.110</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.27.27.5">0.058</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.28.28.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.28.28.2">0.088</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.28.28.3">0.096</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.28.28.4">0.092</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.28.28.5">0.048</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.29.29.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.29.29.2">0.098</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.29.29.3">0.110</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.29.29.4">0.104</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.29.29.5">0.055</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.30.30.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.30.30.2">0.121</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.30.30.3">0.105</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.30.30.4">0.112</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.30.30.5">0.059</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.31.31.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.31.31.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.31.31.2.1">0.125</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.31.31.3"><span class="ltx_text ltx_font_bold" id="A7.T12.1.31.31.3.1">0.126</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.31.31.4"><span class="ltx_text ltx_font_bold" id="A7.T12.1.31.31.4.1">0.125</span></td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.31.31.5"><span class="ltx_text ltx_font_bold" id="A7.T12.1.31.31.5.1">0.067</span></td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.32.32">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A7.T12.1.32.32.1"><span class="ltx_text ltx_font_bold" id="A7.T12.1.32.32.1.1">Code assignment: RuCCoN</span></th>
</tr>
<tr class="ltx_tr" id="A7.T12.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T12.1.33.33.1">Llama3.1:8b-instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.33.33.2"><span class="ltx_text ltx_font_bold" id="A7.T12.1.33.33.2.1">0.295</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.33.33.3">0.282</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.33.33.4">0.288</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T12.1.33.33.5">0.168</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.34.34.1">Llama3-Med42-8B</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.34.34.2">0.254</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.34.34.3">0.275</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.34.34.4">0.264</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.34.34.5">0.152</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.35.35.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.35.35.2">0.248</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.35.35.3">0.273</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.35.35.4">0.260</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.35.35.5">0.149</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T12.1.36.36.1">Mistral-Nemo-Instruct-2407</th>
<td class="ltx_td ltx_align_right" id="A7.T12.1.36.36.2">0.284</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.36.36.3">0.244</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.36.36.4">0.263</td>
<td class="ltx_td ltx_align_right" id="A7.T12.1.36.36.5">0.151</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A7.T12.1.37.37.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T12.1.37.37.2">0.292</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T12.1.37.37.3"><span class="ltx_text ltx_font_bold" id="A7.T12.1.37.37.3.1">0.294</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T12.1.37.37.4"><span class="ltx_text ltx_font_bold" id="A7.T12.1.37.37.4.1">0.293</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T12.1.37.37.5"><span class="ltx_text ltx_font_bold" id="A7.T12.1.37.37.5.1">0.172</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 12 presents the relaxed evaluation metrics for three tasks: Named Entity Recognition (NER), ICD code assignment, and end-to-end entity linking.  The evaluation is performed on the RuCCoD dataset using the LLM+RAG pipeline.  Specifically, the results showcase the performance of several large language models (LLMs) in these tasks when using either the NEREL-BIO or RuCCoN dataset as a vector store for retrieval augmented generation (RAG). The metrics presented include precision, recall, F-score, and accuracy, offering a comprehensive view of the models' performance under relaxed evaluation conditions.
> <details>
> <summary>read the caption</summary>
> Table 12: Relaxed evaluation results for NER, Code assignment, and end-to-end entity linking task on RuCCoD for LLM+RAG pipeline using NEREL-BIO and RuCCoN for vectorstore.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.21263/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.21263/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}