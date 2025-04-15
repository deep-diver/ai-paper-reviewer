---
title: "Pretraining Language Models for Diachronic Linguistic Change Discovery"
summary: "Efficiently pretraining language models on temporally-segmented corpora enables diachronic linguistic change discovery, offering a faster and more precise alternative to fine-tuning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Hamburg",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05523 {{< /keyword >}}
{{< keyword icon="writer" >}} Elisabeth Fittschen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05523" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05523" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05523/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) show promise in fields like historical linguistics but often rely on inflexible time period divisions. Fine-tuning or model editing aims to restrict inference, yet domain-restricted pretraining is data- and compute-intensive. This work addresses the challenge of leveraging LLMs for nuanced historical analysis without excessive computational demands, questioning the efficacy of standard LLM adaptation techniques. 



This paper introduces efficient pretraining for useful models over corpora unsuitable for typical LLM approaches. Using a novel date-attribution pipeline, they create temporally-segmented datasets. Training five-model batteries via efficient pretraining and Llama3-8B parameter fine-tuning reveals that **pretrained models train faster, respect historical divisions better**, and enable diverse linguistic phenomena detection, offering a ready-to-use pipeline for various target fields.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Efficient pretraining techniques can produce useful language models over corpora too large for manual inspection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Pretrained models better respect historical divisions compared to fine-tuned models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method enables the detection of diverse linguistic phenomena, including lexical change, grammatical change, and word sense evolution. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper's efficient pretraining approach offers a **novel, boundary-guaranteed method for linguistic hypothesis discovery**, relevant for researchers studying language evolution, historical linguistics, and those seeking to apply LLMs to other fields with specific domain constraints, potentially **revolutionizing automated linguistic analysis**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.05523/x1.png)

> 🔼 This figure displays cross-time perplexity results for finetuned models using Llama3-8B as a baseline.  It shows how the perplexity (a measure of how well a model predicts a sequence of words) varies across different time periods for the models. The x-axis represents time periods within the corpus, and the y-axis represents the normalized perplexity. Each line represents a different model trained on a specific time slice of the data. The plot allows comparison of model perplexity within its own time slice and against other time slices, indicating whether the model is able to distinguish between time periods effectively.
> <details>
> <summary>read the caption</summary>
> (a) Finetuned models with Llama3 8B baseline
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1" style="width:313.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1.1">Text</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">Sense Year</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.1.1.1">
<span class="ltx_p" id="S3.T1.1.2.1.1.1.1" style="width:313.0pt;">“They had a bunch of crazy ideas that would never <span class="ltx_text ltx_font_bold" id="S3.T1.1.2.1.1.1.1.1">work</span>”</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.2">1599</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.2.1.1">
<span class="ltx_p" id="S3.T1.1.3.2.1.1.1" style="width:313.0pt;">“I tried to call the operator but the phone was <span class="ltx_text ltx_font_bold" id="S3.T1.1.3.2.1.1.1.1">dead</span>”</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.2">1882</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.3.1.1">
<span class="ltx_p" id="S3.T1.1.4.3.1.1.1" style="width:313.0pt;">“You know how it is. I’m not into ironing. It’s not my <span class="ltx_text ltx_font_bold" id="S3.T1.1.4.3.1.1.1.1">thing</span>”</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.2">1936</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.5.4.1.1">
<span class="ltx_p" id="S3.T1.1.5.4.1.1.1" style="width:313.0pt;">“Let’s go where there’s some life. Whatta ya say? Hey baby, I’m <span class="ltx_text ltx_font_bold" id="S3.T1.1.5.4.1.1.1.1">down</span>”</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.2">1952</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table provides example sentences using words with multiple meanings, illustrating how the meaning of a word has changed over time.  Each row shows a sentence containing a word, the specific meaning of the word in that sentence, and the year that meaning first appeared. This data is used to evaluate how well language models understand the time-specific evolution of word meanings.
> <details>
> <summary>read the caption</summary>
> Table 1: Cloze task examples and the year when the word sense first appeared
> </details>





### In-depth insights


#### Diachronic LLMs
**Diachronic LLMs** could revolutionize historical linguistics by offering a time-sensitive understanding of language evolution. By training models on corpora segmented by time periods, researchers could track subtle shifts in word usage, grammar, and semantic meaning, providing insights previously inaccessible through traditional methods. The ability to analyze language in its historical context would be invaluable for understanding cultural trends and the evolution of thought, enabling a more nuanced interpretation of historical texts. Furthermore, these models could be used to predict future language changes, informing language policy and education.

#### BabyLM recipe
The BabyLM recipe emerges as a crucial element, particularly for resource-constrained scenarios. The paper utilizes it for pretraining, highlighting its **data efficiency**. The choice indicates a focus on cognitive plausibility. Its successful application suggests that even with limited data, effective pretraining is achievable. The recipe's employment signifies a move towards **specialized language models**. This approach contrasts with the trend of massive datasets. The efficiency makes it suitable for academic research settings. This technique allows for creating models aligned with specific historical contexts. The success hints at the recipe's ability to capture nuanced linguistic patterns. 

#### Temporal Leakage
The research paper addresses **temporal leakage** in language models, where models trained on data from a specific time period inadvertently incorporate information from other periods. This is crucial when analyzing diachronic linguistic change, as it can blur the boundaries between historical periods and distort findings. The study emphasizes that **fine-tuned models are prone to leakage** due to pre-existing linguistic priors, while pre-trained models exhibit greater temporal specificity. **Controlling leakage** is vital for accurate historical linguistic analysis and detecting subtle shifts in language use over time.

#### NPI Shift
The NPI shift relates to negative polarity items, words indicating negative sentences. The research indicates historical shifts in grammatical preferences, specifically with the "only...ever" construction. The pretrained models capture this change, showing a preference for "only" over "even" in later slices, unlike finetuned models. This suggests **the models' capacity to track subtle linguistic evolutions**. The study highlights the capacity of pretraining methods to detect nuanced shifts, possibly offering insights into understanding linguistic change processes and the historical context.

#### Prefiguration
The concept of "prefiguration," though not explicitly a heading, is subtly explored. It relates to how earlier linguistic patterns or usages might foreshadow later developments. The models sometimes exhibit surprising aptness, where they seem to anticipate future constructions. **This isn't about memorization but about recognizing subtle cues in the earlier data.** The earlier patterns are not perfectly aligned with later usages, they are more suggestive, creating a pathway for future meanings to solidify. **This prefigurative capacity could be a powerful tool for historical linguistics**, potentially revealing the subtle shifts in language. It also shows that the models are sensitive to the underlying semantic structure. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05523/x2.png)

> 🔼 This figure shows the cross-time perplexities for pretrained models using the BabyLlama2 baseline.  The x-axis represents the time period, and the y-axis represents the normalized log perplexity. Different colored lines represent different time slices.  The graph helps visualize how well each model trained on a specific time period performs on text from different time periods, indicating whether the model's knowledge is limited to its training period or if it has a better understanding of language across time.
> <details>
> <summary>read the caption</summary>
> (b) Pretrained models with BabyLlama2 baseline
> </details>



![](https://arxiv.org/html/2504.05523/x3.png)

> 🔼 This figure displays the cross-time perplexity for two sets of language models: finetuned models (using Llama3-8B as a base) and pretrained models (using BabyLlama2).  Each line represents a model trained on a specific 10-million-word slice of the corpus, spanning different historical periods. The x-axis shows the time period and the y-axis represents the perplexity (a measure of how well the model predicts the next word). The perplexity scores are calculated for each model across all five time slices (cross-time). Lower perplexity indicates better prediction performance. This figure helps visualize how well each model generalizes across different time periods, highlighting the performance differences between the finetuned and pretrained models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Cross-time perplexities
> </details>



![](https://arxiv.org/html/2504.05523/x4.png)

> 🔼 This figure shows the cross-time perplexity of finetuned models using Llama3-8B as a baseline.  The x-axis represents the time period, and the y-axis represents the normalized log perplexity.  Multiple lines represent different time slices the models were trained on. The plot helps visualize how well each model generalizes to time periods outside its training data, indicating whether it is sensitive to specific time periods or a-historical.  Lower perplexity values indicate better fluency and potentially better adherence to the linguistic characteristics of the specific time period.
> <details>
> <summary>read the caption</summary>
> (a) Finetuned models with Llama3 8B baseline
> </details>



![](https://arxiv.org/html/2504.05523/x5.png)

> 🔼 This figure shows the cross-time perplexities of pretrained models using the BabyLlama2 baseline.  The x-axis represents the time period, and the y-axis represents the perplexity.  Multiple lines represent perplexity scores for different time slices (e.g., 1750-1820, 1820-1850, etc.), illustrating how well each model trained on a specific period predicts text from other periods. Lower perplexity generally suggests better model performance and a closer fit to the respective time slice, while higher perplexity suggests poorer performance or the presence of information from other periods.
> <details>
> <summary>read the caption</summary>
> (b) Pretrained models with BabyLlama2 baseline
> </details>



![](https://arxiv.org/html/2504.05523/x6.png)

> 🔼 This figure displays the performance of both pretrained and finetuned models on a cloze task.  The x-axis represents the time period, and the y-axis represents the percentage of correctly completed cloze tasks within the top 100 predictions. Separate graphs are shown for models pretrained using the BabyLlama2 and Llama3-8B baselines. The figure highlights the varying performance of the models across different time periods, demonstrating how the pretrained models tend to excel within their specific time period while the finetuned models show less specialization.
> <details>
> <summary>read the caption</summary>
> Figure 2: Model performance on the top 100 completion cloze task
> </details>



![](https://arxiv.org/html/2504.05523/x7.png)

> 🔼 This figure shows the probability of the finetuned and pretrained models making predictions based on data from time periods outside of their training data.  A high probability of leakage indicates that the model is 'leaking' information from other time periods and not solely relying on the data it was trained on. This is especially problematic for tasks like lexical sense-change analysis which requires precise temporal boundaries. The figure visually represents the extent of this leakage across different time periods for both model types, allowing for a comparison of their ability to respect the intended historical divisions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Probability of Leakage, over pretrained and finetuned models.
> </details>



![](https://arxiv.org/html/2504.05523/x8.png)

> 🔼 Figure 4 shows the probability trajectories of two different senses of the word 'station' over time. The probabilities are calculated using the pretrained models from different time periods.  The x-axis represents the time period, and the y-axis represents the probability. The graph shows a clear distinction between the two senses: 'station' referring to a train station and 'station' referring to a temporary camp or stopover.  The probability of the 'train station' sense increases sharply around the mid-19th century, reflecting the adoption of railways, while the 'camp/stopover' sense maintains a relatively stable, but gradually increasing probability over the same time frame. This visualization supports the paper's claim that pretrained models effectively capture historically specific changes in word meaning, as they assign higher probabilities to the appropriate sense within each period.
> <details>
> <summary>read the caption</summary>
> Figure 4: Natural appearances of ”station” with a descending probability trajectory and manually labelled for sense.
> </details>



![](https://arxiv.org/html/2504.05523/x9.png)

> 🔼 This figure shows the distribution of cloze tasks across different time periods after filtering the dataset.  The x-axis represents the time periods (1750-1820, 1820-1850, etc.), and the y-axis shows the number of cloze tasks in each time period. A total of 14,600 cloze tasks were used in the analysis. The bar chart visually represents the frequency of cloze tasks within each specified time period, illustrating how the dataset's temporal coverage is distributed.
> <details>
> <summary>read the caption</summary>
> Figure 5: Count of cloze tasks for per time slice for the set filtered for our data (14.6 thousand examples).
> </details>



![](https://arxiv.org/html/2504.05523/x10.png)

> 🔼 This figure shows the mean reciprocal rank (MRR) performance of the DoRA finetuned models over time.  The x-axis represents the time period (1750-1820, 1820-1850, etc.), and the y-axis represents the MRR.  Separate lines represent the MRR for each time period's test set.  The plot visualizes how well the models trained on a specific time period generalize to other time periods, highlighting the model's ability to capture historical linguistic changes.
> <details>
> <summary>read the caption</summary>
> (a) Baseline (DoRA) MRR
> </details>



![](https://arxiv.org/html/2504.05523/x11.png)

> 🔼 This figure shows the mean reciprocal rank (MRR) performance of the pretrained BabyLlama models across different time slices. The MRR is a metric that measures the ranking accuracy of a model's top predictions.  Lower MRR values indicate lower ranking accuracy. The x-axis represents the time slices (1750-1820, 1820-1850, 1850-1880, 1880-1910, 1910-1940), and the y-axis shows the MRR.  The plot helps to visualize how the model's ability to predict the correct word changes over time for each slice.  The line representing the baseline model provides a comparison.
> <details>
> <summary>read the caption</summary>
> (b) BabyLlama MRR
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">Sentence</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.2.1.1">1750 to 1820</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.2.1.2">
<span class="ltx_text" id="S3.T2.1.2.1.2.1" style="color:#750D0D;">with</span> <span class="ltx_text" id="S3.T2.1.2.1.2.2" style="color:#590A0A;">whom</span> <span class="ltx_text" id="S3.T2.1.2.1.2.3" style="color:#590A0A;">he</span> <span class="ltx_text" id="S3.T2.1.2.1.2.4" style="color:#960F0F;">talked</span> <span class="ltx_text" id="S3.T2.1.2.1.2.5" style="color:#6E0D0D;">in</span> <span class="ltx_text" id="S3.T2.1.2.1.2.6" style="color:#540A0A;">the</span> <span class="ltx_text" id="S3.T2.1.2.1.2.7" style="color:#FF1C1C;">station</span> <span class="ltx_text" id="S3.T2.1.2.1.2.8" style="color:#730D0D;">at</span> <span class="ltx_text" id="S3.T2.1.2.1.2.9" style="color:#A81212;">fort</span> <span class="ltx_text" id="S3.T2.1.2.1.2.10" style="color:#BF1414;">wayne</span> <span class="ltx_text" id="S3.T2.1.2.1.2.11" style="color:#ED1A1A;">interested</span> <span class="ltx_text" id="S3.T2.1.2.1.2.12" style="color:#5E0A0A;">him</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.T2.1.3.2.1">1820 to 1850</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.3.2.2">
<span class="ltx_text" id="S3.T2.1.3.2.2.1" style="color:#8C0F0F;">with</span> <span class="ltx_text" id="S3.T2.1.3.2.2.2" style="color:#870F0F;">whom</span> <span class="ltx_text" id="S3.T2.1.3.2.2.3" style="color:#6B0D0D;">he</span> <span class="ltx_text" id="S3.T2.1.3.2.2.4" style="color:#CC1717;">talked</span> <span class="ltx_text" id="S3.T2.1.3.2.2.5" style="color:#820F0F;">in</span> <span class="ltx_text" id="S3.T2.1.3.2.2.6" style="color:#5E0A0A;">the</span> <span class="ltx_text" id="S3.T2.1.3.2.2.7" style="color:#E31A1A;">station</span> <span class="ltx_text" id="S3.T2.1.3.2.2.8" style="color:#870F0F;">at</span> <span class="ltx_text" id="S3.T2.1.3.2.2.9" style="color:#BD1414;">fort</span> <span class="ltx_text" id="S3.T2.1.3.2.2.10" style="color:#7A0D0D;">wayne</span> <span class="ltx_text" id="S3.T2.1.3.2.2.11" style="color:#FF1C1C;">interested</span> <span class="ltx_text" id="S3.T2.1.3.2.2.12" style="color:#540A0A;">him</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3">
<td class="ltx_td ltx_align_left" id="S3.T2.1.4.3.1">1850 to 1880</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.4.3.2">
<span class="ltx_text" id="S3.T2.1.4.3.2.1" style="color:#730D0D;">with</span> <span class="ltx_text" id="S3.T2.1.4.3.2.2" style="color:#7D0D0D;">whom</span> <span class="ltx_text" id="S3.T2.1.4.3.2.3" style="color:#610A0A;">he</span> <span class="ltx_text" id="S3.T2.1.4.3.2.4" style="color:#AD1212;">talked</span> <span class="ltx_text" id="S3.T2.1.4.3.2.5" style="color:#7A0D0D;">in</span> <span class="ltx_text" id="S3.T2.1.4.3.2.6" style="color:#540A0A;">the</span> <span class="ltx_text" id="S3.T2.1.4.3.2.7" style="color:#B31414;">station</span> <span class="ltx_text" id="S3.T2.1.4.3.2.8" style="color:#780D0D;">at</span> <span class="ltx_text" id="S3.T2.1.4.3.2.9" style="color:#991212;">fort</span> <span class="ltx_text" id="S3.T2.1.4.3.2.10" style="color:#C91717;">wayne</span> <span class="ltx_text" id="S3.T2.1.4.3.2.11" style="color:#FF1C1C;">interested</span> <span class="ltx_text" id="S3.T2.1.4.3.2.12" style="color:#590A0A;">him</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4">
<td class="ltx_td ltx_align_left" id="S3.T2.1.5.4.1">1880 to 1910</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.5.4.2">
<span class="ltx_text" id="S3.T2.1.5.4.2.1" style="color:#850F0F;">with</span> <span class="ltx_text" id="S3.T2.1.5.4.2.2" style="color:#820F0F;">whom</span> <span class="ltx_text" id="S3.T2.1.5.4.2.3" style="color:#750D0D;">he</span> <span class="ltx_text" id="S3.T2.1.5.4.2.4" style="color:#B01414;">talked</span> <span class="ltx_text" id="S3.T2.1.5.4.2.5" style="color:#7A0D0D;">in</span> <span class="ltx_text" id="S3.T2.1.5.4.2.6" style="color:#610A0A;">the</span> <span class="ltx_text" id="S3.T2.1.5.4.2.7" style="color:#850F0F;">station</span> <span class="ltx_text" id="S3.T2.1.5.4.2.8" style="color:#750D0D;">at</span> <span class="ltx_text" id="S3.T2.1.5.4.2.9" style="color:#A61212;">fort</span> <span class="ltx_text" id="S3.T2.1.5.4.2.10" style="color:#FF1C1C;">wayne</span> <span class="ltx_text" id="S3.T2.1.5.4.2.11" style="color:#F71C1C;">interested</span> <span class="ltx_text" id="S3.T2.1.5.4.2.12" style="color:#540A0A;">him</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.6.5.1">1910 to 1940</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.6.5.2">
<span class="ltx_text" id="S3.T2.1.6.5.2.1" style="color:#750D0D;">with</span> <span class="ltx_text" id="S3.T2.1.6.5.2.2" style="color:#700D0D;">whom</span> <span class="ltx_text" id="S3.T2.1.6.5.2.3" style="color:#610A0A;">he</span> <span class="ltx_text" id="S3.T2.1.6.5.2.4" style="color:#8F0F0F;">talked</span> <span class="ltx_text" id="S3.T2.1.6.5.2.5" style="color:#750D0D;">in</span> <span class="ltx_text" id="S3.T2.1.6.5.2.6" style="color:#5C0A0A;">the</span> <span class="ltx_text" id="S3.T2.1.6.5.2.7" style="color:#700D0D;">station</span> <span class="ltx_text" id="S3.T2.1.6.5.2.8" style="color:#6B0D0D;">at</span> <span class="ltx_text" id="S3.T2.1.6.5.2.9" style="color:#910F0F;">fort</span> <span class="ltx_text" id="S3.T2.1.6.5.2.10" style="color:#FF1C1C;">wayne</span> <span class="ltx_text" id="S3.T2.1.6.5.2.11" style="color:#B31414;">interested</span> <span class="ltx_text" id="S3.T2.1.6.5.2.12" style="color:#540A0A;">him</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the normalized perplexity scores for different language models across various time periods.  Lower scores indicate better model performance. The models include finetuned models with a Llama3 8B baseline and pretrained models with a BabyLlama2 baseline.  The data is presented visually using a color gradient, where lighter red shades represent higher perplexity (lower performance), and darker shades represent lower perplexity (higher performance). This visualization allows for easy comparison of model performance across different time periods and model types.
> <details>
> <summary>read the caption</summary>
> Table 2: Normalized perplexities for different models, lighter red signifies higher surprisal.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">1750-1820</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">1820-50</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">1850-80</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">1880-1910</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.6.1">1910-40</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.2.1.1">pretrained</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.2.1.2">0.67</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.2.1.3">0.68</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.2.1.4">0.69</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.2.1.5">0.72</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.2.1.6">0.72</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.3.2.1">finetuned</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.3.2.2">0.80</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.3.2.3">0.81</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.3.2.4">0.83</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.3.2.5">0.84</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.3.2.6">0.84</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the aggregate BLiMP accuracy scores for maximally filtered data across all five time slices (1750-1820, 1820-1850, 1850-1880, 1880-1910, 1910-1940).  It compares the performance of both the pretrained and finetuned models, showing the overall accuracy achieved by each model type across the different historical periods.  The maximally filtered data ensures that only words appearing in all models' vocabularies are included, providing a consistent comparison across time slices.
> <details>
> <summary>read the caption</summary>
> Table 3: Aggregate maximally filtered BLiMP accuracy across all timeslices.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">1750-1820</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1">1820-50</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.4.1">1850-80</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.5.1">1880-1910</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.6.1">1910-40</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.2.1.1">pretrained</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.2.1.2">0.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.2.1.3">0.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.2.1.4">0.33</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.2.1.5">0.82</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.2.1.6">0.91</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.3.2.1">finetuned</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.3.2.2">0.92</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.3.2.3">0.96</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.3.2.4">0.98</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.3.2.5">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.3.2.6">0.99</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the accuracy scores achieved by both pretrained and finetuned models on the 'only NPI licenser present' task within the BLiMP benchmark.  The task specifically assesses the models' ability to correctly identify and use 'only' as a negative polarity item (NPI) licenser in different time slices representing historical language data.  The results highlight a key difference between pretrained and finetuned models: pretrained models gradually start showing a preference for using 'only' over 'even' as the NPI licenser in later historical time periods, while the finetuned models perform consistently well across all periods. This indicates the pretrained models better capture diachronic changes in grammatical usage over time.
> <details>
> <summary>read the caption</summary>
> Table 4: Accuracy for maximally filtered BLiMP ”only NPI licenser present” task across all timeslices. Our pretrained models begin to prefer ”only” to ”even” in later slices.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1.1">Sentence</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.2.1">
<span class="ltx_p" id="S4.T5.1.1.1.2.1.1" style="width:119.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.2.1.1.1">Definition</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1">Year</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.4.1">Pretrain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1">Finetune</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.2.1.1.1">
<span class="ltx_p" id="S4.T5.1.2.1.1.1.1" style="width:113.8pt;">I’m going to sell my car… No more police towing [it] ..to a car <span class="ltx_text ltx_font_bold" id="S4.T5.1.2.1.1.1.1.1">pound</span>.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.2.1.2.1">
<span class="ltx_p" id="S4.T5.1.2.1.2.1.1" style="width:119.5pt;">A place in which vehicles impounded by the police or other authorities are kept…</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.3">1970</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.4">101</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.5">0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T5.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.3.2.1.1">
<span class="ltx_p" id="S4.T5.1.3.2.1.1.1" style="width:113.8pt;">Hill … which won three gold and a <span class="ltx_text ltx_font_bold" id="S4.T5.1.3.2.1.1.1.1">silver</span>.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T5.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.3.2.2.1">
<span class="ltx_p" id="S4.T5.1.3.2.2.1.1" style="width:119.5pt;">Elliptical for silver medal n.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.3.2.3">1960</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.3.2.4">7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.3.2.5">0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents two examples of cloze tasks, where words are masked at the end of sentences.  The examples are drawn from the time slice 1750-1820. For each example, the table shows the sentence, its definition, the year the word sense first appeared, the rank of the correct completion for the pretrained model and the rank of the correct completion for the finetuned model. This allows for a comparison of the performance of the two model types on word prediction within a specific historical context.
> <details>
> <summary>read the caption</summary>
> Table 5: Two examples for time slice 1750-1820 with their rank per model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.1.1.1.1.1">
<span class="ltx_p" id="S4.T6.1.1.1.1.1.1" style="width:136.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.1.1.1">Sentence</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.1.1.1.2.1">
<span class="ltx_p" id="S4.T6.1.1.1.2.1.1" style="width:176.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.2.1.1.1">Definition</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.3.1">Sense Year</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T6.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.1.2.1.1.1">
<span class="ltx_p" id="S4.T6.1.2.1.1.1.1" style="width:136.6pt;">They have nowhere to go. This is—how do the Americans say it?—the end of the <span class="ltx_text ltx_font_bold" id="S4.T6.1.2.1.1.1.1.1">line</span>.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T6.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.1.2.1.2.1">
<span class="ltx_p" id="S4.T6.1.2.1.2.1.1" style="width:176.4pt;">V. A direction or course of movement. the end of the line ( transferred and figurative ). Cf. the end of the road at end n..</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.1.2.1.3">1948</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of how two different language models, a finetuned model and a pretrained model, ranked the word 'line' in a cloze task. The new meaning of 'line' being tested, as defined in the Oxford English Dictionary (OED), is 'the end of the line' (figurative). This table showcases that while the finetuned model correctly identified the new meaning of 'line', placing it at the highest rank, the pretrained model also recognized this sense and assigned it a relatively high rank (#14). This is notable as the pretrained model did not have access to as much data as the finetuned model.
> <details>
> <summary>read the caption</summary>
> Table 6: The new sense of ”line” is accepted by the finteuned (rank #1) and pretrained (#14).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T7.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.1.2.1">1750-1820</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.1.3.1">1820-1850</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.1.4.1">1850-1880</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.1.5.1">1880-1910</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.1.6.1">1910-1940</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T7.1.2.1.1">Pretrained</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T7.1.2.1.2">41</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.2.1.3">NaN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.2.1.4">NaN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.2.1.5">NaN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.2.1.6">NaN</td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T7.1.3.2.1">Finetuned</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T7.1.3.2.2">18</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.3.2.3">19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.3.2.4">11</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.3.2.5">14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.3.2.6">11</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the rank of the word 'cholera' in the top k predictions generated by different language models when completing a sentence. Specifically, it shows the ranks for the pretrained models from five different time slices (1750-1820, 1820-1850, 1850-1880, 1880-1910, and 1910-1940).  For comparison, it also includes the ranks given by two larger baseline models: Llama3-8B and BabyLlama-2. The 'NaN' values indicate that the word 'cholera' was not among the top k predictions for that specific model and time slice.
> <details>
> <summary>read the caption</summary>
> Table 7: Rank of ”cholera” completion. Llama3-8B ranks it 8, BabyLlama-2 ranks it 57. NaN indicates it is outside the top k.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T8.3.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.3.4.1.1.1">Hyperparameters (DoRA)</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.3.4.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.3.4.1.2.1">LLaMA3-8B</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.1.1">Rank <math alttext="r" class="ltx_Math" display="inline" id="A1.T8.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.m1.1a"><mi id="A1.T8.1.1.1.m1.1.1" xref="A1.T8.1.1.1.m1.1.1.cmml">r</mi><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.m1.1b"><ci id="A1.T8.1.1.1.m1.1.1.cmml" xref="A1.T8.1.1.1.m1.1.1">𝑟</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.m1.1c">r</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.m1.1d">italic_r</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2">16</td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.2.2.1"><math alttext="\alpha" class="ltx_Math" display="inline" id="A1.T8.2.2.1.m1.1"><semantics id="A1.T8.2.2.1.m1.1a"><mi id="A1.T8.2.2.1.m1.1.1" xref="A1.T8.2.2.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A1.T8.2.2.1.m1.1b"><ci id="A1.T8.2.2.1.m1.1.1.cmml" xref="A1.T8.2.2.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.2.2.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A1.T8.2.2.1.m1.1d">italic_α</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.2">32</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.5.2.1">Dropout</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.5.2.2">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.6.3.1">Optimizer</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.6.3.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.3.2">LR</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.1"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T8.3.3.1.m1.1"><semantics id="A1.T8.3.3.1.m1.1a"><mrow id="A1.T8.3.3.1.m1.1.1" xref="A1.T8.3.3.1.m1.1.1.cmml"><mn id="A1.T8.3.3.1.m1.1.1.2" xref="A1.T8.3.3.1.m1.1.1.2.cmml">1</mn><mo id="A1.T8.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T8.3.3.1.m1.1.1.1.cmml">×</mo><msup id="A1.T8.3.3.1.m1.1.1.3" xref="A1.T8.3.3.1.m1.1.1.3.cmml"><mn id="A1.T8.3.3.1.m1.1.1.3.2" xref="A1.T8.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T8.3.3.1.m1.1.1.3.3" xref="A1.T8.3.3.1.m1.1.1.3.3.cmml"><mo id="A1.T8.3.3.1.m1.1.1.3.3a" xref="A1.T8.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T8.3.3.1.m1.1.1.3.3.2" xref="A1.T8.3.3.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T8.3.3.1.m1.1b"><apply id="A1.T8.3.3.1.m1.1.1.cmml" xref="A1.T8.3.3.1.m1.1.1"><times id="A1.T8.3.3.1.m1.1.1.1.cmml" xref="A1.T8.3.3.1.m1.1.1.1"></times><cn id="A1.T8.3.3.1.m1.1.1.2.cmml" type="integer" xref="A1.T8.3.3.1.m1.1.1.2">1</cn><apply id="A1.T8.3.3.1.m1.1.1.3.cmml" xref="A1.T8.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T8.3.3.1.m1.1.1.3.1.cmml" xref="A1.T8.3.3.1.m1.1.1.3">superscript</csymbol><cn id="A1.T8.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T8.3.3.1.m1.1.1.3.2">10</cn><apply id="A1.T8.3.3.1.m1.1.1.3.3.cmml" xref="A1.T8.3.3.1.m1.1.1.3.3"><minus id="A1.T8.3.3.1.m1.1.1.3.3.1.cmml" xref="A1.T8.3.3.1.m1.1.1.3.3"></minus><cn id="A1.T8.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T8.3.3.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.3.3.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.3.3.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.7.4.1">LR Scheduler</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.7.4.2">Linear</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.8.5.1">Batch size</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.8.5.2">16</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.9.6.1">Warmup Steps</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.9.6.2">100</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.10.7.1">Epochs</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.10.7.2">3</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T8.3.11.8.1">Where</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.3.11.8.2">Q, K, V, Up, Down</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameter settings used for the DoRA (Directly Optimized Rank Adaptation) finetuning technique applied to the LLaMA3-8B language model.  It lists specific values for parameters such as rank, alpha, dropout rate, optimizer, learning rate, learning rate scheduler, batch size, warmup steps, and the number of epochs.  Understanding these settings is crucial for replicating the experiment's results and analyzing the impact of DoRA on model performance.
> <details>
> <summary>read the caption</summary>
> Table 8: Hyperparameter configurations of DoRA for LLaMA3-8B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T9.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T9.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A1.T9.2.3.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.2.3.1.2"><span class="ltx_text ltx_font_bold" id="A1.T9.2.3.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T9.1.1.2">Learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.1"><math alttext="7\cdot 10^{-4}" class="ltx_Math" display="inline" id="A1.T9.1.1.1.m1.1"><semantics id="A1.T9.1.1.1.m1.1a"><mrow id="A1.T9.1.1.1.m1.1.1" xref="A1.T9.1.1.1.m1.1.1.cmml"><mn id="A1.T9.1.1.1.m1.1.1.2" xref="A1.T9.1.1.1.m1.1.1.2.cmml">7</mn><mo id="A1.T9.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.1.1.1.m1.1.1.1.cmml">⋅</mo><msup id="A1.T9.1.1.1.m1.1.1.3" xref="A1.T9.1.1.1.m1.1.1.3.cmml"><mn id="A1.T9.1.1.1.m1.1.1.3.2" xref="A1.T9.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.1.1.1.m1.1.1.3.3" xref="A1.T9.1.1.1.m1.1.1.3.3.cmml"><mo id="A1.T9.1.1.1.m1.1.1.3.3a" xref="A1.T9.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.1.1.1.m1.1.1.3.3.2" xref="A1.T9.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.1.1.1.m1.1b"><apply id="A1.T9.1.1.1.m1.1.1.cmml" xref="A1.T9.1.1.1.m1.1.1"><ci id="A1.T9.1.1.1.m1.1.1.1.cmml" xref="A1.T9.1.1.1.m1.1.1.1">⋅</ci><cn id="A1.T9.1.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T9.1.1.1.m1.1.1.2">7</cn><apply id="A1.T9.1.1.1.m1.1.1.3.cmml" xref="A1.T9.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.1.1.1.m1.1.1.3.1.cmml" xref="A1.T9.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T9.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.1.1.1.m1.1.1.3.2">10</cn><apply id="A1.T9.1.1.1.m1.1.1.3.3.cmml" xref="A1.T9.1.1.1.m1.1.1.3.3"><minus id="A1.T9.1.1.1.m1.1.1.3.3.1.cmml" xref="A1.T9.1.1.1.m1.1.1.3.3"></minus><cn id="A1.T9.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.1.1.1.m1.1c">7\cdot 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.1.1.1.m1.1d">7 ⋅ 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.4.2">
<td class="ltx_td ltx_align_left" id="A1.T9.2.4.2.1">Number of epochs</td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.4.2.2">8</td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.5.3">
<td class="ltx_td ltx_align_left" id="A1.T9.2.5.3.1">Batch size</td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.5.3.2">128</td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.6.4">
<td class="ltx_td ltx_align_left" id="A1.T9.2.6.4.1">Weight decay</td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.6.4.2">5</td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T9.2.2.1">Distillation <math alttext="\alpha" class="ltx_Math" display="inline" id="A1.T9.2.2.1.m1.1"><semantics id="A1.T9.2.2.1.m1.1a"><mi id="A1.T9.2.2.1.m1.1.1" xref="A1.T9.2.2.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A1.T9.2.2.1.m1.1b"><ci id="A1.T9.2.2.1.m1.1.1.cmml" xref="A1.T9.2.2.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.2.2.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A1.T9.2.2.1.m1.1d">italic_α</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T9.2.2.2">0.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the training and distillation process of the BabyLlama-2 model.  It includes details such as the learning rate, number of epochs, batch size, weight decay, and the distillation alpha value. These parameters are crucial in controlling the training process and achieving optimal model performance. The table provides a concise summary of the key settings used to fine-tune the BabyLlama-2 language model, which is vital for reproducibility and understanding the model's training methodology.
> <details>
> <summary>read the caption</summary>
> Table 9: Training and distillation hyperparameters of BabyLlama-2
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T10.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T10.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.1.2.2.1">Vocabulary size</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.2.2.2">16,000</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.3.3">
<td class="ltx_td ltx_align_left" id="A1.T10.1.3.3.1">Number of layers</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.3.3.2">32</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.4.4">
<td class="ltx_td ltx_align_left" id="A1.T10.1.4.4.1">Number of heads</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.4.4.2">15</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.5.5">
<td class="ltx_td ltx_align_left" id="A1.T10.1.5.5.1">Number of KV heads</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.5.5.2">5</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.6.6">
<td class="ltx_td ltx_align_left" id="A1.T10.1.6.6.1">Embedding dimension</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.6.6.2">960</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.7.7">
<td class="ltx_td ltx_align_left" id="A1.T10.1.7.7.1">Hidden dimension</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.7.7.2">2560</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T10.1.8.8.1">Total parameters</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T10.1.8.8.2">345M</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture of the BabyLlama-2 language model, including the vocabulary size, number of layers, number of heads, number of key/value heads, embedding dimension, hidden dimension, and total number of parameters.
> <details>
> <summary>read the caption</summary>
> Table 10: BabyLlama-2 Model Architecture.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T11.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T11.1.1.1">
<td class="ltx_td ltx_border_tt" id="A2.T11.1.1.1.1"></td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T11.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T11.1.1.1.2.1">+/-1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T11.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T11.1.1.1.3.1">+/-10</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T11.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T11.1.1.1.4.1">DQ +/-1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T11.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T11.1.1.1.5.1">DQ +/-10</span></th>
</tr>
<tr class="ltx_tr" id="A2.T11.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T11.1.2.2.1">Llama3.3-70B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T11.1.2.2.2">0.63</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T11.1.2.2.3">0.81</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T11.1.2.2.4">0.70</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T11.1.2.2.5">0.88</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.3.3">
<td class="ltx_td ltx_align_left" id="A2.T11.1.3.3.1">GPT-4</td>
<td class="ltx_td ltx_align_left" id="A2.T11.1.3.3.2">0.74</td>
<td class="ltx_td ltx_align_left" id="A2.T11.1.3.3.3">0.89</td>
<td class="ltx_td ltx_align_left" id="A2.T11.1.3.3.4">0.87</td>
<td class="ltx_td ltx_align_left" id="A2.T11.1.3.3.5">0.99</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T11.1.4.4.1">GPT-4o</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T11.1.4.4.2">0.82</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T11.1.4.4.3">0.84</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T11.1.4.4.4">0.96</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T11.1.4.4.5">0.94</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of three different Large Language Models (LLMs) on a work date attribution task.  The LLMs were evaluated on their ability to correctly predict the publication year of various works, using different tolerance levels.  The tolerance levels represent acceptable differences in years between the LLM's prediction and the actual publication year.  A tolerance of +/-1 year means the LLM's prediction must be within one year of the actual year, whereas a tolerance of +/-10 years allows a difference of up to 10 years. The 'DQ' column indicates whether or not predictions with very large errors (more than +/-50 years from the ground truth) were excluded in calculating the results. This helps evaluate how sensitive the models are to extreme errors.
> <details>
> <summary>read the caption</summary>
> Table 11: Performance on work date attribution per LLM. +/- indicates year delta tolerance threshold, DQ indicates that extreme variations from the ground scores (+/-50) were not considered
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T12.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T12.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T12.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A3.T12.2.3.1.1.1">Band</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T12.2.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.T12.2.3.1.2.1">Freq./mil.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T12.2.3.1.3"><span class="ltx_text ltx_font_bold" id="A3.T12.2.3.1.3.1">% in OED</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T12.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T12.1.1.2">8</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.1">
<math alttext="&gt;" class="ltx_Math" display="inline" id="A3.T12.1.1.1.m1.1"><semantics id="A3.T12.1.1.1.m1.1a"><mo id="A3.T12.1.1.1.m1.1.1" xref="A3.T12.1.1.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A3.T12.1.1.1.m1.1b"><gt id="A3.T12.1.1.1.m1.1.1.cmml" xref="A3.T12.1.1.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.1.1.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A3.T12.1.1.1.m1.1d">&gt;</annotation></semantics></math>1,000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.3">0.02%</td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T12.2.4.1.1">7</th>
<td class="ltx_td ltx_align_center" id="A3.T12.2.4.1.2">100 – 1,000</td>
<td class="ltx_td ltx_align_center" id="A3.T12.2.4.1.3">0.18%</td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T12.2.5.2.1">6</th>
<td class="ltx_td ltx_align_center" id="A3.T12.2.5.2.2">10 – 100</td>
<td class="ltx_td ltx_align_center" id="A3.T12.2.5.2.3">1%</td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T12.2.6.3.1">5</th>
<td class="ltx_td ltx_align_center" id="A3.T12.2.6.3.2">1 – 10</td>
<td class="ltx_td ltx_align_center" id="A3.T12.2.6.3.3">4%</td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T12.2.7.4.1">4</th>
<td class="ltx_td ltx_align_center" id="A3.T12.2.7.4.2">0.1 – 1</td>
<td class="ltx_td ltx_align_center" id="A3.T12.2.7.4.3">11%</td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T12.2.8.5.1">3</th>
<td class="ltx_td ltx_align_center" id="A3.T12.2.8.5.2">0.01 – 0.1</td>
<td class="ltx_td ltx_align_center" id="A3.T12.2.8.5.3">20%</td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T12.2.2.2">2</th>
<td class="ltx_td ltx_align_center" id="A3.T12.2.2.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="A3.T12.2.2.1.m1.1"><semantics id="A3.T12.2.2.1.m1.1a"><mo id="A3.T12.2.2.1.m1.1.1" xref="A3.T12.2.2.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="A3.T12.2.2.1.m1.1b"><lt id="A3.T12.2.2.1.m1.1.1.cmml" xref="A3.T12.2.2.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.2.2.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="A3.T12.2.2.1.m1.1d">&lt;</annotation></semantics></math>0.01</td>
<td class="ltx_td ltx_align_center" id="A3.T12.2.2.3">45%</td>
</tr>
<tr class="ltx_tr" id="A3.T12.2.9.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A3.T12.2.9.6.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.2.9.6.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.2.9.6.3">18%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the frequency distribution of words in the corpus used for the study.  It categorizes words into eight bands based on their frequency per million words, ranging from very frequent words (appearing more than 1,000 times per million words) to very infrequent words (appearing less than once per million words).  For each band, it presents the number of words falling into that category and also shows the percentage of these words that are not marked as obsolete in the Oxford English Dictionary (OED). This provides context on the relative rarity and currency of words within the corpus.
> <details>
> <summary>read the caption</summary>
> Table 12: Word Frequency Bands and their respective counts per a million words and the percentage of non-obsolete OED entries
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05523/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05523/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}