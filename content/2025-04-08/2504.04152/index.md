---
title: "Rethinking Multilingual Continual Pretraining: Data Mixing for Adapting LLMs Across Languages and Resources"
summary: "Multilingual continual pretraining: Data mixing strategies significantly impact LLM performance across languages!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Helsinki",]
showSummary: true
date: 2025-04-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.04152 {{< /keyword >}}
{{< keyword icon="writer" >}} Zihao Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.04152" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.04152" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.04152/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) show performance disparities across languages. Continual Pretraining (CPT) is promising for fixing this, but it's unclear how monolingual, bilingual, and code-augmented data compare. This study evaluates 36 CPT setups with three multilingual models and 30+ languages. Languages are categorized as altruistic, selfish, and stagnant. The research uncovers data strategies with substantial effect on language representation. 



The study reveals key insights: Bilingual CPT boosts classification but can mix languages in generation. Code data consistently improves classification, especially for low-resource languages, but may slightly hurt generation. The language categorization based on cross-lingual transfer doesn't always hold true. This nuanced interaction highlights the complexity of multilingual representation learning. It is essential to study language classifications for generalizable CPT strategies.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Bilingual CPT enhances classification accuracy but may cause language mixing during generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Including code data during CPT improves classification accuracy, especially for low-resource languages, but can slightly reduce generation quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Current language classifications based on cross-lingual transfer abilities may not generalize across different CPT conditions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **uncovers the complexities of multilingual continual pretraining**, challenging existing assumptions about language categorization and data strategies. The nuanced findings provide **valuable insights for developing more adaptive and effective CPT methods**, paving the way for future research to bridge language disparities in large language models.

------
#### Visual Insights



![](https://arxiv.org/html/2504.04152/x2.png)

> 🔼 This figure displays the BLEU scores achieved on the FLORES-200 benchmark's English-to-other-language translation task.  It compares the performance of models that underwent monolingual continual pretraining (CPT) versus those using bilingual CPT, categorized by high, mid, and low-resource language groups.  Lower BLEU scores indicate poorer translation quality. The purpose is to show the effect of bilingual vs. monolingual CPT on translation performance, and how that effect varies depending on the language resource level.
> <details>
> <summary>read the caption</summary>
> Figure 1: FLORES-200 X-Eng BLEU score comparing bilingual and monolingual CPT across high-, mid-, and low-resource languages.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1">Category</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S2.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1">Resources</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1">Training Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1">Related Language 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1">Related Language 2</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.2.2.1" rowspan="5"><span class="ltx_text" id="S2.T1.1.2.2.1.1">Altruistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.2.2.2">High</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.2.2.3.1">zho_Hani</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.2.2.4.1">yue_Hant</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.5">-</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.3.3.1">Medium</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.3.3.2.1">ceb_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.3.3.3.1">tgl_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.3.3.4.1">ilo_Latn</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.4.4.1">Medium</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.4.4.2.1">mar_Deva</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.4.4.3.1">hin_Deva</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.4.4.4.1">npi_Deva</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.5.5.1">Low</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.5.5.2.1">zul_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.5.5.3.1">xho_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.5.5.4.1">ssw_Latn</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.6.6.1">Low</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.6.6.2.1">khm_Khmr</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.6.6.3.1">vie_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.6.4">-</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.7.7.1" rowspan="5"><span class="ltx_text" id="S2.T1.1.7.7.1.1">Selfish</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.7.7.2">High</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.7.7.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.7.7.3.1">deu_Latn</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.7.7.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.7.7.4.1">nld_Latn</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.7.7.5"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.7.7.5.1">dan_Latn</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.8.8.1">Medium</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.8.8.2.1">bel_Cyrl</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.8.8.3.1">rus_Cyrl</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.8.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.8.8.4.1">ukr_Cyrl</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.9.9.1">Medium</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.9.9.2.1">mri_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.9.9.3.1">smo_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.9.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.9.9.4.1">fij_Latn</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.10.10.1">Low</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.10.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.10.10.2.1">kir_Cyrl</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.10.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.10.10.3.1">kaz_Cyrl</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.10.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.10.10.4.1">bak_Cyrl</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.11.11.1">Low</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.11.11.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.11.11.2.1">nya_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.11.11.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.11.11.3.1">bem_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.11.11.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.11.11.4.1">sna_Latn</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S2.T1.1.12.12.1" rowspan="4"><span class="ltx_text" id="S2.T1.1.12.12.1.1">Stagnant</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.12.12.2">Medium</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.12.12.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.12.12.3.1">tha_Thai</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.12.12.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.12.12.4.1">lao_Laoo</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.12.12.5"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.12.12.5.1">shn_Mymr</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.13.13.1">Medium</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.13.13.2.1">yor_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.13.13.3.1">ibo_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.13.13.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.13.13.4.1">hau_Latn</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.1.14.14.1">Low</th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.14.14.2.1">sna_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.14.14.3.1">nya_Latn</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.14.14.4"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.14.14.4.1">zul_Latn</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S2.T1.1.15.15.1">Low</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.15.15.2"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.15.15.2.1">wol_Latn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.15.15.3"><span class="ltx_text ltx_font_typewriter" id="S2.T1.1.15.15.3.1">bam_Latn</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.15.15.4">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the languages selected for continual pretraining (CPT) experiments, categorized by their cross-lingual transfer behavior (altruistic, selfish, stagnant) and resource level (high, medium, low).  For each training language, one or two linguistically related languages are also listed. These related languages were used for cross-lingual evaluation to assess transferability of CPT effects to similar, unseen languages. A hyphen (-) indicates that a second related language was not found within the evaluation benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Selected languages for CPT along with their corresponding related languages for evaluation. ‘-’ indicates the second related language cannot be found in the benchmark.
> </details>





### In-depth insights


#### CPT: Data Mixing
**Data mixing in continual pretraining (CPT)** is a crucial aspect, influencing how effectively LLMs adapt across languages and resource levels. The paper investigates various data mixing strategies: **monolingual, bilingual, and code-augmented**. It evaluates their impact on multilingual classification accuracy, generation quality, and cross-lingual transfer. **Monolingual CPT** uses text from a single language, while **bilingual CPT** employs parallel translations between language pairs. **Code-augmented CPT** incorporates programming code alongside textual data. Findings suggest bilingual CPT improves classification, but introduces language mixing during generation. Code data enhances classification, especially for low-resource languages, but may slightly degrade generation quality. These nuanced data mixing effects underscore the complexity of multilingual representation learning and highlight the need for careful consideration of data composition during CPT.

#### Language Transfer
Language transfer in multilingual models is a complex phenomenon, where learning in one language affects performance in others. A key aspect is the impact of **relatedness between languages**, where typologically similar languages might exhibit positive transfer, while distant languages could lead to negative interference. This can be influenced by the training data; bilingual pretraining often improves cross-lingual transfer, yet the model's architecture and training strategy play key roles. The directionality of transfer is also crucial, considering whether high-resource languages benefit low-resource ones or vice-versa. Understanding these nuances is vital for **optimizing multilingual models**, preventing negative transfer, and improving generalization across diverse languages. **Evaluation must cover both trained and related languages**, along with considering the model architecture to account for unexpected language transfer.

#### Code-Augmented CPT
**Code-augmented Continual Pretraining (CPT)** emerges as a fascinating area within multilingual LLM adaptation. The strategic incorporation of **programming code** during CPT offers a pathway to enhance reasoning capabilities and bolster structured information processing. Research indicates that code integration often helps **low-resource languages**, acting as a scaffold to improve classification accuracy and mitigate deficits during generation. However, the code inclusion may introduce task-dependent trade-offs. **Improvements in multilingual classification** are often observed with code augmentation. The integration of code may also lead to slight quality degradation of translation because models may tend to generate programming-related terms. Nuances show that **the role of code** is complex and requires careful balancing. Further research is warranted to explore adaptive methods that maximize benefits while mitigating potential negative impacts on generation.

#### Multilingual LLMs
**Multilingual LLMs** represent a significant advancement in natural language processing, striving to bridge communication gaps across languages. Their architecture, often built upon the Transformer model, enables the processing and generation of text in multiple languages, aiming for zero-shot or few-shot cross-lingual transfer capabilities. Training these models involves diverse strategies, including **monolingual pretraining, multilingual pretraining, and fine-tuning**, each with its strengths and limitations in terms of language representation and cross-lingual understanding. **Data quality and quantity** play a crucial role; high-quality, diverse multilingual datasets are essential for learning robust and generalizable language representations. Challenges in this field include **addressing the imbalance in resources across languages**, mitigating language interference, and ensuring consistent performance across different linguistic tasks and domains.

#### Model Biases
**Model biases** can creep in during various stages of development, from data collection to architectural choices. Training data often reflects societal imbalances, leading models to **perpetuate stereotypes**. Algorithmic decisions in the model design, can also amplify unintended biases, leading to **unfair outcomes** for certain demographics. Moreover, **evaluating model performance** uniformly across diverse subgroups is crucial to detect and address biases. Understanding these biases is needed for creating equitable and fair AI systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.04152/x3.png)

> 🔼 This figure compares the performance of monolingual and bilingual continual pretraining (CPT) strategies on a multilingual news topic classification task (SIB-200).  It displays average classification accuracy across three resource levels (high, mid, and low) for each of the three base language models (Llama-3.1-8B, Llama-2-7B, Viking-7B). The results show how each CPT approach affects different language resource levels and base models.  Specifically, you can analyze how bilingual CPT influences performance compared to the monolingual approach for high, mid, and low-resource language categories and across the different base models.
> <details>
> <summary>read the caption</summary>
> Figure 2: SIB-200 classification accuracy comparing monolingual and bilingual CPT across high-, mid-, and low-resource languages.
> </details>



![](https://arxiv.org/html/2504.04152/x4.png)

> 🔼 This figure compares the classification accuracy of monolingual continual pretraining (CPT) models with and without the inclusion of code data.  The comparison is shown across three resource levels (high, mid, and low) for languages.  It displays the average accuracy for each model type across the different resource levels, allowing for a direct visual assessment of the impact of incorporating code data on the model's performance for languages with varying resource availability. 
> <details>
> <summary>read the caption</summary>
> Figure 3: SIB-200 classification accuracy comparing monolingual and monolingual+code CPT across high-, mid-, and low-resource languages.
> </details>



![](https://arxiv.org/html/2504.04152/x5.png)

> 🔼 This figure displays the results of comparing monolingual continual pretraining (CPT) with and without code data on the FLORES-200 X-Eng machine translation benchmark.  It shows the BLEU scores achieved across different resource levels (high, mid, low) for three different base multilingual language models (Llama-3.1-8B, Llama-2-7B, Viking-7B). The graph allows for a visual comparison of the impact of adding code data to the monolingual CPT approach on translation quality across various language resource levels and models.  Higher BLEU scores indicate better translation performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: FLORES-200 X-Eng BLEU score comparing monolingual and monolingual+code CPT across high-, mid-, and low-resource languages.
> </details>



![](https://arxiv.org/html/2504.04152/x6.png)

> 🔼 This figure compares the performance of bilingual continual pretraining (CPT) models with and without code data on the SIB-200 benchmark, a multilingual news topic classification task.  The results are broken down by language resource levels (high, mid, low). It illustrates how adding code data to bilingual CPT affects classification accuracy for different language resource levels and helps understand the impact of code integration on multilingual model performance within the context of bilingual continual pretraining.  Higher accuracy indicates better performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: SIB-200 classification accuracy comparing bilingual and bilingual+code CPT across high-, mid-, and low-resource languages.
> </details>



![](https://arxiv.org/html/2504.04152/x7.png)

> 🔼 This figure showcases examples highlighting the issue of language mixing that arises in bilingual continual pretraining (CPT) models, specifically comparing the results from a Llama-3.1-8B model trained using bilingual CPT (L3-Bi-) against those trained with monolingual CPT (L3-Mono-).  The examples demonstrate that models trained with bilingual data frequently insert fragments of text from both source and target languages into the generated output.  Each example includes the original prompt, the expected translation, the output generated by the bilingual model, the output generated by the monolingual model, and the BLEU score for each output.  The comparison reveals a noticeable degradation in translation quality and coherence in the bilingual models, characterized by the insertion of inappropriate language tokens.  The monolingual models, on the other hand, generate translations that are more accurate and fluent.
> <details>
> <summary>read the caption</summary>
> Figure 6: Examples of language mixing in bilingual CPT (L3-Bi-) compared to monolingual CPT (L3-Mono-).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T2.1.1.1.1" rowspan="2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.1">Base Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T2.1.1.1.2" rowspan="2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.2.1">Category</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S2.T2.1.1.1.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.3.1">Training Data</span></th>
</tr>
<tr class="ltx_tr" id="S2.T2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.2.2.1" style="padding:1pt 3.0pt;">Mono</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.2.2.2" style="padding:1pt 3.0pt;">Bi</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.2.2.3" style="padding:1pt 3.0pt;">Mono+Code</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.2.2.4" style="padding:1pt 3.0pt;">Bi+Code</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.1.3.1.1" rowspan="3" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.3.1.1.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.1.3.1.2" style="padding:1pt 3.0pt;">Altruistic</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.3.1.3" style="padding:1pt 3.0pt;">L3-Mono-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.3.1.4" style="padding:1pt 3.0pt;">L3-Bi-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.3.1.5" style="padding:1pt 3.0pt;">L3-Mono+Code-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.3.1.6" style="padding:1pt 3.0pt;">L3-Bi+Code-Alt</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.1.4.2.1" style="padding:1pt 3.0pt;">Selfish</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.2.2" style="padding:1pt 3.0pt;">L3-Mono-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.2.3" style="padding:1pt 3.0pt;">L3-Bi-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.2.4" style="padding:1pt 3.0pt;">L3-Mono+Code-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.2.5" style="padding:1pt 3.0pt;">L3-Bi+Code-Sel</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.1.5.3.1" style="padding:1pt 3.0pt;">Stagnant</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.5.3.2" style="padding:1pt 3.0pt;">L3-Mono-Stag</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.5.3.3" style="padding:1pt 3.0pt;">L3-Bi-Stag</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.5.3.4" style="padding:1pt 3.0pt;">L3-Mono+Code-Stag</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.5.3.5" style="padding:1pt 3.0pt;">L3-Bi+Code-Stag</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.1.6.4.1" rowspan="3" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.6.4.1.1">Llama-2-7B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.1.6.4.2" style="padding:1pt 3.0pt;">Altruistic</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.6.4.3" style="padding:1pt 3.0pt;">L2-Mono-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.6.4.4" style="padding:1pt 3.0pt;">L2-Bi-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.6.4.5" style="padding:1pt 3.0pt;">L2-Mono+Code-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.6.4.6" style="padding:1pt 3.0pt;">L2-Bi+Code-Alt</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.1.7.5.1" style="padding:1pt 3.0pt;">Selfish</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.7.5.2" style="padding:1pt 3.0pt;">L2-Mono-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.7.5.3" style="padding:1pt 3.0pt;">L2-Bi-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.7.5.4" style="padding:1pt 3.0pt;">L2-Mono+Code-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.7.5.5" style="padding:1pt 3.0pt;">L2-Bi+Code-Sel</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.1.8.6.1" style="padding:1pt 3.0pt;">Stagnant</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.8.6.2" style="padding:1pt 3.0pt;">L2-Mono-Stag</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.8.6.3" style="padding:1pt 3.0pt;">L2-Bi-Stag</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.8.6.4" style="padding:1pt 3.0pt;">L2-Mono+Code-Stag</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.8.6.5" style="padding:1pt 3.0pt;">L2-Bi+Code-Stag</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S2.T2.1.9.7.1" rowspan="3" style="padding:1pt 3.0pt;"><span class="ltx_text" id="S2.T2.1.9.7.1.1">Viking-7B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.1.9.7.2" style="padding:1pt 3.0pt;">Altruistic</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.9.7.3" style="padding:1pt 3.0pt;">V7-Mono-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.9.7.4" style="padding:1pt 3.0pt;">V7-Bi-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.9.7.5" style="padding:1pt 3.0pt;">V7-Mono+Code-Alt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.9.7.6" style="padding:1pt 3.0pt;">V7-Bi+Code-Alt</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.1.10.8.1" style="padding:1pt 3.0pt;">Selfish</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.10.8.2" style="padding:1pt 3.0pt;">V7-Mono-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.10.8.3" style="padding:1pt 3.0pt;">V7-Bi-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.10.8.4" style="padding:1pt 3.0pt;">V7-Mono+Code-Sel</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.10.8.5" style="padding:1pt 3.0pt;">V7-Bi+Code-Sel</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S2.T2.1.11.9.1" style="padding:1pt 3.0pt;">Stagnant</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.1.11.9.2" style="padding:1pt 3.0pt;">V7-Mono-Stag</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.1.11.9.3" style="padding:1pt 3.0pt;">V7-Bi-Stag</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.1.11.9.4" style="padding:1pt 3.0pt;">V7-Mono+Code-Stag</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.1.11.9.5" style="padding:1pt 3.0pt;">V7-Bi+Code-Stag</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the 36 continual pretraining (CPT) configurations used in the experiments.  Each configuration is systematically defined by specifying the base model used (Llama-3.1-8B, Llama-2-7B, or Viking-7B), the type of data used for CPT (monolingual, bilingual, or bilingual with code), and the language category (altruistic, selfish, or stagnant) of the languages included in the training data. This systematic approach allows the researchers to isolate the effects of different CPT strategies on multilingual model performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Continual pretraining configurations with structured naming.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T3.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S3.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.2.1">Altruistic Languages</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S3.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.3.1">Selfish Languages</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.4.1">Stagnant Languages</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T3.1.1.2.2.1">Training</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T3.1.1.2.2.2">Related</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S3.T3.1.1.2.2.3">Met?</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T3.1.1.2.2.4">Training</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T3.1.1.2.2.5">Related</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r" id="S3.T3.1.1.2.2.6">Met?</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T3.1.1.2.2.7">Training</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T3.1.1.2.2.8">Related</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T3.1.1.2.2.9">Met?</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.1.1.3.1.1">L2-Bi-</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.3.1.2">+7.08</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.3.1.3">-22.55</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.3.1.4"><span class="ltx_text" id="S3.T3.1.1.3.1.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.3.1.5">+12.33</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.3.1.6">+2.90</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.3.1.7"><span class="ltx_text" id="S3.T3.1.1.3.1.7.1" style="color:#00FF00;">Yes</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.3.1.8">+5.88</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.3.1.9">-9.99</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.3.1.10"><span class="ltx_text" id="S3.T3.1.1.3.1.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.1.1.4.2.1">L2-Bi+Code-</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.2.2">+62.37</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.2.3">+28.31</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.4.2.4"><span class="ltx_text" id="S3.T3.1.1.4.2.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.2.5">+52.32</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.2.6">+31.67</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.4.2.7"><span class="ltx_text" id="S3.T3.1.1.4.2.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.2.8">+26.13</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.2.9">+6.25</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.4.2.10"><span class="ltx_text" id="S3.T3.1.1.4.2.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.1.1.5.3.1">L2-Mono-</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.3.2">-14.60</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.3.3">-31.32</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.5.3.4"><span class="ltx_text" id="S3.T3.1.1.5.3.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.3.5">+53.18</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.3.6">+21.94</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.5.3.7"><span class="ltx_text" id="S3.T3.1.1.5.3.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.3.8">+31.36</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.3.9">-8.33</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.5.3.10"><span class="ltx_text" id="S3.T3.1.1.5.3.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.1.1.6.4.1">L2-Mono+Code-</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.4.2">+50.43</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.4.3">+19.04</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.6.4.4"><span class="ltx_text" id="S3.T3.1.1.6.4.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.4.5">+52.32</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.4.6">+26.29</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.6.4.7"><span class="ltx_text" id="S3.T3.1.1.6.4.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.4.8">+64.02</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.4.9">+14.57</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.6.4.10"><span class="ltx_text" id="S3.T3.1.1.6.4.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.1.1.7.5.1">L3-Bi-</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.7.5.2">+4.46</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.7.5.3">-4.46</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.7.5.4"><span class="ltx_text" id="S3.T3.1.1.7.5.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.7.5.5">-7.90</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.7.5.6">-19.54</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.7.5.7"><span class="ltx_text" id="S3.T3.1.1.7.5.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.7.5.8">+14.76</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.7.5.9">-28.43</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.7.5.10"><span class="ltx_text" id="S3.T3.1.1.7.5.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.1.1.8.6.1">L3-Bi+Code-</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.6.2">+1.64</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.6.3">-7.70</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.8.6.4"><span class="ltx_text" id="S3.T3.1.1.8.6.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.6.5">-5.85</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.6.6">-15.66</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.8.6.7"><span class="ltx_text" id="S3.T3.1.1.8.6.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.6.8">+21.81</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.6.9">-28.04</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.8.6.10"><span class="ltx_text" id="S3.T3.1.1.8.6.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.1.1.9.7.1">L3-Mono-</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.9.7.2">-24.37</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.9.7.3">-31.26</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.9.7.4"><span class="ltx_text" id="S3.T3.1.1.9.7.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.9.7.5">-9.07</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.9.7.6">-19.84</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.9.7.7"><span class="ltx_text" id="S3.T3.1.1.9.7.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.9.7.8">-7.71</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.9.7.9">-43.54</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.9.7.10"><span class="ltx_text" id="S3.T3.1.1.9.7.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.1.1.10.8.1">L3-Mono+Code-</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.10.8.2">-1.78</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.10.8.3">-11.13</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.10.8.4"><span class="ltx_text" id="S3.T3.1.1.10.8.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.10.8.5">+2.49</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.10.8.6">-10.85</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.10.8.7"><span class="ltx_text" id="S3.T3.1.1.10.8.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.10.8.8">0.00</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.10.8.9">-37.01</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.10.8.10"><span class="ltx_text" id="S3.T3.1.1.10.8.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.1.1.11.9.1">V7-Bi-</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.11.9.2">-11.41</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.11.9.3">-31.95</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.11.9.4"><span class="ltx_text" id="S3.T3.1.1.11.9.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.11.9.5">+19.24</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.11.9.6">-10.22</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.1.1.11.9.7"><span class="ltx_text" id="S3.T3.1.1.11.9.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.11.9.8">+78.18</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.11.9.9">+26.32</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.11.9.10"><span class="ltx_text" id="S3.T3.1.1.11.9.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.1.1.12.10.1">V7-Bi+Code-</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.10.2">+22.82</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.10.3">-9.35</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.12.10.4"><span class="ltx_text" id="S3.T3.1.1.12.10.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.10.5">+17.57</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.10.6">-16.35</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.12.10.7"><span class="ltx_text" id="S3.T3.1.1.12.10.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.10.8">+11.16</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.10.9">-19.36</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.12.10.10"><span class="ltx_text" id="S3.T3.1.1.12.10.10.1" style="color:#FF0000;">No</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.1.1.13.11.1">V7-Mono-</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.11.2">-8.22</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.11.3">-19.74</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.13.11.4"><span class="ltx_text" id="S3.T3.1.1.13.11.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.11.5">+5.86</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.11.6">-33.45</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.1.1.13.11.7"><span class="ltx_text" id="S3.T3.1.1.13.11.7.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.11.8">0.00</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.11.9">-0.83</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.13.11.10"><span class="ltx_text" id="S3.T3.1.1.13.11.10.1" style="color:#00FF00;">Yes</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T3.1.1.14.12.1">V7-Mono+Code-</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.14.12.2">+5.93</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.14.12.3">-11.69</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T3.1.1.14.12.4"><span class="ltx_text" id="S3.T3.1.1.14.12.4.1" style="color:#FF0000;">No</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.14.12.5">+53.96</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.14.12.6">+8.18</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T3.1.1.14.12.7"><span class="ltx_text" id="S3.T3.1.1.14.12.7.1" style="color:#00FF00;">Yes</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.14.12.8">+21.31</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.14.12.9">+17.27</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.1.14.12.10"><span class="ltx_text" id="S3.T3.1.1.14.12.10.1" style="color:#FF0000;">No</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a systematic evaluation of the impact of continual pretraining (CPT) strategies on multilingual language models, categorized as altruistic, selfish, and stagnant based on their cross-lingual transfer behavior.  It shows the percentage change in classification accuracy on SIB-200 for both the training languages and their linguistically related languages, across various CPT configurations (monolingual, bilingual, and code-augmented). The 'Met' column indicates whether the observed behavior aligns with the hypothesized behavior for each language category.
> <details>
> <summary>read the caption</summary>
> Table 3: SIB-200 classification accuracy changes (%) for training and related languages across altruistic, selfish, and stagnant categories. Results are reported relative to base models, with a “Met” column to indicate whether the hypothesis is met or contradicted.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T4.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.2.1" style="background-color:#DCE6F1;">zho_Hans</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.3.1" style="background-color:#DCE6F1;">mar_Deva</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.4.1" style="background-color:#DCE6F1;">ceb_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.5.1" style="background-color:#DCE6F1;">zul_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.6.1" style="background-color:#DCE6F1;">khm_Khmr</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.7.1">eng_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.8.1">hin_Deva</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.9.1">tgl_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.10.1">xho_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.11.1">vie_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.12.1">ilo_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.13.1">npi_Deva</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.14.1">yue_Hant</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.15.1">ssw_Latn</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Bi-Alt</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.2.1.2.1" style="background-color:#DCE6F1;">0.2598</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.2.1.3.1" style="background-color:#DCE6F1;">0.2108</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.2.1.4.1" style="background-color:#DCE6F1;">0.2402</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.2.1.5.1" style="background-color:#DCE6F1;">0.2794</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.2.1.6.1" style="background-color:#DCE6F1;">0.1961</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;">0.4216</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;">0.1961</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.13" style="padding-top:1pt;padding-bottom:1pt;">0.1716</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.14" style="padding-top:1pt;padding-bottom:1pt;">0.2255</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.1.15" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Bi+Code-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.3.2.2.1" style="background-color:#DCE6F1;">0.3529</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.3.2.3.1" style="background-color:#DCE6F1;">0.3284</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.3.2.4.1" style="background-color:#DCE6F1;">0.4412</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.3.2.5.1" style="background-color:#DCE6F1;">0.3627</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.3.2.6.1" style="background-color:#DCE6F1;">0.3137</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;">0.5049</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;">0.2402</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;">0.3873</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;">0.3088</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;">0.3382</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;">0.3039</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.13" style="padding-top:1pt;padding-bottom:1pt;">0.2451</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.14" style="padding-top:1pt;padding-bottom:1pt;">0.3725</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.3.2.15" style="padding-top:1pt;padding-bottom:1pt;">0.3137</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Mono-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.4.3.2.1" style="background-color:#DCE6F1;">0.1765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.4.3.3.1" style="background-color:#DCE6F1;">0.1765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.4.3.4.1" style="background-color:#DCE6F1;">0.2108</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.4.3.5.1" style="background-color:#DCE6F1;">0.1814</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.4.3.6.1" style="background-color:#DCE6F1;">0.2010</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;">0.2304</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;">0.1471</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;">0.1471</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.14" style="padding-top:1pt;padding-bottom:1pt;">0.1863</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.4.3.15" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Mono+Code-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.5.4.2.1" style="background-color:#DCE6F1;">0.3529</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.5.4.3.1" style="background-color:#DCE6F1;">0.3235</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.5.4.4.1" style="background-color:#DCE6F1;">0.3922</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.5.4.5.1" style="background-color:#DCE6F1;">0.3382</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.5.4.6.1" style="background-color:#DCE6F1;">0.2598</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;">0.4167</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;">0.2598</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;">0.3235</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;">0.2843</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;">0.3284</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;">0.2990</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;">0.2108</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.14" style="padding-top:1pt;padding-bottom:1pt;">0.3186</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.5.4.15" style="padding-top:1pt;padding-bottom:1pt;">0.3039</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">Llama-2-7B (Base)</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.6.5.2.1" style="background-color:#DCE6F1;">0.3382</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.6.5.3.1" style="background-color:#DCE6F1;">0.1765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.6.5.4.1" style="background-color:#DCE6F1;">0.2598</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.6.5.5.1" style="background-color:#DCE6F1;">0.1569</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.6.5.6.1" style="background-color:#DCE6F1;">0.1765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;">0.4020</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;">0.2353</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;">0.2647</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;">0.1716</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;">0.3088</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;">0.2402</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;">0.2402</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.14" style="padding-top:1pt;padding-bottom:1pt;">0.3333</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.6.5.15" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Bi-Alt</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.7.6.2.1" style="background-color:#DCE6F1;">0.7500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.7.6.3.1" style="background-color:#DCE6F1;">0.6324</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.7.6.4.1" style="background-color:#DCE6F1;">0.7010</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.7.6.5.1" style="background-color:#DCE6F1;">0.6569</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.7.6.6.1" style="background-color:#DCE6F1;">0.7059</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.7157</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.6127</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">0.6814</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;">0.5637</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;">0.6225</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;">0.6471</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;">0.5686</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.14" style="padding-top:1pt;padding-bottom:1pt;">0.7647</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7.6.15" style="padding-top:1pt;padding-bottom:1pt;">0.5882</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Bi+Code-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.8.7.2.1" style="background-color:#DCE6F1;">0.7157</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.8.7.3.1" style="background-color:#DCE6F1;">0.6324</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.8.7.4.1" style="background-color:#DCE6F1;">0.6765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.8.7.5.1" style="background-color:#DCE6F1;">0.6275</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.8.7.6.1" style="background-color:#DCE6F1;">0.7010</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.7353</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">0.6422</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">0.6520</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">0.5049</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">0.6814</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">0.5931</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;">0.5441</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.14" style="padding-top:1pt;padding-bottom:1pt;">0.6912</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.7.15" style="padding-top:1pt;padding-bottom:1pt;">0.5686</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Mono-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.9.8.2.1" style="background-color:#DCE6F1;">0.6176</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.9.8.3.1" style="background-color:#DCE6F1;">0.4510</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.9.8.4.1" style="background-color:#DCE6F1;">0.4902</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.9.8.5.1" style="background-color:#DCE6F1;">0.5196</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.9.8.6.1" style="background-color:#DCE6F1;">0.4167</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">0.6176</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">0.3971</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">0.4265</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">0.4069</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">0.5343</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">0.3775</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.13" style="padding-top:1pt;padding-bottom:1pt;">0.4020</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.14" style="padding-top:1pt;padding-bottom:1pt;">0.6422</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.8.15" style="padding-top:1pt;padding-bottom:1pt;">0.4461</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Mono+Code-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.10.9.2.1" style="background-color:#DCE6F1;">0.6814</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.10.9.3.1" style="background-color:#DCE6F1;">0.6324</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.10.9.4.1" style="background-color:#DCE6F1;">0.6814</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.10.9.5.1" style="background-color:#DCE6F1;">0.6765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.10.9.6.1" style="background-color:#DCE6F1;">0.5686</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">0.7843</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">0.5245</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">0.6127</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">0.5147</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">0.6961</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">0.5637</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.13" style="padding-top:1pt;padding-bottom:1pt;">0.4804</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.14" style="padding-top:1pt;padding-bottom:1pt;">0.7255</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.9.15" style="padding-top:1pt;padding-bottom:1pt;">0.5784</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Llama-3.1-8B (Base)</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.11.10.2.1" style="background-color:#DCE6F1;">0.7549</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.11.10.3.1" style="background-color:#DCE6F1;">0.6667</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.11.10.4.1" style="background-color:#DCE6F1;">0.6912</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.11.10.5.1" style="background-color:#DCE6F1;">0.5441</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.11.10.6.1" style="background-color:#DCE6F1;">0.6422</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.7843</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">0.7010</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">0.7255</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">0.5392</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">0.7500</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">0.6765</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.13" style="padding-top:1pt;padding-bottom:1pt;">0.6520</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.14" style="padding-top:1pt;padding-bottom:1pt;">0.7647</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.11.10.15" style="padding-top:1pt;padding-bottom:1pt;">0.4755</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Bi-Alt</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.12.11.2.1" style="background-color:#DCE6F1;">0.2206</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.12.11.3.1" style="background-color:#DCE6F1;">0.1814</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.12.11.4.1" style="background-color:#DCE6F1;">0.2500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.12.11.5.1" style="background-color:#DCE6F1;">0.1618</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.12.11.6.1" style="background-color:#DCE6F1;">0.1373</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">0.2500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.1127</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">0.2353</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">0.1422</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.13" style="padding-top:1pt;padding-bottom:1pt;">0.0931</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.14" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.11.15" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Bi+Code-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.13.12.2.1" style="background-color:#DCE6F1;">0.3578</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.13.12.3.1" style="background-color:#DCE6F1;">0.2206</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.13.12.4.1" style="background-color:#DCE6F1;">0.2843</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.13.12.5.1" style="background-color:#DCE6F1;">0.2451</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.13.12.6.1" style="background-color:#DCE6F1;">0.2108</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.7" style="padding-top:1pt;padding-bottom:1pt;">0.3137</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.8" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.9" style="padding-top:1pt;padding-bottom:1pt;">0.2451</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.10" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.11" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.12" style="padding-top:1pt;padding-bottom:1pt;">0.2402</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.13" style="padding-top:1pt;padding-bottom:1pt;">0.1716</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.14" style="padding-top:1pt;padding-bottom:1pt;">0.3186</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.12.15" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Mono-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.14.13.2.1" style="background-color:#DCE6F1;">0.2157</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.14.13.3.1" style="background-color:#DCE6F1;">0.1814</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.14.13.4.1" style="background-color:#DCE6F1;">0.2353</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.14.13.5.1" style="background-color:#DCE6F1;">0.1814</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.14.13.6.1" style="background-color:#DCE6F1;">0.1716</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.7" style="padding-top:1pt;padding-bottom:1pt;">0.2843</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.8" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.9" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.10" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.11" style="padding-top:1pt;padding-bottom:1pt;">0.2402</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.12" style="padding-top:1pt;padding-bottom:1pt;">0.2157</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.13" style="padding-top:1pt;padding-bottom:1pt;">0.1716</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.14" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.13.15" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Mono+Code-Alt</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.15.14.2.1" style="background-color:#DCE6F1;">0.2157</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.15.14.3.1" style="background-color:#DCE6F1;">0.1814</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.15.14.4.1" style="background-color:#DCE6F1;">0.2990</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.15.14.5.1" style="background-color:#DCE6F1;">0.2500</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.15.14.6.1" style="background-color:#DCE6F1;">0.1912</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.7" style="padding-top:1pt;padding-bottom:1pt;">0.2941</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.8" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.9" style="padding-top:1pt;padding-bottom:1pt;">0.2353</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.10" style="padding-top:1pt;padding-bottom:1pt;">0.2108</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.11" style="padding-top:1pt;padding-bottom:1pt;">0.1863</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.12" style="padding-top:1pt;padding-bottom:1pt;">0.2255</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.13" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.14" style="padding-top:1pt;padding-bottom:1pt;">0.2451</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.14.15" style="padding-top:1pt;padding-bottom:1pt;">0.2500</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T4.1.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">Viking-7B (Base)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.16.15.2.1" style="background-color:#DCE6F1;">0.3725</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.16.15.3.1" style="background-color:#DCE6F1;">0.1814</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.16.15.4.1" style="background-color:#DCE6F1;">0.2206</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.16.15.5.1" style="background-color:#DCE6F1;">0.1471</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T4.1.1.16.15.6.1" style="background-color:#DCE6F1;">0.1520</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.7" style="padding-top:1pt;padding-bottom:1pt;">0.3235</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.8" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.9" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.10" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.11" style="padding-top:1pt;padding-bottom:1pt;">0.3186</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.12" style="padding-top:1pt;padding-bottom:1pt;">0.2500</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.13" style="padding-top:1pt;padding-bottom:1pt;">0.1961</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.14" style="padding-top:1pt;padding-bottom:1pt;">0.4118</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.1.1.16.15.15" style="padding-top:1pt;padding-bottom:1pt;">0.1520</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the SIB-200 classification task accuracy for languages categorized as 'altruistic' in the study.  Results are shown for various models (Llama-3.1-8B, Llama-2-7B, and Viking-7B) using different continual pretraining (CPT) strategies (monolingual, bilingual, and those incorporating code).  The table highlights the performance on both the training languages (shaded background) and related languages to assess the impact of CPT. This helps to understand the cross-lingual transfer effects of various CPT configurations.
> <details>
> <summary>read the caption</summary>
> Table 4: SIB-200 task accuracy for Altruistic languages across all models. Training language columns have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T5.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.2.1" style="background-color:#DCE6F1;">deu_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.3.1" style="background-color:#DCE6F1;">bel_Cyrl</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.4.1" style="background-color:#DCE6F1;">mri_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.5.1" style="background-color:#DCE6F1;">kir_Cyrl</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.6.1" style="background-color:#DCE6F1;">nya_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.7.1">eng_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.8.1">fij_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.9.1">bak_Cyrl</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.10.1">dan_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.11.1">rus_Cyrl</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.12.1">smo_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.13.1">bem_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.14.1">kaz_Cyrl</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.15.1">sna_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.16.1">ukr_Cyrl</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1.17" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.17.1">nld_Latn</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Bi-Sel</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.2.1.2.1" style="background-color:#DCE6F1;">0.3088</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.2.1.3.1" style="background-color:#DCE6F1;">0.3186</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.2.1.4.1" style="background-color:#DCE6F1;">0.2500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.2.1.5.1" style="background-color:#DCE6F1;">0.1814</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.2.1.6.1" style="background-color:#DCE6F1;">0.2353</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;">0.4167</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;">0.3578</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;">0.3578</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.13" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.14" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.15" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.16" style="padding-top:1pt;padding-bottom:1pt;">0.3235</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.17" style="padding-top:1pt;padding-bottom:1pt;">0.4216</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Bi+Code-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.3.2.2.1" style="background-color:#DCE6F1;">0.4265</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.3.2.3.1" style="background-color:#DCE6F1;">0.3922</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.3.2.4.1" style="background-color:#DCE6F1;">0.3186</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.3.2.5.1" style="background-color:#DCE6F1;">0.2843</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.3.2.6.1" style="background-color:#DCE6F1;">0.3333</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;">0.5098</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;">0.2500</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;">0.4461</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;">0.4069</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.13" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.14" style="padding-top:1pt;padding-bottom:1pt;">0.2794</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.15" style="padding-top:1pt;padding-bottom:1pt;">0.2402</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.16" style="padding-top:1pt;padding-bottom:1pt;">0.3922</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.17" style="padding-top:1pt;padding-bottom:1pt;">0.4412</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Mono-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.4.3.2.1" style="background-color:#DCE6F1;">0.4412</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.4.3.3.1" style="background-color:#DCE6F1;">0.4020</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.4.3.4.1" style="background-color:#DCE6F1;">0.2647</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.4.3.5.1" style="background-color:#DCE6F1;">0.3775</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.4.3.6.1" style="background-color:#DCE6F1;">0.2794</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;">0.4461</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;">0.2549</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;">0.4167</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;">0.3725</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.14" style="padding-top:1pt;padding-bottom:1pt;">0.2696</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.15" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.16" style="padding-top:1pt;padding-bottom:1pt;">0.4069</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.3.17" style="padding-top:1pt;padding-bottom:1pt;">0.4216</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Mono+Code-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.5.4.2.1" style="background-color:#DCE6F1;">0.4412</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.5.4.3.1" style="background-color:#DCE6F1;">0.3775</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.5.4.4.1" style="background-color:#DCE6F1;">0.3186</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.5.4.5.1" style="background-color:#DCE6F1;">0.3186</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.5.4.6.1" style="background-color:#DCE6F1;">0.2990</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;">0.4412</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;">0.2843</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;">0.3873</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;">0.3676</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;">0.2059</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;">0.2451</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.14" style="padding-top:1pt;padding-bottom:1pt;">0.2696</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.15" style="padding-top:1pt;padding-bottom:1pt;">0.2255</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.16" style="padding-top:1pt;padding-bottom:1pt;">0.3627</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.4.17" style="padding-top:1pt;padding-bottom:1pt;">0.4216</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">Llama-2-7B (Base)</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.6.5.2.1" style="background-color:#DCE6F1;">0.3922</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.6.5.3.1" style="background-color:#DCE6F1;">0.2157</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.6.5.4.1" style="background-color:#DCE6F1;">0.1912</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.6.5.5.1" style="background-color:#DCE6F1;">0.1765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.6.5.6.1" style="background-color:#DCE6F1;">0.1765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;">0.4020</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;">0.3627</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;">0.2892</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;">0.1716</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.14" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.15" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.16" style="padding-top:1pt;padding-bottom:1pt;">0.2941</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.5.17" style="padding-top:1pt;padding-bottom:1pt;">0.3775</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Bi-Sel</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.7.6.2.1" style="background-color:#DCE6F1;">0.7206</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.7.6.3.1" style="background-color:#DCE6F1;">0.6078</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.7.6.4.1" style="background-color:#DCE6F1;">0.5784</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.7.6.5.1" style="background-color:#DCE6F1;">0.5735</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.7.6.6.1" style="background-color:#DCE6F1;">0.6078</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.7451</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.3824</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">0.5294</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;">0.6569</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;">0.6373</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;">0.3627</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;">0.3627</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.14" style="padding-top:1pt;padding-bottom:1pt;">0.5343</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.15" style="padding-top:1pt;padding-bottom:1pt;">0.3627</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.16" style="padding-top:1pt;padding-bottom:1pt;">0.6225</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.6.17" style="padding-top:1pt;padding-bottom:1pt;">0.6373</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Bi+Code-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.8.7.2.1" style="background-color:#DCE6F1;">0.6863</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.8.7.3.1" style="background-color:#DCE6F1;">0.6127</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.8.7.4.1" style="background-color:#DCE6F1;">0.6078</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.8.7.5.1" style="background-color:#DCE6F1;">0.6127</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.8.7.6.1" style="background-color:#DCE6F1;">0.6373</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.6716</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">0.4118</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">0.5294</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">0.6618</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">0.6569</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">0.3824</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;">0.4461</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.14" style="padding-top:1pt;padding-bottom:1pt;">0.6029</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.15" style="padding-top:1pt;padding-bottom:1pt;">0.3676</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.16" style="padding-top:1pt;padding-bottom:1pt;">0.6029</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.7.17" style="padding-top:1pt;padding-bottom:1pt;">0.6716</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Mono-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.9.8.2.1" style="background-color:#DCE6F1;">0.7059</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.9.8.3.1" style="background-color:#DCE6F1;">0.5833</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.9.8.4.1" style="background-color:#DCE6F1;">0.5980</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.9.8.5.1" style="background-color:#DCE6F1;">0.5833</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.9.8.6.1" style="background-color:#DCE6F1;">0.5784</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">0.6520</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">0.3971</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">0.5147</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">0.6618</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">0.5637</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">0.4363</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.13" style="padding-top:1pt;padding-bottom:1pt;">0.4167</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.14" style="padding-top:1pt;padding-bottom:1pt;">0.5686</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.15" style="padding-top:1pt;padding-bottom:1pt;">0.3775</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.16" style="padding-top:1pt;padding-bottom:1pt;">0.5196</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.8.17" style="padding-top:1pt;padding-bottom:1pt;">0.6127</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Mono+Code-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.10.9.2.1" style="background-color:#DCE6F1;">0.7451</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.10.9.3.1" style="background-color:#DCE6F1;">0.6863</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.10.9.4.1" style="background-color:#DCE6F1;">0.6471</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.10.9.5.1" style="background-color:#DCE6F1;">0.7108</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.10.9.6.1" style="background-color:#DCE6F1;">0.6471</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">0.7108</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">0.3775</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">0.5784</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">0.7402</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">0.7010</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">0.3627</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.13" style="padding-top:1pt;padding-bottom:1pt;">0.4069</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.14" style="padding-top:1pt;padding-bottom:1pt;">0.6618</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.15" style="padding-top:1pt;padding-bottom:1pt;">0.3725</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.16" style="padding-top:1pt;padding-bottom:1pt;">0.7304</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.10.9.17" style="padding-top:1pt;padding-bottom:1pt;">0.7059</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Llama-3.1-8B (Base)</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.11.10.2.1" style="background-color:#DCE6F1;">0.7598</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.11.10.3.1" style="background-color:#DCE6F1;">0.7206</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.11.10.4.1" style="background-color:#DCE6F1;">0.6029</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.11.10.5.1" style="background-color:#DCE6F1;">0.7157</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.11.10.6.1" style="background-color:#DCE6F1;">0.5539</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.7843</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">0.4559</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">0.6961</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">0.7451</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">0.7157</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">0.5931</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.13" style="padding-top:1pt;padding-bottom:1pt;">0.4559</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.14" style="padding-top:1pt;padding-bottom:1pt;">0.7304</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.15" style="padding-top:1pt;padding-bottom:1pt;">0.4706</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.16" style="padding-top:1pt;padding-bottom:1pt;">0.7402</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.11.10.17" style="padding-top:1pt;padding-bottom:1pt;">0.7206</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Bi-Sel</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.12.11.2.1" style="background-color:#DCE6F1;">0.3088</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.12.11.3.1" style="background-color:#DCE6F1;">0.2745</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.12.11.4.1" style="background-color:#DCE6F1;">0.2255</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.12.11.5.1" style="background-color:#DCE6F1;">0.2549</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.12.11.6.1" style="background-color:#DCE6F1;">0.3333</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">0.3578</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.2255</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">0.2157</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">0.2990</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">0.2598</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">0.1961</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.13" style="padding-top:1pt;padding-bottom:1pt;">0.2108</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.14" style="padding-top:1pt;padding-bottom:1pt;">0.2157</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.15" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.16" style="padding-top:1pt;padding-bottom:1pt;">0.2451</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.11.17" style="padding-top:1pt;padding-bottom:1pt;">0.2990</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Bi+Code-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.13.12.2.1" style="background-color:#DCE6F1;">0.3039</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.13.12.3.1" style="background-color:#DCE6F1;">0.3529</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.13.12.4.1" style="background-color:#DCE6F1;">0.2206</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.13.12.5.1" style="background-color:#DCE6F1;">0.2451</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.13.12.6.1" style="background-color:#DCE6F1;">0.2549</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.7" style="padding-top:1pt;padding-bottom:1pt;">0.3676</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.8" style="padding-top:1pt;padding-bottom:1pt;">0.1716</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.9" style="padding-top:1pt;padding-bottom:1pt;">0.1961</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.10" style="padding-top:1pt;padding-bottom:1pt;">0.3039</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.11" style="padding-top:1pt;padding-bottom:1pt;">0.3039</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.12" style="padding-top:1pt;padding-bottom:1pt;">0.1716</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.13" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.14" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.15" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.16" style="padding-top:1pt;padding-bottom:1pt;">0.2549</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.12.17" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Mono-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.14.13.2.1" style="background-color:#DCE6F1;">0.2549</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.14.13.3.1" style="background-color:#DCE6F1;">0.3627</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.14.13.4.1" style="background-color:#DCE6F1;">0.1814</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.14.13.5.1" style="background-color:#DCE6F1;">0.2059</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.14.13.6.1" style="background-color:#DCE6F1;">0.2353</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.7" style="padding-top:1pt;padding-bottom:1pt;">0.2745</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.8" style="padding-top:1pt;padding-bottom:1pt;">0.1520</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.9" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.10" style="padding-top:1pt;padding-bottom:1pt;">0.2108</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.11" style="padding-top:1pt;padding-bottom:1pt;">0.2059</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.12" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.13" style="padding-top:1pt;padding-bottom:1pt;">0.1520</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.14" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.15" style="padding-top:1pt;padding-bottom:1pt;">0.1520</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.16" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.13.17" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Mono+Code-Sel</th>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.15.14.2.1" style="background-color:#DCE6F1;">0.3431</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.15.14.3.1" style="background-color:#DCE6F1;">0.3676</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.15.14.4.1" style="background-color:#DCE6F1;">0.3578</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.15.14.5.1" style="background-color:#DCE6F1;">0.3578</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.15.14.6.1" style="background-color:#DCE6F1;">0.3775</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.7" style="padding-top:1pt;padding-bottom:1pt;">0.3922</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.8" style="padding-top:1pt;padding-bottom:1pt;">0.2402</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.9" style="padding-top:1pt;padding-bottom:1pt;">0.2500</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.10" style="padding-top:1pt;padding-bottom:1pt;">0.3873</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.11" style="padding-top:1pt;padding-bottom:1pt;">0.3382</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.12" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.13" style="padding-top:1pt;padding-bottom:1pt;">0.2598</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.14" style="padding-top:1pt;padding-bottom:1pt;">0.2745</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.15" style="padding-top:1pt;padding-bottom:1pt;">0.2451</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.16" style="padding-top:1pt;padding-bottom:1pt;">0.3186</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.14.17" style="padding-top:1pt;padding-bottom:1pt;">0.3186</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T5.1.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">Viking-7B (Base)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.16.15.2.1" style="background-color:#DCE6F1;">0.3480</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.16.15.3.1" style="background-color:#DCE6F1;">0.2843</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.16.15.4.1" style="background-color:#DCE6F1;">0.1667</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.16.15.5.1" style="background-color:#DCE6F1;">0.2059</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.6" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T5.1.1.16.15.6.1" style="background-color:#DCE6F1;">0.1667</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.7" style="padding-top:1pt;padding-bottom:1pt;">0.3235</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.8" style="padding-top:1pt;padding-bottom:1pt;">0.1961</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.9" style="padding-top:1pt;padding-bottom:1pt;">0.2451</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.10" style="padding-top:1pt;padding-bottom:1pt;">0.3627</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.11" style="padding-top:1pt;padding-bottom:1pt;">0.3529</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.12" style="padding-top:1pt;padding-bottom:1pt;">0.1961</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.13" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.14" style="padding-top:1pt;padding-bottom:1pt;">0.2108</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.15" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.16" style="padding-top:1pt;padding-bottom:1pt;">0.3529</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.1.1.16.15.17" style="padding-top:1pt;padding-bottom:1pt;">0.4020</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the SIB-200 classification accuracy scores achieved by different multilingual language models.  The models were trained using various continual pretraining (CPT) strategies (monolingual, bilingual, and bilingual with code) on a set of 'selfish' languages (as categorized by Yuan et al., 2024). The accuracy scores are shown for both the training languages (shaded background) and related languages that were not used during training. This allows for an assessment of how well the CPT strategies generalized to unseen languages within the 'selfish' category.  Results are broken down by base model (Llama-3.1-8B, Llama-2-7B, Viking-7B) and CPT configuration. 
> <details>
> <summary>read the caption</summary>
> Table 5: SIB-200 task accuracy for Selfish languages across all models. Training language columns have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T6.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.2.1" style="background-color:#DCE6F1;">tha_Thai</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.3.1" style="background-color:#DCE6F1;">yor_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.4.1" style="background-color:#DCE6F1;">sna_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.5.1" style="background-color:#DCE6F1;">wol_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.6.1">nya_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.7.1">zul_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.8.1">shn_Mymr</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.9.1">bam_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.10.1">hau_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.11.1">ibo_Latn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.12.1">lao_Laoo</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Bi-Stag</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.2.1.2.1" style="background-color:#DCE6F1;">0.2598</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.2.1.3.1" style="background-color:#DCE6F1;">0.1765</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.2.1.4.1" style="background-color:#DCE6F1;">0.1961</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.2.1.5.1" style="background-color:#DCE6F1;">0.1618</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;">0.1471</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;">0.1471</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;">0.1471</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;">0.1520</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;">0.1520</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Bi+Code-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.3.2.2.1" style="background-color:#DCE6F1;">0.3186</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.3.2.3.1" style="background-color:#DCE6F1;">0.2108</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.3.2.4.1" style="background-color:#DCE6F1;">0.2255</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.3.2.5.1" style="background-color:#DCE6F1;">0.1912</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;">0.1863</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Mono-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.4.3.2.1" style="background-color:#DCE6F1;">0.3137</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.4.3.3.1" style="background-color:#DCE6F1;">0.2402</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.4.3.4.1" style="background-color:#DCE6F1;">0.2549</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.4.3.5.1" style="background-color:#DCE6F1;">0.1765</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;">0.1471</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;">0.1618</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;">0.1520</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;">0.1373</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">L2-Mono+Code-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.5.4.2.1" style="background-color:#DCE6F1;">0.3480</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.5.4.3.1" style="background-color:#DCE6F1;">0.3039</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.5.4.4.1" style="background-color:#DCE6F1;">0.3529</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.5.4.5.1" style="background-color:#DCE6F1;">0.2255</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;">0.2255</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;">0.1961</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;">0.1961</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">Llama-2-7B (Base)</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.6.5.2.1" style="background-color:#DCE6F1;">0.2353</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.6.5.3.1" style="background-color:#DCE6F1;">0.1569</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.6.5.4.1" style="background-color:#DCE6F1;">0.1618</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.6.5.5.1" style="background-color:#DCE6F1;">0.1961</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;">0.1863</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Bi-Stag</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.7.6.2.1" style="background-color:#DCE6F1;">0.7157</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.7.6.3.1" style="background-color:#DCE6F1;">0.6078</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.7.6.4.1" style="background-color:#DCE6F1;">0.6667</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.7.6.5.1" style="background-color:#DCE6F1;">0.5637</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.5441</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.3971</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.3382</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">0.3431</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;">0.3382</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;">0.4020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;">0.3775</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Bi+Code-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.8.7.2.1" style="background-color:#DCE6F1;">0.7696</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.8.7.3.1" style="background-color:#DCE6F1;">0.6471</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.8.7.4.1" style="background-color:#DCE6F1;">0.6520</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.8.7.5.1" style="background-color:#DCE6F1;">0.6422</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">0.5490</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.4069</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">0.3284</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">0.3529</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">0.4118</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">0.4118</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">0.2941</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Mono-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.9.8.2.1" style="background-color:#DCE6F1;">0.5784</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.9.8.3.1" style="background-color:#DCE6F1;">0.4510</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.9.8.4.1" style="background-color:#DCE6F1;">0.5539</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.9.8.5.1" style="background-color:#DCE6F1;">0.4706</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">0.3431</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">0.3480</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">0.3137</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">0.3039</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">0.3235</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">0.2696</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">0.2598</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">L3-Mono+Code-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.10.9.2.1" style="background-color:#DCE6F1;">0.5637</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.10.9.3.1" style="background-color:#DCE6F1;">0.5588</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.10.9.4.1" style="background-color:#DCE6F1;">0.5882</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.10.9.5.1" style="background-color:#DCE6F1;">0.5147</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">0.4167</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">0.3922</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">0.2990</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">0.3333</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">0.3480</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">0.3676</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">0.2549</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Llama-3.1-8B (Base)</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.11.10.2.1" style="background-color:#DCE6F1;">0.7451</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.11.10.3.1" style="background-color:#DCE6F1;">0.5245</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.11.10.4.1" style="background-color:#DCE6F1;">0.4706</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.11.10.5.1" style="background-color:#DCE6F1;">0.4853</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;">0.5539</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.5441</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">0.4657</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">0.3971</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">0.6716</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">0.6520</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">0.5441</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Bi-Stag</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.12.11.2.1" style="background-color:#DCE6F1;">0.4412</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.12.11.3.1" style="background-color:#DCE6F1;">0.4118</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.12.11.4.1" style="background-color:#DCE6F1;">0.4461</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.12.11.5.1" style="background-color:#DCE6F1;">0.4216</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.6" style="padding-top:1pt;padding-bottom:1pt;">0.2647</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">0.2647</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">0.2255</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">0.2059</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Bi+Code-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.13.12.2.1" style="background-color:#DCE6F1;">0.2647</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.13.12.3.1" style="background-color:#DCE6F1;">0.2745</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.13.12.4.1" style="background-color:#DCE6F1;">0.2745</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.13.12.5.1" style="background-color:#DCE6F1;">0.2598</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.6" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.7" style="padding-top:1pt;padding-bottom:1pt;">0.1471</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.8" style="padding-top:1pt;padding-bottom:1pt;">0.1225</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.9" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.10" style="padding-top:1pt;padding-bottom:1pt;">0.1422</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.11" style="padding-top:1pt;padding-bottom:1pt;">0.1176</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.12.12" style="padding-top:1pt;padding-bottom:1pt;">0.1078</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Mono-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.14.13.2.1" style="background-color:#DCE6F1;">0.2549</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.14.13.3.1" style="background-color:#DCE6F1;">0.2255</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.14.13.4.1" style="background-color:#DCE6F1;">0.2598</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.14.13.5.1" style="background-color:#DCE6F1;">0.2255</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.6" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.7" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.8" style="padding-top:1pt;padding-bottom:1pt;">0.1422</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.9" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.10" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.11" style="padding-top:1pt;padding-bottom:1pt;">0.1765</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.13.12" style="padding-top:1pt;padding-bottom:1pt;">0.0980</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">V7-Mono+Code-Stag</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.15.14.2.1" style="background-color:#DCE6F1;">0.3480</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.15.14.3.1" style="background-color:#DCE6F1;">0.2794</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.15.14.4.1" style="background-color:#DCE6F1;">0.3284</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.15.14.5.1" style="background-color:#DCE6F1;">0.2157</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.6" style="padding-top:1pt;padding-bottom:1pt;">0.2206</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.7" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.8" style="padding-top:1pt;padding-bottom:1pt;">0.2059</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.9" style="padding-top:1pt;padding-bottom:1pt;">0.2304</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.10" style="padding-top:1pt;padding-bottom:1pt;">0.1814</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.11" style="padding-top:1pt;padding-bottom:1pt;">0.1912</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.14.12" style="padding-top:1pt;padding-bottom:1pt;">0.1863</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T6.1.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">Viking-7B (Base)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.2" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.16.15.2.1" style="background-color:#DCE6F1;">0.3725</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.3" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.16.15.3.1" style="background-color:#DCE6F1;">0.2108</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.4" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.16.15.4.1" style="background-color:#DCE6F1;">0.1618</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.5" style="background-color:#DCE6F1;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T6.1.1.16.15.5.1" style="background-color:#DCE6F1;">0.2206</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.6" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.7" style="padding-top:1pt;padding-bottom:1pt;">0.1471</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.8" style="padding-top:1pt;padding-bottom:1pt;">0.1863</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.9" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.10" style="padding-top:1pt;padding-bottom:1pt;">0.1569</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.11" style="padding-top:1pt;padding-bottom:1pt;">0.1667</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.16.15.12" style="padding-top:1pt;padding-bottom:1pt;">0.2010</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy scores achieved by different multilingual language models on the SIB-200 benchmark.  The models were trained using various continual pretraining (CPT) strategies on languages categorized as 'stagnant' according to their cross-lingual transfer properties. The table breaks down the accuracy for each language within this stagnant group, across different models and CPT configurations.  The accuracy for the languages used during training (i.e., the languages the model was continually pretrained on) are highlighted with a shaded background to distinguish them from the evaluation set.
> <details>
> <summary>read the caption</summary>
> Table 6: SIB-200 task accuracy for Stagnant languages across all models. Training language columns have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T7.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1.1">Language Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.2.1">L2-Bi-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.3.1">L2-Bi+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.4.1">L2-Mono-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.5.1">L2-Mono+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.6.1">Llama-2-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.7.1">L3-Bi-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.8.1">L3-Bi+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.9.1">L3-Mono-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.10.1">L3-Mono+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.11.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.12.1">V7-Bi-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.13.1">V7-Bi+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.14.1">V7-Mono-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.15.1">V7-Mono+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T7.1.1.1.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.16.1">Viking-7B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.2.1" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.1.1" style="background-color:#DCE6F1;">eng_Latn-zho_Hans</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.2.1" style="background-color:#DCE6F1;">9.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.3.1" style="background-color:#DCE6F1;">4.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.4.1" style="background-color:#DCE6F1;">10.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.5.1" style="background-color:#DCE6F1;">10.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.6.1" style="background-color:#DCE6F1;">10.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.7.1" style="background-color:#DCE6F1;">2.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.8.1" style="background-color:#DCE6F1;">5.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.9.1" style="background-color:#DCE6F1;">17.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.10.1" style="background-color:#DCE6F1;">17.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.11.1" style="background-color:#DCE6F1;">24.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.12.1" style="background-color:#DCE6F1;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.13.1" style="background-color:#DCE6F1;">2.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.14.1" style="background-color:#DCE6F1;">1.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.15.1" style="background-color:#DCE6F1;">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.2.1.16.1" style="background-color:#DCE6F1;">9.72</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3.2" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.1.1" style="background-color:#DCE6F1;">eng_Latn-ceb_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.2.1" style="background-color:#DCE6F1;">19.37</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.3.1" style="background-color:#DCE6F1;">3.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.4.1" style="background-color:#DCE6F1;">19.46</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.5.1" style="background-color:#DCE6F1;">19.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.6.1" style="background-color:#DCE6F1;">5.35</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.7.1" style="background-color:#DCE6F1;">0.75</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.8.1" style="background-color:#DCE6F1;">1.51</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.9.1" style="background-color:#DCE6F1;">20.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.10.1" style="background-color:#DCE6F1;">20.37</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.11.1" style="background-color:#DCE6F1;">22.72</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.12.1" style="background-color:#DCE6F1;">1.95</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.13.1" style="background-color:#DCE6F1;">3.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.14.1" style="background-color:#DCE6F1;">6.27</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.15.1" style="background-color:#DCE6F1;">6.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.3.2.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.3.2.16.1" style="background-color:#DCE6F1;">3.66</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4.3" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.1.1" style="background-color:#DCE6F1;">eng_Latn-mar_Deva</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.2.1" style="background-color:#DCE6F1;">8.44</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.3.1" style="background-color:#DCE6F1;">14.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.4.1" style="background-color:#DCE6F1;">8.93</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.5.1" style="background-color:#DCE6F1;">8.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.6.1" style="background-color:#DCE6F1;">1.39</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.7.1" style="background-color:#DCE6F1;">4.22</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.8.1" style="background-color:#DCE6F1;">5.45</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.9.1" style="background-color:#DCE6F1;">9.20</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.10.1" style="background-color:#DCE6F1;">8.33</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.11.1" style="background-color:#DCE6F1;">6.83</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.12.1" style="background-color:#DCE6F1;">6.21</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.13.1" style="background-color:#DCE6F1;">7.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.14.1" style="background-color:#DCE6F1;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.15.1" style="background-color:#DCE6F1;">1.05</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.4.3.16.1" style="background-color:#DCE6F1;">0.21</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5.4" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.1.1" style="background-color:#DCE6F1;">eng_Latn-zul_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.2.1" style="background-color:#DCE6F1;">6.56</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.3.1" style="background-color:#DCE6F1;">8.31</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.4.1" style="background-color:#DCE6F1;">6.54</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.5.1" style="background-color:#DCE6F1;">6.54</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.6.1" style="background-color:#DCE6F1;">1.64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.7.1" style="background-color:#DCE6F1;">6.22</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.8.1" style="background-color:#DCE6F1;">6.77</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.9.1" style="background-color:#DCE6F1;">9.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.10.1" style="background-color:#DCE6F1;">9.70</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.11.1" style="background-color:#DCE6F1;">26.17</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.12.1" style="background-color:#DCE6F1;">12.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.13.1" style="background-color:#DCE6F1;">12.62</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.14.1" style="background-color:#DCE6F1;">1.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.15.1" style="background-color:#DCE6F1;">2.07</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.5.4.16.1" style="background-color:#DCE6F1;">0.94</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6.5" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.1.1" style="background-color:#DCE6F1;">eng_Latn-khm_Khmr</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.2.1" style="background-color:#DCE6F1;">3.03</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.3.1" style="background-color:#DCE6F1;">2.84</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.4.1" style="background-color:#DCE6F1;">3.27</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.5.1" style="background-color:#DCE6F1;">3.38</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.6.1" style="background-color:#DCE6F1;">0.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.7.1" style="background-color:#DCE6F1;">4.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.8.1" style="background-color:#DCE6F1;">5.02</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.9.1" style="background-color:#DCE6F1;">8.46</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.10.1" style="background-color:#DCE6F1;">8.30</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.11.1" style="background-color:#DCE6F1;">1.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.12.1" style="background-color:#DCE6F1;">4.13</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.13.1" style="background-color:#DCE6F1;">4.19</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.14.1" style="background-color:#DCE6F1;">1.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.15.1" style="background-color:#DCE6F1;">1.54</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T7.1.1.6.5.16.1" style="background-color:#DCE6F1;">0.07</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-npi_Deva</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">2.01</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">1.41</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">1.49</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">1.53</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.66</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.93</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">1.35</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;">1.29</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;">6.13</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;">0.80</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;">0.99</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.14" style="padding-top:1pt;padding-bottom:1pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.15" style="padding-top:1pt;padding-bottom:1pt;">0.08</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.6.16" style="padding-top:1pt;padding-bottom:1pt;">0.28</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-vie_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">6.15</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">6.83</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">6.47</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">15.44</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">13.23</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">16.16</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">26.63</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;">1.03</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.14" style="padding-top:1pt;padding-bottom:1pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.15" style="padding-top:1pt;padding-bottom:1pt;">0.29</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7.16" style="padding-top:1pt;padding-bottom:1pt;">5.30</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-tgl_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">5.81</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">1.62</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">5.79</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">6.25</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">7.32</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">1.23</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">1.43</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">5.67</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">5.67</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">15.14</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">0.98</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.13" style="padding-top:1pt;padding-bottom:1pt;">1.83</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.14" style="padding-top:1pt;padding-bottom:1pt;">1.32</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.15" style="padding-top:1pt;padding-bottom:1pt;">2.06</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.8.16" style="padding-top:1pt;padding-bottom:1pt;">4.23</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-ssw_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">3.34</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">3.72</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">3.27</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;">3.61</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">1.54</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">2.78</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">2.72</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">3.93</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">4.08</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">3.04</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">4.29</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.13" style="padding-top:1pt;padding-bottom:1pt;">4.41</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.14" style="padding-top:1pt;padding-bottom:1pt;">0.90</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.15" style="padding-top:1pt;padding-bottom:1pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.10.9.16" style="padding-top:1pt;padding-bottom:1pt;">0.82</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-xho_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">3.86</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">3.71</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">3.44</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;">4.02</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;">1.91</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">2.83</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">2.96</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">4.39</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">4.64</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">3.55</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">5.63</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.13" style="padding-top:1pt;padding-bottom:1pt;">5.44</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.14" style="padding-top:1pt;padding-bottom:1pt;">1.14</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.15" style="padding-top:1pt;padding-bottom:1pt;">1.01</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.10.16" style="padding-top:1pt;padding-bottom:1pt;">1.13</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-yue_Hant</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">6.81</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">1.39</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">8.51</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.5" style="padding-top:1pt;padding-bottom:1pt;">7.59</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.6" style="padding-top:1pt;padding-bottom:1pt;">8.15</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">1.26</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">2.80</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">14.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">14.54</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">4.63</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">0.37</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.13" style="padding-top:1pt;padding-bottom:1pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.14" style="padding-top:1pt;padding-bottom:1pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.15" style="padding-top:1pt;padding-bottom:1pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.11.16" style="padding-top:1pt;padding-bottom:1pt;">6.50</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-ilo_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">3.55</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">1.30</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">3.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.5" style="padding-top:1pt;padding-bottom:1pt;">3.65</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.6" style="padding-top:1pt;padding-bottom:1pt;">2.97</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.7" style="padding-top:1pt;padding-bottom:1pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.8" style="padding-top:1pt;padding-bottom:1pt;">1.01</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.9" style="padding-top:1pt;padding-bottom:1pt;">3.48</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.10" style="padding-top:1pt;padding-bottom:1pt;">3.48</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.11" style="padding-top:1pt;padding-bottom:1pt;">25.82</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.12" style="padding-top:1pt;padding-bottom:1pt;">0.82</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.13" style="padding-top:1pt;padding-bottom:1pt;">1.34</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.14" style="padding-top:1pt;padding-bottom:1pt;">0.77</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.15" style="padding-top:1pt;padding-bottom:1pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.12.16" style="padding-top:1pt;padding-bottom:1pt;">2.34</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T7.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-hin_Deva</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">2.09</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">3.14</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">1.96</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.5" style="padding-top:1pt;padding-bottom:1pt;">1.79</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.6" style="padding-top:1pt;padding-bottom:1pt;">5.27</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.7" style="padding-top:1pt;padding-bottom:1pt;">1.05</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.8" style="padding-top:1pt;padding-bottom:1pt;">1.42</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.9" style="padding-top:1pt;padding-bottom:1pt;">3.17</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.10" style="padding-top:1pt;padding-bottom:1pt;">2.80</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.11" style="padding-top:1pt;padding-bottom:1pt;">24.30</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.12" style="padding-top:1pt;padding-bottom:1pt;">1.44</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.13" style="padding-top:1pt;padding-bottom:1pt;">1.48</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.14" style="padding-top:1pt;padding-bottom:1pt;">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.15" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.14.13.16" style="padding-top:1pt;padding-bottom:1pt;">1.29</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the BLEU scores obtained from the FLORES-200 benchmark for English-to-X translation tasks, where X represents various languages categorized as 'altruistic' based on their cross-lingual transfer properties.  The scores are broken down by language pair and model, allowing for a comparison of performance across different models and resource levels.  Rows corresponding to the training languages used in the Continual Pretraining experiments are shaded for easy identification.
> <details>
> <summary>read the caption</summary>
> Table 7: FLORES-200 BLEU scores for Altruistic languages (Eng-X). Training language rows have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T8.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.1.1">Language Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.2.1">L2-Bi-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.3.1">L2-Bi+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.4.1">L2-Mono-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.5.1">L2-Mono+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.6.1">Llama-2-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.7.1">L3-Bi-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.8.1">L3-Bi+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.9.1">L3-Mono-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.10.1">L3-Mono+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.11.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.12.1">V7-Bi-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.13.1">V7-Bi+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.14.1">V7-Mono-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.15.1">V7-Mono+Code-Alt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T8.1.1.1.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.16.1">Viking-7B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.1.2.1" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.1.1" style="background-color:#DCE6F1;">zho_Hans-eng_Latn</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.2.1" style="background-color:#DCE6F1;">18.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.3.1" style="background-color:#DCE6F1;">13.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.4.1" style="background-color:#DCE6F1;">16.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.5.1" style="background-color:#DCE6F1;">17.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.6.1" style="background-color:#DCE6F1;">18.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.7.1" style="background-color:#DCE6F1;">6.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.8.1" style="background-color:#DCE6F1;">9.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.9.1" style="background-color:#DCE6F1;">18.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.10.1" style="background-color:#DCE6F1;">19.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.11.1" style="background-color:#DCE6F1;">22.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.12.1" style="background-color:#DCE6F1;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.13.1" style="background-color:#DCE6F1;">4.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.14.1" style="background-color:#DCE6F1;">2.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.15.1" style="background-color:#DCE6F1;">3.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.2.1.16.1" style="background-color:#DCE6F1;">16.06</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.3.2" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.1.1" style="background-color:#DCE6F1;">ceb_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.2.1" style="background-color:#DCE6F1;">29.85</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.3.1" style="background-color:#DCE6F1;">11.16</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.4.1" style="background-color:#DCE6F1;">29.36</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.5.1" style="background-color:#DCE6F1;">29.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.6.1" style="background-color:#DCE6F1;">9.58</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.7.1" style="background-color:#DCE6F1;">8.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.8.1" style="background-color:#DCE6F1;">10.83</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.9.1" style="background-color:#DCE6F1;">29.98</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.10.1" style="background-color:#DCE6F1;">28.10</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.11.1" style="background-color:#DCE6F1;">22.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.12.1" style="background-color:#DCE6F1;">8.52</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.13.1" style="background-color:#DCE6F1;">14.92</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.14.1" style="background-color:#DCE6F1;">6.74</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.15.1" style="background-color:#DCE6F1;">9.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.3.2.16.1" style="background-color:#DCE6F1;">6.03</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.4.3" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.1.1" style="background-color:#DCE6F1;">mar_Deva-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.2.1" style="background-color:#DCE6F1;">17.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.3.1" style="background-color:#DCE6F1;">5.35</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.4.1" style="background-color:#DCE6F1;">16.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.5.1" style="background-color:#DCE6F1;">17.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.6.1" style="background-color:#DCE6F1;">4.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.7.1" style="background-color:#DCE6F1;">1.79</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.8.1" style="background-color:#DCE6F1;">3.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.9.1" style="background-color:#DCE6F1;">19.52</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.10.1" style="background-color:#DCE6F1;">19.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.11.1" style="background-color:#DCE6F1;">22.38</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.12.1" style="background-color:#DCE6F1;">0.14</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.13.1" style="background-color:#DCE6F1;">0.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.14.1" style="background-color:#DCE6F1;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.15.1" style="background-color:#DCE6F1;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.4.3.16.1" style="background-color:#DCE6F1;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.5.4" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.1.1" style="background-color:#DCE6F1;">zul_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.2.1" style="background-color:#DCE6F1;">19.04</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.3.1" style="background-color:#DCE6F1;">8.26</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.4.1" style="background-color:#DCE6F1;">18.28</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.5.1" style="background-color:#DCE6F1;">18.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.6.1" style="background-color:#DCE6F1;">3.05</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.7.1" style="background-color:#DCE6F1;">2.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.8.1" style="background-color:#DCE6F1;">4.39</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.9.1" style="background-color:#DCE6F1;">20.72</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.10.1" style="background-color:#DCE6F1;">20.77</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.11.1" style="background-color:#DCE6F1;">8.73</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.12.1" style="background-color:#DCE6F1;">0.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.13.1" style="background-color:#DCE6F1;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.14.1" style="background-color:#DCE6F1;">3.10</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.15.1" style="background-color:#DCE6F1;">4.07</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.5.4.16.1" style="background-color:#DCE6F1;">2.33</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.6.5" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.1.1" style="background-color:#DCE6F1;">vie_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.2.1" style="background-color:#DCE6F1;">20.99</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.3.1" style="background-color:#DCE6F1;">10.85</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.4.1" style="background-color:#DCE6F1;">19.78</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.5.1" style="background-color:#DCE6F1;">19.97</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.6.1" style="background-color:#DCE6F1;">20.61</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.7.1" style="background-color:#DCE6F1;">8.57</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.8.1" style="background-color:#DCE6F1;">9.11</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.9.1" style="background-color:#DCE6F1;">21.97</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.10.1" style="background-color:#DCE6F1;">22.70</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.11.1" style="background-color:#DCE6F1;">26.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.12.1" style="background-color:#DCE6F1;">0.08</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.13.1" style="background-color:#DCE6F1;">0.19</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.14.1" style="background-color:#DCE6F1;">0.13</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.15.1" style="background-color:#DCE6F1;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.5.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.6.5.16.1" style="background-color:#DCE6F1;">10.32</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.7.6" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.1.1" style="background-color:#DCE6F1;">khm_Khmr-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.2.1" style="background-color:#DCE6F1;">13.49</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.3.1" style="background-color:#DCE6F1;">1.64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.4.1" style="background-color:#DCE6F1;">12.77</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.5.1" style="background-color:#DCE6F1;">13.10</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.6.1" style="background-color:#DCE6F1;">2.06</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.7.1" style="background-color:#DCE6F1;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.8.1" style="background-color:#DCE6F1;">2.41</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.9.1" style="background-color:#DCE6F1;">16.49</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.10.1" style="background-color:#DCE6F1;">17.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.11.1" style="background-color:#DCE6F1;">15.51</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.12.1" style="background-color:#DCE6F1;">0.22</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.13.1" style="background-color:#DCE6F1;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.14.1" style="background-color:#DCE6F1;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.15.1" style="background-color:#DCE6F1;">1.01</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.6.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T8.1.1.7.6.16.1" style="background-color:#DCE6F1;">0.81</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">ssw_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">8.47</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">3.82</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">8.04</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">8.80</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">3.16</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">1.87</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">1.94</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">8.78</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">8.88</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">6.29</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">0.13</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.14" style="padding-top:1pt;padding-bottom:1pt;">1.31</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.15" style="padding-top:1pt;padding-bottom:1pt;">1.99</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.7.16" style="padding-top:1pt;padding-bottom:1pt;">2.18</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">npi_Deva-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">3.25</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">2.70</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">3.29</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">4.69</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">1.18</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">1.70</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">6.40</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">7.10</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">22.81</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">0.04</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.13" style="padding-top:1pt;padding-bottom:1pt;">0.20</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.14" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.15" style="padding-top:1pt;padding-bottom:1pt;">0.26</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.9.8.16" style="padding-top:1pt;padding-bottom:1pt;">0.75</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">yue_Hant-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">17.55</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">8.00</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">16.45</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;">17.63</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">18.66</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">4.52</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">6.94</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">18.94</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">19.45</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">23.26</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.13" style="padding-top:1pt;padding-bottom:1pt;">2.63</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.14" style="padding-top:1pt;padding-bottom:1pt;">1.78</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.15" style="padding-top:1pt;padding-bottom:1pt;">2.91</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.10.9.16" style="padding-top:1pt;padding-bottom:1pt;">14.27</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">tgl_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">13.83</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">7.81</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">13.95</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;">14.52</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;">16.29</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">4.67</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">6.07</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">15.10</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">14.91</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">28.92</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">0.38</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.13" style="padding-top:1pt;padding-bottom:1pt;">2.33</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.14" style="padding-top:1pt;padding-bottom:1pt;">1.57</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.15" style="padding-top:1pt;padding-bottom:1pt;">2.15</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.11.10.16" style="padding-top:1pt;padding-bottom:1pt;">6.74</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">hin_Deva-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">6.62</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">2.13</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">6.77</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.5" style="padding-top:1pt;padding-bottom:1pt;">7.72</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.6" style="padding-top:1pt;padding-bottom:1pt;">12.10</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">2.33</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">3.80</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">16.14</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">16.38</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">27.20</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.13" style="padding-top:1pt;padding-bottom:1pt;">0.11</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.14" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.15" style="padding-top:1pt;padding-bottom:1pt;">0.21</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.12.11.16" style="padding-top:1pt;padding-bottom:1pt;">1.04</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">ilo_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">5.54</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">2.24</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">5.34</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.5" style="padding-top:1pt;padding-bottom:1pt;">5.28</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.6" style="padding-top:1pt;padding-bottom:1pt;">5.67</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.7" style="padding-top:1pt;padding-bottom:1pt;">1.23</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.8" style="padding-top:1pt;padding-bottom:1pt;">1.77</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.9" style="padding-top:1pt;padding-bottom:1pt;">6.06</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.10" style="padding-top:1pt;padding-bottom:1pt;">5.16</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.11" style="padding-top:1pt;padding-bottom:1pt;">15.19</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.12" style="padding-top:1pt;padding-bottom:1pt;">0.19</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.13" style="padding-top:1pt;padding-bottom:1pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.14" style="padding-top:1pt;padding-bottom:1pt;">0.60</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.15" style="padding-top:1pt;padding-bottom:1pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.13.12.16" style="padding-top:1pt;padding-bottom:1pt;">4.23</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T8.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">xho_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">9.56</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">4.88</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">9.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.5" style="padding-top:1pt;padding-bottom:1pt;">9.70</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.6" style="padding-top:1pt;padding-bottom:1pt;">3.35</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.7" style="padding-top:1pt;padding-bottom:1pt;">1.98</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.8" style="padding-top:1pt;padding-bottom:1pt;">2.83</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.9" style="padding-top:1pt;padding-bottom:1pt;">8.88</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.10" style="padding-top:1pt;padding-bottom:1pt;">9.75</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.11" style="padding-top:1pt;padding-bottom:1pt;">8.83</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.12" style="padding-top:1pt;padding-bottom:1pt;">0.17</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.13" style="padding-top:1pt;padding-bottom:1pt;">0.87</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.14" style="padding-top:1pt;padding-bottom:1pt;">1.65</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.15" style="padding-top:1pt;padding-bottom:1pt;">2.62</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.1.1.14.13.16" style="padding-top:1pt;padding-bottom:1pt;">2.62</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the BLEU scores obtained from the FLORES-200 benchmark for altruistic languages when translating from those languages to English.  The rows representing the training languages for the continual pretraining experiments are shaded for easy identification.  BLEU scores are a common metric for evaluating the quality of machine translation, measuring the overlap of n-grams between machine-generated translations and reference translations.
> <details>
> <summary>read the caption</summary>
> Table 8: FLORES-200 BLEU scores for Altruistic languages (X-Eng). Training language rows have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T9.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T9.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T9.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.1.1">Language Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.2.1">L2-Bi+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.3.1">L2-Bi-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.4.1">L2-Mono+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.5.1">L2-Mono-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.6.1">Llama-2-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.7.1">L3-Bi+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.8.1">L3-Bi-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.9.1">L3-Mono+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.10.1">L3-Mono-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.11.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.12.1">V7-Bi+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.13.1">V7-Bi-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.14.1">V7-Mono+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.15.1">V7-Mono-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.1.1.1.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.16.1">Viking-7B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.1.1.2.1" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T9.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.1.1" style="background-color:#DCE6F1;">eng_Latn-deu_Latn</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.2.1" style="background-color:#DCE6F1;">18.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.3.1" style="background-color:#DCE6F1;">8.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.4.1" style="background-color:#DCE6F1;">23.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.5.1" style="background-color:#DCE6F1;">22.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.6.1" style="background-color:#DCE6F1;">23.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.7.1" style="background-color:#DCE6F1;">11.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.8.1" style="background-color:#DCE6F1;">8.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.9.1" style="background-color:#DCE6F1;">22.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.10.1" style="background-color:#DCE6F1;">24.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.11.1" style="background-color:#DCE6F1;">27.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.12.1" style="background-color:#DCE6F1;">16.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.13.1" style="background-color:#DCE6F1;">11.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.14.1" style="background-color:#DCE6F1;">12.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.15.1" style="background-color:#DCE6F1;">6.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.2.1.16.1" style="background-color:#DCE6F1;">20.45</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.3.2" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.1.1" style="background-color:#DCE6F1;">eng_Latn-bel_Cyrl</span></th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.2.1" style="background-color:#DCE6F1;">2.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.3.1" style="background-color:#DCE6F1;">1.65</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.4.1" style="background-color:#DCE6F1;">12.27</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.5.1" style="background-color:#DCE6F1;">11.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.6.1" style="background-color:#DCE6F1;">1.95</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.7.1" style="background-color:#DCE6F1;">3.26</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.8.1" style="background-color:#DCE6F1;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.9.1" style="background-color:#DCE6F1;">11.98</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.10.1" style="background-color:#DCE6F1;">14.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.11.1" style="background-color:#DCE6F1;">11.23</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.12.1" style="background-color:#DCE6F1;">0.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.13.1" style="background-color:#DCE6F1;">0.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.14.1" style="background-color:#DCE6F1;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.15.1" style="background-color:#DCE6F1;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.3.2.16.1" style="background-color:#DCE6F1;">0.98</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.4.3" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.1.1" style="background-color:#DCE6F1;">eng_Latn-mri_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.2.1" style="background-color:#DCE6F1;">7.13</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.3.1" style="background-color:#DCE6F1;">3.60</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.4.1" style="background-color:#DCE6F1;">4.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.5.1" style="background-color:#DCE6F1;">3.94</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.6.1" style="background-color:#DCE6F1;">2.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.7.1" style="background-color:#DCE6F1;">3.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.8.1" style="background-color:#DCE6F1;">2.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.9.1" style="background-color:#DCE6F1;">5.07</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.10.1" style="background-color:#DCE6F1;">6.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.11.1" style="background-color:#DCE6F1;">4.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.12.1" style="background-color:#DCE6F1;">6.43</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.13.1" style="background-color:#DCE6F1;">4.92</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.14.1" style="background-color:#DCE6F1;">1.05</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.15.1" style="background-color:#DCE6F1;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.4.3.16.1" style="background-color:#DCE6F1;">0.83</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.5.4" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.1.1" style="background-color:#DCE6F1;">eng_Latn-kir_Cyrl</span></th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.2.1" style="background-color:#DCE6F1;">4.60</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.3.1" style="background-color:#DCE6F1;">2.73</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.4.1" style="background-color:#DCE6F1;">4.01</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.5.1" style="background-color:#DCE6F1;">3.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.6.1" style="background-color:#DCE6F1;">1.71</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.7.1" style="background-color:#DCE6F1;">3.60</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.8.1" style="background-color:#DCE6F1;">2.72</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.9.1" style="background-color:#DCE6F1;">6.51</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.10.1" style="background-color:#DCE6F1;">7.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.11.1" style="background-color:#DCE6F1;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.12.1" style="background-color:#DCE6F1;">3.18</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.13.1" style="background-color:#DCE6F1;">1.53</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.14.1" style="background-color:#DCE6F1;">1.26</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.15.1" style="background-color:#DCE6F1;">0.39</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.5.4.16.1" style="background-color:#DCE6F1;">0.78</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.6.5" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.1.1" style="background-color:#DCE6F1;">eng_Latn-nya_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.2.1" style="background-color:#DCE6F1;">4.40</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.3.1" style="background-color:#DCE6F1;">3.34</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.4.1" style="background-color:#DCE6F1;">6.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.5.1" style="background-color:#DCE6F1;">6.30</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.6.1" style="background-color:#DCE6F1;">1.65</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.7.1" style="background-color:#DCE6F1;">4.65</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.8.1" style="background-color:#DCE6F1;">3.22</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.9.1" style="background-color:#DCE6F1;">6.44</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.10.1" style="background-color:#DCE6F1;">8.06</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.11.1" style="background-color:#DCE6F1;">2.98</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.12.1" style="background-color:#DCE6F1;">8.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.13.1" style="background-color:#DCE6F1;">7.84</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.14.1" style="background-color:#DCE6F1;">1.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.15.1" style="background-color:#DCE6F1;">0.51</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.6.5.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T9.1.1.6.5.16.1" style="background-color:#DCE6F1;">0.86</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-sna_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.92</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">1.11</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">1.03</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">1.73</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.92</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.65</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">1.45</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;">1.56</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;">3.67</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;">1.24</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;">1.15</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.14" style="padding-top:1pt;padding-bottom:1pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.15" style="padding-top:1pt;padding-bottom:1pt;">0.11</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.7.6.16" style="padding-top:1pt;padding-bottom:1pt;">0.94</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-bak_Cyrl</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">1.29</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">1.48</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">1.31</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">1.67</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">1.09</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">2.57</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">2.55</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">7.11</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">0.98</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;">0.49</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.14" style="padding-top:1pt;padding-bottom:1pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.15" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.8.7.16" style="padding-top:1pt;padding-bottom:1pt;">0.60</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-nld_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">9.08</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">2.24</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">15.86</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">13.76</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">18.00</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">3.37</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">1.07</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">14.38</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">11.25</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">20.31</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">1.87</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.13" style="padding-top:1pt;padding-bottom:1pt;">0.99</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.14" style="padding-top:1pt;padding-bottom:1pt;">1.87</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.15" style="padding-top:1pt;padding-bottom:1pt;">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.9.8.16" style="padding-top:1pt;padding-bottom:1pt;">16.44</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-kaz_Cyrl</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">1.36</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">1.70</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;">1.52</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">1.54</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">1.18</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">2.90</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">3.02</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">6.93</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">1.08</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.13" style="padding-top:1pt;padding-bottom:1pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.14" style="padding-top:1pt;padding-bottom:1pt;">0.65</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.15" style="padding-top:1pt;padding-bottom:1pt;">0.36</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.10.9.16" style="padding-top:1pt;padding-bottom:1pt;">0.79</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-fij_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">1.05</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">0.91</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;">0.65</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;">1.75</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.90</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">0.96</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">3.32</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">1.31</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.13" style="padding-top:1pt;padding-bottom:1pt;">0.89</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.14" style="padding-top:1pt;padding-bottom:1pt;">0.23</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.15" style="padding-top:1pt;padding-bottom:1pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.11.10.16" style="padding-top:1pt;padding-bottom:1pt;">1.32</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-smo_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">1.66</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">1.04</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.5" style="padding-top:1pt;padding-bottom:1pt;">0.66</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.6" style="padding-top:1pt;padding-bottom:1pt;">1.76</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">1.01</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">0.90</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">11.34</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">1.16</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.13" style="padding-top:1pt;padding-bottom:1pt;">0.98</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.14" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.15" style="padding-top:1pt;padding-bottom:1pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.12.11.16" style="padding-top:1pt;padding-bottom:1pt;">1.09</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-rus_Cyrl</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">2.13</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.76</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">13.87</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.5" style="padding-top:1pt;padding-bottom:1pt;">12.88</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.6" style="padding-top:1pt;padding-bottom:1pt;">21.99</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.7" style="padding-top:1pt;padding-bottom:1pt;">2.56</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.8" style="padding-top:1pt;padding-bottom:1pt;">1.01</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.9" style="padding-top:1pt;padding-bottom:1pt;">16.71</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.10" style="padding-top:1pt;padding-bottom:1pt;">16.58</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.11" style="padding-top:1pt;padding-bottom:1pt;">4.01</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.12" style="padding-top:1pt;padding-bottom:1pt;">1.24</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.13" style="padding-top:1pt;padding-bottom:1pt;">0.38</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.14" style="padding-top:1pt;padding-bottom:1pt;">1.94</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.15" style="padding-top:1pt;padding-bottom:1pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.13.12.16" style="padding-top:1pt;padding-bottom:1pt;">11.78</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-dan_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">7.51</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">2.55</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">18.75</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.5" style="padding-top:1pt;padding-bottom:1pt;">16.45</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.6" style="padding-top:1pt;padding-bottom:1pt;">21.74</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.7" style="padding-top:1pt;padding-bottom:1pt;">4.31</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.8" style="padding-top:1pt;padding-bottom:1pt;">1.24</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.9" style="padding-top:1pt;padding-bottom:1pt;">16.89</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.10" style="padding-top:1pt;padding-bottom:1pt;">15.19</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.11" style="padding-top:1pt;padding-bottom:1pt;">1.37</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.12" style="padding-top:1pt;padding-bottom:1pt;">3.05</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.13" style="padding-top:1pt;padding-bottom:1pt;">0.80</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.14" style="padding-top:1pt;padding-bottom:1pt;">2.85</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.15" style="padding-top:1pt;padding-bottom:1pt;">1.05</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.14.13.16" style="padding-top:1pt;padding-bottom:1pt;">38.18</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-ukr_Cyrl</th>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.4" style="padding-top:1pt;padding-bottom:1pt;">2.23</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.5" style="padding-top:1pt;padding-bottom:1pt;">2.19</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.6" style="padding-top:1pt;padding-bottom:1pt;">18.59</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.7" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.8" style="padding-top:1pt;padding-bottom:1pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.9" style="padding-top:1pt;padding-bottom:1pt;">3.45</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.10" style="padding-top:1pt;padding-bottom:1pt;">3.23</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.11" style="padding-top:1pt;padding-bottom:1pt;">7.14</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.12" style="padding-top:1pt;padding-bottom:1pt;">0.41</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.13" style="padding-top:1pt;padding-bottom:1pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.14" style="padding-top:1pt;padding-bottom:1pt;">0.40</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.15" style="padding-top:1pt;padding-bottom:1pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.15.14.16" style="padding-top:1pt;padding-bottom:1pt;">8.87</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T9.1.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-bem_Latn</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">1.48</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.91</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.4" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.5" style="padding-top:1pt;padding-bottom:1pt;">0.86</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.6" style="padding-top:1pt;padding-bottom:1pt;">1.34</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.7" style="padding-top:1pt;padding-bottom:1pt;">1.25</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.8" style="padding-top:1pt;padding-bottom:1pt;">0.95</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.9" style="padding-top:1pt;padding-bottom:1pt;">1.31</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.10" style="padding-top:1pt;padding-bottom:1pt;">1.54</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.11" style="padding-top:1pt;padding-bottom:1pt;">14.91</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.12" style="padding-top:1pt;padding-bottom:1pt;">1.13</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.13" style="padding-top:1pt;padding-bottom:1pt;">1.26</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.14" style="padding-top:1pt;padding-bottom:1pt;">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.15" style="padding-top:1pt;padding-bottom:1pt;">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.16.15.16" style="padding-top:1pt;padding-bottom:1pt;">0.48</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the BLEU scores obtained from the FLORES-200 benchmark for translations from English to various Selfish languages.  The models were evaluated on their ability to translate from English (Eng) to different Selfish languages (X).  Rows representing the training languages are shaded for easy identification. The BLEU score, a metric for evaluating machine translation quality, is provided for each language pair and model configuration.
> <details>
> <summary>read the caption</summary>
> Table 9: FLORES-200 BLEU scores for Selfish languages (Eng-X). Training language rows have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T10.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T10.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T10.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.1.1">Language Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.2.1">L2-Bi+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.3.1">L2-Bi-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.4.1">L2-Mono+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.5.1">L2-Mono-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.6.1">Llama-2-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.7.1">L3-Bi+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.8.1">L3-Bi-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.9.1">L3-Mono+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.10.1">L3-Mono-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.11.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.12.1">V7-Bi+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.13.1">V7-Bi-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.14.1">V7-Mono+Code-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.15.1">V7-Mono-Sel</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.1.1.1.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.16.1">Viking-7B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.1.1.2.1" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T10.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.1.1" style="background-color:#DCE6F1;">deu_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.2.1" style="background-color:#DCE6F1;">29.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.3.1" style="background-color:#DCE6F1;">9.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.4.1" style="background-color:#DCE6F1;">32.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.5.1" style="background-color:#DCE6F1;">32.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.6.1" style="background-color:#DCE6F1;">27.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.7.1" style="background-color:#DCE6F1;">12.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.8.1" style="background-color:#DCE6F1;">8.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.9.1" style="background-color:#DCE6F1;">31.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.10.1" style="background-color:#DCE6F1;">32.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.11.1" style="background-color:#DCE6F1;">33.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.12.1" style="background-color:#DCE6F1;">10.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.13.1" style="background-color:#DCE6F1;">2.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.14.1" style="background-color:#DCE6F1;">20.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.15.1" style="background-color:#DCE6F1;">15.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.1.2.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.2.1.16.1" style="background-color:#DCE6F1;">31.29</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.3.2" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.1.1" style="background-color:#DCE6F1;">bel_Cyrl-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.2.1" style="background-color:#DCE6F1;">15.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.3.1" style="background-color:#DCE6F1;">5.61</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.4.1" style="background-color:#DCE6F1;">18.95</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.5.1" style="background-color:#DCE6F1;">18.44</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.6.1" style="background-color:#DCE6F1;">8.78</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.7.1" style="background-color:#DCE6F1;">7.54</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.8.1" style="background-color:#DCE6F1;">5.36</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.9.1" style="background-color:#DCE6F1;">16.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.10.1" style="background-color:#DCE6F1;">18.10</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.11.1" style="background-color:#DCE6F1;">19.36</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.12.1" style="background-color:#DCE6F1;">5.43</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.13.1" style="background-color:#DCE6F1;">4.89</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.14.1" style="background-color:#DCE6F1;">7.73</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.15.1" style="background-color:#DCE6F1;">7.02</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.3.2.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.3.2.16.1" style="background-color:#DCE6F1;">3.49</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.4.3" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.1.1" style="background-color:#DCE6F1;">mri_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.2.1" style="background-color:#DCE6F1;">2.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.3.1" style="background-color:#DCE6F1;">0.72</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.4.1" style="background-color:#DCE6F1;">10.66</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.5.1" style="background-color:#DCE6F1;">10.40</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.6.1" style="background-color:#DCE6F1;">4.21</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.7.1" style="background-color:#DCE6F1;">1.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.8.1" style="background-color:#DCE6F1;">0.08</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.9.1" style="background-color:#DCE6F1;">10.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.10.1" style="background-color:#DCE6F1;">12.22</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.11.1" style="background-color:#DCE6F1;">11.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.12.1" style="background-color:#DCE6F1;">0.33</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.13.1" style="background-color:#DCE6F1;">0.06</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.14.1" style="background-color:#DCE6F1;">3.20</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.15.1" style="background-color:#DCE6F1;">1.71</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.4.3.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.4.3.16.1" style="background-color:#DCE6F1;">1.86</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.5.4" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.1.1" style="background-color:#DCE6F1;">kir_Cyrl-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.2.1" style="background-color:#DCE6F1;">4.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.3.1" style="background-color:#DCE6F1;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.4.1" style="background-color:#DCE6F1;">10.43</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.5.1" style="background-color:#DCE6F1;">10.52</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.6.1" style="background-color:#DCE6F1;">3.29</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.7.1" style="background-color:#DCE6F1;">2.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.8.1" style="background-color:#DCE6F1;">0.19</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.9.1" style="background-color:#DCE6F1;">13.02</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.10.1" style="background-color:#DCE6F1;">13.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.11.1" style="background-color:#DCE6F1;">14.98</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.12.1" style="background-color:#DCE6F1;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.13.1" style="background-color:#DCE6F1;">0.23</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.14.1" style="background-color:#DCE6F1;">2.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.15.1" style="background-color:#DCE6F1;">2.32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.5.4.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.5.4.16.1" style="background-color:#DCE6F1;">1.93</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.6.5" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.1.1" style="background-color:#DCE6F1;">nya_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.2.1" style="background-color:#DCE6F1;">1.31</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.3.1" style="background-color:#DCE6F1;">0.20</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.4.1" style="background-color:#DCE6F1;">15.84</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.5.1" style="background-color:#DCE6F1;">16.07</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.6.1" style="background-color:#DCE6F1;">2.66</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.7.1" style="background-color:#DCE6F1;">2.11</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.8.1" style="background-color:#DCE6F1;">0.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.9.1" style="background-color:#DCE6F1;">15.48</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.10.1" style="background-color:#DCE6F1;">17.25</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.11.1" style="background-color:#DCE6F1;">6.54</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.12.1" style="background-color:#DCE6F1;">0.39</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.13.1" style="background-color:#DCE6F1;">0.10</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.14.1" style="background-color:#DCE6F1;">4.92</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.15.1" style="background-color:#DCE6F1;">3.03</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.6.5.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T10.1.1.6.5.16.1" style="background-color:#DCE6F1;">2.43</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">ukr_Cyrl-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">23.49</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">7.43</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">26.05</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">26.35</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">26.16</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">8.75</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">7.09</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">24.64</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;">25.77</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;">30.98</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;">2.54</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.14" style="padding-top:1pt;padding-bottom:1pt;">4.72</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.15" style="padding-top:1pt;padding-bottom:1pt;">4.09</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.7.6.16" style="padding-top:1pt;padding-bottom:1pt;">24.78</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">nld_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">21.81</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">6.73</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">24.14</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">24.52</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">20.21</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">7.64</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">4.94</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">21.27</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">22.88</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">24.35</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">1.47</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.14" style="padding-top:1pt;padding-bottom:1pt;">5.53</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.15" style="padding-top:1pt;padding-bottom:1pt;">3.37</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.8.7.16" style="padding-top:1pt;padding-bottom:1pt;">22.61</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">dan_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">31.12</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">10.03</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">34.53</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">34.89</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">29.78</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">10.41</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">6.87</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">30.69</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">31.68</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">35.30</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">12.17</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.13" style="padding-top:1pt;padding-bottom:1pt;">3.50</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.14" style="padding-top:1pt;padding-bottom:1pt;">24.14</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.15" style="padding-top:1pt;padding-bottom:1pt;">18.36</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.9.8.16" style="padding-top:1pt;padding-bottom:1pt;">39.68</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">rus_Cyrl-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">23.10</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">7.64</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">26.38</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;">26.13</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">23.66</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">9.04</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">7.11</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">23.96</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">25.05</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">27.08</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">5.98</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.13" style="padding-top:1pt;padding-bottom:1pt;">1.26</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.14" style="padding-top:1pt;padding-bottom:1pt;">9.05</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.15" style="padding-top:1pt;padding-bottom:1pt;">7.87</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.10.9.16" style="padding-top:1pt;padding-bottom:1pt;">23.83</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">smo_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.38</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">3.02</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;">3.29</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;">2.92</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">2.88</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">3.10</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">9.34</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">0.10</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.13" style="padding-top:1pt;padding-bottom:1pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.14" style="padding-top:1pt;padding-bottom:1pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.15" style="padding-top:1pt;padding-bottom:1pt;">0.43</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.11.10.16" style="padding-top:1pt;padding-bottom:1pt;">1.78</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">bak_Cyrl-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">1.55</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.53</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">3.66</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.5" style="padding-top:1pt;padding-bottom:1pt;">3.86</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.6" style="padding-top:1pt;padding-bottom:1pt;">4.07</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">1.38</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.11</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">7.26</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">6.97</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">18.59</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.13" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.14" style="padding-top:1pt;padding-bottom:1pt;">1.03</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.15" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.12.11.16" style="padding-top:1pt;padding-bottom:1pt;">1.69</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">fij_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">0.74</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.21</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">2.02</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.5" style="padding-top:1pt;padding-bottom:1pt;">1.94</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.6" style="padding-top:1pt;padding-bottom:1pt;">2.53</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.7" style="padding-top:1pt;padding-bottom:1pt;">0.38</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.8" style="padding-top:1pt;padding-bottom:1pt;">0.03</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.9" style="padding-top:1pt;padding-bottom:1pt;">2.20</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.10" style="padding-top:1pt;padding-bottom:1pt;">1.90</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.11" style="padding-top:1pt;padding-bottom:1pt;">4.52</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.12" style="padding-top:1pt;padding-bottom:1pt;">0.12</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.13" style="padding-top:1pt;padding-bottom:1pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.14" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.15" style="padding-top:1pt;padding-bottom:1pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.13.12.16" style="padding-top:1pt;padding-bottom:1pt;">2.07</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">kaz_Cyrl-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">1.87</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">4.61</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.5" style="padding-top:1pt;padding-bottom:1pt;">4.34</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.6" style="padding-top:1pt;padding-bottom:1pt;">3.64</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.7" style="padding-top:1pt;padding-bottom:1pt;">1.89</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.8" style="padding-top:1pt;padding-bottom:1pt;">0.19</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.9" style="padding-top:1pt;padding-bottom:1pt;">8.53</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.10" style="padding-top:1pt;padding-bottom:1pt;">9.46</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.11" style="padding-top:1pt;padding-bottom:1pt;">20.01</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.12" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.13" style="padding-top:1pt;padding-bottom:1pt;">0.16</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.14" style="padding-top:1pt;padding-bottom:1pt;">1.44</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.15" style="padding-top:1pt;padding-bottom:1pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.14.13.16" style="padding-top:1pt;padding-bottom:1pt;">2.24</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">sna_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.32</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.4" style="padding-top:1pt;padding-bottom:1pt;">3.77</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.5" style="padding-top:1pt;padding-bottom:1pt;">3.40</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.6" style="padding-top:1pt;padding-bottom:1pt;">2.90</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.7" style="padding-top:1pt;padding-bottom:1pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.8" style="padding-top:1pt;padding-bottom:1pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.9" style="padding-top:1pt;padding-bottom:1pt;">3.27</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.10" style="padding-top:1pt;padding-bottom:1pt;">3.47</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.11" style="padding-top:1pt;padding-bottom:1pt;">7.09</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.12" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.13" style="padding-top:1pt;padding-bottom:1pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.14" style="padding-top:1pt;padding-bottom:1pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.15" style="padding-top:1pt;padding-bottom:1pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.15.14.16" style="padding-top:1pt;padding-bottom:1pt;">2.50</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T10.1.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">bem_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">0.81</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.26</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.4" style="padding-top:1pt;padding-bottom:1pt;">3.74</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.5" style="padding-top:1pt;padding-bottom:1pt;">3.36</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.6" style="padding-top:1pt;padding-bottom:1pt;">2.73</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.7" style="padding-top:1pt;padding-bottom:1pt;">0.60</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.8" style="padding-top:1pt;padding-bottom:1pt;">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.9" style="padding-top:1pt;padding-bottom:1pt;">3.04</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.10" style="padding-top:1pt;padding-bottom:1pt;">2.84</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.11" style="padding-top:1pt;padding-bottom:1pt;">4.89</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.12" style="padding-top:1pt;padding-bottom:1pt;">0.12</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.13" style="padding-top:1pt;padding-bottom:1pt;">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.14" style="padding-top:1pt;padding-bottom:1pt;">1.30</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.15" style="padding-top:1pt;padding-bottom:1pt;">0.93</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.1.1.16.15.16" style="padding-top:1pt;padding-bottom:1pt;">2.42</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the BLEU scores obtained from the FLORES-200 benchmark for a group of languages categorized as 'selfish' in the paper.  The benchmark evaluates machine translation performance.  Each row represents a language pair where the source language is one of those marked as 'selfish' and the target language is English. The scores are broken down by model and show the results of different continual pre-training (CPT) strategies. Training languages have a shaded background to help distinguish them from related languages that were not used in training.
> <details>
> <summary>read the caption</summary>
> Table 10: FLORES-200 BLEU scores for Selfish languages (X-Eng). Training language rows have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T11.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T11.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T11.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.1.1">Language Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.2.1">L2-Bi+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.3.1">L2-Bi-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.4.1">L2-Mono+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.5.1">L2-Mono-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.6.1">Llama-2-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.7.1">L3-Bi+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.8.1">L3-Bi-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.9.1">L3-Mono+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.10.1">L3-Mono-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.11.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.12.1">V7-Bi+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.13.1">V7-Bi-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.14.1">V7-Mono+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.15.1">V7-Mono-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T11.1.1.1.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.16.1">Viking-7B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T11.1.1.2.1" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T11.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.1.1" style="background-color:#DCE6F1;">eng_Latn-tha_Thai</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.2.1" style="background-color:#DCE6F1;">23.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.3.1" style="background-color:#DCE6F1;">21.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.4.1" style="background-color:#DCE6F1;">18.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.5.1" style="background-color:#DCE6F1;">16.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.6.1" style="background-color:#DCE6F1;">3.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.7.1" style="background-color:#DCE6F1;">10.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.8.1" style="background-color:#DCE6F1;">8.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.9.1" style="background-color:#DCE6F1;">20.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.10.1" style="background-color:#DCE6F1;">21.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.11.1" style="background-color:#DCE6F1;">19.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.12.1" style="background-color:#DCE6F1;">15.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.13.1" style="background-color:#DCE6F1;">16.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.14.1" style="background-color:#DCE6F1;">4.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.15.1" style="background-color:#DCE6F1;">3.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.2.1.16.1" style="background-color:#DCE6F1;">2.98</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.3.2" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.1.1" style="background-color:#DCE6F1;">eng_Latn-yor_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.2.1" style="background-color:#DCE6F1;">1.29</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.3.1" style="background-color:#DCE6F1;">1.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.4.1" style="background-color:#DCE6F1;">1.84</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.5.1" style="background-color:#DCE6F1;">1.96</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.6.1" style="background-color:#DCE6F1;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.7.1" style="background-color:#DCE6F1;">1.08</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.8.1" style="background-color:#DCE6F1;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.9.1" style="background-color:#DCE6F1;">2.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.10.1" style="background-color:#DCE6F1;">2.57</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.11.1" style="background-color:#DCE6F1;">2.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.12.1" style="background-color:#DCE6F1;">2.37</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.13.1" style="background-color:#DCE6F1;">2.29</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.14.1" style="background-color:#DCE6F1;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.15.1" style="background-color:#DCE6F1;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.3.2.16.1" style="background-color:#DCE6F1;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.4.3" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.1.1" style="background-color:#DCE6F1;">eng_Latn-sna_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.2.1" style="background-color:#DCE6F1;">4.07</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.3.1" style="background-color:#DCE6F1;">3.27</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.4.1" style="background-color:#DCE6F1;">5.07</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.5.1" style="background-color:#DCE6F1;">4.83</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.6.1" style="background-color:#DCE6F1;">1.73</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.7.1" style="background-color:#DCE6F1;">4.62</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.8.1" style="background-color:#DCE6F1;">3.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.9.1" style="background-color:#DCE6F1;">6.74</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.10.1" style="background-color:#DCE6F1;">7.21</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.11.1" style="background-color:#DCE6F1;">3.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.12.1" style="background-color:#DCE6F1;">8.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.13.1" style="background-color:#DCE6F1;">10.10</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.14.1" style="background-color:#DCE6F1;">1.37</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.15.1" style="background-color:#DCE6F1;">1.52</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.4.3.16.1" style="background-color:#DCE6F1;">0.94</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.5.4" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.1.1" style="background-color:#DCE6F1;">eng_Latn-wol_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.2.1" style="background-color:#DCE6F1;">0.29</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.3.1" style="background-color:#DCE6F1;">0.30</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.4.1" style="background-color:#DCE6F1;">1.05</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.5.1" style="background-color:#DCE6F1;">0.96</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.6.1" style="background-color:#DCE6F1;">0.97</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.7.1" style="background-color:#DCE6F1;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.8.1" style="background-color:#DCE6F1;">0.25</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.9.1" style="background-color:#DCE6F1;">1.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.10.1" style="background-color:#DCE6F1;">1.25</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.11.1" style="background-color:#DCE6F1;">2.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.12.1" style="background-color:#DCE6F1;">0.58</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.13.1" style="background-color:#DCE6F1;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.14.1" style="background-color:#DCE6F1;">0.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.15.1" style="background-color:#DCE6F1;">0.25</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T11.1.1.5.4.16.1" style="background-color:#DCE6F1;">0.85</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-hau_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.52</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;">0.66</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;">1.31</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;">1.40</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;">6.63</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;">0.26</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;">0.43</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.14" style="padding-top:1pt;padding-bottom:1pt;">0.21</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.15" style="padding-top:1pt;padding-bottom:1pt;">0.32</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5.16" style="padding-top:1pt;padding-bottom:1pt;">0.87</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-shn_Mymr</th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.20</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.11</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.26</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">0.12</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;">0.01</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;">0.28</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;">0.11</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;">0.26</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.14" style="padding-top:1pt;padding-bottom:1pt;">0.07</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.15" style="padding-top:1pt;padding-bottom:1pt;">0.08</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6.16" style="padding-top:1pt;padding-bottom:1pt;">0.03</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-nya_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">1.30</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">1.52</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">1.65</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.65</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">1.67</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">1.88</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">2.98</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.14" style="padding-top:1pt;padding-bottom:1pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.15" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7.16" style="padding-top:1pt;padding-bottom:1pt;">0.86</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-zul_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">1.53</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">1.54</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">1.64</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">1.89</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">2.13</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">26.17</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.13" style="padding-top:1pt;padding-bottom:1pt;">1.35</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.14" style="padding-top:1pt;padding-bottom:1pt;">0.45</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.15" style="padding-top:1pt;padding-bottom:1pt;">0.42</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8.16" style="padding-top:1pt;padding-bottom:1pt;">0.94</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-lao_Laoo</th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">0.25</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.32</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.16</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">0.13</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">3.68</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">0.22</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.13" style="padding-top:1pt;padding-bottom:1pt;">0.37</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.14" style="padding-top:1pt;padding-bottom:1pt;">0.19</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.15" style="padding-top:1pt;padding-bottom:1pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9.16" style="padding-top:1pt;padding-bottom:1pt;">0.09</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T11.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-ibo_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">0.77</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;">0.80</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">1.14</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">1.26</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">5.45</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.13" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.14" style="padding-top:1pt;padding-bottom:1pt;">0.12</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.15" style="padding-top:1pt;padding-bottom:1pt;">0.18</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.11.10.16" style="padding-top:1pt;padding-bottom:1pt;">0.59</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T11.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-bam_Latn</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">0.13</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.12</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.5" style="padding-top:1pt;padding-bottom:1pt;">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.6" style="padding-top:1pt;padding-bottom:1pt;">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.08</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">0.59</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">22.51</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">0.11</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.13" style="padding-top:1pt;padding-bottom:1pt;">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.14" style="padding-top:1pt;padding-bottom:1pt;">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.15" style="padding-top:1pt;padding-bottom:1pt;">0.17</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.12.11.16" style="padding-top:1pt;padding-bottom:1pt;">0.20</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the BLEU scores obtained from the FLORES-200 benchmark for translations from English to various other languages categorized as 'stagnant'.  The benchmark evaluates the quality of machine translation.  Each row represents a language pair (English to another language), and the columns show the BLEU scores achieved by different multilingual continual pretraining (CPT) configurations.  The training languages are highlighted with a shaded background.  The table helps analyze how effectively different CPT methods transfer to these specific languages, considering the 'stagnant' classification.
> <details>
> <summary>read the caption</summary>
> Table 11: FLORES-200 BLEU scores for Stagnant languages (Eng-X). Training language rows have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T12.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T12.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T12.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.1.1">Language Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.2.1">L2-Bi+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.3.1">L2-Bi-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.4.1">L2-Mono+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.5.1">L2-Mono-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.6.1">Llama-2-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.7.1">L3-Bi+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.8.1">L3-Bi-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.9.1">L3-Mono+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.10.1">L3-Mono-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.11.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.12.1">V7-Bi+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.13.1">V7-Bi-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.14.1">V7-Mono+Code-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.15.1">V7-Mono-Stag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T12.1.1.1.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.16.1">Viking-7B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T12.1.1.2.1" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T12.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.1.1" style="background-color:#DCE6F1;">tha_Thai-eng_Latn</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.2.1" style="background-color:#DCE6F1;">1.744</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.3.1" style="background-color:#DCE6F1;">0.491</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.4.1" style="background-color:#DCE6F1;">17.486</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.5.1" style="background-color:#DCE6F1;">16.364</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.6.1" style="background-color:#DCE6F1;">5.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.7.1" style="background-color:#DCE6F1;">1.944</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.8.1" style="background-color:#DCE6F1;">0.062</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.9.1" style="background-color:#DCE6F1;">21.167</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.10.1" style="background-color:#DCE6F1;">21.349</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.11.1" style="background-color:#DCE6F1;">22.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.12.1" style="background-color:#DCE6F1;">0.112</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.13.1" style="background-color:#DCE6F1;">0.061</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.14.1" style="background-color:#DCE6F1;">2.501</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.15.1" style="background-color:#DCE6F1;">3.396</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.2.1.16.1" style="background-color:#DCE6F1;">3.15</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.3.2" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.1.1" style="background-color:#DCE6F1;">yor_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.2.1" style="background-color:#DCE6F1;">0.181</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.3.1" style="background-color:#DCE6F1;">0.049</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.4.1" style="background-color:#DCE6F1;">8.495</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.5.1" style="background-color:#DCE6F1;">8.500</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.6.1" style="background-color:#DCE6F1;">2.08</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.7.1" style="background-color:#DCE6F1;">0.359</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.8.1" style="background-color:#DCE6F1;">0.026</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.9.1" style="background-color:#DCE6F1;">9.224</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.10.1" style="background-color:#DCE6F1;">10.366</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.11.1" style="background-color:#DCE6F1;">6.48</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.12.1" style="background-color:#DCE6F1;">0.065</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.13.1" style="background-color:#DCE6F1;">0.042</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.14.1" style="background-color:#DCE6F1;">1.761</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.15.1" style="background-color:#DCE6F1;">1.647</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.3.2.16.1" style="background-color:#DCE6F1;">1.54</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.4.3" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.1.1" style="background-color:#DCE6F1;">sna_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.2.1" style="background-color:#DCE6F1;">0.245</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.3.1" style="background-color:#DCE6F1;">0.016</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.4.1" style="background-color:#DCE6F1;">13.943</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.5.1" style="background-color:#DCE6F1;">13.119</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.6.1" style="background-color:#DCE6F1;">2.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.7.1" style="background-color:#DCE6F1;">1.268</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.8.1" style="background-color:#DCE6F1;">0.307</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.9.1" style="background-color:#DCE6F1;">15.935</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.10.1" style="background-color:#DCE6F1;">17.034</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.11.1" style="background-color:#DCE6F1;">7.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.12.1" style="background-color:#DCE6F1;">0.061</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.13.1" style="background-color:#DCE6F1;">0.064</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.14.1" style="background-color:#DCE6F1;">3.345</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.15.1" style="background-color:#DCE6F1;">3.766</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.4.3.16.1" style="background-color:#DCE6F1;">2.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.5.4" style="background-color:#DCE6F1;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.1.1" style="background-color:#DCE6F1;">wol_Latn-eng_Latn</span></th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.2.1" style="background-color:#DCE6F1;">0.091</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.3.1" style="background-color:#DCE6F1;">0.040</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.4.1" style="background-color:#DCE6F1;">4.723</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.5.1" style="background-color:#DCE6F1;">4.372</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.6.1" style="background-color:#DCE6F1;">2.91</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.7.1" style="background-color:#DCE6F1;">0.514</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.8.1" style="background-color:#DCE6F1;">0.191</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.9.1" style="background-color:#DCE6F1;">6.461</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.10.1" style="background-color:#DCE6F1;">6.521</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.11.1" style="background-color:#DCE6F1;">4.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.12.1" style="background-color:#DCE6F1;">0.041</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.13.1" style="background-color:#DCE6F1;">0.039</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.14.1" style="background-color:#DCE6F1;">0.832</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.15" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.15.1" style="background-color:#DCE6F1;">0.842</span></td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4.16" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T12.1.1.5.4.16.1" style="background-color:#DCE6F1;">2.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">hau_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">0.128</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.037</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">2.024</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;">1.949</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;">2.25</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;">0.281</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;">0.177</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.9" style="padding-top:1pt;padding-bottom:1pt;">2.324</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.10" style="padding-top:1pt;padding-bottom:1pt;">2.083</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.11" style="padding-top:1pt;padding-bottom:1pt;">14.55</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.12" style="padding-top:1pt;padding-bottom:1pt;">0.026</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.13" style="padding-top:1pt;padding-bottom:1pt;">0.030</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.14" style="padding-top:1pt;padding-bottom:1pt;">0.441</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.15" style="padding-top:1pt;padding-bottom:1pt;">0.366</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5.16" style="padding-top:1pt;padding-bottom:1pt;">1.75</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">bam_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.077</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.034</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">2.425</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">2.314</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">2.11</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.215</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.078</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.9" style="padding-top:1pt;padding-bottom:1pt;">2.145</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.10" style="padding-top:1pt;padding-bottom:1pt;">2.105</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.11" style="padding-top:1pt;padding-bottom:1pt;">3.38</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.12" style="padding-top:1pt;padding-bottom:1pt;">0.054</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.13" style="padding-top:1pt;padding-bottom:1pt;">0.028</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.14" style="padding-top:1pt;padding-bottom:1pt;">0.255</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.15" style="padding-top:1pt;padding-bottom:1pt;">0.401</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6.16" style="padding-top:1pt;padding-bottom:1pt;">1.97</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">shn_Mymr-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">0.127</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.073</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">2.494</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">2.072</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">1.96</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.433</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.8" style="padding-top:1pt;padding-bottom:1pt;">0.053</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.9" style="padding-top:1pt;padding-bottom:1pt;">2.433</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.10" style="padding-top:1pt;padding-bottom:1pt;">1.753</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.11" style="padding-top:1pt;padding-bottom:1pt;">5.35</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.12" style="padding-top:1pt;padding-bottom:1pt;">0.073</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.13" style="padding-top:1pt;padding-bottom:1pt;">0.076</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.14" style="padding-top:1pt;padding-bottom:1pt;">0.238</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.15" style="padding-top:1pt;padding-bottom:1pt;">0.143</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7.16" style="padding-top:1pt;padding-bottom:1pt;">0.88</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">nya_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.223</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.071</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">3.048</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">3.454</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">2.66</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">0.535</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.8" style="padding-top:1pt;padding-bottom:1pt;">0.269</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.9" style="padding-top:1pt;padding-bottom:1pt;">3.470</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.10" style="padding-top:1pt;padding-bottom:1pt;">3.332</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.11" style="padding-top:1pt;padding-bottom:1pt;">6.54</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.12" style="padding-top:1pt;padding-bottom:1pt;">0.049</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.13" style="padding-top:1pt;padding-bottom:1pt;">0.042</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.14" style="padding-top:1pt;padding-bottom:1pt;">0.614</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.15" style="padding-top:1pt;padding-bottom:1pt;">0.585</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8.16" style="padding-top:1pt;padding-bottom:1pt;">2.43</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">zul_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">0.180</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.065</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">2.913</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;">2.980</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">3.05</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">0.381</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.8" style="padding-top:1pt;padding-bottom:1pt;">0.201</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.9" style="padding-top:1pt;padding-bottom:1pt;">3.165</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.10" style="padding-top:1pt;padding-bottom:1pt;">2.960</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.11" style="padding-top:1pt;padding-bottom:1pt;">8.73</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.12" style="padding-top:1pt;padding-bottom:1pt;">0.046</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.13" style="padding-top:1pt;padding-bottom:1pt;">0.041</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.14" style="padding-top:1pt;padding-bottom:1pt;">0.337</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.15" style="padding-top:1pt;padding-bottom:1pt;">0.480</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.9.16" style="padding-top:1pt;padding-bottom:1pt;">2.33</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T12.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">lao_Laoo-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">0.104</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.061</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">2.142</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;">1.834</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;">2.06</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;">0.394</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;">0.053</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.9" style="padding-top:1pt;padding-bottom:1pt;">2.080</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.10" style="padding-top:1pt;padding-bottom:1pt;">1.993</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.11" style="padding-top:1pt;padding-bottom:1pt;">9.88</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.12" style="padding-top:1pt;padding-bottom:1pt;">0.050</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.13" style="padding-top:1pt;padding-bottom:1pt;">0.045</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.14" style="padding-top:1pt;padding-bottom:1pt;">0.405</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.15" style="padding-top:1pt;padding-bottom:1pt;">0.258</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.11.10.16" style="padding-top:1pt;padding-bottom:1pt;">1.37</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T12.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">ibo_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">0.218</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.034</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">2.158</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.5" style="padding-top:1pt;padding-bottom:1pt;">2.192</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.6" style="padding-top:1pt;padding-bottom:1pt;">2.23</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.7" style="padding-top:1pt;padding-bottom:1pt;">0.359</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.8" style="padding-top:1pt;padding-bottom:1pt;">0.126</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.9" style="padding-top:1pt;padding-bottom:1pt;">2.402</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.10" style="padding-top:1pt;padding-bottom:1pt;">2.066</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.11" style="padding-top:1pt;padding-bottom:1pt;">12.3</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.12" style="padding-top:1pt;padding-bottom:1pt;">0.037</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.13" style="padding-top:1pt;padding-bottom:1pt;">0.026</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.14" style="padding-top:1pt;padding-bottom:1pt;">0.346</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.15" style="padding-top:1pt;padding-bottom:1pt;">0.263</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.12.11.16" style="padding-top:1pt;padding-bottom:1pt;">1.48</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the BLEU scores obtained from the FLORES-200 benchmark for the stagnant language category, specifically focusing on translations where the target language is English.  The table breaks down these scores according to different continual pretraining (CPT) configurations across three base models (Llama-3.1-8B, Llama-2-7B, and Viking-7B).  Rows representing the training languages for each model have a shaded background to easily differentiate them from the evaluation languages.  The scores provide insights into the effectiveness of various CPT strategies (monolingual, bilingual, and bilingual with code data) on translation quality for this specific language group.
> <details>
> <summary>read the caption</summary>
> Table 12: FLORES-200 BLEU scores for Stagnant languages (X-Eng). Training language rows have a shaded background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T13.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T13.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.1.1">Category</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.2.1">Language Pair</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.3.1">Source Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.4.1">Target Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.5.1">Total Tokens</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.2.2.1" rowspan="10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T13.1.2.2.1.1">Altruistic</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-zul_Latn</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">12,672,195</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">9,196,313</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">21,868,509</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">zho_Hani-zul_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">341,665</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">208,653</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">550,318</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">ceb_Latn-zul_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">190,637</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">94,910</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">285,547</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">zho_Hani-ceb_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">696,789</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">863,637</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">1,560,426</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-mar_Deva</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">7,736,633</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">7,248,634</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">14,985,267</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">zho_Hani-mar_Deva</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.7.7.2" style="padding-top:1pt;padding-bottom:1pt;">2,244,545</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.7.7.3" style="padding-top:1pt;padding-bottom:1pt;">1,825,067</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">4,069,612</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.8.8.1" style="padding-top:1pt;padding-bottom:1pt;">ceb_Latn-mar_Deva</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.8.8.2" style="padding-top:1pt;padding-bottom:1pt;">835,219</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">634,881</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">1,470,100</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.9.9.1" style="padding-top:1pt;padding-bottom:1pt;">ceb_Latn-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.9.9.2" style="padding-top:1pt;padding-bottom:1pt;">12,355,815</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">11,719,494</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.9.9.4" style="padding-top:1pt;padding-bottom:1pt;">24,075,309</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.10.10.1" style="padding-top:1pt;padding-bottom:1pt;">zho_Hani-khm_Khmr</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.10.10.2" style="padding-top:1pt;padding-bottom:1pt;">1,157,707</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.10.10.3" style="padding-top:1pt;padding-bottom:1pt;">577,403</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.10.10.4" style="padding-top:1pt;padding-bottom:1pt;">1,735,110</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.11.11.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-khm_Khmr</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.11.11.2" style="padding-top:1pt;padding-bottom:1pt;">11,364,386</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.11.11.3" style="padding-top:1pt;padding-bottom:1pt;">10,147,868</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.11.11.4" style="padding-top:1pt;padding-bottom:1pt;">21,512,254</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.12.12">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T13.1.12.12.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.12.12.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.12.12.2.1">Total</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.12.12.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.12.12.3.1">49,595,591</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.12.12.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.12.12.4.1">42,516,860</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.12.12.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.12.12.5.1">92,112,452</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.13.13.1" rowspan="8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T13.1.13.13.1.1">Selfish</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.13.13.2" style="padding-top:1pt;padding-bottom:1pt;">bel_Cyrl-deu_Latn</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.13.13.3" style="padding-top:1pt;padding-bottom:1pt;">27,012,850</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.13.13.4" style="padding-top:1pt;padding-bottom:1pt;">18,085,602</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.13.13.5" style="padding-top:1pt;padding-bottom:1pt;">45,098,452</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.14.14.1" style="padding-top:1pt;padding-bottom:1pt;">bel_Cyrl-eng_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.14.14.2" style="padding-top:1pt;padding-bottom:1pt;">1,598,358</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.14.14.3" style="padding-top:1pt;padding-bottom:1pt;">1,920,079</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.14.14.4" style="padding-top:1pt;padding-bottom:1pt;">3,518,437</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.15.15.1" style="padding-top:1pt;padding-bottom:1pt;">deu_Latn-mri_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.15.15.2" style="padding-top:1pt;padding-bottom:1pt;">1,682,621</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.15.15.3" style="padding-top:1pt;padding-bottom:1pt;">2,250,042</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.15.15.4" style="padding-top:1pt;padding-bottom:1pt;">3,932,663</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.16.16.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-mri_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.16.16.2" style="padding-top:1pt;padding-bottom:1pt;">717,914</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.16.16.3" style="padding-top:1pt;padding-bottom:1pt;">913,809</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.16.16.4" style="padding-top:1pt;padding-bottom:1pt;">1,631,723</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.17.17.1" style="padding-top:1pt;padding-bottom:1pt;">deu_Latn-kir_Cyrl</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.17.17.2" style="padding-top:1pt;padding-bottom:1pt;">1,682,749</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.17.17.3" style="padding-top:1pt;padding-bottom:1pt;">1,583,623</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.17.17.4" style="padding-top:1pt;padding-bottom:1pt;">3,266,372</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.18.18.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-kir_Cyrl</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.18.18.2" style="padding-top:1pt;padding-bottom:1pt;">2,262,374</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.18.18.3" style="padding-top:1pt;padding-bottom:1pt;">1,515,087</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.18.18.4" style="padding-top:1pt;padding-bottom:1pt;">3,777,462</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.19.19.1" style="padding-top:1pt;padding-bottom:1pt;">deu_Latn-nya_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.19.19.2" style="padding-top:1pt;padding-bottom:1pt;">1,155,433</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.19.19.3" style="padding-top:1pt;padding-bottom:1pt;">1,077,300</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.19.19.4" style="padding-top:1pt;padding-bottom:1pt;">2,232,733</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.20.20.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-nya_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.20.20.2" style="padding-top:1pt;padding-bottom:1pt;">19,714,307</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.20.20.3" style="padding-top:1pt;padding-bottom:1pt;">16,830,192</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.20.20.4" style="padding-top:1pt;padding-bottom:1pt;">36,544,499</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.21.21">
<th class="ltx_td ltx_th ltx_th_row" id="A1.T13.1.21.21.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.21.21.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.21.21.2.1">Total</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.21.21.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.21.21.3.1">55,826,606</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.21.21.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.21.21.4.1">44,175,734</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.21.21.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.21.21.5.1">100,002,341</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.22.22.1" rowspan="4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T13.1.22.22.1.1">Stagnant</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T13.1.22.22.2" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-tha_Thai</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.22.22.3" style="padding-top:1pt;padding-bottom:1pt;">5,619,794</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.22.22.4" style="padding-top:1pt;padding-bottom:1pt;">18,138,086</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.22.22.5" style="padding-top:1pt;padding-bottom:1pt;">23,757,879</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.23.23.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-yor_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.23.23.2" style="padding-top:1pt;padding-bottom:1pt;">14,334,000</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.23.23.3" style="padding-top:1pt;padding-bottom:1pt;">16,887,000</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.23.23.4" style="padding-top:1pt;padding-bottom:1pt;">31,221,000</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.24.24.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-sna_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.24.24.2" style="padding-top:1pt;padding-bottom:1pt;">9,813,703</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.24.24.3" style="padding-top:1pt;padding-bottom:1pt;">7,608,164</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.24.24.4" style="padding-top:1pt;padding-bottom:1pt;">17,421,867</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T13.1.25.25.1" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn-wol_Latn</th>
<td class="ltx_td ltx_align_center" id="A1.T13.1.25.25.2" style="padding-top:1pt;padding-bottom:1pt;">13,600,133</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.25.25.3" style="padding-top:1pt;padding-bottom:1pt;">13,636,959</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.25.25.4" style="padding-top:1pt;padding-bottom:1pt;">27,237,092</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.26.26">
<th class="ltx_td ltx_th ltx_th_row ltx_border_b" id="A1.T13.1.26.26.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A1.T13.1.26.26.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.26.26.2.1">Total</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T13.1.26.26.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.26.26.3.1">43,367,630</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T13.1.26.26.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.26.26.4.1">56,270,209</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T13.1.26.26.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.26.26.5.1">99,637,838</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the bilingual translation data used in the study.  It shows the number of source tokens, target tokens, and the total number of tokens for each language pair within each of the three language categories (altruistic, selfish, and stagnant). The table also provides the overall totals for each category and the grand total across all language pairs.
> <details>
> <summary>read the caption</summary>
> Table 13: Bilingual translation data statistics: source, target, and total token counts across language pairs for each language category, with totals for each group.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T14.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T14.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.2.1">Language</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.3.1">Total Tokens</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.2.2.1" rowspan="6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T14.1.2.2.1.1">Altruistic</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">43,492,709</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.3.3">
<td class="ltx_td ltx_align_left" id="A1.T14.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">zho_Hani</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">4,440,706</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.4.4">
<td class="ltx_td ltx_align_left" id="A1.T14.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">ceb_Latn</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">14,245,308</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.5.5">
<td class="ltx_td ltx_align_left" id="A1.T14.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">mar_Deva</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">9,708,582</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.6.6">
<td class="ltx_td ltx_align_left" id="A1.T14.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">zul_Latn</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">9,499,876</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.7.7">
<td class="ltx_td ltx_align_left" id="A1.T14.1.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">khm_Khmr</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.7.7.2" style="padding-top:1pt;padding-bottom:1pt;">10,725,271</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.8.8">
<td class="ltx_td" id="A1.T14.1.8.8.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.8.8.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.8.8.2.1">Total</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.8.8.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.8.8.3.1">92,112,452</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.9.9.1" rowspan="6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T14.1.9.9.1.1">Selfish</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.9.9.2" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">24,614,674</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.10.10">
<td class="ltx_td ltx_align_left" id="A1.T14.1.10.10.1" style="padding-top:1pt;padding-bottom:1pt;">deu_Latn</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.10.10.2" style="padding-top:1pt;padding-bottom:1pt;">22,606,405</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.11.11">
<td class="ltx_td ltx_align_left" id="A1.T14.1.11.11.1" style="padding-top:1pt;padding-bottom:1pt;">bel_Cyrl</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.11.11.2" style="padding-top:1pt;padding-bottom:1pt;">28,611,208</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.12.12">
<td class="ltx_td ltx_align_left" id="A1.T14.1.12.12.1" style="padding-top:1pt;padding-bottom:1pt;">mri_Latn</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.12.12.2" style="padding-top:1pt;padding-bottom:1pt;">3,163,851</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.13.13">
<td class="ltx_td ltx_align_left" id="A1.T14.1.13.13.1" style="padding-top:1pt;padding-bottom:1pt;">kir_Cyrl</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.13.13.2" style="padding-top:1pt;padding-bottom:1pt;">3,098,710</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.14.14">
<td class="ltx_td ltx_align_left" id="A1.T14.1.14.14.1" style="padding-top:1pt;padding-bottom:1pt;">nya_Latn</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.14.14.2" style="padding-top:1pt;padding-bottom:1pt;">17,907,492</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.15.15">
<td class="ltx_td" id="A1.T14.1.15.15.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.15.15.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.15.15.2.1">Total</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.15.15.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.15.15.3.1">100,002,341</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.16.16.1" rowspan="5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A1.T14.1.16.16.1.1">Stagnant</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.16.16.2" style="padding-top:1pt;padding-bottom:1pt;">eng_Latn</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T14.1.16.16.3" style="padding-top:1pt;padding-bottom:1pt;">43,367,629</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.17.17">
<td class="ltx_td ltx_align_left" id="A1.T14.1.17.17.1" style="padding-top:1pt;padding-bottom:1pt;">tha_Thai</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.17.17.2" style="padding-top:1pt;padding-bottom:1pt;">18,138,086</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.18.18">
<td class="ltx_td ltx_align_left" id="A1.T14.1.18.18.1" style="padding-top:1pt;padding-bottom:1pt;">yor_Latn</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.18.18.2" style="padding-top:1pt;padding-bottom:1pt;">16,887,000</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.19.19">
<td class="ltx_td ltx_align_left" id="A1.T14.1.19.19.1" style="padding-top:1pt;padding-bottom:1pt;">sna_Latn</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.19.19.2" style="padding-top:1pt;padding-bottom:1pt;">7,608,164</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.20.20">
<td class="ltx_td ltx_align_left" id="A1.T14.1.20.20.1" style="padding-top:1pt;padding-bottom:1pt;">wol_Latn</td>
<td class="ltx_td ltx_align_right" id="A1.T14.1.20.20.2" style="padding-top:1pt;padding-bottom:1pt;">554,809</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.21.21">
<td class="ltx_td ltx_border_b" id="A1.T14.1.21.21.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A1.T14.1.21.21.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.21.21.2.1">Total</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="A1.T14.1.21.21.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T14.1.21.21.3.1">86,555,688</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the total number of tokens for each language used in the monolingual continual pretraining (CPT) experiments. The languages are categorized into three groups: altruistic, selfish, and stagnant, according to their behavior in cross-lingual transfer. This data is used to understand resource levels and the impact of CPT on multilingual models. Note that this table only presents data for the monolingual setup and does not include data for bilingual or code-augmented CPT setups.
> <details>
> <summary>read the caption</summary>
> Table 14: Monolingual training data statistics: total token counts for each language across the three language categories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T15.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T15.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T15.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="A1.T15.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.2.1">Total Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T15.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T15.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">assembly</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T15.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">331,667,471</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">c</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">8,741,971,474</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">cpp</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">7,816,404,624</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">c-sharp</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">2,378,224,612</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">clojure</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">82,101,240</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">common-lisp</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">392,951,006</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">dart</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">596,729,087</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">erlang</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">145,648,910</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">f-sharp</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">67,025,280</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">fortran</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">442,165,240</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">glsl</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">116,320,040</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">go</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">3,566,871,370</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">haskell</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">401,113,392</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">java</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">3,659,465,643</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">javascript</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">3,027,933,059</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.17.16.1" style="padding-top:1pt;padding-bottom:1pt;">julia</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.17.16.2" style="padding-top:1pt;padding-bottom:1pt;">221,192,206</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.18.17.1" style="padding-top:1pt;padding-bottom:1pt;">kotlin</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.18.17.2" style="padding-top:1pt;padding-bottom:1pt;">851,638,489</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.19.18.1" style="padding-top:1pt;padding-bottom:1pt;">llvm</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.19.18.2" style="padding-top:1pt;padding-bottom:1pt;">383,439,623</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.20.19.1" style="padding-top:1pt;padding-bottom:1pt;">markdown</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.20.19.2" style="padding-top:1pt;padding-bottom:1pt;">1,795,961,949</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.21.20.1" style="padding-top:1pt;padding-bottom:1pt;">pascal</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.21.20.2" style="padding-top:1pt;padding-bottom:1pt;">424,339,418</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.22.21.1" style="padding-top:1pt;padding-bottom:1pt;">perl</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.22.21.2" style="padding-top:1pt;padding-bottom:1pt;">473,210,127</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.23.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.23.22.1" style="padding-top:1pt;padding-bottom:1pt;">php</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.23.22.2" style="padding-top:1pt;padding-bottom:1pt;">2,315,544,678</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.24.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.24.23.1" style="padding-top:1pt;padding-bottom:1pt;">powershell</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.24.23.2" style="padding-top:1pt;padding-bottom:1pt;">74,390,317</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.25.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.25.24.1" style="padding-top:1pt;padding-bottom:1pt;">python</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.25.24.2" style="padding-top:1pt;padding-bottom:1pt;">5,199,071,526</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.26.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.26.25.1" style="padding-top:1pt;padding-bottom:1pt;">r</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.26.25.2" style="padding-top:1pt;padding-bottom:1pt;">49,449,207</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.27.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.27.26.1" style="padding-top:1pt;padding-bottom:1pt;">ruby</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.27.26.2" style="padding-top:1pt;padding-bottom:1pt;">1,107,302,714</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.28.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.28.27.1" style="padding-top:1pt;padding-bottom:1pt;">rust</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.28.27.2" style="padding-top:1pt;padding-bottom:1pt;">1,572,906,932</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.29.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.29.28.1" style="padding-top:1pt;padding-bottom:1pt;">scala</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.29.28.2" style="padding-top:1pt;padding-bottom:1pt;">568,062,821</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.30.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.30.29.1" style="padding-top:1pt;padding-bottom:1pt;">shell</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.30.29.2" style="padding-top:1pt;padding-bottom:1pt;">510,858,653</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.31.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.31.30.1" style="padding-top:1pt;padding-bottom:1pt;">solidity</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.31.30.2" style="padding-top:1pt;padding-bottom:1pt;">151,560,961</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.32.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.32.31.1" style="padding-top:1pt;padding-bottom:1pt;">sql</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.32.31.2" style="padding-top:1pt;padding-bottom:1pt;">1,179,866,764</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.33.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T15.1.33.32.1" style="padding-top:1pt;padding-bottom:1pt;">typescript</th>
<td class="ltx_td ltx_align_right" id="A1.T15.1.33.32.2" style="padding-top:1pt;padding-bottom:1pt;">2,607,984,343</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.34.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A1.T15.1.34.33.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T15.1.34.33.1.1">Total</span></th>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="A1.T15.1.34.33.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A1.T15.1.34.33.2.1">51,253,373,176</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the raw token counts for various programming languages included in the code data used for continual pretraining. The data originates from a subset of the Stack dataset. The token counts shown are before any downsampling was performed, providing a complete picture of the initial code data distribution.
> <details>
> <summary>read the caption</summary>
> Table 15: Raw code data statistics from a subset of The Stack dataset processed by Ji et al. (2024a), showing total token counts for each programming language before downsampling.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.04152/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04152/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}