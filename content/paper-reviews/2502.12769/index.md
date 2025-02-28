---
title: "How Much Do LLMs Hallucinate across Languages? On Multilingual Estimation of LLM Hallucination in the Wild"
summary: "Multilingual LLMs Hallucinate! This study measures hallucination across 30 languages."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 WüNLP, CAIDAS, University of Würzburg",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12769 {{< /keyword >}}
{{< keyword icon="writer" >}} Saad Obaid ul Islam et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12769" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12769" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12769/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) tendency to generate non-factual/unfaithful responses poses a risk to their global utility. The majority of research on detecting LLM hallucination are English-centric. They focus on machine translation/summarization, tasks that are less common compared to open information seeking. The study aims to quantify LLM hallucination across languages in knowledge-intensive question answering.



The study trains a multilingual hallucination detection model and conduct a large-scale study across 30 languages/6 LLM families. It uses MT to generate training data in other languages. Silver/gold test sets estimate hallucination rates, using a QA dataset with LLM-generated prompts and Wikipedia articles. It finds that, while LLMs generate longer responses, there is no correlation between length-normalized hallucination rates and digital representation. Smaller LLMs have larger hallucination rates.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLM hallucination rates vary across languages. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Smaller LLMs tend to hallucinate more than larger ones. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Hallucination rate does not correlate with the language representation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This multilingual hallucination study is vital! It tackles the critical issue of **LLM accuracy across languages**, moving beyond English-centric approaches. The findings on model size and language support impacting hallucination rates open new research avenues for **improving LLM reliability globally**.

------
#### Visual Insights



![](https://arxiv.org/html/2502.12769/extracted/6219631/images/estimation_pipeline.png)

> 🔼 This figure illustrates the methodology used in the paper to estimate the hallucination rates of large language models (LLMs) across multiple languages. The process involves two main stages: (1) Hallucination detection model training and evaluation, and (2) Hallucination rate estimation.  The left side depicts the development of a multilingual hallucination detection model trained on translated data, then evaluated using a newly created benchmark called mFAVA. mFAVA includes both machine-generated (silver) and human-annotated (gold) data for a subset of languages. The right side shows how hallucination rates are estimated for 30 languages and 6 LLM families using the trained detection model's performance on a large-scale knowledge-intensive QA dataset.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of our approach for estimating hallucination rates in the wild. Hallucination Detection and Model Evaluation (left side): (1) We automatically translate the English FAVA Mishra et al. (2024) dataset to 30 languages and train our multilingual hallucination detection (HD) model on this (noisy) multilingual training data; (2) We synthesize a silver multilingual hallucination evaluation dataset by prompting a state-of-the-art LLM (GPT-4) to introduce hallucinations in its answers to knowledge-seeking questions; for a subset of five high-resource languages, we additionally collect gold (i.e., human) hallucination annotations; we dub this 30-language evaluation benchmark mFAVA. We use mFAVA to estimate HD model’s per-language performances (precision and recall). Hallucination Rate Estimation in the Wild (right side): (3) We estimate the hallucination rates for all 30 languages and six different LLM families from the number of detections of the HD model and its performance.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Very Unlikely</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Unlikely</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">Neutral</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">Likely</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.5.1">Very Likely</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.8%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">24.7%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">13.0%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">25.3%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.2.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">15.2%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the inter-annotator agreement results on the likelihood of augmented text fooling human readers. The data is categorized into five levels of likelihood: Very Unlikely, Unlikely, Neutral, Likely, and Very Likely, representing the probability that a human would believe the augmented text without knowing it contains hallucinations. The results are shown separately for five high-resource languages: Arabic, Chinese, German, Russian, and Turkish, providing insights into cross-lingual differences in how easily LLMs' hallucinations can deceive human readers.
> <details>
> <summary>read the caption</summary>
> Table 1: Annotator ratings for probability of augmented text fooling the reader for the 5 gold languages.
> </details>





### In-depth insights


#### LLM Hallucination
**LLM hallucination**, a key challenge, involves models generating non-factual or unfaithful content. This impacts reliability, especially in open-ended tasks. Detection focuses on identifying hallucinated spans, while evaluation quantifies severity. Mitigation aims to reduce these tendencies. Current research is English-centric, often concentrated on tasks like translation. Future work needs to address hallucination in diverse languages and real-world use cases.

#### Multilingual MFAVA
From the paper, the approach to create Multilingual MFAVA involves **translating an English hallucination dataset (FAVA) into 30 languages to train a multilingual hallucination detection model**. This tackles the English-centric bias and limited multilingual benchmarks, generating 'silver' (LLM-created) data for evaluation in more languages. The effort further includes manually annotating gold data for five high-resource languages. It then allows for the validation of using silver data for hallucination estimation in other languages. This tackles the multilingual gap in hallucination detection.

#### Silver vs. Gold
In the context of LLM hallucination research, the "Silver vs. Gold" paradigm refers to using **LLM-generated (silver) vs. human-annotated (gold) data** for training or evaluating hallucination detection models. **Gold data**, while more reliable, is expensive to acquire, especially across many languages. The paper explores if **silver data** can reliably approximate gold data performance. This is validated by comparing hallucination rates with these two kind of datasets. This makes large-scale multilingual hallucination evaluation feasible, if proven reliable.  If estimates from silver data can be relied upon, this opens doors for understanding hallucination behaviors in more languages and larger models.

#### Larger is Better?
The notion of "Larger is Better?" in language models is nuanced. **Larger models often exhibit improved capabilities due to increased parameter count and training data, leading to better generalization and reasoning.** However, there are caveats. **Larger models can be computationally expensive and may overfit if not regularized.**  **The effectiveness of a model isn't solely determined by size but also training data, architecture and efficient training techniques.**  Smaller, well-trained models can sometimes outperform larger models, highlighting the importance of optimization and data quality. Model size needs to be considered with other crucial factors.

#### Language-Agnostic
**Language-agnostic** models aim to perform consistently across different languages, irrespective of their linguistic features. In the context of hallucinations in LLMs, this is crucial. A language-agnostic LLM should ideally maintain a uniform rate of factual accuracy across languages. Developing and evaluating such models require multilingual datasets and metrics capable of assessing performance beyond English. Overcoming biases inherent to specific languages is key. Evaluation datasets for language-agnostic models need meticulous consideration of how hallucinations manifest differently across languages. Developing language-agnostic models, which mitigate hallucinations universally, promises a more reliable and equitable AI.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12769/x1.png)

> 🔼 Figure 2 presents a comparison of inter-annotator agreement (IAA) and the agreement between human annotations and GPT-4 generated hallucinations for a task involving hallucination detection.  The left part shows IAA scores for both binary (span detection) and categorical (hallucination type classification) annotation schemes across five high-resource languages. The right part displays the agreement between human annotators and GPT-4's hallucination labels, showing separate scores for agreement on spans alone and for agreement on both spans and hallucination types.
> <details>
> <summary>read the caption</summary>
> Figure 2: 1) Inter-annotator agreement (IAA) for hallucination span detection (Binary; blue bars) and classification (Category; orange bars) for five high-resource languages; 2) Hallucination span and class agreement between human labels and GPT-4 generated hallucinations (Silver-Gold; agreement on spans only: red bars; agreement on spans and hallucination type: green bars).
> </details>



![](https://arxiv.org/html/2502.12769/x2.png)

> 🔼 Figure 3 displays a comparison of hallucination rates across five languages (Arabic, Chinese, German, Russian, and Turkish) for three different Large Language Models (LLMs).  Hallucination rates (𝐻𝑅est,l) are calculated using precision (Pl) and recall (Rl) estimates from a multilingual hallucination detection model. The figure presents two sets of results: one using a silver standard (mFAVA-Silver), created by automatically translating an English dataset and another using a gold standard (mFAVA-Gold) with human annotations for a subset of the languages.  The top row shows results based on the mFAVA-Silver dataset, and the bottom row shows results based on the mFAVA-Gold dataset. A strong positive correlation (r = 0.83, p = 1.26e-04) is observed between the two sets of hallucination rate estimates, indicating that the silver standard provides a reasonable approximation of the gold standard.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of hallucination rate estimates 𝐻𝑅est,lsubscript𝐻𝑅est𝑙\mathit{HR}_{\text{est},l}italic_HR start_POSTSUBSCRIPT est , italic_l end_POSTSUBSCRIPT (mean ±plus-or-minus\pm± std over five LLM runs) for Arabic (AR), Chinese (ZH), German (DE), Russian (RU), and Turkish (TR) for 3 LLMs based on the estimates of Plsubscript𝑃𝑙\mathit{P}_{l}italic_P start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT and Rlsubscript𝑅𝑙\mathit{R}_{l}italic_R start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT of the Multi (Bidirect) model on (1) mFAVA-Silver (top row) and (2) mFAVA-Gold (bottom row). The two sets of estimates are highly correlated (r=0.83,p=1.26⁢e−04)formulae-sequence𝑟0.83𝑝1.26𝑒04(r=0.83,p=1.26e-04)( italic_r = 0.83 , italic_p = 1.26 italic_e - 04 ).
> </details>



![](https://arxiv.org/html/2502.12769/x3.png)

> 🔼 This figure displays the average hallucination rates for 30 different languages across 11 large language models (LLMs). Each data point represents the mean hallucination rate calculated from 15 individual estimates.  These estimates were derived by applying three separate instances of a hallucination detection model to five different sets of responses generated by each LLM for each language.  The figure visually represents how these hallucination rates vary across different languages (arranged vertically) and LLMs (arranged horizontally). Generally, the hallucination rates increase from the top to the bottom and from left to right.
> <details>
> <summary>read the caption</summary>
> Figure 4: Mean estimates of in-the-wild hallucination rates (±plus-or-minus\pm± std) for 30 languages and 11 LLMs. Each mean score is an average of 15 𝐻𝑅est,lsubscript𝐻𝑅est𝑙\mathit{HR}_{\text{est},l}italic_HR start_POSTSUBSCRIPT est , italic_l end_POSTSUBSCRIPT estimates, (3 different HD model instances applied to 5 different LLM responses). Average rates increase from top to bottom (over languages) and from left to right (over LLMs).
> </details>



![](https://arxiv.org/html/2502.12769/x4.png)

> 🔼 This figure displays the correlation between the number of hallucinations and the average response length for smaller language models.  Each subplot represents a different language model, showing a scatter plot of average response length against the number of hallucinated tokens. A trend line is also included to visually represent the correlation.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2502.12769/x5.png)

> 🔼 This figure displays the correlation between the average response length and the number of hallucinations detected by the model for larger language models.  It shows scatter plots for each of several models, with the x-axis representing average response length and the y-axis representing the number of hallucinated tokens. The lines of best fit for each model are also shown to visualize the trend between response length and hallucination count.  The Pearson correlation coefficient and p-value are provided for each model, indicating the statistical significance of the relationship.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2502.12769/x6.png)

> 🔼 Figure 7c displays the correlation between the number of hallucinated tokens and the average response length for larger language models.  It shows scatter plots and Pearson correlation coefficients for several different LLMs, revealing a strong positive correlation for most models. This suggests that longer responses tend to contain more hallucinated tokens, although the rate of hallucination (per token) may not necessarily increase.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2502.12769/x7.png)

> 🔼 Figure 5 presents a threefold analysis of hallucination rates in large language models (LLMs).  Panel (a) compares hallucination rates between smaller and larger versions of the same LLMs, showing that larger models exhibit significantly lower hallucination rates (as indicated by the p-values from t-tests displayed on the bars).  Panel (b) illustrates a positive correlation between the number of languages supported by an LLM and its overall hallucination rate (averaged across all 30 languages examined). This suggests that models supporting more languages tend to hallucinate more often. Finally, panel (c) demonstrates that, on average, longer LLM responses contain more absolute hallucinated tokens (H<sub>detected,l</sub>), although the rate of hallucination per token might not show a significant trend.
> <details>
> <summary>read the caption</summary>
> Figure 5: 5(a) Larger models hallucinate significantly less than smaller ones. Bars are labeled with p𝑝pitalic_p-values from t𝑡titalic_t-test. 5(b) Correlation between hallucination rates (averaged over all 30 languages) and the officially declared number of supported languages. 5(c) On average, as response length increases, so do the absolute hallucinations Hdetected,lsubscript𝐻detected𝑙\mathit{H}_{\text{detected},l}italic_H start_POSTSUBSCRIPT detected , italic_l end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2502.12769/x8.png)

> 🔼 This figure shows a bar chart visualizing the distribution of six different types of hallucinations across 30 languages in the mFAVA-Silver dataset.  Each bar represents a language, and the height of each colored segment within the bar corresponds to the proportion of hallucinations of a specific type (Entity, Relation, Invented, Contradictory, Unverifiable, Subjective) in that language. This provides a visual comparison of the prevalence of various hallucination categories across diverse languages within the synthetic dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: Distribution of 6 labels across 30 languages in mFava-Silver dataset.
> </details>



![](https://arxiv.org/html/2502.12769/x9.png)

> 🔼 This figure displays the correlation between the number of hallucinations and the average response length generated by smaller language models.  Each subplot represents a different language model, showing the relationship as a scatter plot with a regression line. The Pearson correlation coefficient and p-value are provided for each model, indicating the strength and statistical significance of the correlation.
> <details>
> <summary>read the caption</summary>
> (a) Hallucinations vs response length correlation of smaller models.
> </details>



![](https://arxiv.org/html/2502.12769/x10.png)

> 🔼 This figure displays the correlation between the number of hallucinations and the average response length for larger language models.  It visually represents how the length of a model's response relates to the frequency of hallucinations within those responses.  Each data point likely represents a specific language, or possibly an average across a group of languages, with larger language models used to generate the responses.
> <details>
> <summary>read the caption</summary>
> (b) Hallucinations vs response length correlation of bigger models.
> </details>



![](https://arxiv.org/html/2502.12769/extracted/6219631/images/annotation_instruction.png)

> 🔼 This figure shows the correlation between the number of hallucinations and the average response length for larger language models.  It visually represents the relationship between the length of text generated by the models and how many factual errors or inconsistencies they contain. The results from several large language models are presented, allowing for a comparison of their performance in terms of both the length of their output and its accuracy.
> <details>
> <summary>read the caption</summary>
> (c) Hallucinations vs response length correlation of bigger models.
> </details>



![](https://arxiv.org/html/2502.12769/extracted/6219631/images/annotation_instruction_2.png)

> 🔼 This figure displays scatter plots illustrating the correlation between the average length of LLM responses and the number of hallucinations detected within those responses.  The plots are separated by LLM model, allowing for a comparison of the relationship across different models (both smaller and larger models are included). Each plot shows the Pearson correlation coefficient (r) and p-value, indicating the strength and statistical significance of the correlation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Per model correlations between hallucinations and response length.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.2.1">ENT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.3.1">REL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.4.1">INV</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.5.1">CON</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.6.1">UNV</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.7.1">SUB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.8.1">Total</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.1.1.2.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">RU</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">184</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">188</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">287</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">211</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.1.1.2.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">153</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1,088</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.1.3.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">AR</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">144</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">171</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">123</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">150</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.3.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">667</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.1.4.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">ZH</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">264</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">259</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">282</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">265</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.4.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">139</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1,227</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.1.5.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DE</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">546</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">311</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">324</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">333</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.5.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">238</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1,777</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.1.6.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">TR</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">149</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">288</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">244</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">161</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.6.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">149</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">1,018</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.1.1.7.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.7.6.1.1">Total</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.1.7.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1,287</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.1.7.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">145</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.1.7.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1,217</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.1.7.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1,260</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.1.7.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1,120</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.1.1.7.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">748</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.1.7.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">5,777</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of hallucination types found in a gold standard dataset across multiple languages.  The dataset consists of human-annotated text examples where specific spans of text are identified as containing hallucinations.  The types of hallucinations are categorized into six distinct classes: Entity, Relation, Invented, Contradictory, Unverifiable, and Subjective.  The table shows the frequency count of each type of hallucination found in each of the languages within the dataset, providing a granular view of the types and prevalence of LLM hallucinations in different linguistic contexts.
> <details>
> <summary>read the caption</summary>
> Table 2: Hallucinated span counts in the gold dataset across languages. ENT (Entity), REL (Relation), INV (Invented), CON (Contradictory), UNV (Unverifiable), SUB (Subjective).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S3.SS1.tab1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS1.tab1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S3.SS1.tab1.1.1.1.1"></td>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S3.SS1.tab1.1.1.1.2"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S3.SS1.tab1.1.1.1.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.SS1.tab1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.1.1.4.1">German</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.SS1.tab1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.1.1.5.1">Chinese</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.SS1.tab1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.1.1.6.1">Arabic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.SS1.tab1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.1.1.7.1">Russian</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S3.SS1.tab1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.1.1.8.1">Turkish</span></th>
</tr>
<tr class="ltx_tr" id="S3.SS1.tab1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.SS1.tab1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.1.1">Task</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.SS1.tab1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.2.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.SS1.tab1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.3.1">Context</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.4.1">Silver</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.5.1">Gold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.6.1">Silver</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.7.1">Gold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.8.1">Silver</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.9.1">Gold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.10"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.10.1">Silver</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.11"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.11.1">Gold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.12"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.12.1">Silver</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.SS1.tab1.1.2.2.13"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.2.2.13.1">Gold</span></th>
</tr>
<tr class="ltx_tr" id="S3.SS1.tab1.1.3.3">
<td class="ltx_td ltx_border_t" id="S3.SS1.tab1.1.3.3.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.SS1.tab1.1.3.3.2"><span class="ltx_text ltx_font_smallcaps" id="S3.SS1.tab1.1.3.3.2.1">Mono</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.SS1.tab1.1.3.3.3"><span class="ltx_text ltx_font_italic" id="S3.SS1.tab1.1.3.3.3.1">Bidirect</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.4">78.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.5">58.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.6">62.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.7">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.8">75.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.9">54.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.10">78.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.11">60.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.12">78.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.3.3.13">66.7</td>
</tr>
<tr class="ltx_tr" id="S3.SS1.tab1.1.4.4">
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.4.4.1">Binary</td>
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.4.4.2"><span class="ltx_text ltx_font_smallcaps" id="S3.SS1.tab1.1.4.4.2.1">Multi</span></td>
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.4.4.3"><span class="ltx_text ltx_font_italic" id="S3.SS1.tab1.1.4.4.3.1">Bidirect</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.4.4.4.1">89.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.5"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.4.4.5.1">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.6">69.7</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.7">58.7</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.8"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.4.4.8.1">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.9"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.4.4.9.1">61.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.10"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.4.4.10.1">89.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.11"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.4.4.11.1">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.12"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.4.4.12.1">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.4.4.13"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.4.4.13.1">72.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS1.tab1.1.5.5">
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.5.5.1">
<span class="ltx_ERROR undefined" id="S3.SS1.tab1.1.5.5.1.1">\cdashline</span>2-13</td>
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.5.5.2"><span class="ltx_text ltx_font_smallcaps" id="S3.SS1.tab1.1.5.5.2.1">Multi</span></td>
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.5.5.3"><span class="ltx_text ltx_font_italic" id="S3.SS1.tab1.1.5.5.3.1">Causal</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.4">81.8</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.5">59.6</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.6"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.5.5.6.1">76.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.7"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.5.5.7.1">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.8">75.3</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.9">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.10">75.8</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.11">55.6</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.12">75.7</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.5.5.13">67.3</td>
</tr>
<tr class="ltx_tr" id="S3.SS1.tab1.1.6.6">
<td class="ltx_td ltx_border_t" id="S3.SS1.tab1.1.6.6.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.SS1.tab1.1.6.6.2"><span class="ltx_text ltx_font_smallcaps" id="S3.SS1.tab1.1.6.6.2.1">Mono</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.SS1.tab1.1.6.6.3"><span class="ltx_text ltx_font_italic" id="S3.SS1.tab1.1.6.6.3.1">Bidirect</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.4">53.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.5">38.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.6">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.7">22.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.8">14.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.9">7.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.10">63.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.11">36.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.12">49.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.SS1.tab1.1.6.6.13">30.3</td>
</tr>
<tr class="ltx_tr" id="S3.SS1.tab1.1.7.7">
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.7.7.1">Category</td>
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.7.7.2"><span class="ltx_text ltx_font_smallcaps" id="S3.SS1.tab1.1.7.7.2.1">Multi</span></td>
<td class="ltx_td ltx_align_left" id="S3.SS1.tab1.1.7.7.3"><span class="ltx_text ltx_font_italic" id="S3.SS1.tab1.1.7.7.3.1">Bidirect</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.4"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.7.7.4.1">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.7.7.5.1">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.6">46.5</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.7">30.1</td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.8"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.7.7.8.1">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.9"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.7.7.9.1">37.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.10"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.7.7.10.1">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.11"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.7.7.11.1">41.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.12"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.7.7.12.1">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.SS1.tab1.1.7.7.13"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.7.7.13.1">51.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS1.tab1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.SS1.tab1.1.8.8.1">
<span class="ltx_ERROR undefined" id="S3.SS1.tab1.1.8.8.1.1">\cdashline</span>2-13</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.SS1.tab1.1.8.8.2"><span class="ltx_text ltx_font_smallcaps" id="S3.SS1.tab1.1.8.8.2.1">Multi</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.SS1.tab1.1.8.8.3"><span class="ltx_text ltx_font_italic" id="S3.SS1.tab1.1.8.8.3.1">Causal</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.4">68.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.5">43.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.6"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.8.8.6.1">56.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.7"><span class="ltx_text ltx_font_bold" id="S3.SS1.tab1.1.8.8.7.1">34.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.8">51.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.9">29.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.10">62.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.11">37.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.12">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.SS1.tab1.1.8.8.13">42.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the token-level F1 scores achieved by both multilingual and monolingual hallucination detection models.  The models were evaluated on the MFAVA benchmark, using both automatically generated (Silver) and human-annotated (Gold) datasets.  Two tasks are considered: binary classification (hallucination detection only) and category classification (hallucination detection and type classification). The models were fine-tuned with and without future token masking.  The best result in each column is bolded.
> <details>
> <summary>read the caption</summary>
> Table 3: Token-level F1 performance of multilingual (Multi) and monolingual (Mono) hallucination detection models for five high-resource languages with both Silver and Gold evaluation data in mFAVA. Performance reported for hallucination detection alone (Binary) and hallucination detection and type classification (Category). Models fine-tuned without (Bidirect) or with (Causal) future token masking. Bold: best result in each column.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A1.T4.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.2.1">ENT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.3.1">REL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.4.1">INV</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.5.1">CON</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.6.1">UNV</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.7.1">SUB</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T4.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.2.1.1.1">Count</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.1.2.1.2">11143</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.1.2.1.3">9036</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.1.2.1.4">5649</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.1.2.1.5">4024</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.1.2.1.6">5670</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.1.1.2.1.7">6396</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the distribution of hallucination categories across 30 languages in the MFAVA-Silver dataset.  The MFAVA-Silver dataset is a synthetically generated dataset used for evaluating the performance of a multilingual hallucination detection model. The categories of hallucinations include: Entity, Relation, Invented, Contradictory, Unverifiable, and Subjective. Each category represents a different type of factual error or inaccuracy generated by a large language model. The numbers presented in the table show the count of each hallucination type across the 30 languages, providing insight into the prevalence and distribution of different types of errors.
> <details>
> <summary>read the caption</summary>
> Table 4: Distribution of categories across 30 languages in silver set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T5.5.6.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.5.6.1.1.1">Parameter</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T5.5.6.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.5.6.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.5.7.2.1">Translate Train-Val Split</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T5.5.7.2.2">70:30</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.8.3.1">Seeds</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.8.3.2">[42, 47, 49]</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.9.4.1">Quantization</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.9.4.2">4-bit BF16</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.10.5.1">Model</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.10.5.2">Llama-3-8B (base)</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.1.2">GPUs</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.1">4<math alttext="\times" class="ltx_Math" display="inline" id="A1.T5.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.m1.1a"><mo id="A1.T5.1.1.1.m1.1.1" xref="A1.T5.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.m1.1b"><times id="A1.T5.1.1.1.m1.1.1.cmml" xref="A1.T5.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.m1.1d">×</annotation></semantics></math> H100</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.2.2.1">LoRA <math alttext="r" class="ltx_Math" display="inline" id="A1.T5.2.2.1.m1.1"><semantics id="A1.T5.2.2.1.m1.1a"><mi id="A1.T5.2.2.1.m1.1.1" xref="A1.T5.2.2.1.m1.1.1.cmml">r</mi><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.1.m1.1b"><ci id="A1.T5.2.2.1.m1.1.1.cmml" xref="A1.T5.2.2.1.m1.1.1">𝑟</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.1.m1.1c">r</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.1.m1.1d">italic_r</annotation></semantics></math>
</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.2.2.2">32</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.3.3.1">LoRA <math alttext="\alpha" class="ltx_Math" display="inline" id="A1.T5.3.3.1.m1.1"><semantics id="A1.T5.3.3.1.m1.1a"><mi id="A1.T5.3.3.1.m1.1.1" xref="A1.T5.3.3.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.1.m1.1b"><ci id="A1.T5.3.3.1.m1.1.1.cmml" xref="A1.T5.3.3.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.1.m1.1d">italic_α</annotation></semantics></math>
</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.3.3.2">32</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.11.6.1">LoRA Dropout</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.11.6.2">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.12.7.1">LoRA Target Modules</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.12.7.2">All</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.4.4.2">Epochs</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.4.4.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T5.4.4.1.m1.1"><semantics id="A1.T5.4.4.1.m1.1a"><mo id="A1.T5.4.4.1.m1.1.1" xref="A1.T5.4.4.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.1.m1.1b"><csymbol cd="latexml" id="A1.T5.4.4.1.m1.1.1.cmml" xref="A1.T5.4.4.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.1.m1.1d">∼</annotation></semantics></math>2 (until convergence)</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.13.8.1">Input Length</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.13.8.2">4096</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.5.2">Learning Rate</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.5.1"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T5.5.5.1.m1.1"><semantics id="A1.T5.5.5.1.m1.1a"><mrow id="A1.T5.5.5.1.m1.1.1" xref="A1.T5.5.5.1.m1.1.1.cmml"><mn id="A1.T5.5.5.1.m1.1.1.2" xref="A1.T5.5.5.1.m1.1.1.2.cmml">1</mn><mo id="A1.T5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T5.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A1.T5.5.5.1.m1.1.1.3" xref="A1.T5.5.5.1.m1.1.1.3.cmml"><mn id="A1.T5.5.5.1.m1.1.1.3.2" xref="A1.T5.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T5.5.5.1.m1.1.1.3.3" xref="A1.T5.5.5.1.m1.1.1.3.3.cmml"><mo id="A1.T5.5.5.1.m1.1.1.3.3a" xref="A1.T5.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T5.5.5.1.m1.1.1.3.3.2" xref="A1.T5.5.5.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.1.m1.1b"><apply id="A1.T5.5.5.1.m1.1.1.cmml" xref="A1.T5.5.5.1.m1.1.1"><times id="A1.T5.5.5.1.m1.1.1.1.cmml" xref="A1.T5.5.5.1.m1.1.1.1"></times><cn id="A1.T5.5.5.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.5.5.1.m1.1.1.2">1</cn><apply id="A1.T5.5.5.1.m1.1.1.3.cmml" xref="A1.T5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T5.5.5.1.m1.1.1.3.1.cmml" xref="A1.T5.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A1.T5.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T5.5.5.1.m1.1.1.3.2">10</cn><apply id="A1.T5.5.5.1.m1.1.1.3.3.cmml" xref="A1.T5.5.5.1.m1.1.1.3.3"><minus id="A1.T5.5.5.1.m1.1.1.3.3.1.cmml" xref="A1.T5.5.5.1.m1.1.1.3.3"></minus><cn id="A1.T5.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T5.5.5.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.14.9.1">Weight Decay</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.14.9.2">0.01</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.5.15.10.1">Batch Size</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.5.15.10.2">8</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T5.5.16.11.1">Gradient Accumulation</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T5.5.16.11.2">8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the training settings used for the multilingual hallucination detection models.  It specifies parameters such as the train-validation split, random seeds used for reproducibility, the quantization method employed, the model architecture (Llama-3-8B), the type of precision used (4-bit BF16), the hardware used for training (4x H100 GPUs), the LoRA (Low-Rank Adaptation) hyperparameters (r, alpha, dropout), the target layers for LoRA application, the number of training epochs (until convergence), the learning rate, weight decay, batch size, and gradient accumulation steps.
> <details>
> <summary>read the caption</summary>
> Table 5: Training Details
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1">Language</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.2.1">Language Family</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.3.1">Script</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.4.1">Test-Set</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.2.2.1">Arabic</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.2.2">Afro-Asiatic (Semitic)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.2.3">Arabic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.2.4">Gold</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.3.3.1">Chinese</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.3.2">Sino-Tibetan (Sinitic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.3.3">Chinese (Han)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.3.4">Gold</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.4.4.1">German</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.4.2">Indo-European (Germanic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.4.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.4.4">Gold</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.5.5.1">Russian</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.5.2">Indo-European (Slavic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.5.3">Cyrillic</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.5.4">Gold</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.6.6.1">Turkish</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.6.2">Turkic (Common Turkic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.6.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.6.4">Gold</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.7.7.1">Basque</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.7.7.2">Language Isolate</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.7.7.3">Latin</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.7.7.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.8.8.1">Cantonese</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.8.2">Sino-Tibetan (Sinitic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.8.3">Chinese (Han)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.8.8.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.9.9.1">Catalan</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.9.9.2">Indo-European (Romance)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.9.9.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.9.9.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.10.10.1">Czech</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.10.10.2">Indo-European (Slavic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.10.10.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.10.10.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.11.11.1">Esperanto</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.11.11.2">Constructed</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.11.11.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.11.11.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.12.12.1">Finnish</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.12.12.2">Uralic (Finnic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.12.12.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.12.12.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.13.13.1">French</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.13.13.2">Indo-European (Romance)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.13.13.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.13.13.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.14.14.1">Hebrew</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.14.14.2">Afro-Asiatic (Semitic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.14.14.3">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.14.14.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.15.15.1">Hindi</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.15.15.2">Indo-Aryan</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.15.15.3">Devanagari</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.15.15.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.16.16.1">Hungarian</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.16.16.2">Uralic (Ugric)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.16.16.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.16.16.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.17.17.1">Indonesian</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.17.17.2">Austronesian (Malayo-Polynesian)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.17.17.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.17.17.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.18.18.1">Italian</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.18.18.2">Indo-European (Romance)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.18.18.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.18.18.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.19.19.1">Japanese</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.19.19.2">Japonic</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.19.19.3">Kanji</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.19.19.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.20.20.1">Korean</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.20.20.2">Koreanic</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.20.20.3">Hangul</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.20.20.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.21.21.1">Latin</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.21.21.2">Indo-European (Italic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.21.21.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.21.21.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.22.22.1">Lithuanian</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.22.22.2">Indo-European (Slavic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.22.22.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.22.22.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.23.23.1">Malay</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.23.23.2">Austronesian (Malayo-Polynesian)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.23.23.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.23.23.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.24.24.1">Polish</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.24.24.2">Indo-European (Slavic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.24.24.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.24.24.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.25.25.1">Portuguese</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.25.25.2">Indo-European (Romance)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.25.25.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.25.25.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.26.26.1">Romanian</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.26.26.2">Indo-European (Romance)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.26.26.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.26.26.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.27.27.1">Serbian</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.27.27.2">Indo-European (Slavic)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.27.27.3">Cyrillic</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.27.27.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.28.28.1">Sindhi</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.28.28.2">Indo-Aryan</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.28.28.3">Arabic</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.28.28.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.29.29.1">Spanish</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.29.29.2">Indo-European (Romance)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.29.29.3">Latin</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.29.29.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.30.30.1">Urdu</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.30.30.2">Indo-Aryan</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.30.30.3">Arabic</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.30.30.4">Silver</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T7.1.31.31.1">Vietnamese</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.31.31.2">Austroasiatic (Vietic)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.31.31.3">Latin</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.31.31.4">Silver</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the prompt used to instruct GPT-4 to generate knowledge-intensive questions for the multilingual hallucination rate estimation task.  The prompt provides instructions in a template format, specifying the language and instructing the model to create two concise, knowledge-intensive questions based on a given Wikipedia article. These questions should require thorough reading of the reference text to answer.
> <details>
> <summary>read the caption</summary>
> Table 6: Prompt for generating knowledge-intensive queries.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.2.1">max_new_tokens</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.3.1">temperature</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.4.1">top_p</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.5.1">top_k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.6.1">repetition_penalty</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.7.1">do_sample</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.2.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Llama-3.x</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.2.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1024</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">True</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.3.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Aya</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T8.1.3.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1024</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">True</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.4.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen-2.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T8.1.4.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1024</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.9</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">20</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.05</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">True</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.5.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Mistral</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T8.1.5.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1024</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">50</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">True</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.1.6.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Gemma-2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T8.1.6.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1024</th>
<td class="ltx_td ltx_align_center" id="A1.T8.1.6.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.6.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.6.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.6.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.6.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">True</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T8.1.7.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">EuroLLM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T8.1.7.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1024</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.7.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.7.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.7.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.7.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.7.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">True</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the characteristics of the 30 languages used in the study's multilingual hallucination evaluation.  For each language, it lists its language family (according to Glottolog 5.0), its writing system (script), and the type of test set used to evaluate the language models' performance: either a gold standard test set (created with human annotations) or a silver standard test set (created using machine translation).  The gold standard datasets were created for five high-resource languages, while the others used silver standard datasets.
> <details>
> <summary>read the caption</summary>
> Table 7: Classification of languages by language family (based on Glottolog 5.0), script, and test-set status. Gold test sets are available for 5 languages, while the rest have silver test sets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T9.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.1">Language</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.2.1">Unique Categories</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.3.1">Total Articles</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.4.1">Total Queries</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T9.1.2.2.1">Arabic</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.2.2">537</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.2.3">959</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.1.2.2.4">1907</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.3.3.1">Basque</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.3.2">486</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.3.3">938</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.3.3.4">1872</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.4.4.1">Cantonese</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.4.2">261</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.4.3">401</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.4.4.4">793</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.5.5.1">Catalan</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.5.2">359</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.5.3">989</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.5.5.4">1976</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.6.6.1">Chinese</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.6.6.2">712</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.6.6.3">977</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.6.6.4">1939</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.7.7.1">Czech</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.7.2">720</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.7.3">988</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.7.7.4">1975</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.8.8.1">Esperanto</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.8.2">608</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.8.3">956</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.8.8.4">1912</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.9.9.1">French</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.9.2">332</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.9.3">987</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.9.9.4">1973</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.10.10.1">Finnish</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.10.2">549</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.10.3">995</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.10.10.4">1972</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.11.11.1">German</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.11.2">797</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.11.3">984</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.11.11.4">1967</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.12.12.1">Hebrew</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.12.2">660</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.12.3">999</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.12.12.4">1991</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.13.13.1">Hindi</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.13.13.2">153</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.13.13.3">186</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.13.13.4">367</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.14.14.1">Hungarian</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.14.14.2">745</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.14.14.3">992</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.14.14.4">1964</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.15.15.1">Indonesian</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.15.15.2">457</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.15.15.3">958</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.15.15.4">1913</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.16.16.1">Italian</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.16.16.2">678</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.16.16.3">988</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.16.16.4">1974</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.17.17.1">Japanese</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.17.17.2">667</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.17.17.3">999</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.17.17.4">1991</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.18.18.1">Korean</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.18.18.2">539</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.18.18.3">747</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.18.18.4">1488</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.19.19.1">Latin</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.19.19.2">334</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.19.19.3">465</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.19.19.4">916</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.20.20.1">Lithuanian</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.20.20.2">711</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.20.20.3">946</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.20.20.4">1888</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.21.21.1">Malay</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.21.21.2">442</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.21.21.3">778</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.21.21.4">1556</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.22.22.1">Polish</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.22.22.2">889</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.22.22.3">1000</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.22.22.4">1998</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.23.23.1">Portuguese</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.23.23.2">390</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.23.23.3">955</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.23.23.4">1909</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.24.24.1">Romanian</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.24.24.2">351</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.24.24.3">811</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.24.24.4">1618</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.25.25.1">Russian</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.25.25.2">462</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.25.25.3">999</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.25.25.4">1996</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.26.26.1">Spanish</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.26.26.2">938</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.26.26.3">977</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.26.26.4">1952</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.27.27.1">Serbian</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.27.27.2">386</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.27.27.3">798</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.27.27.4">1587</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.28.28.1">Sindhi</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.28.28.2">224</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.28.28.3">519</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.28.28.4">1029</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.29.29.1">Turkish</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.29.29.2">660</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.29.29.3">856</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.29.29.4">1650</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.30.30.1">Urdu</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.30.30.2">567</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.30.30.3">878</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.30.30.4">1749</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T9.1.31.31.1">Vietnamese</th>
<td class="ltx_td ltx_align_right" id="A1.T9.1.31.31.2">326</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.31.31.3">660</td>
<td class="ltx_td ltx_align_right" id="A1.T9.1.31.31.4">1311</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A1.T9.1.32.32.1"><span class="ltx_text ltx_font_bold" id="A1.T9.1.32.32.1.1">Total</span></th>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="A1.T9.1.32.32.2"><span class="ltx_text ltx_font_bold" id="A1.T9.1.32.32.2.1">15,940</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="A1.T9.1.32.32.3"><span class="ltx_text ltx_font_bold" id="A1.T9.1.32.32.3.1">25,685</span></td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="A1.T9.1.32.32.4"><span class="ltx_text ltx_font_bold" id="A1.T9.1.32.32.4.1">51,133</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the settings used for text generation within the HuggingFace library for six different large language models (LLMs).  The parameters include `max_new_tokens` (the maximum number of tokens to generate), `temperature` (controls randomness in text generation, higher values mean more randomness), `top_p` (nucleus sampling, considers tokens whose cumulative probability exceeds top_p), `top_k` (sampling from the top k most likely tokens), `repetition_penalty` (penalizes repeated sequences of tokens), and `do_sample` (whether to sample from the probability distribution or use argmax for deterministic generation).  The table shows the specific settings for each LLM, indicating where default values are used.  These parameters directly impact the style and characteristics of the generated text, and the full configuration details for each model can be found in their respective HuggingFace repositories.
> <details>
> <summary>read the caption</summary>
> Table 8: Huggingface model.generate() parameters for each model family. – indicate default is used. Generation configurations are provided in model’s respective HuggingFace (Wolf, 2019) repositories
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T10.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T10.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.1">Language</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.2.1">Precision (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.3.1">Recall (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.4.1">F1 Score (%)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="A1.T10.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.2.2.1.1">GOLD</span></th>
</tr>
<tr class="ltx_tr" id="A1.T10.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T10.1.3.3.1">Arabic (Gold)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.3.3.2">73.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.3.3.3">53.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.3.3.4">61.63</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.4.4.1">Chinese (Gold)</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.4.4.2">70.73</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.4.4.3">53.93</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.4.4.4">58.79</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.5.5.1">German (Gold)</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.5.5.2">58.19</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.5.5.3">74.06</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.5.5.4">65.05</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.6.6.1">Turkish (Gold)</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.6.6.2">79.67</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.6.6.3">66.95</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.6.6.4">72.57</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.7.7.1">Russian (Gold)</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.7.7.2">63.18</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.7.7.3">68.46</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.7.7.4">65.53</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T10.1.8.8.1">Average</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.8.8.2">69.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.8.8.3">63.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.8.8.4">64.71</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="A1.T10.1.9.9.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.9.9.1.1">SILVER</span></th>
</tr>
<tr class="ltx_tr" id="A1.T10.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T10.1.10.10.1">Arabic</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.10.10.2">93.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.10.10.3">74.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.1.10.10.4">82.59</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.11.11.1">Chinese</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.11.11.2">80.33</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.11.11.3">66.28</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.11.11.4">69.77</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.12.12.1">German</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.12.12.2">91.64</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.12.12.3">87.77</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.12.12.4">89.50</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.13.13.1">Turkish</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.13.13.2">89.58</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.13.13.3">83.92</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.13.13.4">86.43</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.14.14.1">Russian</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.14.14.2">93.05</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.14.14.3">86.04</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.14.14.4">89.15</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.15.15.1">Basque</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.15.15.2">87.22</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.15.15.3">74.46</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.15.15.4">79.80</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.16.16.1">Cantonese</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.16.16.2">78.49</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.16.16.3">49.40</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.16.16.4">56.12</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.17.17.1">Catalan</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.17.17.2">94.70</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.17.17.3">87.46</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.17.17.4">90.85</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.18.18.1">Czech</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.18.18.2">93.99</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.18.18.3">84.75</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.18.18.4">89.00</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.19.19.1">Esperanto</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.19.19.2">94.28</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.19.19.3">86.53</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.19.19.4">90.05</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.20.20.1">French</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.20.20.2">91.58</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.20.20.3">89.37</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.20.20.4">90.31</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.21.21.1">Finnish</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.21.21.2">86.67</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.21.21.3">84.26</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.21.21.4">85.15</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.22.22.1">Hebrew</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.22.22.2">82.75</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.22.22.3">32.97</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.22.22.4">44.19</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.23.23.1">Hindi</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.23.23.2">68.01</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.23.23.3">68.48</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.23.23.4">66.77</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.24.24.1">Hungarian</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.24.24.2">92.35</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.24.24.3">74.29</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.24.24.4">81.93</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.25.25.1">Indonesian</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.25.25.2">92.12</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.25.25.3">85.75</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.25.25.4">88.72</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.26.26.1">Italian</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.26.26.2">93.76</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.26.26.3">87.26</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.26.26.4">90.28</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.27.27.1">Korean</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.27.27.2">86.39</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.27.27.3">79.11</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.27.27.4">82.31</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.28.28.1">Japanese</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.28.28.2">77.06</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.28.28.3">61.03</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.28.28.4">67.15</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.29.29.1">Lithuanian</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.29.29.2">90.48</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.29.29.3">75.39</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.29.29.4">81.81</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.30.30.1">Malay</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.30.30.2">86.15</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.30.30.3">68.96</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.30.30.4">75.73</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.31.31.1">Portuguese</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.31.31.2">95.80</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.31.31.3">86.77</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.31.31.4">90.94</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.32.32.1">Serbian</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.32.32.2">86.16</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.32.32.3">76.75</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.32.32.4">79.91</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.33.33.1">Sindhi</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.33.33.2">82.00</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.33.33.3">69.38</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.33.33.4">74.36</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.34.34.1">Spanish</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.34.34.2">95.86</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.34.34.3">85.34</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.34.34.4">90.14</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.35.35.1">Vietnamese</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.35.35.2">89.35</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.35.35.3">84.57</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.35.35.4">86.71</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T10.1.36.36.1">Urdu</th>
<td class="ltx_td ltx_align_center" id="A1.T10.1.36.36.2">88.82</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.36.36.3">72.32</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.36.36.4">79.39</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T10.1.37.37.1">Average</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T10.1.37.37.2">88.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T10.1.37.37.3">76.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T10.1.37.37.4">80.71</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of the multilingual hallucination evaluation dataset used in the study.  For each of the 30 languages included, it shows the number of unique categories of hallucinations observed, the total number of Wikipedia articles used as references, and the total number of questions (queries) generated for those articles. This data provides context for the scale and diversity of the dataset used to assess hallucination rates across multiple languages and LLM models.
> <details>
> <summary>read the caption</summary>
> Table 9: Per language statistics for hallucination evaluation dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12769/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12769/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}