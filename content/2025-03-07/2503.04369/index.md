---
title: "Lost in Literalism: How Supervised Training Shapes Translationese in LLMs"
summary: "LLMs show translationese due to supervised training biases. Polishing references and filtering unnatural instances can mitigate this issue."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Machine Translation", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-03-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04369 {{< /keyword >}}
{{< keyword icon="writer" >}} Yafu Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04369" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04369" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04369/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) have shown great success in machine translation. However, they still suffer from "translationese", which leads to unnatural and overly literal translations. This issue is due to biases that are introduced during the supervised fine-tuning (SFT) phase. Pre-training on vast amounts of natural utterances should help LLMs generate natural sounding translations, but it does not due to the supervised fine-tuning. It makes the model biased towards the literal semantic mapping instead of a natural language generation.



To address these issues, this work systematically evaluates the prevalence of translationese in LLM-generated translations and investigates its roots during supervised training. They introduce methods such as polishing golden references and filtering unnatural training instances to mitigate the biases. The results suggest that these approaches help reduce translationese while improving the naturalness. Thus, they emphasize training-aware adjustments to optimize LLM translations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs exhibit translationese errors due to biases learned during supervised fine-tuning (SFT), despite pre-training on vast natural language corpora. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Polishing golden references and filtering unnatural training instances can significantly reduce translationese and improve translation naturalness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Training-aware adjustments are crucial for optimizing LLM translation outputs, leading to more fluent and target-language-consistent translations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers to **reevaluate LLM training** to optimize the quality of the translation outputs. The findings highlight potential **biases introduced during supervised training** and offer mitigation strategies, paving the way for more fluent and natural translation systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04369/x1.png)

> 🔼 This figure shows the percentage of translations containing translationese errors produced by various large language models (LLMs).  All LLMs were initially tested using a standard translation prompt.  However, GPT-3.5 and GPT-4 were also tested with two additional prompts: a 'Specified' prompt that encouraged natural language, and a 'Polishing' prompt that asked the models to refine their translations. The 'Polishing' prompt led to significantly fewer translationese errors across both GPT-3.5 and GPT-4. The figure visually compares the results across all LLMs and prompt types, illustrating the effectiveness of the refinement process.
> <details>
> <summary>read the caption</summary>
> Figure 1: Proportions of translations exhibiting translationese errors. All LLMs adopt direct translation prompts, with the exception of GPT-3.5 and GPT-4, which incorporate supplementary prompts to facilitate more natural translations. Both “Specified” and “Polishing” prompts have identical requirements; however, the ‘Polishing’ prompt specifically instructs LLMs to refine their generated translations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S1.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.3.1.1">
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S1.T1.3.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.1.1">Sentence-level Translationese</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.2.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.2.1.1.1">
<span class="ltx_p" id="S1.T1.3.2.1.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.2.1.1.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.2.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.2.1.2.1">
<span class="ltx_p" id="S1.T1.3.2.1.2.1.1" style="width:156.5pt;">Few-shot LLMs still lag behind vanilla fine-tuned models <span class="ltx_text" id="S1.T1.3.2.1.2.1.1.1" style="color:#0000FF;">in the task</span>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.3.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.3.2.1.1">
<span class="ltx_p" id="S1.T1.3.3.2.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.3.2.1.1.1.1">LLM</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.3.2.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.3.2.2.1">
<span class="ltx_p" id="S1.T1.3.3.2.2.1.1" style="width:156.5pt;">少样本LLMs仍然落后于原始细化训练模型<span class="ltx_text" id="S1.T1.3.3.2.2.1.1.1" style="color:#FF0000;">在任务中</span>。 (PPL: 151.5)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.4.3.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.4.3.1.1">
<span class="ltx_p" id="S1.T1.3.4.3.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.4.3.1.1.1.1">Refine</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.4.3.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.4.3.2.1">
<span class="ltx_p" id="S1.T1.3.4.3.2.1.1" style="width:156.5pt;"><span class="ltx_text" id="S1.T1.3.4.3.2.1.1.1" style="color:#FF0000;">在任务中</span>，少样本LLMs仍然落后于原始细化训练模型。 (PPL: 128.8)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.5.4.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.5.4.1.1">
<span class="ltx_p" id="S1.T1.3.5.4.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.5.4.1.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.5.4.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.5.4.2.1">
<span class="ltx_p" id="S1.T1.3.5.4.2.1.1" style="width:156.5pt;"><span class="ltx_text" id="S1.T1.3.5.4.2.1.1.1" style="color:#0000FF;">Bei starker Hitze</span> ließ diese Festigkeit zwar etwas nach.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.6.5.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.6.5.1.1">
<span class="ltx_p" id="S1.T1.3.6.5.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.6.5.1.1.1.1">LLM</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.6.5.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.6.5.2.1">
<span class="ltx_p" id="S1.T1.3.6.5.2.1.1" style="width:156.5pt;">However, <span class="ltx_text" id="S1.T1.3.6.5.2.1.1.1" style="color:#FF0000;">at high temperatures</span> this hardness did diminish somewhat. (PPL: 160.1)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.7.6.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.7.6.1.1">
<span class="ltx_p" id="S1.T1.3.7.6.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.7.6.1.1.1.1">Refine</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.7.6.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.7.6.2.1">
<span class="ltx_p" id="S1.T1.3.7.6.2.1.1" style="width:156.5pt;">However, this hardness did diminish somewhat <span class="ltx_text" id="S1.T1.3.7.6.2.1.1.1" style="color:#FF0000;">at high temperatures</span>. (PPL: 96.6)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.8.7">
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_t" colspan="2" id="S1.T1.3.8.7.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.8.7.1.1">Phrase-level Translationese</span></th>
</tr>
<tr class="ltx_tr" id="S1.T1.3.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.9.8.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.9.8.1.1">
<span class="ltx_p" id="S1.T1.3.9.8.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.9.8.1.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.9.8.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.9.8.2.1">
<span class="ltx_p" id="S1.T1.3.9.8.2.1.1" style="width:156.5pt;">cats <span class="ltx_text" id="S1.T1.3.9.8.2.1.1.1" style="color:#0000FF;">suffer night blindness</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.10.9.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.10.9.1.1">
<span class="ltx_p" id="S1.T1.3.10.9.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.10.9.1.1.1.1">LLM</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.10.9.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.10.9.2.1">
<span class="ltx_p" id="S1.T1.3.10.9.2.1.1" style="width:156.5pt;">猫将<span class="ltx_text" id="S1.T1.3.10.9.2.1.1.1" style="color:#FF0000;">遭受夜盲症</span> (PPL: 335.3)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.11.10.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.11.10.1.1">
<span class="ltx_p" id="S1.T1.3.11.10.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.11.10.1.1.1.1">Refine</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.11.10.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.11.10.2.1">
<span class="ltx_p" id="S1.T1.3.11.10.2.1.1" style="width:156.5pt;">猫会<span class="ltx_text" id="S1.T1.3.11.10.2.1.1.1" style="color:#FF0000;">患上夜盲症</span> (PPL: 154.1)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.12.11.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.12.11.1.1">
<span class="ltx_p" id="S1.T1.3.12.11.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.12.11.1.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.12.11.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.12.11.2.1">
<span class="ltx_p" id="S1.T1.3.12.11.2.1.1" style="width:156.5pt;"><span class="ltx_text" id="S1.T1.3.12.11.2.1.1.1" style="color:#0000FF;">mehr Lebensqualität zu gewinnen</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.13.12.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.13.12.1.1">
<span class="ltx_p" id="S1.T1.3.13.12.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.13.12.1.1.1.1">LLM</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.13.12.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.13.12.2.1">
<span class="ltx_p" id="S1.T1.3.13.12.2.1.1" style="width:156.5pt;"><span class="ltx_text" id="S1.T1.3.13.12.2.1.1.1" style="color:#FF0000;">gain more quality of life</span> (PPL: 620.5)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S1.T1.3.14.13.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.14.13.1.1">
<span class="ltx_p" id="S1.T1.3.14.13.1.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.14.13.1.1.1.1">Refine</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S1.T1.3.14.13.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.14.13.2.1">
<span class="ltx_p" id="S1.T1.3.14.13.2.1.1" style="width:156.5pt;"><span class="ltx_text" id="S1.T1.3.14.13.2.1.1.1" style="color:#FF0000;">improve the quality of life</span> (PPL: 27.6)</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents examples of sentence-level and phrase-level translationese errors produced by large language models (LLMs) in English-to-Chinese and German-to-English translations.  For each example, the source text, the LLM's initial translation, and a refined translation (with translationese corrected) are shown.  The perplexity (PPL) score is given for each translation, indicating the model's uncertainty.  Source text segments are highlighted in blue, while translationese errors and their subsequent refinements are highlighted in red, illustrating how the refinement process improves the naturalness of the translations.
> <details>
> <summary>read the caption</summary>
> Table 1:   Examples of Sentence-level and Phrase-level Translationese (English-Chinese and German-English translation). Source: source text; LLM: translations of LLMs; Refine: translations with translationese refined. Each case includes an LLM-generated translation alongside a refined version, with perplexity (PPL) values provided at the end. Blue text highlights the source segments, while red text identifies segments in the LLM translation where translationese occurs and is subsequently refined.
> </details>





### In-depth insights


#### LLM Translationese
The study highlights the counterintuitive presence of **translationese** in LLMs, despite their pre-training on vast natural language corpora. This suggests that supervised fine-tuning (SFT), intended to specialize LLMs for translation, may inadvertently introduce biases that prioritize literal semantic mapping over natural language generation, leading to unnatural and overly literal translations. The work systematically assesses the prevalence of **translationese** across different LLMs and languages, finding that even advanced models exhibit significant levels of this phenomenon. Interestingly, LLMs demonstrate the potential to produce more natural translations when prompted to refine their own outputs, hinting at the existence of latent knowledge and the possibility of mitigating translationese through training-aware adjustments. Addressing this issue is crucial for unlocking the full potential of LLMs in machine translation, paving the way for more fluent and target-language-consistent outputs. The effectiveness of refining golden references and filtering unnatural training instances in reducing translationese is also an essential finding.

#### SFT Bias Origins
**Supervised Fine-Tuning (SFT) can inadvertently introduce biases** that skew LLMs away from their innate capacity for natural language generation. Despite pre-training on vast datasets of natural utterances, SFT often relies on **training data that contains translationese**. This forces the model to prioritize literal semantic mapping over stylistic fluency. SFT data are curated from existing benchmark datasets which, unfortunately, **exhibit translationese**, potentially biasing the supervised training process. By treating direct transformation from source to target as the primary objective, supervised training can overemphasize faithfulness at the expense of naturalness, leading to unexpected and unnatural translations. These biases can be hard to eliminate as the model may be inclined to continue the SFT style even during inference.

#### Refined Data SFT
**Refining data for SFT (Supervised Fine-Tuning) focuses on enhancing the quality of training data** to improve model performance, particularly in areas like translation where subtle nuances are crucial. A key aspect is **reducing 'translationese'**, unnatural language arising from overly literal translations. This involves **techniques like polishing golden references** (high-quality, human-created translations) to make them more natural and target-language consistent. Another strategy is **filtering unnatural training instances** based on metrics such as perplexity to eliminate examples likely to introduce translationese bias. **The goal is to create a training dataset that encourages the LLM to generate fluent and natural translations, rather than simply mimicking literal correspondences between source and target languages.**

#### PPL-TSR Relation
Perplexity (PPL) and Translationese Span Ratio (TSR) relation is a crucial aspect of evaluating machine translation quality, particularly in the context of large language models (LLMs). **PPL, an intrinsic metric, reflects a model's confidence in its generated text; lower PPL generally indicates more natural and fluent output.** Conversely, **TSR quantifies the presence of translationese, characterized by overly literal and unnatural translations.** High TSR values suggest a stronger influence of the source language structure on the translated text, diminishing target language fluency. **Ideally, a strong negative correlation between PPL and TSR is desired, signifying that as a translation becomes more natural (lower PPL), it exhibits fewer signs of translationese (lower TSR).** However, establishing this relationship requires careful consideration, as other factors like domain specificity and text complexity can influence both metrics independently. Further research is needed to refine methods for accurately assessing and mitigating translationese using PPL and TSR in LLM-based translation systems.

#### Need Data Adjust
Based on the broader context of mitigating translationese in machine translation, the concept of 'Need Data Adjust' would likely revolve around recognizing and rectifying biases or unnatural patterns present within the training datasets used to fine-tune large language models (LLMs). It highlights the importance of **data quality** in shaping the output of these models, suggesting that simply training on large volumes of data is insufficient. Instead, the focus shifts to **curating and refining the training data** to ensure it reflects natural and fluent language usage. This adjustment might involve techniques like **filtering out translationese-prone instances**, **polishing existing translations to remove unnatural expressions**, or **augmenting the dataset with more examples of natural language**. The goal is to reduce the model's tendency to produce overly literal or stylistically awkward translations, ultimately improving the overall naturalness and fluency of the generated text. By proactively addressing data-related issues, the translationese effect can be greatly lessened.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.04369/x2.png)

> 🔼 This figure displays the correlation between the translation span ratio (TSR), representing the proportion of a translation exhibiting translationese errors as determined by human annotators, and the perplexity scores generated by LLMs for the same translations.  Higher TSR values indicate more unnatural translations, while higher perplexity values generally suggest less fluent and natural language. The correlation is shown separately for English-to-Chinese and German-to-English translations, providing insights into the relationship between human judgment of naturalness and LLM-predicted perplexity as a measure of translation quality.
> <details>
> <summary>read the caption</summary>
> Figure 2: Correlation between the human-annotated translation span ratio (TSR) and LLM-generated perplexity.
> </details>



![](https://arxiv.org/html/2503.04369/x3.png)

> 🔼 This figure shows the percentage of training examples in supervised fine-tuning datasets that contain varying degrees of translationese errors, as measured by the Translationese Span Ratio (TSR).  A higher TSR indicates a greater proportion of the text exhibiting translationese. The figure visually represents the prevalence of translationese in the training data for both English-to-Chinese and German-to-English translation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Proportions of supervised training instances exhibiting different levels of translationese errors (TSR).
> </details>



![](https://arxiv.org/html/2503.04369/x4.png)

> 🔼 Figure 4 presents a bar chart comparing the naturalness of translations generated using two different approaches: inference-time polishing (post-polishing) and training-time polishing (polished).  The chart visualizes the perplexity scores achieved by Llama-3.1-8B and Qwen-2.5-7B models trained with the two methods for both English-to-Chinese and German-to-English translations. Lower perplexity indicates better translation naturalness. By comparing the perplexity for both approaches, the figure illustrates the effectiveness of incorporating polishing during the training phase versus only during inference on improving the translation quality and reducing translationese.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Comparison of naturalness between inference-time (Post-Polishing) and training-time polishing (Polished).
> </details>



![](https://arxiv.org/html/2503.04369/x5.png)

> 🔼 This figure displays the impact of filtering out the least natural training samples on the quality and naturalness of machine translation.  The x-axis represents the proportion of filtered training instances, while the y-axis shows two metrics: perplexity (lower is better, indicating more natural language) and COMET score (higher is better, indicating better overall translation quality). The chart shows that filtering a moderate amount of the least natural training data improves both perplexity and COMET scores. However, excessive filtering negatively affects both metrics.
> <details>
> <summary>read the caption</summary>
> Figure 5: Translation naturalness and quality w.r.t. filtered training samples.
> </details>



![](https://arxiv.org/html/2503.04369/x6.png)

> 🔼 This figure shows screenshots of the annotation platform used in the study. The platform, built using Label Studio, allows expert translators to annotate text spans exhibiting translationese errors in machine-translated documents.  The examples shown are for English-Chinese and German-English translations.  The interface displays the original text, machine translation, and tools for highlighting specific segments and categorizing the type of translationese error (unnatural sentence flow or unnatural phrase flow).
> <details>
> <summary>read the caption</summary>
> Figure 6: Annotation platform demonstration (English-Chinese and German-English).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.12.13.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.12.13.1.1" rowspan="3" style="padding:1pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.12.13.1.1.1">Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="6" id="S5.T2.12.13.1.2" style="padding:1pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.12.13.1.2.1">Document-level Translation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S5.T2.12.13.1.3" style="padding:1pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.12.13.1.3.1">Sentence-level Translation</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.12.14.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" colspan="3" id="S5.T2.12.14.2.1" style="padding:1pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.12.14.2.1.1">En-Zh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" colspan="3" id="S5.T2.12.14.2.2" style="padding:1pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.12.14.2.2.1">De-En</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" colspan="3" id="S5.T2.12.14.2.3" style="padding:1pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.12.14.2.3.1">En-Zh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="3" id="S5.T2.12.14.2.4" style="padding:1pt 4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.12.14.2.4.1">De-En</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.1.1.1" style="padding:1pt 4.5pt;">Lex.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.2" style="padding:1pt 4.5pt;">Len.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.m1.1a"><mo id="S5.T2.2.2.2.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.m1.1b"><ci id="S5.T2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.3.3.3" style="padding:1pt 4.5pt;">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.m1.1a"><mo id="S5.T2.3.3.3.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.4.4.4" style="padding:1pt 4.5pt;">Lex.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.m1.1a"><mo id="S5.T2.4.4.4.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.m1.1b"><ci id="S5.T2.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.5.5.5" style="padding:1pt 4.5pt;">Len.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.m1.1"><semantics id="S5.T2.5.5.5.m1.1a"><mo id="S5.T2.5.5.5.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.m1.1b"><ci id="S5.T2.5.5.5.m1.1.1.cmml" xref="S5.T2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.6.6.6" style="padding:1pt 4.5pt;">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.6.6.6.m1.1"><semantics id="S5.T2.6.6.6.m1.1a"><mo id="S5.T2.6.6.6.m1.1.1" stretchy="false" xref="S5.T2.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.m1.1b"><ci id="S5.T2.6.6.6.m1.1.1.cmml" xref="S5.T2.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.7.7.7" style="padding:1pt 4.5pt;">Lex.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.7.7.7.m1.1"><semantics id="S5.T2.7.7.7.m1.1a"><mo id="S5.T2.7.7.7.m1.1.1" stretchy="false" xref="S5.T2.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.m1.1b"><ci id="S5.T2.7.7.7.m1.1.1.cmml" xref="S5.T2.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.8.8.8" style="padding:1pt 4.5pt;">Len.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.8.8.8.m1.1"><semantics id="S5.T2.8.8.8.m1.1a"><mo id="S5.T2.8.8.8.m1.1.1" stretchy="false" xref="S5.T2.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.8.m1.1b"><ci id="S5.T2.8.8.8.m1.1.1.cmml" xref="S5.T2.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.9.9.9" style="padding:1pt 4.5pt;">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.9.9.9.m1.1"><semantics id="S5.T2.9.9.9.m1.1a"><mo id="S5.T2.9.9.9.m1.1.1" stretchy="false" xref="S5.T2.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.9.9.9.m1.1b"><ci id="S5.T2.9.9.9.m1.1.1.cmml" xref="S5.T2.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.10.10.10" style="padding:1pt 4.5pt;">Lex.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.10.10.10.m1.1"><semantics id="S5.T2.10.10.10.m1.1a"><mo id="S5.T2.10.10.10.m1.1.1" stretchy="false" xref="S5.T2.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.10.10.10.m1.1b"><ci id="S5.T2.10.10.10.m1.1.1.cmml" xref="S5.T2.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.11.11.11" style="padding:1pt 4.5pt;">Len.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.11.11.11.m1.1"><semantics id="S5.T2.11.11.11.m1.1a"><mo id="S5.T2.11.11.11.m1.1.1" stretchy="false" xref="S5.T2.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.11.11.11.m1.1b"><ci id="S5.T2.11.11.11.m1.1.1.cmml" xref="S5.T2.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.11.11.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.12.12.12" style="padding:1pt 4.5pt;">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.12.12.12.m1.1"><semantics id="S5.T2.12.12.12.m1.1a"><mo id="S5.T2.12.12.12.m1.1.1" stretchy="false" xref="S5.T2.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.12.12.12.m1.1b"><ci id="S5.T2.12.12.12.m1.1.1.cmml" xref="S5.T2.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.12.12.12.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S5.T2.12.15.3">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.12.15.3.1" style="padding:1pt 4.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="12" id="S5.T2.12.15.3.2" style="padding:1pt 4.5pt;">Llama-3.1-8B</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.12.16.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.12.16.1.1" style="padding:1pt 4.5pt;">SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.2" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.16.1.2.1" style="background-color:#B3D1FF;">0.509</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.3" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.16.1.3.1" style="background-color:#B3D1FF;">0.639</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.16.1.4" style="padding:1pt 4.5pt;">13.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.5" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.16.1.5.1" style="background-color:#B3D1FF;">0.421</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.6" style="padding:1pt 4.5pt;">0.079</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.16.1.7" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.16.1.7.1" style="background-color:#B3D1FF;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.8" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.16.1.8.1" style="background-color:#B3D1FF;">0.500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.9" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.16.1.9.1" style="background-color:#B3D1FF;">0.377</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.16.1.10" style="padding:1pt 4.5pt;">103.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.11" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.16.1.11.1" style="background-color:#B3D1FF;">0.415</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.12" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.16.1.12.1" style="background-color:#B3D1FF;">0.150</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.16.1.13" style="padding:1pt 4.5pt;">84.2</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.17.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.17.2.1" style="padding:1pt 4.5pt;">SFT-KD</th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.2" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.17.2.2.1"><span class="ltx_text" id="S5.T2.12.17.2.2.1.1" style="background-color:#B3D1FF;">0.509</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.3" style="padding:1pt 4.5pt;">0.648</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.17.2.4" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.17.2.4.1" style="background-color:#B3D1FF;">14.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.5" style="padding:1pt 4.5pt;">0.424</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.6" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.17.2.6.1" style="background-color:#B3D1FF;">0.078</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.17.2.7" style="padding:1pt 4.5pt;">14.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.8" style="padding:1pt 4.5pt;">0.503</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.9" style="padding:1pt 4.5pt;">0.406</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.17.2.10" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.17.2.10.1" style="background-color:#B3D1FF;">104.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.11" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.17.2.11.1" style="background-color:#B3D1FF;">0.415</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.12" style="padding:1pt 4.5pt;">0.153</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.17.2.13" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.17.2.13.1" style="background-color:#B3D1FF;">88.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.18.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.18.3.1" style="padding:1pt 4.5pt;">SFT-Polished</th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.2" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.2.1" style="background-color:#FFB3B3;">0.522</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.3" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.3.1" style="background-color:#FFB3B3;">0.717</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.18.3.4" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.4.1" style="background-color:#FFB3B3;">11.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.5" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.5.1" style="background-color:#FFB3B3;">0.438</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.6" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.6.1" style="background-color:#FFB3B3;">0.080</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.18.3.7" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.7.1" style="background-color:#FFB3B3;">13.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.8" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.8.1" style="background-color:#FFB3B3;">0.514</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.9" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.9.1" style="background-color:#FFB3B3;">0.466</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.18.3.10" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.10.1" style="background-color:#FFB3B3;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.11" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.11.1" style="background-color:#FFB3B3;">0.419</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.12" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.12.1" style="background-color:#FFB3B3;">0.165</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.18.3.13" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.18.3.13.1" style="background-color:#FFB3B3;">72.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.19.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.12.19.4.1" style="padding:1pt 4.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="12" id="S5.T2.12.19.4.2" style="padding:1pt 4.5pt;">Qwen-2.5-7B</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.20.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.12.20.5.1" style="padding:1pt 4.5pt;">SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.2" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.20.5.2.1" style="background-color:#B3D1FF;">0.511</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.3" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.20.5.3.1" style="background-color:#B3D1FF;">0.600</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.20.5.4" style="padding:1pt 4.5pt;">13.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.5" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.20.5.5.1" style="background-color:#B3D1FF;">0.418</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.6" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.20.5.6.1" style="background-color:#FFB3B3;">0.077</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.20.5.7" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.20.5.7.1" style="background-color:#B3D1FF;">14.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.8" style="padding:1pt 4.5pt;">0.508</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.9" style="padding:1pt 4.5pt;">0.279</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.20.5.10" style="padding:1pt 4.5pt;">101.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.11" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.20.5.11.1" style="background-color:#B3D1FF;">0.409</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.12" style="padding:1pt 4.5pt;">0.136</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.20.5.13" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.20.5.13.1" style="background-color:#B3D1FF;">88.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.21.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.21.6.1" style="padding:1pt 4.5pt;">SFT-KD</th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.2" style="padding:1pt 4.5pt;">0.513</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.3" style="padding:1pt 4.5pt;">0.651</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.21.6.4" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.21.6.4.1" style="background-color:#B3D1FF;">13.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.5" style="padding:1pt 4.5pt;">0.424</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.6" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.21.6.6.1" style="background-color:#B3D1FF;">0.068</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.21.6.7" style="padding:1pt 4.5pt;">14.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.8" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.21.6.8.1"><span class="ltx_text" id="S5.T2.12.21.6.8.1.1" style="background-color:#B3D1FF;">0.505</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.9" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.21.6.9.1" style="background-color:#B3D1FF;">0.272</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.21.6.10" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.21.6.10.1" style="background-color:#B3D1FF;">104.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.11" style="padding:1pt 4.5pt;">0.415</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.12" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.21.6.12.1" style="background-color:#B3D1FF;">0.129</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.21.6.13" style="padding:1pt 4.5pt;">88.4</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.22.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.12.22.7.1" style="padding:1pt 4.5pt;">SFT-Polished</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.2" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.2.1" style="background-color:#FFB3B3;">0.523</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.3" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.3.1" style="background-color:#FFB3B3;">0.687</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.12.22.7.4" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.4.1" style="background-color:#FFB3B3;">12.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.5" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.5.1" style="background-color:#FFB3B3;">0.436</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.6" style="padding:1pt 4.5pt;">0.073</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.12.22.7.7" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.7.1" style="background-color:#FFB3B3;">14.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.8" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.8.1" style="background-color:#FFB3B3;">0.518</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.9" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.9.1" style="background-color:#FFB3B3;">0.317</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.12.22.7.10" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.10.1" style="background-color:#FFB3B3;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.11" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.11.1" style="background-color:#FFB3B3;">0.419</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.12" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.12.1" style="background-color:#FFB3B3;">0.139</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.22.7.13" style="padding:1pt 4.5pt;"><span class="ltx_text" id="S5.T2.12.22.7.13.1" style="background-color:#FFB3B3;">71.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the translation naturalness achieved by different large language models (LLMs) trained using various methods.  The evaluation considers both sentence-level and document-level metrics, providing a comprehensive assessment of translation quality.  Performance is measured automatically using perplexity (PPL), lexical density (Lex.), length variance (Len.), and COMET-QE scores.  Color-coding helps visualize the best and worst performing models for each metric, allowing for an easy comparison of different training strategies.  This detailed evaluation is crucial for understanding the effectiveness of different LLM training approaches and the challenges associated with achieving natural-sounding translations.
> <details>
> <summary>read the caption</summary>
> Table 2: Automatic evaluation of translation naturalness at both sentence and document levels across different training methods, where a red background indicates the best performance and a blue one signifies the worst.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1">Direction</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.2">SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.3">SFT-KD</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.4">SFT-Polished</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.2.1.1.1">En-Zh</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.2">2.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.3">2.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.2.1.4.1">1.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.3.2.1.1">De-En</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.3.2.2">2.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.3.2.3">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.3.2.4.1">1.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average ranks assigned by human evaluators to different supervised fine-tuning (SFT) methods for machine translation.  Lower ranks indicate better performance in terms of translation naturalness. The methods compared include the baseline SFT approach, knowledge distillation from GPT-4 (SFT-KD), and a method that refines training references using GPT-4 before fine-tuning (SFT-Polished).  The ranks are averaged across three human evaluators for English-to-Chinese and German-to-English translation tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Average ranks for various SFT methods. Lower values indicate better performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1">Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.2.1">Llama-3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.3.1">Qwen-2.5-7B</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.2.1.1">En-Zh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.2.2.1">De-En</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.2.3.1">En-Zh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.2.4.1">De-En</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.3.1.1">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.3.1.2">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.3.1.3">80.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.3.1.4">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.3.1.5">74.0</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.4.2">
<td class="ltx_td ltx_align_center" id="S5.T4.1.4.2.1">SFT-KD</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.4.2.2">81.5</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.4.2.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.4.2.3.1">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.4.2.4"><span class="ltx_text ltx_font_bold" id="S5.T4.1.4.2.4.1">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.4.2.5">75.3</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.5.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.5.3.1">SFT-Polished</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.5.3.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.5.3.2.1">81.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.5.3.3">81.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.5.3.4">74.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.5.3.5"><span class="ltx_text ltx_font_bold" id="S5.T4.1.5.3.5.1">75.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the COMET-QE (Quality Estimation) metric applied to translations generated using different training methods.  COMET-QE is a reference-free metric assessing the quality of machine translation. Lower scores indicate better translation quality. The table compares the quality of translations using standard supervised fine-tuning (SFT), knowledge distillation from GPT-4 (SFT-KD), and a refined approach that polishes the training data with GPT-4 (SFT-Polished), across English-to-Chinese and German-to-English translation directions.
> <details>
> <summary>read the caption</summary>
> Table 4: Translation quality evaluation (COMET-QE).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T6.2.3.1.1.1">Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.3.1.2"><span class="ltx_text ltx_font_bold" id="S5.T6.2.3.1.2.1">En-Is</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S5.T6.2.3.1.3.1">En-Cs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.3.1.4"><span class="ltx_text ltx_font_bold" id="S5.T6.2.3.1.4.1">En-De</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.3.1.5"><span class="ltx_text ltx_font_bold" id="S5.T6.2.3.1.5.1">En-Ru</span></th>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="5" id="S5.T6.1.1.1">Perplexity<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.m1.1a"><mo id="S5.T6.1.1.1.m1.1.1" stretchy="false" xref="S5.T6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.m1.1b"><ci id="S5.T6.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.2.4.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.4.1.1">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.4.1.2">27.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.4.1.3">59.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.4.1.4">56.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.4.1.5">42.8</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.5.2">
<td class="ltx_td ltx_align_center" id="S5.T6.2.5.2.1">SFT-Polished</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.5.2.2"><span class="ltx_text ltx_font_bold" id="S5.T6.2.5.2.2.1">24.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.5.2.3"><span class="ltx_text ltx_font_bold" id="S5.T6.2.5.2.3.1">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.5.2.4"><span class="ltx_text ltx_font_bold" id="S5.T6.2.5.2.4.1">44.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.5.2.5"><span class="ltx_text ltx_font_bold" id="S5.T6.2.5.2.5.1">35.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S5.T6.2.2.1">COMET-QE<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T6.2.2.1.m1.1"><semantics id="S5.T6.2.2.1.m1.1a"><mo id="S5.T6.2.2.1.m1.1.1" stretchy="false" xref="S5.T6.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.1.m1.1b"><ci id="S5.T6.2.2.1.m1.1.1.cmml" xref="S5.T6.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.6.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.6.3.1">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.6.3.2">80.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.6.3.3">81.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.6.3.4">63.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.6.3.5">81.0</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.7.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.2.7.4.1">SFT-Polished</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.2.7.4.2"><span class="ltx_text ltx_font_bold" id="S5.T6.2.7.4.2.1">84.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.2.7.4.3"><span class="ltx_text ltx_font_bold" id="S5.T6.2.7.4.3.1">83.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.2.7.4.4"><span class="ltx_text ltx_font_bold" id="S5.T6.2.7.4.4.1">65.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.2.7.4.5"><span class="ltx_text ltx_font_bold" id="S5.T6.2.7.4.5.1">82.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a qualitative comparison of translations generated by different large language models (LLMs) for the same source text in English and their respective translations into Chinese and German.  It showcases examples of how different LLMs handle translation tasks and highlights the issue of translationese, where the translations are too literal and unnatural.  The models compared are the baseline SFT (Supervised Fine-Tuning), SFT-KD (Knowledge Distillation from GPT-4), and SFT-Polished (Fine-tuning with GPT-4 polished references).  The table provides insights into how different training techniques affect the naturalness and fluency of the generated translations.
> <details>
> <summary>read the caption</summary>
> Table 5: Case study of different model translations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T7.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.1.1.1">
<span class="ltx_p" id="A1.T7.1.1.1.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1.1.1">Translation Prompt</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T7.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.1.2.1">
<span class="ltx_p" id="A1.T7.1.1.1.2.1.1" style="width:346.9pt;">Please translate the following {source_language} text to {target_language}.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.2.2">
<td class="ltx_td ltx_align_top" id="A1.T7.1.2.2.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.2.2.2.1">
<span class="ltx_p" id="A1.T7.1.2.2.2.1.1" style="width:346.9pt;">### Source text: {source_text}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3.3">
<td class="ltx_td ltx_align_top" id="A1.T7.1.3.3.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.3.3.2.1">
<span class="ltx_p" id="A1.T7.1.3.3.2.1.1" style="width:346.9pt;">### Translation:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.4.4.1.1">
<span class="ltx_p" id="A1.T7.1.4.4.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.4.4.1.1.1.1">Specified Prompt</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.4.4.2.1">
<span class="ltx_p" id="A1.T7.1.4.4.2.1.1" style="width:346.9pt;">Please translate the following {source_language} text to {target_language}, ensuring that the translation is fluent, accurate, and conforms to typical {target_language} expressions and style.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5.5">
<td class="ltx_td ltx_align_top" id="A1.T7.1.5.5.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.5.5.2.1">
<span class="ltx_p" id="A1.T7.1.5.5.2.1.1" style="width:346.9pt;">### Source text: {source_text}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6.6">
<td class="ltx_td ltx_align_top" id="A1.T7.1.6.6.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.6.6.2.1">
<span class="ltx_p" id="A1.T7.1.6.6.2.1.1" style="width:346.9pt;">### Translation:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.7.7.1.1">
<span class="ltx_p" id="A1.T7.1.7.7.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.7.7.1.1.1.1">Polishing Prompt</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.7.7.2.1">
<span class="ltx_p" id="A1.T7.1.7.7.2.1.1" style="width:346.9pt;">Please polish the corresponding {target_language} translation of an {source_language} text, ensuring that the translation is fluent, accurate, and conforms to typical {target_language} expressions and style.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8.8">
<td class="ltx_td ltx_align_top" id="A1.T7.1.8.8.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.8.8.2.1">
<span class="ltx_p" id="A1.T7.1.8.8.2.1.1" style="width:346.9pt;">### Source text: {source_text}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9.9">
<td class="ltx_td ltx_align_top" id="A1.T7.1.9.9.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.9.9.2.1">
<span class="ltx_p" id="A1.T7.1.9.9.2.1.1" style="width:346.9pt;">### Original Translation: {target_text}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.10.10">
<td class="ltx_td ltx_align_top ltx_border_bb" id="A1.T7.1.10.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T7.1.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.10.10.2.1">
<span class="ltx_p" id="A1.T7.1.10.10.2.1.1" style="width:346.9pt;">### Translation:</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the impact of a proposed method (SFT-Polished) on the naturalness and quality of machine translations generated by large language models (LLMs).  The experiment focused on translating English sentences into four additional languages: Czech, Icelandic, German, and Russian.  For each language, the table displays two metrics: perplexity (PPL), a measure of the LLM's uncertainty in generating the translation, with lower values indicating better fluency and naturalness; and COMET-QE, a quality metric reflecting the overall translation adequacy. The table compares the performance of the baseline supervised fine-tuning (SFT) approach to that of the SFT-Polished approach, highlighting the improvements achieved in translation quality and naturalness through the proposed method. These results demonstrate the generalizability of the SFT-Polished method across multiple languages.
> <details>
> <summary>read the caption</summary>
> Table 6: Generation naturalness (perplexity) and quality (COMET-QE) of translations from English to four additional languages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T8.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1" style="width:65.0pt;">Direction</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.2.1">
<span class="ltx_p" id="A2.T8.1.1.1.2.1.1" style="width:86.7pt;">Domains</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.3.1">
<span class="ltx_p" id="A2.T8.1.1.1.3.1.1" style="width:65.0pt;">Avg. Tokens</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.4.1">
<span class="ltx_p" id="A2.T8.1.1.1.4.1.1" style="width:65.0pt;">#. Docs.</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.2.1.1.1">
<span class="ltx_p" id="A2.T8.1.2.1.1.1.1" style="width:65.0pt;">En-Zh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.2.1.2.1">
<span class="ltx_p" id="A2.T8.1.2.1.2.1.1" style="width:86.7pt;">CNN, Arixv, Wikipedia, Quora</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.2.1.3.1">
<span class="ltx_p" id="A2.T8.1.2.1.3.1.1" style="width:65.0pt;">225.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.1.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.2.1.4.1">
<span class="ltx_p" id="A2.T8.1.2.1.4.1.1" style="width:65.0pt;">1,800</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T8.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.3.2.1.1">
<span class="ltx_p" id="A2.T8.1.3.2.1.1.1" style="width:65.0pt;">De-En</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T8.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.3.2.2.1">
<span class="ltx_p" id="A2.T8.1.3.2.2.1.1" style="width:86.7pt;">Focus, Quora</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T8.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.3.2.3.1">
<span class="ltx_p" id="A2.T8.1.3.2.3.1.1" style="width:65.0pt;">138.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T8.1.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.3.2.4.1">
<span class="ltx_p" id="A2.T8.1.3.2.4.1.1" style="width:65.0pt;">9,00</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the three different prompts used for machine translation experiments in the paper.  The first prompt is a basic translation request used for all language models tested. The second and third prompts are more specific, aiming to encourage more natural language generation. These latter two prompts were only used for the GPT models (GPT-3.5 and GPT-4).  The table highlights the differences in prompt wording to elicit different translation styles. The variations in prompts help to evaluate the models' ability to adapt to nuanced instructions and produce translations of higher quality.
> <details>
> <summary>read the caption</summary>
> Table 7: Three types of prompts used in large language model translation. The first one is utilized for all models whereas the other two are only used in GPT models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T9.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="A4.T9.1.1.1.1">English-Chinese Translation</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T9.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A4.T9.1.2.1.1.1">Judge</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A4.T9.1.2.1.2.1">A-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.1.3"><span class="ltx_text ltx_font_bold" id="A4.T9.1.2.1.3.1">A-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.1.4"><span class="ltx_text ltx_font_bold" id="A4.T9.1.2.1.4.1">A-3</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A4.T9.1.3.2.1.1">A-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.3.2.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.3.2.3">0.592</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.3.2.4">0.742</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.4.3.1"><span class="ltx_text ltx_font_bold" id="A4.T9.1.4.3.1.1">A-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.4.3.2">0.592</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.4.3.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.4.3.4">0.603</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.5.4.1"><span class="ltx_text ltx_font_bold" id="A4.T9.1.5.4.1.1">A-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.5.4.2">0.742</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.5.4.3">0.603</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.5.4.4">-</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A4.T9.1.6.5.1">German-English Translation</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.7.6.1"><span class="ltx_text ltx_font_bold" id="A4.T9.1.7.6.1.1">Judge</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.7.6.2"><span class="ltx_text ltx_font_bold" id="A4.T9.1.7.6.2.1">A-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.7.6.3"><span class="ltx_text ltx_font_bold" id="A4.T9.1.7.6.3.1">A-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.7.6.4"><span class="ltx_text ltx_font_bold" id="A4.T9.1.7.6.4.1">A-3</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.8.7.1"><span class="ltx_text ltx_font_bold" id="A4.T9.1.8.7.1.1">A-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.8.7.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.8.7.3">0.753</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.8.7.4">0.587</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.9.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.9.8.1"><span class="ltx_text ltx_font_bold" id="A4.T9.1.9.8.1.1">A-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.9.8.2">0.753</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.9.8.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.9.8.4">0.553</td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.10.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.10.9.1"><span class="ltx_text ltx_font_bold" id="A4.T9.1.10.9.1.1">A-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.10.9.2">0.587</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.10.9.3">0.553</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.1.10.9.4">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a summary of the datasets used in the paper, providing details on the number of documents and the average number of tokens per document for both English-to-Chinese and German-to-English translation tasks.
> <details>
> <summary>read the caption</summary>
> Table 8: Data statistics of document-level translations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T10.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T10.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A5.T10.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.1">Direction</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.1.1.1.2" rowspan="2"><span class="ltx_text" id="A5.T10.1.1.1.2.1">ALMA-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.1.1.1.3" rowspan="2"><span class="ltx_text" id="A5.T10.1.1.1.3.1">ALMA-13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.1.1.1.4" rowspan="2"><span class="ltx_text" id="A5.T10.1.1.1.4.1">Mistral-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A5.T10.1.1.1.5">GPT-3.5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A5.T10.1.1.1.6">GPT-4</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.2.2">
<td class="ltx_td ltx_align_center" id="A5.T10.1.2.2.1">Direct</td>
<td class="ltx_td ltx_align_center" id="A5.T10.1.2.2.2">Specified</td>
<td class="ltx_td ltx_align_center" id="A5.T10.1.2.2.3">Polishing</td>
<td class="ltx_td ltx_align_center" id="A5.T10.1.2.2.4">Direct</td>
<td class="ltx_td ltx_align_center" id="A5.T10.1.2.2.5">Specified</td>
<td class="ltx_td ltx_align_center" id="A5.T10.1.2.2.6">Polishing</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T10.1.3.3.1"><span class="ltx_text ltx_font_bold" id="A5.T10.1.3.3.1.1">En-Zh</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.2">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.3">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.4">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.5">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.6">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.7">0.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.8">0.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.9">0.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.3.3.10"><span class="ltx_text ltx_font_bold" id="A5.T10.1.3.3.10.1">0.14</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.1"><span class="ltx_text ltx_font_bold" id="A5.T10.1.4.4.1.1">De-En</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.2">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.3">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.4">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.5">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.6">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.7">0.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.8">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.9">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T10.1.4.4.10"><span class="ltx_text ltx_font_bold" id="A5.T10.1.4.4.10.1">0.19</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the inter-annotator agreement scores, calculated using Kendall's Tau, for the human evaluation task focused on assessing the naturalness of translations.  The scores reflect the level of consistency between different annotators in their rankings of translation naturalness, providing a measure of the reliability of the human evaluation process.
> <details>
> <summary>read the caption</summary>
> Table 9: Inter-annotator agreement (Kendall’s Tau scores) on naturalness voting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A10.T11.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A10.T11.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A10.T11.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.1.1.1.1">
<span class="ltx_p" id="A10.T11.1.1.1.1.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.1.1.1.1.1.1">Error Category</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A10.T11.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.1.1.2.1">
<span class="ltx_p" id="A10.T11.1.1.1.1.2.1.1" style="width:199.2pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.1.1.2.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A10.T11.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.2.1.1.1">
<span class="ltx_p" id="A10.T11.1.1.2.1.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.2.1.1.1.1.1">Unnatural Sentence Flow</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.2.1.2.1">
<span class="ltx_p" id="A10.T11.1.1.2.1.2.1.1" style="width:199.2pt;">A sentence-level translation issue where the structure of the sentence is considered unnatural in the target language. This often occurs when complex sentence structures from the source language are directly translated, resulting in sentences that are difficult to read in the target language.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T11.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.3.2.1.1">
<span class="ltx_p" id="A10.T11.1.1.3.2.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.3.2.1.1.1.1">Unnatural Phrase Flow</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.3.2.2.1">
<span class="ltx_p" id="A10.T11.1.1.3.2.2.1.1" style="width:199.2pt;">A portion of text, larger than a single word or multiword expression, is a too literal translation of the source. The meaning of the source comes through in the target, but the overall feeling of the translation is unnatural.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T11.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.4.3.1.1">
<span class="ltx_p" id="A10.T11.1.1.4.3.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.4.3.1.1.1.1">Culture-specific Reference</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.4.3.2.1">
<span class="ltx_p" id="A10.T11.1.1.4.3.2.1.1" style="width:199.2pt;">The target text contains a culture-specific reference that’s not appropriate or understandable to the intended target audience. An example of this is the use of jargon related to sports or other culture-specific features that are not necessarily understood in the environment of the target language.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T11.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.5.4.1.1">
<span class="ltx_p" id="A10.T11.1.1.5.4.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.5.4.1.1.1.1">Sensitive Content</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.5.4.2.1">
<span class="ltx_p" id="A10.T11.1.1.5.4.2.1.1" style="width:199.2pt;">The presence of sensitive information in the translation or source text, such as references to violence, war, etc.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T11.1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.6.5.1.1">
<span class="ltx_p" id="A10.T11.1.1.6.5.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.6.5.1.1.1.1">Mistranslation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.6.5.2.1">
<span class="ltx_p" id="A10.T11.1.1.6.5.2.1.1" style="width:199.2pt;">Minor errors including mistranslations, omissions, or over-translations.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T11.1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.7.6.1.1">
<span class="ltx_p" id="A10.T11.1.1.7.6.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.7.6.1.1.1.1">Terminology</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.7.6.2.1">
<span class="ltx_p" id="A10.T11.1.1.7.6.2.1.1" style="width:199.2pt;">Errors related to the incorrect use of domain-specific terms or technical jargon.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T11.1.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.8.7.1.1">
<span class="ltx_p" id="A10.T11.1.1.8.7.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.8.7.1.1.1.1">Non-translation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T11.1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.8.7.2.1">
<span class="ltx_p" id="A10.T11.1.1.8.7.2.1.1" style="width:199.2pt;">Impossible to reliably characterize distinct errors (or the model repeatedly outputs meaningless contents)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T11.1.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A10.T11.1.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.9.8.1.1">
<span class="ltx_p" id="A10.T11.1.1.9.8.1.1.1" style="width:105.3pt;"><span class="ltx_text ltx_font_bold" id="A10.T11.1.1.9.8.1.1.1.1">Others</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A10.T11.1.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A10.T11.1.1.9.8.2.1">
<span class="ltx_p" id="A10.T11.1.1.9.8.2.1.1" style="width:199.2pt;">Errors that affect the readability and naturalness of the text but do not fit neatly into the other defined categories. Annotators should provide specific comments on these errors.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Translationese Span Ratio (TSR) for different Large Language Models (LLMs) across English-to-Chinese and German-to-English translation tasks.  The TSR represents the proportion of spans in a translation identified as containing translationese errors by expert human annotators.  Results are shown for various LLMs, including both specialized translation models and general-purpose chat models.  Different prompting strategies are compared for the GPT models, illustrating the impact of prompting on translationese prevalence.
> <details>
> <summary>read the caption</summary>
> Table 10: Translationese span ratios of different LLMs in English-Chinese and German-English translations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A10.T13.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A10.T13.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A10.T13.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.1.1.1.1">
<span class="ltx_p" id="A10.T13.1.1.1.1.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.1.1.1.1.1.1">Error Category</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A10.T13.1.1.1.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.1.1.2.1">Example</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A10.T13.1.1.2.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="A10.T13.1.1.2.1.1" rowspan="6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.2.1.1.1">
<span class="ltx_p" id="A10.T13.1.1.2.1.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.2.1.1.1.1.1">Unnatural Sentence Flow</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.2.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.2.1.2.1">
<span class="ltx_p" id="A10.T13.1.1.2.1.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.2.1.2.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.2.1.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.2.1.3.1">
<span class="ltx_p" id="A10.T13.1.1.2.1.3.1.1" style="width:199.2pt;">So geht es nicht, findet die italienische Regierung und ließ Dutzende von elektrischen Fiat Topolinos beschlagnahmen.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.3.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.3.2.1.1">
<span class="ltx_p" id="A10.T13.1.1.3.2.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.3.2.1.1.1.1">Translation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.3.2.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.3.2.2.1">
<span class="ltx_p" id="A10.T13.1.1.3.2.2.1.1" style="width:199.2pt;">This is not acceptable, finds the Italian government and seized dozens of electric Fiat Topolinos.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.4.3.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.4.3.1.1">
<span class="ltx_p" id="A10.T13.1.1.4.3.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.4.3.1.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.4.3.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.4.3.2.1">
<span class="ltx_p" id="A10.T13.1.1.4.3.2.1.1" style="width:199.2pt;">Das zweite Gruppenspiel bestreitet die DFB-Elf fünf Tage später am 19. Juni in Stuttgart gegen Ungarn.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.5.4.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.5.4.1.1">
<span class="ltx_p" id="A10.T13.1.1.5.4.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.5.4.1.1.1.1">Translation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.5.4.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.5.4.2.1">
<span class="ltx_p" id="A10.T13.1.1.5.4.2.1.1" style="width:199.2pt;">The second group game will be played five days later on 19 June in Stuttgart against Hungary.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.6.5.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.6.5.1.1">
<span class="ltx_p" id="A10.T13.1.1.6.5.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.6.5.1.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.6.5.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.6.5.2.1">
<span class="ltx_p" id="A10.T13.1.1.6.5.2.1.1" style="width:199.2pt;">Nach meinem Wissen sind wir die Ersten in Deutschland, die das angewendet haben, sogar in Europa</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.7.6.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.7.6.1.1">
<span class="ltx_p" id="A10.T13.1.1.7.6.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.7.6.1.1.1.1">Translation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.7.6.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.7.6.2.1">
<span class="ltx_p" id="A10.T13.1.1.7.6.2.1.1" style="width:199.2pt;">To the best of my knowledge, we are the pioneers in Germany in using it, even in Europe,</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.8.7">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A10.T13.1.1.8.7.1" rowspan="6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.8.7.1.1">
<span class="ltx_p" id="A10.T13.1.1.8.7.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.8.7.1.1.1.1">Unnatural Phrase Flow</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.8.7.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.8.7.2.1">
<span class="ltx_p" id="A10.T13.1.1.8.7.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.8.7.2.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.8.7.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.8.7.3.1">
<span class="ltx_p" id="A10.T13.1.1.8.7.3.1.1" style="width:199.2pt;">schufen aber einen rockigeren sound</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.9.8.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.9.8.1.1">
<span class="ltx_p" id="A10.T13.1.1.9.8.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.9.8.1.1.1.1">Translation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.9.8.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.9.8.2.1">
<span class="ltx_p" id="A10.T13.1.1.9.8.2.1.1" style="width:199.2pt;">crafted a grittier sound</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.10.9.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.10.9.1.1">
<span class="ltx_p" id="A10.T13.1.1.10.9.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.10.9.1.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.10.9.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.10.9.2.1">
<span class="ltx_p" id="A10.T13.1.1.10.9.2.1.1" style="width:199.2pt;">sie sich stark mit anderen Arten vermischt</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.11.10.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.11.10.1.1">
<span class="ltx_p" id="A10.T13.1.1.11.10.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.11.10.1.1.1.1">Translation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A10.T13.1.1.11.10.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.11.10.2.1">
<span class="ltx_p" id="A10.T13.1.1.11.10.2.1.1" style="width:199.2pt;">it mixes strongly with other species</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.12.11.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.12.11.1.1">
<span class="ltx_p" id="A10.T13.1.1.12.11.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.12.11.1.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A10.T13.1.1.12.11.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.12.11.2.1">
<span class="ltx_p" id="A10.T13.1.1.12.11.2.1.1" style="width:199.2pt;">sind wir in der USA in Urlaub gewesen</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A10.T13.1.1.13.12.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.13.12.1.1">
<span class="ltx_p" id="A10.T13.1.1.13.12.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A10.T13.1.1.13.12.1.1.1.1">Translation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A10.T13.1.1.13.12.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_inline-block ltx_align_top" id="A10.T13.1.1.13.12.2.1">
<span class="ltx_p" id="A10.T13.1.1.13.12.2.1.1" style="width:199.2pt;">we vacationed in the US</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 11 provides a detailed guideline for annotating translation errors, categorized into: Unnatural Sentence Flow (structural issues), Unnatural Phrase Flow (literal translations), Culture-Specific Reference (inappropriate cultural references), Sensitive Content (offensive or sensitive information), Mistranslation (incorrect translations), Terminology (domain-specific errors), Non-translation (unrelated or incomprehensible translations), and Others (miscellaneous errors).  Each category includes a description to help annotators accurately identify and classify the translation errors.
> <details>
> <summary>read the caption</summary>
> Table 11:   Annotation Guideline in the present study
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04369/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04369/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}