---
title: "Florenz: Scaling Laws for Systematic Generalization in Vision-Language Models"
summary: "Florenz: Scaling laws for systematic generalization via monolingual vision-language models"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Fraunhofer IAIS",]
showSummary: true
date: 2025-03-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.09443 {{< /keyword >}}
{{< keyword icon="writer" >}} Julian Spravil et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.09443" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.09443" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.09443/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current vision-language models **struggle with multilinguality**, sacrificing downstream performance and facing lexical ambiguities. This paper addresses these issues by studying systematic generalization with monolingual VLMs for multilingual tasks. It focuses on the impact of model size and training data, aiming to improve cross-lingual transfer without extensive multilingual pre-training.



The paper introduces a new model family, **Florenz**, based on Florence-2 and Gemma-2, and trained it on a synthetic dataset with incomplete language coverage. It shows that **indirectly learning task-language pairs adheres to a scaling law**. The paper demonstrates that image captioning abilities can emerge in a specific language even with translation data only and achieves competitive results on downstream tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Monolingual VLMs can achieve systematic generalization in multilingual tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Model scale is more critical than the number of seen training samples for generalization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A simple decoder prefix can enable zero-shot captioning in new languages. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work matters because it studies **how well monolingual models generalize to multilingual tasks**. It addresses the crucial issue of **accessibility in vision-language models**, providing insights on creating models that perform well in multiple languages without needing extensive data for each. It also introduces a **method for dataset creation** that opens new avenues for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.09443/x1.png)

> 🔼 Figure 1 illustrates the architecture and training process of the Florenz vision-language model.  The diagram shows three parts: (left) an incomplete training dataset, (middle) the Florenz model architecture, and (right) the model's inference process. The training dataset includes image captioning tasks (in blue) and multimodal machine translation tasks (in orange).  Critically, the training data for image captioning is only available in English and German, while the machine translation data covers multiple languages (English to other languages). The Florenz model, designed as a monolingual encoder-decoder VLM, leverages pre-trained monolingual models.  The diagram demonstrates that despite limited training data for image captioning, the Florenz model generalizes to other languages (unseen languages) at inference time. The model's ability to do this is linked to a scaling law, which means that a larger model with increased parameter count and training data results in better cross-lingual generalization.
> <details>
> <summary>read the caption</summary>
> Figure 1: Florenz (middle) is a vision-language model trained on an incomplete dataset (left) that covers the tasks image captioning (blue) and multimodal machine translation (orange). The incompleteness concerns the availability of languages for the individual tasks, where captioning data is only available for English and German while En→→\rightarrow→X translation is available in all languages. Florenz generalizes to the missing captioning-language pairs during inference with sufficient scale (right).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4">
<tr class="ltx_tr" id="S3.T1.4.1">
<td class="ltx_td ltx_border_tt" id="S3.T1.4.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S3.T1.4.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.2.1" style="font-size:90%;">Context Length</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.2">
<td class="ltx_td ltx_align_left" id="S3.T1.4.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.2.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.2.2.1">
<span class="ltx_p" id="S3.T1.4.2.2.1.1"><span class="ltx_text" id="S3.T1.4.2.2.1.1.1" style="font-size:90%;">0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.2.3.1">
<span class="ltx_p" id="S3.T1.4.2.3.1.1"><span class="ltx_text" id="S3.T1.4.2.3.1.1.1" style="font-size:90%;">32</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.2.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.2.4.1">
<span class="ltx_p" id="S3.T1.4.2.4.1.1"><span class="ltx_text" id="S3.T1.4.2.4.1.1.1" style="font-size:90%;">64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.2.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.2.5.1">
<span class="ltx_p" id="S3.T1.4.2.5.1.1"><span class="ltx_text" id="S3.T1.4.2.5.1.1.1" style="font-size:90%;">128</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.2.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.2.6.1">
<span class="ltx_p" id="S3.T1.4.2.6.1.1"><span class="ltx_text" id="S3.T1.4.2.6.1.1.1" style="font-size:90%;">256</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.4.3.1">
<span class="ltx_text" id="S3.T1.4.3.1.1" style="font-size:90%;">NLLB-600M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="S3.T1.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.3.2.1">
<span class="ltx_p" id="S3.T1.4.3.2.1.1"><span class="ltx_text" id="S3.T1.4.3.2.1.1.1" style="font-size:90%;">50.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.3.3.1">
<span class="ltx_p" id="S3.T1.4.3.3.1.1"><span class="ltx_text" id="S3.T1.4.3.3.1.1.1" style="font-size:90%;">55.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.3.4.1">
<span class="ltx_p" id="S3.T1.4.3.4.1.1"><span class="ltx_text" id="S3.T1.4.3.4.1.1.1" style="font-size:90%;">54.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.3.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.3.5.1">
<span class="ltx_p" id="S3.T1.4.3.5.1.1"><span class="ltx_text" id="S3.T1.4.3.5.1.1.1" style="font-size:90%;">55.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.4.3.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.3.6.1">
<span class="ltx_p" id="S3.T1.4.3.6.1.1"><span class="ltx_text" id="S3.T1.4.3.6.1.1.1" style="font-size:90%;">54.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.4.4.1">
<span class="ltx_text" id="S3.T1.4.4.1.1" style="font-size:90%;">NLLB-3.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="S3.T1.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.4.2.1">
<span class="ltx_p" id="S3.T1.4.4.2.1.1"><span class="ltx_text" id="S3.T1.4.4.2.1.1.1" style="font-size:90%;">50.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.4.3.1">
<span class="ltx_p" id="S3.T1.4.4.3.1.1"><span class="ltx_text" id="S3.T1.4.4.3.1.1.1" style="font-size:90%;">60.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T1.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.4.4.1">
<span class="ltx_p" id="S3.T1.4.4.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.1.1.1" style="font-size:90%;">64.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T1.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.4.5.1">
<span class="ltx_p" id="S3.T1.4.4.5.1.1"><span class="ltx_text" id="S3.T1.4.4.5.1.1.1" style="font-size:90%;">63.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T1.4.4.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.4.6.1">
<span class="ltx_p" id="S3.T1.4.4.6.1.1"><span class="ltx_text" id="S3.T1.4.4.6.1.1.1" style="font-size:90%;">63.3</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of a binary disambiguation task on the CoMMuTE English-to-German dataset.  The experiment uses the NLLB machine translation model with varying context lengths (0, 32, 64, 128, 256) added to the input captions. The goal is to determine how the model's accuracy in disambiguating lexically ambiguous words changes based on the length of the added context. Two different sizes of NLLB models were used, demonstrating that both the context length and the model size significantly influence the performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy (%) of binary disambiguation on the CoMMuTE En→→\rightarrow→De subset [24] using the context-enhanced machine translation model NLLB [13] for various context lengths. Note that longer context and larger model result in better accuracy.
> </details>





### In-depth insights


#### Monolingual Scaling
**Monolingual scaling** in vision-language models (VLMs) offers a fascinating avenue for cross-lingual transfer. The conventional wisdom favors multilingual pre-training, but focusing on scaling monolingual models presents a compelling alternative. It allows for concentrated resource allocation, potentially leading to superior performance in the source language and surprising cross-lingual generalization. The **Florenz** paper investigates this, proposing a monolingual encoder-decoder VLM that, through strategic data generation and scaling, achieves impressive results in multilingual tasks. By training primarily on English and German data, the model demonstrates the ability to caption images in languages it has only encountered in translation tasks, suggesting that the capacity gained through scaling enables it to extrapolate task knowledge.

#### Florenz's Design
**Florenz leverages a standard transformer encoder-decoder architecture**, combining the strengths of **Florence-2 for visual encoding** and **Gemma-2 for language decoding**. This allows the model to process visual information and generate coherent textual descriptions. The model's design focuses on efficient transfer learning and systematic generalization. Model sizes range from 0.4B to 11.2B parameters, allowing for scalability. The image embeddings and a task prompt are fed into the encoder and then passed to the decoder. The decoder consists of Sentencepiece tokenizer trained for Gemini.

#### Synthetic Data
While the provided paper doesn't explicitly discuss "Synthetic Data" under that specific heading, the study's core methodology revolves around its implicit use. The authors generate a **synthetic dataset** with intentionally incomplete language coverage to train their Florenz model. This is a clever approach to test **systematic generalization**. By training on data where certain language-task pairings are missing (e.g., captioning in specific languages), they force the model to learn underlying relationships between language and vision, rather than simply memorizing training examples. The performance of Florenz on unseen task-language pairs then becomes a measure of its ability to generalize from the **available data**. This approach cleverly circumvents the limitations of relying solely on pre-existing, comprehensive datasets, which are often unavailable in multilingual contexts. The model's ability to caption images in a language even when only translation data is available indicates that the **synthetic data** generation successfully imparts cross-lingual understanding.

#### Prefix Generalize
**Decoder prefixes** act as crucial keys to unlock generalization in vision-language models (VLMs). While cross-entropy loss decreases, models often struggle to generate text in the desired language, defaulting to training languages like German or English. Adding a simple prefix in the target language seeds the output, enabling caption generation **without explicit exposure to target language captioning data**. This suggests that systematic generalization relies on the model's ability to recognize and utilize language cues, prompting the generation process in the correct language context. This points to a simple but effective mechanism for activating dormant multilingual capabilities. The pre-training scaling laws suggest that the number of seen samples has a secondary role for systematic generalization.

#### Task Balance
**Balancing tasks** is crucial in multilingual learning to prevent the model from overfitting to dominant languages or tasks. An effective balance ensures fair representation and learning across all languages and tasks, enhancing **generalization**. Techniques involve adjusting sampling probabilities to ensure **equal representation** from each task-language combination. Careful attention to task balance leads to models that are **robust and perform consistently** across diverse linguistic scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.09443/x2.png)

> 🔼 This figure illustrates the process of creating a multilingual multimodal dataset.  The input consists of an image dataset with short captions or alt text, and a parallel translation dataset (bitexts) in English and German.  The pipeline involves these steps:  1. **Detailed Description Generation:** An image and its short caption are fed into a Vision-Language Model (VLM) to generate a more detailed description in English. 2. **Translation:** The detailed English description is then translated into the target language (German). 3. **Embedding:** Both the image (using image embeddings) and all English sentences from the parallel translation dataset (using text embeddings) are converted into vector representations in a shared vector space. 4. **Cosine Similarity Calculation:**  Cosine similarity is computed to measure the similarity between the image embedding and each English sentence embedding. 5. **Top-N Matching:** The top N most similar image-translation pairs are selected, creating a new dataset with matched image and translated descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Dataset generation pipeline. Input is an image dataset with short captions or alt texts and a translation dataset with bitexts in English and the target language German. (1) Image and short caption are fed into a VLM to generate a detailed English description, which is (2) translated into the target language. (3) The image and (4) all English sentences of the translation dataset are embedded in a shared vector space. (5) Cosine similarity is calculated and (6) top-N matching pairs the most similar images and translations.
> </details>



![](https://arxiv.org/html/2503.09443/x3.png)

> 🔼 This figure displays the relationship between training compute (measured in Giga Multiply-Accumulate operations or GMACs), model size, and the cross-entropy loss (CE) for various tasks.  Three different test sets are included: unseen captioning (UC) in Spanish and Chinese, seen translation (ST) in the same languages, and seen captioning (SC) in English and German.  The results illustrate how increasing the compute budget and model size impacts the performance of each task.  The gray staircase lines in each plot depict the Pareto frontier – the optimal tradeoff between compute and loss.  The results suggest that having seen translation data helps the model generalize to unseen captioning tasks in new languages.
> <details>
> <summary>read the caption</summary>
> Figure 3: Test cross-entropy loss (CE) for various training compute budgets (GMACs, Giga Multiply-Accumulate operations), showing the effects of different model sizes and seen training samples. We show results for the test splits (see Sec. 4.1) for unseen captioning (UC) in Spanish (Es) and Chinese (Zh), seen translation (ST) in these languages, and seen captioning (SC) in English (En) and German (De). The models F-0.4B, F-1.0B, F-3.5B, and F-11.2B are trained for 500, 2k, 5k, and 10k steps, respectively, resulting in 0.5M to 10M seen samples with a batch size of 1024. Eq. 1 is fitted to the points on the Pareto frontier (gray staircase graph). Higher compute budgets improve CE for UC (left), ST (middle), and SC (right). This suggests that translation facilitates generalization in captioning.
> </details>



![](https://arxiv.org/html/2503.09443/x4.png)

> 🔼 Figure 4 illustrates the scaling law relationship between model size and cross-entropy loss for three distinct scenarios.  The y-axis shows the cross-entropy loss (a measure of model error), while the x-axis represents model size in billions of parameters. The three scenarios are: (1) unseen captioning tasks in Spanish and Chinese (UC, blue), representing the ability of a model to generate image captions in languages not encountered during training; (2) seen translation tasks in Spanish and Chinese (ST, orange), where the model has already seen translation tasks involving these languages during training; and (3) seen captioning tasks in English and German (SC, green), representing the model's performance in languages it has seen extensively during training.  The number of training samples was held constant at 10 million for all scenarios. The plot includes confidence intervals (CI) and prediction intervals (PI) to indicate the uncertainty associated with the estimates.  The dashed lines represent extrapolations to larger model sizes.
> <details>
> <summary>read the caption</summary>
> Figure 4: Predicted test cross-entropy loss (CE) as function of model parameters in billion (B) with confidence intervals (CI) and prediction intervals (PI) for unseen captioning in Spanish and Chinese (UC, blue), seen translation in Spanish and Chinese (ST, orange), and seen captioning in English and German (SC, green). The number of seen training samples is fixed to 10M, respective measurements are shown as dots. Extrapolation is drawn dashed.
> </details>



![](https://arxiv.org/html/2503.09443/x5.png)

> 🔼 This figure demonstrates how adding a language-specific prefix to the decoder input of a vision-language model (VLM) significantly improves its zero-shot image captioning capabilities in unseen languages.  The experiment uses the XM3600 dataset [62], testing the model's performance in French (Fr), Spanish (Es), Russian (Ru), and Chinese (Zh) – languages the model was not trained on for image captioning. The results, measured by CIDEr score [64], show a substantial increase when using prefixes, highlighting the effectiveness of this simple technique to enhance cross-lingual generalization in VLMs.
> <details>
> <summary>read the caption</summary>
> Figure 5: Effect of adding a prefix (Fr: ”La photo montre”, Es: ”La imagen muestra”, etc.) to the decoder input to unlock zero-shot captioning. Tested on the image captioning dataset XM3600 [62] in the unseen languages Fr, Es, Ru, and Zh. The mean CIDEr [64] over unseen languages significantly improves with the prefix.
> </details>



![](https://arxiv.org/html/2503.09443/x6.png)

> 🔼 This figure displays the scaling laws observed when fine-tuning various sized vision-language models on multiple downstream tasks.  The top row shows results for translation tasks from English to German (De) and French (Fr) using the Multi30K dataset, and for translation and disambiguation tasks using the CoMMuTE dataset (English to German, and English to German, French, Russian, and Chinese).  The metric used is BLEU score for translation. The bottom row presents results for image captioning tasks, utilizing the CIDEr metric. Datasets include COCO Karpathy (English only), Multi30K (English and German), and XM3600 (English, German, and four other unseen languages: French, Spanish, Russian, and Chinese). The figure highlights that the scaling laws are stronger for tasks and languages that were either already familiar to the pre-trained language model (English) or had complete training data coverage (German), compared to those with limited data or unseen languages.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scaling laws for fine-tuned models on different downstream tasks. First row: Multi30K translation to De and Fr measured in BLEU (Task 1; mean over Test2016, Test2017 and AmbiguousCOCO splits), CoMMuTE translation and disambiguation for En→→\rightarrow→De and En→→\rightarrow→{De, Fr, Ru, Zh} measured in BLEU and accuracy, respectively. Second row: Captioning tasks measured with CIDEr: COCO Karpathy (En), Multi30K (En, De) (Task 2, Test2016), and XM3600 for En, De and unseen languages (Fr, Es, Ru, Zh). UC and ST exhibit stronger scaling laws than tasks for languages already known to the pre-trained LLM (En) or those with complete task coverage (De).
> </details>



![](https://arxiv.org/html/2503.09443/x7.png)

> 🔼 This figure shows a breakdown of the language coverage in the pre-training dataset used to train the Florenz model. It visually represents the proportions of caption and translation data available for each language, highlighting the imbalance in data distribution across different languages.
> <details>
> <summary>read the caption</summary>
> Figure 7: Distribution of caption and translation data with language coverage in our pre-training dataset.
> </details>



![](https://arxiv.org/html/2503.09443/x8.png)

> 🔼 This figure shows a breakdown of the language coverage in the fine-tuning dataset used for the Florenz model.  It visually represents the proportion of caption and translation data available for each language, illustrating which languages have more extensive data for both captioning and translation tasks, and which languages have a more limited dataset.
> <details>
> <summary>read the caption</summary>
> Figure 8: Distribution of caption and translation data with language coverage in our fine-tuning dataset.
> </details>



![](https://arxiv.org/html/2503.09443/x9.png)

> 🔼 Figure 9 shows example captions generated by the F-11.2B model (a large vision-language model) in four different languages: French (Fr), Spanish (Es), Russian (Ru), and Chinese (Zh).  Crucially, this model had not received any training data for image captioning in these languages.  The captions were generated by providing the model with a short prompt (the underlined prefix in the figure). The English translations of the generated captions are also provided for comparison and were created using the DeepL translation service.  The image used is a photo of three pelicans on a dock.
> <details>
> <summary>read the caption</summary>
> Figure 9: Captions generated with F-11.2B by prompting with the underlined prefix. F-11.2B has not seen captioning data for Fr, Es, Ru, and Zh. English references are created with DeepL. Photo by Jeanette Dickson.
> </details>



![](https://arxiv.org/html/2503.09443/x10.png)

> 🔼 Figure 10 shows example captions generated by the F-11.2B model (one of the Florenz models) for an image depicting a person at a train station.  Crucially, the model had *not* been trained on captioning data for French, Spanish, Russian, or Chinese.  The model was prompted with a prefix in each language (underlined in the figure) before generating the caption in that language. The English captions provided are machine translations created with DeepL.
> <details>
> <summary>read the caption</summary>
> Figure 10: Captions generated with F-11.2B by prompting with the underlined prefix. F-11.2B has not seen captioning data for French (Fr), Spanish (Es), Russian (Ru), and Chinese (Zh). English references are created with DeepL. Photo by Reinaldo Simoes.
> </details>



![](https://arxiv.org/html/2503.09443/x11.png)

> 🔼 Figure 11 shows a detailed caption generated by the F-11.2B 30K ft model for a picture of three pelicans standing on a dock.  The caption is in German.  An English translation, created using DeepL, is also provided for comparison and better understanding. The photo itself was taken by Jeanette Dickson.
> <details>
> <summary>read the caption</summary>
> Figure 11: Detailed caption generated with F-11.2B 30K ft for German (De). English reference is created with DeepL. Photo by Jeanette Dickson.
> </details>



![](https://arxiv.org/html/2503.09443/x12.png)

> 🔼 Figure 12 shows a detailed caption generated by the F-11.2B 30K ft model for a German-language image.  The image depicts a person at a train station.  The model generated a lengthy, highly descriptive caption of the scene in German. An English translation is included for comparison, generated using the DeepL translation service. The photograph is credited to Reinaldo Simoes.
> <details>
> <summary>read the caption</summary>
> Figure 12: Detailed caption generated with F-11.2B 30K ft for German (De). English reference is created with DeepL. Photo by Reinaldo Simoes.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T2.13">
<tr class="ltx_tr" id="S6.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.2.1" style="font-size:90%;">Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.3.1" style="font-size:90%;">Parameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.4">
<span class="ltx_text ltx_font_bold" id="S6.T2.1.1.4.1" style="font-size:90%;">Estimate</span><span class="ltx_text" id="S6.T2.1.1.4.2" style="font-size:90%;"> [95% CI]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.1">
<math alttext="\bm{p}" class="ltx_Math" display="inline" id="S6.T2.1.1.1.m1.1"><semantics id="S6.T2.1.1.1.m1.1a"><mi id="S6.T2.1.1.1.m1.1.1" mathsize="90%" xref="S6.T2.1.1.1.m1.1.1.cmml">𝒑</mi><annotation-xml encoding="MathML-Content" id="S6.T2.1.1.1.m1.1b"><ci id="S6.T2.1.1.1.m1.1.1.cmml" xref="S6.T2.1.1.1.m1.1.1">𝒑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.1.1.1.m1.1c">\bm{p}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.1.1.1.m1.1d">bold_italic_p</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.1" style="font-size:90%;">-value</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T2.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.3.3.3" rowspan="2"><span class="ltx_text" id="S6.T2.3.3.3.1" style="font-size:90%;">UC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.1"><math alttext="\alpha_{0}" class="ltx_Math" display="inline" id="S6.T2.2.2.1.m1.1"><semantics id="S6.T2.2.2.1.m1.1a"><msub id="S6.T2.2.2.1.m1.1.1" xref="S6.T2.2.2.1.m1.1.1.cmml"><mi id="S6.T2.2.2.1.m1.1.1.2" mathsize="90%" xref="S6.T2.2.2.1.m1.1.1.2.cmml">α</mi><mn id="S6.T2.2.2.1.m1.1.1.3" mathsize="90%" xref="S6.T2.2.2.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T2.2.2.1.m1.1b"><apply id="S6.T2.2.2.1.m1.1.1.cmml" xref="S6.T2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T2.2.2.1.m1.1.1.1.cmml" xref="S6.T2.2.2.1.m1.1.1">subscript</csymbol><ci id="S6.T2.2.2.1.m1.1.1.2.cmml" xref="S6.T2.2.2.1.m1.1.1.2">𝛼</ci><cn id="S6.T2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S6.T2.2.2.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.2.2.1.m1.1c">\alpha_{0}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.2.2.1.m1.1d">italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.3.3.4"><span class="ltx_text" id="S6.T2.3.3.4.1" style="font-size:90%;">1.86 [0.92, 2.80]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.3.3.2"><math alttext="p&lt;0.01" class="ltx_Math" display="inline" id="S6.T2.3.3.2.m1.1"><semantics id="S6.T2.3.3.2.m1.1a"><mrow id="S6.T2.3.3.2.m1.1.1" xref="S6.T2.3.3.2.m1.1.1.cmml"><mi id="S6.T2.3.3.2.m1.1.1.2" mathsize="90%" xref="S6.T2.3.3.2.m1.1.1.2.cmml">p</mi><mo id="S6.T2.3.3.2.m1.1.1.1" mathsize="90%" xref="S6.T2.3.3.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T2.3.3.2.m1.1.1.3" mathsize="90%" xref="S6.T2.3.3.2.m1.1.1.3.cmml">0.01</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.3.3.2.m1.1b"><apply id="S6.T2.3.3.2.m1.1.1.cmml" xref="S6.T2.3.3.2.m1.1.1"><lt id="S6.T2.3.3.2.m1.1.1.1.cmml" xref="S6.T2.3.3.2.m1.1.1.1"></lt><ci id="S6.T2.3.3.2.m1.1.1.2.cmml" xref="S6.T2.3.3.2.m1.1.1.2">𝑝</ci><cn id="S6.T2.3.3.2.m1.1.1.3.cmml" type="float" xref="S6.T2.3.3.2.m1.1.1.3">0.01</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.3.3.2.m1.1c">p&lt;0.01</annotation><annotation encoding="application/x-llamapun" id="S6.T2.3.3.2.m1.1d">italic_p &lt; 0.01</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T2.5.5">
<td class="ltx_td ltx_align_center" id="S6.T2.4.4.1"><math alttext="\alpha_{1}" class="ltx_Math" display="inline" id="S6.T2.4.4.1.m1.1"><semantics id="S6.T2.4.4.1.m1.1a"><msub id="S6.T2.4.4.1.m1.1.1" xref="S6.T2.4.4.1.m1.1.1.cmml"><mi id="S6.T2.4.4.1.m1.1.1.2" mathsize="90%" xref="S6.T2.4.4.1.m1.1.1.2.cmml">α</mi><mn id="S6.T2.4.4.1.m1.1.1.3" mathsize="90%" xref="S6.T2.4.4.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T2.4.4.1.m1.1b"><apply id="S6.T2.4.4.1.m1.1.1.cmml" xref="S6.T2.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T2.4.4.1.m1.1.1.1.cmml" xref="S6.T2.4.4.1.m1.1.1">subscript</csymbol><ci id="S6.T2.4.4.1.m1.1.1.2.cmml" xref="S6.T2.4.4.1.m1.1.1.2">𝛼</ci><cn id="S6.T2.4.4.1.m1.1.1.3.cmml" type="integer" xref="S6.T2.4.4.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.4.4.1.m1.1c">\alpha_{1}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.4.4.1.m1.1d">italic_α start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S6.T2.5.5.3"><span class="ltx_text" id="S6.T2.5.5.3.1" style="font-size:90%;">-0.15 [-0.26, -0.04]</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.5.5.2"><math alttext="p&lt;0.05" class="ltx_Math" display="inline" id="S6.T2.5.5.2.m1.1"><semantics id="S6.T2.5.5.2.m1.1a"><mrow id="S6.T2.5.5.2.m1.1.1" xref="S6.T2.5.5.2.m1.1.1.cmml"><mi id="S6.T2.5.5.2.m1.1.1.2" mathsize="90%" xref="S6.T2.5.5.2.m1.1.1.2.cmml">p</mi><mo id="S6.T2.5.5.2.m1.1.1.1" mathsize="90%" xref="S6.T2.5.5.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T2.5.5.2.m1.1.1.3" mathsize="90%" xref="S6.T2.5.5.2.m1.1.1.3.cmml">0.05</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.5.5.2.m1.1b"><apply id="S6.T2.5.5.2.m1.1.1.cmml" xref="S6.T2.5.5.2.m1.1.1"><lt id="S6.T2.5.5.2.m1.1.1.1.cmml" xref="S6.T2.5.5.2.m1.1.1.1"></lt><ci id="S6.T2.5.5.2.m1.1.1.2.cmml" xref="S6.T2.5.5.2.m1.1.1.2">𝑝</ci><cn id="S6.T2.5.5.2.m1.1.1.3.cmml" type="float" xref="S6.T2.5.5.2.m1.1.1.3">0.05</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.5.5.2.m1.1c">p&lt;0.05</annotation><annotation encoding="application/x-llamapun" id="S6.T2.5.5.2.m1.1d">italic_p &lt; 0.05</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.7.3" rowspan="2"><span class="ltx_text" id="S6.T2.7.7.3.1" style="font-size:90%;">ST</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.6.6.1"><math alttext="\alpha_{0}" class="ltx_Math" display="inline" id="S6.T2.6.6.1.m1.1"><semantics id="S6.T2.6.6.1.m1.1a"><msub id="S6.T2.6.6.1.m1.1.1" xref="S6.T2.6.6.1.m1.1.1.cmml"><mi id="S6.T2.6.6.1.m1.1.1.2" mathsize="90%" xref="S6.T2.6.6.1.m1.1.1.2.cmml">α</mi><mn id="S6.T2.6.6.1.m1.1.1.3" mathsize="90%" xref="S6.T2.6.6.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T2.6.6.1.m1.1b"><apply id="S6.T2.6.6.1.m1.1.1.cmml" xref="S6.T2.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T2.6.6.1.m1.1.1.1.cmml" xref="S6.T2.6.6.1.m1.1.1">subscript</csymbol><ci id="S6.T2.6.6.1.m1.1.1.2.cmml" xref="S6.T2.6.6.1.m1.1.1.2">𝛼</ci><cn id="S6.T2.6.6.1.m1.1.1.3.cmml" type="integer" xref="S6.T2.6.6.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.6.6.1.m1.1c">\alpha_{0}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.6.6.1.m1.1d">italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.7.4"><span class="ltx_text" id="S6.T2.7.7.4.1" style="font-size:90%;">2.02 [1.75, 2.23]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.7.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T2.7.7.2.m1.1"><semantics id="S6.T2.7.7.2.m1.1a"><mrow id="S6.T2.7.7.2.m1.1.1" xref="S6.T2.7.7.2.m1.1.1.cmml"><mi id="S6.T2.7.7.2.m1.1.1.2" mathsize="90%" xref="S6.T2.7.7.2.m1.1.1.2.cmml">p</mi><mo id="S6.T2.7.7.2.m1.1.1.1" mathsize="90%" xref="S6.T2.7.7.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T2.7.7.2.m1.1.1.3" mathsize="90%" xref="S6.T2.7.7.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.7.7.2.m1.1b"><apply id="S6.T2.7.7.2.m1.1.1.cmml" xref="S6.T2.7.7.2.m1.1.1"><lt id="S6.T2.7.7.2.m1.1.1.1.cmml" xref="S6.T2.7.7.2.m1.1.1.1"></lt><ci id="S6.T2.7.7.2.m1.1.1.2.cmml" xref="S6.T2.7.7.2.m1.1.1.2">𝑝</ci><cn id="S6.T2.7.7.2.m1.1.1.3.cmml" type="float" xref="S6.T2.7.7.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.7.7.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T2.7.7.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T2.9.9">
<td class="ltx_td ltx_align_center" id="S6.T2.8.8.1"><math alttext="\alpha_{1}" class="ltx_Math" display="inline" id="S6.T2.8.8.1.m1.1"><semantics id="S6.T2.8.8.1.m1.1a"><msub id="S6.T2.8.8.1.m1.1.1" xref="S6.T2.8.8.1.m1.1.1.cmml"><mi id="S6.T2.8.8.1.m1.1.1.2" mathsize="90%" xref="S6.T2.8.8.1.m1.1.1.2.cmml">α</mi><mn id="S6.T2.8.8.1.m1.1.1.3" mathsize="90%" xref="S6.T2.8.8.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T2.8.8.1.m1.1b"><apply id="S6.T2.8.8.1.m1.1.1.cmml" xref="S6.T2.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T2.8.8.1.m1.1.1.1.cmml" xref="S6.T2.8.8.1.m1.1.1">subscript</csymbol><ci id="S6.T2.8.8.1.m1.1.1.2.cmml" xref="S6.T2.8.8.1.m1.1.1.2">𝛼</ci><cn id="S6.T2.8.8.1.m1.1.1.3.cmml" type="integer" xref="S6.T2.8.8.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.8.8.1.m1.1c">\alpha_{1}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.8.8.1.m1.1d">italic_α start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S6.T2.9.9.3"><span class="ltx_text" id="S6.T2.9.9.3.1" style="font-size:90%;">-0.18 [-0.21, -0.15]</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.9.9.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T2.9.9.2.m1.1"><semantics id="S6.T2.9.9.2.m1.1a"><mrow id="S6.T2.9.9.2.m1.1.1" xref="S6.T2.9.9.2.m1.1.1.cmml"><mi id="S6.T2.9.9.2.m1.1.1.2" mathsize="90%" xref="S6.T2.9.9.2.m1.1.1.2.cmml">p</mi><mo id="S6.T2.9.9.2.m1.1.1.1" mathsize="90%" xref="S6.T2.9.9.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T2.9.9.2.m1.1.1.3" mathsize="90%" xref="S6.T2.9.9.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.9.9.2.m1.1b"><apply id="S6.T2.9.9.2.m1.1.1.cmml" xref="S6.T2.9.9.2.m1.1.1"><lt id="S6.T2.9.9.2.m1.1.1.1.cmml" xref="S6.T2.9.9.2.m1.1.1.1"></lt><ci id="S6.T2.9.9.2.m1.1.1.2.cmml" xref="S6.T2.9.9.2.m1.1.1.2">𝑝</ci><cn id="S6.T2.9.9.2.m1.1.1.3.cmml" type="float" xref="S6.T2.9.9.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.9.9.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T2.9.9.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T2.11.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.11.11.3" rowspan="2"><span class="ltx_text" id="S6.T2.11.11.3.1" style="font-size:90%;">SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.10.10.1"><math alttext="\alpha_{0}" class="ltx_Math" display="inline" id="S6.T2.10.10.1.m1.1"><semantics id="S6.T2.10.10.1.m1.1a"><msub id="S6.T2.10.10.1.m1.1.1" xref="S6.T2.10.10.1.m1.1.1.cmml"><mi id="S6.T2.10.10.1.m1.1.1.2" mathsize="90%" xref="S6.T2.10.10.1.m1.1.1.2.cmml">α</mi><mn id="S6.T2.10.10.1.m1.1.1.3" mathsize="90%" xref="S6.T2.10.10.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T2.10.10.1.m1.1b"><apply id="S6.T2.10.10.1.m1.1.1.cmml" xref="S6.T2.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T2.10.10.1.m1.1.1.1.cmml" xref="S6.T2.10.10.1.m1.1.1">subscript</csymbol><ci id="S6.T2.10.10.1.m1.1.1.2.cmml" xref="S6.T2.10.10.1.m1.1.1.2">𝛼</ci><cn id="S6.T2.10.10.1.m1.1.1.3.cmml" type="integer" xref="S6.T2.10.10.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.10.10.1.m1.1c">\alpha_{0}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.10.10.1.m1.1d">italic_α start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.11.11.4"><span class="ltx_text" id="S6.T2.11.11.4.1" style="font-size:90%;">1.42 [1.29, 1.56]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.11.11.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T2.11.11.2.m1.1"><semantics id="S6.T2.11.11.2.m1.1a"><mrow id="S6.T2.11.11.2.m1.1.1" xref="S6.T2.11.11.2.m1.1.1.cmml"><mi id="S6.T2.11.11.2.m1.1.1.2" mathsize="90%" xref="S6.T2.11.11.2.m1.1.1.2.cmml">p</mi><mo id="S6.T2.11.11.2.m1.1.1.1" mathsize="90%" xref="S6.T2.11.11.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T2.11.11.2.m1.1.1.3" mathsize="90%" xref="S6.T2.11.11.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.11.11.2.m1.1b"><apply id="S6.T2.11.11.2.m1.1.1.cmml" xref="S6.T2.11.11.2.m1.1.1"><lt id="S6.T2.11.11.2.m1.1.1.1.cmml" xref="S6.T2.11.11.2.m1.1.1.1"></lt><ci id="S6.T2.11.11.2.m1.1.1.2.cmml" xref="S6.T2.11.11.2.m1.1.1.2">𝑝</ci><cn id="S6.T2.11.11.2.m1.1.1.3.cmml" type="float" xref="S6.T2.11.11.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.11.11.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T2.11.11.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T2.13.13">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.12.12.1"><math alttext="\alpha_{1}" class="ltx_Math" display="inline" id="S6.T2.12.12.1.m1.1"><semantics id="S6.T2.12.12.1.m1.1a"><msub id="S6.T2.12.12.1.m1.1.1" xref="S6.T2.12.12.1.m1.1.1.cmml"><mi id="S6.T2.12.12.1.m1.1.1.2" mathsize="90%" xref="S6.T2.12.12.1.m1.1.1.2.cmml">α</mi><mn id="S6.T2.12.12.1.m1.1.1.3" mathsize="90%" xref="S6.T2.12.12.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T2.12.12.1.m1.1b"><apply id="S6.T2.12.12.1.m1.1.1.cmml" xref="S6.T2.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T2.12.12.1.m1.1.1.1.cmml" xref="S6.T2.12.12.1.m1.1.1">subscript</csymbol><ci id="S6.T2.12.12.1.m1.1.1.2.cmml" xref="S6.T2.12.12.1.m1.1.1.2">𝛼</ci><cn id="S6.T2.12.12.1.m1.1.1.3.cmml" type="integer" xref="S6.T2.12.12.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.12.12.1.m1.1c">\alpha_{1}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.12.12.1.m1.1d">italic_α start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.13.13.3"><span class="ltx_text" id="S6.T2.13.13.3.1" style="font-size:90%;">-0.15 [-0.16, -0.13]</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.13.13.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T2.13.13.2.m1.1"><semantics id="S6.T2.13.13.2.m1.1a"><mrow id="S6.T2.13.13.2.m1.1.1" xref="S6.T2.13.13.2.m1.1.1.cmml"><mi id="S6.T2.13.13.2.m1.1.1.2" mathsize="90%" xref="S6.T2.13.13.2.m1.1.1.2.cmml">p</mi><mo id="S6.T2.13.13.2.m1.1.1.1" mathsize="90%" xref="S6.T2.13.13.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T2.13.13.2.m1.1.1.3" mathsize="90%" xref="S6.T2.13.13.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.13.13.2.m1.1b"><apply id="S6.T2.13.13.2.m1.1.1.cmml" xref="S6.T2.13.13.2.m1.1.1"><lt id="S6.T2.13.13.2.m1.1.1.1.cmml" xref="S6.T2.13.13.2.m1.1.1.1"></lt><ci id="S6.T2.13.13.2.m1.1.1.2.cmml" xref="S6.T2.13.13.2.m1.1.1.2">𝑝</ci><cn id="S6.T2.13.13.2.m1.1.1.3.cmml" type="float" xref="S6.T2.13.13.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.13.13.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T2.13.13.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fitting a power-law model (Equation 1 in the paper) to the relationship between cross-entropy loss and training compute.  The model's parameters (α0 and α1) are shown, along with 95% confidence intervals and p-values, indicating the statistical significance of the results. Three test sets are included: UC (Unseen caption-language), ST (Seen translation-language), and SC (Seen caption-language). The log10 space transformation is used for the compute and loss values.  The parameters provide insights into how well the power law fits the data and how the cross-entropy loss changes as computational resources used for training are increased.
> <details>
> <summary>read the caption</summary>
> Table 2: Parameters α0/1subscript𝛼01\alpha_{0/1}italic_α start_POSTSUBSCRIPT 0 / 1 end_POSTSUBSCRIPT for UC, ST, and SC test sets in log10 space, with 95% confidence intervals and p-values, as per Eq. 1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T3.19">
<tr class="ltx_tr" id="S6.T3.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.2.1" style="font-size:90%;">Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.3.1" style="font-size:90%;">Parameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.4">
<span class="ltx_text ltx_font_bold" id="S6.T3.1.1.4.1" style="font-size:90%;">Estimate</span><span class="ltx_text" id="S6.T3.1.1.4.2" style="font-size:90%;"> [95% CI]</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.1">
<math alttext="\bm{p}" class="ltx_Math" display="inline" id="S6.T3.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.m1.1a"><mi id="S6.T3.1.1.1.m1.1.1" mathsize="90%" xref="S6.T3.1.1.1.m1.1.1.cmml">𝒑</mi><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.m1.1b"><ci id="S6.T3.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.m1.1.1">𝒑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.m1.1c">\bm{p}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.m1.1d">bold_italic_p</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1" style="font-size:90%;">-value</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.3" rowspan="3"><span class="ltx_text" id="S6.T3.3.3.3.1" style="font-size:90%;">UC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.1"><math alttext="\beta_{0}" class="ltx_Math" display="inline" id="S6.T3.2.2.1.m1.1"><semantics id="S6.T3.2.2.1.m1.1a"><msub id="S6.T3.2.2.1.m1.1.1" xref="S6.T3.2.2.1.m1.1.1.cmml"><mi id="S6.T3.2.2.1.m1.1.1.2" mathsize="90%" xref="S6.T3.2.2.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.2.2.1.m1.1.1.3" mathsize="90%" xref="S6.T3.2.2.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.1.m1.1b"><apply id="S6.T3.2.2.1.m1.1.1.cmml" xref="S6.T3.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.2.2.1.m1.1.1.1.cmml" xref="S6.T3.2.2.1.m1.1.1">subscript</csymbol><ci id="S6.T3.2.2.1.m1.1.1.2.cmml" xref="S6.T3.2.2.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.2.2.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.2.2.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.1.m1.1c">\beta_{0}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.1.m1.1d">italic_β start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.4"><span class="ltx_text" id="S6.T3.3.3.4.1" style="font-size:90%;">2.30 [1.95, 2.66]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T3.3.3.2.m1.1"><semantics id="S6.T3.3.3.2.m1.1a"><mrow id="S6.T3.3.3.2.m1.1.1" xref="S6.T3.3.3.2.m1.1.1.cmml"><mi id="S6.T3.3.3.2.m1.1.1.2" mathsize="90%" xref="S6.T3.3.3.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.3.3.2.m1.1.1.1" mathsize="90%" xref="S6.T3.3.3.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.3.3.2.m1.1.1.3" mathsize="90%" xref="S6.T3.3.3.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.3.3.2.m1.1b"><apply id="S6.T3.3.3.2.m1.1.1.cmml" xref="S6.T3.3.3.2.m1.1.1"><lt id="S6.T3.3.3.2.m1.1.1.1.cmml" xref="S6.T3.3.3.2.m1.1.1.1"></lt><ci id="S6.T3.3.3.2.m1.1.1.2.cmml" xref="S6.T3.3.3.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.3.3.2.m1.1.1.3.cmml" type="float" xref="S6.T3.3.3.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.3.3.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T3.3.3.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T3.5.5">
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.1"><math alttext="\beta_{1}" class="ltx_Math" display="inline" id="S6.T3.4.4.1.m1.1"><semantics id="S6.T3.4.4.1.m1.1a"><msub id="S6.T3.4.4.1.m1.1.1" xref="S6.T3.4.4.1.m1.1.1.cmml"><mi id="S6.T3.4.4.1.m1.1.1.2" mathsize="90%" xref="S6.T3.4.4.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.4.4.1.m1.1.1.3" mathsize="90%" xref="S6.T3.4.4.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.4.4.1.m1.1b"><apply id="S6.T3.4.4.1.m1.1.1.cmml" xref="S6.T3.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.4.4.1.m1.1.1.1.cmml" xref="S6.T3.4.4.1.m1.1.1">subscript</csymbol><ci id="S6.T3.4.4.1.m1.1.1.2.cmml" xref="S6.T3.4.4.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.4.4.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.4.4.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.4.4.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.4.4.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.3"><span class="ltx_text" id="S6.T3.5.5.3.1" style="font-size:90%;">-0.16 [-0.19, -0.13]</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T3.5.5.2.m1.1"><semantics id="S6.T3.5.5.2.m1.1a"><mrow id="S6.T3.5.5.2.m1.1.1" xref="S6.T3.5.5.2.m1.1.1.cmml"><mi id="S6.T3.5.5.2.m1.1.1.2" mathsize="90%" xref="S6.T3.5.5.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.5.5.2.m1.1.1.1" mathsize="90%" xref="S6.T3.5.5.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.5.5.2.m1.1.1.3" mathsize="90%" xref="S6.T3.5.5.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.5.5.2.m1.1b"><apply id="S6.T3.5.5.2.m1.1.1.cmml" xref="S6.T3.5.5.2.m1.1.1"><lt id="S6.T3.5.5.2.m1.1.1.1.cmml" xref="S6.T3.5.5.2.m1.1.1.1"></lt><ci id="S6.T3.5.5.2.m1.1.1.2.cmml" xref="S6.T3.5.5.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.5.5.2.m1.1.1.3.cmml" type="float" xref="S6.T3.5.5.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.5.5.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T3.5.5.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.7">
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.1"><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="S6.T3.6.6.1.m1.1"><semantics id="S6.T3.6.6.1.m1.1a"><msub id="S6.T3.6.6.1.m1.1.1" xref="S6.T3.6.6.1.m1.1.1.cmml"><mi id="S6.T3.6.6.1.m1.1.1.2" mathsize="90%" xref="S6.T3.6.6.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.6.6.1.m1.1.1.3" mathsize="90%" xref="S6.T3.6.6.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.6.6.1.m1.1b"><apply id="S6.T3.6.6.1.m1.1.1.cmml" xref="S6.T3.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.6.6.1.m1.1.1.1.cmml" xref="S6.T3.6.6.1.m1.1.1">subscript</csymbol><ci id="S6.T3.6.6.1.m1.1.1.2.cmml" xref="S6.T3.6.6.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.6.6.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.6.6.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.6.6.1.m1.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.6.6.1.m1.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.7.3"><span class="ltx_text" id="S6.T3.7.7.3.1" style="font-size:90%;">-0.04 [-0.08, -0.01]</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.7.2"><math alttext="p&lt;0.05" class="ltx_Math" display="inline" id="S6.T3.7.7.2.m1.1"><semantics id="S6.T3.7.7.2.m1.1a"><mrow id="S6.T3.7.7.2.m1.1.1" xref="S6.T3.7.7.2.m1.1.1.cmml"><mi id="S6.T3.7.7.2.m1.1.1.2" mathsize="90%" xref="S6.T3.7.7.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.7.7.2.m1.1.1.1" mathsize="90%" xref="S6.T3.7.7.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.7.7.2.m1.1.1.3" mathsize="90%" xref="S6.T3.7.7.2.m1.1.1.3.cmml">0.05</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.7.7.2.m1.1b"><apply id="S6.T3.7.7.2.m1.1.1.cmml" xref="S6.T3.7.7.2.m1.1.1"><lt id="S6.T3.7.7.2.m1.1.1.1.cmml" xref="S6.T3.7.7.2.m1.1.1.1"></lt><ci id="S6.T3.7.7.2.m1.1.1.2.cmml" xref="S6.T3.7.7.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.7.7.2.m1.1.1.3.cmml" type="float" xref="S6.T3.7.7.2.m1.1.1.3">0.05</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.7.7.2.m1.1c">p&lt;0.05</annotation><annotation encoding="application/x-llamapun" id="S6.T3.7.7.2.m1.1d">italic_p &lt; 0.05</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T3.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.9.9.3" rowspan="3"><span class="ltx_text" id="S6.T3.9.9.3.1" style="font-size:90%;">ST</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.8.8.1"><math alttext="\beta_{0}" class="ltx_Math" display="inline" id="S6.T3.8.8.1.m1.1"><semantics id="S6.T3.8.8.1.m1.1a"><msub id="S6.T3.8.8.1.m1.1.1" xref="S6.T3.8.8.1.m1.1.1.cmml"><mi id="S6.T3.8.8.1.m1.1.1.2" mathsize="90%" xref="S6.T3.8.8.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.8.8.1.m1.1.1.3" mathsize="90%" xref="S6.T3.8.8.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.8.8.1.m1.1b"><apply id="S6.T3.8.8.1.m1.1.1.cmml" xref="S6.T3.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.8.8.1.m1.1.1.1.cmml" xref="S6.T3.8.8.1.m1.1.1">subscript</csymbol><ci id="S6.T3.8.8.1.m1.1.1.2.cmml" xref="S6.T3.8.8.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.8.8.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.8.8.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.8.8.1.m1.1c">\beta_{0}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.8.8.1.m1.1d">italic_β start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.9.9.4"><span class="ltx_text" id="S6.T3.9.9.4.1" style="font-size:90%;">3.03 [2.55, 3.50]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.9.9.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T3.9.9.2.m1.1"><semantics id="S6.T3.9.9.2.m1.1a"><mrow id="S6.T3.9.9.2.m1.1.1" xref="S6.T3.9.9.2.m1.1.1.cmml"><mi id="S6.T3.9.9.2.m1.1.1.2" mathsize="90%" xref="S6.T3.9.9.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.9.9.2.m1.1.1.1" mathsize="90%" xref="S6.T3.9.9.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.9.9.2.m1.1.1.3" mathsize="90%" xref="S6.T3.9.9.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.9.9.2.m1.1b"><apply id="S6.T3.9.9.2.m1.1.1.cmml" xref="S6.T3.9.9.2.m1.1.1"><lt id="S6.T3.9.9.2.m1.1.1.1.cmml" xref="S6.T3.9.9.2.m1.1.1.1"></lt><ci id="S6.T3.9.9.2.m1.1.1.2.cmml" xref="S6.T3.9.9.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.9.9.2.m1.1.1.3.cmml" type="float" xref="S6.T3.9.9.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.9.9.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T3.9.9.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T3.11.11">
<td class="ltx_td ltx_align_center" id="S6.T3.10.10.1"><math alttext="\beta_{1}" class="ltx_Math" display="inline" id="S6.T3.10.10.1.m1.1"><semantics id="S6.T3.10.10.1.m1.1a"><msub id="S6.T3.10.10.1.m1.1.1" xref="S6.T3.10.10.1.m1.1.1.cmml"><mi id="S6.T3.10.10.1.m1.1.1.2" mathsize="90%" xref="S6.T3.10.10.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.10.10.1.m1.1.1.3" mathsize="90%" xref="S6.T3.10.10.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.10.10.1.m1.1b"><apply id="S6.T3.10.10.1.m1.1.1.cmml" xref="S6.T3.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.10.10.1.m1.1.1.1.cmml" xref="S6.T3.10.10.1.m1.1.1">subscript</csymbol><ci id="S6.T3.10.10.1.m1.1.1.2.cmml" xref="S6.T3.10.10.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.10.10.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.10.10.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.10.10.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.10.10.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S6.T3.11.11.3"><span class="ltx_text" id="S6.T3.11.11.3.1" style="font-size:90%;">-0.15 [-0.19, -0.11]</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.11.11.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T3.11.11.2.m1.1"><semantics id="S6.T3.11.11.2.m1.1a"><mrow id="S6.T3.11.11.2.m1.1.1" xref="S6.T3.11.11.2.m1.1.1.cmml"><mi id="S6.T3.11.11.2.m1.1.1.2" mathsize="90%" xref="S6.T3.11.11.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.11.11.2.m1.1.1.1" mathsize="90%" xref="S6.T3.11.11.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.11.11.2.m1.1.1.3" mathsize="90%" xref="S6.T3.11.11.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.11.11.2.m1.1b"><apply id="S6.T3.11.11.2.m1.1.1.cmml" xref="S6.T3.11.11.2.m1.1.1"><lt id="S6.T3.11.11.2.m1.1.1.1.cmml" xref="S6.T3.11.11.2.m1.1.1.1"></lt><ci id="S6.T3.11.11.2.m1.1.1.2.cmml" xref="S6.T3.11.11.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.11.11.2.m1.1.1.3.cmml" type="float" xref="S6.T3.11.11.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.11.11.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T3.11.11.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T3.13.13">
<td class="ltx_td ltx_align_center" id="S6.T3.12.12.1"><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="S6.T3.12.12.1.m1.1"><semantics id="S6.T3.12.12.1.m1.1a"><msub id="S6.T3.12.12.1.m1.1.1" xref="S6.T3.12.12.1.m1.1.1.cmml"><mi id="S6.T3.12.12.1.m1.1.1.2" mathsize="90%" xref="S6.T3.12.12.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.12.12.1.m1.1.1.3" mathsize="90%" xref="S6.T3.12.12.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.12.12.1.m1.1b"><apply id="S6.T3.12.12.1.m1.1.1.cmml" xref="S6.T3.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.12.12.1.m1.1.1.1.cmml" xref="S6.T3.12.12.1.m1.1.1">subscript</csymbol><ci id="S6.T3.12.12.1.m1.1.1.2.cmml" xref="S6.T3.12.12.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.12.12.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.12.12.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.12.12.1.m1.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.12.12.1.m1.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S6.T3.13.13.3"><span class="ltx_text" id="S6.T3.13.13.3.1" style="font-size:90%;">-0.19 [-0.24, -0.15]</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.13.13.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T3.13.13.2.m1.1"><semantics id="S6.T3.13.13.2.m1.1a"><mrow id="S6.T3.13.13.2.m1.1.1" xref="S6.T3.13.13.2.m1.1.1.cmml"><mi id="S6.T3.13.13.2.m1.1.1.2" mathsize="90%" xref="S6.T3.13.13.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.13.13.2.m1.1.1.1" mathsize="90%" xref="S6.T3.13.13.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.13.13.2.m1.1.1.3" mathsize="90%" xref="S6.T3.13.13.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.13.13.2.m1.1b"><apply id="S6.T3.13.13.2.m1.1.1.cmml" xref="S6.T3.13.13.2.m1.1.1"><lt id="S6.T3.13.13.2.m1.1.1.1.cmml" xref="S6.T3.13.13.2.m1.1.1.1"></lt><ci id="S6.T3.13.13.2.m1.1.1.2.cmml" xref="S6.T3.13.13.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.13.13.2.m1.1.1.3.cmml" type="float" xref="S6.T3.13.13.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.13.13.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T3.13.13.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T3.15.15">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.15.15.3" rowspan="3"><span class="ltx_text" id="S6.T3.15.15.3.1" style="font-size:90%;">SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.14.14.1"><math alttext="\beta_{0}" class="ltx_Math" display="inline" id="S6.T3.14.14.1.m1.1"><semantics id="S6.T3.14.14.1.m1.1a"><msub id="S6.T3.14.14.1.m1.1.1" xref="S6.T3.14.14.1.m1.1.1.cmml"><mi id="S6.T3.14.14.1.m1.1.1.2" mathsize="90%" xref="S6.T3.14.14.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.14.14.1.m1.1.1.3" mathsize="90%" xref="S6.T3.14.14.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.14.14.1.m1.1b"><apply id="S6.T3.14.14.1.m1.1.1.cmml" xref="S6.T3.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.14.14.1.m1.1.1.1.cmml" xref="S6.T3.14.14.1.m1.1.1">subscript</csymbol><ci id="S6.T3.14.14.1.m1.1.1.2.cmml" xref="S6.T3.14.14.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.14.14.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.14.14.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.14.14.1.m1.1c">\beta_{0}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.14.14.1.m1.1d">italic_β start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.15.15.4"><span class="ltx_text" id="S6.T3.15.15.4.1" style="font-size:90%;">2.20 [2.02, 2.38]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.15.15.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T3.15.15.2.m1.1"><semantics id="S6.T3.15.15.2.m1.1a"><mrow id="S6.T3.15.15.2.m1.1.1" xref="S6.T3.15.15.2.m1.1.1.cmml"><mi id="S6.T3.15.15.2.m1.1.1.2" mathsize="90%" xref="S6.T3.15.15.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.15.15.2.m1.1.1.1" mathsize="90%" xref="S6.T3.15.15.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.15.15.2.m1.1.1.3" mathsize="90%" xref="S6.T3.15.15.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.15.15.2.m1.1b"><apply id="S6.T3.15.15.2.m1.1.1.cmml" xref="S6.T3.15.15.2.m1.1.1"><lt id="S6.T3.15.15.2.m1.1.1.1.cmml" xref="S6.T3.15.15.2.m1.1.1.1"></lt><ci id="S6.T3.15.15.2.m1.1.1.2.cmml" xref="S6.T3.15.15.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.15.15.2.m1.1.1.3.cmml" type="float" xref="S6.T3.15.15.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.15.15.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T3.15.15.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T3.17.17">
<td class="ltx_td ltx_align_center" id="S6.T3.16.16.1"><math alttext="\beta_{1}" class="ltx_Math" display="inline" id="S6.T3.16.16.1.m1.1"><semantics id="S6.T3.16.16.1.m1.1a"><msub id="S6.T3.16.16.1.m1.1.1" xref="S6.T3.16.16.1.m1.1.1.cmml"><mi id="S6.T3.16.16.1.m1.1.1.2" mathsize="90%" xref="S6.T3.16.16.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.16.16.1.m1.1.1.3" mathsize="90%" xref="S6.T3.16.16.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.16.16.1.m1.1b"><apply id="S6.T3.16.16.1.m1.1.1.cmml" xref="S6.T3.16.16.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.16.16.1.m1.1.1.1.cmml" xref="S6.T3.16.16.1.m1.1.1">subscript</csymbol><ci id="S6.T3.16.16.1.m1.1.1.2.cmml" xref="S6.T3.16.16.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.16.16.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.16.16.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.16.16.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.16.16.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S6.T3.17.17.3"><span class="ltx_text" id="S6.T3.17.17.3.1" style="font-size:90%;">-0.13 [-0.14, -0.11]</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.17.17.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T3.17.17.2.m1.1"><semantics id="S6.T3.17.17.2.m1.1a"><mrow id="S6.T3.17.17.2.m1.1.1" xref="S6.T3.17.17.2.m1.1.1.cmml"><mi id="S6.T3.17.17.2.m1.1.1.2" mathsize="90%" xref="S6.T3.17.17.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.17.17.2.m1.1.1.1" mathsize="90%" xref="S6.T3.17.17.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.17.17.2.m1.1.1.3" mathsize="90%" xref="S6.T3.17.17.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.17.17.2.m1.1b"><apply id="S6.T3.17.17.2.m1.1.1.cmml" xref="S6.T3.17.17.2.m1.1.1"><lt id="S6.T3.17.17.2.m1.1.1.1.cmml" xref="S6.T3.17.17.2.m1.1.1.1"></lt><ci id="S6.T3.17.17.2.m1.1.1.2.cmml" xref="S6.T3.17.17.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.17.17.2.m1.1.1.3.cmml" type="float" xref="S6.T3.17.17.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.17.17.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T3.17.17.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T3.19.19">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.18.18.1"><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="S6.T3.18.18.1.m1.1"><semantics id="S6.T3.18.18.1.m1.1a"><msub id="S6.T3.18.18.1.m1.1.1" xref="S6.T3.18.18.1.m1.1.1.cmml"><mi id="S6.T3.18.18.1.m1.1.1.2" mathsize="90%" xref="S6.T3.18.18.1.m1.1.1.2.cmml">β</mi><mn id="S6.T3.18.18.1.m1.1.1.3" mathsize="90%" xref="S6.T3.18.18.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S6.T3.18.18.1.m1.1b"><apply id="S6.T3.18.18.1.m1.1.1.cmml" xref="S6.T3.18.18.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.18.18.1.m1.1.1.1.cmml" xref="S6.T3.18.18.1.m1.1.1">subscript</csymbol><ci id="S6.T3.18.18.1.m1.1.1.2.cmml" xref="S6.T3.18.18.1.m1.1.1.2">𝛽</ci><cn id="S6.T3.18.18.1.m1.1.1.3.cmml" type="integer" xref="S6.T3.18.18.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.18.18.1.m1.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.18.18.1.m1.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.19.19.3"><span class="ltx_text" id="S6.T3.19.19.3.1" style="font-size:90%;">-0.15 [-0.16, -0.13]</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.19.19.2"><math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S6.T3.19.19.2.m1.1"><semantics id="S6.T3.19.19.2.m1.1a"><mrow id="S6.T3.19.19.2.m1.1.1" xref="S6.T3.19.19.2.m1.1.1.cmml"><mi id="S6.T3.19.19.2.m1.1.1.2" mathsize="90%" xref="S6.T3.19.19.2.m1.1.1.2.cmml">p</mi><mo id="S6.T3.19.19.2.m1.1.1.1" mathsize="90%" xref="S6.T3.19.19.2.m1.1.1.1.cmml">&lt;</mo><mn id="S6.T3.19.19.2.m1.1.1.3" mathsize="90%" xref="S6.T3.19.19.2.m1.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.19.19.2.m1.1b"><apply id="S6.T3.19.19.2.m1.1.1.cmml" xref="S6.T3.19.19.2.m1.1.1"><lt id="S6.T3.19.19.2.m1.1.1.1.cmml" xref="S6.T3.19.19.2.m1.1.1.1"></lt><ci id="S6.T3.19.19.2.m1.1.1.2.cmml" xref="S6.T3.19.19.2.m1.1.1.2">𝑝</ci><cn id="S6.T3.19.19.2.m1.1.1.3.cmml" type="float" xref="S6.T3.19.19.2.m1.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.19.19.2.m1.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S6.T3.19.19.2.m1.1d">italic_p &lt; 0.001</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a multivariate power law analysis, modeling the influence of model parameters and the number of training steps on the cross-entropy loss (CE). The analysis was performed for three different test settings: unseen captioning (UC), seen translation (ST), and seen captioning (SC).  The table displays the estimated parameters (β0, β1, β2) and their 95% confidence intervals (CI) for each test setting, along with p-values indicating statistical significance. The parameters quantify the relationship between the model size, training data, and the resulting cross-entropy loss in a log10 space.
> <details>
> <summary>read the caption</summary>
> Table 3: Parameters of Eq. 3 for UC, ST, and SC in log10 space.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T4.6">
<tr class="ltx_tr" id="S6.T4.6.7">
<td class="ltx_td ltx_border_tt" id="S6.T4.6.7.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.6.7.2"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.2.1" style="font-size:90%;">Multi30K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.6.7.3"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.3.1" style="font-size:90%;">CoMMuTE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.6.7.4"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.4.1" style="font-size:90%;">CoMMuTE</span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S6.T4.6.7.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.7.5.1">
<span class="ltx_p" id="S6.T4.6.7.5.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.5.1.1.1" style="font-size:90%;">COCO</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.6.7.6"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.6.1" style="font-size:90%;">Multi30K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S6.T4.6.7.7"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.7.1" style="font-size:90%;">XM3600</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.8">
<td class="ltx_td" id="S6.T4.6.8.1"></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S6.T4.6.8.2"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.2.1" style="font-size:90%;">Translation</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S6.T4.6.8.3"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.3.1" style="font-size:90%;">Translation</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S6.T4.6.8.4"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.4.1" style="font-size:90%;">Ambiguity</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.8.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.8.5.1">
<span class="ltx_p" id="S6.T4.6.8.5.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.5.1.1.1" style="font-size:90%;">Caption</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S6.T4.6.8.6"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.6.1" style="font-size:90%;">Caption</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S6.T4.6.8.7"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.7.1" style="font-size:90%;">Caption</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.6">
<td class="ltx_td" id="S6.T4.6.6.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.1.1">
<span class="ltx_p" id="S6.T4.1.1.1.1.1"><span class="ltx_text" id="S6.T4.1.1.1.1.1.1" style="font-size:90%;">En</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.1.1.1.1.1.m1.1"><semantics id="S6.T4.1.1.1.1.1.m1.1a"><mo id="S6.T4.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T4.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.1.1.m1.1b"><ci id="S6.T4.1.1.1.1.1.m1.1.1.cmml" xref="S6.T4.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T4.1.1.1.1.1.2" style="font-size:90%;">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.2.2.1">
<span class="ltx_p" id="S6.T4.2.2.2.1.1"><span class="ltx_text" id="S6.T4.2.2.2.1.1.1" style="font-size:90%;">En</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.2.2.2.1.1.m1.1"><semantics id="S6.T4.2.2.2.1.1.m1.1a"><mo id="S6.T4.2.2.2.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T4.2.2.2.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.2.2.2.1.1.m1.1b"><ci id="S6.T4.2.2.2.1.1.m1.1.1.cmml" xref="S6.T4.2.2.2.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.2.2.2.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.2.2.2.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T4.2.2.2.1.1.2" style="font-size:90%;">Fr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.3.3.3.1">
<span class="ltx_p" id="S6.T4.3.3.3.1.1"><span class="ltx_text" id="S6.T4.3.3.3.1.1.1" style="font-size:90%;">En</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.3.3.3.1.1.m1.1"><semantics id="S6.T4.3.3.3.1.1.m1.1a"><mo id="S6.T4.3.3.3.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T4.3.3.3.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.3.3.3.1.1.m1.1b"><ci id="S6.T4.3.3.3.1.1.m1.1.1.cmml" xref="S6.T4.3.3.3.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.3.3.3.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.3.3.3.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T4.3.3.3.1.1.2" style="font-size:90%;">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.4.4.4.1">
<span class="ltx_p" id="S6.T4.4.4.4.1.1"><span class="ltx_text" id="S6.T4.4.4.4.1.1.1" style="font-size:90%;">En</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.4.4.4.1.1.m1.1"><semantics id="S6.T4.4.4.4.1.1.m1.1a"><mo id="S6.T4.4.4.4.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T4.4.4.4.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.4.4.4.1.1.m1.1b"><ci id="S6.T4.4.4.4.1.1.m1.1.1.cmml" xref="S6.T4.4.4.4.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.4.4.4.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.4.4.4.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T4.4.4.4.1.1.2" style="font-size:90%;">X</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.5.5.5.1">
<span class="ltx_p" id="S6.T4.5.5.5.1.1"><span class="ltx_text" id="S6.T4.5.5.5.1.1.1" style="font-size:90%;">En</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.5.5.5.1.1.m1.1"><semantics id="S6.T4.5.5.5.1.1.m1.1a"><mo id="S6.T4.5.5.5.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T4.5.5.5.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.5.5.5.1.1.m1.1b"><ci id="S6.T4.5.5.5.1.1.m1.1.1.cmml" xref="S6.T4.5.5.5.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.5.5.5.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.5.5.5.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T4.5.5.5.1.1.2" style="font-size:90%;">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.6.6.1">
<span class="ltx_p" id="S6.T4.6.6.6.1.1"><span class="ltx_text" id="S6.T4.6.6.6.1.1.1" style="font-size:90%;">En</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.6.6.6.1.1.m1.1"><semantics id="S6.T4.6.6.6.1.1.m1.1a"><mo id="S6.T4.6.6.6.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T4.6.6.6.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.6.6.6.1.1.m1.1b"><ci id="S6.T4.6.6.6.1.1.m1.1.1.cmml" xref="S6.T4.6.6.6.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.6.6.6.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.6.6.6.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T4.6.6.6.1.1.2" style="font-size:90%;">X</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.6.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.6.8.1">
<span class="ltx_p" id="S6.T4.6.6.8.1.1"><span class="ltx_text" id="S6.T4.6.6.8.1.1.1" style="font-size:90%;">En</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.6.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.6.9.1">
<span class="ltx_p" id="S6.T4.6.6.9.1.1"><span class="ltx_text" id="S6.T4.6.6.9.1.1.1" style="font-size:90%;">En</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.6.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.6.10.1">
<span class="ltx_p" id="S6.T4.6.6.10.1.1"><span class="ltx_text" id="S6.T4.6.6.10.1.1.1" style="font-size:90%;">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.6.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.6.11.1">
<span class="ltx_p" id="S6.T4.6.6.11.1.1"><span class="ltx_text" id="S6.T4.6.6.11.1.1.1" style="font-size:90%;">En</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.6.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.6.12.1">
<span class="ltx_p" id="S6.T4.6.6.12.1.1"><span class="ltx_text" id="S6.T4.6.6.12.1.1.1" style="font-size:90%;">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.6.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.6.13.1">
<span class="ltx_p" id="S6.T4.6.6.13.1.1"><span class="ltx_text" id="S6.T4.6.6.13.1.1.1" style="font-size:90%;">Unseen</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S6.T4.6.9.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T4.6.9.1.1" style="font-size:90%;">Supervised</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.10">
<td class="ltx_td ltx_align_left" id="S6.T4.6.10.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.10.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.2.1">
<span class="ltx_p" id="S6.T4.6.10.2.1.1"><span class="ltx_text" id="S6.T4.6.10.2.1.1.1" style="font-size:90%;">BLEU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.3.1">
<span class="ltx_p" id="S6.T4.6.10.3.1.1"><span class="ltx_text" id="S6.T4.6.10.3.1.1.1" style="font-size:90%;">BLEU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.4.1">
<span class="ltx_p" id="S6.T4.6.10.4.1.1"><span class="ltx_text" id="S6.T4.6.10.4.1.1.1" style="font-size:90%;">BLEU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.5.1">
<span class="ltx_p" id="S6.T4.6.10.5.1.1"><span class="ltx_text" id="S6.T4.6.10.5.1.1.1" style="font-size:90%;">BLEU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.6.1">
<span class="ltx_p" id="S6.T4.6.10.6.1.1"><span class="ltx_text" id="S6.T4.6.10.6.1.1.1" style="font-size:90%;">Acc.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.7.1">
<span class="ltx_p" id="S6.T4.6.10.7.1.1"><span class="ltx_text" id="S6.T4.6.10.7.1.1.1" style="font-size:90%;">Acc.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.8.1">
<span class="ltx_p" id="S6.T4.6.10.8.1.1"><span class="ltx_text" id="S6.T4.6.10.8.1.1.1" style="font-size:90%;">CIDEr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.9.1">
<span class="ltx_p" id="S6.T4.6.10.9.1.1"><span class="ltx_text" id="S6.T4.6.10.9.1.1.1" style="font-size:90%;">CIDEr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.10.1">
<span class="ltx_p" id="S6.T4.6.10.10.1.1"><span class="ltx_text" id="S6.T4.6.10.10.1.1.1" style="font-size:90%;">CIDEr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.11.1">
<span class="ltx_p" id="S6.T4.6.10.11.1.1"><span class="ltx_text" id="S6.T4.6.10.11.1.1.1" style="font-size:90%;">CIDEr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.12.1">
<span class="ltx_p" id="S6.T4.6.10.12.1.1"><span class="ltx_text" id="S6.T4.6.10.12.1.1.1" style="font-size:90%;">CIDEr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.10.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.10.13.1">
<span class="ltx_p" id="S6.T4.6.10.13.1.1"><span class="ltx_text" id="S6.T4.6.10.13.1.1.1" style="font-size:90%;">CIDEr</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.6.11.1">
<span class="ltx_text" id="S6.T4.6.11.1.1" style="font-size:90%;">VGAMT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.6.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib24" title="">24</a><span class="ltx_text" id="S6.T4.6.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.11.2.1">
<span class="ltx_p" id="S6.T4.6.11.2.1.1"><span class="ltx_text" id="S6.T4.6.11.2.1.1.1" style="font-size:90%;">37.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.11.3.1">
<span class="ltx_p" id="S6.T4.6.11.3.1.1"><span class="ltx_text" id="S6.T4.6.11.3.1.1.1" style="font-size:90%;">58.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.4"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.5"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.11.6.1">
<span class="ltx_p" id="S6.T4.6.11.6.1.1"><span class="ltx_text" id="S6.T4.6.11.6.1.1.1" style="font-size:90%;">57.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.8"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.9"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.10"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.11"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.12"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.11.13"></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.12">
<td class="ltx_td ltx_align_left" id="S6.T4.6.12.1">
<span class="ltx_text" id="S6.T4.6.12.1.1" style="font-size:90%;">Florence-2-large </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.6.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib69" title="">69</a><span class="ltx_text" id="S6.T4.6.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.2"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.3"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.4"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.5"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.6"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.7"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.12.8.1">
<span class="ltx_p" id="S6.T4.6.12.8.1.1"><span class="ltx_text" id="S6.T4.6.12.8.1.1.1" style="font-size:90%;">143.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.9"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.10"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.11"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.12"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.12.13"></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.13">
<td class="ltx_td ltx_align_left" id="S6.T4.6.13.1">
<span class="ltx_text" id="S6.T4.6.13.1.1" style="font-size:90%;">PaliGemma-3B* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.6.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="S6.T4.6.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.2"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.3"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.4"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.5"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.6"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.7"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.13.8.1">
<span class="ltx_p" id="S6.T4.6.13.8.1.1"><span class="ltx_text" id="S6.T4.6.13.8.1.1.1" style="font-size:90%;">141.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.13.9.1">
<span class="ltx_p" id="S6.T4.6.13.9.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.13.9.1.1.1" style="font-size:90%;">88.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.13.10.1">
<span class="ltx_p" id="S6.T4.6.13.10.1.1"><span class="ltx_text" id="S6.T4.6.13.10.1.1.1" style="font-size:90%;">57.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.13.11.1">
<span class="ltx_p" id="S6.T4.6.13.11.1.1"><span class="ltx_text" id="S6.T4.6.13.11.1.1.1" style="font-size:90%;">79.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.13.12.1">
<span class="ltx_p" id="S6.T4.6.13.12.1.1"><span class="ltx_text" id="S6.T4.6.13.12.1.1.1" style="font-size:90%;">37.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.13.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.13.13.1">
<span class="ltx_p" id="S6.T4.6.13.13.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.13.13.1.1.1" style="font-size:90%;">48.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.14">
<td class="ltx_td ltx_align_left" id="S6.T4.6.14.1">
<span class="ltx_text" id="S6.T4.6.14.1.1" style="font-size:90%;">Baseline-6B* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.6.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="S6.T4.6.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.2.1">
<span class="ltx_p" id="S6.T4.6.14.2.1.1"><span class="ltx_text" id="S6.T4.6.14.2.1.1.1" style="font-size:90%;">37.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.3.1">
<span class="ltx_p" id="S6.T4.6.14.3.1.1"><span class="ltx_text" id="S6.T4.6.14.3.1.1.1" style="font-size:90%;">54.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.4.1">
<span class="ltx_p" id="S6.T4.6.14.4.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.14.4.1.1.1" style="font-size:90%;">41.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.5.1">
<span class="ltx_p" id="S6.T4.6.14.5.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.14.5.1.1.1" style="font-size:90%;">32.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.6.1">
<span class="ltx_p" id="S6.T4.6.14.6.1.1"><span class="ltx_text" id="S6.T4.6.14.6.1.1.1" style="font-size:90%;">61.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.7.1">
<span class="ltx_p" id="S6.T4.6.14.7.1.1"><span class="ltx_text" id="S6.T4.6.14.7.1.1.1" style="font-size:90%;">61.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.8.1">
<span class="ltx_p" id="S6.T4.6.14.8.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.14.8.1.1.1" style="font-size:90%;">145.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.9.1">
<span class="ltx_p" id="S6.T4.6.14.9.1.1"><span class="ltx_text" id="S6.T4.6.14.9.1.1.1" style="font-size:90%;">84.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.10.1">
<span class="ltx_p" id="S6.T4.6.14.10.1.1"><span class="ltx_text" id="S6.T4.6.14.10.1.1.1" style="font-size:90%;">50.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.11.1">
<span class="ltx_p" id="S6.T4.6.14.11.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.14.11.1.1.1" style="font-size:90%;">82.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.12.1">
<span class="ltx_p" id="S6.T4.6.14.12.1.1"><span class="ltx_text" id="S6.T4.6.14.12.1.1.1" style="font-size:90%;">38.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.14.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.14.13.1">
<span class="ltx_p" id="S6.T4.6.14.13.1.1"><span class="ltx_text" id="S6.T4.6.14.13.1.1.1" style="font-size:90%;">45.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.15" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.6.15.1"><span class="ltx_text" id="S6.T4.6.15.1.1" style="font-size:90%;background-color:#F3F3F3;">F-0.4B <span class="ltx_text ltx_font_italic" id="S6.T4.6.15.1.1.1">ft</span> (ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.2.1.1"><span class="ltx_text" id="S6.T4.6.15.2.1.1.1" style="font-size:90%;">37.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.3.1.1"><span class="ltx_text" id="S6.T4.6.15.3.1.1.1" style="font-size:90%;">53.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.4.1.1"><span class="ltx_text" id="S6.T4.6.15.4.1.1.1" style="font-size:90%;">26.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.5.1.1"><span class="ltx_text" id="S6.T4.6.15.5.1.1.1" style="font-size:90%;">20.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.6.1.1"><span class="ltx_text" id="S6.T4.6.15.6.1.1.1" style="font-size:90%;">59.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.7.1.1"><span class="ltx_text" id="S6.T4.6.15.7.1.1.1" style="font-size:90%;">56.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.8.1.1"><span class="ltx_text" id="S6.T4.6.15.8.1.1.1" style="font-size:90%;">138.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.9.1.1"><span class="ltx_text" id="S6.T4.6.15.9.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.10.1.1"><span class="ltx_text" id="S6.T4.6.15.10.1.1.1" style="font-size:90%;">77.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.11.1.1"><span class="ltx_text" id="S6.T4.6.15.11.1.1.1" style="font-size:90%;">76.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.12.1.1"><span class="ltx_text" id="S6.T4.6.15.12.1.1.1" style="font-size:90%;">38.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.15.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.15.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.15.13.1.1"><span class="ltx_text" id="S6.T4.6.15.13.1.1.1" style="font-size:90%;">40.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.16" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.16.1"><span class="ltx_text" id="S6.T4.6.16.1.1" style="font-size:90%;background-color:#F3F3F3;">F-0.4B <span class="ltx_text ltx_font_italic" id="S6.T4.6.16.1.1.1">100K ft</span> (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.2.1.1"><span class="ltx_text" id="S6.T4.6.16.2.1.1.1" style="font-size:90%;">39.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.3.1.1"><span class="ltx_text" id="S6.T4.6.16.3.1.1.1" style="font-size:90%;">57.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.4.1.1"><span class="ltx_text" id="S6.T4.6.16.4.1.1.1" style="font-size:90%;">32.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.5.1.1"><span class="ltx_text" id="S6.T4.6.16.5.1.1.1" style="font-size:90%;">26.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.6.1.1"><span class="ltx_text" id="S6.T4.6.16.6.1.1.1" style="font-size:90%;">59.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.7.1.1"><span class="ltx_text" id="S6.T4.6.16.7.1.1.1" style="font-size:90%;">59.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.8.1.1"><span class="ltx_text" id="S6.T4.6.16.8.1.1.1" style="font-size:90%;">140.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.9.1.1"><span class="ltx_text" id="S6.T4.6.16.9.1.1.1" style="font-size:90%;">79.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.10.1.1"><span class="ltx_text" id="S6.T4.6.16.10.1.1.1" style="font-size:90%;">79.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.11.1.1"><span class="ltx_text" id="S6.T4.6.16.11.1.1.1" style="font-size:90%;">78.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.12.1.1"><span class="ltx_text" id="S6.T4.6.16.12.1.1.1" style="font-size:90%;">39.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.16.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.16.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.16.13.1.1"><span class="ltx_text" id="S6.T4.6.16.13.1.1.1" style="font-size:90%;">42.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.17" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.17.1"><span class="ltx_text" id="S6.T4.6.17.1.1" style="font-size:90%;background-color:#F3F3F3;">F-1.0B <span class="ltx_text ltx_font_italic" id="S6.T4.6.17.1.1.1">ft</span> (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.2.1.1"><span class="ltx_text" id="S6.T4.6.17.2.1.1.1" style="font-size:90%;">38.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.3.1.1"><span class="ltx_text" id="S6.T4.6.17.3.1.1.1" style="font-size:90%;">56.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.4.1.1"><span class="ltx_text" id="S6.T4.6.17.4.1.1.1" style="font-size:90%;">29.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.5.1.1"><span class="ltx_text" id="S6.T4.6.17.5.1.1.1" style="font-size:90%;">22.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.6.1.1"><span class="ltx_text" id="S6.T4.6.17.6.1.1.1" style="font-size:90%;">59.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.7.1.1"><span class="ltx_text" id="S6.T4.6.17.7.1.1.1" style="font-size:90%;">58.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.8.1.1"><span class="ltx_text" id="S6.T4.6.17.8.1.1.1" style="font-size:90%;">142.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.9.1.1"><span class="ltx_text" id="S6.T4.6.17.9.1.1.1" style="font-size:90%;">85.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.10.1.1"><span class="ltx_text" id="S6.T4.6.17.10.1.1.1" style="font-size:90%;">82.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.11.1.1"><span class="ltx_text" id="S6.T4.6.17.11.1.1.1" style="font-size:90%;">78.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.12.1.1"><span class="ltx_text" id="S6.T4.6.17.12.1.1.1" style="font-size:90%;">41.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.17.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.17.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.17.13.1.1"><span class="ltx_text" id="S6.T4.6.17.13.1.1.1" style="font-size:90%;">44.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.18" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.18.1"><span class="ltx_text" id="S6.T4.6.18.1.1" style="font-size:90%;background-color:#F3F3F3;">F-3.5B <span class="ltx_text ltx_font_italic" id="S6.T4.6.18.1.1.1">ft</span> (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.2.1.1"><span class="ltx_text" id="S6.T4.6.18.2.1.1.1" style="font-size:90%;">39.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.3.1.1"><span class="ltx_text" id="S6.T4.6.18.3.1.1.1" style="font-size:90%;">56.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.4.1.1"><span class="ltx_text" id="S6.T4.6.18.4.1.1.1" style="font-size:90%;">32.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.5.1.1"><span class="ltx_text" id="S6.T4.6.18.5.1.1.1" style="font-size:90%;">26.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.6.1.1"><span class="ltx_text" id="S6.T4.6.18.6.1.1.1" style="font-size:90%;">61.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.7.1.1"><span class="ltx_text" id="S6.T4.6.18.7.1.1.1" style="font-size:90%;">62.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.8.1.1"><span class="ltx_text" id="S6.T4.6.18.8.1.1.1" style="font-size:90%;">141.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.9.1.1"><span class="ltx_text" id="S6.T4.6.18.9.1.1.1" style="font-size:90%;">81.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.10.1.1"><span class="ltx_text" id="S6.T4.6.18.10.1.1.1" style="font-size:90%;">84.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.11.1.1"><span class="ltx_text" id="S6.T4.6.18.11.1.1.1" style="font-size:90%;">77.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.12.1.1"><span class="ltx_text" id="S6.T4.6.18.12.1.1.1" style="font-size:90%;">38.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.18.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.18.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.18.13.1.1"><span class="ltx_text" id="S6.T4.6.18.13.1.1.1" style="font-size:90%;">43.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.19" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.19.1"><span class="ltx_text" id="S6.T4.6.19.1.1" style="font-size:90%;background-color:#F3F3F3;">F-11.2B <span class="ltx_text ltx_font_italic" id="S6.T4.6.19.1.1.1">ft</span> (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.2.1.1"><span class="ltx_text" id="S6.T4.6.19.2.1.1.1" style="font-size:90%;">40.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.3.1.1"><span class="ltx_text" id="S6.T4.6.19.3.1.1.1" style="font-size:90%;">59.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.4.1.1"><span class="ltx_text" id="S6.T4.6.19.4.1.1.1" style="font-size:90%;">36.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.5.1.1"><span class="ltx_text" id="S6.T4.6.19.5.1.1.1" style="font-size:90%;">29.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.6.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.19.6.1.1.1" style="font-size:90%;">62.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.7.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.19.7.1.1.1" style="font-size:90%;">63.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.8.1.1"><span class="ltx_text" id="S6.T4.6.19.8.1.1.1" style="font-size:90%;">141.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.9.1.1"><span class="ltx_text" id="S6.T4.6.19.9.1.1.1" style="font-size:90%;">83.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.10.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.19.10.1.1.1" style="font-size:90%;">90.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.11.1.1"><span class="ltx_text" id="S6.T4.6.19.11.1.1.1" style="font-size:90%;">79.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.12.1.1"><span class="ltx_text" id="S6.T4.6.19.12.1.1.1" style="font-size:90%;">39.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.19.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.19.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.19.13.1.1"><span class="ltx_text" id="S6.T4.6.19.13.1.1.1" style="font-size:90%;">46.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.20" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.20.1"><span class="ltx_text" id="S6.T4.6.20.1.1" style="font-size:90%;background-color:#F3F3F3;">F-11.2B <span class="ltx_text ltx_font_italic" id="S6.T4.6.20.1.1.1">30K ft</span> (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.2.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.20.2.1.1.1" style="font-size:90%;">41.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.3.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.20.3.1.1.1" style="font-size:90%;">59.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.4.1.1"><span class="ltx_text" id="S6.T4.6.20.4.1.1.1" style="font-size:90%;">38.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.5.1.1"><span class="ltx_text" id="S6.T4.6.20.5.1.1.1" style="font-size:90%;">31.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.6.1.1"><span class="ltx_text" id="S6.T4.6.20.6.1.1.1" style="font-size:90%;">62.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.7.1.1"><span class="ltx_text" id="S6.T4.6.20.7.1.1.1" style="font-size:90%;">63.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.8.1.1"><span class="ltx_text" id="S6.T4.6.20.8.1.1.1" style="font-size:90%;">140.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.9.1.1"><span class="ltx_text" id="S6.T4.6.20.9.1.1.1" style="font-size:90%;">83.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.10.1.1"><span class="ltx_text" id="S6.T4.6.20.10.1.1.1" style="font-size:90%;">89.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.11.1.1"><span class="ltx_text" id="S6.T4.6.20.11.1.1.1" style="font-size:90%;">78.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.12.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.20.12.1.1.1" style="font-size:90%;">41.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.20.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.20.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.20.13.1.1"><span class="ltx_text" id="S6.T4.6.20.13.1.1.1" style="font-size:90%;">46.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.21">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S6.T4.6.21.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T4.6.21.1.1" style="font-size:90%;">Zero-shot</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.22">
<td class="ltx_td ltx_align_left" id="S6.T4.6.22.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.22.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.2.1">
<span class="ltx_p" id="S6.T4.6.22.2.1.1"><span class="ltx_text" id="S6.T4.6.22.2.1.1.1" style="font-size:90%;">BLEU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.3.1">
<span class="ltx_p" id="S6.T4.6.22.3.1.1"><span class="ltx_text" id="S6.T4.6.22.3.1.1.1" style="font-size:90%;">BLEU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.4.1">
<span class="ltx_p" id="S6.T4.6.22.4.1.1"><span class="ltx_text" id="S6.T4.6.22.4.1.1.1" style="font-size:90%;">BLEU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.5.1">
<span class="ltx_p" id="S6.T4.6.22.5.1.1"><span class="ltx_text" id="S6.T4.6.22.5.1.1.1" style="font-size:90%;">BLEU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.6.1">
<span class="ltx_p" id="S6.T4.6.22.6.1.1"><span class="ltx_text" id="S6.T4.6.22.6.1.1.1" style="font-size:90%;">Acc.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.7.1">
<span class="ltx_p" id="S6.T4.6.22.7.1.1"><span class="ltx_text" id="S6.T4.6.22.7.1.1.1" style="font-size:90%;">Acc.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.8.1">
<span class="ltx_p" id="S6.T4.6.22.8.1.1"><span class="ltx_text" id="S6.T4.6.22.8.1.1.1" style="font-size:90%;">CS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.9.1">
<span class="ltx_p" id="S6.T4.6.22.9.1.1"><span class="ltx_text" id="S6.T4.6.22.9.1.1.1" style="font-size:90%;">CS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.10.1">
<span class="ltx_p" id="S6.T4.6.22.10.1.1"><span class="ltx_text" id="S6.T4.6.22.10.1.1.1" style="font-size:90%;">MCS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.11.1">
<span class="ltx_p" id="S6.T4.6.22.11.1.1"><span class="ltx_text" id="S6.T4.6.22.11.1.1.1" style="font-size:90%;">CS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.12.1">
<span class="ltx_p" id="S6.T4.6.22.12.1.1"><span class="ltx_text" id="S6.T4.6.22.12.1.1.1" style="font-size:90%;">MCS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.22.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.22.13.1">
<span class="ltx_p" id="S6.T4.6.22.13.1.1"><span class="ltx_text" id="S6.T4.6.22.13.1.1.1" style="font-size:90%;">PC</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.6.23.1">
<span class="ltx_text" id="S6.T4.6.23.1.1" style="font-size:90%;">MOF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.6.23.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib26" title="">26</a><span class="ltx_text" id="S6.T4.6.23.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.23.2.1">
<span class="ltx_p" id="S6.T4.6.23.2.1.1"><span class="ltx_text" id="S6.T4.6.23.2.1.1.1" style="font-size:90%;">24.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.23.3.1">
<span class="ltx_p" id="S6.T4.6.23.3.1.1"><span class="ltx_text" id="S6.T4.6.23.3.1.1.1" style="font-size:90%;">35.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.4"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.5"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.23.6.1">
<span class="ltx_p" id="S6.T4.6.23.6.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.23.6.1.1.1" style="font-size:90%;">63.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.23.7.1">
<span class="ltx_p" id="S6.T4.6.23.7.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.23.7.1.1.1" style="font-size:90%;">66.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.8"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.9"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.10"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.11"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.12"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.23.13"></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.24">
<td class="ltx_td ltx_align_left" id="S6.T4.6.24.1">
<span class="ltx_text" id="S6.T4.6.24.1.1" style="font-size:90%;">ZeroMMT-3.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.6.24.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib25" title="">25</a><span class="ltx_text" id="S6.T4.6.24.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.24.2.1">
<span class="ltx_p" id="S6.T4.6.24.2.1.1"><span class="ltx_text" id="S6.T4.6.24.2.1.1.1" style="font-size:90%;">37.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.24.3.1">
<span class="ltx_p" id="S6.T4.6.24.3.1.1"><span class="ltx_text" id="S6.T4.6.24.3.1.1.1" style="font-size:90%;">53.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.4"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.5"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.24.6.1">
<span class="ltx_p" id="S6.T4.6.24.6.1.1"><span class="ltx_text" id="S6.T4.6.24.6.1.1.1" style="font-size:90%;">60.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.24.7.1">
<span class="ltx_p" id="S6.T4.6.24.7.1.1"><span class="ltx_text" id="S6.T4.6.24.7.1.1.1" style="font-size:90%;">62.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.8"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.9"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.10"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.11"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.12"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.24.13"></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.25">
<td class="ltx_td ltx_align_left" id="S6.T4.6.25.1">
<span class="ltx_text" id="S6.T4.6.25.1.1" style="font-size:90%;">NLLB-3.3B* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.6.25.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="S6.T4.6.25.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.25.2.1">
<span class="ltx_p" id="S6.T4.6.25.2.1.1"><span class="ltx_text" id="S6.T4.6.25.2.1.1.1" style="font-size:90%;">37.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.25.3.1">
<span class="ltx_p" id="S6.T4.6.25.3.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.25.3.1.1.1" style="font-size:90%;">53.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.25.4.1">
<span class="ltx_p" id="S6.T4.6.25.4.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.25.4.1.1.1" style="font-size:90%;">40.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.25.5.1">
<span class="ltx_p" id="S6.T4.6.25.5.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.25.5.1.1.1" style="font-size:90%;">31.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.25.6.1">
<span class="ltx_p" id="S6.T4.6.25.6.1.1"><span class="ltx_text" id="S6.T4.6.25.6.1.1.1" style="font-size:90%;">50.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.25.7.1">
<span class="ltx_p" id="S6.T4.6.25.7.1.1"><span class="ltx_text" id="S6.T4.6.25.7.1.1.1" style="font-size:90%;">50.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.8"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.9"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.10"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.11"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.12"></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.25.13"></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.26" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.6.26.1"><span class="ltx_text" id="S6.T4.6.26.1.1" style="font-size:90%;background-color:#F3F3F3;">F-0.4B (ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.2.1.1"><span class="ltx_text" id="S6.T4.6.26.2.1.1.1" style="font-size:90%;">34.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.3.1.1"><span class="ltx_text" id="S6.T4.6.26.3.1.1.1" style="font-size:90%;">44.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.4.1.1"><span class="ltx_text" id="S6.T4.6.26.4.1.1.1" style="font-size:90%;">34.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.5.1.1"><span class="ltx_text" id="S6.T4.6.26.5.1.1.1" style="font-size:90%;">25.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.6.1.1"><span class="ltx_text" id="S6.T4.6.26.6.1.1.1" style="font-size:90%;">54.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.7.1.1"><span class="ltx_text" id="S6.T4.6.26.7.1.1.1" style="font-size:90%;">53.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.8.1.1"><span class="ltx_text" id="S6.T4.6.26.8.1.1.1" style="font-size:90%;">77.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.9.1.1"><span class="ltx_text" id="S6.T4.6.26.9.1.1.1" style="font-size:90%;">77.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.10.1.1"><span class="ltx_text" id="S6.T4.6.26.10.1.1.1" style="font-size:90%;">82.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.11.1.1"><span class="ltx_text" id="S6.T4.6.26.11.1.1.1" style="font-size:90%;">74.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.12.1.1"><span class="ltx_text" id="S6.T4.6.26.12.1.1.1" style="font-size:90%;">77.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T4.6.26.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.26.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.26.13.1.1"><span class="ltx_text" id="S6.T4.6.26.13.1.1.1" style="font-size:90%;">1.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.27" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.27.1"><span class="ltx_text" id="S6.T4.6.27.1.1" style="font-size:90%;background-color:#F3F3F3;">F-0.4B <span class="ltx_text ltx_font_italic" id="S6.T4.6.27.1.1.1">100K</span> (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.2.1.1"><span class="ltx_text" id="S6.T4.6.27.2.1.1.1" style="font-size:90%;">36.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.3.1.1"><span class="ltx_text" id="S6.T4.6.27.3.1.1.1" style="font-size:90%;">51.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.4.1.1"><span class="ltx_text" id="S6.T4.6.27.4.1.1.1" style="font-size:90%;">37.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.5.1.1"><span class="ltx_text" id="S6.T4.6.27.5.1.1.1" style="font-size:90%;">29.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.6.1.1"><span class="ltx_text" id="S6.T4.6.27.6.1.1.1" style="font-size:90%;">54.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.7.1.1"><span class="ltx_text" id="S6.T4.6.27.7.1.1.1" style="font-size:90%;">54.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.8.1.1"><span class="ltx_text" id="S6.T4.6.27.8.1.1.1" style="font-size:90%;">77.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.9.1.1"><span class="ltx_text" id="S6.T4.6.27.9.1.1.1" style="font-size:90%;">78.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.10.1.1"><span class="ltx_text" id="S6.T4.6.27.10.1.1.1" style="font-size:90%;">83.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.11.1.1"><span class="ltx_text" id="S6.T4.6.27.11.1.1.1" style="font-size:90%;">75.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.12.1.1"><span class="ltx_text" id="S6.T4.6.27.12.1.1.1" style="font-size:90%;">78.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.27.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.27.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.27.13.1.1"><span class="ltx_text" id="S6.T4.6.27.13.1.1.1" style="font-size:90%;">1.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.28" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.28.1"><span class="ltx_text" id="S6.T4.6.28.1.1" style="font-size:90%;background-color:#F3F3F3;">F-1.0B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.2.1.1"><span class="ltx_text" id="S6.T4.6.28.2.1.1.1" style="font-size:90%;">35.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.3.1.1"><span class="ltx_text" id="S6.T4.6.28.3.1.1.1" style="font-size:90%;">47.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.4.1.1"><span class="ltx_text" id="S6.T4.6.28.4.1.1.1" style="font-size:90%;">35.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.5.1.1"><span class="ltx_text" id="S6.T4.6.28.5.1.1.1" style="font-size:90%;">27.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.6.1.1"><span class="ltx_text" id="S6.T4.6.28.6.1.1.1" style="font-size:90%;">54.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.7.1.1"><span class="ltx_text" id="S6.T4.6.28.7.1.1.1" style="font-size:90%;">54.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.8.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.28.8.1.1.1" style="font-size:90%;">79.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.9.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.28.9.1.1.1" style="font-size:90%;">80.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.10.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.28.10.1.1.1" style="font-size:90%;">86.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.11.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.28.11.1.1.1" style="font-size:90%;">77.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.12.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.28.12.1.1.1" style="font-size:90%;">81.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.28.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.28.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.28.13.1.1"><span class="ltx_text" id="S6.T4.6.28.13.1.1.1" style="font-size:90%;">5.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.29" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.29.1"><span class="ltx_text" id="S6.T4.6.29.1.1" style="font-size:90%;background-color:#F3F3F3;">F-3.5B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.2.1.1"><span class="ltx_text" id="S6.T4.6.29.2.1.1.1" style="font-size:90%;">35.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.3.1.1"><span class="ltx_text" id="S6.T4.6.29.3.1.1.1" style="font-size:90%;">48.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.4.1.1"><span class="ltx_text" id="S6.T4.6.29.4.1.1.1" style="font-size:90%;">36.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.5.1.1"><span class="ltx_text" id="S6.T4.6.29.5.1.1.1" style="font-size:90%;">28.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.6.1.1"><span class="ltx_text" id="S6.T4.6.29.6.1.1.1" style="font-size:90%;">53.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.7.1.1"><span class="ltx_text" id="S6.T4.6.29.7.1.1.1" style="font-size:90%;">54.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.8.1.1"><span class="ltx_text" id="S6.T4.6.29.8.1.1.1" style="font-size:90%;">78.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.9.1.1"><span class="ltx_text" id="S6.T4.6.29.9.1.1.1" style="font-size:90%;">78.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.10.1.1"><span class="ltx_text" id="S6.T4.6.29.10.1.1.1" style="font-size:90%;">83.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.11.1.1"><span class="ltx_text" id="S6.T4.6.29.11.1.1.1" style="font-size:90%;">75.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.12.1.1"><span class="ltx_text" id="S6.T4.6.29.12.1.1.1" style="font-size:90%;">79.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.29.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.29.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.29.13.1.1"><span class="ltx_text" id="S6.T4.6.29.13.1.1.1" style="font-size:90%;">24.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.30" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left" id="S6.T4.6.30.1"><span class="ltx_text" id="S6.T4.6.30.1.1" style="font-size:90%;background-color:#F3F3F3;">F-11.2B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.2.1.1"><span class="ltx_text" id="S6.T4.6.30.2.1.1.1" style="font-size:90%;">36.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.3.1.1"><span class="ltx_text" id="S6.T4.6.30.3.1.1.1" style="font-size:90%;">50.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.4.1.1"><span class="ltx_text" id="S6.T4.6.30.4.1.1.1" style="font-size:90%;">39.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.5.1.1"><span class="ltx_text" id="S6.T4.6.30.5.1.1.1" style="font-size:90%;">29.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.6.1.1"><span class="ltx_text" id="S6.T4.6.30.6.1.1.1" style="font-size:90%;">52.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.7.1.1"><span class="ltx_text" id="S6.T4.6.30.7.1.1.1" style="font-size:90%;">53.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.8.1.1"><span class="ltx_text" id="S6.T4.6.30.8.1.1.1" style="font-size:90%;">78.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.9.1.1"><span class="ltx_text" id="S6.T4.6.30.9.1.1.1" style="font-size:90%;">79.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.10.1.1"><span class="ltx_text" id="S6.T4.6.30.10.1.1.1" style="font-size:90%;">84.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.11.1.1"><span class="ltx_text" id="S6.T4.6.30.11.1.1.1" style="font-size:90%;">76.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.12.1.1"><span class="ltx_text" id="S6.T4.6.30.12.1.1.1" style="font-size:90%;">80.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S6.T4.6.30.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.30.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.30.13.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.30.13.1.1.1" style="font-size:90%;">26.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.31" style="background-color:#F3F3F3;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.6.31.1"><span class="ltx_text" id="S6.T4.6.31.1.1" style="font-size:90%;background-color:#F3F3F3;">F-11.2B <span class="ltx_text ltx_font_italic" id="S6.T4.6.31.1.1.1">30K</span> (ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.2.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.2.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.6.31.2.1.1.1" style="font-size:90%;">37.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.3.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.3.1.1"><span class="ltx_text" id="S6.T4.6.31.3.1.1.1" style="font-size:90%;">52.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.4.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.4.1.1"><span class="ltx_text" id="S6.T4.6.31.4.1.1.1" style="font-size:90%;">39.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.5.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.5.1.1"><span class="ltx_text" id="S6.T4.6.31.5.1.1.1" style="font-size:90%;">30.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.6">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.6.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.6.1.1"><span class="ltx_text" id="S6.T4.6.31.6.1.1.1" style="font-size:90%;">52.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.7">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.7.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.7.1.1"><span class="ltx_text" id="S6.T4.6.31.7.1.1.1" style="font-size:90%;">53.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.8">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.8.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.8.1.1"><span class="ltx_text" id="S6.T4.6.31.8.1.1.1" style="font-size:90%;">79.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.9">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.9.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.9.1.1"><span class="ltx_text" id="S6.T4.6.31.9.1.1.1" style="font-size:90%;">79.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.10">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.10.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.10.1.1"><span class="ltx_text" id="S6.T4.6.31.10.1.1.1" style="font-size:90%;">85.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.11">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.11.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.11.1.1"><span class="ltx_text" id="S6.T4.6.31.11.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.12">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.12.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.12.1.1"><span class="ltx_text" id="S6.T4.6.31.12.1.1.1" style="font-size:90%;">80.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T4.6.31.13">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.31.13.1" style="background-color:#F3F3F3;">
<span class="ltx_p" id="S6.T4.6.31.13.1.1"><span class="ltx_text" id="S6.T4.6.31.13.1.1.1" style="font-size:90%;">17.7</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of different vision-language models (VLMs) across various downstream tasks, comparing their performance under both supervised fine-tuning and zero-shot settings. The tasks include translation (Multi30K, CoMMuTE), lexical disambiguation (CoMMuTE), and image captioning (COCO Karpathy, Multi30K, XM3600).  Evaluation metrics vary by task and include BLEU score for translation, accuracy for disambiguation, and CIDEr score and CLIPScore (both standard and multilingual versions) for image captioning.  The results highlight the models' ability to generalize to unseen languages and tasks, particularly in the zero-shot setting when a text prefix is used.  The table shows several models' performances, including some re-evaluated baselines and the authors' proposed models in different sizes. The best performances are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 4: Downstream task performance for supervised fine-tuning and zero-shot testing. We evaluate on Multi30K Task 1 (translation, reported is the mean over the splits Test2016, Test2017, and AmbiguousCOCO), CoMMuTE translation and disambiguation (En→→\rightarrow→X is the mean over De, Fr, Ru, and Zh), COCO Karpathy (En captioning), Multi30K Task 2 (captioning), and XM3600 (captioning, Unseen contains Fr, Es, Ru and Zh). We report BLEU for translation, accuracy (Acc.) for disambiguation, CIDEr for captioning, and CLIPScore (CS) and multilingual CLIPScore (MCS) for zero-shot captioning. For unseen languages in zero-shot captioning, we report CIDEr and evaluate with a prefix (PC). Best results are marked in bold. Methods marked with * are re-evaluated by us.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.2">
<tr class="ltx_tr" id="A1.T5.2.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A1.T5.2.1.1"></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="A1.T5.2.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.2.1" style="font-size:90%;">Florenz (F)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.2.2.1"><span class="ltx_text" id="A1.T5.2.2.1.1" style="font-size:90%;">Param.</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T5.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.2.1">
<span class="ltx_p" id="A1.T5.2.2.2.1.1" style="width:79.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.2.1.1.1" style="font-size:90%;">0.4B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A1.T5.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.3.1">
<span class="ltx_p" id="A1.T5.2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.3.1.1.1" style="font-size:90%;">1B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A1.T5.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.4.1">
<span class="ltx_p" id="A1.T5.2.2.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.4.1.1.1" style="font-size:90%;">3.5B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T5.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.5.1">
<span class="ltx_p" id="A1.T5.2.2.5.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.5.1.1.1" style="font-size:90%;">11.2B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.3">
<td class="ltx_td ltx_border_r ltx_border_t" id="A1.T5.2.3.1"></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="4" id="A1.T5.2.3.2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.3.2.1" style="font-size:90%;">Vision Encoder</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.4">
<td class="ltx_td ltx_border_r" id="A1.T5.2.4.1"></td>
<td class="ltx_td ltx_align_center ltx_align_top" colspan="4" id="A1.T5.2.4.2">
<span class="ltx_text" id="A1.T5.2.4.2.1" style="font-size:90%;">DaViT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T5.2.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib16" title="">16</a><span class="ltx_text" id="A1.T5.2.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.2.5.1"><span class="ltx_text" id="A1.T5.2.5.1.1" style="font-size:90%;"># layers</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T5.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.5.2.1">
<span class="ltx_p" id="A1.T5.2.5.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.5.2.1.1.1" style="font-size:90%;">[1, 1, 9, 1]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T5.2.5.3"><span class="ltx_text" id="A1.T5.2.5.3.1" style="font-size:90%;">[1, 1, 9, 1]</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.2.6.1"><span class="ltx_text" id="A1.T5.2.6.1.1" style="font-size:90%;">Hidden dim.</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T5.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.6.2.1">
<span class="ltx_p" id="A1.T5.2.6.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.6.2.1.1.1" style="font-size:90%;">[128, 256, 512, 1024]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" colspan="3" id="A1.T5.2.6.3"><span class="ltx_text" id="A1.T5.2.6.3.1" style="font-size:90%;">[256, 512, 1024, 2048]</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.2.7.1"><span class="ltx_text" id="A1.T5.2.7.1.1" style="font-size:90%;"># heads</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T5.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.7.2.1">
<span class="ltx_p" id="A1.T5.2.7.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.7.2.1.1.1" style="font-size:90%;">[4, 8, 16, 32]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" colspan="3" id="A1.T5.2.7.3"><span class="ltx_text" id="A1.T5.2.7.3.1" style="font-size:90%;">[8, 16, 32, 64]</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.2.8.1"><span class="ltx_text" id="A1.T5.2.8.1.1" style="font-size:90%;">Patch size</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T5.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.8.2.1">
<span class="ltx_p" id="A1.T5.2.8.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.8.2.1.1.1" style="font-size:90%;">[7, 3, 3, 3]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" colspan="3" id="A1.T5.2.8.3"><span class="ltx_text" id="A1.T5.2.8.3.1" style="font-size:90%;">[7, 3, 3, 3]</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.2.9.1"><span class="ltx_text" id="A1.T5.2.9.1.1" style="font-size:90%;">Patch stride</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T5.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.9.2.1">
<span class="ltx_p" id="A1.T5.2.9.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.9.2.1.1.1" style="font-size:90%;">[4, 2, 2, 2]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" colspan="3" id="A1.T5.2.9.3"><span class="ltx_text" id="A1.T5.2.9.3.1" style="font-size:90%;">[4, 2, 2, 2]</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.10">
<td class="ltx_td ltx_border_r ltx_border_t" id="A1.T5.2.10.1"></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="4" id="A1.T5.2.10.2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.10.2.1" style="font-size:90%;">Encoder</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.11">
<td class="ltx_td ltx_border_r" id="A1.T5.2.11.1"></td>
<td class="ltx_td ltx_align_center ltx_align_top" colspan="4" id="A1.T5.2.11.2">
<span class="ltx_text" id="A1.T5.2.11.2.1" style="font-size:90%;">Florence-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T5.2.11.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib69" title="">69</a><span class="ltx_text" id="A1.T5.2.11.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.2.12.1"><span class="ltx_text" id="A1.T5.2.12.1.1" style="font-size:90%;"># layers</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T5.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.12.2.1">
<span class="ltx_p" id="A1.T5.2.12.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.12.2.1.1.1" style="font-size:90%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T5.2.12.3"><span class="ltx_text" id="A1.T5.2.12.3.1" style="font-size:90%;">12</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.2.13.1"><span class="ltx_text" id="A1.T5.2.13.1.1" style="font-size:90%;">Hidden dim.</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T5.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.13.2.1">
<span class="ltx_p" id="A1.T5.2.13.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.13.2.1.1.1" style="font-size:90%;">768</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" colspan="3" id="A1.T5.2.13.3"><span class="ltx_text" id="A1.T5.2.13.3.1" style="font-size:90%;">1024</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.2.14.1"><span class="ltx_text" id="A1.T5.2.14.1.1" style="font-size:90%;"># heads</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T5.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.14.2.1">
<span class="ltx_p" id="A1.T5.2.14.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.14.2.1.1.1" style="font-size:90%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" colspan="3" id="A1.T5.2.14.3"><span class="ltx_text" id="A1.T5.2.14.3.1" style="font-size:90%;">16</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.2.15.1"><span class="ltx_text" id="A1.T5.2.15.1.1" style="font-size:90%;">Vocab. size</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="4" id="A1.T5.2.15.2"><span class="ltx_text" id="A1.T5.2.15.2.1" style="font-size:90%;">51328</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.16">
<td class="ltx_td ltx_border_r ltx_border_t" id="A1.T5.2.16.1"></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="4" id="A1.T5.2.16.2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.16.2.1" style="font-size:90%;">Decoder</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.17">
<td class="ltx_td ltx_border_r" id="A1.T5.2.17.1"></td>
<td class="ltx_td ltx_align_center ltx_align_top" colspan="2" id="A1.T5.2.17.2">
<span class="ltx_text" id="A1.T5.2.17.2.1" style="font-size:90%;">Florence-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T5.2.17.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib69" title="">69</a><span class="ltx_text" id="A1.T5.2.17.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T5.2.17.3">
<span class="ltx_text" id="A1.T5.2.17.3.1" style="font-size:90%;">Gemma-2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T5.2.17.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib61" title="">61</a><span class="ltx_text" id="A1.T5.2.17.3.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.2.18.1"><span class="ltx_text" id="A1.T5.2.18.1.1" style="font-size:90%;"># layers</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T5.2.18.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.18.2.1">
<span class="ltx_p" id="A1.T5.2.18.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.18.2.1.1.1" style="font-size:90%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A1.T5.2.18.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.18.3.1">
<span class="ltx_p" id="A1.T5.2.18.3.1.1"><span class="ltx_text" id="A1.T5.2.18.3.1.1.1" style="font-size:90%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A1.T5.2.18.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.18.4.1">
<span class="ltx_p" id="A1.T5.2.18.4.1.1"><span class="ltx_text" id="A1.T5.2.18.4.1.1.1" style="font-size:90%;">26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T5.2.18.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.18.5.1">
<span class="ltx_p" id="A1.T5.2.18.5.1.1"><span class="ltx_text" id="A1.T5.2.18.5.1.1.1" style="font-size:90%;">42</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.2.19.1"><span class="ltx_text" id="A1.T5.2.19.1.1" style="font-size:90%;">Hidden dim.</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T5.2.19.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.19.2.1">
<span class="ltx_p" id="A1.T5.2.19.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.19.2.1.1.1" style="font-size:90%;">768</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="A1.T5.2.19.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.19.3.1">
<span class="ltx_p" id="A1.T5.2.19.3.1.1"><span class="ltx_text" id="A1.T5.2.19.3.1.1.1" style="font-size:90%;">1024</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="A1.T5.2.19.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.19.4.1">
<span class="ltx_p" id="A1.T5.2.19.4.1.1"><span class="ltx_text" id="A1.T5.2.19.4.1.1.1" style="font-size:90%;">2304</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A1.T5.2.19.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.19.5.1">
<span class="ltx_p" id="A1.T5.2.19.5.1.1"><span class="ltx_text" id="A1.T5.2.19.5.1.1.1" style="font-size:90%;">3584</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.2.20.1"><span class="ltx_text" id="A1.T5.2.20.1.1" style="font-size:90%;"># heads</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T5.2.20.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.20.2.1">
<span class="ltx_p" id="A1.T5.2.20.2.1.1" style="width:79.7pt;"><span class="ltx_text" id="A1.T5.2.20.2.1.1.1" style="font-size:90%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="A1.T5.2.20.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.20.3.1">
<span class="ltx_p" id="A1.T5.2.20.3.1.1"><span class="ltx_text" id="A1.T5.2.20.3.1.1.1" style="font-size:90%;">16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="A1.T5.2.20.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.20.4.1">
<span class="ltx_p" id="A1.T5.2.20.4.1.1"><span class="ltx_text" id="A1.T5.2.20.4.1.1.1" style="font-size:90%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A1.T5.2.20.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.20.5.1">
<span class="ltx_p" id="A1.T5.2.20.5.1.1"><span class="ltx_text" id="A1.T5.2.20.5.1.1.1" style="font-size:90%;">16</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.21">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A1.T5.2.21.1"><span class="ltx_text" id="A1.T5.2.21.1.1" style="font-size:90%;">Vocab. size</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_bb ltx_border_t" colspan="4" id="A1.T5.2.21.2"><span class="ltx_text" id="A1.T5.2.21.2.1" style="font-size:90%;">256000</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture of the Florenz model family, which consists of various sizes (0.4B, 1B, 3.5B, and 11.2B parameters).  It breaks down the model components (vision encoder and decoder) and their respective configurations, including the number of layers, hidden dimensions, number of attention heads, patch size and stride for the vision encoder, and vocabulary size for the decoder.  The table clarifies the specific pre-trained models used for each component, highlighting the combination of Florence-2 (vision) and Gemma-2 (language).
> <details>
> <summary>read the caption</summary>
> Table 5: Model configuration of Florenz.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.2">
<tr class="ltx_tr" id="A2.T6.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A2.T6.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.2.1">
<span class="ltx_p" id="A2.T6.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.2.1.1.1" style="font-size:90%;">En</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A2.T6.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.3.1">
<span class="ltx_p" id="A2.T6.2.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.3.1.1.1" style="font-size:90%;">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A2.T6.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.4.1">
<span class="ltx_p" id="A2.T6.2.1.4.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.4.1.1.1" style="font-size:90%;">Fr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A2.T6.2.1.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.5.1">
<span class="ltx_p" id="A2.T6.2.1.5.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.5.1.1.1" style="font-size:90%;">Es</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A2.T6.2.1.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.6.1">
<span class="ltx_p" id="A2.T6.2.1.6.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.6.1.1.1" style="font-size:90%;">Ru</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A2.T6.2.1.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.7.1">
<span class="ltx_p" id="A2.T6.2.1.7.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.2.1.7.1.1.1" style="font-size:90%;">Zh</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.2.1">
<span class="ltx_text" id="A2.T6.2.2.1.1" style="font-size:90%;">Paper </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T6.2.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A2.T6.2.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.2.1">
<span class="ltx_p" id="A2.T6.2.2.2.1.1"><span class="ltx_text" id="A2.T6.2.2.2.1.1.1" style="font-size:90%;">78.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.3.1">
<span class="ltx_p" id="A2.T6.2.2.3.1.1"><span class="ltx_text" id="A2.T6.2.2.3.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.4.1">
<span class="ltx_p" id="A2.T6.2.2.4.1.1"><span class="ltx_text" id="A2.T6.2.2.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.5.1">
<span class="ltx_p" id="A2.T6.2.2.5.1.1"><span class="ltx_text" id="A2.T6.2.2.5.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.6.1">
<span class="ltx_p" id="A2.T6.2.2.6.1.1"><span class="ltx_text" id="A2.T6.2.2.6.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.2.2.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.7.1">
<span class="ltx_p" id="A2.T6.2.2.7.1.1"><span class="ltx_text" id="A2.T6.2.2.7.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.3">
<td class="ltx_td ltx_align_left" id="A2.T6.2.3.1"><span class="ltx_text" id="A2.T6.2.3.1.1" style="font-size:90%;">Reprod.</span></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.3.2.1">
<span class="ltx_p" id="A2.T6.2.3.2.1.1"><span class="ltx_text" id="A2.T6.2.3.2.1.1.1" style="font-size:90%;">78.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.3.3.1">
<span class="ltx_p" id="A2.T6.2.3.3.1.1"><span class="ltx_text" id="A2.T6.2.3.3.1.1.1" style="font-size:90%;">35.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.3.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.3.4.1">
<span class="ltx_p" id="A2.T6.2.3.4.1.1"><span class="ltx_text" id="A2.T6.2.3.4.1.1.1" style="font-size:90%;">63.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.3.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.3.5.1">
<span class="ltx_p" id="A2.T6.2.3.5.1.1"><span class="ltx_text" id="A2.T6.2.3.5.1.1.1" style="font-size:90%;">68.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.3.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.3.6.1">
<span class="ltx_p" id="A2.T6.2.3.6.1.1"><span class="ltx_text" id="A2.T6.2.3.6.1.1.1" style="font-size:90%;">35.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.3.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.3.7.1">
<span class="ltx_p" id="A2.T6.2.3.7.1.1"><span class="ltx_text" id="A2.T6.2.3.7.1.1.1" style="font-size:90%;">28.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.4">
<td class="ltx_td ltx_align_left" id="A2.T6.2.4.1">
<span class="ltx_text ltx_font_typewriter" id="A2.T6.2.4.1.1" style="font-size:90%;">stanza</span><span class="ltx_text" id="A2.T6.2.4.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T6.2.4.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib51" title="">51</a><span class="ltx_text" id="A2.T6.2.4.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.4.2.1">
<span class="ltx_p" id="A2.T6.2.4.2.1.1"><span class="ltx_text" id="A2.T6.2.4.2.1.1.1" style="font-size:90%;">78.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.4.3.1">
<span class="ltx_p" id="A2.T6.2.4.3.1.1"><span class="ltx_text" id="A2.T6.2.4.3.1.1.1" style="font-size:90%;">35.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.4.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.4.4.1">
<span class="ltx_p" id="A2.T6.2.4.4.1.1"><span class="ltx_text" id="A2.T6.2.4.4.1.1.1" style="font-size:90%;">63.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.4.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.4.5.1">
<span class="ltx_p" id="A2.T6.2.4.5.1.1"><span class="ltx_text" id="A2.T6.2.4.5.1.1.1" style="font-size:90%;">67.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.4.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.4.6.1">
<span class="ltx_p" id="A2.T6.2.4.6.1.1"><span class="ltx_text" id="A2.T6.2.4.6.1.1.1" style="font-size:90%;">35.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.2.4.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.4.7.1">
<span class="ltx_p" id="A2.T6.2.4.7.1.1"><span class="ltx_text" id="A2.T6.2.4.7.1.1.1" style="font-size:90%;">28.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.2.5.1">
<span class="ltx_text" id="A2.T6.2.5.1.1" style="font-size:90%;">Baseline-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T6.2.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A2.T6.2.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.5.2.1">
<span class="ltx_p" id="A2.T6.2.5.2.1.1"><span class="ltx_text" id="A2.T6.2.5.2.1.1.1" style="font-size:90%;">81.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.5.3.1">
<span class="ltx_p" id="A2.T6.2.5.3.1.1"><span class="ltx_text" id="A2.T6.2.5.3.1.1.1" style="font-size:90%;">38.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.2.5.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.5.4.1">
<span class="ltx_p" id="A2.T6.2.5.4.1.1"><span class="ltx_text" id="A2.T6.2.5.4.1.1.1" style="font-size:90%;">64.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.2.5.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.5.5.1">
<span class="ltx_p" id="A2.T6.2.5.5.1.1"><span class="ltx_text" id="A2.T6.2.5.5.1.1.1" style="font-size:90%;">63.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.2.5.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.5.6.1">
<span class="ltx_p" id="A2.T6.2.5.6.1.1"><span class="ltx_text" id="A2.T6.2.5.6.1.1.1" style="font-size:90%;">29.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.2.5.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.5.7.1">
<span class="ltx_p" id="A2.T6.2.5.7.1.1"><span class="ltx_text" id="A2.T6.2.5.7.1.1.1" style="font-size:90%;">21.5</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the CIDEr scores for image captioning on the XM3600 dataset across different models.  The models compared include PaliGemma [4] (with its original pre-segmented outputs and a reproduction using stanza [51] for word segmentation), and the Baseline-6B model. This comparison highlights the impact of pre-segmentation and provides context for understanding the results reported in the paper.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison between the numbers reported in the PaliGemma paper [4], reproduction with pre-segmented model outputs, reproduction with stanza [51] for word segmentation, and the Baseline-6B model for reference. Note that the outputs of PaliGemma-3B are pre-segmented, with words separated by whitespace. For the stanza evaluation, we first remove the whitespace before processing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1">
<tr class="ltx_tr" id="A2.T7.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.2.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.2.1.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T7.1.2.2"><span class="ltx_text ltx_font_bold" id="A2.T7.1.2.2.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.2.3"><span class="ltx_text ltx_font_bold" id="A2.T7.1.2.3.1" style="font-size:90%;">Source</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T7.1.2.4"><span class="ltx_text ltx_font_bold" id="A2.T7.1.2.4.1" style="font-size:90%;">Languages</span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A2.T7.1.2.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.2.5.1">
<span class="ltx_p" id="A2.T7.1.2.5.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.2.5.1.1.1" style="font-size:90%;">Train (Images / Texts)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.3.1" rowspan="7"><span class="ltx_text" id="A2.T7.1.3.1.1" style="font-size:90%;">Caption</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.1.3.2"><span class="ltx_text" id="A2.T7.1.3.2.1" style="font-size:90%;">COCO Karpathy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.3.3"><span class="ltx_text" id="A2.T7.1.3.3.1" style="font-size:90%;">GT</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.1.3.4"><span class="ltx_text" id="A2.T7.1.3.4.1" style="font-size:90%;">En</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T7.1.3.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.3.5.1">
<span class="ltx_p" id="A2.T7.1.3.5.1.1"><span class="ltx_text" id="A2.T7.1.3.5.1.1.1" style="font-size:90%;">113,287 / 566,435</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.4">
<td class="ltx_td ltx_align_left" id="A2.T7.1.4.1"><span class="ltx_text" id="A2.T7.1.4.1.1" style="font-size:90%;">Multi30k Task 2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.4.2"><span class="ltx_text" id="A2.T7.1.4.2.1" style="font-size:90%;">GT</span></td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.4.3"><span class="ltx_text" id="A2.T7.1.4.3.1" style="font-size:90%;">En, De</span></td>
<td class="ltx_td ltx_align_justify" id="A2.T7.1.4.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.4.4.1">
<span class="ltx_p" id="A2.T7.1.4.4.1.1"><span class="ltx_text" id="A2.T7.1.4.4.1.1.1" style="font-size:90%;">29,000 / 290,000</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.5">
<td class="ltx_td ltx_align_left" id="A2.T7.1.5.1"><span class="ltx_text" id="A2.T7.1.5.1.1" style="font-size:90%;">Image Paragraphs</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.5.2"><span class="ltx_text" id="A2.T7.1.5.2.1" style="font-size:90%;">GT</span></td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.5.3"><span class="ltx_text" id="A2.T7.1.5.3.1" style="font-size:90%;">En</span></td>
<td class="ltx_td ltx_align_justify" id="A2.T7.1.5.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.5.4.1">
<span class="ltx_p" id="A2.T7.1.5.4.1.1"><span class="ltx_text" id="A2.T7.1.5.4.1.1.1" style="font-size:90%;">14,579 / 14,579</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.6">
<td class="ltx_td ltx_align_left" id="A2.T7.1.6.1"><span class="ltx_text" id="A2.T7.1.6.1.1" style="font-size:90%;">DOCCI</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.6.2"><span class="ltx_text" id="A2.T7.1.6.2.1" style="font-size:90%;">GT</span></td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.6.3"><span class="ltx_text" id="A2.T7.1.6.3.1" style="font-size:90%;">En</span></td>
<td class="ltx_td ltx_align_justify" id="A2.T7.1.6.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.6.4.1">
<span class="ltx_p" id="A2.T7.1.6.4.1.1"><span class="ltx_text" id="A2.T7.1.6.4.1.1.1" style="font-size:90%;">9,647 / 9,647</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.1.7.1"><span class="ltx_text" id="A2.T7.1.7.1.1" style="font-size:90%;">Multi30k Task 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.7.2"><span class="ltx_text" id="A2.T7.1.7.2.1" style="font-size:90%;">MT</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.1.7.3"><span class="ltx_text" id="A2.T7.1.7.3.1" style="font-size:90%;">Fr, Es, Ru, Zh</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T7.1.7.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.7.4.1">
<span class="ltx_p" id="A2.T7.1.7.4.1.1"><span class="ltx_text" id="A2.T7.1.7.4.1.1.1" style="font-size:90%;">* / 580,000</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.8">
<td class="ltx_td ltx_align_left" id="A2.T7.1.8.1"><span class="ltx_text" id="A2.T7.1.8.1.1" style="font-size:90%;">Image Paragraphs</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.8.2"><span class="ltx_text" id="A2.T7.1.8.2.1" style="font-size:90%;">MT</span></td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.8.3"><span class="ltx_text" id="A2.T7.1.8.3.1" style="font-size:90%;">De, Fr, Es, Ru, Zh</span></td>
<td class="ltx_td ltx_align_justify" id="A2.T7.1.8.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.8.4.1">
<span class="ltx_p" id="A2.T7.1.8.4.1.1"><span class="ltx_text" id="A2.T7.1.8.4.1.1.1" style="font-size:90%;">* / 72,895</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.9">
<td class="ltx_td ltx_align_left" id="A2.T7.1.9.1"><span class="ltx_text" id="A2.T7.1.9.1.1" style="font-size:90%;">DOCCI</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.9.2"><span class="ltx_text" id="A2.T7.1.9.2.1" style="font-size:90%;">MT</span></td>
<td class="ltx_td ltx_align_left" id="A2.T7.1.9.3"><span class="ltx_text" id="A2.T7.1.9.3.1" style="font-size:90%;">De, Fr, Es, Ru, Zh</span></td>
<td class="ltx_td ltx_align_justify" id="A2.T7.1.9.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.9.4.1">
<span class="ltx_p" id="A2.T7.1.9.4.1.1"><span class="ltx_text" id="A2.T7.1.9.4.1.1.1" style="font-size:90%;">* / 48,235</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.1" rowspan="2"><span class="ltx_text" id="A2.T7.1.1.1.1" style="font-size:90%;">Translation En<math alttext="\rightarrow" class="ltx_Math" display="inline" id="A2.T7.1.1.1.1.m1.1"><semantics id="A2.T7.1.1.1.1.m1.1a"><mo id="A2.T7.1.1.1.1.m1.1.1" stretchy="false" xref="A2.T7.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A2.T7.1.1.1.1.m1.1b"><ci id="A2.T7.1.1.1.1.m1.1.1.cmml" xref="A2.T7.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T7.1.1.1.1.m1.1d">→</annotation></semantics></math>X</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.1.1.2"><span class="ltx_text" id="A2.T7.1.1.2.1" style="font-size:90%;">Multi30k Task 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.3"><span class="ltx_text" id="A2.T7.1.1.3.1" style="font-size:90%;">GT</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.1.1.4"><span class="ltx_text" id="A2.T7.1.1.4.1" style="font-size:90%;">De, Fr</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T7.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.5.1">
<span class="ltx_p" id="A2.T7.1.1.5.1.1"><span class="ltx_text" id="A2.T7.1.1.5.1.1.1" style="font-size:90%;">29,000 / 58,000</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T7.1.10.1"><span class="ltx_text" id="A2.T7.1.10.1.1" style="font-size:90%;">Multi30k Task 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.10.2"><span class="ltx_text" id="A2.T7.1.10.2.1" style="font-size:90%;">MT</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T7.1.10.3"><span class="ltx_text" id="A2.T7.1.10.3.1" style="font-size:90%;">Es, Ru, Zh</span></td>
<td class="ltx_td ltx_align_justify ltx_border_bb ltx_border_t" id="A2.T7.1.10.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.10.4.1">
<span class="ltx_p" id="A2.T7.1.10.4.1.1"><span class="ltx_text" id="A2.T7.1.10.4.1.1.1" style="font-size:90%;">* / 87,000</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the fine-tuning dataset used in the experiments.  It breaks down the data by task (captioning or translation), dataset source (COCO Karpathy, Multi30k, Image Paragraphs, or DOCCI), language(s) included, and the number of images and texts.  The annotation type is specified as either ground truth (GT) or machine translated (MT). This dataset is a mix of several publicly available resources augmented with machine translation for languages missing data in the original resources.
> <details>
> <summary>read the caption</summary>
> Table 7: Fine-tuning dataset for captioning and translation task based on the COCO Karpathy [9, 36], Multi30k [19], Image Paragraphs [37] and DOCCI [47]. The annotation is the regular ground truth (GT) or machine translated (MT).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T8.6">
<tr class="ltx_tr" id="A5.T8.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="10" id="A5.T8.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T8.1.1.1.1" style="font-size:90%;">Multi30K Translation En<math alttext="\rightarrow" class="ltx_Math" display="inline" id="A5.T8.1.1.1.1.m1.1"><semantics id="A5.T8.1.1.1.1.m1.1a"><mo id="A5.T8.1.1.1.1.m1.1.1" stretchy="false" xref="A5.T8.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A5.T8.1.1.1.1.m1.1b"><ci id="A5.T8.1.1.1.1.m1.1.1.cmml" xref="A5.T8.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T8.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T8.1.1.1.1.m1.1d">→</annotation></semantics></math>Fr</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.7">
<td class="ltx_td ltx_border_t" id="A5.T8.6.7.1"></td>
<td class="ltx_td ltx_border_t" id="A5.T8.6.7.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A5.T8.6.7.3"><span class="ltx_text ltx_font_bold" id="A5.T8.6.7.3.1" style="font-size:90%;">Test2016</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A5.T8.6.7.4"><span class="ltx_text ltx_font_bold" id="A5.T8.6.7.4.1" style="font-size:90%;">Test2017</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A5.T8.6.7.5"><span class="ltx_text ltx_font_bold" id="A5.T8.6.7.5.1" style="font-size:90%;">Test2018</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A5.T8.6.7.6"><span class="ltx_text ltx_font_bold" id="A5.T8.6.7.6.1" style="font-size:90%;">COCO</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.5.5">
<td class="ltx_td" id="A5.T8.5.5.5"></td>
<td class="ltx_td ltx_align_left" id="A5.T8.5.5.6"><span class="ltx_text ltx_font_bold" id="A5.T8.5.5.6.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.5.5.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.5.5.7.1">
<span class="ltx_p" id="A5.T8.5.5.7.1.1"><span class="ltx_text" id="A5.T8.5.5.7.1.1.1" style="font-size:90%;">B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.2.2.1.1">
<span class="ltx_p" id="A5.T8.2.2.1.1.1"><span class="ltx_text" id="A5.T8.2.2.1.1.1.1" style="font-size:90%;">C</span><sub class="ltx_sub" id="A5.T8.2.2.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A5.T8.2.2.1.1.1.2.1" style="font-size:90%;">22</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.5.5.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.5.5.8.1">
<span class="ltx_p" id="A5.T8.5.5.8.1.1"><span class="ltx_text" id="A5.T8.5.5.8.1.1.1" style="font-size:90%;">B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.3.3.2.1">
<span class="ltx_p" id="A5.T8.3.3.2.1.1"><span class="ltx_text" id="A5.T8.3.3.2.1.1.1" style="font-size:90%;">C</span><sub class="ltx_sub" id="A5.T8.3.3.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A5.T8.3.3.2.1.1.2.1" style="font-size:90%;">22</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.5.5.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.5.5.9.1">
<span class="ltx_p" id="A5.T8.5.5.9.1.1"><span class="ltx_text" id="A5.T8.5.5.9.1.1.1" style="font-size:90%;">B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.4.4.3.1">
<span class="ltx_p" id="A5.T8.4.4.3.1.1"><span class="ltx_text" id="A5.T8.4.4.3.1.1.1" style="font-size:90%;">C</span><sub class="ltx_sub" id="A5.T8.4.4.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A5.T8.4.4.3.1.1.2.1" style="font-size:90%;">22</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.5.5.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.5.5.10.1">
<span class="ltx_p" id="A5.T8.5.5.10.1.1"><span class="ltx_text" id="A5.T8.5.5.10.1.1.1" style="font-size:90%;">B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.5.5.4.1">
<span class="ltx_p" id="A5.T8.5.5.4.1.1"><span class="ltx_text" id="A5.T8.5.5.4.1.1.1" style="font-size:90%;">C</span><sub class="ltx_sub" id="A5.T8.5.5.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A5.T8.5.5.4.1.1.2.1" style="font-size:90%;">22</span></sub></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.6.8.1" rowspan="7"><span class="ltx_text" id="A5.T8.6.8.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T8.6.8.1.1.1" style="width:8.0pt;height:41.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:41.1pt;transform:translate(-16.56pt,-15.69pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T8.6.8.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A5.T8.6.8.1.1.1.1.1">supervised</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.8.2">
<span class="ltx_text" id="A5.T8.6.8.2.1" style="font-size:90%;">VGAMT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib24" title="">24</a><span class="ltx_text" id="A5.T8.6.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.8.3.1">
<span class="ltx_p" id="A5.T8.6.8.3.1.1"><span class="ltx_text" id="A5.T8.6.8.3.1.1.1" style="font-size:90%;">65.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.8.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.8.4.1">
<span class="ltx_p" id="A5.T8.6.8.4.1.1"><span class="ltx_text" id="A5.T8.6.8.4.1.1.1" style="font-size:90%;">88.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.8.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.8.5.1">
<span class="ltx_p" id="A5.T8.6.8.5.1.1"><span class="ltx_text" id="A5.T8.6.8.5.1.1.1" style="font-size:90%;">58.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.8.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.8.6.1">
<span class="ltx_p" id="A5.T8.6.8.6.1.1"><span class="ltx_text" id="A5.T8.6.8.6.1.1.1" style="font-size:90%;">88.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.8.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.8.8"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.8.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.8.9.1">
<span class="ltx_p" id="A5.T8.6.8.9.1.1"><span class="ltx_text" id="A5.T8.6.8.9.1.1.1" style="font-size:90%;">51.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.8.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.8.10.1">
<span class="ltx_p" id="A5.T8.6.8.10.1.1"><span class="ltx_text" id="A5.T8.6.8.10.1.1.1" style="font-size:90%;">84.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.9">
<td class="ltx_td ltx_align_left" id="A5.T8.6.9.1">
<span class="ltx_text" id="A5.T8.6.9.1.1" style="font-size:90%;">Baseline-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T8.6.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.9.2.1">
<span class="ltx_p" id="A5.T8.6.9.2.1.1"><span class="ltx_text" id="A5.T8.6.9.2.1.1.1" style="font-size:90%;">54.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.9.3.1">
<span class="ltx_p" id="A5.T8.6.9.3.1.1"><span class="ltx_text" id="A5.T8.6.9.3.1.1.1" style="font-size:90%;">87.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.9.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.9.4.1">
<span class="ltx_p" id="A5.T8.6.9.4.1.1"><span class="ltx_text" id="A5.T8.6.9.4.1.1.1" style="font-size:90%;">53.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.9.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.9.5.1">
<span class="ltx_p" id="A5.T8.6.9.5.1.1"><span class="ltx_text" id="A5.T8.6.9.5.1.1.1" style="font-size:90%;">87.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.9.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.9.6.1">
<span class="ltx_p" id="A5.T8.6.9.6.1.1"><span class="ltx_text" id="A5.T8.6.9.6.1.1.1" style="font-size:90%;">45.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.9.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.9.7.1">
<span class="ltx_p" id="A5.T8.6.9.7.1.1"><span class="ltx_text" id="A5.T8.6.9.7.1.1.1" style="font-size:90%;">84.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.9.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.9.8.1">
<span class="ltx_p" id="A5.T8.6.9.8.1.1"><span class="ltx_text" id="A5.T8.6.9.8.1.1.1" style="font-size:90%;">54.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.9.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.9.9.1">
<span class="ltx_p" id="A5.T8.6.9.9.1.1"><span class="ltx_text" id="A5.T8.6.9.9.1.1.1" style="font-size:90%;">85.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.10.1">
<span class="ltx_text" id="A5.T8.6.10.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.10.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T8.6.10.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.10.2.1">
<span class="ltx_p" id="A5.T8.6.10.2.1.1"><span class="ltx_text" id="A5.T8.6.10.2.1.1.1" style="font-size:90%;">57.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.10.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.10.3.1">
<span class="ltx_p" id="A5.T8.6.10.3.1.1"><span class="ltx_text" id="A5.T8.6.10.3.1.1.1" style="font-size:90%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.10.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.10.4.1">
<span class="ltx_p" id="A5.T8.6.10.4.1.1"><span class="ltx_text" id="A5.T8.6.10.4.1.1.1" style="font-size:90%;">53.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.10.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.10.5.1">
<span class="ltx_p" id="A5.T8.6.10.5.1.1"><span class="ltx_text" id="A5.T8.6.10.5.1.1.1" style="font-size:90%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.10.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.10.6.1">
<span class="ltx_p" id="A5.T8.6.10.6.1.1"><span class="ltx_text" id="A5.T8.6.10.6.1.1.1" style="font-size:90%;">39.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.10.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.10.7.1">
<span class="ltx_p" id="A5.T8.6.10.7.1.1"><span class="ltx_text" id="A5.T8.6.10.7.1.1.1" style="font-size:90%;">82.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.10.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.10.8.1">
<span class="ltx_p" id="A5.T8.6.10.8.1.1"><span class="ltx_text" id="A5.T8.6.10.8.1.1.1" style="font-size:90%;">50.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.10.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.10.9.1">
<span class="ltx_p" id="A5.T8.6.10.9.1.1"><span class="ltx_text" id="A5.T8.6.10.9.1.1.1" style="font-size:90%;">82.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.11">
<td class="ltx_td ltx_align_left" id="A5.T8.6.11.1">
<span class="ltx_text" id="A5.T8.6.11.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.11.1.2" style="font-size:90%;">100k ft</span><span class="ltx_text" id="A5.T8.6.11.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.11.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.11.2.1">
<span class="ltx_p" id="A5.T8.6.11.2.1.1"><span class="ltx_text" id="A5.T8.6.11.2.1.1.1" style="font-size:90%;">60.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.11.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.11.3.1">
<span class="ltx_p" id="A5.T8.6.11.3.1.1"><span class="ltx_text" id="A5.T8.6.11.3.1.1.1" style="font-size:90%;">87.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.11.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.11.4.1">
<span class="ltx_p" id="A5.T8.6.11.4.1.1"><span class="ltx_text" id="A5.T8.6.11.4.1.1.1" style="font-size:90%;">57.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.11.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.11.5.1">
<span class="ltx_p" id="A5.T8.6.11.5.1.1"><span class="ltx_text" id="A5.T8.6.11.5.1.1.1" style="font-size:90%;">87.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.11.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.11.6.1">
<span class="ltx_p" id="A5.T8.6.11.6.1.1"><span class="ltx_text" id="A5.T8.6.11.6.1.1.1" style="font-size:90%;">43.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.11.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.11.7.1">
<span class="ltx_p" id="A5.T8.6.11.7.1.1"><span class="ltx_text" id="A5.T8.6.11.7.1.1.1" style="font-size:90%;">84.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.11.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.11.8.1">
<span class="ltx_p" id="A5.T8.6.11.8.1.1"><span class="ltx_text" id="A5.T8.6.11.8.1.1.1" style="font-size:90%;">53.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.11.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.11.9.1">
<span class="ltx_p" id="A5.T8.6.11.9.1.1"><span class="ltx_text" id="A5.T8.6.11.9.1.1.1" style="font-size:90%;">84.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.12">
<td class="ltx_td ltx_align_left" id="A5.T8.6.12.1">
<span class="ltx_text" id="A5.T8.6.12.1.1" style="font-size:90%;">F-1.0B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.12.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T8.6.12.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.12.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.12.2.1">
<span class="ltx_p" id="A5.T8.6.12.2.1.1"><span class="ltx_text" id="A5.T8.6.12.2.1.1.1" style="font-size:90%;">59.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.12.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.12.3.1">
<span class="ltx_p" id="A5.T8.6.12.3.1.1"><span class="ltx_text" id="A5.T8.6.12.3.1.1.1" style="font-size:90%;">87.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.12.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.12.4.1">
<span class="ltx_p" id="A5.T8.6.12.4.1.1"><span class="ltx_text" id="A5.T8.6.12.4.1.1.1" style="font-size:90%;">56.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.12.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.12.5.1">
<span class="ltx_p" id="A5.T8.6.12.5.1.1"><span class="ltx_text" id="A5.T8.6.12.5.1.1.1" style="font-size:90%;">87.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.12.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.12.6.1">
<span class="ltx_p" id="A5.T8.6.12.6.1.1"><span class="ltx_text" id="A5.T8.6.12.6.1.1.1" style="font-size:90%;">42.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.12.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.12.7.1">
<span class="ltx_p" id="A5.T8.6.12.7.1.1"><span class="ltx_text" id="A5.T8.6.12.7.1.1.1" style="font-size:90%;">83.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.12.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.12.8.1">
<span class="ltx_p" id="A5.T8.6.12.8.1.1"><span class="ltx_text" id="A5.T8.6.12.8.1.1.1" style="font-size:90%;">52.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.12.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.12.9.1">
<span class="ltx_p" id="A5.T8.6.12.9.1.1"><span class="ltx_text" id="A5.T8.6.12.9.1.1.1" style="font-size:90%;">84.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.13">
<td class="ltx_td ltx_align_left" id="A5.T8.6.13.1">
<span class="ltx_text" id="A5.T8.6.13.1.1" style="font-size:90%;">F-3.5B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.13.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T8.6.13.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.13.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.13.2.1">
<span class="ltx_p" id="A5.T8.6.13.2.1.1"><span class="ltx_text" id="A5.T8.6.13.2.1.1.1" style="font-size:90%;">59.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.13.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.13.3.1">
<span class="ltx_p" id="A5.T8.6.13.3.1.1"><span class="ltx_text" id="A5.T8.6.13.3.1.1.1" style="font-size:90%;">88.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.13.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.13.4.1">
<span class="ltx_p" id="A5.T8.6.13.4.1.1"><span class="ltx_text" id="A5.T8.6.13.4.1.1.1" style="font-size:90%;">57.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.13.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.13.5.1">
<span class="ltx_p" id="A5.T8.6.13.5.1.1"><span class="ltx_text" id="A5.T8.6.13.5.1.1.1" style="font-size:90%;">88.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.13.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.13.6.1">
<span class="ltx_p" id="A5.T8.6.13.6.1.1"><span class="ltx_text" id="A5.T8.6.13.6.1.1.1" style="font-size:90%;">42.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.13.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.13.7.1">
<span class="ltx_p" id="A5.T8.6.13.7.1.1"><span class="ltx_text" id="A5.T8.6.13.7.1.1.1" style="font-size:90%;">84.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.13.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.13.8.1">
<span class="ltx_p" id="A5.T8.6.13.8.1.1"><span class="ltx_text" id="A5.T8.6.13.8.1.1.1" style="font-size:90%;">53.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.13.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.13.9.1">
<span class="ltx_p" id="A5.T8.6.13.9.1.1"><span class="ltx_text" id="A5.T8.6.13.9.1.1.1" style="font-size:90%;">85.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.14">
<td class="ltx_td ltx_align_left" id="A5.T8.6.14.1">
<span class="ltx_text" id="A5.T8.6.14.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.14.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T8.6.14.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.14.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.14.2.1">
<span class="ltx_p" id="A5.T8.6.14.2.1.1"><span class="ltx_text" id="A5.T8.6.14.2.1.1.1" style="font-size:90%;">63.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.14.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.14.3.1">
<span class="ltx_p" id="A5.T8.6.14.3.1.1"><span class="ltx_text" id="A5.T8.6.14.3.1.1.1" style="font-size:90%;">89.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.14.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.14.4.1">
<span class="ltx_p" id="A5.T8.6.14.4.1.1"><span class="ltx_text" id="A5.T8.6.14.4.1.1.1" style="font-size:90%;">60.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.14.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.14.5.1">
<span class="ltx_p" id="A5.T8.6.14.5.1.1"><span class="ltx_text" id="A5.T8.6.14.5.1.1.1" style="font-size:90%;">89.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.14.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.14.6.1">
<span class="ltx_p" id="A5.T8.6.14.6.1.1"><span class="ltx_text" id="A5.T8.6.14.6.1.1.1" style="font-size:90%;">43.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.14.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.14.7.1">
<span class="ltx_p" id="A5.T8.6.14.7.1.1"><span class="ltx_text" id="A5.T8.6.14.7.1.1.1" style="font-size:90%;">84.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.14.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.14.8.1">
<span class="ltx_p" id="A5.T8.6.14.8.1.1"><span class="ltx_text" id="A5.T8.6.14.8.1.1.1" style="font-size:90%;">53.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.14.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.14.9.1">
<span class="ltx_p" id="A5.T8.6.14.9.1.1"><span class="ltx_text" id="A5.T8.6.14.9.1.1.1" style="font-size:90%;">85.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.15">
<td class="ltx_td" id="A5.T8.6.15.1"></td>
<td class="ltx_td ltx_align_left" id="A5.T8.6.15.2">
<span class="ltx_text" id="A5.T8.6.15.2.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.15.2.2" style="font-size:90%;">30K ft</span><span class="ltx_text" id="A5.T8.6.15.2.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.15.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.15.3.1">
<span class="ltx_p" id="A5.T8.6.15.3.1.1"><span class="ltx_text" id="A5.T8.6.15.3.1.1.1" style="font-size:90%;">64.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.15.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.15.4.1">
<span class="ltx_p" id="A5.T8.6.15.4.1.1"><span class="ltx_text" id="A5.T8.6.15.4.1.1.1" style="font-size:90%;">89.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.15.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.15.5.1">
<span class="ltx_p" id="A5.T8.6.15.5.1.1"><span class="ltx_text" id="A5.T8.6.15.5.1.1.1" style="font-size:90%;">60.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.15.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.15.6.1">
<span class="ltx_p" id="A5.T8.6.15.6.1.1"><span class="ltx_text" id="A5.T8.6.15.6.1.1.1" style="font-size:90%;">89.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.15.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.15.7.1">
<span class="ltx_p" id="A5.T8.6.15.7.1.1"><span class="ltx_text" id="A5.T8.6.15.7.1.1.1" style="font-size:90%;">44.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.15.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.15.8.1">
<span class="ltx_p" id="A5.T8.6.15.8.1.1"><span class="ltx_text" id="A5.T8.6.15.8.1.1.1" style="font-size:90%;">85.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.15.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.15.9.1">
<span class="ltx_p" id="A5.T8.6.15.9.1.1"><span class="ltx_text" id="A5.T8.6.15.9.1.1.1" style="font-size:90%;">53.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.15.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.15.10.1">
<span class="ltx_p" id="A5.T8.6.15.10.1.1"><span class="ltx_text" id="A5.T8.6.15.10.1.1.1" style="font-size:90%;">86.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.16">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.6.16.1" rowspan="3"><span class="ltx_text" id="A5.T8.6.16.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T8.6.16.1.1.1" style="width:5.5pt;height:15.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:15.8pt;transform:translate(-5.11pt,-5.11pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T8.6.16.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A5.T8.6.16.1.1.1.1.1">text</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.16.2">
<span class="ltx_text" id="A5.T8.6.16.2.1" style="font-size:90%;">NLLB-600M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.16.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T8.6.16.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.16.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.16.3.1">
<span class="ltx_p" id="A5.T8.6.16.3.1.1"><span class="ltx_text" id="A5.T8.6.16.3.1.1.1" style="font-size:90%;">48.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.16.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.16.4.1">
<span class="ltx_p" id="A5.T8.6.16.4.1.1"><span class="ltx_text" id="A5.T8.6.16.4.1.1.1" style="font-size:90%;">85.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.16.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.16.5.1">
<span class="ltx_p" id="A5.T8.6.16.5.1.1"><span class="ltx_text" id="A5.T8.6.16.5.1.1.1" style="font-size:90%;">48.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.16.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.16.6.1">
<span class="ltx_p" id="A5.T8.6.16.6.1.1"><span class="ltx_text" id="A5.T8.6.16.6.1.1.1" style="font-size:90%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.16.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.16.7.1">
<span class="ltx_p" id="A5.T8.6.16.7.1.1"><span class="ltx_text" id="A5.T8.6.16.7.1.1.1" style="font-size:90%;">40.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.16.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.16.8.1">
<span class="ltx_p" id="A5.T8.6.16.8.1.1"><span class="ltx_text" id="A5.T8.6.16.8.1.1.1" style="font-size:90%;">83.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.16.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.16.9.1">
<span class="ltx_p" id="A5.T8.6.16.9.1.1"><span class="ltx_text" id="A5.T8.6.16.9.1.1.1" style="font-size:90%;">50.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.16.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.16.10.1">
<span class="ltx_p" id="A5.T8.6.16.10.1.1"><span class="ltx_text" id="A5.T8.6.16.10.1.1.1" style="font-size:90%;">84.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.17">
<td class="ltx_td ltx_align_left" id="A5.T8.6.17.1">
<span class="ltx_text" id="A5.T8.6.17.1.1" style="font-size:90%;">NLLB-1.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T8.6.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.17.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.17.2.1">
<span class="ltx_p" id="A5.T8.6.17.2.1.1"><span class="ltx_text" id="A5.T8.6.17.2.1.1.1" style="font-size:90%;">51.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.17.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.17.3.1">
<span class="ltx_p" id="A5.T8.6.17.3.1.1"><span class="ltx_text" id="A5.T8.6.17.3.1.1.1" style="font-size:90%;">86.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.17.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.17.4.1">
<span class="ltx_p" id="A5.T8.6.17.4.1.1"><span class="ltx_text" id="A5.T8.6.17.4.1.1.1" style="font-size:90%;">50.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.17.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.17.5.1">
<span class="ltx_p" id="A5.T8.6.17.5.1.1"><span class="ltx_text" id="A5.T8.6.17.5.1.1.1" style="font-size:90%;">86.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.17.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.17.6.1">
<span class="ltx_p" id="A5.T8.6.17.6.1.1"><span class="ltx_text" id="A5.T8.6.17.6.1.1.1" style="font-size:90%;">43.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.17.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.17.7.1">
<span class="ltx_p" id="A5.T8.6.17.7.1.1"><span class="ltx_text" id="A5.T8.6.17.7.1.1.1" style="font-size:90%;">84.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.17.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.17.8.1">
<span class="ltx_p" id="A5.T8.6.17.8.1.1"><span class="ltx_text" id="A5.T8.6.17.8.1.1.1" style="font-size:90%;">52.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.17.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.17.9.1">
<span class="ltx_p" id="A5.T8.6.17.9.1.1"><span class="ltx_text" id="A5.T8.6.17.9.1.1.1" style="font-size:90%;">85.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.18">
<td class="ltx_td ltx_align_left" id="A5.T8.6.18.1">
<span class="ltx_text" id="A5.T8.6.18.1.1" style="font-size:90%;">NLLB-3.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.18.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T8.6.18.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.18.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.18.2.1">
<span class="ltx_p" id="A5.T8.6.18.2.1.1"><span class="ltx_text" id="A5.T8.6.18.2.1.1.1" style="font-size:90%;">54.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.18.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.18.3.1">
<span class="ltx_p" id="A5.T8.6.18.3.1.1"><span class="ltx_text" id="A5.T8.6.18.3.1.1.1" style="font-size:90%;">87.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.18.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.18.4.1">
<span class="ltx_p" id="A5.T8.6.18.4.1.1"><span class="ltx_text" id="A5.T8.6.18.4.1.1.1" style="font-size:90%;">52.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.18.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.18.5.1">
<span class="ltx_p" id="A5.T8.6.18.5.1.1"><span class="ltx_text" id="A5.T8.6.18.5.1.1.1" style="font-size:90%;">87.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.18.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.18.6.1">
<span class="ltx_p" id="A5.T8.6.18.6.1.1"><span class="ltx_text" id="A5.T8.6.18.6.1.1.1" style="font-size:90%;">45.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.18.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.18.7.1">
<span class="ltx_p" id="A5.T8.6.18.7.1.1"><span class="ltx_text" id="A5.T8.6.18.7.1.1.1" style="font-size:90%;">84.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.18.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.18.8.1">
<span class="ltx_p" id="A5.T8.6.18.8.1.1"><span class="ltx_text" id="A5.T8.6.18.8.1.1.1" style="font-size:90%;">54.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.18.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.18.9.1">
<span class="ltx_p" id="A5.T8.6.18.9.1.1"><span class="ltx_text" id="A5.T8.6.18.9.1.1.1" style="font-size:90%;">85.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.19">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.6.19.1" rowspan="10"><span class="ltx_text" id="A5.T8.6.19.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T8.6.19.1.1.1" style="width:6.3pt;height:35.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.66pt,-14.66pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T8.6.19.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A5.T8.6.19.1.1.1.1.1">zero-shot</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.19.2">
<span class="ltx_text" id="A5.T8.6.19.2.1" style="font-size:90%;">MOF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.19.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib26" title="">26</a><span class="ltx_text" id="A5.T8.6.19.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.19.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.19.3.1">
<span class="ltx_p" id="A5.T8.6.19.3.1.1"><span class="ltx_text" id="A5.T8.6.19.3.1.1.1" style="font-size:90%;">36.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.19.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.19.4.1">
<span class="ltx_p" id="A5.T8.6.19.4.1.1"><span class="ltx_text" id="A5.T8.6.19.4.1.1.1" style="font-size:90%;">83.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.19.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.19.5.1">
<span class="ltx_p" id="A5.T8.6.19.5.1.1"><span class="ltx_text" id="A5.T8.6.19.5.1.1.1" style="font-size:90%;">35.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.19.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.19.6.1">
<span class="ltx_p" id="A5.T8.6.19.6.1.1"><span class="ltx_text" id="A5.T8.6.19.6.1.1.1" style="font-size:90%;">83.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.19.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.19.8"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.19.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.19.9.1">
<span class="ltx_p" id="A5.T8.6.19.9.1.1"><span class="ltx_text" id="A5.T8.6.19.9.1.1.1" style="font-size:90%;">34.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.19.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.19.10.1">
<span class="ltx_p" id="A5.T8.6.19.10.1.1"><span class="ltx_text" id="A5.T8.6.19.10.1.1.1" style="font-size:90%;">80.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.20">
<td class="ltx_td ltx_align_left" id="A5.T8.6.20.1">
<span class="ltx_text" id="A5.T8.6.20.1.1" style="font-size:90%;">ZeroMMT-600M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib25" title="">25</a><span class="ltx_text" id="A5.T8.6.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.20.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.20.2.1">
<span class="ltx_p" id="A5.T8.6.20.2.1.1"><span class="ltx_text" id="A5.T8.6.20.2.1.1.1" style="font-size:90%;">48.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.20.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.20.3.1">
<span class="ltx_p" id="A5.T8.6.20.3.1.1"><span class="ltx_text" id="A5.T8.6.20.3.1.1.1" style="font-size:90%;">84.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.20.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.20.4.1">
<span class="ltx_p" id="A5.T8.6.20.4.1.1"><span class="ltx_text" id="A5.T8.6.20.4.1.1.1" style="font-size:90%;">48.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.20.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.20.5.1">
<span class="ltx_p" id="A5.T8.6.20.5.1.1"><span class="ltx_text" id="A5.T8.6.20.5.1.1.1" style="font-size:90%;">85.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.20.6"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.20.7"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.20.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.20.8.1">
<span class="ltx_p" id="A5.T8.6.20.8.1.1"><span class="ltx_text" id="A5.T8.6.20.8.1.1.1" style="font-size:90%;">50.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.20.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.20.9.1">
<span class="ltx_p" id="A5.T8.6.20.9.1.1"><span class="ltx_text" id="A5.T8.6.20.9.1.1.1" style="font-size:90%;">83.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.21">
<td class="ltx_td ltx_align_left" id="A5.T8.6.21.1">
<span class="ltx_text" id="A5.T8.6.21.1.1" style="font-size:90%;">ZeroMMT-1.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.21.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib25" title="">25</a><span class="ltx_text" id="A5.T8.6.21.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.21.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.21.2.1">
<span class="ltx_p" id="A5.T8.6.21.2.1.1"><span class="ltx_text" id="A5.T8.6.21.2.1.1.1" style="font-size:90%;">51.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.21.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.21.3.1">
<span class="ltx_p" id="A5.T8.6.21.3.1.1"><span class="ltx_text" id="A5.T8.6.21.3.1.1.1" style="font-size:90%;">86.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.21.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.21.4.1">
<span class="ltx_p" id="A5.T8.6.21.4.1.1"><span class="ltx_text" id="A5.T8.6.21.4.1.1.1" style="font-size:90%;">51.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.21.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.21.5.1">
<span class="ltx_p" id="A5.T8.6.21.5.1.1"><span class="ltx_text" id="A5.T8.6.21.5.1.1.1" style="font-size:90%;">87.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.21.6"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.21.7"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.21.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.21.8.1">
<span class="ltx_p" id="A5.T8.6.21.8.1.1"><span class="ltx_text" id="A5.T8.6.21.8.1.1.1" style="font-size:90%;">53.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.21.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.21.9.1">
<span class="ltx_p" id="A5.T8.6.21.9.1.1"><span class="ltx_text" id="A5.T8.6.21.9.1.1.1" style="font-size:90%;">85.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.22">
<td class="ltx_td ltx_align_left" id="A5.T8.6.22.1">
<span class="ltx_text" id="A5.T8.6.22.1.1" style="font-size:90%;">ZeroMMT-3.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.22.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib25" title="">25</a><span class="ltx_text" id="A5.T8.6.22.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.22.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.22.2.1">
<span class="ltx_p" id="A5.T8.6.22.2.1.1"><span class="ltx_text" id="A5.T8.6.22.2.1.1.1" style="font-size:90%;">52.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.22.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.22.3.1">
<span class="ltx_p" id="A5.T8.6.22.3.1.1"><span class="ltx_text" id="A5.T8.6.22.3.1.1.1" style="font-size:90%;">87.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.22.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.22.4.1">
<span class="ltx_p" id="A5.T8.6.22.4.1.1"><span class="ltx_text" id="A5.T8.6.22.4.1.1.1" style="font-size:90%;">53.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.22.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.22.5.1">
<span class="ltx_p" id="A5.T8.6.22.5.1.1"><span class="ltx_text" id="A5.T8.6.22.5.1.1.1" style="font-size:90%;">87.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.22.6"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.22.7"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.22.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.22.8.1">
<span class="ltx_p" id="A5.T8.6.22.8.1.1"><span class="ltx_text" id="A5.T8.6.22.8.1.1.1" style="font-size:90%;">53.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.22.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.22.9.1">
<span class="ltx_p" id="A5.T8.6.22.9.1.1"><span class="ltx_text" id="A5.T8.6.22.9.1.1.1" style="font-size:90%;">85.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.23.1"><span class="ltx_text" id="A5.T8.6.23.1.1" style="font-size:90%;">F-0.4B (ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.23.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.23.2.1">
<span class="ltx_p" id="A5.T8.6.23.2.1.1"><span class="ltx_text" id="A5.T8.6.23.2.1.1.1" style="font-size:90%;">42.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.23.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.23.3.1">
<span class="ltx_p" id="A5.T8.6.23.3.1.1"><span class="ltx_text" id="A5.T8.6.23.3.1.1.1" style="font-size:90%;">81.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.23.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.23.4.1">
<span class="ltx_p" id="A5.T8.6.23.4.1.1"><span class="ltx_text" id="A5.T8.6.23.4.1.1.1" style="font-size:90%;">43.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.23.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.23.5.1">
<span class="ltx_p" id="A5.T8.6.23.5.1.1"><span class="ltx_text" id="A5.T8.6.23.5.1.1.1" style="font-size:90%;">82.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.23.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.23.6.1">
<span class="ltx_p" id="A5.T8.6.23.6.1.1"><span class="ltx_text" id="A5.T8.6.23.6.1.1.1" style="font-size:90%;">36.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.23.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.23.7.1">
<span class="ltx_p" id="A5.T8.6.23.7.1.1"><span class="ltx_text" id="A5.T8.6.23.7.1.1.1" style="font-size:90%;">79.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.23.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.23.8.1">
<span class="ltx_p" id="A5.T8.6.23.8.1.1"><span class="ltx_text" id="A5.T8.6.23.8.1.1.1" style="font-size:90%;">47.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.23.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.23.9.1">
<span class="ltx_p" id="A5.T8.6.23.9.1.1"><span class="ltx_text" id="A5.T8.6.23.9.1.1.1" style="font-size:90%;">80.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.24">
<td class="ltx_td ltx_align_left" id="A5.T8.6.24.1">
<span class="ltx_text" id="A5.T8.6.24.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.24.1.2" style="font-size:90%;">100K</span><span class="ltx_text" id="A5.T8.6.24.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.24.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.24.2.1">
<span class="ltx_p" id="A5.T8.6.24.2.1.1"><span class="ltx_text" id="A5.T8.6.24.2.1.1.1" style="font-size:90%;">49.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.24.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.24.3.1">
<span class="ltx_p" id="A5.T8.6.24.3.1.1"><span class="ltx_text" id="A5.T8.6.24.3.1.1.1" style="font-size:90%;">85.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.24.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.24.4.1">
<span class="ltx_p" id="A5.T8.6.24.4.1.1"><span class="ltx_text" id="A5.T8.6.24.4.1.1.1" style="font-size:90%;">50.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.24.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.24.5.1">
<span class="ltx_p" id="A5.T8.6.24.5.1.1"><span class="ltx_text" id="A5.T8.6.24.5.1.1.1" style="font-size:90%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.24.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.24.6.1">
<span class="ltx_p" id="A5.T8.6.24.6.1.1"><span class="ltx_text" id="A5.T8.6.24.6.1.1.1" style="font-size:90%;">42.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.24.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.24.7.1">
<span class="ltx_p" id="A5.T8.6.24.7.1.1"><span class="ltx_text" id="A5.T8.6.24.7.1.1.1" style="font-size:90%;">83.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.24.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.24.8.1">
<span class="ltx_p" id="A5.T8.6.24.8.1.1"><span class="ltx_text" id="A5.T8.6.24.8.1.1.1" style="font-size:90%;">53.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.24.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.24.9.1">
<span class="ltx_p" id="A5.T8.6.24.9.1.1"><span class="ltx_text" id="A5.T8.6.24.9.1.1.1" style="font-size:90%;">83.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.25">
<td class="ltx_td ltx_align_left" id="A5.T8.6.25.1"><span class="ltx_text" id="A5.T8.6.25.1.1" style="font-size:90%;">F-1.0B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.25.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.25.2.1">
<span class="ltx_p" id="A5.T8.6.25.2.1.1"><span class="ltx_text" id="A5.T8.6.25.2.1.1.1" style="font-size:90%;">45.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.25.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.25.3.1">
<span class="ltx_p" id="A5.T8.6.25.3.1.1"><span class="ltx_text" id="A5.T8.6.25.3.1.1.1" style="font-size:90%;">83.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.25.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.25.4.1">
<span class="ltx_p" id="A5.T8.6.25.4.1.1"><span class="ltx_text" id="A5.T8.6.25.4.1.1.1" style="font-size:90%;">46.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.25.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.25.5.1">
<span class="ltx_p" id="A5.T8.6.25.5.1.1"><span class="ltx_text" id="A5.T8.6.25.5.1.1.1" style="font-size:90%;">84.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.25.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.25.6.1">
<span class="ltx_p" id="A5.T8.6.25.6.1.1"><span class="ltx_text" id="A5.T8.6.25.6.1.1.1" style="font-size:90%;">39.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.25.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.25.7.1">
<span class="ltx_p" id="A5.T8.6.25.7.1.1"><span class="ltx_text" id="A5.T8.6.25.7.1.1.1" style="font-size:90%;">82.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.25.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.25.8.1">
<span class="ltx_p" id="A5.T8.6.25.8.1.1"><span class="ltx_text" id="A5.T8.6.25.8.1.1.1" style="font-size:90%;">50.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.25.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.25.9.1">
<span class="ltx_p" id="A5.T8.6.25.9.1.1"><span class="ltx_text" id="A5.T8.6.25.9.1.1.1" style="font-size:90%;">82.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.26">
<td class="ltx_td ltx_align_left" id="A5.T8.6.26.1"><span class="ltx_text" id="A5.T8.6.26.1.1" style="font-size:90%;">F-3.5B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.26.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.26.2.1">
<span class="ltx_p" id="A5.T8.6.26.2.1.1"><span class="ltx_text" id="A5.T8.6.26.2.1.1.1" style="font-size:90%;">46.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.26.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.26.3.1">
<span class="ltx_p" id="A5.T8.6.26.3.1.1"><span class="ltx_text" id="A5.T8.6.26.3.1.1.1" style="font-size:90%;">85.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.26.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.26.4.1">
<span class="ltx_p" id="A5.T8.6.26.4.1.1"><span class="ltx_text" id="A5.T8.6.26.4.1.1.1" style="font-size:90%;">48.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.26.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.26.5.1">
<span class="ltx_p" id="A5.T8.6.26.5.1.1"><span class="ltx_text" id="A5.T8.6.26.5.1.1.1" style="font-size:90%;">85.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.26.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.26.6.1">
<span class="ltx_p" id="A5.T8.6.26.6.1.1"><span class="ltx_text" id="A5.T8.6.26.6.1.1.1" style="font-size:90%;">40.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.26.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.26.7.1">
<span class="ltx_p" id="A5.T8.6.26.7.1.1"><span class="ltx_text" id="A5.T8.6.26.7.1.1.1" style="font-size:90%;">83.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.26.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.26.8.1">
<span class="ltx_p" id="A5.T8.6.26.8.1.1"><span class="ltx_text" id="A5.T8.6.26.8.1.1.1" style="font-size:90%;">50.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.26.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.26.9.1">
<span class="ltx_p" id="A5.T8.6.26.9.1.1"><span class="ltx_text" id="A5.T8.6.26.9.1.1.1" style="font-size:90%;">83.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.27">
<td class="ltx_td ltx_align_left" id="A5.T8.6.27.1"><span class="ltx_text" id="A5.T8.6.27.1.1" style="font-size:90%;">F-11.2B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.27.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.27.2.1">
<span class="ltx_p" id="A5.T8.6.27.2.1.1"><span class="ltx_text" id="A5.T8.6.27.2.1.1.1" style="font-size:90%;">50.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.27.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.27.3.1">
<span class="ltx_p" id="A5.T8.6.27.3.1.1"><span class="ltx_text" id="A5.T8.6.27.3.1.1.1" style="font-size:90%;">86.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.27.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.27.4.1">
<span class="ltx_p" id="A5.T8.6.27.4.1.1"><span class="ltx_text" id="A5.T8.6.27.4.1.1.1" style="font-size:90%;">50.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.27.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.27.5.1">
<span class="ltx_p" id="A5.T8.6.27.5.1.1"><span class="ltx_text" id="A5.T8.6.27.5.1.1.1" style="font-size:90%;">86.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.27.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.27.6.1">
<span class="ltx_p" id="A5.T8.6.27.6.1.1"><span class="ltx_text" id="A5.T8.6.27.6.1.1.1" style="font-size:90%;">42.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.27.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.27.7.1">
<span class="ltx_p" id="A5.T8.6.27.7.1.1"><span class="ltx_text" id="A5.T8.6.27.7.1.1.1" style="font-size:90%;">83.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.27.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.27.8.1">
<span class="ltx_p" id="A5.T8.6.27.8.1.1"><span class="ltx_text" id="A5.T8.6.27.8.1.1.1" style="font-size:90%;">52.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.27.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.27.9.1">
<span class="ltx_p" id="A5.T8.6.27.9.1.1"><span class="ltx_text" id="A5.T8.6.27.9.1.1.1" style="font-size:90%;">84.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.28">
<td class="ltx_td ltx_align_left" id="A5.T8.6.28.1">
<span class="ltx_text" id="A5.T8.6.28.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.28.1.2" style="font-size:90%;">30K</span><span class="ltx_text" id="A5.T8.6.28.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.28.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.28.2.1">
<span class="ltx_p" id="A5.T8.6.28.2.1.1"><span class="ltx_text" id="A5.T8.6.28.2.1.1.1" style="font-size:90%;">51.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.28.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.28.3.1">
<span class="ltx_p" id="A5.T8.6.28.3.1.1"><span class="ltx_text" id="A5.T8.6.28.3.1.1.1" style="font-size:90%;">86.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.28.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.28.4.1">
<span class="ltx_p" id="A5.T8.6.28.4.1.1"><span class="ltx_text" id="A5.T8.6.28.4.1.1.1" style="font-size:90%;">51.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.28.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.28.5.1">
<span class="ltx_p" id="A5.T8.6.28.5.1.1"><span class="ltx_text" id="A5.T8.6.28.5.1.1.1" style="font-size:90%;">87.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.28.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.28.6.1">
<span class="ltx_p" id="A5.T8.6.28.6.1.1"><span class="ltx_text" id="A5.T8.6.28.6.1.1.1" style="font-size:90%;">43.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.28.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.28.7.1">
<span class="ltx_p" id="A5.T8.6.28.7.1.1"><span class="ltx_text" id="A5.T8.6.28.7.1.1.1" style="font-size:90%;">83.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.28.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.28.8.1">
<span class="ltx_p" id="A5.T8.6.28.8.1.1"><span class="ltx_text" id="A5.T8.6.28.8.1.1.1" style="font-size:90%;">54.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.28.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.28.9.1">
<span class="ltx_p" id="A5.T8.6.28.9.1.1"><span class="ltx_text" id="A5.T8.6.28.9.1.1.1" style="font-size:90%;">84.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="A5.T8.6.6.1"><span class="ltx_text ltx_font_bold" id="A5.T8.6.6.1.1" style="font-size:90%;">Multi30K Translation En<math alttext="\rightarrow" class="ltx_Math" display="inline" id="A5.T8.6.6.1.1.m1.1"><semantics id="A5.T8.6.6.1.1.m1.1a"><mo id="A5.T8.6.6.1.1.m1.1.1" stretchy="false" xref="A5.T8.6.6.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A5.T8.6.6.1.1.m1.1b"><ci id="A5.T8.6.6.1.1.m1.1.1.cmml" xref="A5.T8.6.6.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T8.6.6.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T8.6.6.1.1.m1.1d">→</annotation></semantics></math>De</span></td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.29">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.6.29.1" rowspan="7"><span class="ltx_text" id="A5.T8.6.29.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T8.6.29.1.1.1" style="width:8.0pt;height:41.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:41.1pt;transform:translate(-16.56pt,-15.69pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T8.6.29.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A5.T8.6.29.1.1.1.1.1">supervised</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.29.2">
<span class="ltx_text" id="A5.T8.6.29.2.1" style="font-size:90%;">VGAMT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.29.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib24" title="">24</a><span class="ltx_text" id="A5.T8.6.29.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.29.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.29.3.1">
<span class="ltx_p" id="A5.T8.6.29.3.1.1"><span class="ltx_text" id="A5.T8.6.29.3.1.1.1" style="font-size:90%;">41.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.29.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.29.4.1">
<span class="ltx_p" id="A5.T8.6.29.4.1.1"><span class="ltx_text" id="A5.T8.6.29.4.1.1.1" style="font-size:90%;">85.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.29.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.29.5.1">
<span class="ltx_p" id="A5.T8.6.29.5.1.1"><span class="ltx_text" id="A5.T8.6.29.5.1.1.1" style="font-size:90%;">36.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.29.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.29.6.1">
<span class="ltx_p" id="A5.T8.6.29.6.1.1"><span class="ltx_text" id="A5.T8.6.29.6.1.1.1" style="font-size:90%;">84.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.29.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.29.8"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.29.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.29.9.1">
<span class="ltx_p" id="A5.T8.6.29.9.1.1"><span class="ltx_text" id="A5.T8.6.29.9.1.1.1" style="font-size:90%;">33.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.29.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.29.10.1">
<span class="ltx_p" id="A5.T8.6.29.10.1.1"><span class="ltx_text" id="A5.T8.6.29.10.1.1.1" style="font-size:90%;">81.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.30">
<td class="ltx_td ltx_align_left" id="A5.T8.6.30.1">
<span class="ltx_text" id="A5.T8.6.30.1.1" style="font-size:90%;">Baseline-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.30.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T8.6.30.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.30.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.30.2.1">
<span class="ltx_p" id="A5.T8.6.30.2.1.1"><span class="ltx_text" id="A5.T8.6.30.2.1.1.1" style="font-size:90%;">39.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.30.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.30.3.1">
<span class="ltx_p" id="A5.T8.6.30.3.1.1"><span class="ltx_text" id="A5.T8.6.30.3.1.1.1" style="font-size:90%;">86.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.30.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.30.4.1">
<span class="ltx_p" id="A5.T8.6.30.4.1.1"><span class="ltx_text" id="A5.T8.6.30.4.1.1.1" style="font-size:90%;">38.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.30.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.30.5.1">
<span class="ltx_p" id="A5.T8.6.30.5.1.1"><span class="ltx_text" id="A5.T8.6.30.5.1.1.1" style="font-size:90%;">85.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.30.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.30.6.1">
<span class="ltx_p" id="A5.T8.6.30.6.1.1"><span class="ltx_text" id="A5.T8.6.30.6.1.1.1" style="font-size:90%;">35.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.30.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.30.7.1">
<span class="ltx_p" id="A5.T8.6.30.7.1.1"><span class="ltx_text" id="A5.T8.6.30.7.1.1.1" style="font-size:90%;">84.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.30.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.30.8.1">
<span class="ltx_p" id="A5.T8.6.30.8.1.1"><span class="ltx_text" id="A5.T8.6.30.8.1.1.1" style="font-size:90%;">33.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.30.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.30.9.1">
<span class="ltx_p" id="A5.T8.6.30.9.1.1"><span class="ltx_text" id="A5.T8.6.30.9.1.1.1" style="font-size:90%;">82.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.31">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.31.1">
<span class="ltx_text" id="A5.T8.6.31.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.31.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T8.6.31.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.31.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.31.2.1">
<span class="ltx_p" id="A5.T8.6.31.2.1.1"><span class="ltx_text" id="A5.T8.6.31.2.1.1.1" style="font-size:90%;">42.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.31.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.31.3.1">
<span class="ltx_p" id="A5.T8.6.31.3.1.1"><span class="ltx_text" id="A5.T8.6.31.3.1.1.1" style="font-size:90%;">84.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.31.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.31.4.1">
<span class="ltx_p" id="A5.T8.6.31.4.1.1"><span class="ltx_text" id="A5.T8.6.31.4.1.1.1" style="font-size:90%;">37.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.31.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.31.5.1">
<span class="ltx_p" id="A5.T8.6.31.5.1.1"><span class="ltx_text" id="A5.T8.6.31.5.1.1.1" style="font-size:90%;">84.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.31.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.31.6.1">
<span class="ltx_p" id="A5.T8.6.31.6.1.1"><span class="ltx_text" id="A5.T8.6.31.6.1.1.1" style="font-size:90%;">34.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.31.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.31.7.1">
<span class="ltx_p" id="A5.T8.6.31.7.1.1"><span class="ltx_text" id="A5.T8.6.31.7.1.1.1" style="font-size:90%;">82.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.31.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.31.8.1">
<span class="ltx_p" id="A5.T8.6.31.8.1.1"><span class="ltx_text" id="A5.T8.6.31.8.1.1.1" style="font-size:90%;">32.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.31.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.31.9.1">
<span class="ltx_p" id="A5.T8.6.31.9.1.1"><span class="ltx_text" id="A5.T8.6.31.9.1.1.1" style="font-size:90%;">79.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.32">
<td class="ltx_td ltx_align_left" id="A5.T8.6.32.1">
<span class="ltx_text" id="A5.T8.6.32.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.32.1.2" style="font-size:90%;">100K ft</span><span class="ltx_text" id="A5.T8.6.32.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.32.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.32.2.1">
<span class="ltx_p" id="A5.T8.6.32.2.1.1"><span class="ltx_text" id="A5.T8.6.32.2.1.1.1" style="font-size:90%;">44.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.32.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.32.3.1">
<span class="ltx_p" id="A5.T8.6.32.3.1.1"><span class="ltx_text" id="A5.T8.6.32.3.1.1.1" style="font-size:90%;">86.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.32.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.32.4.1">
<span class="ltx_p" id="A5.T8.6.32.4.1.1"><span class="ltx_text" id="A5.T8.6.32.4.1.1.1" style="font-size:90%;">40.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.32.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.32.5.1">
<span class="ltx_p" id="A5.T8.6.32.5.1.1"><span class="ltx_text" id="A5.T8.6.32.5.1.1.1" style="font-size:90%;">86.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.32.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.32.6.1">
<span class="ltx_p" id="A5.T8.6.32.6.1.1"><span class="ltx_text" id="A5.T8.6.32.6.1.1.1" style="font-size:90%;">36.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.32.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.32.7.1">
<span class="ltx_p" id="A5.T8.6.32.7.1.1"><span class="ltx_text" id="A5.T8.6.32.7.1.1.1" style="font-size:90%;">84.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.32.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.32.8.1">
<span class="ltx_p" id="A5.T8.6.32.8.1.1"><span class="ltx_text" id="A5.T8.6.32.8.1.1.1" style="font-size:90%;">34.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.32.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.32.9.1">
<span class="ltx_p" id="A5.T8.6.32.9.1.1"><span class="ltx_text" id="A5.T8.6.32.9.1.1.1" style="font-size:90%;">82.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.33">
<td class="ltx_td ltx_align_left" id="A5.T8.6.33.1">
<span class="ltx_text" id="A5.T8.6.33.1.1" style="font-size:90%;">F-1.0B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.33.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T8.6.33.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.33.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.33.2.1">
<span class="ltx_p" id="A5.T8.6.33.2.1.1"><span class="ltx_text" id="A5.T8.6.33.2.1.1.1" style="font-size:90%;">43.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.33.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.33.3.1">
<span class="ltx_p" id="A5.T8.6.33.3.1.1"><span class="ltx_text" id="A5.T8.6.33.3.1.1.1" style="font-size:90%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.33.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.33.4.1">
<span class="ltx_p" id="A5.T8.6.33.4.1.1"><span class="ltx_text" id="A5.T8.6.33.4.1.1.1" style="font-size:90%;">38.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.33.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.33.5.1">
<span class="ltx_p" id="A5.T8.6.33.5.1.1"><span class="ltx_text" id="A5.T8.6.33.5.1.1.1" style="font-size:90%;">85.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.33.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.33.6.1">
<span class="ltx_p" id="A5.T8.6.33.6.1.1"><span class="ltx_text" id="A5.T8.6.33.6.1.1.1" style="font-size:90%;">35.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.33.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.33.7.1">
<span class="ltx_p" id="A5.T8.6.33.7.1.1"><span class="ltx_text" id="A5.T8.6.33.7.1.1.1" style="font-size:90%;">83.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.33.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.33.8.1">
<span class="ltx_p" id="A5.T8.6.33.8.1.1"><span class="ltx_text" id="A5.T8.6.33.8.1.1.1" style="font-size:90%;">33.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.33.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.33.9.1">
<span class="ltx_p" id="A5.T8.6.33.9.1.1"><span class="ltx_text" id="A5.T8.6.33.9.1.1.1" style="font-size:90%;">80.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.34">
<td class="ltx_td ltx_align_left" id="A5.T8.6.34.1">
<span class="ltx_text" id="A5.T8.6.34.1.1" style="font-size:90%;">F-3.5B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.34.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T8.6.34.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.34.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.34.2.1">
<span class="ltx_p" id="A5.T8.6.34.2.1.1"><span class="ltx_text" id="A5.T8.6.34.2.1.1.1" style="font-size:90%;">43.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.34.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.34.3.1">
<span class="ltx_p" id="A5.T8.6.34.3.1.1"><span class="ltx_text" id="A5.T8.6.34.3.1.1.1" style="font-size:90%;">86.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.34.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.34.4.1">
<span class="ltx_p" id="A5.T8.6.34.4.1.1"><span class="ltx_text" id="A5.T8.6.34.4.1.1.1" style="font-size:90%;">39.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.34.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.34.5.1">
<span class="ltx_p" id="A5.T8.6.34.5.1.1"><span class="ltx_text" id="A5.T8.6.34.5.1.1.1" style="font-size:90%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.34.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.34.6.1">
<span class="ltx_p" id="A5.T8.6.34.6.1.1"><span class="ltx_text" id="A5.T8.6.34.6.1.1.1" style="font-size:90%;">36.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.34.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.34.7.1">
<span class="ltx_p" id="A5.T8.6.34.7.1.1"><span class="ltx_text" id="A5.T8.6.34.7.1.1.1" style="font-size:90%;">84.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.34.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.34.8.1">
<span class="ltx_p" id="A5.T8.6.34.8.1.1"><span class="ltx_text" id="A5.T8.6.34.8.1.1.1" style="font-size:90%;">34.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.34.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.34.9.1">
<span class="ltx_p" id="A5.T8.6.34.9.1.1"><span class="ltx_text" id="A5.T8.6.34.9.1.1.1" style="font-size:90%;">82.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.35">
<td class="ltx_td ltx_align_left" id="A5.T8.6.35.1">
<span class="ltx_text" id="A5.T8.6.35.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.35.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T8.6.35.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.35.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.35.2.1">
<span class="ltx_p" id="A5.T8.6.35.2.1.1"><span class="ltx_text" id="A5.T8.6.35.2.1.1.1" style="font-size:90%;">44.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.35.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.35.3.1">
<span class="ltx_p" id="A5.T8.6.35.3.1.1"><span class="ltx_text" id="A5.T8.6.35.3.1.1.1" style="font-size:90%;">87.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.35.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.35.4.1">
<span class="ltx_p" id="A5.T8.6.35.4.1.1"><span class="ltx_text" id="A5.T8.6.35.4.1.1.1" style="font-size:90%;">41.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.35.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.35.5.1">
<span class="ltx_p" id="A5.T8.6.35.5.1.1"><span class="ltx_text" id="A5.T8.6.35.5.1.1.1" style="font-size:90%;">87.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.35.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.35.6.1">
<span class="ltx_p" id="A5.T8.6.35.6.1.1"><span class="ltx_text" id="A5.T8.6.35.6.1.1.1" style="font-size:90%;">37.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.35.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.35.7.1">
<span class="ltx_p" id="A5.T8.6.35.7.1.1"><span class="ltx_text" id="A5.T8.6.35.7.1.1.1" style="font-size:90%;">85.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.35.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.35.8.1">
<span class="ltx_p" id="A5.T8.6.35.8.1.1"><span class="ltx_text" id="A5.T8.6.35.8.1.1.1" style="font-size:90%;">35.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.35.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.35.9.1">
<span class="ltx_p" id="A5.T8.6.35.9.1.1"><span class="ltx_text" id="A5.T8.6.35.9.1.1.1" style="font-size:90%;">83.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.36">
<td class="ltx_td" id="A5.T8.6.36.1"></td>
<td class="ltx_td ltx_align_left" id="A5.T8.6.36.2">
<span class="ltx_text" id="A5.T8.6.36.2.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.36.2.2" style="font-size:90%;">30K ft</span><span class="ltx_text" id="A5.T8.6.36.2.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.36.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.36.3.1">
<span class="ltx_p" id="A5.T8.6.36.3.1.1"><span class="ltx_text" id="A5.T8.6.36.3.1.1.1" style="font-size:90%;">44.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.36.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.36.4.1">
<span class="ltx_p" id="A5.T8.6.36.4.1.1"><span class="ltx_text" id="A5.T8.6.36.4.1.1.1" style="font-size:90%;">87.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.36.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.36.5.1">
<span class="ltx_p" id="A5.T8.6.36.5.1.1"><span class="ltx_text" id="A5.T8.6.36.5.1.1.1" style="font-size:90%;">41.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.36.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.36.6.1">
<span class="ltx_p" id="A5.T8.6.36.6.1.1"><span class="ltx_text" id="A5.T8.6.36.6.1.1.1" style="font-size:90%;">87.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.36.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.36.7.1">
<span class="ltx_p" id="A5.T8.6.36.7.1.1"><span class="ltx_text" id="A5.T8.6.36.7.1.1.1" style="font-size:90%;">38.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.36.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.36.8.1">
<span class="ltx_p" id="A5.T8.6.36.8.1.1"><span class="ltx_text" id="A5.T8.6.36.8.1.1.1" style="font-size:90%;">85.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.36.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.36.9.1">
<span class="ltx_p" id="A5.T8.6.36.9.1.1"><span class="ltx_text" id="A5.T8.6.36.9.1.1.1" style="font-size:90%;">38.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.36.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.36.10.1">
<span class="ltx_p" id="A5.T8.6.36.10.1.1"><span class="ltx_text" id="A5.T8.6.36.10.1.1.1" style="font-size:90%;">83.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.37">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T8.6.37.1" rowspan="3"><span class="ltx_text" id="A5.T8.6.37.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T8.6.37.1.1.1" style="width:5.5pt;height:15.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:15.8pt;transform:translate(-5.11pt,-5.11pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T8.6.37.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A5.T8.6.37.1.1.1.1.1">text</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.37.2">
<span class="ltx_text" id="A5.T8.6.37.2.1" style="font-size:90%;">NLLB-600M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.37.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T8.6.37.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.37.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.37.3.1">
<span class="ltx_p" id="A5.T8.6.37.3.1.1"><span class="ltx_text" id="A5.T8.6.37.3.1.1.1" style="font-size:90%;">37.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.37.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.37.4.1">
<span class="ltx_p" id="A5.T8.6.37.4.1.1"><span class="ltx_text" id="A5.T8.6.37.4.1.1.1" style="font-size:90%;">83.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.37.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.37.5.1">
<span class="ltx_p" id="A5.T8.6.37.5.1.1"><span class="ltx_text" id="A5.T8.6.37.5.1.1.1" style="font-size:90%;">33.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.37.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.37.6.1">
<span class="ltx_p" id="A5.T8.6.37.6.1.1"><span class="ltx_text" id="A5.T8.6.37.6.1.1.1" style="font-size:90%;">83.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.37.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.37.7.1">
<span class="ltx_p" id="A5.T8.6.37.7.1.1"><span class="ltx_text" id="A5.T8.6.37.7.1.1.1" style="font-size:90%;">32.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.37.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.37.8.1">
<span class="ltx_p" id="A5.T8.6.37.8.1.1"><span class="ltx_text" id="A5.T8.6.37.8.1.1.1" style="font-size:90%;">81.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.37.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.37.9.1">
<span class="ltx_p" id="A5.T8.6.37.9.1.1"><span class="ltx_text" id="A5.T8.6.37.9.1.1.1" style="font-size:90%;">28.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.37.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.37.10.1">
<span class="ltx_p" id="A5.T8.6.37.10.1.1"><span class="ltx_text" id="A5.T8.6.37.10.1.1.1" style="font-size:90%;">78.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.38">
<td class="ltx_td ltx_align_left" id="A5.T8.6.38.1">
<span class="ltx_text" id="A5.T8.6.38.1.1" style="font-size:90%;">NLLB-1.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.38.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T8.6.38.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.38.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.38.2.1">
<span class="ltx_p" id="A5.T8.6.38.2.1.1"><span class="ltx_text" id="A5.T8.6.38.2.1.1.1" style="font-size:90%;">38.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.38.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.38.3.1">
<span class="ltx_p" id="A5.T8.6.38.3.1.1"><span class="ltx_text" id="A5.T8.6.38.3.1.1.1" style="font-size:90%;">85.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.38.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.38.4.1">
<span class="ltx_p" id="A5.T8.6.38.4.1.1"><span class="ltx_text" id="A5.T8.6.38.4.1.1.1" style="font-size:90%;">36.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.38.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.38.5.1">
<span class="ltx_p" id="A5.T8.6.38.5.1.1"><span class="ltx_text" id="A5.T8.6.38.5.1.1.1" style="font-size:90%;">84.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.38.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.38.6.1">
<span class="ltx_p" id="A5.T8.6.38.6.1.1"><span class="ltx_text" id="A5.T8.6.38.6.1.1.1" style="font-size:90%;">32.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.38.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.38.7.1">
<span class="ltx_p" id="A5.T8.6.38.7.1.1"><span class="ltx_text" id="A5.T8.6.38.7.1.1.1" style="font-size:90%;">83.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.38.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.38.8.1">
<span class="ltx_p" id="A5.T8.6.38.8.1.1"><span class="ltx_text" id="A5.T8.6.38.8.1.1.1" style="font-size:90%;">31.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.38.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.38.9.1">
<span class="ltx_p" id="A5.T8.6.38.9.1.1"><span class="ltx_text" id="A5.T8.6.38.9.1.1.1" style="font-size:90%;">80.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.39">
<td class="ltx_td ltx_align_left" id="A5.T8.6.39.1">
<span class="ltx_text" id="A5.T8.6.39.1.1" style="font-size:90%;">NLLB-3.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.39.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T8.6.39.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.39.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.39.2.1">
<span class="ltx_p" id="A5.T8.6.39.2.1.1"><span class="ltx_text" id="A5.T8.6.39.2.1.1.1" style="font-size:90%;">39.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.39.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.39.3.1">
<span class="ltx_p" id="A5.T8.6.39.3.1.1"><span class="ltx_text" id="A5.T8.6.39.3.1.1.1" style="font-size:90%;">86.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.39.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.39.4.1">
<span class="ltx_p" id="A5.T8.6.39.4.1.1"><span class="ltx_text" id="A5.T8.6.39.4.1.1.1" style="font-size:90%;">37.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.39.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.39.5.1">
<span class="ltx_p" id="A5.T8.6.39.5.1.1"><span class="ltx_text" id="A5.T8.6.39.5.1.1.1" style="font-size:90%;">85.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.39.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.39.6.1">
<span class="ltx_p" id="A5.T8.6.39.6.1.1"><span class="ltx_text" id="A5.T8.6.39.6.1.1.1" style="font-size:90%;">35.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.39.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.39.7.1">
<span class="ltx_p" id="A5.T8.6.39.7.1.1"><span class="ltx_text" id="A5.T8.6.39.7.1.1.1" style="font-size:90%;">84.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.39.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.39.8.1">
<span class="ltx_p" id="A5.T8.6.39.8.1.1"><span class="ltx_text" id="A5.T8.6.39.8.1.1.1" style="font-size:90%;">34.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.39.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.39.9.1">
<span class="ltx_p" id="A5.T8.6.39.9.1.1"><span class="ltx_text" id="A5.T8.6.39.9.1.1.1" style="font-size:90%;">82.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.40">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A5.T8.6.40.1" rowspan="10"><span class="ltx_text" id="A5.T8.6.40.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T8.6.40.1.1.1" style="width:6.3pt;height:35.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.66pt,-14.66pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T8.6.40.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A5.T8.6.40.1.1.1.1.1">zero-shot</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.40.2">
<span class="ltx_text" id="A5.T8.6.40.2.1" style="font-size:90%;">MOF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.40.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib26" title="">26</a><span class="ltx_text" id="A5.T8.6.40.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.40.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.40.3.1">
<span class="ltx_p" id="A5.T8.6.40.3.1.1"><span class="ltx_text" id="A5.T8.6.40.3.1.1.1" style="font-size:90%;">28.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.40.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.40.4.1">
<span class="ltx_p" id="A5.T8.6.40.4.1.1"><span class="ltx_text" id="A5.T8.6.40.4.1.1.1" style="font-size:90%;">82.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.40.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.40.5.1">
<span class="ltx_p" id="A5.T8.6.40.5.1.1"><span class="ltx_text" id="A5.T8.6.40.5.1.1.1" style="font-size:90%;">23.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.40.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.40.6.1">
<span class="ltx_p" id="A5.T8.6.40.6.1.1"><span class="ltx_text" id="A5.T8.6.40.6.1.1.1" style="font-size:90%;">80.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.40.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.40.8"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.40.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.40.9.1">
<span class="ltx_p" id="A5.T8.6.40.9.1.1"><span class="ltx_text" id="A5.T8.6.40.9.1.1.1" style="font-size:90%;">21.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.40.10">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.40.10.1">
<span class="ltx_p" id="A5.T8.6.40.10.1.1"><span class="ltx_text" id="A5.T8.6.40.10.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.41">
<td class="ltx_td ltx_align_left" id="A5.T8.6.41.1">
<span class="ltx_text" id="A5.T8.6.41.1.1" style="font-size:90%;">ZeroMMT-600M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.41.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib25" title="">25</a><span class="ltx_text" id="A5.T8.6.41.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.41.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.41.2.1">
<span class="ltx_p" id="A5.T8.6.41.2.1.1"><span class="ltx_text" id="A5.T8.6.41.2.1.1.1" style="font-size:90%;">36.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.41.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.41.3.1">
<span class="ltx_p" id="A5.T8.6.41.3.1.1"><span class="ltx_text" id="A5.T8.6.41.3.1.1.1" style="font-size:90%;">83.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.41.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.41.4.1">
<span class="ltx_p" id="A5.T8.6.41.4.1.1"><span class="ltx_text" id="A5.T8.6.41.4.1.1.1" style="font-size:90%;">33.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.41.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.41.5.1">
<span class="ltx_p" id="A5.T8.6.41.5.1.1"><span class="ltx_text" id="A5.T8.6.41.5.1.1.1" style="font-size:90%;">82.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.41.6"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.41.7"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.41.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.41.8.1">
<span class="ltx_p" id="A5.T8.6.41.8.1.1"><span class="ltx_text" id="A5.T8.6.41.8.1.1.1" style="font-size:90%;">29.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.41.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.41.9.1">
<span class="ltx_p" id="A5.T8.6.41.9.1.1"><span class="ltx_text" id="A5.T8.6.41.9.1.1.1" style="font-size:90%;">77.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.42">
<td class="ltx_td ltx_align_left" id="A5.T8.6.42.1">
<span class="ltx_text" id="A5.T8.6.42.1.1" style="font-size:90%;">ZeroMMT-1.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.42.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib25" title="">25</a><span class="ltx_text" id="A5.T8.6.42.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.42.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.42.2.1">
<span class="ltx_p" id="A5.T8.6.42.2.1.1"><span class="ltx_text" id="A5.T8.6.42.2.1.1.1" style="font-size:90%;">37.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.42.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.42.3.1">
<span class="ltx_p" id="A5.T8.6.42.3.1.1"><span class="ltx_text" id="A5.T8.6.42.3.1.1.1" style="font-size:90%;">84.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.42.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.42.4.1">
<span class="ltx_p" id="A5.T8.6.42.4.1.1"><span class="ltx_text" id="A5.T8.6.42.4.1.1.1" style="font-size:90%;">36.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.42.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.42.5.1">
<span class="ltx_p" id="A5.T8.6.42.5.1.1"><span class="ltx_text" id="A5.T8.6.42.5.1.1.1" style="font-size:90%;">84.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.42.6"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.42.7"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.42.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.42.8.1">
<span class="ltx_p" id="A5.T8.6.42.8.1.1"><span class="ltx_text" id="A5.T8.6.42.8.1.1.1" style="font-size:90%;">31.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.42.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.42.9.1">
<span class="ltx_p" id="A5.T8.6.42.9.1.1"><span class="ltx_text" id="A5.T8.6.42.9.1.1.1" style="font-size:90%;">80.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.43">
<td class="ltx_td ltx_align_left" id="A5.T8.6.43.1">
<span class="ltx_text" id="A5.T8.6.43.1.1" style="font-size:90%;">ZeroMMT-3.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T8.6.43.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib25" title="">25</a><span class="ltx_text" id="A5.T8.6.43.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.43.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.43.2.1">
<span class="ltx_p" id="A5.T8.6.43.2.1.1"><span class="ltx_text" id="A5.T8.6.43.2.1.1.1" style="font-size:90%;">39.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.43.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.43.3.1">
<span class="ltx_p" id="A5.T8.6.43.3.1.1"><span class="ltx_text" id="A5.T8.6.43.3.1.1.1" style="font-size:90%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.43.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.43.4.1">
<span class="ltx_p" id="A5.T8.6.43.4.1.1"><span class="ltx_text" id="A5.T8.6.43.4.1.1.1" style="font-size:90%;">37.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.43.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.43.5.1">
<span class="ltx_p" id="A5.T8.6.43.5.1.1"><span class="ltx_text" id="A5.T8.6.43.5.1.1.1" style="font-size:90%;">85.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.43.6"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.43.7"></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.43.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.43.8.1">
<span class="ltx_p" id="A5.T8.6.43.8.1.1"><span class="ltx_text" id="A5.T8.6.43.8.1.1.1" style="font-size:90%;">33.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.43.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.43.9.1">
<span class="ltx_p" id="A5.T8.6.43.9.1.1"><span class="ltx_text" id="A5.T8.6.43.9.1.1.1" style="font-size:90%;">81.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.44">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T8.6.44.1"><span class="ltx_text" id="A5.T8.6.44.1.1" style="font-size:90%;">F-0.4B (ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.44.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.44.2.1">
<span class="ltx_p" id="A5.T8.6.44.2.1.1"><span class="ltx_text" id="A5.T8.6.44.2.1.1.1" style="font-size:90%;">37.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.44.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.44.3.1">
<span class="ltx_p" id="A5.T8.6.44.3.1.1"><span class="ltx_text" id="A5.T8.6.44.3.1.1.1" style="font-size:90%;">83.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.44.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.44.4.1">
<span class="ltx_p" id="A5.T8.6.44.4.1.1"><span class="ltx_text" id="A5.T8.6.44.4.1.1.1" style="font-size:90%;">35.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.44.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.44.5.1">
<span class="ltx_p" id="A5.T8.6.44.5.1.1"><span class="ltx_text" id="A5.T8.6.44.5.1.1.1" style="font-size:90%;">83.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.44.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.44.6.1">
<span class="ltx_p" id="A5.T8.6.44.6.1.1"><span class="ltx_text" id="A5.T8.6.44.6.1.1.1" style="font-size:90%;">32.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.44.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.44.7.1">
<span class="ltx_p" id="A5.T8.6.44.7.1.1"><span class="ltx_text" id="A5.T8.6.44.7.1.1.1" style="font-size:90%;">81.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.44.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.44.8.1">
<span class="ltx_p" id="A5.T8.6.44.8.1.1"><span class="ltx_text" id="A5.T8.6.44.8.1.1.1" style="font-size:90%;">29.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T8.6.44.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.44.9.1">
<span class="ltx_p" id="A5.T8.6.44.9.1.1"><span class="ltx_text" id="A5.T8.6.44.9.1.1.1" style="font-size:90%;">78.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.45">
<td class="ltx_td ltx_align_left" id="A5.T8.6.45.1">
<span class="ltx_text" id="A5.T8.6.45.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.45.1.2" style="font-size:90%;">100K</span><span class="ltx_text" id="A5.T8.6.45.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.45.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.45.2.1">
<span class="ltx_p" id="A5.T8.6.45.2.1.1"><span class="ltx_text" id="A5.T8.6.45.2.1.1.1" style="font-size:90%;">39.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.45.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.45.3.1">
<span class="ltx_p" id="A5.T8.6.45.3.1.1"><span class="ltx_text" id="A5.T8.6.45.3.1.1.1" style="font-size:90%;">85.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.45.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.45.4.1">
<span class="ltx_p" id="A5.T8.6.45.4.1.1"><span class="ltx_text" id="A5.T8.6.45.4.1.1.1" style="font-size:90%;">37.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.45.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.45.5.1">
<span class="ltx_p" id="A5.T8.6.45.5.1.1"><span class="ltx_text" id="A5.T8.6.45.5.1.1.1" style="font-size:90%;">84.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.45.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.45.6.1">
<span class="ltx_p" id="A5.T8.6.45.6.1.1"><span class="ltx_text" id="A5.T8.6.45.6.1.1.1" style="font-size:90%;">34.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.45.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.45.7.1">
<span class="ltx_p" id="A5.T8.6.45.7.1.1"><span class="ltx_text" id="A5.T8.6.45.7.1.1.1" style="font-size:90%;">83.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.45.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.45.8.1">
<span class="ltx_p" id="A5.T8.6.45.8.1.1"><span class="ltx_text" id="A5.T8.6.45.8.1.1.1" style="font-size:90%;">31.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.45.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.45.9.1">
<span class="ltx_p" id="A5.T8.6.45.9.1.1"><span class="ltx_text" id="A5.T8.6.45.9.1.1.1" style="font-size:90%;">80.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.46">
<td class="ltx_td ltx_align_left" id="A5.T8.6.46.1"><span class="ltx_text" id="A5.T8.6.46.1.1" style="font-size:90%;">F-1.0B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.46.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.46.2.1">
<span class="ltx_p" id="A5.T8.6.46.2.1.1"><span class="ltx_text" id="A5.T8.6.46.2.1.1.1" style="font-size:90%;">38.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.46.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.46.3.1">
<span class="ltx_p" id="A5.T8.6.46.3.1.1"><span class="ltx_text" id="A5.T8.6.46.3.1.1.1" style="font-size:90%;">84.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.46.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.46.4.1">
<span class="ltx_p" id="A5.T8.6.46.4.1.1"><span class="ltx_text" id="A5.T8.6.46.4.1.1.1" style="font-size:90%;">36.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.46.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.46.5.1">
<span class="ltx_p" id="A5.T8.6.46.5.1.1"><span class="ltx_text" id="A5.T8.6.46.5.1.1.1" style="font-size:90%;">84.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.46.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.46.6.1">
<span class="ltx_p" id="A5.T8.6.46.6.1.1"><span class="ltx_text" id="A5.T8.6.46.6.1.1.1" style="font-size:90%;">34.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.46.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.46.7.1">
<span class="ltx_p" id="A5.T8.6.46.7.1.1"><span class="ltx_text" id="A5.T8.6.46.7.1.1.1" style="font-size:90%;">83.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.46.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.46.8.1">
<span class="ltx_p" id="A5.T8.6.46.8.1.1"><span class="ltx_text" id="A5.T8.6.46.8.1.1.1" style="font-size:90%;">30.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.46.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.46.9.1">
<span class="ltx_p" id="A5.T8.6.46.9.1.1"><span class="ltx_text" id="A5.T8.6.46.9.1.1.1" style="font-size:90%;">79.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.47">
<td class="ltx_td ltx_align_left" id="A5.T8.6.47.1"><span class="ltx_text" id="A5.T8.6.47.1.1" style="font-size:90%;">F-3.5B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.47.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.47.2.1">
<span class="ltx_p" id="A5.T8.6.47.2.1.1"><span class="ltx_text" id="A5.T8.6.47.2.1.1.1" style="font-size:90%;">38.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.47.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.47.3.1">
<span class="ltx_p" id="A5.T8.6.47.3.1.1"><span class="ltx_text" id="A5.T8.6.47.3.1.1.1" style="font-size:90%;">84.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.47.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.47.4.1">
<span class="ltx_p" id="A5.T8.6.47.4.1.1"><span class="ltx_text" id="A5.T8.6.47.4.1.1.1" style="font-size:90%;">37.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.47.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.47.5.1">
<span class="ltx_p" id="A5.T8.6.47.5.1.1"><span class="ltx_text" id="A5.T8.6.47.5.1.1.1" style="font-size:90%;">84.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.47.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.47.6.1">
<span class="ltx_p" id="A5.T8.6.47.6.1.1"><span class="ltx_text" id="A5.T8.6.47.6.1.1.1" style="font-size:90%;">34.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.47.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.47.7.1">
<span class="ltx_p" id="A5.T8.6.47.7.1.1"><span class="ltx_text" id="A5.T8.6.47.7.1.1.1" style="font-size:90%;">83.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.47.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.47.8.1">
<span class="ltx_p" id="A5.T8.6.47.8.1.1"><span class="ltx_text" id="A5.T8.6.47.8.1.1.1" style="font-size:90%;">31.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.47.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.47.9.1">
<span class="ltx_p" id="A5.T8.6.47.9.1.1"><span class="ltx_text" id="A5.T8.6.47.9.1.1.1" style="font-size:90%;">80.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.48">
<td class="ltx_td ltx_align_left" id="A5.T8.6.48.1"><span class="ltx_text" id="A5.T8.6.48.1.1" style="font-size:90%;">F-11.2B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.48.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.48.2.1">
<span class="ltx_p" id="A5.T8.6.48.2.1.1"><span class="ltx_text" id="A5.T8.6.48.2.1.1.1" style="font-size:90%;">39.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.48.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.48.3.1">
<span class="ltx_p" id="A5.T8.6.48.3.1.1"><span class="ltx_text" id="A5.T8.6.48.3.1.1.1" style="font-size:90%;">85.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.48.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.48.4.1">
<span class="ltx_p" id="A5.T8.6.48.4.1.1"><span class="ltx_text" id="A5.T8.6.48.4.1.1.1" style="font-size:90%;">37.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.48.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.48.5.1">
<span class="ltx_p" id="A5.T8.6.48.5.1.1"><span class="ltx_text" id="A5.T8.6.48.5.1.1.1" style="font-size:90%;">85.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.48.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.48.6.1">
<span class="ltx_p" id="A5.T8.6.48.6.1.1"><span class="ltx_text" id="A5.T8.6.48.6.1.1.1" style="font-size:90%;">34.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.48.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.48.7.1">
<span class="ltx_p" id="A5.T8.6.48.7.1.1"><span class="ltx_text" id="A5.T8.6.48.7.1.1.1" style="font-size:90%;">83.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.48.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.48.8.1">
<span class="ltx_p" id="A5.T8.6.48.8.1.1"><span class="ltx_text" id="A5.T8.6.48.8.1.1.1" style="font-size:90%;">32.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T8.6.48.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.48.9.1">
<span class="ltx_p" id="A5.T8.6.48.9.1.1"><span class="ltx_text" id="A5.T8.6.48.9.1.1.1" style="font-size:90%;">81.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.6.49">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T8.6.49.1">
<span class="ltx_text" id="A5.T8.6.49.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T8.6.49.1.2" style="font-size:90%;">30K</span><span class="ltx_text" id="A5.T8.6.49.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T8.6.49.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.49.2.1">
<span class="ltx_p" id="A5.T8.6.49.2.1.1"><span class="ltx_text" id="A5.T8.6.49.2.1.1.1" style="font-size:90%;">39.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T8.6.49.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.49.3.1">
<span class="ltx_p" id="A5.T8.6.49.3.1.1"><span class="ltx_text" id="A5.T8.6.49.3.1.1.1" style="font-size:90%;">85.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T8.6.49.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.49.4.1">
<span class="ltx_p" id="A5.T8.6.49.4.1.1"><span class="ltx_text" id="A5.T8.6.49.4.1.1.1" style="font-size:90%;">38.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T8.6.49.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.49.5.1">
<span class="ltx_p" id="A5.T8.6.49.5.1.1"><span class="ltx_text" id="A5.T8.6.49.5.1.1.1" style="font-size:90%;">85.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T8.6.49.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.49.6.1">
<span class="ltx_p" id="A5.T8.6.49.6.1.1"><span class="ltx_text" id="A5.T8.6.49.6.1.1.1" style="font-size:90%;">36.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T8.6.49.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.49.7.1">
<span class="ltx_p" id="A5.T8.6.49.7.1.1"><span class="ltx_text" id="A5.T8.6.49.7.1.1.1" style="font-size:90%;">84.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T8.6.49.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.49.8.1">
<span class="ltx_p" id="A5.T8.6.49.8.1.1"><span class="ltx_text" id="A5.T8.6.49.8.1.1.1" style="font-size:90%;">35.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T8.6.49.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.6.49.9.1">
<span class="ltx_p" id="A5.T8.6.49.9.1.1"><span class="ltx_text" id="A5.T8.6.49.9.1.1.1" style="font-size:90%;">81.6</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents the results of the Multi30K translation task (Task 1), specifically focusing on English-to-German and English-to-French translations.  The table evaluates performance using two metrics: BLEU (B), a widely used automatic metric for machine translation quality, and COMET (C22), a more recent metric that attempts to better correlate with human judgments of fluency and adequacy. Different model configurations are compared.  The '100K', '30K', and 'ft' columns indicate the number of pre-training steps and whether fine-tuning was performed, providing insight into the impact of training on translation quality.
> <details>
> <summary>read the caption</summary>
> Table 8: Translation (Task 1) on the Multi30k [19, 20, 3] dataset reporting BLEU (B) and COMET (C22) metrics. 100K, 30K, and ft indicate the number of pre-training steps and fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T9.4">
<tr class="ltx_tr" id="A5.T9.4.5">
<td class="ltx_td ltx_border_tt" id="A5.T9.4.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.4.5.2"><span class="ltx_text ltx_font_bold" id="A5.T9.4.5.2.1" style="font-size:90%;">De</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.4.5.3"><span class="ltx_text ltx_font_bold" id="A5.T9.4.5.3.1" style="font-size:90%;">Fr</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.4.5.4"><span class="ltx_text ltx_font_bold" id="A5.T9.4.5.4.1" style="font-size:90%;">Ru</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T9.4.5.5"><span class="ltx_text ltx_font_bold" id="A5.T9.4.5.5.1" style="font-size:90%;">Zh</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.4">
<td class="ltx_td ltx_align_left" id="A5.T9.4.4.5"><span class="ltx_text ltx_font_bold" id="A5.T9.4.4.5.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.4.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.4.6.1">
<span class="ltx_p" id="A5.T9.4.4.6.1.1"><span class="ltx_text" id="A5.T9.4.4.6.1.1.1" style="font-size:90%;">B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.1.1.1.1">
<span class="ltx_p" id="A5.T9.1.1.1.1.1"><span class="ltx_text" id="A5.T9.1.1.1.1.1.1" style="font-size:90%;">C</span><sub class="ltx_sub" id="A5.T9.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A5.T9.1.1.1.1.1.2.1" style="font-size:90%;">22</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.4.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.4.7.1">
<span class="ltx_p" id="A5.T9.4.4.7.1.1"><span class="ltx_text" id="A5.T9.4.4.7.1.1.1" style="font-size:90%;">B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.2.2.2.1">
<span class="ltx_p" id="A5.T9.2.2.2.1.1"><span class="ltx_text" id="A5.T9.2.2.2.1.1.1" style="font-size:90%;">C</span><sub class="ltx_sub" id="A5.T9.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A5.T9.2.2.2.1.1.2.1" style="font-size:90%;">22</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.4.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.4.8.1">
<span class="ltx_p" id="A5.T9.4.4.8.1.1"><span class="ltx_text" id="A5.T9.4.4.8.1.1.1" style="font-size:90%;">B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.3.3.3.1">
<span class="ltx_p" id="A5.T9.3.3.3.1.1"><span class="ltx_text" id="A5.T9.3.3.3.1.1.1" style="font-size:90%;">C</span><sub class="ltx_sub" id="A5.T9.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A5.T9.3.3.3.1.1.2.1" style="font-size:90%;">22</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.4.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.4.9.1">
<span class="ltx_p" id="A5.T9.4.4.9.1.1"><span class="ltx_text" id="A5.T9.4.4.9.1.1.1" style="font-size:90%;">B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.4.4.1">
<span class="ltx_p" id="A5.T9.4.4.4.1.1"><span class="ltx_text" id="A5.T9.4.4.4.1.1.1" style="font-size:90%;">C</span><sub class="ltx_sub" id="A5.T9.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A5.T9.4.4.4.1.1.2.1" style="font-size:90%;">22</span></sub></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.4.6.1">
<span class="ltx_text" id="A5.T9.4.6.1.1" style="font-size:90%;">NLLB-600M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T9.4.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T9.4.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.6.2.1">
<span class="ltx_p" id="A5.T9.4.6.2.1.1"><span class="ltx_text" id="A5.T9.4.6.2.1.1.1" style="font-size:90%;">36.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.6.3.1">
<span class="ltx_p" id="A5.T9.4.6.3.1.1"><span class="ltx_text" id="A5.T9.4.6.3.1.1.1" style="font-size:90%;">80.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.6.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.6.4.1">
<span class="ltx_p" id="A5.T9.4.6.4.1.1"><span class="ltx_text" id="A5.T9.4.6.4.1.1.1" style="font-size:90%;">38.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.6.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.6.5.1">
<span class="ltx_p" id="A5.T9.4.6.5.1.1"><span class="ltx_text" id="A5.T9.4.6.5.1.1.1" style="font-size:90%;">80.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.6.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.6.6.1">
<span class="ltx_p" id="A5.T9.4.6.6.1.1"><span class="ltx_text" id="A5.T9.4.6.6.1.1.1" style="font-size:90%;">19.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.6.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.6.7.1">
<span class="ltx_p" id="A5.T9.4.6.7.1.1"><span class="ltx_text" id="A5.T9.4.6.7.1.1.1" style="font-size:90%;">80.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.6.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.6.8.1">
<span class="ltx_p" id="A5.T9.4.6.8.1.1"><span class="ltx_text" id="A5.T9.4.6.8.1.1.1" style="font-size:90%;">20.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.6.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.6.9.1">
<span class="ltx_p" id="A5.T9.4.6.9.1.1"><span class="ltx_text" id="A5.T9.4.6.9.1.1.1" style="font-size:90%;">75.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.7">
<td class="ltx_td ltx_align_left" id="A5.T9.4.7.1">
<span class="ltx_text" id="A5.T9.4.7.1.1" style="font-size:90%;">NLLB-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T9.4.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T9.4.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.7.2.1">
<span class="ltx_p" id="A5.T9.4.7.2.1.1"><span class="ltx_text" id="A5.T9.4.7.2.1.1.1" style="font-size:90%;">40.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.7.3.1">
<span class="ltx_p" id="A5.T9.4.7.3.1.1"><span class="ltx_text" id="A5.T9.4.7.3.1.1.1" style="font-size:90%;">81.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.7.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.7.4.1">
<span class="ltx_p" id="A5.T9.4.7.4.1.1"><span class="ltx_text" id="A5.T9.4.7.4.1.1.1" style="font-size:90%;">39.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.7.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.7.5.1">
<span class="ltx_p" id="A5.T9.4.7.5.1.1"><span class="ltx_text" id="A5.T9.4.7.5.1.1.1" style="font-size:90%;">80.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.7.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.7.6.1">
<span class="ltx_p" id="A5.T9.4.7.6.1.1"><span class="ltx_text" id="A5.T9.4.7.6.1.1.1" style="font-size:90%;">23.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.7.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.7.7.1">
<span class="ltx_p" id="A5.T9.4.7.7.1.1"><span class="ltx_text" id="A5.T9.4.7.7.1.1.1" style="font-size:90%;">81.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.7.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.7.8.1">
<span class="ltx_p" id="A5.T9.4.7.8.1.1"><span class="ltx_text" id="A5.T9.4.7.8.1.1.1" style="font-size:90%;">20.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.7.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.7.9.1">
<span class="ltx_p" id="A5.T9.4.7.9.1.1"><span class="ltx_text" id="A5.T9.4.7.9.1.1.1" style="font-size:90%;">75.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.8">
<td class="ltx_td ltx_align_left" id="A5.T9.4.8.1">
<span class="ltx_text" id="A5.T9.4.8.1.1" style="font-size:90%;">NLLB-3.3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T9.4.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib13" title="">13</a><span class="ltx_text" id="A5.T9.4.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.8.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.8.2.1">
<span class="ltx_p" id="A5.T9.4.8.2.1.1"><span class="ltx_text" id="A5.T9.4.8.2.1.1.1" style="font-size:90%;">40.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.8.3.1">
<span class="ltx_p" id="A5.T9.4.8.3.1.1"><span class="ltx_text" id="A5.T9.4.8.3.1.1.1" style="font-size:90%;">81.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.8.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.8.4.1">
<span class="ltx_p" id="A5.T9.4.8.4.1.1"><span class="ltx_text" id="A5.T9.4.8.4.1.1.1" style="font-size:90%;">41.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.8.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.8.5.1">
<span class="ltx_p" id="A5.T9.4.8.5.1.1"><span class="ltx_text" id="A5.T9.4.8.5.1.1.1" style="font-size:90%;">81.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.8.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.8.6.1">
<span class="ltx_p" id="A5.T9.4.8.6.1.1"><span class="ltx_text" id="A5.T9.4.8.6.1.1.1" style="font-size:90%;">22.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.8.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.8.7.1">
<span class="ltx_p" id="A5.T9.4.8.7.1.1"><span class="ltx_text" id="A5.T9.4.8.7.1.1.1" style="font-size:90%;">82.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.8.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.8.8.1">
<span class="ltx_p" id="A5.T9.4.8.8.1.1"><span class="ltx_text" id="A5.T9.4.8.8.1.1.1" style="font-size:90%;">22.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.8.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.8.9.1">
<span class="ltx_p" id="A5.T9.4.8.9.1.1"><span class="ltx_text" id="A5.T9.4.8.9.1.1.1" style="font-size:90%;">77.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.9">
<td class="ltx_td ltx_align_left" id="A5.T9.4.9.1">
<span class="ltx_text" id="A5.T9.4.9.1.1" style="font-size:90%;">Baseline-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T9.4.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T9.4.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.9.2.1">
<span class="ltx_p" id="A5.T9.4.9.2.1.1"><span class="ltx_text" id="A5.T9.4.9.2.1.1.1" style="font-size:90%;">41.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.9.3.1">
<span class="ltx_p" id="A5.T9.4.9.3.1.1"><span class="ltx_text" id="A5.T9.4.9.3.1.1.1" style="font-size:90%;">81.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.9.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.9.4.1">
<span class="ltx_p" id="A5.T9.4.9.4.1.1"><span class="ltx_text" id="A5.T9.4.9.4.1.1.1" style="font-size:90%;">42.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.9.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.9.5.1">
<span class="ltx_p" id="A5.T9.4.9.5.1.1"><span class="ltx_text" id="A5.T9.4.9.5.1.1.1" style="font-size:90%;">81.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.9.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.9.6.1">
<span class="ltx_p" id="A5.T9.4.9.6.1.1"><span class="ltx_text" id="A5.T9.4.9.6.1.1.1" style="font-size:90%;">23.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.9.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.9.7.1">
<span class="ltx_p" id="A5.T9.4.9.7.1.1"><span class="ltx_text" id="A5.T9.4.9.7.1.1.1" style="font-size:90%;">82.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.9.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.9.8.1">
<span class="ltx_p" id="A5.T9.4.9.8.1.1"><span class="ltx_text" id="A5.T9.4.9.8.1.1.1" style="font-size:90%;">23.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.9.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.9.9.1">
<span class="ltx_p" id="A5.T9.4.9.9.1.1"><span class="ltx_text" id="A5.T9.4.9.9.1.1.1" style="font-size:90%;">77.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.4.10.1">
<span class="ltx_text" id="A5.T9.4.10.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T9.4.10.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T9.4.10.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.10.2.1">
<span class="ltx_p" id="A5.T9.4.10.2.1.1"><span class="ltx_text" id="A5.T9.4.10.2.1.1.1" style="font-size:90%;">26.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.10.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.10.3.1">
<span class="ltx_p" id="A5.T9.4.10.3.1.1"><span class="ltx_text" id="A5.T9.4.10.3.1.1.1" style="font-size:90%;">71.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.10.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.10.4.1">
<span class="ltx_p" id="A5.T9.4.10.4.1.1"><span class="ltx_text" id="A5.T9.4.10.4.1.1.1" style="font-size:90%;">27.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.10.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.10.5.1">
<span class="ltx_p" id="A5.T9.4.10.5.1.1"><span class="ltx_text" id="A5.T9.4.10.5.1.1.1" style="font-size:90%;">72.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.10.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.10.6.1">
<span class="ltx_p" id="A5.T9.4.10.6.1.1"><span class="ltx_text" id="A5.T9.4.10.6.1.1.1" style="font-size:90%;">9.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.10.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.10.7.1">
<span class="ltx_p" id="A5.T9.4.10.7.1.1"><span class="ltx_text" id="A5.T9.4.10.7.1.1.1" style="font-size:90%;">69.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.10.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.10.8.1">
<span class="ltx_p" id="A5.T9.4.10.8.1.1"><span class="ltx_text" id="A5.T9.4.10.8.1.1.1" style="font-size:90%;">19.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.10.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.10.9.1">
<span class="ltx_p" id="A5.T9.4.10.9.1.1"><span class="ltx_text" id="A5.T9.4.10.9.1.1.1" style="font-size:90%;">73.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.11">
<td class="ltx_td ltx_align_left" id="A5.T9.4.11.1">
<span class="ltx_text" id="A5.T9.4.11.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T9.4.11.1.2" style="font-size:90%;">100K ft</span><span class="ltx_text" id="A5.T9.4.11.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.11.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.11.2.1">
<span class="ltx_p" id="A5.T9.4.11.2.1.1"><span class="ltx_text" id="A5.T9.4.11.2.1.1.1" style="font-size:90%;">32.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.11.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.11.3.1">
<span class="ltx_p" id="A5.T9.4.11.3.1.1"><span class="ltx_text" id="A5.T9.4.11.3.1.1.1" style="font-size:90%;">78.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.11.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.11.4.1">
<span class="ltx_p" id="A5.T9.4.11.4.1.1"><span class="ltx_text" id="A5.T9.4.11.4.1.1.1" style="font-size:90%;">37.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.11.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.11.5.1">
<span class="ltx_p" id="A5.T9.4.11.5.1.1"><span class="ltx_text" id="A5.T9.4.11.5.1.1.1" style="font-size:90%;">78.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.11.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.11.6.1">
<span class="ltx_p" id="A5.T9.4.11.6.1.1"><span class="ltx_text" id="A5.T9.4.11.6.1.1.1" style="font-size:90%;">13.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.11.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.11.7.1">
<span class="ltx_p" id="A5.T9.4.11.7.1.1"><span class="ltx_text" id="A5.T9.4.11.7.1.1.1" style="font-size:90%;">77.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.11.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.11.8.1">
<span class="ltx_p" id="A5.T9.4.11.8.1.1"><span class="ltx_text" id="A5.T9.4.11.8.1.1.1" style="font-size:90%;">22.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.11.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.11.9.1">
<span class="ltx_p" id="A5.T9.4.11.9.1.1"><span class="ltx_text" id="A5.T9.4.11.9.1.1.1" style="font-size:90%;">75.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.12">
<td class="ltx_td ltx_align_left" id="A5.T9.4.12.1">
<span class="ltx_text" id="A5.T9.4.12.1.1" style="font-size:90%;">F-1.0B </span><span class="ltx_text ltx_font_italic" id="A5.T9.4.12.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T9.4.12.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.12.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.12.2.1">
<span class="ltx_p" id="A5.T9.4.12.2.1.1"><span class="ltx_text" id="A5.T9.4.12.2.1.1.1" style="font-size:90%;">29.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.12.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.12.3.1">
<span class="ltx_p" id="A5.T9.4.12.3.1.1"><span class="ltx_text" id="A5.T9.4.12.3.1.1.1" style="font-size:90%;">74.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.12.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.12.4.1">
<span class="ltx_p" id="A5.T9.4.12.4.1.1"><span class="ltx_text" id="A5.T9.4.12.4.1.1.1" style="font-size:90%;">30.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.12.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.12.5.1">
<span class="ltx_p" id="A5.T9.4.12.5.1.1"><span class="ltx_text" id="A5.T9.4.12.5.1.1.1" style="font-size:90%;">75.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.12.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.12.6.1">
<span class="ltx_p" id="A5.T9.4.12.6.1.1"><span class="ltx_text" id="A5.T9.4.12.6.1.1.1" style="font-size:90%;">12.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.12.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.12.7.1">
<span class="ltx_p" id="A5.T9.4.12.7.1.1"><span class="ltx_text" id="A5.T9.4.12.7.1.1.1" style="font-size:90%;">72.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.12.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.12.8.1">
<span class="ltx_p" id="A5.T9.4.12.8.1.1"><span class="ltx_text" id="A5.T9.4.12.8.1.1.1" style="font-size:90%;">19.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.12.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.12.9.1">
<span class="ltx_p" id="A5.T9.4.12.9.1.1"><span class="ltx_text" id="A5.T9.4.12.9.1.1.1" style="font-size:90%;">74.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.13">
<td class="ltx_td ltx_align_left" id="A5.T9.4.13.1">
<span class="ltx_text" id="A5.T9.4.13.1.1" style="font-size:90%;">F-3.5B </span><span class="ltx_text ltx_font_italic" id="A5.T9.4.13.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T9.4.13.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.13.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.13.2.1">
<span class="ltx_p" id="A5.T9.4.13.2.1.1"><span class="ltx_text" id="A5.T9.4.13.2.1.1.1" style="font-size:90%;">32.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.13.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.13.3.1">
<span class="ltx_p" id="A5.T9.4.13.3.1.1"><span class="ltx_text" id="A5.T9.4.13.3.1.1.1" style="font-size:90%;">79.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.13.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.13.4.1">
<span class="ltx_p" id="A5.T9.4.13.4.1.1"><span class="ltx_text" id="A5.T9.4.13.4.1.1.1" style="font-size:90%;">35.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.13.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.13.5.1">
<span class="ltx_p" id="A5.T9.4.13.5.1.1"><span class="ltx_text" id="A5.T9.4.13.5.1.1.1" style="font-size:90%;">78.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.13.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.13.6.1">
<span class="ltx_p" id="A5.T9.4.13.6.1.1"><span class="ltx_text" id="A5.T9.4.13.6.1.1.1" style="font-size:90%;">15.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.13.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.13.7.1">
<span class="ltx_p" id="A5.T9.4.13.7.1.1"><span class="ltx_text" id="A5.T9.4.13.7.1.1.1" style="font-size:90%;">77.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.13.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.13.8.1">
<span class="ltx_p" id="A5.T9.4.13.8.1.1"><span class="ltx_text" id="A5.T9.4.13.8.1.1.1" style="font-size:90%;">21.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.13.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.13.9.1">
<span class="ltx_p" id="A5.T9.4.13.9.1.1"><span class="ltx_text" id="A5.T9.4.13.9.1.1.1" style="font-size:90%;">75.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.14">
<td class="ltx_td ltx_align_left" id="A5.T9.4.14.1">
<span class="ltx_text" id="A5.T9.4.14.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T9.4.14.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T9.4.14.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.14.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.14.2.1">
<span class="ltx_p" id="A5.T9.4.14.2.1.1"><span class="ltx_text" id="A5.T9.4.14.2.1.1.1" style="font-size:90%;">36.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.14.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.14.3.1">
<span class="ltx_p" id="A5.T9.4.14.3.1.1"><span class="ltx_text" id="A5.T9.4.14.3.1.1.1" style="font-size:90%;">81.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.14.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.14.4.1">
<span class="ltx_p" id="A5.T9.4.14.4.1.1"><span class="ltx_text" id="A5.T9.4.14.4.1.1.1" style="font-size:90%;">40.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.14.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.14.5.1">
<span class="ltx_p" id="A5.T9.4.14.5.1.1"><span class="ltx_text" id="A5.T9.4.14.5.1.1.1" style="font-size:90%;">81.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.14.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.14.6.1">
<span class="ltx_p" id="A5.T9.4.14.6.1.1"><span class="ltx_text" id="A5.T9.4.14.6.1.1.1" style="font-size:90%;">18.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.14.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.14.7.1">
<span class="ltx_p" id="A5.T9.4.14.7.1.1"><span class="ltx_text" id="A5.T9.4.14.7.1.1.1" style="font-size:90%;">80.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.14.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.14.8.1">
<span class="ltx_p" id="A5.T9.4.14.8.1.1"><span class="ltx_text" id="A5.T9.4.14.8.1.1.1" style="font-size:90%;">22.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.14.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.14.9.1">
<span class="ltx_p" id="A5.T9.4.14.9.1.1"><span class="ltx_text" id="A5.T9.4.14.9.1.1.1" style="font-size:90%;">75.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.15">
<td class="ltx_td ltx_align_left" id="A5.T9.4.15.1">
<span class="ltx_text" id="A5.T9.4.15.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T9.4.15.1.2" style="font-size:90%;">30K ft</span><span class="ltx_text" id="A5.T9.4.15.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.15.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.15.2.1">
<span class="ltx_p" id="A5.T9.4.15.2.1.1"><span class="ltx_text" id="A5.T9.4.15.2.1.1.1" style="font-size:90%;">38.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.15.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.15.3.1">
<span class="ltx_p" id="A5.T9.4.15.3.1.1"><span class="ltx_text" id="A5.T9.4.15.3.1.1.1" style="font-size:90%;">82.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.15.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.15.4.1">
<span class="ltx_p" id="A5.T9.4.15.4.1.1"><span class="ltx_text" id="A5.T9.4.15.4.1.1.1" style="font-size:90%;">42.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.15.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.15.5.1">
<span class="ltx_p" id="A5.T9.4.15.5.1.1"><span class="ltx_text" id="A5.T9.4.15.5.1.1.1" style="font-size:90%;">81.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.15.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.15.6.1">
<span class="ltx_p" id="A5.T9.4.15.6.1.1"><span class="ltx_text" id="A5.T9.4.15.6.1.1.1" style="font-size:90%;">19.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.15.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.15.7.1">
<span class="ltx_p" id="A5.T9.4.15.7.1.1"><span class="ltx_text" id="A5.T9.4.15.7.1.1.1" style="font-size:90%;">81.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.15.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.15.8.1">
<span class="ltx_p" id="A5.T9.4.15.8.1.1"><span class="ltx_text" id="A5.T9.4.15.8.1.1.1" style="font-size:90%;">23.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.15.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.15.9.1">
<span class="ltx_p" id="A5.T9.4.15.9.1.1"><span class="ltx_text" id="A5.T9.4.15.9.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.4.16.1"><span class="ltx_text" id="A5.T9.4.16.1.1" style="font-size:90%;">F-0.4B (ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.16.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.16.2.1">
<span class="ltx_p" id="A5.T9.4.16.2.1.1"><span class="ltx_text" id="A5.T9.4.16.2.1.1.1" style="font-size:90%;">34.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.16.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.16.3.1">
<span class="ltx_p" id="A5.T9.4.16.3.1.1"><span class="ltx_text" id="A5.T9.4.16.3.1.1.1" style="font-size:90%;">77.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.16.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.16.4.1">
<span class="ltx_p" id="A5.T9.4.16.4.1.1"><span class="ltx_text" id="A5.T9.4.16.4.1.1.1" style="font-size:90%;">31.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.16.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.16.5.1">
<span class="ltx_p" id="A5.T9.4.16.5.1.1"><span class="ltx_text" id="A5.T9.4.16.5.1.1.1" style="font-size:90%;">76.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.16.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.16.6.1">
<span class="ltx_p" id="A5.T9.4.16.6.1.1"><span class="ltx_text" id="A5.T9.4.16.6.1.1.1" style="font-size:90%;">12.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.16.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.16.7.1">
<span class="ltx_p" id="A5.T9.4.16.7.1.1"><span class="ltx_text" id="A5.T9.4.16.7.1.1.1" style="font-size:90%;">71.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.16.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.16.8.1">
<span class="ltx_p" id="A5.T9.4.16.8.1.1"><span class="ltx_text" id="A5.T9.4.16.8.1.1.1" style="font-size:90%;">26.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T9.4.16.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.16.9.1">
<span class="ltx_p" id="A5.T9.4.16.9.1.1"><span class="ltx_text" id="A5.T9.4.16.9.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.17">
<td class="ltx_td ltx_align_left" id="A5.T9.4.17.1">
<span class="ltx_text" id="A5.T9.4.17.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T9.4.17.1.2" style="font-size:90%;">100K</span><span class="ltx_text" id="A5.T9.4.17.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.17.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.17.2.1">
<span class="ltx_p" id="A5.T9.4.17.2.1.1"><span class="ltx_text" id="A5.T9.4.17.2.1.1.1" style="font-size:90%;">37.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.17.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.17.3.1">
<span class="ltx_p" id="A5.T9.4.17.3.1.1"><span class="ltx_text" id="A5.T9.4.17.3.1.1.1" style="font-size:90%;">80.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.17.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.17.4.1">
<span class="ltx_p" id="A5.T9.4.17.4.1.1"><span class="ltx_text" id="A5.T9.4.17.4.1.1.1" style="font-size:90%;">37.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.17.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.17.5.1">
<span class="ltx_p" id="A5.T9.4.17.5.1.1"><span class="ltx_text" id="A5.T9.4.17.5.1.1.1" style="font-size:90%;">78.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.17.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.17.6.1">
<span class="ltx_p" id="A5.T9.4.17.6.1.1"><span class="ltx_text" id="A5.T9.4.17.6.1.1.1" style="font-size:90%;">16.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.17.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.17.7.1">
<span class="ltx_p" id="A5.T9.4.17.7.1.1"><span class="ltx_text" id="A5.T9.4.17.7.1.1.1" style="font-size:90%;">77.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.17.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.17.8.1">
<span class="ltx_p" id="A5.T9.4.17.8.1.1"><span class="ltx_text" id="A5.T9.4.17.8.1.1.1" style="font-size:90%;">27.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.17.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.17.9.1">
<span class="ltx_p" id="A5.T9.4.17.9.1.1"><span class="ltx_text" id="A5.T9.4.17.9.1.1.1" style="font-size:90%;">77.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.18">
<td class="ltx_td ltx_align_left" id="A5.T9.4.18.1"><span class="ltx_text" id="A5.T9.4.18.1.1" style="font-size:90%;">F-1.0B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.18.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.18.2.1">
<span class="ltx_p" id="A5.T9.4.18.2.1.1"><span class="ltx_text" id="A5.T9.4.18.2.1.1.1" style="font-size:90%;">35.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.18.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.18.3.1">
<span class="ltx_p" id="A5.T9.4.18.3.1.1"><span class="ltx_text" id="A5.T9.4.18.3.1.1.1" style="font-size:90%;">78.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.18.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.18.4.1">
<span class="ltx_p" id="A5.T9.4.18.4.1.1"><span class="ltx_text" id="A5.T9.4.18.4.1.1.1" style="font-size:90%;">32.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.18.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.18.5.1">
<span class="ltx_p" id="A5.T9.4.18.5.1.1"><span class="ltx_text" id="A5.T9.4.18.5.1.1.1" style="font-size:90%;">77.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.18.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.18.6.1">
<span class="ltx_p" id="A5.T9.4.18.6.1.1"><span class="ltx_text" id="A5.T9.4.18.6.1.1.1" style="font-size:90%;">14.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.18.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.18.7.1">
<span class="ltx_p" id="A5.T9.4.18.7.1.1"><span class="ltx_text" id="A5.T9.4.18.7.1.1.1" style="font-size:90%;">75.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.18.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.18.8.1">
<span class="ltx_p" id="A5.T9.4.18.8.1.1"><span class="ltx_text" id="A5.T9.4.18.8.1.1.1" style="font-size:90%;">26.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.18.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.18.9.1">
<span class="ltx_p" id="A5.T9.4.18.9.1.1"><span class="ltx_text" id="A5.T9.4.18.9.1.1.1" style="font-size:90%;">77.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.19">
<td class="ltx_td ltx_align_left" id="A5.T9.4.19.1"><span class="ltx_text" id="A5.T9.4.19.1.1" style="font-size:90%;">F-3.5B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.19.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.19.2.1">
<span class="ltx_p" id="A5.T9.4.19.2.1.1"><span class="ltx_text" id="A5.T9.4.19.2.1.1.1" style="font-size:90%;">36.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.19.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.19.3.1">
<span class="ltx_p" id="A5.T9.4.19.3.1.1"><span class="ltx_text" id="A5.T9.4.19.3.1.1.1" style="font-size:90%;">80.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.19.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.19.4.1">
<span class="ltx_p" id="A5.T9.4.19.4.1.1"><span class="ltx_text" id="A5.T9.4.19.4.1.1.1" style="font-size:90%;">36.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.19.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.19.5.1">
<span class="ltx_p" id="A5.T9.4.19.5.1.1"><span class="ltx_text" id="A5.T9.4.19.5.1.1.1" style="font-size:90%;">78.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.19.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.19.6.1">
<span class="ltx_p" id="A5.T9.4.19.6.1.1"><span class="ltx_text" id="A5.T9.4.19.6.1.1.1" style="font-size:90%;">14.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.19.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.19.7.1">
<span class="ltx_p" id="A5.T9.4.19.7.1.1"><span class="ltx_text" id="A5.T9.4.19.7.1.1.1" style="font-size:90%;">79.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.19.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.19.8.1">
<span class="ltx_p" id="A5.T9.4.19.8.1.1"><span class="ltx_text" id="A5.T9.4.19.8.1.1.1" style="font-size:90%;">26.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.19.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.19.9.1">
<span class="ltx_p" id="A5.T9.4.19.9.1.1"><span class="ltx_text" id="A5.T9.4.19.9.1.1.1" style="font-size:90%;">77.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.20">
<td class="ltx_td ltx_align_left" id="A5.T9.4.20.1"><span class="ltx_text" id="A5.T9.4.20.1.1" style="font-size:90%;">F-11.2B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.20.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.20.2.1">
<span class="ltx_p" id="A5.T9.4.20.2.1.1"><span class="ltx_text" id="A5.T9.4.20.2.1.1.1" style="font-size:90%;">39.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.20.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.20.3.1">
<span class="ltx_p" id="A5.T9.4.20.3.1.1"><span class="ltx_text" id="A5.T9.4.20.3.1.1.1" style="font-size:90%;">80.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.20.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.20.4.1">
<span class="ltx_p" id="A5.T9.4.20.4.1.1"><span class="ltx_text" id="A5.T9.4.20.4.1.1.1" style="font-size:90%;">37.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.20.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.20.5.1">
<span class="ltx_p" id="A5.T9.4.20.5.1.1"><span class="ltx_text" id="A5.T9.4.20.5.1.1.1" style="font-size:90%;">79.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.20.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.20.6.1">
<span class="ltx_p" id="A5.T9.4.20.6.1.1"><span class="ltx_text" id="A5.T9.4.20.6.1.1.1" style="font-size:90%;">16.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.20.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.20.7.1">
<span class="ltx_p" id="A5.T9.4.20.7.1.1"><span class="ltx_text" id="A5.T9.4.20.7.1.1.1" style="font-size:90%;">79.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.20.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.20.8.1">
<span class="ltx_p" id="A5.T9.4.20.8.1.1"><span class="ltx_text" id="A5.T9.4.20.8.1.1.1" style="font-size:90%;">26.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T9.4.20.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.20.9.1">
<span class="ltx_p" id="A5.T9.4.20.9.1.1"><span class="ltx_text" id="A5.T9.4.20.9.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T9.4.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T9.4.21.1">
<span class="ltx_text" id="A5.T9.4.21.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T9.4.21.1.2" style="font-size:90%;">30K</span><span class="ltx_text" id="A5.T9.4.21.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T9.4.21.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.21.2.1">
<span class="ltx_p" id="A5.T9.4.21.2.1.1"><span class="ltx_text" id="A5.T9.4.21.2.1.1.1" style="font-size:90%;">39.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T9.4.21.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.21.3.1">
<span class="ltx_p" id="A5.T9.4.21.3.1.1"><span class="ltx_text" id="A5.T9.4.21.3.1.1.1" style="font-size:90%;">80.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T9.4.21.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.21.4.1">
<span class="ltx_p" id="A5.T9.4.21.4.1.1"><span class="ltx_text" id="A5.T9.4.21.4.1.1.1" style="font-size:90%;">35.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T9.4.21.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.21.5.1">
<span class="ltx_p" id="A5.T9.4.21.5.1.1"><span class="ltx_text" id="A5.T9.4.21.5.1.1.1" style="font-size:90%;">78.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T9.4.21.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.21.6.1">
<span class="ltx_p" id="A5.T9.4.21.6.1.1"><span class="ltx_text" id="A5.T9.4.21.6.1.1.1" style="font-size:90%;">17.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T9.4.21.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.21.7.1">
<span class="ltx_p" id="A5.T9.4.21.7.1.1"><span class="ltx_text" id="A5.T9.4.21.7.1.1.1" style="font-size:90%;">78.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T9.4.21.8">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.21.8.1">
<span class="ltx_p" id="A5.T9.4.21.8.1.1"><span class="ltx_text" id="A5.T9.4.21.8.1.1.1" style="font-size:90%;">28.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T9.4.21.9">
<span class="ltx_inline-block ltx_align_top" id="A5.T9.4.21.9.1">
<span class="ltx_p" id="A5.T9.4.21.9.1.1"><span class="ltx_text" id="A5.T9.4.21.9.1.1.1" style="font-size:90%;">77.4</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of machine translation experiments conducted on the CoMMuTE dataset [24].  The experiments evaluated the performance of various models, including different versions of the Florenz model family (with varying numbers of parameters and training steps), along with established baselines.  The evaluation metrics used were BLEU (B) and COMET (C22), two common machine translation evaluation scores.  The table shows scores for translations into four different languages: German (De), French (Fr), Russian (Ru), and Chinese (Zh).  The '100K', '30K', and 'ft' notations in the table indicate the training procedure for each model, representing the number of pre-training steps and whether fine-tuning was applied.  This table aims to demonstrate how various factors, such as model size and training methodology, influence the performance of cross-lingual translation.
> <details>
> <summary>read the caption</summary>
> Table 9: Translation results on CoMMuTE [24] reporting BLEU (B) and COMET (C22) metrics for German (De), French (Fr), Russian (Ru), and Chinese (Zh). 100K, 30K, and ft indicate the number of pre-training steps and fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T10.4">
<tr class="ltx_tr" id="A5.T10.4.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T10.4.1.1"><span class="ltx_text ltx_font_bold" id="A5.T10.4.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T10.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.1.2.1">
<span class="ltx_p" id="A5.T10.4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A5.T10.4.1.2.1.1.1" style="font-size:90%;">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T10.4.1.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.1.3.1">
<span class="ltx_p" id="A5.T10.4.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A5.T10.4.1.3.1.1.1" style="font-size:90%;">Fr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T10.4.1.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.1.4.1">
<span class="ltx_p" id="A5.T10.4.1.4.1.1"><span class="ltx_text ltx_font_bold" id="A5.T10.4.1.4.1.1.1" style="font-size:90%;">Ru</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T10.4.1.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.1.5.1">
<span class="ltx_p" id="A5.T10.4.1.5.1.1"><span class="ltx_text ltx_font_bold" id="A5.T10.4.1.5.1.1.1" style="font-size:90%;">Zh</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T10.4.2.1">
<span class="ltx_text" id="A5.T10.4.2.1.1" style="font-size:90%;">MOF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T10.4.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib26" title="">26</a><span class="ltx_text" id="A5.T10.4.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.2.2.1">
<span class="ltx_p" id="A5.T10.4.2.2.1.1"><span class="ltx_text" id="A5.T10.4.2.2.1.1.1" style="font-size:90%;">63.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.2.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.2.3.1">
<span class="ltx_p" id="A5.T10.4.2.3.1.1"><span class="ltx_text" id="A5.T10.4.2.3.1.1.1" style="font-size:90%;">68.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.2.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.2.4.1">
<span class="ltx_p" id="A5.T10.4.2.4.1.1"><span class="ltx_text" id="A5.T10.4.2.4.1.1.1" style="font-size:90%;">67.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.2.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.2.5.1">
<span class="ltx_p" id="A5.T10.4.2.5.1.1"><span class="ltx_text" id="A5.T10.4.2.5.1.1.1" style="font-size:90%;">66.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.3">
<td class="ltx_td ltx_align_left" id="A5.T10.4.3.1">
<span class="ltx_text" id="A5.T10.4.3.1.1" style="font-size:90%;">Baseline-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T10.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T10.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.3.2.1">
<span class="ltx_p" id="A5.T10.4.3.2.1.1"><span class="ltx_text" id="A5.T10.4.3.2.1.1.1" style="font-size:90%;">61.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.3.3.1">
<span class="ltx_p" id="A5.T10.4.3.3.1.1"><span class="ltx_text" id="A5.T10.4.3.3.1.1.1" style="font-size:90%;">62.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.3.4.1">
<span class="ltx_p" id="A5.T10.4.3.4.1.1"><span class="ltx_text" id="A5.T10.4.3.4.1.1.1" style="font-size:90%;">58.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.3.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.3.5.1">
<span class="ltx_p" id="A5.T10.4.3.5.1.1"><span class="ltx_text" id="A5.T10.4.3.5.1.1.1" style="font-size:90%;">62.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T10.4.4.1">
<span class="ltx_text" id="A5.T10.4.4.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T10.4.4.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T10.4.4.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.4.2.1">
<span class="ltx_p" id="A5.T10.4.4.2.1.1"><span class="ltx_text" id="A5.T10.4.4.2.1.1.1" style="font-size:90%;">59.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.4.3.1">
<span class="ltx_p" id="A5.T10.4.4.3.1.1"><span class="ltx_text" id="A5.T10.4.4.3.1.1.1" style="font-size:90%;">55.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.4.4.1">
<span class="ltx_p" id="A5.T10.4.4.4.1.1"><span class="ltx_text" id="A5.T10.4.4.4.1.1.1" style="font-size:90%;">53.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.4.5.1">
<span class="ltx_p" id="A5.T10.4.4.5.1.1"><span class="ltx_text" id="A5.T10.4.4.5.1.1.1" style="font-size:90%;">58.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.5">
<td class="ltx_td ltx_align_left" id="A5.T10.4.5.1">
<span class="ltx_text" id="A5.T10.4.5.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T10.4.5.1.2" style="font-size:90%;">100K ft</span><span class="ltx_text" id="A5.T10.4.5.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.5.2.1">
<span class="ltx_p" id="A5.T10.4.5.2.1.1"><span class="ltx_text" id="A5.T10.4.5.2.1.1.1" style="font-size:90%;">59.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.5.3.1">
<span class="ltx_p" id="A5.T10.4.5.3.1.1"><span class="ltx_text" id="A5.T10.4.5.3.1.1.1" style="font-size:90%;">62.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.5.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.5.4.1">
<span class="ltx_p" id="A5.T10.4.5.4.1.1"><span class="ltx_text" id="A5.T10.4.5.4.1.1.1" style="font-size:90%;">55.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.5.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.5.5.1">
<span class="ltx_p" id="A5.T10.4.5.5.1.1"><span class="ltx_text" id="A5.T10.4.5.5.1.1.1" style="font-size:90%;">61.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.6">
<td class="ltx_td ltx_align_left" id="A5.T10.4.6.1">
<span class="ltx_text" id="A5.T10.4.6.1.1" style="font-size:90%;">F-1.0B </span><span class="ltx_text ltx_font_italic" id="A5.T10.4.6.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T10.4.6.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.6.2.1">
<span class="ltx_p" id="A5.T10.4.6.2.1.1"><span class="ltx_text" id="A5.T10.4.6.2.1.1.1" style="font-size:90%;">59.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.6.3.1">
<span class="ltx_p" id="A5.T10.4.6.3.1.1"><span class="ltx_text" id="A5.T10.4.6.3.1.1.1" style="font-size:90%;">60.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.6.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.6.4.1">
<span class="ltx_p" id="A5.T10.4.6.4.1.1"><span class="ltx_text" id="A5.T10.4.6.4.1.1.1" style="font-size:90%;">55.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.6.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.6.5.1">
<span class="ltx_p" id="A5.T10.4.6.5.1.1"><span class="ltx_text" id="A5.T10.4.6.5.1.1.1" style="font-size:90%;">59.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.7">
<td class="ltx_td ltx_align_left" id="A5.T10.4.7.1">
<span class="ltx_text" id="A5.T10.4.7.1.1" style="font-size:90%;">F-3.5B </span><span class="ltx_text ltx_font_italic" id="A5.T10.4.7.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T10.4.7.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.7.2.1">
<span class="ltx_p" id="A5.T10.4.7.2.1.1"><span class="ltx_text" id="A5.T10.4.7.2.1.1.1" style="font-size:90%;">61.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.7.3.1">
<span class="ltx_p" id="A5.T10.4.7.3.1.1"><span class="ltx_text" id="A5.T10.4.7.3.1.1.1" style="font-size:90%;">65.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.7.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.7.4.1">
<span class="ltx_p" id="A5.T10.4.7.4.1.1"><span class="ltx_text" id="A5.T10.4.7.4.1.1.1" style="font-size:90%;">62.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.7.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.7.5.1">
<span class="ltx_p" id="A5.T10.4.7.5.1.1"><span class="ltx_text" id="A5.T10.4.7.5.1.1.1" style="font-size:90%;">61.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.8">
<td class="ltx_td ltx_align_left" id="A5.T10.4.8.1">
<span class="ltx_text" id="A5.T10.4.8.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T10.4.8.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T10.4.8.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.8.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.8.2.1">
<span class="ltx_p" id="A5.T10.4.8.2.1.1"><span class="ltx_text" id="A5.T10.4.8.2.1.1.1" style="font-size:90%;">62.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.8.3.1">
<span class="ltx_p" id="A5.T10.4.8.3.1.1"><span class="ltx_text" id="A5.T10.4.8.3.1.1.1" style="font-size:90%;">67.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.8.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.8.4.1">
<span class="ltx_p" id="A5.T10.4.8.4.1.1"><span class="ltx_text" id="A5.T10.4.8.4.1.1.1" style="font-size:90%;">63.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.8.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.8.5.1">
<span class="ltx_p" id="A5.T10.4.8.5.1.1"><span class="ltx_text" id="A5.T10.4.8.5.1.1.1" style="font-size:90%;">61.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.9">
<td class="ltx_td ltx_align_left" id="A5.T10.4.9.1">
<span class="ltx_text" id="A5.T10.4.9.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T10.4.9.1.2" style="font-size:90%;">30K ft</span><span class="ltx_text" id="A5.T10.4.9.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.9.2.1">
<span class="ltx_p" id="A5.T10.4.9.2.1.1"><span class="ltx_text" id="A5.T10.4.9.2.1.1.1" style="font-size:90%;">62.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.9.3.1">
<span class="ltx_p" id="A5.T10.4.9.3.1.1"><span class="ltx_text" id="A5.T10.4.9.3.1.1.1" style="font-size:90%;">67.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.9.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.9.4.1">
<span class="ltx_p" id="A5.T10.4.9.4.1.1"><span class="ltx_text" id="A5.T10.4.9.4.1.1.1" style="font-size:90%;">62.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.9.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.9.5.1">
<span class="ltx_p" id="A5.T10.4.9.5.1.1"><span class="ltx_text" id="A5.T10.4.9.5.1.1.1" style="font-size:90%;">61.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T10.4.10.1"><span class="ltx_text" id="A5.T10.4.10.1.1" style="font-size:90%;">F-0.4B (ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.10.2.1">
<span class="ltx_p" id="A5.T10.4.10.2.1.1"><span class="ltx_text" id="A5.T10.4.10.2.1.1.1" style="font-size:90%;">54.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.10.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.10.3.1">
<span class="ltx_p" id="A5.T10.4.10.3.1.1"><span class="ltx_text" id="A5.T10.4.10.3.1.1.1" style="font-size:90%;">53.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.10.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.10.4.1">
<span class="ltx_p" id="A5.T10.4.10.4.1.1"><span class="ltx_text" id="A5.T10.4.10.4.1.1.1" style="font-size:90%;">51.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T10.4.10.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.10.5.1">
<span class="ltx_p" id="A5.T10.4.10.5.1.1"><span class="ltx_text" id="A5.T10.4.10.5.1.1.1" style="font-size:90%;">54.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.11">
<td class="ltx_td ltx_align_left" id="A5.T10.4.11.1">
<span class="ltx_text" id="A5.T10.4.11.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T10.4.11.1.2" style="font-size:90%;">100K</span><span class="ltx_text" id="A5.T10.4.11.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.11.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.11.2.1">
<span class="ltx_p" id="A5.T10.4.11.2.1.1"><span class="ltx_text" id="A5.T10.4.11.2.1.1.1" style="font-size:90%;">54.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.11.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.11.3.1">
<span class="ltx_p" id="A5.T10.4.11.3.1.1"><span class="ltx_text" id="A5.T10.4.11.3.1.1.1" style="font-size:90%;">56.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.11.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.11.4.1">
<span class="ltx_p" id="A5.T10.4.11.4.1.1"><span class="ltx_text" id="A5.T10.4.11.4.1.1.1" style="font-size:90%;">51.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.11.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.11.5.1">
<span class="ltx_p" id="A5.T10.4.11.5.1.1"><span class="ltx_text" id="A5.T10.4.11.5.1.1.1" style="font-size:90%;">54.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.12">
<td class="ltx_td ltx_align_left" id="A5.T10.4.12.1"><span class="ltx_text" id="A5.T10.4.12.1.1" style="font-size:90%;">F-1.0B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.12.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.12.2.1">
<span class="ltx_p" id="A5.T10.4.12.2.1.1"><span class="ltx_text" id="A5.T10.4.12.2.1.1.1" style="font-size:90%;">54.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.12.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.12.3.1">
<span class="ltx_p" id="A5.T10.4.12.3.1.1"><span class="ltx_text" id="A5.T10.4.12.3.1.1.1" style="font-size:90%;">54.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.12.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.12.4.1">
<span class="ltx_p" id="A5.T10.4.12.4.1.1"><span class="ltx_text" id="A5.T10.4.12.4.1.1.1" style="font-size:90%;">51.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.12.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.12.5.1">
<span class="ltx_p" id="A5.T10.4.12.5.1.1"><span class="ltx_text" id="A5.T10.4.12.5.1.1.1" style="font-size:90%;">55.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.13">
<td class="ltx_td ltx_align_left" id="A5.T10.4.13.1"><span class="ltx_text" id="A5.T10.4.13.1.1" style="font-size:90%;">F-3.5B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.13.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.13.2.1">
<span class="ltx_p" id="A5.T10.4.13.2.1.1"><span class="ltx_text" id="A5.T10.4.13.2.1.1.1" style="font-size:90%;">53.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.13.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.13.3.1">
<span class="ltx_p" id="A5.T10.4.13.3.1.1"><span class="ltx_text" id="A5.T10.4.13.3.1.1.1" style="font-size:90%;">54.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.13.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.13.4.1">
<span class="ltx_p" id="A5.T10.4.13.4.1.1"><span class="ltx_text" id="A5.T10.4.13.4.1.1.1" style="font-size:90%;">54.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.13.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.13.5.1">
<span class="ltx_p" id="A5.T10.4.13.5.1.1"><span class="ltx_text" id="A5.T10.4.13.5.1.1.1" style="font-size:90%;">55.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.14">
<td class="ltx_td ltx_align_left" id="A5.T10.4.14.1"><span class="ltx_text" id="A5.T10.4.14.1.1" style="font-size:90%;">F-11.2B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.14.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.14.2.1">
<span class="ltx_p" id="A5.T10.4.14.2.1.1"><span class="ltx_text" id="A5.T10.4.14.2.1.1.1" style="font-size:90%;">52.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.14.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.14.3.1">
<span class="ltx_p" id="A5.T10.4.14.3.1.1"><span class="ltx_text" id="A5.T10.4.14.3.1.1.1" style="font-size:90%;">52.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.14.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.14.4.1">
<span class="ltx_p" id="A5.T10.4.14.4.1.1"><span class="ltx_text" id="A5.T10.4.14.4.1.1.1" style="font-size:90%;">54.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T10.4.14.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.14.5.1">
<span class="ltx_p" id="A5.T10.4.14.5.1.1"><span class="ltx_text" id="A5.T10.4.14.5.1.1.1" style="font-size:90%;">54.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.4.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T10.4.15.1">
<span class="ltx_text" id="A5.T10.4.15.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T10.4.15.1.2" style="font-size:90%;">30K</span><span class="ltx_text" id="A5.T10.4.15.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T10.4.15.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.15.2.1">
<span class="ltx_p" id="A5.T10.4.15.2.1.1"><span class="ltx_text" id="A5.T10.4.15.2.1.1.1" style="font-size:90%;">52.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T10.4.15.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.15.3.1">
<span class="ltx_p" id="A5.T10.4.15.3.1.1"><span class="ltx_text" id="A5.T10.4.15.3.1.1.1" style="font-size:90%;">54.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T10.4.15.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.15.4.1">
<span class="ltx_p" id="A5.T10.4.15.4.1.1"><span class="ltx_text" id="A5.T10.4.15.4.1.1.1" style="font-size:90%;">52.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T10.4.15.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.4.15.5.1">
<span class="ltx_p" id="A5.T10.4.15.5.1.1"><span class="ltx_text" id="A5.T10.4.15.5.1.1.1" style="font-size:90%;">53.4</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents the accuracy (in percentage) achieved in binary disambiguation tasks using the CoMMuTE dataset [24].  The experiment focuses on English-to-X translation, where 'X' represents various languages. The table showcases the performance of different Florenz models (with varying parameter counts and training stages) on this task.  The '100K', '30K', and 'ft' notations in the table indicate the number of pre-training steps conducted on the model, and whether fine-tuning was applied, respectively.  This allows for an analysis of the influence of both model scale and training procedures on the disambiguation task's success.
> <details>
> <summary>read the caption</summary>
> Table 10: Binary disambiguation results on CoMMuTE [24] (accuracy in %) for the En→→\rightarrow→X translation setting. 100K, 30K, and ft indicate the number of pre-training steps and fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T11.2">
<tr class="ltx_tr" id="A5.T11.2.1">
<td class="ltx_td ltx_border_tt" id="A5.T11.2.1.1"></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T11.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.1.2.1">
<span class="ltx_p" id="A5.T11.2.1.2.1.1"><span class="ltx_text" id="A5.T11.2.1.2.1.1.1" style="font-size:90%;">B@4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T11.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.1.3.1">
<span class="ltx_p" id="A5.T11.2.1.3.1.1"><span class="ltx_text" id="A5.T11.2.1.3.1.1.1" style="font-size:90%;">C</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T11.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.1.4.1">
<span class="ltx_p" id="A5.T11.2.1.4.1.1"><span class="ltx_text" id="A5.T11.2.1.4.1.1.1" style="font-size:90%;">CS</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A5.T11.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A5.T11.2.2.1.1" style="font-size:90%;">supervised</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T11.2.3.1">
<span class="ltx_text" id="A5.T11.2.3.1.1" style="font-size:90%;">PaliGemma-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T11.2.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T11.2.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.3.2.1">
<span class="ltx_p" id="A5.T11.2.3.2.1.1"><span class="ltx_text" id="A5.T11.2.3.2.1.1.1" style="font-size:90%;">41.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.3.3.1">
<span class="ltx_p" id="A5.T11.2.3.3.1.1"><span class="ltx_text" id="A5.T11.2.3.3.1.1.1" style="font-size:90%;">141.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.3.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.3.4.1">
<span class="ltx_p" id="A5.T11.2.3.4.1.1"><span class="ltx_text" id="A5.T11.2.3.4.1.1.1" style="font-size:90%;">77.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.4">
<td class="ltx_td ltx_align_left" id="A5.T11.2.4.1">
<span class="ltx_text" id="A5.T11.2.4.1.1" style="font-size:90%;">Florence-2-base </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T11.2.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib69" title="">69</a><span class="ltx_text" id="A5.T11.2.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.4.2"></td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.4.3.1">
<span class="ltx_p" id="A5.T11.2.4.3.1.1"><span class="ltx_text" id="A5.T11.2.4.3.1.1.1" style="font-size:90%;">140.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.4.4"></td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.5">
<td class="ltx_td ltx_align_left" id="A5.T11.2.5.1">
<span class="ltx_text" id="A5.T11.2.5.1.1" style="font-size:90%;">Florence-2-large </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T11.2.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib69" title="">69</a><span class="ltx_text" id="A5.T11.2.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.5.2"></td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.5.3.1">
<span class="ltx_p" id="A5.T11.2.5.3.1.1"><span class="ltx_text" id="A5.T11.2.5.3.1.1.1" style="font-size:90%;">143.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.5.4"></td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.6">
<td class="ltx_td ltx_align_left" id="A5.T11.2.6.1">
<span class="ltx_text" id="A5.T11.2.6.1.1" style="font-size:90%;">Baseline-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T11.2.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T11.2.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.6.2.1">
<span class="ltx_p" id="A5.T11.2.6.2.1.1"><span class="ltx_text" id="A5.T11.2.6.2.1.1.1" style="font-size:90%;">42.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.6.3.1">
<span class="ltx_p" id="A5.T11.2.6.3.1.1"><span class="ltx_text" id="A5.T11.2.6.3.1.1.1" style="font-size:90%;">145.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.6.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.6.4.1">
<span class="ltx_p" id="A5.T11.2.6.4.1.1"><span class="ltx_text" id="A5.T11.2.6.4.1.1.1" style="font-size:90%;">76.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T11.2.7.1">
<span class="ltx_text" id="A5.T11.2.7.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T11.2.7.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T11.2.7.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.7.2.1">
<span class="ltx_p" id="A5.T11.2.7.2.1.1"><span class="ltx_text" id="A5.T11.2.7.2.1.1.1" style="font-size:90%;">40.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.7.3.1">
<span class="ltx_p" id="A5.T11.2.7.3.1.1"><span class="ltx_text" id="A5.T11.2.7.3.1.1.1" style="font-size:90%;">138.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.7.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.7.4.1">
<span class="ltx_p" id="A5.T11.2.7.4.1.1"><span class="ltx_text" id="A5.T11.2.7.4.1.1.1" style="font-size:90%;">76.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.8">
<td class="ltx_td ltx_align_left" id="A5.T11.2.8.1">
<span class="ltx_text" id="A5.T11.2.8.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T11.2.8.1.2" style="font-size:90%;">100K ft</span><span class="ltx_text" id="A5.T11.2.8.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.8.2.1">
<span class="ltx_p" id="A5.T11.2.8.2.1.1"><span class="ltx_text" id="A5.T11.2.8.2.1.1.1" style="font-size:90%;">41.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.8.3.1">
<span class="ltx_p" id="A5.T11.2.8.3.1.1"><span class="ltx_text" id="A5.T11.2.8.3.1.1.1" style="font-size:90%;">140.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.8.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.8.4.1">
<span class="ltx_p" id="A5.T11.2.8.4.1.1"><span class="ltx_text" id="A5.T11.2.8.4.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.9">
<td class="ltx_td ltx_align_left" id="A5.T11.2.9.1">
<span class="ltx_text" id="A5.T11.2.9.1.1" style="font-size:90%;">F-1.0B </span><span class="ltx_text ltx_font_italic" id="A5.T11.2.9.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T11.2.9.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.9.2.1">
<span class="ltx_p" id="A5.T11.2.9.2.1.1"><span class="ltx_text" id="A5.T11.2.9.2.1.1.1" style="font-size:90%;">41.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.9.3.1">
<span class="ltx_p" id="A5.T11.2.9.3.1.1"><span class="ltx_text" id="A5.T11.2.9.3.1.1.1" style="font-size:90%;">142.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.9.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.9.4.1">
<span class="ltx_p" id="A5.T11.2.9.4.1.1"><span class="ltx_text" id="A5.T11.2.9.4.1.1.1" style="font-size:90%;">77.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.10">
<td class="ltx_td ltx_align_left" id="A5.T11.2.10.1">
<span class="ltx_text" id="A5.T11.2.10.1.1" style="font-size:90%;">F-3.5B </span><span class="ltx_text ltx_font_italic" id="A5.T11.2.10.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T11.2.10.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.10.2.1">
<span class="ltx_p" id="A5.T11.2.10.2.1.1"><span class="ltx_text" id="A5.T11.2.10.2.1.1.1" style="font-size:90%;">41.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.10.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.10.3.1">
<span class="ltx_p" id="A5.T11.2.10.3.1.1"><span class="ltx_text" id="A5.T11.2.10.3.1.1.1" style="font-size:90%;">141.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.10.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.10.4.1">
<span class="ltx_p" id="A5.T11.2.10.4.1.1"><span class="ltx_text" id="A5.T11.2.10.4.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.11">
<td class="ltx_td ltx_align_left" id="A5.T11.2.11.1">
<span class="ltx_text" id="A5.T11.2.11.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T11.2.11.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T11.2.11.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.11.2.1">
<span class="ltx_p" id="A5.T11.2.11.2.1.1"><span class="ltx_text" id="A5.T11.2.11.2.1.1.1" style="font-size:90%;">41.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.11.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.11.3.1">
<span class="ltx_p" id="A5.T11.2.11.3.1.1"><span class="ltx_text" id="A5.T11.2.11.3.1.1.1" style="font-size:90%;">141.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.11.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.11.4.1">
<span class="ltx_p" id="A5.T11.2.11.4.1.1"><span class="ltx_text" id="A5.T11.2.11.4.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.12">
<td class="ltx_td ltx_align_left" id="A5.T11.2.12.1">
<span class="ltx_text" id="A5.T11.2.12.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T11.2.12.1.2" style="font-size:90%;">30K ft</span><span class="ltx_text" id="A5.T11.2.12.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.12.2.1">
<span class="ltx_p" id="A5.T11.2.12.2.1.1"><span class="ltx_text" id="A5.T11.2.12.2.1.1.1" style="font-size:90%;">41.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.12.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.12.3.1">
<span class="ltx_p" id="A5.T11.2.12.3.1.1"><span class="ltx_text" id="A5.T11.2.12.3.1.1.1" style="font-size:90%;">140.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.12.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.12.4.1">
<span class="ltx_p" id="A5.T11.2.12.4.1.1"><span class="ltx_text" id="A5.T11.2.12.4.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A5.T11.2.13.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A5.T11.2.13.1.1" style="font-size:90%;">zero-shot</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T11.2.14.1"><span class="ltx_text" id="A5.T11.2.14.1.1" style="font-size:90%;">Florence-2-base</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.14.2.1">
<span class="ltx_p" id="A5.T11.2.14.2.1.1"><span class="ltx_text" id="A5.T11.2.14.2.1.1.1" style="font-size:90%;">37.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.14.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.14.3.1">
<span class="ltx_p" id="A5.T11.2.14.3.1.1"><span class="ltx_text" id="A5.T11.2.14.3.1.1.1" style="font-size:90%;">132.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.14.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.14.4.1">
<span class="ltx_p" id="A5.T11.2.14.4.1.1"><span class="ltx_text" id="A5.T11.2.14.4.1.1.1" style="font-size:90%;">77.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.15">
<td class="ltx_td ltx_align_left" id="A5.T11.2.15.1"><span class="ltx_text" id="A5.T11.2.15.1.1" style="font-size:90%;">Florence-2-large</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.15.2.1">
<span class="ltx_p" id="A5.T11.2.15.2.1.1"><span class="ltx_text" id="A5.T11.2.15.2.1.1.1" style="font-size:90%;">38.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.15.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.15.3.1">
<span class="ltx_p" id="A5.T11.2.15.3.1.1"><span class="ltx_text" id="A5.T11.2.15.3.1.1.1" style="font-size:90%;">135.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.15.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.15.4.1">
<span class="ltx_p" id="A5.T11.2.15.4.1.1"><span class="ltx_text" id="A5.T11.2.15.4.1.1.1" style="font-size:90%;">77.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T11.2.16.1"><span class="ltx_text" id="A5.T11.2.16.1.1" style="font-size:90%;">F-0.4B (ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.16.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.16.2.1">
<span class="ltx_p" id="A5.T11.2.16.2.1.1"><span class="ltx_text" id="A5.T11.2.16.2.1.1.1" style="font-size:90%;">13.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.16.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.16.3.1">
<span class="ltx_p" id="A5.T11.2.16.3.1.1"><span class="ltx_text" id="A5.T11.2.16.3.1.1.1" style="font-size:90%;">28.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T11.2.16.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.16.4.1">
<span class="ltx_p" id="A5.T11.2.16.4.1.1"><span class="ltx_text" id="A5.T11.2.16.4.1.1.1" style="font-size:90%;">77.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.17">
<td class="ltx_td ltx_align_left" id="A5.T11.2.17.1">
<span class="ltx_text" id="A5.T11.2.17.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T11.2.17.1.2" style="font-size:90%;">100K</span><span class="ltx_text" id="A5.T11.2.17.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.17.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.17.2.1">
<span class="ltx_p" id="A5.T11.2.17.2.1.1"><span class="ltx_text" id="A5.T11.2.17.2.1.1.1" style="font-size:90%;">12.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.17.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.17.3.1">
<span class="ltx_p" id="A5.T11.2.17.3.1.1"><span class="ltx_text" id="A5.T11.2.17.3.1.1.1" style="font-size:90%;">27.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.17.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.17.4.1">
<span class="ltx_p" id="A5.T11.2.17.4.1.1"><span class="ltx_text" id="A5.T11.2.17.4.1.1.1" style="font-size:90%;">77.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.18">
<td class="ltx_td ltx_align_left" id="A5.T11.2.18.1"><span class="ltx_text" id="A5.T11.2.18.1.1" style="font-size:90%;">F-1.0B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.18.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.18.2.1">
<span class="ltx_p" id="A5.T11.2.18.2.1.1"><span class="ltx_text" id="A5.T11.2.18.2.1.1.1" style="font-size:90%;">12.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.18.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.18.3.1">
<span class="ltx_p" id="A5.T11.2.18.3.1.1"><span class="ltx_text" id="A5.T11.2.18.3.1.1.1" style="font-size:90%;">21.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.18.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.18.4.1">
<span class="ltx_p" id="A5.T11.2.18.4.1.1"><span class="ltx_text" id="A5.T11.2.18.4.1.1.1" style="font-size:90%;">79.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.19">
<td class="ltx_td ltx_align_left" id="A5.T11.2.19.1"><span class="ltx_text" id="A5.T11.2.19.1.1" style="font-size:90%;">F-3.5B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.19.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.19.2.1">
<span class="ltx_p" id="A5.T11.2.19.2.1.1"><span class="ltx_text" id="A5.T11.2.19.2.1.1.1" style="font-size:90%;">13.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.19.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.19.3.1">
<span class="ltx_p" id="A5.T11.2.19.3.1.1"><span class="ltx_text" id="A5.T11.2.19.3.1.1.1" style="font-size:90%;">28.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.19.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.19.4.1">
<span class="ltx_p" id="A5.T11.2.19.4.1.1"><span class="ltx_text" id="A5.T11.2.19.4.1.1.1" style="font-size:90%;">78.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.20">
<td class="ltx_td ltx_align_left" id="A5.T11.2.20.1"><span class="ltx_text" id="A5.T11.2.20.1.1" style="font-size:90%;">F-11.2B (ours)</span></td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.20.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.20.2.1">
<span class="ltx_p" id="A5.T11.2.20.2.1.1"><span class="ltx_text" id="A5.T11.2.20.2.1.1.1" style="font-size:90%;">13.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.20.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.20.3.1">
<span class="ltx_p" id="A5.T11.2.20.3.1.1"><span class="ltx_text" id="A5.T11.2.20.3.1.1.1" style="font-size:90%;">30.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T11.2.20.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.20.4.1">
<span class="ltx_p" id="A5.T11.2.20.4.1.1"><span class="ltx_text" id="A5.T11.2.20.4.1.1.1" style="font-size:90%;">78.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.2.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T11.2.21.1">
<span class="ltx_text" id="A5.T11.2.21.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T11.2.21.1.2" style="font-size:90%;">30K</span><span class="ltx_text" id="A5.T11.2.21.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T11.2.21.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.21.2.1">
<span class="ltx_p" id="A5.T11.2.21.2.1.1"><span class="ltx_text" id="A5.T11.2.21.2.1.1.1" style="font-size:90%;">15.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T11.2.21.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.21.3.1">
<span class="ltx_p" id="A5.T11.2.21.3.1.1"><span class="ltx_text" id="A5.T11.2.21.3.1.1.1" style="font-size:90%;">24.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T11.2.21.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.2.21.4.1">
<span class="ltx_p" id="A5.T11.2.21.4.1.1"><span class="ltx_text" id="A5.T11.2.21.4.1.1.1" style="font-size:90%;">79.2</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various models on the COCO Karpathy image captioning benchmark.  The benchmark uses English captions.  The results are reported using three metrics: BLEU-4 (B@4), CIDEr (C), and CLIPScore (CS). The table compares several models, including the Florence model family (with different parameter sizes and training/fine-tuning configurations), other state-of-the-art models (such as PaliGemma and Baseline-6B), and also shows results with and without fine-tuning.  The numbers 100K, 30K, and 'ft' in the table indicate the number of pre-training steps and whether fine-tuning was performed. This allows for a comprehensive comparison of model performance across different scales and training strategies.
> <details>
> <summary>read the caption</summary>
> Table 11: Image captioning results on COCO Karpathy [9, 36] test split for English reporting the metrics BLEU-4 (B@4), CIDEr (C) and CLIPScore (CS). 100K, 30K, and ft indicate the number of pre-training steps and fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T12.2">
<tr class="ltx_tr" id="A5.T12.2.1">
<td class="ltx_td ltx_border_tt" id="A5.T12.2.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A5.T12.2.1.2"><span class="ltx_text ltx_font_bold" id="A5.T12.2.1.2.1" style="font-size:90%;">En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A5.T12.2.1.3"><span class="ltx_text ltx_font_bold" id="A5.T12.2.1.3.1" style="font-size:90%;">De</span></td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.2">
<td class="ltx_td" id="A5.T12.2.2.1"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.2.1">
<span class="ltx_p" id="A5.T12.2.2.2.1.1"><span class="ltx_text" id="A5.T12.2.2.2.1.1.1" style="font-size:90%;">B@4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.3.1">
<span class="ltx_p" id="A5.T12.2.2.3.1.1"><span class="ltx_text" id="A5.T12.2.2.3.1.1.1" style="font-size:90%;">C</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.4.1">
<span class="ltx_p" id="A5.T12.2.2.4.1.1"><span class="ltx_text" id="A5.T12.2.2.4.1.1.1" style="font-size:90%;">CS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.5.1">
<span class="ltx_p" id="A5.T12.2.2.5.1.1"><span class="ltx_text" id="A5.T12.2.2.5.1.1.1" style="font-size:90%;">B@4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.6.1">
<span class="ltx_p" id="A5.T12.2.2.6.1.1"><span class="ltx_text" id="A5.T12.2.2.6.1.1.1" style="font-size:90%;">C</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.2.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.7.1">
<span class="ltx_p" id="A5.T12.2.2.7.1.1"><span class="ltx_text" id="A5.T12.2.2.7.1.1.1" style="font-size:90%;">MCS</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T12.2.3.1">
<span class="ltx_text" id="A5.T12.2.3.1.1" style="font-size:90%;">PaliGemma-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T12.2.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T12.2.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.2.1">
<span class="ltx_p" id="A5.T12.2.3.2.1.1"><span class="ltx_text" id="A5.T12.2.3.2.1.1.1" style="font-size:90%;">33.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.3.1">
<span class="ltx_p" id="A5.T12.2.3.3.1.1"><span class="ltx_text" id="A5.T12.2.3.3.1.1.1" style="font-size:90%;">88.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.3.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.4.1">
<span class="ltx_p" id="A5.T12.2.3.4.1.1"><span class="ltx_text" id="A5.T12.2.3.4.1.1.1" style="font-size:90%;">77.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.3.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.5.1">
<span class="ltx_p" id="A5.T12.2.3.5.1.1"><span class="ltx_text" id="A5.T12.2.3.5.1.1.1" style="font-size:90%;">17.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.3.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.6.1">
<span class="ltx_p" id="A5.T12.2.3.6.1.1"><span class="ltx_text" id="A5.T12.2.3.6.1.1.1" style="font-size:90%;">57.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.3.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.7.1">
<span class="ltx_p" id="A5.T12.2.3.7.1.1"><span class="ltx_text" id="A5.T12.2.3.7.1.1.1" style="font-size:90%;">79.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.4">
<td class="ltx_td ltx_align_left" id="A5.T12.2.4.1">
<span class="ltx_text" id="A5.T12.2.4.1.1" style="font-size:90%;">Baseline-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T12.2.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T12.2.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.2.1">
<span class="ltx_p" id="A5.T12.2.4.2.1.1"><span class="ltx_text" id="A5.T12.2.4.2.1.1.1" style="font-size:90%;">31.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.3.1">
<span class="ltx_p" id="A5.T12.2.4.3.1.1"><span class="ltx_text" id="A5.T12.2.4.3.1.1.1" style="font-size:90%;">84.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.4.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.4.1">
<span class="ltx_p" id="A5.T12.2.4.4.1.1"><span class="ltx_text" id="A5.T12.2.4.4.1.1.1" style="font-size:90%;">76.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.4.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.5.1">
<span class="ltx_p" id="A5.T12.2.4.5.1.1"><span class="ltx_text" id="A5.T12.2.4.5.1.1.1" style="font-size:90%;">15.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.4.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.6.1">
<span class="ltx_p" id="A5.T12.2.4.6.1.1"><span class="ltx_text" id="A5.T12.2.4.6.1.1.1" style="font-size:90%;">50.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.4.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.7.1">
<span class="ltx_p" id="A5.T12.2.4.7.1.1"><span class="ltx_text" id="A5.T12.2.4.7.1.1.1" style="font-size:90%;">80.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T12.2.5.1">
<span class="ltx_text" id="A5.T12.2.5.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T12.2.5.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T12.2.5.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.2.1">
<span class="ltx_p" id="A5.T12.2.5.2.1.1"><span class="ltx_text" id="A5.T12.2.5.2.1.1.1" style="font-size:90%;">28.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.3.1">
<span class="ltx_p" id="A5.T12.2.5.3.1.1"><span class="ltx_text" id="A5.T12.2.5.3.1.1.1" style="font-size:90%;">76.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.5.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.4.1">
<span class="ltx_p" id="A5.T12.2.5.4.1.1"><span class="ltx_text" id="A5.T12.2.5.4.1.1.1" style="font-size:90%;">75.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.5.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.5.1">
<span class="ltx_p" id="A5.T12.2.5.5.1.1"><span class="ltx_text" id="A5.T12.2.5.5.1.1.1" style="font-size:90%;">28.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.5.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.6.1">
<span class="ltx_p" id="A5.T12.2.5.6.1.1"><span class="ltx_text" id="A5.T12.2.5.6.1.1.1" style="font-size:90%;">77.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T12.2.5.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.7.1">
<span class="ltx_p" id="A5.T12.2.5.7.1.1"><span class="ltx_text" id="A5.T12.2.5.7.1.1.1" style="font-size:90%;">80.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.6">
<td class="ltx_td ltx_align_left" id="A5.T12.2.6.1">
<span class="ltx_text" id="A5.T12.2.6.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T12.2.6.1.2" style="font-size:90%;">100K ft</span><span class="ltx_text" id="A5.T12.2.6.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.2.1">
<span class="ltx_p" id="A5.T12.2.6.2.1.1"><span class="ltx_text" id="A5.T12.2.6.2.1.1.1" style="font-size:90%;">30.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.3.1">
<span class="ltx_p" id="A5.T12.2.6.3.1.1"><span class="ltx_text" id="A5.T12.2.6.3.1.1.1" style="font-size:90%;">79.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.6.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.4.1">
<span class="ltx_p" id="A5.T12.2.6.4.1.1"><span class="ltx_text" id="A5.T12.2.6.4.1.1.1" style="font-size:90%;">76.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.6.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.5.1">
<span class="ltx_p" id="A5.T12.2.6.5.1.1"><span class="ltx_text" id="A5.T12.2.6.5.1.1.1" style="font-size:90%;">28.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.6.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.6.1">
<span class="ltx_p" id="A5.T12.2.6.6.1.1"><span class="ltx_text" id="A5.T12.2.6.6.1.1.1" style="font-size:90%;">79.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.6.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.7.1">
<span class="ltx_p" id="A5.T12.2.6.7.1.1"><span class="ltx_text" id="A5.T12.2.6.7.1.1.1" style="font-size:90%;">81.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.7">
<td class="ltx_td ltx_align_left" id="A5.T12.2.7.1">
<span class="ltx_text" id="A5.T12.2.7.1.1" style="font-size:90%;">F-1.0B </span><span class="ltx_text ltx_font_italic" id="A5.T12.2.7.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T12.2.7.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.2.1">
<span class="ltx_p" id="A5.T12.2.7.2.1.1"><span class="ltx_text" id="A5.T12.2.7.2.1.1.1" style="font-size:90%;">30.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.3.1">
<span class="ltx_p" id="A5.T12.2.7.3.1.1"><span class="ltx_text" id="A5.T12.2.7.3.1.1.1" style="font-size:90%;">85.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.7.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.4.1">
<span class="ltx_p" id="A5.T12.2.7.4.1.1"><span class="ltx_text" id="A5.T12.2.7.4.1.1.1" style="font-size:90%;">77.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.7.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.5.1">
<span class="ltx_p" id="A5.T12.2.7.5.1.1"><span class="ltx_text" id="A5.T12.2.7.5.1.1.1" style="font-size:90%;">28.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.7.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.6.1">
<span class="ltx_p" id="A5.T12.2.7.6.1.1"><span class="ltx_text" id="A5.T12.2.7.6.1.1.1" style="font-size:90%;">82.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.7.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.7.1">
<span class="ltx_p" id="A5.T12.2.7.7.1.1"><span class="ltx_text" id="A5.T12.2.7.7.1.1.1" style="font-size:90%;">82.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.8">
<td class="ltx_td ltx_align_left" id="A5.T12.2.8.1">
<span class="ltx_text" id="A5.T12.2.8.1.1" style="font-size:90%;">F-3.5B </span><span class="ltx_text ltx_font_italic" id="A5.T12.2.8.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T12.2.8.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.2.1">
<span class="ltx_p" id="A5.T12.2.8.2.1.1"><span class="ltx_text" id="A5.T12.2.8.2.1.1.1" style="font-size:90%;">29.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.3.1">
<span class="ltx_p" id="A5.T12.2.8.3.1.1"><span class="ltx_text" id="A5.T12.2.8.3.1.1.1" style="font-size:90%;">81.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.8.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.4.1">
<span class="ltx_p" id="A5.T12.2.8.4.1.1"><span class="ltx_text" id="A5.T12.2.8.4.1.1.1" style="font-size:90%;">76.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.8.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.5.1">
<span class="ltx_p" id="A5.T12.2.8.5.1.1"><span class="ltx_text" id="A5.T12.2.8.5.1.1.1" style="font-size:90%;">30.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.8.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.6.1">
<span class="ltx_p" id="A5.T12.2.8.6.1.1"><span class="ltx_text" id="A5.T12.2.8.6.1.1.1" style="font-size:90%;">84.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.8.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.7.1">
<span class="ltx_p" id="A5.T12.2.8.7.1.1"><span class="ltx_text" id="A5.T12.2.8.7.1.1.1" style="font-size:90%;">80.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.9">
<td class="ltx_td ltx_align_left" id="A5.T12.2.9.1">
<span class="ltx_text" id="A5.T12.2.9.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T12.2.9.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T12.2.9.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.2.1">
<span class="ltx_p" id="A5.T12.2.9.2.1.1"><span class="ltx_text" id="A5.T12.2.9.2.1.1.1" style="font-size:90%;">30.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.3.1">
<span class="ltx_p" id="A5.T12.2.9.3.1.1"><span class="ltx_text" id="A5.T12.2.9.3.1.1.1" style="font-size:90%;">83.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.9.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.4.1">
<span class="ltx_p" id="A5.T12.2.9.4.1.1"><span class="ltx_text" id="A5.T12.2.9.4.1.1.1" style="font-size:90%;">76.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.9.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.5.1">
<span class="ltx_p" id="A5.T12.2.9.5.1.1"><span class="ltx_text" id="A5.T12.2.9.5.1.1.1" style="font-size:90%;">33.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.9.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.6.1">
<span class="ltx_p" id="A5.T12.2.9.6.1.1"><span class="ltx_text" id="A5.T12.2.9.6.1.1.1" style="font-size:90%;">90.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T12.2.9.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.7.1">
<span class="ltx_p" id="A5.T12.2.9.7.1.1"><span class="ltx_text" id="A5.T12.2.9.7.1.1.1" style="font-size:90%;">80.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T12.2.10.1">
<span class="ltx_text" id="A5.T12.2.10.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T12.2.10.1.2" style="font-size:90%;">30K ft</span><span class="ltx_text" id="A5.T12.2.10.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T12.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.2.1">
<span class="ltx_p" id="A5.T12.2.10.2.1.1"><span class="ltx_text" id="A5.T12.2.10.2.1.1.1" style="font-size:90%;">30.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T12.2.10.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.3.1">
<span class="ltx_p" id="A5.T12.2.10.3.1.1"><span class="ltx_text" id="A5.T12.2.10.3.1.1.1" style="font-size:90%;">83.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T12.2.10.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.4.1">
<span class="ltx_p" id="A5.T12.2.10.4.1.1"><span class="ltx_text" id="A5.T12.2.10.4.1.1.1" style="font-size:90%;">75.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T12.2.10.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.5.1">
<span class="ltx_p" id="A5.T12.2.10.5.1.1"><span class="ltx_text" id="A5.T12.2.10.5.1.1.1" style="font-size:90%;">32.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T12.2.10.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.6.1">
<span class="ltx_p" id="A5.T12.2.10.6.1.1"><span class="ltx_text" id="A5.T12.2.10.6.1.1.1" style="font-size:90%;">89.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T12.2.10.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.7.1">
<span class="ltx_p" id="A5.T12.2.10.7.1.1"><span class="ltx_text" id="A5.T12.2.10.7.1.1.1" style="font-size:90%;">81.5</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various models on the Multi30K image captioning dataset.  Specifically, it focuses on the English and German captions from the 2016 test split. The evaluation metrics used are BLEU-4 (B@4), CIDEr (C), CLIPScore (CS), and multilingual CLIPScore (MCS), providing a comprehensive assessment of the caption quality.  The table includes results for both zero-shot and supervised fine-tuned models.  The number of pre-training steps (100K, 30K) and whether fine-tuning (ft) was performed are indicated to allow for better comparison of different model training regimes.
> <details>
> <summary>read the caption</summary>
> Table 12: Image captioning results on the Multi30K [19] task 2 test 2016 split for English (En) and German (De) reporting the metrics BLEU-4 (B@4), CIDEr (C), CLIPScore (CS), and multilingual CLIPScore (MCS). 100K, 30K, and ft indicate the number of pre-training steps and fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T13.2">
<tr class="ltx_tr" id="A5.T13.2.1">
<td class="ltx_td ltx_border_tt" id="A5.T13.2.1.1"></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T13.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.1.2.1">
<span class="ltx_p" id="A5.T13.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A5.T13.2.1.2.1.1.1" style="font-size:90%;">En</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T13.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.1.3.1">
<span class="ltx_p" id="A5.T13.2.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A5.T13.2.1.3.1.1.1" style="font-size:90%;">De</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T13.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.1.4.1">
<span class="ltx_p" id="A5.T13.2.1.4.1.1"><span class="ltx_text ltx_font_bold" id="A5.T13.2.1.4.1.1.1" style="font-size:90%;">Fr</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T13.2.1.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.1.5.1">
<span class="ltx_p" id="A5.T13.2.1.5.1.1"><span class="ltx_text ltx_font_bold" id="A5.T13.2.1.5.1.1.1" style="font-size:90%;">Es</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T13.2.1.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.1.6.1">
<span class="ltx_p" id="A5.T13.2.1.6.1.1"><span class="ltx_text ltx_font_bold" id="A5.T13.2.1.6.1.1.1" style="font-size:90%;">Ru</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A5.T13.2.1.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.1.7.1">
<span class="ltx_p" id="A5.T13.2.1.7.1.1"><span class="ltx_text ltx_font_bold" id="A5.T13.2.1.7.1.1.1" style="font-size:90%;">Zh</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T13.2.2.1">
<span class="ltx_text" id="A5.T13.2.2.1.1" style="font-size:90%;">PaliGemma-3B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T13.2.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T13.2.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.2.2.1">
<span class="ltx_p" id="A5.T13.2.2.2.1.1"><span class="ltx_text" id="A5.T13.2.2.2.1.1.1" style="font-size:90%;">79.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.2.3.1">
<span class="ltx_p" id="A5.T13.2.2.3.1.1"><span class="ltx_text" id="A5.T13.2.2.3.1.1.1" style="font-size:90%;">37.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.2.4.1">
<span class="ltx_p" id="A5.T13.2.2.4.1.1"><span class="ltx_text" id="A5.T13.2.2.4.1.1.1" style="font-size:90%;">64.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.2.5.1">
<span class="ltx_p" id="A5.T13.2.2.5.1.1"><span class="ltx_text" id="A5.T13.2.2.5.1.1.1" style="font-size:90%;">67.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.2.6.1">
<span class="ltx_p" id="A5.T13.2.2.6.1.1"><span class="ltx_text" id="A5.T13.2.2.6.1.1.1" style="font-size:90%;">35.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.2.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.2.7.1">
<span class="ltx_p" id="A5.T13.2.2.7.1.1"><span class="ltx_text" id="A5.T13.2.2.7.1.1.1" style="font-size:90%;">27.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.2.3">
<td class="ltx_td ltx_align_left" id="A5.T13.2.3.1">
<span class="ltx_text" id="A5.T13.2.3.1.1" style="font-size:90%;">Baseline-6B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A5.T13.2.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib40" title="">40</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.09443v1#bib.bib4" title="">4</a><span class="ltx_text" id="A5.T13.2.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.3.2.1">
<span class="ltx_p" id="A5.T13.2.3.2.1.1"><span class="ltx_text" id="A5.T13.2.3.2.1.1.1" style="font-size:90%;">82.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.3.3.1">
<span class="ltx_p" id="A5.T13.2.3.3.1.1"><span class="ltx_text" id="A5.T13.2.3.3.1.1.1" style="font-size:90%;">38.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.3.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.3.4.1">
<span class="ltx_p" id="A5.T13.2.3.4.1.1"><span class="ltx_text" id="A5.T13.2.3.4.1.1.1" style="font-size:90%;">65.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.3.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.3.5.1">
<span class="ltx_p" id="A5.T13.2.3.5.1.1"><span class="ltx_text" id="A5.T13.2.3.5.1.1.1" style="font-size:90%;">63.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.3.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.3.6.1">
<span class="ltx_p" id="A5.T13.2.3.6.1.1"><span class="ltx_text" id="A5.T13.2.3.6.1.1.1" style="font-size:90%;">29.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.3.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.3.7.1">
<span class="ltx_p" id="A5.T13.2.3.7.1.1"><span class="ltx_text" id="A5.T13.2.3.7.1.1.1" style="font-size:90%;">21.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T13.2.4.1">
<span class="ltx_text" id="A5.T13.2.4.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T13.2.4.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T13.2.4.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.4.2.1">
<span class="ltx_p" id="A5.T13.2.4.2.1.1"><span class="ltx_text" id="A5.T13.2.4.2.1.1.1" style="font-size:90%;">76.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.4.3.1">
<span class="ltx_p" id="A5.T13.2.4.3.1.1"><span class="ltx_text" id="A5.T13.2.4.3.1.1.1" style="font-size:90%;">38.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.4.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.4.4.1">
<span class="ltx_p" id="A5.T13.2.4.4.1.1"><span class="ltx_text" id="A5.T13.2.4.4.1.1.1" style="font-size:90%;">55.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.4.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.4.5.1">
<span class="ltx_p" id="A5.T13.2.4.5.1.1"><span class="ltx_text" id="A5.T13.2.4.5.1.1.1" style="font-size:90%;">54.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.4.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.4.6.1">
<span class="ltx_p" id="A5.T13.2.4.6.1.1"><span class="ltx_text" id="A5.T13.2.4.6.1.1.1" style="font-size:90%;">26.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T13.2.4.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.4.7.1">
<span class="ltx_p" id="A5.T13.2.4.7.1.1"><span class="ltx_text" id="A5.T13.2.4.7.1.1.1" style="font-size:90%;">23.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.2.5">
<td class="ltx_td ltx_align_left" id="A5.T13.2.5.1">
<span class="ltx_text" id="A5.T13.2.5.1.1" style="font-size:90%;">F-0.4B </span><span class="ltx_text ltx_font_italic" id="A5.T13.2.5.1.2" style="font-size:90%;">100K ft</span><span class="ltx_text" id="A5.T13.2.5.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.5.2.1">
<span class="ltx_p" id="A5.T13.2.5.2.1.1"><span class="ltx_text" id="A5.T13.2.5.2.1.1.1" style="font-size:90%;">78.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.5.3.1">
<span class="ltx_p" id="A5.T13.2.5.3.1.1"><span class="ltx_text" id="A5.T13.2.5.3.1.1.1" style="font-size:90%;">39.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.5.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.5.4.1">
<span class="ltx_p" id="A5.T13.2.5.4.1.1"><span class="ltx_text" id="A5.T13.2.5.4.1.1.1" style="font-size:90%;">59.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.5.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.5.5.1">
<span class="ltx_p" id="A5.T13.2.5.5.1.1"><span class="ltx_text" id="A5.T13.2.5.5.1.1.1" style="font-size:90%;">57.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.5.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.5.6.1">
<span class="ltx_p" id="A5.T13.2.5.6.1.1"><span class="ltx_text" id="A5.T13.2.5.6.1.1.1" style="font-size:90%;">27.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.5.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.5.7.1">
<span class="ltx_p" id="A5.T13.2.5.7.1.1"><span class="ltx_text" id="A5.T13.2.5.7.1.1.1" style="font-size:90%;">24.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.2.6">
<td class="ltx_td ltx_align_left" id="A5.T13.2.6.1">
<span class="ltx_text" id="A5.T13.2.6.1.1" style="font-size:90%;">F-1.0B </span><span class="ltx_text ltx_font_italic" id="A5.T13.2.6.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T13.2.6.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.6.2.1">
<span class="ltx_p" id="A5.T13.2.6.2.1.1"><span class="ltx_text" id="A5.T13.2.6.2.1.1.1" style="font-size:90%;">78.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.6.3.1">
<span class="ltx_p" id="A5.T13.2.6.3.1.1"><span class="ltx_text" id="A5.T13.2.6.3.1.1.1" style="font-size:90%;">41.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.6.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.6.4.1">
<span class="ltx_p" id="A5.T13.2.6.4.1.1"><span class="ltx_text" id="A5.T13.2.6.4.1.1.1" style="font-size:90%;">64.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.6.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.6.5.1">
<span class="ltx_p" id="A5.T13.2.6.5.1.1"><span class="ltx_text" id="A5.T13.2.6.5.1.1.1" style="font-size:90%;">59.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.6.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.6.6.1">
<span class="ltx_p" id="A5.T13.2.6.6.1.1"><span class="ltx_text" id="A5.T13.2.6.6.1.1.1" style="font-size:90%;">30.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.6.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.6.7.1">
<span class="ltx_p" id="A5.T13.2.6.7.1.1"><span class="ltx_text" id="A5.T13.2.6.7.1.1.1" style="font-size:90%;">24.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.2.7">
<td class="ltx_td ltx_align_left" id="A5.T13.2.7.1">
<span class="ltx_text" id="A5.T13.2.7.1.1" style="font-size:90%;">F-3.5B </span><span class="ltx_text ltx_font_italic" id="A5.T13.2.7.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T13.2.7.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.7.2.1">
<span class="ltx_p" id="A5.T13.2.7.2.1.1"><span class="ltx_text" id="A5.T13.2.7.2.1.1.1" style="font-size:90%;">77.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.7.3.1">
<span class="ltx_p" id="A5.T13.2.7.3.1.1"><span class="ltx_text" id="A5.T13.2.7.3.1.1.1" style="font-size:90%;">38.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.7.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.7.4.1">
<span class="ltx_p" id="A5.T13.2.7.4.1.1"><span class="ltx_text" id="A5.T13.2.7.4.1.1.1" style="font-size:90%;">61.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.7.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.7.5.1">
<span class="ltx_p" id="A5.T13.2.7.5.1.1"><span class="ltx_text" id="A5.T13.2.7.5.1.1.1" style="font-size:90%;">59.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.7.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.7.6.1">
<span class="ltx_p" id="A5.T13.2.7.6.1.1"><span class="ltx_text" id="A5.T13.2.7.6.1.1.1" style="font-size:90%;">30.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.7.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.7.7.1">
<span class="ltx_p" id="A5.T13.2.7.7.1.1"><span class="ltx_text" id="A5.T13.2.7.7.1.1.1" style="font-size:90%;">24.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.2.8">
<td class="ltx_td ltx_align_left" id="A5.T13.2.8.1">
<span class="ltx_text" id="A5.T13.2.8.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T13.2.8.1.2" style="font-size:90%;">ft</span><span class="ltx_text" id="A5.T13.2.8.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.8.2.1">
<span class="ltx_p" id="A5.T13.2.8.2.1.1"><span class="ltx_text" id="A5.T13.2.8.2.1.1.1" style="font-size:90%;">79.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.8.3.1">
<span class="ltx_p" id="A5.T13.2.8.3.1.1"><span class="ltx_text" id="A5.T13.2.8.3.1.1.1" style="font-size:90%;">39.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.8.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.8.4.1">
<span class="ltx_p" id="A5.T13.2.8.4.1.1"><span class="ltx_text" id="A5.T13.2.8.4.1.1.1" style="font-size:90%;">64.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.8.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.8.5.1">
<span class="ltx_p" id="A5.T13.2.8.5.1.1"><span class="ltx_text" id="A5.T13.2.8.5.1.1.1" style="font-size:90%;">61.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.8.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.8.6.1">
<span class="ltx_p" id="A5.T13.2.8.6.1.1"><span class="ltx_text" id="A5.T13.2.8.6.1.1.1" style="font-size:90%;">34.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T13.2.8.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.8.7.1">
<span class="ltx_p" id="A5.T13.2.8.7.1.1"><span class="ltx_text" id="A5.T13.2.8.7.1.1.1" style="font-size:90%;">25.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.2.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T13.2.9.1">
<span class="ltx_text" id="A5.T13.2.9.1.1" style="font-size:90%;">F-11.2B </span><span class="ltx_text ltx_font_italic" id="A5.T13.2.9.1.2" style="font-size:90%;">30K ft</span><span class="ltx_text" id="A5.T13.2.9.1.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T13.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.9.2.1">
<span class="ltx_p" id="A5.T13.2.9.2.1.1"><span class="ltx_text" id="A5.T13.2.9.2.1.1.1" style="font-size:90%;">79.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T13.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.9.3.1">
<span class="ltx_p" id="A5.T13.2.9.3.1.1"><span class="ltx_text" id="A5.T13.2.9.3.1.1.1" style="font-size:90%;">39.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T13.2.9.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.9.4.1">
<span class="ltx_p" id="A5.T13.2.9.4.1.1"><span class="ltx_text" id="A5.T13.2.9.4.1.1.1" style="font-size:90%;">64.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T13.2.9.5">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.9.5.1">
<span class="ltx_p" id="A5.T13.2.9.5.1.1"><span class="ltx_text" id="A5.T13.2.9.5.1.1.1" style="font-size:90%;">61.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T13.2.9.6">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.9.6.1">
<span class="ltx_p" id="A5.T13.2.9.6.1.1"><span class="ltx_text" id="A5.T13.2.9.6.1.1.1" style="font-size:90%;">34.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T13.2.9.7">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.2.9.7.1">
<span class="ltx_p" id="A5.T13.2.9.7.1.1"><span class="ltx_text" id="A5.T13.2.9.7.1.1.1" style="font-size:90%;">25.3</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 13 presents the results of multilingual image captioning on the XM3600 benchmark dataset [62].  The table shows the performance of various models, including different sizes of the Florenz model family (with varying pre-training steps), along with some baseline models for comparison.  The evaluation metrics used are CIDEr scores for English, German, French, Spanish, Russian, and Chinese. The '100K', '30K', and 'ft' notations indicate the number of pre-training steps and whether fine-tuning was applied.
> <details>
> <summary>read the caption</summary>
> Table 13: Multilingual image captioning results on XM3600 [62]. 100K, 30K, and ft indicate the number of pre-training steps and fine-tuning.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.09443/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09443/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}