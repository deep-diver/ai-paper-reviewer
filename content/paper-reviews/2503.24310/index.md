---
title: "BEATS: Bias Evaluation and Assessment Test Suite for Large Language Models"
summary: "BEATS: A novel framework and benchmark introduced for evaluating Bias, Ethics, Fairness, and Factuality in Large Language Models(LLMs)."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Ethics", "🏢 alok@alokabhishek.ai",]
showSummary: true
date: 2025-03-31
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.24310 {{< /keyword >}}
{{< keyword icon="writer" >}} Alok Abhishek et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.24310" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.24310" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.24310/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models(LLMs) face challenges of **intrinsic biases** affecting decision-making systems across various sectors, potentially leading to unfair outcomes. The need for a systematic way to **assess the ethics and biases** of LLMs to build a fairer system. Research uses statistical methods to spot and reduce biases, helping to create LLMs that operate fairly. 



To address these issues, the paper introduces **BEATS, a novel framework** for evaluating Bias, Ethics, Fairness, and Factuality in LLMs. This framework uses a **benchmark measuring performance across 29 metrics**, covering demographic, cognitive, and social biases, ethical reasoning, and factuality. Experiments using BEATS revealed that a good amount of outputs from leading LLMs contained some form of bias, the study also provides ways to **diagnose and mitigate** these biases.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The research introduces the BEATS framework, an innovative approach to evaluating bias, ethics, fairness, and factuality in LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Empirical results show that a substantial percentage of outputs from leading LLMs contain biases, highlighting the risk of using these models in decision-making. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The BEATS framework offers a scalable methodology to diagnose factors driving biases and develop mitigation strategies. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers, as it introduces **a novel BEATS framework** and a benchmark for evaluating bias in LLMs which has potential for real-world impact. By rigorously assessing ethical alignment and factuality, the research paves the way for developing transparent and equitable AI.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T1.12.13.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.12.13.1.1.1">Primary bias categories</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T1.12.13.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.12.13.1.2.1">No. of evaluation questions</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.1.2">race_and_ethnicity_bias</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.1"><math alttext="149" class="ltx_Math" display="inline" id="S2.T1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.m1.1a"><mn id="S2.T1.1.1.1.m1.1.1" xref="S2.T1.1.1.1.m1.1.1.cmml">149</mn><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.m1.1b"><cn id="S2.T1.1.1.1.m1.1.1.cmml" type="integer" xref="S2.T1.1.1.1.m1.1.1">149</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.m1.1c">149</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.m1.1d">149</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.2.2">stereotype_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.2.2.1"><math alttext="146" class="ltx_Math" display="inline" id="S2.T1.2.2.1.m1.1"><semantics id="S2.T1.2.2.1.m1.1a"><mn id="S2.T1.2.2.1.m1.1.1" xref="S2.T1.2.2.1.m1.1.1.cmml">146</mn><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.1.m1.1b"><cn id="S2.T1.2.2.1.m1.1.1.cmml" type="integer" xref="S2.T1.2.2.1.m1.1.1">146</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.1.m1.1c">146</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.1.m1.1d">146</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.3.3.2">gender_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.3.3.1"><math alttext="120" class="ltx_Math" display="inline" id="S2.T1.3.3.1.m1.1"><semantics id="S2.T1.3.3.1.m1.1a"><mn id="S2.T1.3.3.1.m1.1.1" xref="S2.T1.3.3.1.m1.1.1.cmml">120</mn><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.1.m1.1b"><cn id="S2.T1.3.3.1.m1.1.1.cmml" type="integer" xref="S2.T1.3.3.1.m1.1.1">120</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.1.m1.1c">120</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.1.m1.1d">120</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.4.4.2">cultural_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.4.4.1"><math alttext="89" class="ltx_Math" display="inline" id="S2.T1.4.4.1.m1.1"><semantics id="S2.T1.4.4.1.m1.1a"><mn id="S2.T1.4.4.1.m1.1.1" xref="S2.T1.4.4.1.m1.1.1.cmml">89</mn><annotation-xml encoding="MathML-Content" id="S2.T1.4.4.1.m1.1b"><cn id="S2.T1.4.4.1.m1.1.1.cmml" type="integer" xref="S2.T1.4.4.1.m1.1.1">89</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.4.1.m1.1c">89</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.4.1.m1.1d">89</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.5.5.2">age_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.5.5.1"><math alttext="81" class="ltx_Math" display="inline" id="S2.T1.5.5.1.m1.1"><semantics id="S2.T1.5.5.1.m1.1a"><mn id="S2.T1.5.5.1.m1.1.1" xref="S2.T1.5.5.1.m1.1.1.cmml">81</mn><annotation-xml encoding="MathML-Content" id="S2.T1.5.5.1.m1.1b"><cn id="S2.T1.5.5.1.m1.1.1.cmml" type="integer" xref="S2.T1.5.5.1.m1.1.1">81</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.5.1.m1.1c">81</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.5.1.m1.1d">81</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.6.6.2">socioeconomic_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.6.6.1"><math alttext="72" class="ltx_Math" display="inline" id="S2.T1.6.6.1.m1.1"><semantics id="S2.T1.6.6.1.m1.1a"><mn id="S2.T1.6.6.1.m1.1.1" xref="S2.T1.6.6.1.m1.1.1.cmml">72</mn><annotation-xml encoding="MathML-Content" id="S2.T1.6.6.1.m1.1b"><cn id="S2.T1.6.6.1.m1.1.1.cmml" type="integer" xref="S2.T1.6.6.1.m1.1.1">72</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.6.6.1.m1.1c">72</annotation><annotation encoding="application/x-llamapun" id="S2.T1.6.6.1.m1.1d">72</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.7.7.2">disability_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.7.7.1"><math alttext="61" class="ltx_Math" display="inline" id="S2.T1.7.7.1.m1.1"><semantics id="S2.T1.7.7.1.m1.1a"><mn id="S2.T1.7.7.1.m1.1.1" xref="S2.T1.7.7.1.m1.1.1.cmml">61</mn><annotation-xml encoding="MathML-Content" id="S2.T1.7.7.1.m1.1b"><cn id="S2.T1.7.7.1.m1.1.1.cmml" type="integer" xref="S2.T1.7.7.1.m1.1.1">61</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.7.7.1.m1.1c">61</annotation><annotation encoding="application/x-llamapun" id="S2.T1.7.7.1.m1.1d">61</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.8.8.2">religion_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.8.8.1"><math alttext="45" class="ltx_Math" display="inline" id="S2.T1.8.8.1.m1.1"><semantics id="S2.T1.8.8.1.m1.1a"><mn id="S2.T1.8.8.1.m1.1.1" xref="S2.T1.8.8.1.m1.1.1.cmml">45</mn><annotation-xml encoding="MathML-Content" id="S2.T1.8.8.1.m1.1b"><cn id="S2.T1.8.8.1.m1.1.1.cmml" type="integer" xref="S2.T1.8.8.1.m1.1.1">45</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.8.8.1.m1.1c">45</annotation><annotation encoding="application/x-llamapun" id="S2.T1.8.8.1.m1.1d">45</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.9.9.2">geography_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.9.9.1"><math alttext="39" class="ltx_Math" display="inline" id="S2.T1.9.9.1.m1.1"><semantics id="S2.T1.9.9.1.m1.1a"><mn id="S2.T1.9.9.1.m1.1.1" xref="S2.T1.9.9.1.m1.1.1.cmml">39</mn><annotation-xml encoding="MathML-Content" id="S2.T1.9.9.1.m1.1b"><cn id="S2.T1.9.9.1.m1.1.1.cmml" type="integer" xref="S2.T1.9.9.1.m1.1.1">39</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.9.9.1.m1.1c">39</annotation><annotation encoding="application/x-llamapun" id="S2.T1.9.9.1.m1.1d">39</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.10.10.2">political_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.10.10.1"><math alttext="34" class="ltx_Math" display="inline" id="S2.T1.10.10.1.m1.1"><semantics id="S2.T1.10.10.1.m1.1a"><mn id="S2.T1.10.10.1.m1.1.1" xref="S2.T1.10.10.1.m1.1.1.cmml">34</mn><annotation-xml encoding="MathML-Content" id="S2.T1.10.10.1.m1.1b"><cn id="S2.T1.10.10.1.m1.1.1.cmml" type="integer" xref="S2.T1.10.10.1.m1.1.1">34</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.10.10.1.m1.1c">34</annotation><annotation encoding="application/x-llamapun" id="S2.T1.10.10.1.m1.1d">34</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.11.11.2">automation_bias</th>
<td class="ltx_td ltx_align_left" id="S2.T1.11.11.1"><math alttext="34" class="ltx_Math" display="inline" id="S2.T1.11.11.1.m1.1"><semantics id="S2.T1.11.11.1.m1.1a"><mn id="S2.T1.11.11.1.m1.1.1" xref="S2.T1.11.11.1.m1.1.1.cmml">34</mn><annotation-xml encoding="MathML-Content" id="S2.T1.11.11.1.m1.1b"><cn id="S2.T1.11.11.1.m1.1.1.cmml" type="integer" xref="S2.T1.11.11.1.m1.1.1">34</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.11.11.1.m1.1c">34</annotation><annotation encoding="application/x-llamapun" id="S2.T1.11.11.1.m1.1d">34</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S2.T1.12.12.2">sexual_orientation_bias</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.12.12.1"><math alttext="31" class="ltx_Math" display="inline" id="S2.T1.12.12.1.m1.1"><semantics id="S2.T1.12.12.1.m1.1a"><mn id="S2.T1.12.12.1.m1.1.1" xref="S2.T1.12.12.1.m1.1.1.cmml">31</mn><annotation-xml encoding="MathML-Content" id="S2.T1.12.12.1.m1.1b"><cn id="S2.T1.12.12.1.m1.1.1.cmml" type="integer" xref="S2.T1.12.12.1.m1.1.1">31</cn></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.12.12.1.m1.1c">31</annotation><annotation encoding="application/x-llamapun" id="S2.T1.12.12.1.m1.1d">31</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows the number of evaluation questions categorized by their primary bias type within the BEATS benchmark dataset.  The primary bias categories include race and ethnicity, stereotype, gender, cultural, age, socioeconomic, disability, religion, geography, political, automation, and sexual orientation bias. The dataset's distribution across various bias types shows how the questions are designed to explore different aspects of bias and ethics.
> <details>
> <summary>read the caption</summary>
> Table 1: Distribution of evaluation questions by primary bias category in the BEATS benchmark dataset
> </details>





### In-depth insights


#### BEFF Metrics
While 'BEFF Metrics' isn't explicitly defined as a standalone section, the core idea revolves around **quantifying and evaluating Bias, Ethics, Fairness, and Factuality** within LLMs. This encompasses a multi-faceted approach:  First, it involves establishing clear metrics for each of these dimensions. For bias, this might entail identifying and categorizing different types (gender, racial, etc.) and assessing their severity and impact. Ethics likely involves adherence to AI principles and societal values.  Fairness metrics could focus on equitable treatment across demographic groups.  Factuality assessment aims to measure the LLM's accuracy and its propensity to generate misinformation. It requires a combination of automated techniques and human oversight to ensure validity. The ultimate goal is to **create a standardized and rigorous framework for assessing and improving these crucial aspects** in LLMs, promoting more responsible and ethically aligned AI systems.

#### LLM-as-a-Judge
The concept of leveraging **Large Language Models (LLMs) as judges** represents a significant shift in how we evaluate the performance and ethical implications of AI systems. LLMs can automate complex assessment processes, offering scalability and consistency. However, challenges arise, including potential **biases inherent in the LLMs' training data**. If the judging LLM is trained on skewed datasets, it may unfairly penalize certain responses or perpetuate existing prejudices. Additionally, the **reliability of LLMs in assessing factuality** is crucial; any hallucination or misinformation could lead to flawed evaluations. Further research is needed to refine methodologies, create diverse and unbiased datasets for training LLMs as judges, and implement robust verification mechanisms to ensure fairness and accuracy.

#### Benchmark: BEATS
**BEATS is introduced as a benchmark to evaluate Bias, Ethics, Fairness, and Factuality (BEFF) in Large Language Models (LLMs).** The benchmark aims to provide a quantitative assessment of how LLMs might perpetuate societal prejudices. To achieve high benchmark scores LLMs must exhibit equitable behavior in their responses, establishing BEATS as a standard for responsible AI evaluation. The empirical results show that a significant percentage of outputs from leading models exhibit biases, underscoring the importance of this benchmark. The framework's scalability and statistical rigor are mentioned as key attributes, facilitating the diagnosis of bias drivers and the development of mitigation strategies. With BEATS, the goal is to foster the creation of more socially responsible and ethically aligned AI models. The framework is designed to be structured methodology that can systematically perform detailed evaluations of LLM's ethical standards with data collected to advance discussions on responsible AI development.

#### Bias Mitigation
Bias mitigation in Large Language Models (LLMs) is a crucial area focusing on techniques to reduce unfair or discriminatory outputs. Effective strategies often begin with **data curation**, aiming to balance the training dataset across various demographic groups and reduce over-representation of dominant narratives. Techniques like **re-weighting** under-represented data points or **data augmentation** can help achieve a more equitable representation. **Model fine-tuning** involves retraining LLMs on curated datasets to correct existing biases or reinforce fairer outputs. Furthermore, **bias detection methods** are essential for identifying and quantifying biases within LLMs, enabling targeted mitigation strategies. Another is to enforce models follow ethical AI principles. These steps are essential towards development of fairer and more responsible LLMs.

#### Limits of LLMs
**LLMs face inherent limits due to their stochastic nature, causing non-deterministic behavior and varying outputs from the same prompt.** This impacts evaluation consistency. **The use of LLMs to judge factuality is constrained by potential hallucinations, misinformation, and shared biases in training data.** The lack of a solid ground truth for many evaluation questions further complicates reliability. Also, Evaluation models and judge models, which share similar training data, predominantly in English and Western culture, **risk cultural bias and reduced sensitivity towards global viewpoints.** Therefore, while the research employs ensemble methods and large datasets, these limitations require cautious interpretation and emphasize the need for external validation, diverse training data, and human oversight.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.9.10.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.9.10.1.1.1">KPI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.9.10.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.9.10.1.2.1">df</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.9.10.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.9.10.1.3.1">F-statistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.9.10.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.9.10.1.4.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.3.3.4">bias_presence_score</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mn id="S3.T2.1.1.1.m1.1.1" xref="S3.T2.1.1.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><cn id="S3.T2.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T2.1.1.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.2.2"><math alttext="277.152" class="ltx_Math" display="inline" id="S3.T2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.m1.1a"><mn id="S3.T2.2.2.2.m1.1.1" xref="S3.T2.2.2.2.m1.1.1.cmml">277.152</mn><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.m1.1b"><cn id="S3.T2.2.2.2.m1.1.1.cmml" type="float" xref="S3.T2.2.2.2.m1.1.1">277.152</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.m1.1c">277.152</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.m1.1d">277.152</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.3.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T2.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.m1.1a"><mrow id="S3.T2.3.3.3.m1.1.1" xref="S3.T2.3.3.3.m1.1.1.cmml"><mi id="S3.T2.3.3.3.m1.1.1.2" xref="S3.T2.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T2.3.3.3.m1.1.1.1" xref="S3.T2.3.3.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T2.3.3.3.m1.1.1.3" xref="S3.T2.3.3.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.m1.1b"><apply id="S3.T2.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.m1.1.1"><lt id="S3.T2.3.3.3.m1.1.1.1.cmml" xref="S3.T2.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T2.3.3.3.m1.1.1.2.cmml" xref="S3.T2.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T2.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T2.3.3.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.6.6.4">bias_severity_score</th>
<td class="ltx_td ltx_align_left" id="S3.T2.4.4.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T2.4.4.1.m1.1"><semantics id="S3.T2.4.4.1.m1.1a"><mn id="S3.T2.4.4.1.m1.1.1" xref="S3.T2.4.4.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.1.m1.1b"><cn id="S3.T2.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T2.4.4.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.5.5.2"><math alttext="364.809" class="ltx_Math" display="inline" id="S3.T2.5.5.2.m1.1"><semantics id="S3.T2.5.5.2.m1.1a"><mn id="S3.T2.5.5.2.m1.1.1" xref="S3.T2.5.5.2.m1.1.1.cmml">364.809</mn><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.2.m1.1b"><cn id="S3.T2.5.5.2.m1.1.1.cmml" type="float" xref="S3.T2.5.5.2.m1.1.1">364.809</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.2.m1.1c">364.809</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.2.m1.1d">364.809</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.6.6.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T2.6.6.3.m1.1"><semantics id="S3.T2.6.6.3.m1.1a"><mrow id="S3.T2.6.6.3.m1.1.1" xref="S3.T2.6.6.3.m1.1.1.cmml"><mi id="S3.T2.6.6.3.m1.1.1.2" xref="S3.T2.6.6.3.m1.1.1.2.cmml"></mi><mo id="S3.T2.6.6.3.m1.1.1.1" xref="S3.T2.6.6.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T2.6.6.3.m1.1.1.3" xref="S3.T2.6.6.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.3.m1.1b"><apply id="S3.T2.6.6.3.m1.1.1.cmml" xref="S3.T2.6.6.3.m1.1.1"><lt id="S3.T2.6.6.3.m1.1.1.1.cmml" xref="S3.T2.6.6.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T2.6.6.3.m1.1.1.2.cmml" xref="S3.T2.6.6.3.m1.1.1.2">absent</csymbol><cn id="S3.T2.6.6.3.m1.1.1.3.cmml" type="float" xref="S3.T2.6.6.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.9.9.4">bias_impact_score</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.7.7.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T2.7.7.1.m1.1"><semantics id="S3.T2.7.7.1.m1.1a"><mn id="S3.T2.7.7.1.m1.1.1" xref="S3.T2.7.7.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.1.m1.1b"><cn id="S3.T2.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T2.7.7.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.8.8.2"><math alttext="278.481" class="ltx_Math" display="inline" id="S3.T2.8.8.2.m1.1"><semantics id="S3.T2.8.8.2.m1.1a"><mn id="S3.T2.8.8.2.m1.1.1" xref="S3.T2.8.8.2.m1.1.1.cmml">278.481</mn><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.2.m1.1b"><cn id="S3.T2.8.8.2.m1.1.1.cmml" type="float" xref="S3.T2.8.8.2.m1.1.1">278.481</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.2.m1.1c">278.481</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.2.m1.1d">278.481</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.9.9.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T2.9.9.3.m1.1"><semantics id="S3.T2.9.9.3.m1.1a"><mrow id="S3.T2.9.9.3.m1.1.1" xref="S3.T2.9.9.3.m1.1.1.cmml"><mi id="S3.T2.9.9.3.m1.1.1.2" xref="S3.T2.9.9.3.m1.1.1.2.cmml"></mi><mo id="S3.T2.9.9.3.m1.1.1.1" xref="S3.T2.9.9.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T2.9.9.3.m1.1.1.3" xref="S3.T2.9.9.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.3.m1.1b"><apply id="S3.T2.9.9.3.m1.1.1.cmml" xref="S3.T2.9.9.3.m1.1.1"><lt id="S3.T2.9.9.3.m1.1.1.1.cmml" xref="S3.T2.9.9.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T2.9.9.3.m1.1.1.2.cmml" xref="S3.T2.9.9.3.m1.1.1.2">absent</csymbol><cn id="S3.T2.9.9.3.m1.1.1.3.cmml" type="float" xref="S3.T2.9.9.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis of variance (ANOVA) test. The ANOVA test was conducted to determine if there are statistically significant differences in bias scores across different large language models (LLMs).  The 'bias' refers to the presence, severity, and impact of different bias types as measured by the BEATS framework. The 'eval model ID' refers to the specific LLM being evaluated. The table shows the degrees of freedom (df), F-statistic, and p-value for each bias metric (presence, severity, and impact).  A low p-value indicates a statistically significant difference in bias scores between the LLMs.  This table provides quantitative evidence regarding the presence and degree of bias in various LLMs.
> <details>
> <summary>read the caption</summary>
> Table 2: Anova results for BEATS evaluation – bias and eval model ID
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T3.9.10.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.9.10.1.1.1">KPI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.10.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.9.10.1.2.1">df</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.10.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.9.10.1.3.1">F-statistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.10.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.9.10.1.4.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.3.3.4">bias_presence_score</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mn id="S3.T3.1.1.1.m1.1.1" xref="S3.T3.1.1.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><cn id="S3.T3.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T3.1.1.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.2.2"><math alttext="128.174" class="ltx_Math" display="inline" id="S3.T3.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.m1.1a"><mn id="S3.T3.2.2.2.m1.1.1" xref="S3.T3.2.2.2.m1.1.1.cmml">128.174</mn><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.m1.1b"><cn id="S3.T3.2.2.2.m1.1.1.cmml" type="float" xref="S3.T3.2.2.2.m1.1.1">128.174</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.m1.1c">128.174</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.m1.1d">128.174</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T3.3.3.3.m1.1"><semantics id="S3.T3.3.3.3.m1.1a"><mrow id="S3.T3.3.3.3.m1.1.1" xref="S3.T3.3.3.3.m1.1.1.cmml"><mi id="S3.T3.3.3.3.m1.1.1.2" xref="S3.T3.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T3.3.3.3.m1.1.1.1" xref="S3.T3.3.3.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T3.3.3.3.m1.1.1.3" xref="S3.T3.3.3.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.m1.1b"><apply id="S3.T3.3.3.3.m1.1.1.cmml" xref="S3.T3.3.3.3.m1.1.1"><lt id="S3.T3.3.3.3.m1.1.1.1.cmml" xref="S3.T3.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T3.3.3.3.m1.1.1.2.cmml" xref="S3.T3.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T3.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T3.3.3.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.6.6.4">bias_severity_score</th>
<td class="ltx_td ltx_align_left" id="S3.T3.4.4.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T3.4.4.1.m1.1"><semantics id="S3.T3.4.4.1.m1.1a"><mn id="S3.T3.4.4.1.m1.1.1" xref="S3.T3.4.4.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.1.m1.1b"><cn id="S3.T3.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T3.4.4.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T3.5.5.2"><math alttext="291.799" class="ltx_Math" display="inline" id="S3.T3.5.5.2.m1.1"><semantics id="S3.T3.5.5.2.m1.1a"><mn id="S3.T3.5.5.2.m1.1.1" xref="S3.T3.5.5.2.m1.1.1.cmml">291.799</mn><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.2.m1.1b"><cn id="S3.T3.5.5.2.m1.1.1.cmml" type="float" xref="S3.T3.5.5.2.m1.1.1">291.799</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.2.m1.1c">291.799</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.2.m1.1d">291.799</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T3.6.6.3.m1.1"><semantics id="S3.T3.6.6.3.m1.1a"><mrow id="S3.T3.6.6.3.m1.1.1" xref="S3.T3.6.6.3.m1.1.1.cmml"><mi id="S3.T3.6.6.3.m1.1.1.2" xref="S3.T3.6.6.3.m1.1.1.2.cmml"></mi><mo id="S3.T3.6.6.3.m1.1.1.1" xref="S3.T3.6.6.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T3.6.6.3.m1.1.1.3" xref="S3.T3.6.6.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.3.m1.1b"><apply id="S3.T3.6.6.3.m1.1.1.cmml" xref="S3.T3.6.6.3.m1.1.1"><lt id="S3.T3.6.6.3.m1.1.1.1.cmml" xref="S3.T3.6.6.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T3.6.6.3.m1.1.1.2.cmml" xref="S3.T3.6.6.3.m1.1.1.2">absent</csymbol><cn id="S3.T3.6.6.3.m1.1.1.3.cmml" type="float" xref="S3.T3.6.6.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.9.9.4">bias_impact_score</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.7.7.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T3.7.7.1.m1.1"><semantics id="S3.T3.7.7.1.m1.1a"><mn id="S3.T3.7.7.1.m1.1.1" xref="S3.T3.7.7.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.1.m1.1b"><cn id="S3.T3.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T3.7.7.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.8.8.2"><math alttext="458.386" class="ltx_Math" display="inline" id="S3.T3.8.8.2.m1.1"><semantics id="S3.T3.8.8.2.m1.1a"><mn id="S3.T3.8.8.2.m1.1.1" xref="S3.T3.8.8.2.m1.1.1.cmml">458.386</mn><annotation-xml encoding="MathML-Content" id="S3.T3.8.8.2.m1.1b"><cn id="S3.T3.8.8.2.m1.1.1.cmml" type="float" xref="S3.T3.8.8.2.m1.1.1">458.386</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.8.2.m1.1c">458.386</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.8.2.m1.1d">458.386</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.9.9.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T3.9.9.3.m1.1"><semantics id="S3.T3.9.9.3.m1.1a"><mrow id="S3.T3.9.9.3.m1.1.1" xref="S3.T3.9.9.3.m1.1.1.cmml"><mi id="S3.T3.9.9.3.m1.1.1.2" xref="S3.T3.9.9.3.m1.1.1.2.cmml"></mi><mo id="S3.T3.9.9.3.m1.1.1.1" xref="S3.T3.9.9.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T3.9.9.3.m1.1.1.3" xref="S3.T3.9.9.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.9.9.3.m1.1b"><apply id="S3.T3.9.9.3.m1.1.1.cmml" xref="S3.T3.9.9.3.m1.1.1"><lt id="S3.T3.9.9.3.m1.1.1.1.cmml" xref="S3.T3.9.9.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T3.9.9.3.m1.1.1.2.cmml" xref="S3.T3.9.9.3.m1.1.1.2">absent</csymbol><cn id="S3.T3.9.9.3.m1.1.1.3.cmml" type="float" xref="S3.T3.9.9.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.9.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.9.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis of variance (ANOVA) test performed to assess the statistical significance of differences in bias scores across various large language models (LLMs). The ANOVA was conducted using the BEATS (Bias Evaluation and Assessment Test Suite) framework.  Specifically, the test evaluated how the different LLMs performed on three key metrics: bias presence, severity, and impact, comparing the evaluation results and the judgments made by other LLMs acting as judges. The p-values reported indicate the probability of observing such differences by chance if there were no true differences between the LLMs. The F-statistic provides a measure of the variation explained by the different LLMs in the analysis.
> <details>
> <summary>read the caption</summary>
> Table 3: Anova results for BEATS evaluation – bias and LLM as judge
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.1">Bias severity</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.2.1">Bias impact</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.3.1">Number of records</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.2.1.1">Low</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.2.1.2">Low</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T4.1.2.1.3">2708</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.T4.1.3.2.1">Low</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.3.2.2">Mid</td>
<td class="ltx_td ltx_align_right" id="S3.T4.1.3.2.3">48</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.4.3">
<td class="ltx_td ltx_align_left" id="S3.T4.1.4.3.1">Mid</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.4.3.2">Low</td>
<td class="ltx_td ltx_align_right" id="S3.T4.1.4.3.3">46</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.5.4">
<td class="ltx_td ltx_align_left" id="S3.T4.1.5.4.1">Mid</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.5.4.2">Mid</td>
<td class="ltx_td ltx_align_right" id="S3.T4.1.5.4.3">565</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.6.5">
<td class="ltx_td ltx_align_left" id="S3.T4.1.6.5.1">Mid</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.6.5.2">High</td>
<td class="ltx_td ltx_align_right" id="S3.T4.1.6.5.3">281</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.7.6">
<td class="ltx_td ltx_align_left" id="S3.T4.1.7.6.1">High</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.7.6.2">Mid</td>
<td class="ltx_td ltx_align_right" id="S3.T4.1.7.6.3">154</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.8.7.1">High</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.8.7.2">High</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T4.1.8.7.3">703</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the frequency distribution of different combinations of bias severity and bias impact levels in the BEATS benchmark dataset.  Specifically, it shows how many times a response from a large language model was rated as having a given level of bias severity (low, mid, high) and a given level of bias impact (low, mid, high), using Claude as the judge model within the BEATS framework.  This helps in understanding the distribution of bias levels and their relative impact within the dataset.
> <details>
> <summary>read the caption</summary>
> Table 4: Distribution of bias severity and impact in the BEATS benchmark dataset for LLM (Claude) as a judge
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T5.15">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T5.15.16.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T5.15.16.1.1"><span class="ltx_text ltx_font_bold" id="S3.T5.15.16.1.1.1">KPI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T5.15.16.1.2"><span class="ltx_text ltx_font_bold" id="S3.T5.15.16.1.2.1">df</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T5.15.16.1.3"><span class="ltx_text ltx_font_bold" id="S3.T5.15.16.1.3.1">F-statistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T5.15.16.1.4"><span class="ltx_text ltx_font_bold" id="S3.T5.15.16.1.4.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T5.3.3.4">ethical_alignment_index</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T5.1.1.1.m1.1"><semantics id="S3.T5.1.1.1.m1.1a"><mn id="S3.T5.1.1.1.m1.1.1" xref="S3.T5.1.1.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T5.1.1.1.m1.1b"><cn id="S3.T5.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T5.1.1.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.1.1.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T5.1.1.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.2.2.2"><math alttext="595.217" class="ltx_Math" display="inline" id="S3.T5.2.2.2.m1.1"><semantics id="S3.T5.2.2.2.m1.1a"><mn id="S3.T5.2.2.2.m1.1.1" xref="S3.T5.2.2.2.m1.1.1.cmml">595.217</mn><annotation-xml encoding="MathML-Content" id="S3.T5.2.2.2.m1.1b"><cn id="S3.T5.2.2.2.m1.1.1.cmml" type="float" xref="S3.T5.2.2.2.m1.1.1">595.217</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.2.2.2.m1.1c">595.217</annotation><annotation encoding="application/x-llamapun" id="S3.T5.2.2.2.m1.1d">595.217</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.3.3.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T5.3.3.3.m1.1"><semantics id="S3.T5.3.3.3.m1.1a"><mrow id="S3.T5.3.3.3.m1.1.1" xref="S3.T5.3.3.3.m1.1.1.cmml"><mi id="S3.T5.3.3.3.m1.1.1.2" xref="S3.T5.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T5.3.3.3.m1.1.1.1" xref="S3.T5.3.3.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T5.3.3.3.m1.1.1.3" xref="S3.T5.3.3.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.3.3.3.m1.1b"><apply id="S3.T5.3.3.3.m1.1.1.cmml" xref="S3.T5.3.3.3.m1.1.1"><lt id="S3.T5.3.3.3.m1.1.1.1.cmml" xref="S3.T5.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T5.3.3.3.m1.1.1.2.cmml" xref="S3.T5.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T5.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T5.3.3.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.3.3.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T5.3.3.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T5.6.6.4">value_alignment_score</th>
<td class="ltx_td ltx_align_left" id="S3.T5.4.4.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T5.4.4.1.m1.1"><semantics id="S3.T5.4.4.1.m1.1a"><mn id="S3.T5.4.4.1.m1.1.1" xref="S3.T5.4.4.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T5.4.4.1.m1.1b"><cn id="S3.T5.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T5.4.4.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.4.4.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T5.4.4.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T5.5.5.2"><math alttext="592.832" class="ltx_Math" display="inline" id="S3.T5.5.5.2.m1.1"><semantics id="S3.T5.5.5.2.m1.1a"><mn id="S3.T5.5.5.2.m1.1.1" xref="S3.T5.5.5.2.m1.1.1.cmml">592.832</mn><annotation-xml encoding="MathML-Content" id="S3.T5.5.5.2.m1.1b"><cn id="S3.T5.5.5.2.m1.1.1.cmml" type="float" xref="S3.T5.5.5.2.m1.1.1">592.832</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.5.5.2.m1.1c">592.832</annotation><annotation encoding="application/x-llamapun" id="S3.T5.5.5.2.m1.1d">592.832</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T5.6.6.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T5.6.6.3.m1.1"><semantics id="S3.T5.6.6.3.m1.1a"><mrow id="S3.T5.6.6.3.m1.1.1" xref="S3.T5.6.6.3.m1.1.1.cmml"><mi id="S3.T5.6.6.3.m1.1.1.2" xref="S3.T5.6.6.3.m1.1.1.2.cmml"></mi><mo id="S3.T5.6.6.3.m1.1.1.1" xref="S3.T5.6.6.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T5.6.6.3.m1.1.1.3" xref="S3.T5.6.6.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.6.6.3.m1.1b"><apply id="S3.T5.6.6.3.m1.1.1.cmml" xref="S3.T5.6.6.3.m1.1.1"><lt id="S3.T5.6.6.3.m1.1.1.1.cmml" xref="S3.T5.6.6.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T5.6.6.3.m1.1.1.2.cmml" xref="S3.T5.6.6.3.m1.1.1.2">absent</csymbol><cn id="S3.T5.6.6.3.m1.1.1.3.cmml" type="float" xref="S3.T5.6.6.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.6.6.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T5.6.6.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T5.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T5.9.9.4">harm_prevention_score</th>
<td class="ltx_td ltx_align_left" id="S3.T5.7.7.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T5.7.7.1.m1.1"><semantics id="S3.T5.7.7.1.m1.1a"><mn id="S3.T5.7.7.1.m1.1.1" xref="S3.T5.7.7.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T5.7.7.1.m1.1b"><cn id="S3.T5.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T5.7.7.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.7.7.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T5.7.7.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T5.8.8.2"><math alttext="513.814" class="ltx_Math" display="inline" id="S3.T5.8.8.2.m1.1"><semantics id="S3.T5.8.8.2.m1.1a"><mn id="S3.T5.8.8.2.m1.1.1" xref="S3.T5.8.8.2.m1.1.1.cmml">513.814</mn><annotation-xml encoding="MathML-Content" id="S3.T5.8.8.2.m1.1b"><cn id="S3.T5.8.8.2.m1.1.1.cmml" type="float" xref="S3.T5.8.8.2.m1.1.1">513.814</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.8.8.2.m1.1c">513.814</annotation><annotation encoding="application/x-llamapun" id="S3.T5.8.8.2.m1.1d">513.814</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T5.9.9.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T5.9.9.3.m1.1"><semantics id="S3.T5.9.9.3.m1.1a"><mrow id="S3.T5.9.9.3.m1.1.1" xref="S3.T5.9.9.3.m1.1.1.cmml"><mi id="S3.T5.9.9.3.m1.1.1.2" xref="S3.T5.9.9.3.m1.1.1.2.cmml"></mi><mo id="S3.T5.9.9.3.m1.1.1.1" xref="S3.T5.9.9.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T5.9.9.3.m1.1.1.3" xref="S3.T5.9.9.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.9.9.3.m1.1b"><apply id="S3.T5.9.9.3.m1.1.1.cmml" xref="S3.T5.9.9.3.m1.1.1"><lt id="S3.T5.9.9.3.m1.1.1.1.cmml" xref="S3.T5.9.9.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T5.9.9.3.m1.1.1.2.cmml" xref="S3.T5.9.9.3.m1.1.1.2">absent</csymbol><cn id="S3.T5.9.9.3.m1.1.1.3.cmml" type="float" xref="S3.T5.9.9.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.9.9.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T5.9.9.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T5.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T5.12.12.4">cultural_sensitivity_score</th>
<td class="ltx_td ltx_align_left" id="S3.T5.10.10.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T5.10.10.1.m1.1"><semantics id="S3.T5.10.10.1.m1.1a"><mn id="S3.T5.10.10.1.m1.1.1" xref="S3.T5.10.10.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T5.10.10.1.m1.1b"><cn id="S3.T5.10.10.1.m1.1.1.cmml" type="integer" xref="S3.T5.10.10.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.10.10.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T5.10.10.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T5.11.11.2"><math alttext="530.032" class="ltx_Math" display="inline" id="S3.T5.11.11.2.m1.1"><semantics id="S3.T5.11.11.2.m1.1a"><mn id="S3.T5.11.11.2.m1.1.1" xref="S3.T5.11.11.2.m1.1.1.cmml">530.032</mn><annotation-xml encoding="MathML-Content" id="S3.T5.11.11.2.m1.1b"><cn id="S3.T5.11.11.2.m1.1.1.cmml" type="float" xref="S3.T5.11.11.2.m1.1.1">530.032</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.11.11.2.m1.1c">530.032</annotation><annotation encoding="application/x-llamapun" id="S3.T5.11.11.2.m1.1d">530.032</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T5.12.12.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T5.12.12.3.m1.1"><semantics id="S3.T5.12.12.3.m1.1a"><mrow id="S3.T5.12.12.3.m1.1.1" xref="S3.T5.12.12.3.m1.1.1.cmml"><mi id="S3.T5.12.12.3.m1.1.1.2" xref="S3.T5.12.12.3.m1.1.1.2.cmml"></mi><mo id="S3.T5.12.12.3.m1.1.1.1" xref="S3.T5.12.12.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T5.12.12.3.m1.1.1.3" xref="S3.T5.12.12.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.12.12.3.m1.1b"><apply id="S3.T5.12.12.3.m1.1.1.cmml" xref="S3.T5.12.12.3.m1.1.1"><lt id="S3.T5.12.12.3.m1.1.1.1.cmml" xref="S3.T5.12.12.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T5.12.12.3.m1.1.1.2.cmml" xref="S3.T5.12.12.3.m1.1.1.2">absent</csymbol><cn id="S3.T5.12.12.3.m1.1.1.3.cmml" type="float" xref="S3.T5.12.12.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.12.12.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T5.12.12.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T5.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T5.15.15.4">inclusivity_score</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T5.13.13.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T5.13.13.1.m1.1"><semantics id="S3.T5.13.13.1.m1.1a"><mn id="S3.T5.13.13.1.m1.1.1" xref="S3.T5.13.13.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T5.13.13.1.m1.1b"><cn id="S3.T5.13.13.1.m1.1.1.cmml" type="integer" xref="S3.T5.13.13.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.13.13.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T5.13.13.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T5.14.14.2"><math alttext="562.263" class="ltx_Math" display="inline" id="S3.T5.14.14.2.m1.1"><semantics id="S3.T5.14.14.2.m1.1a"><mn id="S3.T5.14.14.2.m1.1.1" xref="S3.T5.14.14.2.m1.1.1.cmml">562.263</mn><annotation-xml encoding="MathML-Content" id="S3.T5.14.14.2.m1.1b"><cn id="S3.T5.14.14.2.m1.1.1.cmml" type="float" xref="S3.T5.14.14.2.m1.1.1">562.263</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.14.14.2.m1.1c">562.263</annotation><annotation encoding="application/x-llamapun" id="S3.T5.14.14.2.m1.1d">562.263</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T5.15.15.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T5.15.15.3.m1.1"><semantics id="S3.T5.15.15.3.m1.1a"><mrow id="S3.T5.15.15.3.m1.1.1" xref="S3.T5.15.15.3.m1.1.1.cmml"><mi id="S3.T5.15.15.3.m1.1.1.2" xref="S3.T5.15.15.3.m1.1.1.2.cmml"></mi><mo id="S3.T5.15.15.3.m1.1.1.1" xref="S3.T5.15.15.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T5.15.15.3.m1.1.1.3" xref="S3.T5.15.15.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.15.15.3.m1.1b"><apply id="S3.T5.15.15.3.m1.1.1.cmml" xref="S3.T5.15.15.3.m1.1.1"><lt id="S3.T5.15.15.3.m1.1.1.1.cmml" xref="S3.T5.15.15.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T5.15.15.3.m1.1.1.2.cmml" xref="S3.T5.15.15.3.m1.1.1.2">absent</csymbol><cn id="S3.T5.15.15.3.m1.1.1.3.cmml" type="float" xref="S3.T5.15.15.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.15.15.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T5.15.15.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis of variance (ANOVA) test. The ANOVA test was conducted to determine if there are statistically significant differences in ethics-related metrics across different large language models (LLMs).  The metrics assessed include ethical alignment index, value alignment score, harm prevention score, cultural sensitivity score, and inclusivity score. The table shows the degrees of freedom (df), F-statistic, and p-value for each metric, indicating the statistical significance of the differences observed.
> <details>
> <summary>read the caption</summary>
> Table 5: Anova results for BEATS evaluation – ethics and eval model ID
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T6.15">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T6.15.16.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T6.15.16.1.1"><span class="ltx_text ltx_font_bold" id="S3.T6.15.16.1.1.1">KPI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T6.15.16.1.2"><span class="ltx_text ltx_font_bold" id="S3.T6.15.16.1.2.1">df</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T6.15.16.1.3"><span class="ltx_text ltx_font_bold" id="S3.T6.15.16.1.3.1">F-statistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T6.15.16.1.4"><span class="ltx_text ltx_font_bold" id="S3.T6.15.16.1.4.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T6.3.3.4">ethical_alignment_index</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T6.1.1.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T6.1.1.1.m1.1"><semantics id="S3.T6.1.1.1.m1.1a"><mn id="S3.T6.1.1.1.m1.1.1" xref="S3.T6.1.1.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T6.1.1.1.m1.1b"><cn id="S3.T6.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T6.1.1.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.1.1.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T6.1.1.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T6.2.2.2"><math alttext="176.479" class="ltx_Math" display="inline" id="S3.T6.2.2.2.m1.1"><semantics id="S3.T6.2.2.2.m1.1a"><mn id="S3.T6.2.2.2.m1.1.1" xref="S3.T6.2.2.2.m1.1.1.cmml">176.479</mn><annotation-xml encoding="MathML-Content" id="S3.T6.2.2.2.m1.1b"><cn id="S3.T6.2.2.2.m1.1.1.cmml" type="float" xref="S3.T6.2.2.2.m1.1.1">176.479</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.2.2.2.m1.1c">176.479</annotation><annotation encoding="application/x-llamapun" id="S3.T6.2.2.2.m1.1d">176.479</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T6.3.3.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T6.3.3.3.m1.1"><semantics id="S3.T6.3.3.3.m1.1a"><mrow id="S3.T6.3.3.3.m1.1.1" xref="S3.T6.3.3.3.m1.1.1.cmml"><mi id="S3.T6.3.3.3.m1.1.1.2" xref="S3.T6.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T6.3.3.3.m1.1.1.1" xref="S3.T6.3.3.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T6.3.3.3.m1.1.1.3" xref="S3.T6.3.3.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T6.3.3.3.m1.1b"><apply id="S3.T6.3.3.3.m1.1.1.cmml" xref="S3.T6.3.3.3.m1.1.1"><lt id="S3.T6.3.3.3.m1.1.1.1.cmml" xref="S3.T6.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T6.3.3.3.m1.1.1.2.cmml" xref="S3.T6.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T6.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T6.3.3.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.3.3.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T6.3.3.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T6.6.6.4">value_alignment_score</th>
<td class="ltx_td ltx_align_left" id="S3.T6.4.4.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T6.4.4.1.m1.1"><semantics id="S3.T6.4.4.1.m1.1a"><mn id="S3.T6.4.4.1.m1.1.1" xref="S3.T6.4.4.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T6.4.4.1.m1.1b"><cn id="S3.T6.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T6.4.4.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.4.4.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T6.4.4.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T6.5.5.2"><math alttext="176.147" class="ltx_Math" display="inline" id="S3.T6.5.5.2.m1.1"><semantics id="S3.T6.5.5.2.m1.1a"><mn id="S3.T6.5.5.2.m1.1.1" xref="S3.T6.5.5.2.m1.1.1.cmml">176.147</mn><annotation-xml encoding="MathML-Content" id="S3.T6.5.5.2.m1.1b"><cn id="S3.T6.5.5.2.m1.1.1.cmml" type="float" xref="S3.T6.5.5.2.m1.1.1">176.147</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.5.5.2.m1.1c">176.147</annotation><annotation encoding="application/x-llamapun" id="S3.T6.5.5.2.m1.1d">176.147</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T6.6.6.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T6.6.6.3.m1.1"><semantics id="S3.T6.6.6.3.m1.1a"><mrow id="S3.T6.6.6.3.m1.1.1" xref="S3.T6.6.6.3.m1.1.1.cmml"><mi id="S3.T6.6.6.3.m1.1.1.2" xref="S3.T6.6.6.3.m1.1.1.2.cmml"></mi><mo id="S3.T6.6.6.3.m1.1.1.1" xref="S3.T6.6.6.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T6.6.6.3.m1.1.1.3" xref="S3.T6.6.6.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T6.6.6.3.m1.1b"><apply id="S3.T6.6.6.3.m1.1.1.cmml" xref="S3.T6.6.6.3.m1.1.1"><lt id="S3.T6.6.6.3.m1.1.1.1.cmml" xref="S3.T6.6.6.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T6.6.6.3.m1.1.1.2.cmml" xref="S3.T6.6.6.3.m1.1.1.2">absent</csymbol><cn id="S3.T6.6.6.3.m1.1.1.3.cmml" type="float" xref="S3.T6.6.6.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.6.6.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T6.6.6.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T6.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T6.9.9.4">harm_prevention_score</th>
<td class="ltx_td ltx_align_left" id="S3.T6.7.7.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T6.7.7.1.m1.1"><semantics id="S3.T6.7.7.1.m1.1a"><mn id="S3.T6.7.7.1.m1.1.1" xref="S3.T6.7.7.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T6.7.7.1.m1.1b"><cn id="S3.T6.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T6.7.7.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.7.7.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T6.7.7.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T6.8.8.2"><math alttext="375.007" class="ltx_Math" display="inline" id="S3.T6.8.8.2.m1.1"><semantics id="S3.T6.8.8.2.m1.1a"><mn id="S3.T6.8.8.2.m1.1.1" xref="S3.T6.8.8.2.m1.1.1.cmml">375.007</mn><annotation-xml encoding="MathML-Content" id="S3.T6.8.8.2.m1.1b"><cn id="S3.T6.8.8.2.m1.1.1.cmml" type="float" xref="S3.T6.8.8.2.m1.1.1">375.007</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.8.8.2.m1.1c">375.007</annotation><annotation encoding="application/x-llamapun" id="S3.T6.8.8.2.m1.1d">375.007</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T6.9.9.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T6.9.9.3.m1.1"><semantics id="S3.T6.9.9.3.m1.1a"><mrow id="S3.T6.9.9.3.m1.1.1" xref="S3.T6.9.9.3.m1.1.1.cmml"><mi id="S3.T6.9.9.3.m1.1.1.2" xref="S3.T6.9.9.3.m1.1.1.2.cmml"></mi><mo id="S3.T6.9.9.3.m1.1.1.1" xref="S3.T6.9.9.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T6.9.9.3.m1.1.1.3" xref="S3.T6.9.9.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T6.9.9.3.m1.1b"><apply id="S3.T6.9.9.3.m1.1.1.cmml" xref="S3.T6.9.9.3.m1.1.1"><lt id="S3.T6.9.9.3.m1.1.1.1.cmml" xref="S3.T6.9.9.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T6.9.9.3.m1.1.1.2.cmml" xref="S3.T6.9.9.3.m1.1.1.2">absent</csymbol><cn id="S3.T6.9.9.3.m1.1.1.3.cmml" type="float" xref="S3.T6.9.9.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.9.9.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T6.9.9.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T6.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T6.12.12.4">cultural_sensitivity_score</th>
<td class="ltx_td ltx_align_left" id="S3.T6.10.10.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T6.10.10.1.m1.1"><semantics id="S3.T6.10.10.1.m1.1a"><mn id="S3.T6.10.10.1.m1.1.1" xref="S3.T6.10.10.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T6.10.10.1.m1.1b"><cn id="S3.T6.10.10.1.m1.1.1.cmml" type="integer" xref="S3.T6.10.10.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.10.10.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T6.10.10.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T6.11.11.2"><math alttext="255.714" class="ltx_Math" display="inline" id="S3.T6.11.11.2.m1.1"><semantics id="S3.T6.11.11.2.m1.1a"><mn id="S3.T6.11.11.2.m1.1.1" xref="S3.T6.11.11.2.m1.1.1.cmml">255.714</mn><annotation-xml encoding="MathML-Content" id="S3.T6.11.11.2.m1.1b"><cn id="S3.T6.11.11.2.m1.1.1.cmml" type="float" xref="S3.T6.11.11.2.m1.1.1">255.714</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.11.11.2.m1.1c">255.714</annotation><annotation encoding="application/x-llamapun" id="S3.T6.11.11.2.m1.1d">255.714</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T6.12.12.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T6.12.12.3.m1.1"><semantics id="S3.T6.12.12.3.m1.1a"><mrow id="S3.T6.12.12.3.m1.1.1" xref="S3.T6.12.12.3.m1.1.1.cmml"><mi id="S3.T6.12.12.3.m1.1.1.2" xref="S3.T6.12.12.3.m1.1.1.2.cmml"></mi><mo id="S3.T6.12.12.3.m1.1.1.1" xref="S3.T6.12.12.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T6.12.12.3.m1.1.1.3" xref="S3.T6.12.12.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T6.12.12.3.m1.1b"><apply id="S3.T6.12.12.3.m1.1.1.cmml" xref="S3.T6.12.12.3.m1.1.1"><lt id="S3.T6.12.12.3.m1.1.1.1.cmml" xref="S3.T6.12.12.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T6.12.12.3.m1.1.1.2.cmml" xref="S3.T6.12.12.3.m1.1.1.2">absent</csymbol><cn id="S3.T6.12.12.3.m1.1.1.3.cmml" type="float" xref="S3.T6.12.12.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.12.12.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T6.12.12.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T6.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T6.15.15.4">inclusivity_score</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T6.13.13.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T6.13.13.1.m1.1"><semantics id="S3.T6.13.13.1.m1.1a"><mn id="S3.T6.13.13.1.m1.1.1" xref="S3.T6.13.13.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T6.13.13.1.m1.1b"><cn id="S3.T6.13.13.1.m1.1.1.cmml" type="integer" xref="S3.T6.13.13.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.13.13.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T6.13.13.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T6.14.14.2"><math alttext="213.187" class="ltx_Math" display="inline" id="S3.T6.14.14.2.m1.1"><semantics id="S3.T6.14.14.2.m1.1a"><mn id="S3.T6.14.14.2.m1.1.1" xref="S3.T6.14.14.2.m1.1.1.cmml">213.187</mn><annotation-xml encoding="MathML-Content" id="S3.T6.14.14.2.m1.1b"><cn id="S3.T6.14.14.2.m1.1.1.cmml" type="float" xref="S3.T6.14.14.2.m1.1.1">213.187</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.14.14.2.m1.1c">213.187</annotation><annotation encoding="application/x-llamapun" id="S3.T6.14.14.2.m1.1d">213.187</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T6.15.15.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T6.15.15.3.m1.1"><semantics id="S3.T6.15.15.3.m1.1a"><mrow id="S3.T6.15.15.3.m1.1.1" xref="S3.T6.15.15.3.m1.1.1.cmml"><mi id="S3.T6.15.15.3.m1.1.1.2" xref="S3.T6.15.15.3.m1.1.1.2.cmml"></mi><mo id="S3.T6.15.15.3.m1.1.1.1" xref="S3.T6.15.15.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T6.15.15.3.m1.1.1.3" xref="S3.T6.15.15.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T6.15.15.3.m1.1b"><apply id="S3.T6.15.15.3.m1.1.1.cmml" xref="S3.T6.15.15.3.m1.1.1"><lt id="S3.T6.15.15.3.m1.1.1.1.cmml" xref="S3.T6.15.15.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T6.15.15.3.m1.1.1.2.cmml" xref="S3.T6.15.15.3.m1.1.1.2">absent</csymbol><cn id="S3.T6.15.15.3.m1.1.1.3.cmml" type="float" xref="S3.T6.15.15.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T6.15.15.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T6.15.15.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis of variance (ANOVA) test. The ANOVA test was conducted to determine if there are statistically significant differences in ethics scores across different large language models (LLMs), when using other LLMs as judges for scoring.  The table shows the p-values and F-statistics for several key performance indicators (KPIs) related to ethical considerations. KPIs include ethical alignment index, value alignment score, harm prevention score, cultural sensitivity score, and inclusivity score.  Low p-values (typically less than 0.05) indicate statistically significant differences between the LLMs in their ethical performance, as judged by other LLMs.  High F-statistics indicate the magnitude of the differences between LLMs.
> <details>
> <summary>read the caption</summary>
> Table 6: Anova results for BEATS evaluation – ethics and LLM as judge
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T7.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T7.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T7.12.13.1.1"><span class="ltx_text ltx_font_bold" id="S3.T7.12.13.1.1.1">KPI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T7.12.13.1.2"><span class="ltx_text ltx_font_bold" id="S3.T7.12.13.1.2.1">df</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T7.12.13.1.3"><span class="ltx_text ltx_font_bold" id="S3.T7.12.13.1.3.1">F-statistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T7.12.13.1.4"><span class="ltx_text ltx_font_bold" id="S3.T7.12.13.1.4.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T7.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T7.3.3.4">is_it_fair_score</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T7.1.1.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T7.1.1.1.m1.1"><semantics id="S3.T7.1.1.1.m1.1a"><mn id="S3.T7.1.1.1.m1.1.1" xref="S3.T7.1.1.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T7.1.1.1.m1.1b"><cn id="S3.T7.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T7.1.1.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.1.1.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T7.1.1.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T7.2.2.2"><math alttext="371.389" class="ltx_Math" display="inline" id="S3.T7.2.2.2.m1.1"><semantics id="S3.T7.2.2.2.m1.1a"><mn id="S3.T7.2.2.2.m1.1.1" xref="S3.T7.2.2.2.m1.1.1.cmml">371.389</mn><annotation-xml encoding="MathML-Content" id="S3.T7.2.2.2.m1.1b"><cn id="S3.T7.2.2.2.m1.1.1.cmml" type="float" xref="S3.T7.2.2.2.m1.1.1">371.389</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.2.2.2.m1.1c">371.389</annotation><annotation encoding="application/x-llamapun" id="S3.T7.2.2.2.m1.1d">371.389</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T7.3.3.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T7.3.3.3.m1.1"><semantics id="S3.T7.3.3.3.m1.1a"><mrow id="S3.T7.3.3.3.m1.1.1" xref="S3.T7.3.3.3.m1.1.1.cmml"><mi id="S3.T7.3.3.3.m1.1.1.2" xref="S3.T7.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T7.3.3.3.m1.1.1.1" xref="S3.T7.3.3.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T7.3.3.3.m1.1.1.3" xref="S3.T7.3.3.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T7.3.3.3.m1.1b"><apply id="S3.T7.3.3.3.m1.1.1.cmml" xref="S3.T7.3.3.3.m1.1.1"><lt id="S3.T7.3.3.3.m1.1.1.1.cmml" xref="S3.T7.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T7.3.3.3.m1.1.1.2.cmml" xref="S3.T7.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T7.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T7.3.3.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.3.3.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T7.3.3.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T7.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T7.6.6.4">demographic_parity_score</th>
<td class="ltx_td ltx_align_left" id="S3.T7.4.4.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T7.4.4.1.m1.1"><semantics id="S3.T7.4.4.1.m1.1a"><mn id="S3.T7.4.4.1.m1.1.1" xref="S3.T7.4.4.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T7.4.4.1.m1.1b"><cn id="S3.T7.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T7.4.4.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.4.4.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T7.4.4.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T7.5.5.2"><math alttext="435.828" class="ltx_Math" display="inline" id="S3.T7.5.5.2.m1.1"><semantics id="S3.T7.5.5.2.m1.1a"><mn id="S3.T7.5.5.2.m1.1.1" xref="S3.T7.5.5.2.m1.1.1.cmml">435.828</mn><annotation-xml encoding="MathML-Content" id="S3.T7.5.5.2.m1.1b"><cn id="S3.T7.5.5.2.m1.1.1.cmml" type="float" xref="S3.T7.5.5.2.m1.1.1">435.828</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.5.5.2.m1.1c">435.828</annotation><annotation encoding="application/x-llamapun" id="S3.T7.5.5.2.m1.1d">435.828</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T7.6.6.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T7.6.6.3.m1.1"><semantics id="S3.T7.6.6.3.m1.1a"><mrow id="S3.T7.6.6.3.m1.1.1" xref="S3.T7.6.6.3.m1.1.1.cmml"><mi id="S3.T7.6.6.3.m1.1.1.2" xref="S3.T7.6.6.3.m1.1.1.2.cmml"></mi><mo id="S3.T7.6.6.3.m1.1.1.1" xref="S3.T7.6.6.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T7.6.6.3.m1.1.1.3" xref="S3.T7.6.6.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T7.6.6.3.m1.1b"><apply id="S3.T7.6.6.3.m1.1.1.cmml" xref="S3.T7.6.6.3.m1.1.1"><lt id="S3.T7.6.6.3.m1.1.1.1.cmml" xref="S3.T7.6.6.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T7.6.6.3.m1.1.1.2.cmml" xref="S3.T7.6.6.3.m1.1.1.2">absent</csymbol><cn id="S3.T7.6.6.3.m1.1.1.3.cmml" type="float" xref="S3.T7.6.6.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.6.6.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T7.6.6.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T7.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T7.9.9.4">equal_opportunity_score</th>
<td class="ltx_td ltx_align_left" id="S3.T7.7.7.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T7.7.7.1.m1.1"><semantics id="S3.T7.7.7.1.m1.1a"><mn id="S3.T7.7.7.1.m1.1.1" xref="S3.T7.7.7.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T7.7.7.1.m1.1b"><cn id="S3.T7.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T7.7.7.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.7.7.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T7.7.7.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T7.8.8.2"><math alttext="438.611" class="ltx_Math" display="inline" id="S3.T7.8.8.2.m1.1"><semantics id="S3.T7.8.8.2.m1.1a"><mn id="S3.T7.8.8.2.m1.1.1" xref="S3.T7.8.8.2.m1.1.1.cmml">438.611</mn><annotation-xml encoding="MathML-Content" id="S3.T7.8.8.2.m1.1b"><cn id="S3.T7.8.8.2.m1.1.1.cmml" type="float" xref="S3.T7.8.8.2.m1.1.1">438.611</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.8.8.2.m1.1c">438.611</annotation><annotation encoding="application/x-llamapun" id="S3.T7.8.8.2.m1.1d">438.611</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T7.9.9.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T7.9.9.3.m1.1"><semantics id="S3.T7.9.9.3.m1.1a"><mrow id="S3.T7.9.9.3.m1.1.1" xref="S3.T7.9.9.3.m1.1.1.cmml"><mi id="S3.T7.9.9.3.m1.1.1.2" xref="S3.T7.9.9.3.m1.1.1.2.cmml"></mi><mo id="S3.T7.9.9.3.m1.1.1.1" xref="S3.T7.9.9.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T7.9.9.3.m1.1.1.3" xref="S3.T7.9.9.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T7.9.9.3.m1.1b"><apply id="S3.T7.9.9.3.m1.1.1.cmml" xref="S3.T7.9.9.3.m1.1.1"><lt id="S3.T7.9.9.3.m1.1.1.1.cmml" xref="S3.T7.9.9.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T7.9.9.3.m1.1.1.2.cmml" xref="S3.T7.9.9.3.m1.1.1.2">absent</csymbol><cn id="S3.T7.9.9.3.m1.1.1.3.cmml" type="float" xref="S3.T7.9.9.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.9.9.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T7.9.9.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T7.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T7.12.12.4">group_fairness_index</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T7.10.10.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T7.10.10.1.m1.1"><semantics id="S3.T7.10.10.1.m1.1a"><mn id="S3.T7.10.10.1.m1.1.1" xref="S3.T7.10.10.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T7.10.10.1.m1.1b"><cn id="S3.T7.10.10.1.m1.1.1.cmml" type="integer" xref="S3.T7.10.10.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.10.10.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T7.10.10.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T7.11.11.2"><math alttext="447.692" class="ltx_Math" display="inline" id="S3.T7.11.11.2.m1.1"><semantics id="S3.T7.11.11.2.m1.1a"><mn id="S3.T7.11.11.2.m1.1.1" xref="S3.T7.11.11.2.m1.1.1.cmml">447.692</mn><annotation-xml encoding="MathML-Content" id="S3.T7.11.11.2.m1.1b"><cn id="S3.T7.11.11.2.m1.1.1.cmml" type="float" xref="S3.T7.11.11.2.m1.1.1">447.692</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.11.11.2.m1.1c">447.692</annotation><annotation encoding="application/x-llamapun" id="S3.T7.11.11.2.m1.1d">447.692</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T7.12.12.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T7.12.12.3.m1.1"><semantics id="S3.T7.12.12.3.m1.1a"><mrow id="S3.T7.12.12.3.m1.1.1" xref="S3.T7.12.12.3.m1.1.1.cmml"><mi id="S3.T7.12.12.3.m1.1.1.2" xref="S3.T7.12.12.3.m1.1.1.2.cmml"></mi><mo id="S3.T7.12.12.3.m1.1.1.1" xref="S3.T7.12.12.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T7.12.12.3.m1.1.1.3" xref="S3.T7.12.12.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T7.12.12.3.m1.1b"><apply id="S3.T7.12.12.3.m1.1.1.cmml" xref="S3.T7.12.12.3.m1.1.1"><lt id="S3.T7.12.12.3.m1.1.1.1.cmml" xref="S3.T7.12.12.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T7.12.12.3.m1.1.1.2.cmml" xref="S3.T7.12.12.3.m1.1.1.2">absent</csymbol><cn id="S3.T7.12.12.3.m1.1.1.3.cmml" type="float" xref="S3.T7.12.12.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T7.12.12.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T7.12.12.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis of variance (ANOVA) test. The ANOVA test assesses whether there are statistically significant differences in fairness scores across different large language models (LLMs).  The fairness scores are derived from the BEATS (Bias Evaluation and Assessment Test Suite) benchmark, measuring aspects of fairness such as whether the model's responses are generally fair, and if demographic groups are treated equitably.  The table shows the F-statistic and p-value for each fairness metric, indicating the statistical significance of the difference in LLM performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Anova results for BEATS evaluation – fairness and eval model ID
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T8.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T8.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T8.12.13.1.1"><span class="ltx_text ltx_font_bold" id="S3.T8.12.13.1.1.1">KPI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T8.12.13.1.2"><span class="ltx_text ltx_font_bold" id="S3.T8.12.13.1.2.1">df</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T8.12.13.1.3"><span class="ltx_text ltx_font_bold" id="S3.T8.12.13.1.3.1">F-statistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T8.12.13.1.4"><span class="ltx_text ltx_font_bold" id="S3.T8.12.13.1.4.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T8.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T8.3.3.4">is_it_fair_score</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T8.1.1.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T8.1.1.1.m1.1"><semantics id="S3.T8.1.1.1.m1.1a"><mn id="S3.T8.1.1.1.m1.1.1" xref="S3.T8.1.1.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T8.1.1.1.m1.1b"><cn id="S3.T8.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T8.1.1.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.1.1.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T8.1.1.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T8.2.2.2"><math alttext="117.035" class="ltx_Math" display="inline" id="S3.T8.2.2.2.m1.1"><semantics id="S3.T8.2.2.2.m1.1a"><mn id="S3.T8.2.2.2.m1.1.1" xref="S3.T8.2.2.2.m1.1.1.cmml">117.035</mn><annotation-xml encoding="MathML-Content" id="S3.T8.2.2.2.m1.1b"><cn id="S3.T8.2.2.2.m1.1.1.cmml" type="float" xref="S3.T8.2.2.2.m1.1.1">117.035</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.2.2.2.m1.1c">117.035</annotation><annotation encoding="application/x-llamapun" id="S3.T8.2.2.2.m1.1d">117.035</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T8.3.3.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T8.3.3.3.m1.1"><semantics id="S3.T8.3.3.3.m1.1a"><mrow id="S3.T8.3.3.3.m1.1.1" xref="S3.T8.3.3.3.m1.1.1.cmml"><mi id="S3.T8.3.3.3.m1.1.1.2" xref="S3.T8.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T8.3.3.3.m1.1.1.1" xref="S3.T8.3.3.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T8.3.3.3.m1.1.1.3" xref="S3.T8.3.3.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T8.3.3.3.m1.1b"><apply id="S3.T8.3.3.3.m1.1.1.cmml" xref="S3.T8.3.3.3.m1.1.1"><lt id="S3.T8.3.3.3.m1.1.1.1.cmml" xref="S3.T8.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T8.3.3.3.m1.1.1.2.cmml" xref="S3.T8.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T8.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T8.3.3.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.3.3.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T8.3.3.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T8.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T8.6.6.4">demographic_parity_score</th>
<td class="ltx_td ltx_align_left" id="S3.T8.4.4.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T8.4.4.1.m1.1"><semantics id="S3.T8.4.4.1.m1.1a"><mn id="S3.T8.4.4.1.m1.1.1" xref="S3.T8.4.4.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T8.4.4.1.m1.1b"><cn id="S3.T8.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T8.4.4.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.4.4.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T8.4.4.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T8.5.5.2"><math alttext="171.964" class="ltx_Math" display="inline" id="S3.T8.5.5.2.m1.1"><semantics id="S3.T8.5.5.2.m1.1a"><mn id="S3.T8.5.5.2.m1.1.1" xref="S3.T8.5.5.2.m1.1.1.cmml">171.964</mn><annotation-xml encoding="MathML-Content" id="S3.T8.5.5.2.m1.1b"><cn id="S3.T8.5.5.2.m1.1.1.cmml" type="float" xref="S3.T8.5.5.2.m1.1.1">171.964</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.5.5.2.m1.1c">171.964</annotation><annotation encoding="application/x-llamapun" id="S3.T8.5.5.2.m1.1d">171.964</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T8.6.6.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T8.6.6.3.m1.1"><semantics id="S3.T8.6.6.3.m1.1a"><mrow id="S3.T8.6.6.3.m1.1.1" xref="S3.T8.6.6.3.m1.1.1.cmml"><mi id="S3.T8.6.6.3.m1.1.1.2" xref="S3.T8.6.6.3.m1.1.1.2.cmml"></mi><mo id="S3.T8.6.6.3.m1.1.1.1" xref="S3.T8.6.6.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T8.6.6.3.m1.1.1.3" xref="S3.T8.6.6.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T8.6.6.3.m1.1b"><apply id="S3.T8.6.6.3.m1.1.1.cmml" xref="S3.T8.6.6.3.m1.1.1"><lt id="S3.T8.6.6.3.m1.1.1.1.cmml" xref="S3.T8.6.6.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T8.6.6.3.m1.1.1.2.cmml" xref="S3.T8.6.6.3.m1.1.1.2">absent</csymbol><cn id="S3.T8.6.6.3.m1.1.1.3.cmml" type="float" xref="S3.T8.6.6.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.6.6.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T8.6.6.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T8.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T8.9.9.4">equal_opportunity_score</th>
<td class="ltx_td ltx_align_left" id="S3.T8.7.7.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T8.7.7.1.m1.1"><semantics id="S3.T8.7.7.1.m1.1a"><mn id="S3.T8.7.7.1.m1.1.1" xref="S3.T8.7.7.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T8.7.7.1.m1.1b"><cn id="S3.T8.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T8.7.7.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.7.7.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T8.7.7.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T8.8.8.2"><math alttext="180.550" class="ltx_Math" display="inline" id="S3.T8.8.8.2.m1.1"><semantics id="S3.T8.8.8.2.m1.1a"><mn id="S3.T8.8.8.2.m1.1.1" xref="S3.T8.8.8.2.m1.1.1.cmml">180.550</mn><annotation-xml encoding="MathML-Content" id="S3.T8.8.8.2.m1.1b"><cn id="S3.T8.8.8.2.m1.1.1.cmml" type="float" xref="S3.T8.8.8.2.m1.1.1">180.550</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.8.8.2.m1.1c">180.550</annotation><annotation encoding="application/x-llamapun" id="S3.T8.8.8.2.m1.1d">180.550</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T8.9.9.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T8.9.9.3.m1.1"><semantics id="S3.T8.9.9.3.m1.1a"><mrow id="S3.T8.9.9.3.m1.1.1" xref="S3.T8.9.9.3.m1.1.1.cmml"><mi id="S3.T8.9.9.3.m1.1.1.2" xref="S3.T8.9.9.3.m1.1.1.2.cmml"></mi><mo id="S3.T8.9.9.3.m1.1.1.1" xref="S3.T8.9.9.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T8.9.9.3.m1.1.1.3" xref="S3.T8.9.9.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T8.9.9.3.m1.1b"><apply id="S3.T8.9.9.3.m1.1.1.cmml" xref="S3.T8.9.9.3.m1.1.1"><lt id="S3.T8.9.9.3.m1.1.1.1.cmml" xref="S3.T8.9.9.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T8.9.9.3.m1.1.1.2.cmml" xref="S3.T8.9.9.3.m1.1.1.2">absent</csymbol><cn id="S3.T8.9.9.3.m1.1.1.3.cmml" type="float" xref="S3.T8.9.9.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.9.9.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T8.9.9.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T8.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T8.12.12.4">group_fairness_index</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T8.10.10.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T8.10.10.1.m1.1"><semantics id="S3.T8.10.10.1.m1.1a"><mn id="S3.T8.10.10.1.m1.1.1" xref="S3.T8.10.10.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T8.10.10.1.m1.1b"><cn id="S3.T8.10.10.1.m1.1.1.cmml" type="integer" xref="S3.T8.10.10.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.10.10.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T8.10.10.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T8.11.11.2"><math alttext="169.394" class="ltx_Math" display="inline" id="S3.T8.11.11.2.m1.1"><semantics id="S3.T8.11.11.2.m1.1a"><mn id="S3.T8.11.11.2.m1.1.1" xref="S3.T8.11.11.2.m1.1.1.cmml">169.394</mn><annotation-xml encoding="MathML-Content" id="S3.T8.11.11.2.m1.1b"><cn id="S3.T8.11.11.2.m1.1.1.cmml" type="float" xref="S3.T8.11.11.2.m1.1.1">169.394</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.11.11.2.m1.1c">169.394</annotation><annotation encoding="application/x-llamapun" id="S3.T8.11.11.2.m1.1d">169.394</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T8.12.12.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T8.12.12.3.m1.1"><semantics id="S3.T8.12.12.3.m1.1a"><mrow id="S3.T8.12.12.3.m1.1.1" xref="S3.T8.12.12.3.m1.1.1.cmml"><mi id="S3.T8.12.12.3.m1.1.1.2" xref="S3.T8.12.12.3.m1.1.1.2.cmml"></mi><mo id="S3.T8.12.12.3.m1.1.1.1" xref="S3.T8.12.12.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T8.12.12.3.m1.1.1.3" xref="S3.T8.12.12.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T8.12.12.3.m1.1b"><apply id="S3.T8.12.12.3.m1.1.1.cmml" xref="S3.T8.12.12.3.m1.1.1"><lt id="S3.T8.12.12.3.m1.1.1.1.cmml" xref="S3.T8.12.12.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T8.12.12.3.m1.1.1.2.cmml" xref="S3.T8.12.12.3.m1.1.1.2">absent</csymbol><cn id="S3.T8.12.12.3.m1.1.1.3.cmml" type="float" xref="S3.T8.12.12.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.12.12.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T8.12.12.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis of variance (ANOVA) used to determine the statistical significance of differences in fairness metrics across various Large Language Models (LLMs). The ANOVA tests whether the differences in fairness scores between LLMs are likely due to chance or reflect genuine underlying differences in their fairness properties.  The table shows the F-statistic and p-value for each key performance indicator (KPI) related to fairness, which are the demographic parity score, equal opportunity score, and group fairness index. The p-value indicates the probability that the observed differences in fairness are due to random chance; a small p-value (typically less than 0.05) suggests that the differences are statistically significant.
> <details>
> <summary>read the caption</summary>
> Table 8: Anova results for BEATS evaluation – fairness and LLM as judge
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T9.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T9.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T9.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S3.T9.6.7.1.1.1">KPI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T9.6.7.1.2"><span class="ltx_text ltx_font_bold" id="S3.T9.6.7.1.2.1">df</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T9.6.7.1.3"><span class="ltx_text ltx_font_bold" id="S3.T9.6.7.1.3.1">F-statistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T9.6.7.1.4"><span class="ltx_text ltx_font_bold" id="S3.T9.6.7.1.4.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T9.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T9.3.3.4">factual_accuracy_score</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T9.1.1.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T9.1.1.1.m1.1"><semantics id="S3.T9.1.1.1.m1.1a"><mn id="S3.T9.1.1.1.m1.1.1" xref="S3.T9.1.1.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T9.1.1.1.m1.1b"><cn id="S3.T9.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T9.1.1.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.1.1.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T9.1.1.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T9.2.2.2"><math alttext="671.330" class="ltx_Math" display="inline" id="S3.T9.2.2.2.m1.1"><semantics id="S3.T9.2.2.2.m1.1a"><mn id="S3.T9.2.2.2.m1.1.1" xref="S3.T9.2.2.2.m1.1.1.cmml">671.330</mn><annotation-xml encoding="MathML-Content" id="S3.T9.2.2.2.m1.1b"><cn id="S3.T9.2.2.2.m1.1.1.cmml" type="float" xref="S3.T9.2.2.2.m1.1.1">671.330</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.2.2.2.m1.1c">671.330</annotation><annotation encoding="application/x-llamapun" id="S3.T9.2.2.2.m1.1d">671.330</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T9.3.3.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T9.3.3.3.m1.1"><semantics id="S3.T9.3.3.3.m1.1a"><mrow id="S3.T9.3.3.3.m1.1.1" xref="S3.T9.3.3.3.m1.1.1.cmml"><mi id="S3.T9.3.3.3.m1.1.1.2" xref="S3.T9.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T9.3.3.3.m1.1.1.1" xref="S3.T9.3.3.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T9.3.3.3.m1.1.1.3" xref="S3.T9.3.3.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T9.3.3.3.m1.1b"><apply id="S3.T9.3.3.3.m1.1.1.cmml" xref="S3.T9.3.3.3.m1.1.1"><lt id="S3.T9.3.3.3.m1.1.1.1.cmml" xref="S3.T9.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T9.3.3.3.m1.1.1.2.cmml" xref="S3.T9.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T9.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T9.3.3.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.3.3.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T9.3.3.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T9.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T9.6.6.4">misinformation_risk_score</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T9.4.4.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T9.4.4.1.m1.1"><semantics id="S3.T9.4.4.1.m1.1a"><mn id="S3.T9.4.4.1.m1.1.1" xref="S3.T9.4.4.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T9.4.4.1.m1.1b"><cn id="S3.T9.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T9.4.4.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.4.4.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T9.4.4.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T9.5.5.2"><math alttext="568.084" class="ltx_Math" display="inline" id="S3.T9.5.5.2.m1.1"><semantics id="S3.T9.5.5.2.m1.1a"><mn id="S3.T9.5.5.2.m1.1.1" xref="S3.T9.5.5.2.m1.1.1.cmml">568.084</mn><annotation-xml encoding="MathML-Content" id="S3.T9.5.5.2.m1.1b"><cn id="S3.T9.5.5.2.m1.1.1.cmml" type="float" xref="S3.T9.5.5.2.m1.1.1">568.084</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.5.5.2.m1.1c">568.084</annotation><annotation encoding="application/x-llamapun" id="S3.T9.5.5.2.m1.1d">568.084</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T9.6.6.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T9.6.6.3.m1.1"><semantics id="S3.T9.6.6.3.m1.1a"><mrow id="S3.T9.6.6.3.m1.1.1" xref="S3.T9.6.6.3.m1.1.1.cmml"><mi id="S3.T9.6.6.3.m1.1.1.2" xref="S3.T9.6.6.3.m1.1.1.2.cmml"></mi><mo id="S3.T9.6.6.3.m1.1.1.1" xref="S3.T9.6.6.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T9.6.6.3.m1.1.1.3" xref="S3.T9.6.6.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T9.6.6.3.m1.1b"><apply id="S3.T9.6.6.3.m1.1.1.cmml" xref="S3.T9.6.6.3.m1.1.1"><lt id="S3.T9.6.6.3.m1.1.1.1.cmml" xref="S3.T9.6.6.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T9.6.6.3.m1.1.1.2.cmml" xref="S3.T9.6.6.3.m1.1.1.2">absent</csymbol><cn id="S3.T9.6.6.3.m1.1.1.3.cmml" type="float" xref="S3.T9.6.6.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.6.6.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T9.6.6.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis of variance (ANOVA) test. The ANOVA test was conducted to determine if there are statistically significant differences in factuality scores across different large language models (LLMs). The factuality scores were obtained using the BEATS (Bias Evaluation and Assessment Test Suite) framework, which measures several aspects of factuality in LLM outputs.  The table shows the F-statistic, degrees of freedom, and p-value for each of the key performance indicators (KPIs) related to factuality. These KPIs likely include measures such as factual accuracy and misinformation risk.  A significant p-value (typically less than 0.05) indicates that there is a statistically significant difference in the KPI score across the evaluated LLMs.
> <details>
> <summary>read the caption</summary>
> Table 9: Anova results for BEATS evaluation – factuality and eval model ID
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T10.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T10.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T10.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S3.T10.6.7.1.1.1">KPI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T10.6.7.1.2"><span class="ltx_text ltx_font_bold" id="S3.T10.6.7.1.2.1">df</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T10.6.7.1.3"><span class="ltx_text ltx_font_bold" id="S3.T10.6.7.1.3.1">F-statistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T10.6.7.1.4"><span class="ltx_text ltx_font_bold" id="S3.T10.6.7.1.4.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T10.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T10.3.3.4">factual_accuracy_score</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T10.1.1.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T10.1.1.1.m1.1"><semantics id="S3.T10.1.1.1.m1.1a"><mn id="S3.T10.1.1.1.m1.1.1" xref="S3.T10.1.1.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T10.1.1.1.m1.1b"><cn id="S3.T10.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T10.1.1.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T10.1.1.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T10.1.1.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T10.2.2.2"><math alttext="88.127" class="ltx_Math" display="inline" id="S3.T10.2.2.2.m1.1"><semantics id="S3.T10.2.2.2.m1.1a"><mn id="S3.T10.2.2.2.m1.1.1" xref="S3.T10.2.2.2.m1.1.1.cmml">88.127</mn><annotation-xml encoding="MathML-Content" id="S3.T10.2.2.2.m1.1b"><cn id="S3.T10.2.2.2.m1.1.1.cmml" type="float" xref="S3.T10.2.2.2.m1.1.1">88.127</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T10.2.2.2.m1.1c">88.127</annotation><annotation encoding="application/x-llamapun" id="S3.T10.2.2.2.m1.1d">88.127</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T10.3.3.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T10.3.3.3.m1.1"><semantics id="S3.T10.3.3.3.m1.1a"><mrow id="S3.T10.3.3.3.m1.1.1" xref="S3.T10.3.3.3.m1.1.1.cmml"><mi id="S3.T10.3.3.3.m1.1.1.2" xref="S3.T10.3.3.3.m1.1.1.2.cmml"></mi><mo id="S3.T10.3.3.3.m1.1.1.1" xref="S3.T10.3.3.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T10.3.3.3.m1.1.1.3" xref="S3.T10.3.3.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T10.3.3.3.m1.1b"><apply id="S3.T10.3.3.3.m1.1.1.cmml" xref="S3.T10.3.3.3.m1.1.1"><lt id="S3.T10.3.3.3.m1.1.1.1.cmml" xref="S3.T10.3.3.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T10.3.3.3.m1.1.1.2.cmml" xref="S3.T10.3.3.3.m1.1.1.2">absent</csymbol><cn id="S3.T10.3.3.3.m1.1.1.3.cmml" type="float" xref="S3.T10.3.3.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T10.3.3.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T10.3.3.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T10.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T10.6.6.4">misinformation_risk_score</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T10.4.4.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T10.4.4.1.m1.1"><semantics id="S3.T10.4.4.1.m1.1a"><mn id="S3.T10.4.4.1.m1.1.1" xref="S3.T10.4.4.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T10.4.4.1.m1.1b"><cn id="S3.T10.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T10.4.4.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T10.4.4.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T10.4.4.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T10.5.5.2"><math alttext="347.957" class="ltx_Math" display="inline" id="S3.T10.5.5.2.m1.1"><semantics id="S3.T10.5.5.2.m1.1a"><mn id="S3.T10.5.5.2.m1.1.1" xref="S3.T10.5.5.2.m1.1.1.cmml">347.957</mn><annotation-xml encoding="MathML-Content" id="S3.T10.5.5.2.m1.1b"><cn id="S3.T10.5.5.2.m1.1.1.cmml" type="float" xref="S3.T10.5.5.2.m1.1.1">347.957</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T10.5.5.2.m1.1c">347.957</annotation><annotation encoding="application/x-llamapun" id="S3.T10.5.5.2.m1.1d">347.957</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T10.6.6.3"><math alttext="&lt;0.0001" class="ltx_Math" display="inline" id="S3.T10.6.6.3.m1.1"><semantics id="S3.T10.6.6.3.m1.1a"><mrow id="S3.T10.6.6.3.m1.1.1" xref="S3.T10.6.6.3.m1.1.1.cmml"><mi id="S3.T10.6.6.3.m1.1.1.2" xref="S3.T10.6.6.3.m1.1.1.2.cmml"></mi><mo id="S3.T10.6.6.3.m1.1.1.1" xref="S3.T10.6.6.3.m1.1.1.1.cmml">&lt;</mo><mn id="S3.T10.6.6.3.m1.1.1.3" xref="S3.T10.6.6.3.m1.1.1.3.cmml">0.0001</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T10.6.6.3.m1.1b"><apply id="S3.T10.6.6.3.m1.1.1.cmml" xref="S3.T10.6.6.3.m1.1.1"><lt id="S3.T10.6.6.3.m1.1.1.1.cmml" xref="S3.T10.6.6.3.m1.1.1.1"></lt><csymbol cd="latexml" id="S3.T10.6.6.3.m1.1.1.2.cmml" xref="S3.T10.6.6.3.m1.1.1.2">absent</csymbol><cn id="S3.T10.6.6.3.m1.1.1.3.cmml" type="float" xref="S3.T10.6.6.3.m1.1.1.3">0.0001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T10.6.6.3.m1.1c">&lt;0.0001</annotation><annotation encoding="application/x-llamapun" id="S3.T10.6.6.3.m1.1d">&lt; 0.0001</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis of variance (ANOVA) test. The ANOVA test was conducted to determine if there are statistically significant differences in factuality scores (both factual accuracy and misinformation risk) generated by different Large Language Models (LLMs) when evaluated using the BEATS framework.  The table shows the degrees of freedom (df), the F-statistic, and the p-value for each of the factuality metrics. The p-value indicates the probability of observing the obtained results if there were no true differences between the LLMs.  A p-value less than 0.05 is generally considered to indicate a statistically significant difference.
> <details>
> <summary>read the caption</summary>
> Table 10: Anova results for BEATS evaluation – factuality and LLM as judge
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.24310/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24310/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}