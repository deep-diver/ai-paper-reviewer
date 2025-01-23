---
title: "Bridging Language Barriers in Healthcare: A Study on Arabic LLMs"
summary: "Arabic LLMs struggle with medical tasks; this study reveals optimal language ratios in training data for improved performance, highlighting challenges in simply translating medical data for different ..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 M42 Health",]
showSummary: true
date: 2025-01-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.09825 {{< /keyword >}}
{{< keyword icon="writer" >}} Nada Saadi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.09825" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.09825" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.09825/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many large language models (LLMs) predominantly focus on high-resource languages like English, neglecting low-resource languages crucial for global healthcare access.  This study investigates the challenges of developing LLMs proficient in both multilingual understanding and medical knowledge, specifically focusing on Arabic. It highlights that simply translating existing medical datasets is not a solution, because it doesn't guarantee satisfactory performance on clinical tasks in the target language.  

The researchers experimented with different language ratios in training data and various fine-tuning methods.  They found that the optimal language mix varies significantly across different medical tasks. Larger models with carefully balanced language ratios achieved superior performance, suggesting that data-intensive pretraining methods are essential for optimal multilingual medical performance. These findings offer important guidance for the development of more inclusive medical AI systems suitable for diverse linguistic communities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Translating medical data alone is insufficient for creating effective Arabic LLMs for clinical tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Optimal language ratios in training data significantly affect model performance across various medical tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Fine-tuning alone is not the most effective way to integrate new languages into LLMs; computationally intensive methods are often needed. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in **multilingual NLP and healthcare AI** because it directly addresses the limitations of current LLMs in handling low-resource languages for clinical tasks.  The findings on optimal data mixes and the challenges of simple translation will **guide future research** toward building more effective and inclusive medical AI systems. Its focus on Arabic, a low-resource language with unique linguistic features, makes it especially relevant to researchers working on bridging the language gap in global healthcare.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="Sx3.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="Sx3.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.1.1.1.1">Model/Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="Sx3.T1.1.1.1.2">PubMedQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="Sx3.T1.1.1.1.3">MedMCQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="Sx3.T1.1.1.1.4">MedQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="Sx3.T1.1.1.1.5">MMLU</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.2.2">
<td class="ltx_td ltx_border_r" id="Sx3.T1.1.2.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.2.2.2">En</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.2.2.3">Ar</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.2.2.4">En</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.2.2.5">Ar</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.2.2.6">En</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.2.2.7">Ar</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.2.2.8">En</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.2.2.9">Ar</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx3.T1.1.3.3.1">Qwen2.5-3B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Yang et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib24" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.3.3.2">29.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.3.3.3">61.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.3.3.4">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.3.3.5">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.3.3.6">48.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.3.3.7">41.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.3.3.8">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.3.3.9">28.0</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T1.1.4.4.1">Qwen2.5-7B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Yang et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib24" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.4.4.2">45.2</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.4.4.3"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.4.4.3.1">74.4</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.4.4.4">56.8</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.4.4.5"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.4.4.5.1">39.5</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.4.4.6">60.2</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.4.4.7">53.9</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.4.4.8"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.4.4.8.1">76.7</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.4.4.9"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.4.4.9.1">34.9</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T1.1.5.5.1">Pangea-7B <cite class="ltx_cite ltx_citemacro_citep">(Yue et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib25" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.5.5.2">57.0</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.5.5.3">61.0</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.5.5.4">50.2</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.5.5.5">37.5</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.5.5.6">53.0</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.5.5.7">49.6</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.5.5.8">68.3</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.5.5.9">32.4</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T1.1.6.6.1">Mistral-7B-Instruct_v0.3 <cite class="ltx_cite ltx_citemacro_citep">(Jiang et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib9" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.6.6.2">45.8</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.6.6.3">46.6</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.6.6.4">46.3</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.6.6.5">28.0</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.6.6.6">49.3</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.6.6.7">33.8</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.6.6.8">65.1</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.6.6.9">21.6</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T1.1.7.7.1">Llama3.1-8B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Dubey et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib5" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.7.7.2"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.7.7.2.1">76.2</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.7.7.3">73.2</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.7.7.4"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.7.7.4.1">58.4</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.7.7.5">35.8</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.7.7.6"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.7.7.6.1">62.0</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.7.7.7">29.5</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.7.7.8">73.4</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.7.7.9">46.4</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T1.1.8.8.1">Silma-9B-Instruct-v1.0 <cite class="ltx_cite ltx_citemacro_citep">(Silma-AI <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib22" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.8.8.2">75.6</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.8.8.3">64.0</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.8.8.4">54.9</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.8.8.5">38.9</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.8.8.6">61.6</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.8.8.7"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.8.8.7.1">54.7</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.8.8.8">76.1</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.8.8.9">31.5</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx3.T1.1.9.9.1">Llama-3.1-70B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Dubey et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib5" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.9.9.2">73.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.9.9.3"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.9.9.3.1">79.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.9.9.4">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.9.9.5">52.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.9.9.6">78.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.9.9.7">56.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.9.9.8"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.9.9.8.1">87.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T1.1.9.9.9">70.0</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T1.1.10.10.1">Qwen2.5-72B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Yang et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib24" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.10.10.2">63.2</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.10.10.3">76.6</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.10.10.4">68.4</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.10.10.5"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.10.10.5.1">56.9</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.10.10.6">76.1</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.10.10.7"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.10.10.7.1">76.1</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.10.10.8">87.4</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.10.10.9"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.10.10.9.1">76.1</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T1.1.11.11.1">Med42-Llama3.1-70B <cite class="ltx_cite ltx_citemacro_citep">(Christophe et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib4" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.11.11.2">77.6</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.11.11.3">75.0</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.11.11.4"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.11.11.4.1">72.4</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.11.11.5">49.3</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.11.11.6"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.11.11.6.1">80.4</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.11.11.7">53.5</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.11.11.8">86.8</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.11.11.9">67.7</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T1.1.12.12.1">Meditron3-70B <cite class="ltx_cite ltx_citemacro_citep">(Chen et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib3" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.12.12.2"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.12.12.2.1">80.6</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.12.12.3">75.8</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.12.12.4">70.9</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.12.12.5">51.2</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.12.12.6">79.3</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.12.12.7">72.0</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.12.12.8">87.0</td>
<td class="ltx_td ltx_align_center" id="Sx3.T1.1.12.12.9">56.6</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="Sx3.T1.1.13.13.1">BiMedix(Bilingual) <cite class="ltx_cite ltx_citemacro_citep">(Pieri et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib19" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx3.T1.1.13.13.2">77.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx3.T1.1.13.13.3">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx3.T1.1.13.13.4">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx3.T1.1.13.13.5">49.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx3.T1.1.13.13.6">65.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx3.T1.1.13.13.7">47.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx3.T1.1.13.13.8">73.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx3.T1.1.13.13.9">56.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance of various publicly available large language models (LLMs) on a series of medical question answering (QA) benchmarks.  The benchmarks assess the models' abilities on English and Arabic language medical questions.  The results show a performance disparity between the models in English versus Arabic. While Llama 3.1 models generally perform better on English benchmarks, Qwen 2.5 models exhibit relatively stronger performance on the Arabic benchmarks. This highlights the challenge of developing LLMs that generalize well across different languages and, specifically, in the medical domain.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy of publicly available models on different Medical QA benchmarks. Even though Llama3.1 models are performing better in English, Qwen2.5 models show a stronger performance in Arabic.
> </details>





### In-depth insights


#### Arabic LLMs in Healthcare
The application of Arabic LLMs in healthcare presents a significant opportunity to overcome language barriers and improve access to quality care for Arabic-speaking populations.  **Developing effective Arabic LLMs for healthcare requires addressing the scarcity of high-quality, domain-specific training data**.  This necessitates innovative approaches such as **data augmentation techniques, leveraging existing multilingual models, and careful translation of existing datasets**.  **Evaluation methodologies must be adapted to account for the complexities of the Arabic language** and the specific needs of clinical tasks, considering nuanced medical terminology and the unique linguistic features of Arabic dialects.   Furthermore, **research should focus on achieving optimal language ratios in training data**, exploring the balance of Arabic and other languages to enhance cross-lingual understanding and performance.  Finally, the development of Arabic LLMs in healthcare should be guided by ethical considerations, ensuring fairness, inclusivity, and mitigating potential biases.

#### Multilingual Model Limits
Multilingual models, while offering the promise of inclusivity, face significant limitations in handling diverse languages, particularly within specialized domains like healthcare.  **Data scarcity** in low-resource languages severely hinders effective training, resulting in subpar performance compared to models trained predominantly on high-resource languages such as English.  **Direct translation of existing datasets** is often insufficient, as it fails to capture the linguistic nuances and subtle contextual differences crucial for accurate understanding in clinical settings.  Furthermore, **the optimal language mix** within training data varies considerably across different medical tasks.  Simply relying on larger models or fine-tuning alone is not a guaranteed solution.  **Effective multilingual medical AI** necessitates computationally intensive pre-training methods and careful data curation strategies that address both linguistic diversity and domain-specific terminology.

#### Data Augmentation Impact
Data augmentation significantly impacts the performance of Arabic LLMs in medical applications.  The study explores various augmentation techniques, revealing that **simply translating existing datasets is insufficient**.  Optimal performance is achieved through careful calibration of the language mix in training data, suggesting that **a balanced or Arabic-majority approach often outperforms English-only or English-majority approaches.** This highlights the crucial role of high-quality Arabic medical data and demonstrates that **direct translation might not sufficiently capture the nuances of medical terminology and context in Arabic.**  Further research is needed to explore additional augmentation techniques and optimal data mix strategies for different clinical tasks to enhance the overall effectiveness and inclusivity of Arabic LLMs in healthcare.

#### Translation Pipeline Effects
A dedicated section analyzing 'Translation Pipeline Effects' within a research paper would delve into how the accuracy and efficacy of a multilingual model are impacted by the translation process.  **Different translation models will introduce varying levels of noise and inaccuracy**, potentially skewing results and affecting downstream tasks like fine-tuning.  The analysis would likely compare multiple translation approaches, perhaps contrasting those designed for specialized medical terminology with general-purpose models. Key metrics to examine would include BLEU scores (measuring translation quality) and subsequent performance metrics on Arabic medical benchmarks, potentially revealing whether certain translation pipelines introduce biases toward specific medical tasks.  A thoughtful analysis should also discuss **the computational cost of each pipeline**, considering the trade-off between accuracy and efficiency, especially within resource-constrained settings. Ultimately, the section would aim to provide critical insights into selecting the optimal translation approach, impacting both the development of robust multilingual clinical LLMs and their practical deployment.

#### Future Research Needs
Future research should prioritize expanding the scope of Arabic LLMs in healthcare.  **More comprehensive benchmarks** are needed, moving beyond question-answering tasks to evaluate complex clinical reasoning and decision-making abilities.  **Addressing the scarcity of high-quality Arabic medical data** is crucial through improved data collection, augmentation techniques, and potentially the creation of synthetic data while carefully considering biases. Investigating the **optimal training strategies for multilingual medical LLMs** is essential.  Exploration of different pretraining methods, fine-tuning techniques, and language ratios is required.  Research should delve into **handling dialectal variations within Arabic** to ensure inclusivity and effectiveness across diverse populations.  Finally, a thorough examination of the **ethical implications of using LLMs in diverse healthcare settings** is paramount to ensure fairness, accountability, and trustworthiness.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Sx4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="Sx4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.1.1.1.1">Translation Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.1.1.2.1">PubMedQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.1.1.3.1">MedMCQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.1.1.4.1">MedQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Sx4.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.1.1.5.1">MMLU</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx4.T2.1.2.1.1">LlamaX <cite class="ltx_cite ltx_citemacro_citep">(Lu et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib15" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T2.1.2.1.2">74.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T2.1.2.1.3">53.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T2.1.2.1.4">55.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx4.T2.1.2.1.5">59.5</td>
</tr>
<tr class="ltx_tr" id="Sx4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx4.T2.1.3.2.1">Helsinki <cite class="ltx_cite ltx_citemacro_citep">(Helsinki-NLP <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib7" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.3.2.2">72.0</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.3.2.3">48.9</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.3.2.4">40.8</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.3.2.5">56.6</td>
</tr>
<tr class="ltx_tr" id="Sx4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx4.T2.1.4.3.1">Flores 101 <cite class="ltx_cite ltx_citemacro_citep">(seyoungsong <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib21" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.4.3.2">72.0</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.4.3.3">36.6</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.4.3.4">31.2</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.4.3.5">34.0</td>
</tr>
<tr class="ltx_tr" id="Sx4.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx4.T2.1.5.4.1">Llama3.1-70B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Dubey et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib5" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.5.4.2">75.8</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.5.4.3">54.8</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.5.4.4">70.5</td>
<td class="ltx_td ltx_align_center" id="Sx4.T2.1.5.4.5">70.7</td>
</tr>
<tr class="ltx_tr" id="Sx4.T2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="Sx4.T2.1.6.5.1">Qwen2.5-72B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Yang et al. <a class="ltx_ref" href="https://arxiv.org/html/2501.09825v1#bib.bib24" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx4.T2.1.6.5.2"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.6.5.2.1">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx4.T2.1.6.5.3"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.6.5.3.1">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx4.T2.1.6.5.4"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.6.5.4.1">71.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Sx4.T2.1.6.5.5"><span class="ltx_text ltx_font_bold" id="Sx4.T2.1.6.5.5.1">71.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the accuracy of different translation models in translating Arabic medical benchmarks into English. The accuracy is assessed using the Llama3.1-70B-Instruct model.  It helps to understand which translation model performs best for medical terminology and how accurate the subsequent English text is for the downstream task.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison of various translation models on Arabic medical benchmarks, translated into English and evaluated using Llama3.1-70B-Instruct for accuracy (%).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="Sx4.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx4.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx4.T3.1.1.1.1">Dataset</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx4.T3.1.1.1.2">Original</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx4.T3.1.1.1.3">Description</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="Sx4.T3.1.1.1.4">Final</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="Sx4.T3.1.1.1.5"># of Tokens</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx4.T3.1.2.2.1">1. AHQAD</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx4.T3.1.2.2.2">Arabic</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx4.T3.1.2.2.3">
<table class="ltx_tabular ltx_align_top" id="Sx4.T3.1.2.2.3.1">
<tr class="ltx_tr" id="Sx4.T3.1.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.2.2.3.1.1.1">100K sampled based on completeness and</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.2.2.3.1.2.1">paraphrased with Qwen-72B-Instruct</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="Sx4.T3.1.2.2.4">Arabic</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="Sx4.T3.1.2.2.5">8.33 M</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.3.3" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.3.3.1"><span class="ltx_text" id="Sx4.T3.1.3.3.1.1" style="background-color:#F0F0F0;">2. Translated MED42 Dataset</span></td>
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.3.3.2"><span class="ltx_text" id="Sx4.T3.1.3.3.2.1" style="background-color:#F0F0F0;">English</span></td>
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.3.3.3">
<table class="ltx_tabular ltx_align_top" id="Sx4.T3.1.3.3.3.1" style="background-color:#F0F0F0;">
<tr class="ltx_tr" id="Sx4.T3.1.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.3.3.3.1.1.1">500K sampled randomly, cleaned and</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.3.3.3.1.2.1">translated with Qwen-72B-Instruct</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="Sx4.T3.1.3.3.4"><span class="ltx_text" id="Sx4.T3.1.3.3.4.1" style="background-color:#F0F0F0;">Arabic</span></td>
<td class="ltx_td ltx_align_right" id="Sx4.T3.1.3.3.5"><span class="ltx_text" id="Sx4.T3.1.3.3.5.1" style="background-color:#F0F0F0;">230.69 M</span></td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.4.4">
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.4.4.1">3. CIDAR</td>
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.4.4.2">Arabic</td>
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.4.4.3">
<table class="ltx_tabular ltx_align_top" id="Sx4.T3.1.4.4.3.1">
<tr class="ltx_tr" id="Sx4.T3.1.4.4.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.4.4.3.1.1.1">10K Instruction-Output good</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.4.4.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.4.4.3.1.2.1">quality dataset</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="Sx4.T3.1.4.4.4">Arabic</td>
<td class="ltx_td ltx_align_right" id="Sx4.T3.1.4.4.5">1.34 M</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.5.5" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.5.5.1"><span class="ltx_text" id="Sx4.T3.1.5.5.1.1" style="background-color:#F0F0F0;">4. Med42 Dataset</span></td>
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.5.5.2"><span class="ltx_text" id="Sx4.T3.1.5.5.2.1" style="background-color:#F0F0F0;">English</span></td>
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.5.5.3"><span class="ltx_text" id="Sx4.T3.1.5.5.3.1" style="background-color:#F0F0F0;">Full English FT dataset</span></td>
<td class="ltx_td ltx_align_right" id="Sx4.T3.1.5.5.4"><span class="ltx_text" id="Sx4.T3.1.5.5.4.1" style="background-color:#F0F0F0;">English</span></td>
<td class="ltx_td ltx_align_right" id="Sx4.T3.1.5.5.5"><span class="ltx_text" id="Sx4.T3.1.5.5.5.1" style="background-color:#F0F0F0;">464.97 M</span></td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.6.6">
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.6.6.1">5. Synthetic Open-Ended</td>
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.6.6.2">English</td>
<td class="ltx_td ltx_align_left" id="Sx4.T3.1.6.6.3">
<table class="ltx_tabular ltx_align_top" id="Sx4.T3.1.6.6.3.1">
<tr class="ltx_tr" id="Sx4.T3.1.6.6.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.6.6.3.1.1.1">~200K sampled based on 1-5 rating and</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.6.6.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.6.6.3.1.2.1">translated with Qwen-72B-Instruct</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="Sx4.T3.1.6.6.4">Arabic</td>
<td class="ltx_td ltx_align_right" id="Sx4.T3.1.6.6.5">240 M</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="Sx4.T3.1.7.7.1"><span class="ltx_text ltx_font_bold" id="Sx4.T3.1.7.7.1.1">Total # of Arabic Tokens</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="Sx4.T3.1.7.7.2"><span class="ltx_text ltx_font_bold" id="Sx4.T3.1.7.7.2.1">480.36 M</span></td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" colspan="4" id="Sx4.T3.1.8.8.1"><span class="ltx_text ltx_font_bold" id="Sx4.T3.1.8.8.1.1">Total # of English Tokens</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="Sx4.T3.1.8.8.2"><span class="ltx_text ltx_font_bold" id="Sx4.T3.1.8.8.2.1">469.97 M</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 provides a detailed overview of the datasets used in the study, categorized by their original language (Arabic or English), a description of their creation and processing (e.g., sampling methods, translation techniques), and the final number of tokens in each dataset.  It also shows the total number of Arabic and English tokens used for training, which is critical for understanding the language distribution in the training data and the focus on Arabic.
> <details>
> <summary>read the caption</summary>
> Table 3: Dataset Overview with Language Distribution
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="Sx4.T3.1.2.2.3.1">
<tr class="ltx_tr" id="Sx4.T3.1.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.2.2.3.1.1.1">100K sampled based on completeness and</td>
</tr>
<tr class="ltx_tr" id="Sx4.T3.1.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx4.T3.1.2.2.3.1.2.1">paraphrased with Qwen-72B-Instruct</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy of fine-tuned Llama 3.1 models (8B and 70B parameters) across various medical question answering (QA) benchmarks.  Different ratios of Arabic and English data were used for fine-tuning. The results show inconsistent performance across different benchmarks, revealing that the optimal training data composition varies by task.  Even the larger, instruction-tuned (Instruct) 70B model shows limited performance gains over the baseline in Arabic after fine-tuning.
> <details>
> <summary>read the caption</summary>
> Table 4: Accuracy of Finetuned Llama3.1-8b and 70b models with Different Arabic-English Dataset Ratios on medical QA benchmarks. Fine-tuning Llama 3.1 models on varying Arabic-English dataset ratios yields inconsistent results across medical QA tasks. Even large instruct models show limited improvement on Arabic benchmarks after fine-tuning.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.09825/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09825/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09825/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09825/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09825/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09825/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09825/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09825/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}