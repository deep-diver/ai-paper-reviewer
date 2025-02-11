---
title: "SynthDetoxM: Modern LLMs are Few-Shot Parallel Detoxification Data Annotators"
summary: "SynthDetoxM generates high-quality multilingual parallel data for text detoxification using LLMs, outperforming existing datasets and models in few-shot settings."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 AIRI",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06394 {{< /keyword >}}
{{< keyword icon="writer" >}} Daniil Moskovskiy et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06394" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06394" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06394/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multilingual text detoxification is hampered by limited parallel datasets.  Existing methods struggle with cross-lingual transfer and data scarcity, hindering the development of robust multilingual models that effectively mitigate online toxicity across languages.  This is a critical issue given the global reach of online hate speech and the need for effective countermeasures. 



This research addresses this data scarcity by introducing SynthDetoxM, a novel, large-scale multilingual parallel text detoxification dataset generated using modern large language models (LLMs) and a few-shot prompting technique.  The dataset significantly outperforms existing resources, demonstrating the effectiveness of this approach for data augmentation. This framework and dataset represent a substantial contribution, enabling further development and evaluation of multilingual text detoxification models and advancing research in ethical AI.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SynthDetoxM, a new multilingual parallel dataset for text detoxification, was created using LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Models trained on SynthDetoxM outperform those trained on existing datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed framework for generating synthetic detoxification data is efficient and scalable. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it tackles the scarcity of multilingual parallel data for text detoxification**, a major hurdle in the field.  By introducing SynthDetoxM, a large-scale synthetic dataset, and a novel generation framework, it significantly advances research and opens doors for more effective multilingual models. This is highly relevant to current trends in cross-lingual NLP and ethical AI.

------
#### Visual Insights



![](https://arxiv.org/html/2502.06394/x1.png)

> 🔼 This figure illustrates the process of creating the SynthDetoxM multilingual text detoxification dataset. It starts with collecting multilingual toxic data from various sources.  This data is then processed using several modern large language models (LLMs) via few-shot prompting to generate corresponding detoxified text.  The LLM-generated detoxification candidates are scored and filtered based on quality metrics such as toxicity and semantic similarity to the original text.  Finally, the best detoxification candidates are selected to form the SynthDetoxM dataset.
> <details>
> <summary>read the caption</summary>
> Рис. 1: An illustration of the proposed approach for collecting and generating the multilingual text detoxification dataset SynthDetoxM.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S1.T1.1.1.1.1"></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.1.1.2.1">
<span class="ltx_p" id="S1.T1.1.1.1.2.1.1" style="width:79.4pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.2.1.1.1">Toxic Text</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.1.1.3.1">
<span class="ltx_p" id="S1.T1.1.1.1.3.1.1" style="width:78.2pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.3.1.1.1">Detoxified Text</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.1.2.1.1">German</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.2.1.2.1">
<span class="ltx_p" id="S1.T1.1.2.1.2.1.1" style="width:79.4pt;">Wie be**oppt muss man sein?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.2.1.3.1">
<span class="ltx_p" id="S1.T1.1.2.1.3.1.1" style="width:78.2pt;">Wie verwirrt muss man sein?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.3.2.1">Spanish</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.3.2.2.1">
<span class="ltx_p" id="S1.T1.1.3.2.2.1.1" style="width:79.4pt;">Que os den por el c**o.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.3.2.3.1">
<span class="ltx_p" id="S1.T1.1.3.2.3.1.1" style="width:78.2pt;">Que os dé muy mala suerte.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.4.3.1">French</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.4.3.2.1">
<span class="ltx_p" id="S1.T1.1.4.3.2.1.1" style="width:79.4pt;">c’est moi at***dé ! je suis tombé !</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.4.3.3.1">
<span class="ltx_p" id="S1.T1.1.4.3.3.1.1" style="width:78.2pt;">C’est moi qui suis tombé !</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S1.T1.1.5.4.1">Russian</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S1.T1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.5.4.2.1">
<span class="ltx_p" id="S1.T1.1.5.4.2.1.1" style="width:79.4pt;">я мужик а вы г**но</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S1.T1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.5.4.3.1">
<span class="ltx_p" id="S1.T1.1.5.4.3.1.1" style="width:78.2pt;">Я мужчина, а вы неправы</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table displays examples from the SynthDetoxM dataset, showcasing how toxic text in four different languages (German, French, Spanish, and Russian) was transformed into their detoxified counterparts using Large Language Models (LLMs).  Each row presents a pair of toxic and detoxified sentences, illustrating the ability of the proposed method to successfully mitigate toxicity while retaining the original meaning.
> <details>
> <summary>read the caption</summary>
> Таблица 1: Examples of the source toxic texts across different languages and their respective synthetic detoxifications from our SynthDetoxM.
> </details>





### In-depth insights


#### LLM Detoxification
The concept of "LLM Detoxification" centers on harnessing the capabilities of large language models (LLMs) to mitigate online toxicity.  This involves using LLMs to **rewrite toxic text** while preserving its original meaning, effectively transforming harmful language into a safer, more acceptable form.  This approach is particularly valuable in the context of multilingual text, where the scarcity of parallel datasets presents a significant challenge for traditional methods.  **Few-shot learning** emerges as a crucial technique, allowing LLMs to perform detoxification tasks with minimal labeled data, thereby addressing the resource limitations inherent in multilingual settings.  Furthermore, the use of LLMs enables the creation of large-scale, synthetic parallel datasets for training detoxification models, **significantly improving model performance**. The research highlights the potential for LLMs to automate the generation of high-quality detoxification data, reducing the cost and time associated with traditional crowdsourcing methods. However, ethical considerations are paramount, requiring careful attention to the potential misuse of such technology and the need for responsible development to prevent the exacerbation of harmful biases.

#### Parallel Data Gen
The heading 'Parallel Data Gen' likely refers to the methods used in generating parallel datasets for multilingual text detoxification.  This is a crucial aspect of the research, as **high-quality parallel data** is scarce and essential for training effective models. The paper likely details the pipeline for creating these datasets, which probably involves using large language models (LLMs) for few-shot prompting and detoxification of toxic sentences across multiple languages. A key aspect will be the **strategies employed for ensuring data quality**, such as filtering, evaluation using metrics (like STA and SIM), and potentially manual review. The process may also involve techniques like data augmentation to address the scarcity of parallel data. The effectiveness of this 'Parallel Data Gen' process significantly impacts the overall results and the generalizability of the trained models, so this section would likely include a detailed explanation of its methodologies and justification for choices made.

#### Multilingual TST
Multilingual Text Style Transfer (TST) presents a significant challenge due to **scarcity of parallel, high-quality datasets** across multiple languages.  Existing monolingual methods don't readily translate, highlighting the need for innovative approaches.  The research emphasizes the **importance of parallel data** in multilingual TST, proposing a novel framework to generate synthetic parallel datasets. This approach uses the strengths of modern large language models (LLMs) to perform few-shot detoxification, effectively addressing data limitations.  **LLMs act as efficient few-shot annotators**, creating high-quality parallel data at scale.  The success of this method hinges on careful prompt engineering and effective filtering to eliminate low-quality or unsuitable examples. This approach addresses limitations of relying solely on manual annotation, paving the way for broader multilingual TST applications.  The resulting datasets are crucial for training robust and accurate multilingual models, proving that **synthetic data can significantly enhance performance** even in resource-constrained settings.

#### SynthDetoxM Eval
A hypothetical 'SynthDetoxM Eval' section would delve into a rigorous evaluation of the SynthDetoxM dataset.  This would likely involve **automatic metrics** such as Style Transfer Accuracy (STA),  measuring the reduction in toxicity, and Content Similarity (SIM), assessing the preservation of original meaning.  A crucial aspect would be comparing SynthDetoxM's performance against existing, human-annotated datasets like MultiParaDetox, using various machine learning models to highlight the **strengths and weaknesses** of the synthetic dataset.  Further investigation might involve **human evaluation** to gauge fluency and overall detoxification quality, complementing the quantitative findings.  The analysis should address any potential biases or limitations inherent in the synthetic data generation process, such as over-reliance on specific LLM models or issues with certain languages. Finally, a discussion on the broader implications of using synthetic datasets for multilingual text detoxification, considering costs and ethical concerns, would be vital to a comprehensive evaluation.

#### Future Work
Future work in multilingual text detoxification could **focus on expanding the dataset** to include more languages and address the limitations of relying solely on explicit toxicity detection.  Investigating implicit toxicity and nuances across languages is crucial.  **Improving fluency evaluation metrics** beyond ChrF1 is also vital;  methods incorporating semantic understanding and human judgment would offer more accurate assessments.  **Exploring advanced prompting techniques** and fine-tuning strategies for LLMs could significantly enhance the quality and diversity of synthetic data.  Finally, research should thoroughly address the ethical implications of automated detoxification, including bias mitigation and the potential for misuse of such technologies.  **Benchmarking against a wider range of LLMs** would provide a more robust evaluation of the dataset's effectiveness.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.06394/x2.png)

> 🔼 This figure shows the number of samples accepted into the final SynthDetoxM dataset for each language (German, Spanish, French, Russian) and for each of the nine Large Language Models (LLMs) used in its creation. The bar chart allows for a comparison of the contribution of each LLM to the overall size of the dataset for each language.
> <details>
> <summary>read the caption</summary>
> Рис. 2: Number of accepted samples in the final SynthDetoxM dataset with respect to the LLM by language.
> </details>



![](https://arxiv.org/html/2502.06394/x3.png)

> 🔼 Figure 3 presents the distribution of toxicity scores (STA) for both original toxic and their corresponding detoxified versions across four different languages.  The x-axis represents the STA score, ranging from 0 (non-toxic) to 1 (highly toxic). The y-axis represents the frequency or count of texts within a given STA score range. Original toxic texts are displayed in orange, while their detoxified counterparts are shown in blue. A Gaussian smoothing technique has been applied to enhance the visual clarity and readability of the distributions. This visualization helps illustrate the effectiveness of the detoxification process in reducing the toxicity levels of the text.
> <details>
> <summary>read the caption</summary>
> Рис. 3: Distribution of STA toxicity scores of toxic and neutral examples in the dataset. The original toxic texts are in orange, while detoxified texts are in blue. For readability we apply Gaussian smoothing.
> </details>



![](https://arxiv.org/html/2502.06394/)

> 🔼 Figure 4 presents a side-by-side comparison of the outputs generated by different models when detoxifying text in German, Russian, and Spanish.  GPT-4 acted as an evaluator to determine which of the two model outputs (one from a model trained on the SynthDetoxM dataset and the other from a model trained on MultiParaDetox) produced a better detoxification result for each example. The results visualize the relative performance of models trained on SynthDetoxM compared to models trained on the smaller MultiParaDetox dataset, illustrating the effectiveness of SynthDetoxM in training high-performing detoxification models. The color-coding and bar lengths in the chart represent the percentage of times each model was preferred by GPT-4, and the notation aligns with that of Table 3.
> <details>
> <summary>read the caption</summary>
> Рис. 4: Side-by-side comparison of model outputs across all languages, evaluated by GPT-4o. The results highlight the relative performance of the models in generating detoxified text for German, Russian, and Spanish. The notation is similar to the notation from Table 3.
> </details>



![](https://arxiv.org/html/2502.06394/x5.png)

> 🔼 This figure illustrates the prompt used to generate synthetic parallel data for text detoxification.  The prompt instructs a large language model (LLM) to rewrite a given toxic text into a non-toxic version while preserving the original meaning. The {toxic_text} placeholder represents the input toxic sentence.  The prompt also includes a few-shot learning component, where a few example pairs of toxic and detoxified texts are provided to guide the model's generation. The instruction to provide only the generated text (and not the input text again) helps maintain data quality and avoid unnecessary repetition.
> <details>
> <summary>read the caption</summary>
> Рис. 5: Detoxification prompt we use for synthetic parallel data generation. {toxic_text} stands for a placeholder for a given toxic text being prompted into LLM. In few-shot setting we add few examples of detoxification before last two lines and write: Here are few examples:.
> </details>



![](https://arxiv.org/html/2502.06394/x6.png)

> 🔼 This figure shows the text of the prompt used for fine-tuning the mT0 model in the paper. The prompt instructs the model to rewrite toxic text into non-toxic text while maintaining the original meaning and style as much as possible.  The few-shot learning setting is implied, though not explicitly stated in the prompt itself.  This is a crucial component of the methodology described in the paper, as it details how the model is trained to perform the text detoxification task.
> <details>
> <summary>read the caption</summary>
> Рис. 6: Detoxification prompt we use for mT0.
> </details>



![](https://arxiv.org/html/2502.06394/x7.png)

> 🔼 This figure shows the prompt used to generate synthetic refusal data for training a refusal classification model.  The prompt instructs a large language model (LLM) to politely refuse to answer a given input text and to provide a reason for the refusal. The refusal should be relevant to the input text. The prompt ensures the LLM's response is concise and focuses only on the refusal itself without adding unrelated information.
> <details>
> <summary>read the caption</summary>
> Рис. 7: Refusal generation prompt for synthetic refusals dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_tt" id="S4.T2.8.8.9" style="padding-left:1.5pt;padding-right:1.5pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2">STA<math alttext="{}_{\text{T}}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><msub id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1a" xref="S4.T2.1.1.1.1.m1.1.1.cmml"></mi><mtext class="ltx_mathvariant_bold" id="S4.T2.1.1.1.1.m1.1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.1a.cmml">T</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><ci id="S4.T2.1.1.1.1.m1.1.1.1a.cmml" xref="S4.T2.1.1.1.1.m1.1.1.1"><mtext class="ltx_mathvariant_bold" id="S4.T2.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T2.1.1.1.1.m1.1.1.1">T</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">{}_{\text{T}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">start_FLOATSUBSCRIPT T end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m2.1"><semantics id="S4.T2.2.2.2.2.m2.1a"><mo id="S4.T2.2.2.2.2.m2.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m2.1b"><ci id="S4.T2.2.2.2.2.m2.1.1.cmml" xref="S4.T2.2.2.2.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m2.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.2">STA<math alttext="{}_{\text{D}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><msub id="S4.T2.3.3.3.1.m1.1.1" xref="S4.T2.3.3.3.1.m1.1.1.cmml"><mi id="S4.T2.3.3.3.1.m1.1.1a" xref="S4.T2.3.3.3.1.m1.1.1.cmml"></mi><mtext class="ltx_mathvariant_bold" id="S4.T2.3.3.3.1.m1.1.1.1" xref="S4.T2.3.3.3.1.m1.1.1.1a.cmml">D</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><apply id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1"><ci id="S4.T2.3.3.3.1.m1.1.1.1a.cmml" xref="S4.T2.3.3.3.1.m1.1.1.1"><mtext class="ltx_mathvariant_bold" id="S4.T2.3.3.3.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T2.3.3.3.1.m1.1.1.1">D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">{}_{\text{D}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">start_FLOATSUBSCRIPT D end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.2.m2.1"><semantics id="S4.T2.4.4.4.2.m2.1a"><mo id="S4.T2.4.4.4.2.m2.1.1" stretchy="false" xref="S4.T2.4.4.4.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.2.m2.1b"><ci id="S4.T2.4.4.4.2.m2.1.1.cmml" xref="S4.T2.4.4.4.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.2.m2.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.1">SIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.8.8.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.3">STA<math alttext="{}_{\text{D}}" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.1.m1.1a"><msub id="S4.T2.6.6.6.1.m1.1.1" xref="S4.T2.6.6.6.1.m1.1.1.cmml"><mi id="S4.T2.6.6.6.1.m1.1.1a" xref="S4.T2.6.6.6.1.m1.1.1.cmml"></mi><mtext class="ltx_mathvariant_bold" id="S4.T2.6.6.6.1.m1.1.1.1" xref="S4.T2.6.6.6.1.m1.1.1.1a.cmml">D</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.m1.1b"><apply id="S4.T2.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1"><ci id="S4.T2.6.6.6.1.m1.1.1.1a.cmml" xref="S4.T2.6.6.6.1.m1.1.1.1"><mtext class="ltx_mathvariant_bold" id="S4.T2.6.6.6.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T2.6.6.6.1.m1.1.1.1">D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.m1.1c">{}_{\text{D}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.m1.1d">start_FLOATSUBSCRIPT D end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.7.7.7.2.m2.1"><semantics id="S4.T2.7.7.7.2.m2.1a"><mo id="S4.T2.7.7.7.2.m2.1.1" xref="S4.T2.7.7.7.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.2.m2.1b"><times id="S4.T2.7.7.7.2.m2.1.1.cmml" xref="S4.T2.7.7.7.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.2.m2.1d">×</annotation></semantics></math>SIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.3.m3.1"><semantics id="S4.T2.8.8.8.3.m3.1a"><mo id="S4.T2.8.8.8.3.m3.1.1" stretchy="false" xref="S4.T2.8.8.8.3.m3.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.3.m3.1b"><ci id="S4.T2.8.8.8.3.m3.1.1.cmml" xref="S4.T2.8.8.8.3.m3.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.3.m3.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.3.m3.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.8.9.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.8.9.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">German</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.8.9.1.2" style="padding-left:1.5pt;padding-right:1.5pt;">0.389</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.8.9.1.3" style="padding-left:1.5pt;padding-right:1.5pt;">0.853</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.8.9.1.4" style="padding-left:1.5pt;padding-right:1.5pt;">0.793</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.8.9.1.5" style="padding-left:1.5pt;padding-right:1.5pt;">0.675</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.10.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.8.10.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">Spanish</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.8.10.2.2" style="padding-left:1.5pt;padding-right:1.5pt;">0.514</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.8.10.2.3" style="padding-left:1.5pt;padding-right:1.5pt;">0.920</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.8.10.2.4" style="padding-left:1.5pt;padding-right:1.5pt;">0.736</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.8.10.2.5" style="padding-left:1.5pt;padding-right:1.5pt;">0.681</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.11.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.8.11.3.1" style="padding-left:1.5pt;padding-right:1.5pt;">French</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.8.11.3.2" style="padding-left:1.5pt;padding-right:1.5pt;">0.583</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.8.11.3.3" style="padding-left:1.5pt;padding-right:1.5pt;">0.913</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.8.11.3.4" style="padding-left:1.5pt;padding-right:1.5pt;">0.677</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.8.11.3.5" style="padding-left:1.5pt;padding-right:1.5pt;">0.624</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.12.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.8.12.4.1" style="padding-left:1.5pt;padding-right:1.5pt;">Russian</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.8.12.4.2" style="padding-left:1.5pt;padding-right:1.5pt;">0.467</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.8.12.4.3" style="padding-left:1.5pt;padding-right:1.5pt;">0.924</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.8.12.4.4" style="padding-left:1.5pt;padding-right:1.5pt;">0.731</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.8.12.4.5" style="padding-left:1.5pt;padding-right:1.5pt;">0.678</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the average toxicity scores for both original toxic texts and their generated detoxified counterparts across four different languages (German, Spanish, French, and Russian).  The table showcases the toxicity levels using two metrics: STA (Style Transfer Accuracy) for both toxic and detoxified texts, and SIM (similarity) measuring the semantic similarity between original and detoxified texts.  The column 'STADSIM' represents the product of STA scores for detoxified texts and their SIM scores, providing a combined measure of both toxicity reduction and semantic preservation.  For a given text x, the STA score STA(x) is calculated as 1 - P(toxic|x), where P(toxic|x) represents the probability of the text being toxic.
> <details>
> <summary>read the caption</summary>
> Таблица 2: Average toxicity levels across different languages for source toxic (T) and generated detoxified (D) texts, along with similarity scores. STATT{}_{\text{T}}start_FLOATSUBSCRIPT T end_FLOATSUBSCRIPT represents the toxicity level of the original text, while STADD{}_{\text{D}}start_FLOATSUBSCRIPT D end_FLOATSUBSCRIPT corresponds to the detoxified text. In our work, for a text x𝑥xitalic_x the score STA(x)=1−P⁢(toxic|x)𝑥1𝑃conditionaltoxic𝑥(x)=1-P(\text{toxic}|x)( italic_x ) = 1 - italic_P ( toxic | italic_x ).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.61.61">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Dataset</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">STA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">SIM</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">FL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.6.1">J</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">STA<math alttext="\cdot" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">⋅</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">⋅</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\cdot</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">⋅</annotation></semantics></math>SIM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.61.61.62.1">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T3.61.61.62.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.61.61.62.1.1.1">German</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.6.6.6" style="padding-left:1.5pt;padding-right:1.5pt;">MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.2.2.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.722" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mn id="S4.T3.2.2.2.1.m1.1.1" xref="S4.T3.2.2.2.1.m1.1.1.cmml">0.722</mn><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><cn id="S4.T3.2.2.2.1.m1.1.1.cmml" type="float" xref="S4.T3.2.2.2.1.m1.1.1">0.722</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">0.722</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">0.722</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.3.3.3.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.848" class="ltx_Math" display="inline" id="S4.T3.3.3.3.2.m1.1"><semantics id="S4.T3.3.3.3.2.m1.1a"><mn id="S4.T3.3.3.3.2.m1.1.1" xref="S4.T3.3.3.3.2.m1.1.1.cmml">0.848</mn><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.2.m1.1b"><cn id="S4.T3.3.3.3.2.m1.1.1.cmml" type="float" xref="S4.T3.3.3.3.2.m1.1.1">0.848</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.2.m1.1c">0.848</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.2.m1.1d">0.848</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.4.4.4.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.602" class="ltx_Math" display="inline" id="S4.T3.4.4.4.3.m1.1"><semantics id="S4.T3.4.4.4.3.m1.1a"><mn id="S4.T3.4.4.4.3.m1.1.1" xref="S4.T3.4.4.4.3.m1.1.1.cmml">0.602</mn><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.3.m1.1b"><cn id="S4.T3.4.4.4.3.m1.1.1.cmml" type="float" xref="S4.T3.4.4.4.3.m1.1.1">0.602</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.3.m1.1c">0.602</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.3.m1.1d">0.602</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.5.5.5.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.383" class="ltx_Math" display="inline" id="S4.T3.5.5.5.4.m1.1"><semantics id="S4.T3.5.5.5.4.m1.1a"><mn id="S4.T3.5.5.5.4.m1.1.1" xref="S4.T3.5.5.5.4.m1.1.1.cmml">0.383</mn><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.4.m1.1b"><cn id="S4.T3.5.5.5.4.m1.1.1.cmml" type="float" xref="S4.T3.5.5.5.4.m1.1.1">0.383</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.4.m1.1c">0.383</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.4.m1.1d">0.383</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.6.6.6.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.612" class="ltx_Math" display="inline" id="S4.T3.6.6.6.5.m1.1"><semantics id="S4.T3.6.6.6.5.m1.1a"><mn id="S4.T3.6.6.6.5.m1.1.1" xref="S4.T3.6.6.6.5.m1.1.1.cmml">0.612</mn><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.5.m1.1b"><cn id="S4.T3.6.6.6.5.m1.1.1.cmml" type="float" xref="S4.T3.6.6.6.5.m1.1.1">0.612</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.5.m1.1c">0.612</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.5.m1.1d">0.612</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.11.11.11.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T3.11.11.11.6.1">SDM</span> (Subset)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.7.7.7.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.681" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.m1.1"><semantics id="S4.T3.7.7.7.1.m1.1a"><mn id="S4.T3.7.7.7.1.m1.1.1" xref="S4.T3.7.7.7.1.m1.1.1.cmml">0.681</mn><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.m1.1b"><cn id="S4.T3.7.7.7.1.m1.1.1.cmml" type="float" xref="S4.T3.7.7.7.1.m1.1.1">0.681</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.m1.1c">0.681</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.m1.1d">0.681</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.8.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.912" class="ltx_Math" display="inline" id="S4.T3.8.8.8.2.m1.1"><semantics id="S4.T3.8.8.8.2.m1.1a"><mn id="S4.T3.8.8.8.2.m1.1.1" xref="S4.T3.8.8.8.2.m1.1.1.cmml">0.912</mn><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.2.m1.1b"><cn id="S4.T3.8.8.8.2.m1.1.1.cmml" type="float" xref="S4.T3.8.8.8.2.m1.1.1">0.912</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.2.m1.1c">0.912</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.2.m1.1d">0.912</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.9.9.9.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.745" class="ltx_Math" display="inline" id="S4.T3.9.9.9.3.m1.1"><semantics id="S4.T3.9.9.9.3.m1.1a"><mn id="S4.T3.9.9.9.3.m1.1.1" xref="S4.T3.9.9.9.3.m1.1.1.cmml">0.745</mn><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.3.m1.1b"><cn id="S4.T3.9.9.9.3.m1.1.1.cmml" type="float" xref="S4.T3.9.9.9.3.m1.1.1">0.745</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.3.m1.1c">0.745</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.3.m1.1d">0.745</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.10.10.10.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.463" class="ltx_Math" display="inline" id="S4.T3.10.10.10.4.m1.1"><semantics id="S4.T3.10.10.10.4.m1.1a"><mn id="S4.T3.10.10.10.4.m1.1.1" xref="S4.T3.10.10.10.4.m1.1.1.cmml">0.463</mn><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.4.m1.1b"><cn id="S4.T3.10.10.10.4.m1.1.1.cmml" type="float" xref="S4.T3.10.10.10.4.m1.1.1">0.463</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.4.m1.1c">0.463</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.4.m1.1d">0.463</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.11.11.11.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.597" class="ltx_Math" display="inline" id="S4.T3.11.11.11.5.m1.1"><semantics id="S4.T3.11.11.11.5.m1.1a"><mn id="S4.T3.11.11.11.5.m1.1.1" xref="S4.T3.11.11.11.5.m1.1.1.cmml">0.597</mn><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.5.m1.1b"><cn id="S4.T3.11.11.11.5.m1.1.1.cmml" type="float" xref="S4.T3.11.11.11.5.m1.1.1">0.597</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.5.m1.1c">0.597</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.5.m1.1d">0.597</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.16.16.16.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T3.16.16.16.6.1">SDM</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.12.12.12.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.12.12.12.1.1">0.728</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.13.13.13.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.899" class="ltx_Math" display="inline" id="S4.T3.13.13.13.2.m1.1"><semantics id="S4.T3.13.13.13.2.m1.1a"><mn id="S4.T3.13.13.13.2.m1.1.1" xref="S4.T3.13.13.13.2.m1.1.1.cmml">0.899</mn><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.2.m1.1b"><cn id="S4.T3.13.13.13.2.m1.1.1.cmml" type="float" xref="S4.T3.13.13.13.2.m1.1.1">0.899</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.2.m1.1c">0.899</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.2.m1.1d">0.899</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.14.14.14.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.734" class="ltx_Math" display="inline" id="S4.T3.14.14.14.3.m1.1"><semantics id="S4.T3.14.14.14.3.m1.1a"><mn id="S4.T3.14.14.14.3.m1.1.1" xref="S4.T3.14.14.14.3.m1.1.1.cmml">0.734</mn><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.3.m1.1b"><cn id="S4.T3.14.14.14.3.m1.1.1.cmml" type="float" xref="S4.T3.14.14.14.3.m1.1.1">0.734</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.3.m1.1c">0.734</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.3.m1.1d">0.734</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.15.15.15.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.15.15.15.4.1">0.484</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.16.16.16.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.16.16.16.5.1">0.655</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.21">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.21.21.21.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T3.21.21.21.6.1">SDM</span>+MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.17.17.17.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.615" class="ltx_Math" display="inline" id="S4.T3.17.17.17.1.m1.1"><semantics id="S4.T3.17.17.17.1.m1.1a"><mn id="S4.T3.17.17.17.1.m1.1.1" xref="S4.T3.17.17.17.1.m1.1.1.cmml">0.615</mn><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.17.1.m1.1b"><cn id="S4.T3.17.17.17.1.m1.1.1.cmml" type="float" xref="S4.T3.17.17.17.1.m1.1.1">0.615</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.17.1.m1.1c">0.615</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.17.1.m1.1d">0.615</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.18.18.18.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.18.18.18.2.1">0.954</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.19.19.19.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.19.19.19.3.1">0.821</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.20.20.20.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.483" class="ltx_Math" display="inline" id="S4.T3.20.20.20.4.m1.1"><semantics id="S4.T3.20.20.20.4.m1.1a"><mn id="S4.T3.20.20.20.4.m1.1.1" xref="S4.T3.20.20.20.4.m1.1.1.cmml">0.483</mn><annotation-xml encoding="MathML-Content" id="S4.T3.20.20.20.4.m1.1b"><cn id="S4.T3.20.20.20.4.m1.1.1.cmml" type="float" xref="S4.T3.20.20.20.4.m1.1.1">0.483</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.20.20.20.4.m1.1c">0.483</annotation><annotation encoding="application/x-llamapun" id="S4.T3.20.20.20.4.m1.1d">0.483</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.21.21.21.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.586" class="ltx_Math" display="inline" id="S4.T3.21.21.21.5.m1.1"><semantics id="S4.T3.21.21.21.5.m1.1a"><mn id="S4.T3.21.21.21.5.m1.1.1" xref="S4.T3.21.21.21.5.m1.1.1.cmml">0.586</mn><annotation-xml encoding="MathML-Content" id="S4.T3.21.21.21.5.m1.1b"><cn id="S4.T3.21.21.21.5.m1.1.1.cmml" type="float" xref="S4.T3.21.21.21.5.m1.1.1">0.586</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.21.21.21.5.m1.1c">0.586</annotation><annotation encoding="application/x-llamapun" id="S4.T3.21.21.21.5.m1.1d">0.586</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.61.61.63.2">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T3.61.61.63.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.61.61.63.2.1.1">Russian</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.26.26.26">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.26.26.26.6" style="padding-left:1.5pt;padding-right:1.5pt;">MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.22.22.22.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.748" class="ltx_Math" display="inline" id="S4.T3.22.22.22.1.m1.1"><semantics id="S4.T3.22.22.22.1.m1.1a"><mn id="S4.T3.22.22.22.1.m1.1.1" xref="S4.T3.22.22.22.1.m1.1.1.cmml">0.748</mn><annotation-xml encoding="MathML-Content" id="S4.T3.22.22.22.1.m1.1b"><cn id="S4.T3.22.22.22.1.m1.1.1.cmml" type="float" xref="S4.T3.22.22.22.1.m1.1.1">0.748</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.22.22.22.1.m1.1c">0.748</annotation><annotation encoding="application/x-llamapun" id="S4.T3.22.22.22.1.m1.1d">0.748</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.23.23.23.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.852" class="ltx_Math" display="inline" id="S4.T3.23.23.23.2.m1.1"><semantics id="S4.T3.23.23.23.2.m1.1a"><mn id="S4.T3.23.23.23.2.m1.1.1" xref="S4.T3.23.23.23.2.m1.1.1.cmml">0.852</mn><annotation-xml encoding="MathML-Content" id="S4.T3.23.23.23.2.m1.1b"><cn id="S4.T3.23.23.23.2.m1.1.1.cmml" type="float" xref="S4.T3.23.23.23.2.m1.1.1">0.852</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.23.23.23.2.m1.1c">0.852</annotation><annotation encoding="application/x-llamapun" id="S4.T3.23.23.23.2.m1.1d">0.852</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.24.24.24.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.643" class="ltx_Math" display="inline" id="S4.T3.24.24.24.3.m1.1"><semantics id="S4.T3.24.24.24.3.m1.1a"><mn id="S4.T3.24.24.24.3.m1.1.1" xref="S4.T3.24.24.24.3.m1.1.1.cmml">0.643</mn><annotation-xml encoding="MathML-Content" id="S4.T3.24.24.24.3.m1.1b"><cn id="S4.T3.24.24.24.3.m1.1.1.cmml" type="float" xref="S4.T3.24.24.24.3.m1.1.1">0.643</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.24.24.24.3.m1.1c">0.643</annotation><annotation encoding="application/x-llamapun" id="S4.T3.24.24.24.3.m1.1d">0.643</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.25.25.25.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.434" class="ltx_Math" display="inline" id="S4.T3.25.25.25.4.m1.1"><semantics id="S4.T3.25.25.25.4.m1.1a"><mn id="S4.T3.25.25.25.4.m1.1.1" xref="S4.T3.25.25.25.4.m1.1.1.cmml">0.434</mn><annotation-xml encoding="MathML-Content" id="S4.T3.25.25.25.4.m1.1b"><cn id="S4.T3.25.25.25.4.m1.1.1.cmml" type="float" xref="S4.T3.25.25.25.4.m1.1.1">0.434</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.25.25.25.4.m1.1c">0.434</annotation><annotation encoding="application/x-llamapun" id="S4.T3.25.25.25.4.m1.1d">0.434</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.26.26.26.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.637" class="ltx_Math" display="inline" id="S4.T3.26.26.26.5.m1.1"><semantics id="S4.T3.26.26.26.5.m1.1a"><mn id="S4.T3.26.26.26.5.m1.1.1" xref="S4.T3.26.26.26.5.m1.1.1.cmml">0.637</mn><annotation-xml encoding="MathML-Content" id="S4.T3.26.26.26.5.m1.1b"><cn id="S4.T3.26.26.26.5.m1.1.1.cmml" type="float" xref="S4.T3.26.26.26.5.m1.1.1">0.637</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.26.26.26.5.m1.1c">0.637</annotation><annotation encoding="application/x-llamapun" id="S4.T3.26.26.26.5.m1.1d">0.637</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.31.31.31">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.31.31.31.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T3.31.31.31.6.1">SDM</span> (Subset)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.27.27.27.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.858" class="ltx_Math" display="inline" id="S4.T3.27.27.27.1.m1.1"><semantics id="S4.T3.27.27.27.1.m1.1a"><mn id="S4.T3.27.27.27.1.m1.1.1" xref="S4.T3.27.27.27.1.m1.1.1.cmml">0.858</mn><annotation-xml encoding="MathML-Content" id="S4.T3.27.27.27.1.m1.1b"><cn id="S4.T3.27.27.27.1.m1.1.1.cmml" type="float" xref="S4.T3.27.27.27.1.m1.1.1">0.858</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.27.27.27.1.m1.1c">0.858</annotation><annotation encoding="application/x-llamapun" id="S4.T3.27.27.27.1.m1.1d">0.858</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.28.28.28.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.850" class="ltx_Math" display="inline" id="S4.T3.28.28.28.2.m1.1"><semantics id="S4.T3.28.28.28.2.m1.1a"><mn id="S4.T3.28.28.28.2.m1.1.1" xref="S4.T3.28.28.28.2.m1.1.1.cmml">0.850</mn><annotation-xml encoding="MathML-Content" id="S4.T3.28.28.28.2.m1.1b"><cn id="S4.T3.28.28.28.2.m1.1.1.cmml" type="float" xref="S4.T3.28.28.28.2.m1.1.1">0.850</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.28.28.28.2.m1.1c">0.850</annotation><annotation encoding="application/x-llamapun" id="S4.T3.28.28.28.2.m1.1d">0.850</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.29.29.29.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.656" class="ltx_Math" display="inline" id="S4.T3.29.29.29.3.m1.1"><semantics id="S4.T3.29.29.29.3.m1.1a"><mn id="S4.T3.29.29.29.3.m1.1.1" xref="S4.T3.29.29.29.3.m1.1.1.cmml">0.656</mn><annotation-xml encoding="MathML-Content" id="S4.T3.29.29.29.3.m1.1b"><cn id="S4.T3.29.29.29.3.m1.1.1.cmml" type="float" xref="S4.T3.29.29.29.3.m1.1.1">0.656</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.29.29.29.3.m1.1c">0.656</annotation><annotation encoding="application/x-llamapun" id="S4.T3.29.29.29.3.m1.1d">0.656</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.30.30.30.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.478" class="ltx_Math" display="inline" id="S4.T3.30.30.30.4.m1.1"><semantics id="S4.T3.30.30.30.4.m1.1a"><mn id="S4.T3.30.30.30.4.m1.1.1" xref="S4.T3.30.30.30.4.m1.1.1.cmml">0.478</mn><annotation-xml encoding="MathML-Content" id="S4.T3.30.30.30.4.m1.1b"><cn id="S4.T3.30.30.30.4.m1.1.1.cmml" type="float" xref="S4.T3.30.30.30.4.m1.1.1">0.478</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.30.30.30.4.m1.1c">0.478</annotation><annotation encoding="application/x-llamapun" id="S4.T3.30.30.30.4.m1.1d">0.478</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.31.31.31.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.729" class="ltx_Math" display="inline" id="S4.T3.31.31.31.5.m1.1"><semantics id="S4.T3.31.31.31.5.m1.1a"><mn id="S4.T3.31.31.31.5.m1.1.1" xref="S4.T3.31.31.31.5.m1.1.1.cmml">0.729</mn><annotation-xml encoding="MathML-Content" id="S4.T3.31.31.31.5.m1.1b"><cn id="S4.T3.31.31.31.5.m1.1.1.cmml" type="float" xref="S4.T3.31.31.31.5.m1.1.1">0.729</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.31.31.31.5.m1.1c">0.729</annotation><annotation encoding="application/x-llamapun" id="S4.T3.31.31.31.5.m1.1d">0.729</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.36.36.36">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.36.36.36.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T3.36.36.36.6.1">SDM</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.32.32.32.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.32.32.32.1.1">0.927</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.33.33.33.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.839" class="ltx_Math" display="inline" id="S4.T3.33.33.33.2.m1.1"><semantics id="S4.T3.33.33.33.2.m1.1a"><mn id="S4.T3.33.33.33.2.m1.1.1" xref="S4.T3.33.33.33.2.m1.1.1.cmml">0.839</mn><annotation-xml encoding="MathML-Content" id="S4.T3.33.33.33.2.m1.1b"><cn id="S4.T3.33.33.33.2.m1.1.1.cmml" type="float" xref="S4.T3.33.33.33.2.m1.1.1">0.839</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.33.33.33.2.m1.1c">0.839</annotation><annotation encoding="application/x-llamapun" id="S4.T3.33.33.33.2.m1.1d">0.839</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.34.34.34.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.656" class="ltx_Math" display="inline" id="S4.T3.34.34.34.3.m1.1"><semantics id="S4.T3.34.34.34.3.m1.1a"><mn id="S4.T3.34.34.34.3.m1.1.1" xref="S4.T3.34.34.34.3.m1.1.1.cmml">0.656</mn><annotation-xml encoding="MathML-Content" id="S4.T3.34.34.34.3.m1.1b"><cn id="S4.T3.34.34.34.3.m1.1.1.cmml" type="float" xref="S4.T3.34.34.34.3.m1.1.1">0.656</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.34.34.34.3.m1.1c">0.656</annotation><annotation encoding="application/x-llamapun" id="S4.T3.34.34.34.3.m1.1d">0.656</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.35.35.35.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.35.35.35.4.1">0.521</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.36.36.36.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.36.36.36.5.1">0.778</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.41.41.41">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.41.41.41.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T3.41.41.41.6.1">SDM</span>+MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.37.37.37.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.815" class="ltx_Math" display="inline" id="S4.T3.37.37.37.1.m1.1"><semantics id="S4.T3.37.37.37.1.m1.1a"><mn id="S4.T3.37.37.37.1.m1.1.1" xref="S4.T3.37.37.37.1.m1.1.1.cmml">0.815</mn><annotation-xml encoding="MathML-Content" id="S4.T3.37.37.37.1.m1.1b"><cn id="S4.T3.37.37.37.1.m1.1.1.cmml" type="float" xref="S4.T3.37.37.37.1.m1.1.1">0.815</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.37.37.37.1.m1.1c">0.815</annotation><annotation encoding="application/x-llamapun" id="S4.T3.37.37.37.1.m1.1d">0.815</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.38.38.38.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.38.38.38.2.1">0.886</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.39.39.39.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.39.39.39.3.1">0.726</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.40.40.40.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.540" class="ltx_Math" display="inline" id="S4.T3.40.40.40.4.m1.1"><semantics id="S4.T3.40.40.40.4.m1.1a"><mn id="S4.T3.40.40.40.4.m1.1.1" xref="S4.T3.40.40.40.4.m1.1.1.cmml">0.540</mn><annotation-xml encoding="MathML-Content" id="S4.T3.40.40.40.4.m1.1b"><cn id="S4.T3.40.40.40.4.m1.1.1.cmml" type="float" xref="S4.T3.40.40.40.4.m1.1.1">0.540</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.40.40.40.4.m1.1c">0.540</annotation><annotation encoding="application/x-llamapun" id="S4.T3.40.40.40.4.m1.1d">0.540</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.41.41.41.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.721" class="ltx_Math" display="inline" id="S4.T3.41.41.41.5.m1.1"><semantics id="S4.T3.41.41.41.5.m1.1a"><mn id="S4.T3.41.41.41.5.m1.1.1" xref="S4.T3.41.41.41.5.m1.1.1.cmml">0.721</mn><annotation-xml encoding="MathML-Content" id="S4.T3.41.41.41.5.m1.1b"><cn id="S4.T3.41.41.41.5.m1.1.1.cmml" type="float" xref="S4.T3.41.41.41.5.m1.1.1">0.721</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.41.41.41.5.m1.1c">0.721</annotation><annotation encoding="application/x-llamapun" id="S4.T3.41.41.41.5.m1.1d">0.721</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.61.61.64.3">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T3.61.61.64.3.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.61.61.64.3.1.1">Spanish</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.46.46.46">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.46.46.46.6" style="padding-left:1.5pt;padding-right:1.5pt;">MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.42.42.42.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.597" class="ltx_Math" display="inline" id="S4.T3.42.42.42.1.m1.1"><semantics id="S4.T3.42.42.42.1.m1.1a"><mn id="S4.T3.42.42.42.1.m1.1.1" xref="S4.T3.42.42.42.1.m1.1.1.cmml">0.597</mn><annotation-xml encoding="MathML-Content" id="S4.T3.42.42.42.1.m1.1b"><cn id="S4.T3.42.42.42.1.m1.1.1.cmml" type="float" xref="S4.T3.42.42.42.1.m1.1.1">0.597</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.42.42.42.1.m1.1c">0.597</annotation><annotation encoding="application/x-llamapun" id="S4.T3.42.42.42.1.m1.1d">0.597</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.43.43.43.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.880" class="ltx_Math" display="inline" id="S4.T3.43.43.43.2.m1.1"><semantics id="S4.T3.43.43.43.2.m1.1a"><mn id="S4.T3.43.43.43.2.m1.1.1" xref="S4.T3.43.43.43.2.m1.1.1.cmml">0.880</mn><annotation-xml encoding="MathML-Content" id="S4.T3.43.43.43.2.m1.1b"><cn id="S4.T3.43.43.43.2.m1.1.1.cmml" type="float" xref="S4.T3.43.43.43.2.m1.1.1">0.880</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.43.43.43.2.m1.1c">0.880</annotation><annotation encoding="application/x-llamapun" id="S4.T3.43.43.43.2.m1.1d">0.880</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.44.44.44.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.616" class="ltx_Math" display="inline" id="S4.T3.44.44.44.3.m1.1"><semantics id="S4.T3.44.44.44.3.m1.1a"><mn id="S4.T3.44.44.44.3.m1.1.1" xref="S4.T3.44.44.44.3.m1.1.1.cmml">0.616</mn><annotation-xml encoding="MathML-Content" id="S4.T3.44.44.44.3.m1.1b"><cn id="S4.T3.44.44.44.3.m1.1.1.cmml" type="float" xref="S4.T3.44.44.44.3.m1.1.1">0.616</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.44.44.44.3.m1.1c">0.616</annotation><annotation encoding="application/x-llamapun" id="S4.T3.44.44.44.3.m1.1d">0.616</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.45.45.45.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.335" class="ltx_Math" display="inline" id="S4.T3.45.45.45.4.m1.1"><semantics id="S4.T3.45.45.45.4.m1.1a"><mn id="S4.T3.45.45.45.4.m1.1.1" xref="S4.T3.45.45.45.4.m1.1.1.cmml">0.335</mn><annotation-xml encoding="MathML-Content" id="S4.T3.45.45.45.4.m1.1b"><cn id="S4.T3.45.45.45.4.m1.1.1.cmml" type="float" xref="S4.T3.45.45.45.4.m1.1.1">0.335</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.45.45.45.4.m1.1c">0.335</annotation><annotation encoding="application/x-llamapun" id="S4.T3.45.45.45.4.m1.1d">0.335</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.46.46.46.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.525" class="ltx_Math" display="inline" id="S4.T3.46.46.46.5.m1.1"><semantics id="S4.T3.46.46.46.5.m1.1a"><mn id="S4.T3.46.46.46.5.m1.1.1" xref="S4.T3.46.46.46.5.m1.1.1.cmml">0.525</mn><annotation-xml encoding="MathML-Content" id="S4.T3.46.46.46.5.m1.1b"><cn id="S4.T3.46.46.46.5.m1.1.1.cmml" type="float" xref="S4.T3.46.46.46.5.m1.1.1">0.525</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.46.46.46.5.m1.1c">0.525</annotation><annotation encoding="application/x-llamapun" id="S4.T3.46.46.46.5.m1.1d">0.525</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.51.51.51">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.51.51.51.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T3.51.51.51.6.1">SDM</span> (Subset)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.47.47.47.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.795" class="ltx_Math" display="inline" id="S4.T3.47.47.47.1.m1.1"><semantics id="S4.T3.47.47.47.1.m1.1a"><mn id="S4.T3.47.47.47.1.m1.1.1" xref="S4.T3.47.47.47.1.m1.1.1.cmml">0.795</mn><annotation-xml encoding="MathML-Content" id="S4.T3.47.47.47.1.m1.1b"><cn id="S4.T3.47.47.47.1.m1.1.1.cmml" type="float" xref="S4.T3.47.47.47.1.m1.1.1">0.795</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.47.47.47.1.m1.1c">0.795</annotation><annotation encoding="application/x-llamapun" id="S4.T3.47.47.47.1.m1.1d">0.795</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.48.48.48.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.856" class="ltx_Math" display="inline" id="S4.T3.48.48.48.2.m1.1"><semantics id="S4.T3.48.48.48.2.m1.1a"><mn id="S4.T3.48.48.48.2.m1.1.1" xref="S4.T3.48.48.48.2.m1.1.1.cmml">0.856</mn><annotation-xml encoding="MathML-Content" id="S4.T3.48.48.48.2.m1.1b"><cn id="S4.T3.48.48.48.2.m1.1.1.cmml" type="float" xref="S4.T3.48.48.48.2.m1.1.1">0.856</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.48.48.48.2.m1.1c">0.856</annotation><annotation encoding="application/x-llamapun" id="S4.T3.48.48.48.2.m1.1d">0.856</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.49.49.49.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.611" class="ltx_Math" display="inline" id="S4.T3.49.49.49.3.m1.1"><semantics id="S4.T3.49.49.49.3.m1.1a"><mn id="S4.T3.49.49.49.3.m1.1.1" xref="S4.T3.49.49.49.3.m1.1.1.cmml">0.611</mn><annotation-xml encoding="MathML-Content" id="S4.T3.49.49.49.3.m1.1b"><cn id="S4.T3.49.49.49.3.m1.1.1.cmml" type="float" xref="S4.T3.49.49.49.3.m1.1.1">0.611</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.49.49.49.3.m1.1c">0.611</annotation><annotation encoding="application/x-llamapun" id="S4.T3.49.49.49.3.m1.1d">0.611</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.50.50.50.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.416" class="ltx_Math" display="inline" id="S4.T3.50.50.50.4.m1.1"><semantics id="S4.T3.50.50.50.4.m1.1a"><mn id="S4.T3.50.50.50.4.m1.1.1" xref="S4.T3.50.50.50.4.m1.1.1.cmml">0.416</mn><annotation-xml encoding="MathML-Content" id="S4.T3.50.50.50.4.m1.1b"><cn id="S4.T3.50.50.50.4.m1.1.1.cmml" type="float" xref="S4.T3.50.50.50.4.m1.1.1">0.416</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.50.50.50.4.m1.1c">0.416</annotation><annotation encoding="application/x-llamapun" id="S4.T3.50.50.50.4.m1.1d">0.416</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.51.51.51.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.681" class="ltx_Math" display="inline" id="S4.T3.51.51.51.5.m1.1"><semantics id="S4.T3.51.51.51.5.m1.1a"><mn id="S4.T3.51.51.51.5.m1.1.1" xref="S4.T3.51.51.51.5.m1.1.1.cmml">0.681</mn><annotation-xml encoding="MathML-Content" id="S4.T3.51.51.51.5.m1.1b"><cn id="S4.T3.51.51.51.5.m1.1.1.cmml" type="float" xref="S4.T3.51.51.51.5.m1.1.1">0.681</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.51.51.51.5.m1.1c">0.681</annotation><annotation encoding="application/x-llamapun" id="S4.T3.51.51.51.5.m1.1d">0.681</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.56.56.56">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T3.56.56.56.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T3.56.56.56.6.1">SDM</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.52.52.52.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.52.52.52.1.1">0.864</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.53.53.53.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.861" class="ltx_Math" display="inline" id="S4.T3.53.53.53.2.m1.1"><semantics id="S4.T3.53.53.53.2.m1.1a"><mn id="S4.T3.53.53.53.2.m1.1.1" xref="S4.T3.53.53.53.2.m1.1.1.cmml">0.861</mn><annotation-xml encoding="MathML-Content" id="S4.T3.53.53.53.2.m1.1b"><cn id="S4.T3.53.53.53.2.m1.1.1.cmml" type="float" xref="S4.T3.53.53.53.2.m1.1.1">0.861</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.53.53.53.2.m1.1c">0.861</annotation><annotation encoding="application/x-llamapun" id="S4.T3.53.53.53.2.m1.1d">0.861</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.54.54.54.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.621" class="ltx_Math" display="inline" id="S4.T3.54.54.54.3.m1.1"><semantics id="S4.T3.54.54.54.3.m1.1a"><mn id="S4.T3.54.54.54.3.m1.1.1" xref="S4.T3.54.54.54.3.m1.1.1.cmml">0.621</mn><annotation-xml encoding="MathML-Content" id="S4.T3.54.54.54.3.m1.1b"><cn id="S4.T3.54.54.54.3.m1.1.1.cmml" type="float" xref="S4.T3.54.54.54.3.m1.1.1">0.621</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.54.54.54.3.m1.1c">0.621</annotation><annotation encoding="application/x-llamapun" id="S4.T3.54.54.54.3.m1.1d">0.621</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.55.55.55.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.55.55.55.4.1">0.471</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.56.56.56.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.56.56.56.5.1">0.744</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.61.61.61">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.61.61.61.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T3.61.61.61.6.1">SDM</span>+MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.57.57.57.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.681" class="ltx_Math" display="inline" id="S4.T3.57.57.57.1.m1.1"><semantics id="S4.T3.57.57.57.1.m1.1a"><mn id="S4.T3.57.57.57.1.m1.1.1" xref="S4.T3.57.57.57.1.m1.1.1.cmml">0.681</mn><annotation-xml encoding="MathML-Content" id="S4.T3.57.57.57.1.m1.1b"><cn id="S4.T3.57.57.57.1.m1.1.1.cmml" type="float" xref="S4.T3.57.57.57.1.m1.1.1">0.681</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.57.57.57.1.m1.1c">0.681</annotation><annotation encoding="application/x-llamapun" id="S4.T3.57.57.57.1.m1.1d">0.681</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.58.58.58.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.58.58.58.2.1">0.907</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.59.59.59.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.59.59.59.3.1">0.653</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.60.60.60.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.413" class="ltx_Math" display="inline" id="S4.T3.60.60.60.4.m1.1"><semantics id="S4.T3.60.60.60.4.m1.1a"><mn id="S4.T3.60.60.60.4.m1.1.1" xref="S4.T3.60.60.60.4.m1.1.1.cmml">0.413</mn><annotation-xml encoding="MathML-Content" id="S4.T3.60.60.60.4.m1.1b"><cn id="S4.T3.60.60.60.4.m1.1.1.cmml" type="float" xref="S4.T3.60.60.60.4.m1.1.1">0.413</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.60.60.60.4.m1.1c">0.413</annotation><annotation encoding="application/x-llamapun" id="S4.T3.60.60.60.4.m1.1d">0.413</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.61.61.61.5" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.618" class="ltx_Math" display="inline" id="S4.T3.61.61.61.5.m1.1"><semantics id="S4.T3.61.61.61.5.m1.1a"><mn id="S4.T3.61.61.61.5.m1.1.1" xref="S4.T3.61.61.61.5.m1.1.1.cmml">0.618</mn><annotation-xml encoding="MathML-Content" id="S4.T3.61.61.61.5.m1.1b"><cn id="S4.T3.61.61.61.5.m1.1.1.cmml" type="float" xref="S4.T3.61.61.61.5.m1.1.1">0.618</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.61.61.61.5.m1.1c">0.618</annotation><annotation encoding="application/x-llamapun" id="S4.T3.61.61.61.5.m1.1d">0.618</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the results of an automatic evaluation of the mT0-XL model's performance on German, Russian, and Spanish text detoxification tasks.  The model was trained on three different datasets: the original MultiParaDetox (MPD) dataset, a newly collected and synthetically generated dataset (SynthDetoxM, SDM), and a combined dataset consisting of both MPD and SDM. The table shows the results in terms of several key metrics: Style Transfer Accuracy (STA), which measures the success of the model in reducing toxicity; Content Similarity (SIM), indicating how well the meaning of the original text is preserved after detoxification; Fluency (FL), reflecting the grammatical correctness and readability of the detoxified text; and a combined Joint Score (J) that considers all three metrics.  This allows for a comparison of the model's performance when trained on different amounts and types of data, revealing the impact of synthetic data on the quality of text detoxification.
> <details>
> <summary>read the caption</summary>
> Таблица 3: Results of the automatic evaluation for mT0-XL on German, Russian, and Spanish trained on original data (MPD stands for MultiParaDetox), our collected and synthetically generated data (SDM stands for SynthDetoxM) and on their combination (MultiParaDetox + SynthDetoxM).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.45">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.45.46.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T4.45.46.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.45.46.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.45.46.1.2.1">German</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.45.46.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.45.46.1.3.1">Spanish</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.45.46.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.45.46.1.4.1">Russian</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3" style="background-color:#90EE90;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.3.3.4.1" style="background-color:#90EE90;">Human References</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.733" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1" style="background-color:#90EE90;"><semantics id="S5.T4.1.1.1.m1.1a"><mn id="S5.T4.1.1.1.m1.1.1" mathbackground="#90EE90" xref="S5.T4.1.1.1.m1.1.1.cmml">0.733</mn><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><cn id="S5.T4.1.1.1.m1.1.1.cmml" type="float" xref="S5.T4.1.1.1.m1.1.1">0.733</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">0.733</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">0.733</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.709" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1" style="background-color:#90EE90;"><semantics id="S5.T4.2.2.2.m1.1a"><mn id="S5.T4.2.2.2.m1.1.1" mathbackground="#90EE90" xref="S5.T4.2.2.2.m1.1.1.cmml">0.709</mn><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><cn id="S5.T4.2.2.2.m1.1.1.cmml" type="float" xref="S5.T4.2.2.2.m1.1.1">0.709</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">0.709</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">0.709</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.732" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1" style="background-color:#90EE90;"><semantics id="S5.T4.3.3.3.m1.1a"><mn id="S5.T4.3.3.3.m1.1.1" mathbackground="#90EE90" xref="S5.T4.3.3.3.m1.1.1.cmml">0.732</mn><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><cn id="S5.T4.3.3.3.m1.1.1.cmml" type="float" xref="S5.T4.3.3.3.m1.1.1">0.732</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">0.732</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">0.732</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.45.47.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S5.T4.45.47.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.45.47.2.1.1">Baselines</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.6.6.4.1" style="background-color:#E6E6E6;">Duplicate</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.287" class="ltx_Math" display="inline" id="S5.T4.4.4.1.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.4.4.1.m1.1a"><mn id="S5.T4.4.4.1.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.4.4.1.m1.1.1.cmml">0.287</mn><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.1.m1.1b"><cn id="S5.T4.4.4.1.m1.1.1.cmml" type="float" xref="S5.T4.4.4.1.m1.1.1">0.287</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.1.m1.1c">0.287</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.1.m1.1d">0.287</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.090" class="ltx_Math" display="inline" id="S5.T4.5.5.2.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.5.5.2.m1.1a"><mn id="S5.T4.5.5.2.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.5.5.2.m1.1.1.cmml">0.090</mn><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.2.m1.1b"><cn id="S5.T4.5.5.2.m1.1.1.cmml" type="float" xref="S5.T4.5.5.2.m1.1.1">0.090</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.2.m1.1c">0.090</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.2.m1.1d">0.090</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.048" class="ltx_Math" display="inline" id="S5.T4.6.6.3.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.6.6.3.m1.1a"><mn id="S5.T4.6.6.3.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.6.6.3.m1.1.1.cmml">0.048</mn><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.3.m1.1b"><cn id="S5.T4.6.6.3.m1.1.1.cmml" type="float" xref="S5.T4.6.6.3.m1.1.1">0.048</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.3.m1.1c">0.048</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.3.m1.1d">0.048</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.9.9.4.1" style="background-color:#E6E6E6;">Delete</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.362" class="ltx_Math" display="inline" id="S5.T4.7.7.1.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.7.7.1.m1.1a"><mn id="S5.T4.7.7.1.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.7.7.1.m1.1.1.cmml">0.362</mn><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.1.m1.1b"><cn id="S5.T4.7.7.1.m1.1.1.cmml" type="float" xref="S5.T4.7.7.1.m1.1.1">0.362</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.1.m1.1c">0.362</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.1.m1.1d">0.362</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.319" class="ltx_Math" display="inline" id="S5.T4.8.8.2.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.8.8.2.m1.1a"><mn id="S5.T4.8.8.2.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.8.8.2.m1.1.1.cmml">0.319</mn><annotation-xml encoding="MathML-Content" id="S5.T4.8.8.2.m1.1b"><cn id="S5.T4.8.8.2.m1.1.1.cmml" type="float" xref="S5.T4.8.8.2.m1.1.1">0.319</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.8.2.m1.1c">0.319</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.8.2.m1.1d">0.319</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.255" class="ltx_Math" display="inline" id="S5.T4.9.9.3.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.9.9.3.m1.1a"><mn id="S5.T4.9.9.3.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.9.9.3.m1.1.1.cmml">0.255</mn><annotation-xml encoding="MathML-Content" id="S5.T4.9.9.3.m1.1b"><cn id="S5.T4.9.9.3.m1.1.1.cmml" type="float" xref="S5.T4.9.9.3.m1.1.1">0.255</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.9.9.3.m1.1c">0.255</annotation><annotation encoding="application/x-llamapun" id="S5.T4.9.9.3.m1.1d">0.255</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.12.12" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.12.12.4.1" style="background-color:#E6E6E6;">Backtranslation</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.233" class="ltx_Math" display="inline" id="S5.T4.10.10.1.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.10.10.1.m1.1a"><mn id="S5.T4.10.10.1.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.10.10.1.m1.1.1.cmml">0.233</mn><annotation-xml encoding="MathML-Content" id="S5.T4.10.10.1.m1.1b"><cn id="S5.T4.10.10.1.m1.1.1.cmml" type="float" xref="S5.T4.10.10.1.m1.1.1">0.233</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.10.10.1.m1.1c">0.233</annotation><annotation encoding="application/x-llamapun" id="S5.T4.10.10.1.m1.1d">0.233</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.275" class="ltx_Math" display="inline" id="S5.T4.11.11.2.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.11.11.2.m1.1a"><mn id="S5.T4.11.11.2.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.11.11.2.m1.1.1.cmml">0.275</mn><annotation-xml encoding="MathML-Content" id="S5.T4.11.11.2.m1.1b"><cn id="S5.T4.11.11.2.m1.1.1.cmml" type="float" xref="S5.T4.11.11.2.m1.1.1">0.275</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.11.11.2.m1.1c">0.275</annotation><annotation encoding="application/x-llamapun" id="S5.T4.11.11.2.m1.1d">0.275</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.223" class="ltx_Math" display="inline" id="S5.T4.12.12.3.m1.1" style="background-color:#E6E6E6;"><semantics id="S5.T4.12.12.3.m1.1a"><mn id="S5.T4.12.12.3.m1.1.1" mathbackground="#E6E6E6" xref="S5.T4.12.12.3.m1.1.1.cmml">0.223</mn><annotation-xml encoding="MathML-Content" id="S5.T4.12.12.3.m1.1b"><cn id="S5.T4.12.12.3.m1.1.1.cmml" type="float" xref="S5.T4.12.12.3.m1.1.1">0.223</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.12.12.3.m1.1c">0.223</annotation><annotation encoding="application/x-llamapun" id="S5.T4.12.12.3.m1.1d">0.223</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.45.48.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S5.T4.45.48.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S5.T4.45.48.3.1.1">mT0-XL<span class="ltx_text ltx_font_serif" id="S5.T4.45.48.3.1.1.1"> supervised fine-tuning</span></span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.15.15.4" style="padding-left:2.0pt;padding-right:2.0pt;">MultiParaDetox</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.13.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.446" class="ltx_Math" display="inline" id="S5.T4.13.13.1.m1.1"><semantics id="S5.T4.13.13.1.m1.1a"><mn id="S5.T4.13.13.1.m1.1.1" xref="S5.T4.13.13.1.m1.1.1.cmml">0.446</mn><annotation-xml encoding="MathML-Content" id="S5.T4.13.13.1.m1.1b"><cn id="S5.T4.13.13.1.m1.1.1.cmml" type="float" xref="S5.T4.13.13.1.m1.1.1">0.446</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.13.13.1.m1.1c">0.446</annotation><annotation encoding="application/x-llamapun" id="S5.T4.13.13.1.m1.1d">0.446</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.344" class="ltx_Math" display="inline" id="S5.T4.14.14.2.m1.1"><semantics id="S5.T4.14.14.2.m1.1a"><mn id="S5.T4.14.14.2.m1.1.1" xref="S5.T4.14.14.2.m1.1.1.cmml">0.344</mn><annotation-xml encoding="MathML-Content" id="S5.T4.14.14.2.m1.1b"><cn id="S5.T4.14.14.2.m1.1.1.cmml" type="float" xref="S5.T4.14.14.2.m1.1.1">0.344</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.14.14.2.m1.1c">0.344</annotation><annotation encoding="application/x-llamapun" id="S5.T4.14.14.2.m1.1d">0.344</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.15.15.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.472" class="ltx_Math" display="inline" id="S5.T4.15.15.3.m1.1"><semantics id="S5.T4.15.15.3.m1.1a"><mn id="S5.T4.15.15.3.m1.1.1" xref="S5.T4.15.15.3.m1.1.1.cmml">0.472</mn><annotation-xml encoding="MathML-Content" id="S5.T4.15.15.3.m1.1b"><cn id="S5.T4.15.15.3.m1.1.1.cmml" type="float" xref="S5.T4.15.15.3.m1.1.1">0.472</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.15.15.3.m1.1c">0.472</annotation><annotation encoding="application/x-llamapun" id="S5.T4.15.15.3.m1.1d">0.472</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.18.18.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text ltx_font_sansserif" id="S5.T4.18.18.4.1">SDM</span> (Subset)</th>
<td class="ltx_td ltx_align_center" id="S5.T4.16.16.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.460" class="ltx_Math" display="inline" id="S5.T4.16.16.1.m1.1"><semantics id="S5.T4.16.16.1.m1.1a"><mn id="S5.T4.16.16.1.m1.1.1" xref="S5.T4.16.16.1.m1.1.1.cmml">0.460</mn><annotation-xml encoding="MathML-Content" id="S5.T4.16.16.1.m1.1b"><cn id="S5.T4.16.16.1.m1.1.1.cmml" type="float" xref="S5.T4.16.16.1.m1.1.1">0.460</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.16.16.1.m1.1c">0.460</annotation><annotation encoding="application/x-llamapun" id="S5.T4.16.16.1.m1.1d">0.460</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.17.17.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.402" class="ltx_Math" display="inline" id="S5.T4.17.17.2.m1.1"><semantics id="S5.T4.17.17.2.m1.1a"><mn id="S5.T4.17.17.2.m1.1.1" xref="S5.T4.17.17.2.m1.1.1.cmml">0.402</mn><annotation-xml encoding="MathML-Content" id="S5.T4.17.17.2.m1.1b"><cn id="S5.T4.17.17.2.m1.1.1.cmml" type="float" xref="S5.T4.17.17.2.m1.1.1">0.402</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.17.17.2.m1.1c">0.402</annotation><annotation encoding="application/x-llamapun" id="S5.T4.17.17.2.m1.1d">0.402</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.18.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.475" class="ltx_Math" display="inline" id="S5.T4.18.18.3.m1.1"><semantics id="S5.T4.18.18.3.m1.1a"><mn id="S5.T4.18.18.3.m1.1.1" xref="S5.T4.18.18.3.m1.1.1.cmml">0.475</mn><annotation-xml encoding="MathML-Content" id="S5.T4.18.18.3.m1.1b"><cn id="S5.T4.18.18.3.m1.1.1.cmml" type="float" xref="S5.T4.18.18.3.m1.1.1">0.475</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.18.18.3.m1.1c">0.475</annotation><annotation encoding="application/x-llamapun" id="S5.T4.18.18.3.m1.1d">0.475</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.21.21.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_sansserif" id="S5.T4.21.21.4.1">SDM</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.19.19.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\boldsymbol{0.482}" class="ltx_Math" display="inline" id="S5.T4.19.19.1.m1.1"><semantics id="S5.T4.19.19.1.m1.1a"><mn class="ltx_mathvariant_bold" id="S5.T4.19.19.1.m1.1.1" mathvariant="bold" xref="S5.T4.19.19.1.m1.1.1.cmml">0.482</mn><annotation-xml encoding="MathML-Content" id="S5.T4.19.19.1.m1.1b"><cn id="S5.T4.19.19.1.m1.1.1.cmml" type="float" xref="S5.T4.19.19.1.m1.1.1">0.482</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.19.19.1.m1.1c">\boldsymbol{0.482}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.19.19.1.m1.1d">bold_0.482</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.20.20.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\boldsymbol{0.470}" class="ltx_Math" display="inline" id="S5.T4.20.20.2.m1.1"><semantics id="S5.T4.20.20.2.m1.1a"><mn class="ltx_mathvariant_bold" id="S5.T4.20.20.2.m1.1.1" mathvariant="bold" xref="S5.T4.20.20.2.m1.1.1.cmml">0.470</mn><annotation-xml encoding="MathML-Content" id="S5.T4.20.20.2.m1.1b"><cn id="S5.T4.20.20.2.m1.1.1.cmml" type="float" xref="S5.T4.20.20.2.m1.1.1">0.470</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.20.20.2.m1.1c">\boldsymbol{0.470}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.20.20.2.m1.1d">bold_0.470</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.21.21.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\boldsymbol{0.546}" class="ltx_Math" display="inline" id="S5.T4.21.21.3.m1.1"><semantics id="S5.T4.21.21.3.m1.1a"><mn class="ltx_mathvariant_bold" id="S5.T4.21.21.3.m1.1.1" mathvariant="bold" xref="S5.T4.21.21.3.m1.1.1.cmml">0.546</mn><annotation-xml encoding="MathML-Content" id="S5.T4.21.21.3.m1.1b"><cn id="S5.T4.21.21.3.m1.1.1.cmml" type="float" xref="S5.T4.21.21.3.m1.1.1">0.546</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.21.21.3.m1.1c">\boldsymbol{0.546}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.21.21.3.m1.1d">bold_0.546</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.45.49.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S5.T4.45.49.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.45.49.4.1.1">10-shot LLM prediction</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.24.24.4" style="padding-left:2.0pt;padding-right:2.0pt;">Gemma 2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.22.22.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.353" class="ltx_Math" display="inline" id="S5.T4.22.22.1.m1.1"><semantics id="S5.T4.22.22.1.m1.1a"><mn id="S5.T4.22.22.1.m1.1.1" xref="S5.T4.22.22.1.m1.1.1.cmml">0.353</mn><annotation-xml encoding="MathML-Content" id="S5.T4.22.22.1.m1.1b"><cn id="S5.T4.22.22.1.m1.1.1.cmml" type="float" xref="S5.T4.22.22.1.m1.1.1">0.353</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.22.22.1.m1.1c">0.353</annotation><annotation encoding="application/x-llamapun" id="S5.T4.22.22.1.m1.1d">0.353</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.23.23.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.380" class="ltx_Math" display="inline" id="S5.T4.23.23.2.m1.1"><semantics id="S5.T4.23.23.2.m1.1a"><mn id="S5.T4.23.23.2.m1.1.1" xref="S5.T4.23.23.2.m1.1.1.cmml">0.380</mn><annotation-xml encoding="MathML-Content" id="S5.T4.23.23.2.m1.1b"><cn id="S5.T4.23.23.2.m1.1.1.cmml" type="float" xref="S5.T4.23.23.2.m1.1.1">0.380</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.23.23.2.m1.1c">0.380</annotation><annotation encoding="application/x-llamapun" id="S5.T4.23.23.2.m1.1d">0.380</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.24.24.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.404" class="ltx_Math" display="inline" id="S5.T4.24.24.3.m1.1"><semantics id="S5.T4.24.24.3.m1.1a"><mn id="S5.T4.24.24.3.m1.1.1" xref="S5.T4.24.24.3.m1.1.1.cmml">0.404</mn><annotation-xml encoding="MathML-Content" id="S5.T4.24.24.3.m1.1b"><cn id="S5.T4.24.24.3.m1.1.1.cmml" type="float" xref="S5.T4.24.24.3.m1.1.1">0.404</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.24.24.3.m1.1c">0.404</annotation><annotation encoding="application/x-llamapun" id="S5.T4.24.24.3.m1.1d">0.404</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.27.27.4" style="padding-left:2.0pt;padding-right:2.0pt;">Mistral Nemo</th>
<td class="ltx_td ltx_align_center" id="S5.T4.25.25.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.286" class="ltx_Math" display="inline" id="S5.T4.25.25.1.m1.1"><semantics id="S5.T4.25.25.1.m1.1a"><mn id="S5.T4.25.25.1.m1.1.1" xref="S5.T4.25.25.1.m1.1.1.cmml">0.286</mn><annotation-xml encoding="MathML-Content" id="S5.T4.25.25.1.m1.1b"><cn id="S5.T4.25.25.1.m1.1.1.cmml" type="float" xref="S5.T4.25.25.1.m1.1.1">0.286</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.25.25.1.m1.1c">0.286</annotation><annotation encoding="application/x-llamapun" id="S5.T4.25.25.1.m1.1d">0.286</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.26.26.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.290" class="ltx_Math" display="inline" id="S5.T4.26.26.2.m1.1"><semantics id="S5.T4.26.26.2.m1.1a"><mn id="S5.T4.26.26.2.m1.1.1" xref="S5.T4.26.26.2.m1.1.1.cmml">0.290</mn><annotation-xml encoding="MathML-Content" id="S5.T4.26.26.2.m1.1b"><cn id="S5.T4.26.26.2.m1.1.1.cmml" type="float" xref="S5.T4.26.26.2.m1.1.1">0.290</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.26.26.2.m1.1c">0.290</annotation><annotation encoding="application/x-llamapun" id="S5.T4.26.26.2.m1.1d">0.290</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.27.27.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.258" class="ltx_Math" display="inline" id="S5.T4.27.27.3.m1.1"><semantics id="S5.T4.27.27.3.m1.1a"><mn id="S5.T4.27.27.3.m1.1.1" xref="S5.T4.27.27.3.m1.1.1.cmml">0.258</mn><annotation-xml encoding="MathML-Content" id="S5.T4.27.27.3.m1.1b"><cn id="S5.T4.27.27.3.m1.1.1.cmml" type="float" xref="S5.T4.27.27.3.m1.1.1">0.258</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.27.27.3.m1.1c">0.258</annotation><annotation encoding="application/x-llamapun" id="S5.T4.27.27.3.m1.1d">0.258</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.30.30.4" style="padding-left:2.0pt;padding-right:2.0pt;">Mistral Small</th>
<td class="ltx_td ltx_align_center" id="S5.T4.28.28.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.371" class="ltx_Math" display="inline" id="S5.T4.28.28.1.m1.1"><semantics id="S5.T4.28.28.1.m1.1a"><mn id="S5.T4.28.28.1.m1.1.1" xref="S5.T4.28.28.1.m1.1.1.cmml">0.371</mn><annotation-xml encoding="MathML-Content" id="S5.T4.28.28.1.m1.1b"><cn id="S5.T4.28.28.1.m1.1.1.cmml" type="float" xref="S5.T4.28.28.1.m1.1.1">0.371</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.28.28.1.m1.1c">0.371</annotation><annotation encoding="application/x-llamapun" id="S5.T4.28.28.1.m1.1d">0.371</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.29.29.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.308" class="ltx_Math" display="inline" id="S5.T4.29.29.2.m1.1"><semantics id="S5.T4.29.29.2.m1.1a"><mn id="S5.T4.29.29.2.m1.1.1" xref="S5.T4.29.29.2.m1.1.1.cmml">0.308</mn><annotation-xml encoding="MathML-Content" id="S5.T4.29.29.2.m1.1b"><cn id="S5.T4.29.29.2.m1.1.1.cmml" type="float" xref="S5.T4.29.29.2.m1.1.1">0.308</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.29.29.2.m1.1c">0.308</annotation><annotation encoding="application/x-llamapun" id="S5.T4.29.29.2.m1.1d">0.308</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.30.30.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.273" class="ltx_Math" display="inline" id="S5.T4.30.30.3.m1.1"><semantics id="S5.T4.30.30.3.m1.1a"><mn id="S5.T4.30.30.3.m1.1.1" xref="S5.T4.30.30.3.m1.1.1.cmml">0.273</mn><annotation-xml encoding="MathML-Content" id="S5.T4.30.30.3.m1.1b"><cn id="S5.T4.30.30.3.m1.1.1.cmml" type="float" xref="S5.T4.30.30.3.m1.1.1">0.273</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.30.30.3.m1.1c">0.273</annotation><annotation encoding="application/x-llamapun" id="S5.T4.30.30.3.m1.1d">0.273</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.33.33.4" style="padding-left:2.0pt;padding-right:2.0pt;">Command R</th>
<td class="ltx_td ltx_align_center" id="S5.T4.31.31.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.328" class="ltx_Math" display="inline" id="S5.T4.31.31.1.m1.1"><semantics id="S5.T4.31.31.1.m1.1a"><mn id="S5.T4.31.31.1.m1.1.1" xref="S5.T4.31.31.1.m1.1.1.cmml">0.328</mn><annotation-xml encoding="MathML-Content" id="S5.T4.31.31.1.m1.1b"><cn id="S5.T4.31.31.1.m1.1.1.cmml" type="float" xref="S5.T4.31.31.1.m1.1.1">0.328</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.31.31.1.m1.1c">0.328</annotation><annotation encoding="application/x-llamapun" id="S5.T4.31.31.1.m1.1d">0.328</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.32.32.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.344" class="ltx_Math" display="inline" id="S5.T4.32.32.2.m1.1"><semantics id="S5.T4.32.32.2.m1.1a"><mn id="S5.T4.32.32.2.m1.1.1" xref="S5.T4.32.32.2.m1.1.1.cmml">0.344</mn><annotation-xml encoding="MathML-Content" id="S5.T4.32.32.2.m1.1b"><cn id="S5.T4.32.32.2.m1.1.1.cmml" type="float" xref="S5.T4.32.32.2.m1.1.1">0.344</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.32.32.2.m1.1c">0.344</annotation><annotation encoding="application/x-llamapun" id="S5.T4.32.32.2.m1.1d">0.344</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.33.33.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.402" class="ltx_Math" display="inline" id="S5.T4.33.33.3.m1.1"><semantics id="S5.T4.33.33.3.m1.1a"><mn id="S5.T4.33.33.3.m1.1.1" xref="S5.T4.33.33.3.m1.1.1.cmml">0.402</mn><annotation-xml encoding="MathML-Content" id="S5.T4.33.33.3.m1.1b"><cn id="S5.T4.33.33.3.m1.1.1.cmml" type="float" xref="S5.T4.33.33.3.m1.1.1">0.402</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.33.33.3.m1.1c">0.402</annotation><annotation encoding="application/x-llamapun" id="S5.T4.33.33.3.m1.1d">0.402</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.36.36.4" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen 2.5</th>
<td class="ltx_td ltx_align_center" id="S5.T4.34.34.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.402" class="ltx_Math" display="inline" id="S5.T4.34.34.1.m1.1"><semantics id="S5.T4.34.34.1.m1.1a"><mn id="S5.T4.34.34.1.m1.1.1" xref="S5.T4.34.34.1.m1.1.1.cmml">0.402</mn><annotation-xml encoding="MathML-Content" id="S5.T4.34.34.1.m1.1b"><cn id="S5.T4.34.34.1.m1.1.1.cmml" type="float" xref="S5.T4.34.34.1.m1.1.1">0.402</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.34.34.1.m1.1c">0.402</annotation><annotation encoding="application/x-llamapun" id="S5.T4.34.34.1.m1.1d">0.402</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.35.35.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.443" class="ltx_Math" display="inline" id="S5.T4.35.35.2.m1.1"><semantics id="S5.T4.35.35.2.m1.1a"><mn id="S5.T4.35.35.2.m1.1.1" xref="S5.T4.35.35.2.m1.1.1.cmml">0.443</mn><annotation-xml encoding="MathML-Content" id="S5.T4.35.35.2.m1.1b"><cn id="S5.T4.35.35.2.m1.1.1.cmml" type="float" xref="S5.T4.35.35.2.m1.1.1">0.443</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.35.35.2.m1.1c">0.443</annotation><annotation encoding="application/x-llamapun" id="S5.T4.35.35.2.m1.1d">0.443</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.36.36.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.428" class="ltx_Math" display="inline" id="S5.T4.36.36.3.m1.1"><semantics id="S5.T4.36.36.3.m1.1a"><mn id="S5.T4.36.36.3.m1.1.1" xref="S5.T4.36.36.3.m1.1.1.cmml">0.428</mn><annotation-xml encoding="MathML-Content" id="S5.T4.36.36.3.m1.1b"><cn id="S5.T4.36.36.3.m1.1.1.cmml" type="float" xref="S5.T4.36.36.3.m1.1.1">0.428</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.36.36.3.m1.1c">0.428</annotation><annotation encoding="application/x-llamapun" id="S5.T4.36.36.3.m1.1d">0.428</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.39.39">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.39.39.4" style="padding-left:2.0pt;padding-right:2.0pt;">Llama 3.1 8B</th>
<td class="ltx_td ltx_align_center" id="S5.T4.37.37.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.394" class="ltx_Math" display="inline" id="S5.T4.37.37.1.m1.1"><semantics id="S5.T4.37.37.1.m1.1a"><mn id="S5.T4.37.37.1.m1.1.1" xref="S5.T4.37.37.1.m1.1.1.cmml">0.394</mn><annotation-xml encoding="MathML-Content" id="S5.T4.37.37.1.m1.1b"><cn id="S5.T4.37.37.1.m1.1.1.cmml" type="float" xref="S5.T4.37.37.1.m1.1.1">0.394</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.37.37.1.m1.1c">0.394</annotation><annotation encoding="application/x-llamapun" id="S5.T4.37.37.1.m1.1d">0.394</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.38.38.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.341" class="ltx_Math" display="inline" id="S5.T4.38.38.2.m1.1"><semantics id="S5.T4.38.38.2.m1.1a"><mn id="S5.T4.38.38.2.m1.1.1" xref="S5.T4.38.38.2.m1.1.1.cmml">0.341</mn><annotation-xml encoding="MathML-Content" id="S5.T4.38.38.2.m1.1b"><cn id="S5.T4.38.38.2.m1.1.1.cmml" type="float" xref="S5.T4.38.38.2.m1.1.1">0.341</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.38.38.2.m1.1c">0.341</annotation><annotation encoding="application/x-llamapun" id="S5.T4.38.38.2.m1.1d">0.341</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.39.39.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.357" class="ltx_Math" display="inline" id="S5.T4.39.39.3.m1.1"><semantics id="S5.T4.39.39.3.m1.1a"><mn id="S5.T4.39.39.3.m1.1.1" xref="S5.T4.39.39.3.m1.1.1.cmml">0.357</mn><annotation-xml encoding="MathML-Content" id="S5.T4.39.39.3.m1.1b"><cn id="S5.T4.39.39.3.m1.1.1.cmml" type="float" xref="S5.T4.39.39.3.m1.1.1">0.357</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.39.39.3.m1.1c">0.357</annotation><annotation encoding="application/x-llamapun" id="S5.T4.39.39.3.m1.1d">0.357</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.42.42.4" style="padding-left:2.0pt;padding-right:2.0pt;">Aya Expanse 8B</th>
<td class="ltx_td ltx_align_center" id="S5.T4.40.40.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.305" class="ltx_Math" display="inline" id="S5.T4.40.40.1.m1.1"><semantics id="S5.T4.40.40.1.m1.1a"><mn id="S5.T4.40.40.1.m1.1.1" xref="S5.T4.40.40.1.m1.1.1.cmml">0.305</mn><annotation-xml encoding="MathML-Content" id="S5.T4.40.40.1.m1.1b"><cn id="S5.T4.40.40.1.m1.1.1.cmml" type="float" xref="S5.T4.40.40.1.m1.1.1">0.305</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.40.40.1.m1.1c">0.305</annotation><annotation encoding="application/x-llamapun" id="S5.T4.40.40.1.m1.1d">0.305</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.41.41.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.246" class="ltx_Math" display="inline" id="S5.T4.41.41.2.m1.1"><semantics id="S5.T4.41.41.2.m1.1a"><mn id="S5.T4.41.41.2.m1.1.1" xref="S5.T4.41.41.2.m1.1.1.cmml">0.246</mn><annotation-xml encoding="MathML-Content" id="S5.T4.41.41.2.m1.1b"><cn id="S5.T4.41.41.2.m1.1.1.cmml" type="float" xref="S5.T4.41.41.2.m1.1.1">0.246</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.41.41.2.m1.1c">0.246</annotation><annotation encoding="application/x-llamapun" id="S5.T4.41.41.2.m1.1d">0.246</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T4.42.42.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.225" class="ltx_Math" display="inline" id="S5.T4.42.42.3.m1.1"><semantics id="S5.T4.42.42.3.m1.1a"><mn id="S5.T4.42.42.3.m1.1.1" xref="S5.T4.42.42.3.m1.1.1.cmml">0.225</mn><annotation-xml encoding="MathML-Content" id="S5.T4.42.42.3.m1.1b"><cn id="S5.T4.42.42.3.m1.1.1.cmml" type="float" xref="S5.T4.42.42.3.m1.1.1">0.225</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.42.42.3.m1.1c">0.225</annotation><annotation encoding="application/x-llamapun" id="S5.T4.42.42.3.m1.1d">0.225</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.45.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.45.45.4" style="padding-left:2.0pt;padding-right:2.0pt;">Aya Expanse 32B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.43.43.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.399" class="ltx_Math" display="inline" id="S5.T4.43.43.1.m1.1"><semantics id="S5.T4.43.43.1.m1.1a"><mn id="S5.T4.43.43.1.m1.1.1" xref="S5.T4.43.43.1.m1.1.1.cmml">0.399</mn><annotation-xml encoding="MathML-Content" id="S5.T4.43.43.1.m1.1b"><cn id="S5.T4.43.43.1.m1.1.1.cmml" type="float" xref="S5.T4.43.43.1.m1.1.1">0.399</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.43.43.1.m1.1c">0.399</annotation><annotation encoding="application/x-llamapun" id="S5.T4.43.43.1.m1.1d">0.399</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.44.44.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.320" class="ltx_Math" display="inline" id="S5.T4.44.44.2.m1.1"><semantics id="S5.T4.44.44.2.m1.1a"><mn id="S5.T4.44.44.2.m1.1.1" xref="S5.T4.44.44.2.m1.1.1.cmml">0.320</mn><annotation-xml encoding="MathML-Content" id="S5.T4.44.44.2.m1.1b"><cn id="S5.T4.44.44.2.m1.1.1.cmml" type="float" xref="S5.T4.44.44.2.m1.1.1">0.320</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.44.44.2.m1.1c">0.320</annotation><annotation encoding="application/x-llamapun" id="S5.T4.44.44.2.m1.1d">0.320</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.45.45.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="0.323" class="ltx_Math" display="inline" id="S5.T4.45.45.3.m1.1"><semantics id="S5.T4.45.45.3.m1.1a"><mn id="S5.T4.45.45.3.m1.1.1" xref="S5.T4.45.45.3.m1.1.1.cmml">0.323</mn><annotation-xml encoding="MathML-Content" id="S5.T4.45.45.3.m1.1b"><cn id="S5.T4.45.45.3.m1.1.1.cmml" type="float" xref="S5.T4.45.45.3.m1.1.1">0.323</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.45.45.3.m1.1c">0.323</annotation><annotation encoding="application/x-llamapun" id="S5.T4.45.45.3.m1.1d">0.323</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of an automatic evaluation of text detoxification models trained on different datasets.  The evaluation metric used is the J score, which combines three sub-metrics: style transfer accuracy (STA), content similarity (SIM), and fluency (FL). The table shows the performance of models trained on the MultiParaDetox dataset (MPD), the SynthDetoxM dataset (SDM), a subset of the SynthDetoxM dataset, and a combination of both datasets.  Baselines (human references, duplicate, delete, and back-translation) are included for comparison. The best overall results for each language are highlighted in bold. This table helps to assess the quality of the SynthDetoxM dataset by comparing the performance of models trained on it to models trained on the human-annotated MultiParaDetox dataset and standard baselines.
> <details>
> <summary>read the caption</summary>
> Таблица 4: Text detoxification results in terms of J scores for German, Spanish, and Russian languages. The best overall results are boldfaced. The baselines and human references are from Dementieva et al. (2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">Model</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;">German</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;">Spanish</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;">French</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;">Russian</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.2.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">Llama 3.1 8B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.2.1.2" style="padding-left:1.0pt;padding-right:1.0pt;">662</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.2.1.3" style="padding-left:1.0pt;padding-right:1.0pt;">619</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.2.1.4" style="padding-left:1.0pt;padding-right:1.0pt;">773</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.2.1.5" style="padding-left:1.0pt;padding-right:1.0pt;">1648</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.3.2.1" style="padding-left:1.0pt;padding-right:1.0pt;">Llama 3.1 70B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.3.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">898</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.3.2.3" style="padding-left:1.0pt;padding-right:1.0pt;">981</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.3.2.4" style="padding-left:1.0pt;padding-right:1.0pt;">1114</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.3.2.5" style="padding-left:1.0pt;padding-right:1.0pt;">1354</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.4.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.4.3.1" style="padding-left:1.0pt;padding-right:1.0pt;">Mistral Nemo</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.4.3.2" style="padding-left:1.0pt;padding-right:1.0pt;">622</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.4.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">583</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.4.3.4" style="padding-left:1.0pt;padding-right:1.0pt;">392</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.4.3.5" style="padding-left:1.0pt;padding-right:1.0pt;">1320</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.5.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.5.4.1" style="padding-left:1.0pt;padding-right:1.0pt;">Mistral Small</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.5.4.2" style="padding-left:1.0pt;padding-right:1.0pt;">862</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.5.4.3" style="padding-left:1.0pt;padding-right:1.0pt;">985</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.5.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">565</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.5.4.5" style="padding-left:1.0pt;padding-right:1.0pt;">2237</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.6.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.6.5.1" style="padding-left:1.0pt;padding-right:1.0pt;">Qwen 2.5 32B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.6.5.2" style="padding-left:1.0pt;padding-right:1.0pt;">477</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.6.5.3" style="padding-left:1.0pt;padding-right:1.0pt;">819</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.6.5.4" style="padding-left:1.0pt;padding-right:1.0pt;">513</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.6.5.5" style="padding-left:1.0pt;padding-right:1.0pt;">3128</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.7.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.7.6.1" style="padding-left:1.0pt;padding-right:1.0pt;">Aya Exp. 32B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.7.6.2" style="padding-left:1.0pt;padding-right:1.0pt;">458</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.7.6.3" style="padding-left:1.0pt;padding-right:1.0pt;">453</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.7.6.4" style="padding-left:1.0pt;padding-right:1.0pt;">142</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.7.6.5" style="padding-left:1.0pt;padding-right:1.0pt;">945</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.8.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.8.7.1" style="padding-left:1.0pt;padding-right:1.0pt;">Aya Exp. 8B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.8.7.2" style="padding-left:1.0pt;padding-right:1.0pt;">316</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.8.7.3" style="padding-left:1.0pt;padding-right:1.0pt;">330</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.8.7.4" style="padding-left:1.0pt;padding-right:1.0pt;">143</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.8.7.5" style="padding-left:1.0pt;padding-right:1.0pt;">765</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.9.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.9.8.1" style="padding-left:1.0pt;padding-right:1.0pt;">Command-R 32B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.9.8.2" style="padding-left:1.0pt;padding-right:1.0pt;">273</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.9.8.3" style="padding-left:1.0pt;padding-right:1.0pt;">492</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.9.8.4" style="padding-left:1.0pt;padding-right:1.0pt;">308</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.9.8.5" style="padding-left:1.0pt;padding-right:1.0pt;">2294</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.10.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T5.1.10.9.1" style="padding-left:1.0pt;padding-right:1.0pt;">Gemma 2 27B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.1.10.9.2" style="padding-left:1.0pt;padding-right:1.0pt;">394</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.1.10.9.3" style="padding-left:1.0pt;padding-right:1.0pt;">564</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.1.10.9.4" style="padding-left:1.0pt;padding-right:1.0pt;">360</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.1.10.9.5" style="padding-left:1.0pt;padding-right:1.0pt;">2019</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the counts of high-quality synthetic detoxification pairs generated for the SynthDetoxM dataset.  The data is categorized by language (German, Spanish, French, Russian) and the specific large language model (LLM) used to generate the detoxified text.  It shows how many examples were successfully generated for each language-model combination after filtering based on quality criteria. This reflects the contribution of different LLMs to the overall dataset size.
> <details>
> <summary>read the caption</summary>
> Таблица 5: Number of accepted samples in the final SynthDetoxM dataset, broken down by language and LLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.60.60">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.60.60.61.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A2.T6.60.60.61.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.60.60.61.1.1.1">Dataset</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T6.60.60.61.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.60.60.61.1.2.1">STA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T6.60.60.61.1.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.60.60.61.1.3.1">SIM</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T6.60.60.61.1.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.60.60.61.1.4.1">CHRF</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T6.60.60.61.1.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.60.60.61.1.5.1">J</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.60.60.62.2">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A2.T6.60.60.62.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.60.60.62.2.1.1">German</span></th>
</tr>
<tr class="ltx_tr" id="A2.T6.4.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.4.4.4.5" style="padding-left:1.5pt;padding-right:1.5pt;">MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.722" class="ltx_Math" display="inline" id="A2.T6.1.1.1.1.m1.1"><semantics id="A2.T6.1.1.1.1.m1.1a"><mn id="A2.T6.1.1.1.1.m1.1.1" xref="A2.T6.1.1.1.1.m1.1.1.cmml">0.722</mn><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.1.m1.1b"><cn id="A2.T6.1.1.1.1.m1.1.1.cmml" type="float" xref="A2.T6.1.1.1.1.m1.1.1">0.722</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.1.m1.1c">0.722</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.1.m1.1d">0.722</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.2.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.848" class="ltx_Math" display="inline" id="A2.T6.2.2.2.2.m1.1"><semantics id="A2.T6.2.2.2.2.m1.1a"><mn id="A2.T6.2.2.2.2.m1.1.1" xref="A2.T6.2.2.2.2.m1.1.1.cmml">0.848</mn><annotation-xml encoding="MathML-Content" id="A2.T6.2.2.2.2.m1.1b"><cn id="A2.T6.2.2.2.2.m1.1.1.cmml" type="float" xref="A2.T6.2.2.2.2.m1.1.1">0.848</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.2.2.2.2.m1.1c">0.848</annotation><annotation encoding="application/x-llamapun" id="A2.T6.2.2.2.2.m1.1d">0.848</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.3.3.3.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.602" class="ltx_Math" display="inline" id="A2.T6.3.3.3.3.m1.1"><semantics id="A2.T6.3.3.3.3.m1.1a"><mn id="A2.T6.3.3.3.3.m1.1.1" xref="A2.T6.3.3.3.3.m1.1.1.cmml">0.602</mn><annotation-xml encoding="MathML-Content" id="A2.T6.3.3.3.3.m1.1b"><cn id="A2.T6.3.3.3.3.m1.1.1.cmml" type="float" xref="A2.T6.3.3.3.3.m1.1.1">0.602</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.3.3.3.m1.1c">0.602</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.3.3.3.m1.1d">0.602</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.4.4.4.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.383" class="ltx_Math" display="inline" id="A2.T6.4.4.4.4.m1.1"><semantics id="A2.T6.4.4.4.4.m1.1a"><mn id="A2.T6.4.4.4.4.m1.1.1" xref="A2.T6.4.4.4.4.m1.1.1.cmml">0.383</mn><annotation-xml encoding="MathML-Content" id="A2.T6.4.4.4.4.m1.1b"><cn id="A2.T6.4.4.4.4.m1.1.1.cmml" type="float" xref="A2.T6.4.4.4.4.m1.1.1">0.383</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.4.4.4.m1.1c">0.383</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.4.4.4.m1.1d">0.383</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.12.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A2.T6.12.12.12.9" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="A2.T6.12.12.12.9.1">SDM</span> (Subset)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.6.6.6.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.681" class="ltx_Math" display="inline" id="A2.T6.5.5.5.1.m1.1"><semantics id="A2.T6.5.5.5.1.m1.1a"><mn id="A2.T6.5.5.5.1.m1.1.1" xref="A2.T6.5.5.5.1.m1.1.1.cmml">0.681</mn><annotation-xml encoding="MathML-Content" id="A2.T6.5.5.5.1.m1.1b"><cn id="A2.T6.5.5.5.1.m1.1.1.cmml" type="float" xref="A2.T6.5.5.5.1.m1.1.1">0.681</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.5.5.5.1.m1.1c">0.681</annotation><annotation encoding="application/x-llamapun" id="A2.T6.5.5.5.1.m1.1d">0.681</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.6.6.6.2.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.6.6.6.2.1.1"><math alttext="\pm 0.213" class="ltx_Math" display="inline" id="A2.T6.6.6.6.2.1.1.m1.1"><semantics id="A2.T6.6.6.6.2.1.1.m1.1a"><mrow id="A2.T6.6.6.6.2.1.1.m1.1.1" xref="A2.T6.6.6.6.2.1.1.m1.1.1.cmml"><mo id="A2.T6.6.6.6.2.1.1.m1.1.1a" xref="A2.T6.6.6.6.2.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.6.6.6.2.1.1.m1.1.1.2" xref="A2.T6.6.6.6.2.1.1.m1.1.1.2.cmml">0.213</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.6.6.6.2.1.1.m1.1b"><apply id="A2.T6.6.6.6.2.1.1.m1.1.1.cmml" xref="A2.T6.6.6.6.2.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.6.6.6.2.1.1.m1.1.1.1.cmml" xref="A2.T6.6.6.6.2.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.6.6.6.2.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.6.6.6.2.1.1.m1.1.1.2">0.213</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.6.6.6.2.1.1.m1.1c">\pm 0.213</annotation><annotation encoding="application/x-llamapun" id="A2.T6.6.6.6.2.1.1.m1.1d">± 0.213</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.8.8.8.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.912" class="ltx_Math" display="inline" id="A2.T6.7.7.7.3.m1.1"><semantics id="A2.T6.7.7.7.3.m1.1a"><mn id="A2.T6.7.7.7.3.m1.1.1" xref="A2.T6.7.7.7.3.m1.1.1.cmml">0.912</mn><annotation-xml encoding="MathML-Content" id="A2.T6.7.7.7.3.m1.1b"><cn id="A2.T6.7.7.7.3.m1.1.1.cmml" type="float" xref="A2.T6.7.7.7.3.m1.1.1">0.912</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.7.7.7.3.m1.1c">0.912</annotation><annotation encoding="application/x-llamapun" id="A2.T6.7.7.7.3.m1.1d">0.912</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.8.8.8.4.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.8.8.8.4.1.1"><math alttext="\pm 0.042" class="ltx_Math" display="inline" id="A2.T6.8.8.8.4.1.1.m1.1"><semantics id="A2.T6.8.8.8.4.1.1.m1.1a"><mrow id="A2.T6.8.8.8.4.1.1.m1.1.1" xref="A2.T6.8.8.8.4.1.1.m1.1.1.cmml"><mo id="A2.T6.8.8.8.4.1.1.m1.1.1a" xref="A2.T6.8.8.8.4.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.8.8.8.4.1.1.m1.1.1.2" xref="A2.T6.8.8.8.4.1.1.m1.1.1.2.cmml">0.042</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.8.8.8.4.1.1.m1.1b"><apply id="A2.T6.8.8.8.4.1.1.m1.1.1.cmml" xref="A2.T6.8.8.8.4.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.8.8.8.4.1.1.m1.1.1.1.cmml" xref="A2.T6.8.8.8.4.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.8.8.8.4.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.8.8.8.4.1.1.m1.1.1.2">0.042</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.8.8.8.4.1.1.m1.1c">\pm 0.042</annotation><annotation encoding="application/x-llamapun" id="A2.T6.8.8.8.4.1.1.m1.1d">± 0.042</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.10.10.10.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.745" class="ltx_Math" display="inline" id="A2.T6.9.9.9.5.m1.1"><semantics id="A2.T6.9.9.9.5.m1.1a"><mn id="A2.T6.9.9.9.5.m1.1.1" xref="A2.T6.9.9.9.5.m1.1.1.cmml">0.745</mn><annotation-xml encoding="MathML-Content" id="A2.T6.9.9.9.5.m1.1b"><cn id="A2.T6.9.9.9.5.m1.1.1.cmml" type="float" xref="A2.T6.9.9.9.5.m1.1.1">0.745</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.9.9.9.5.m1.1c">0.745</annotation><annotation encoding="application/x-llamapun" id="A2.T6.9.9.9.5.m1.1d">0.745</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.10.10.10.6.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.10.10.10.6.1.1"><math alttext="\pm 0.035" class="ltx_Math" display="inline" id="A2.T6.10.10.10.6.1.1.m1.1"><semantics id="A2.T6.10.10.10.6.1.1.m1.1a"><mrow id="A2.T6.10.10.10.6.1.1.m1.1.1" xref="A2.T6.10.10.10.6.1.1.m1.1.1.cmml"><mo id="A2.T6.10.10.10.6.1.1.m1.1.1a" xref="A2.T6.10.10.10.6.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.10.10.10.6.1.1.m1.1.1.2" xref="A2.T6.10.10.10.6.1.1.m1.1.1.2.cmml">0.035</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.10.10.10.6.1.1.m1.1b"><apply id="A2.T6.10.10.10.6.1.1.m1.1.1.cmml" xref="A2.T6.10.10.10.6.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.10.10.10.6.1.1.m1.1.1.1.cmml" xref="A2.T6.10.10.10.6.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.10.10.10.6.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.10.10.10.6.1.1.m1.1.1.2">0.035</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.10.10.10.6.1.1.m1.1c">\pm 0.035</annotation><annotation encoding="application/x-llamapun" id="A2.T6.10.10.10.6.1.1.m1.1d">± 0.035</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.12.12.12.8" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.463" class="ltx_Math" display="inline" id="A2.T6.11.11.11.7.m1.1"><semantics id="A2.T6.11.11.11.7.m1.1a"><mn id="A2.T6.11.11.11.7.m1.1.1" xref="A2.T6.11.11.11.7.m1.1.1.cmml">0.463</mn><annotation-xml encoding="MathML-Content" id="A2.T6.11.11.11.7.m1.1b"><cn id="A2.T6.11.11.11.7.m1.1.1.cmml" type="float" xref="A2.T6.11.11.11.7.m1.1.1">0.463</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.11.11.11.7.m1.1c">0.463</annotation><annotation encoding="application/x-llamapun" id="A2.T6.11.11.11.7.m1.1d">0.463</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.12.12.12.8.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.12.12.12.8.1.1"><math alttext="\pm 0.117" class="ltx_Math" display="inline" id="A2.T6.12.12.12.8.1.1.m1.1"><semantics id="A2.T6.12.12.12.8.1.1.m1.1a"><mrow id="A2.T6.12.12.12.8.1.1.m1.1.1" xref="A2.T6.12.12.12.8.1.1.m1.1.1.cmml"><mo id="A2.T6.12.12.12.8.1.1.m1.1.1a" xref="A2.T6.12.12.12.8.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.12.12.12.8.1.1.m1.1.1.2" xref="A2.T6.12.12.12.8.1.1.m1.1.1.2.cmml">0.117</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.12.12.12.8.1.1.m1.1b"><apply id="A2.T6.12.12.12.8.1.1.m1.1.1.cmml" xref="A2.T6.12.12.12.8.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.12.12.12.8.1.1.m1.1.1.1.cmml" xref="A2.T6.12.12.12.8.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.12.12.12.8.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.12.12.12.8.1.1.m1.1.1.2">0.117</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.12.12.12.8.1.1.m1.1c">\pm 0.117</annotation><annotation encoding="application/x-llamapun" id="A2.T6.12.12.12.8.1.1.m1.1d">± 0.117</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.16.16.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A2.T6.16.16.16.5" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="A2.T6.16.16.16.5.1">SDM</span> (Full)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.13.13.13.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.728" class="ltx_Math" display="inline" id="A2.T6.13.13.13.1.m1.1"><semantics id="A2.T6.13.13.13.1.m1.1a"><mn id="A2.T6.13.13.13.1.m1.1.1" xref="A2.T6.13.13.13.1.m1.1.1.cmml">0.728</mn><annotation-xml encoding="MathML-Content" id="A2.T6.13.13.13.1.m1.1b"><cn id="A2.T6.13.13.13.1.m1.1.1.cmml" type="float" xref="A2.T6.13.13.13.1.m1.1.1">0.728</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.13.13.13.1.m1.1c">0.728</annotation><annotation encoding="application/x-llamapun" id="A2.T6.13.13.13.1.m1.1d">0.728</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.14.14.14.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.899" class="ltx_Math" display="inline" id="A2.T6.14.14.14.2.m1.1"><semantics id="A2.T6.14.14.14.2.m1.1a"><mn id="A2.T6.14.14.14.2.m1.1.1" xref="A2.T6.14.14.14.2.m1.1.1.cmml">0.899</mn><annotation-xml encoding="MathML-Content" id="A2.T6.14.14.14.2.m1.1b"><cn id="A2.T6.14.14.14.2.m1.1.1.cmml" type="float" xref="A2.T6.14.14.14.2.m1.1.1">0.899</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.14.14.14.2.m1.1c">0.899</annotation><annotation encoding="application/x-llamapun" id="A2.T6.14.14.14.2.m1.1d">0.899</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.15.15.15.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.734" class="ltx_Math" display="inline" id="A2.T6.15.15.15.3.m1.1"><semantics id="A2.T6.15.15.15.3.m1.1a"><mn id="A2.T6.15.15.15.3.m1.1.1" xref="A2.T6.15.15.15.3.m1.1.1.cmml">0.734</mn><annotation-xml encoding="MathML-Content" id="A2.T6.15.15.15.3.m1.1b"><cn id="A2.T6.15.15.15.3.m1.1.1.cmml" type="float" xref="A2.T6.15.15.15.3.m1.1.1">0.734</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.15.15.15.3.m1.1c">0.734</annotation><annotation encoding="application/x-llamapun" id="A2.T6.15.15.15.3.m1.1d">0.734</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.16.16.16.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.484" class="ltx_Math" display="inline" id="A2.T6.16.16.16.4.m1.1"><semantics id="A2.T6.16.16.16.4.m1.1a"><mn id="A2.T6.16.16.16.4.m1.1.1" xref="A2.T6.16.16.16.4.m1.1.1.cmml">0.484</mn><annotation-xml encoding="MathML-Content" id="A2.T6.16.16.16.4.m1.1b"><cn id="A2.T6.16.16.16.4.m1.1.1.cmml" type="float" xref="A2.T6.16.16.16.4.m1.1.1">0.484</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.16.16.16.4.m1.1c">0.484</annotation><annotation encoding="application/x-llamapun" id="A2.T6.16.16.16.4.m1.1d">0.484</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.20.20.20">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A2.T6.20.20.20.5" style="padding-left:1.5pt;padding-right:1.5pt;">SDM+MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.17.17.17.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.615" class="ltx_Math" display="inline" id="A2.T6.17.17.17.1.m1.1"><semantics id="A2.T6.17.17.17.1.m1.1a"><mn id="A2.T6.17.17.17.1.m1.1.1" xref="A2.T6.17.17.17.1.m1.1.1.cmml">0.615</mn><annotation-xml encoding="MathML-Content" id="A2.T6.17.17.17.1.m1.1b"><cn id="A2.T6.17.17.17.1.m1.1.1.cmml" type="float" xref="A2.T6.17.17.17.1.m1.1.1">0.615</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.17.17.17.1.m1.1c">0.615</annotation><annotation encoding="application/x-llamapun" id="A2.T6.17.17.17.1.m1.1d">0.615</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.18.18.18.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.954" class="ltx_Math" display="inline" id="A2.T6.18.18.18.2.m1.1"><semantics id="A2.T6.18.18.18.2.m1.1a"><mn id="A2.T6.18.18.18.2.m1.1.1" xref="A2.T6.18.18.18.2.m1.1.1.cmml">0.954</mn><annotation-xml encoding="MathML-Content" id="A2.T6.18.18.18.2.m1.1b"><cn id="A2.T6.18.18.18.2.m1.1.1.cmml" type="float" xref="A2.T6.18.18.18.2.m1.1.1">0.954</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.18.18.18.2.m1.1c">0.954</annotation><annotation encoding="application/x-llamapun" id="A2.T6.18.18.18.2.m1.1d">0.954</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.19.19.19.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.821" class="ltx_Math" display="inline" id="A2.T6.19.19.19.3.m1.1"><semantics id="A2.T6.19.19.19.3.m1.1a"><mn id="A2.T6.19.19.19.3.m1.1.1" xref="A2.T6.19.19.19.3.m1.1.1.cmml">0.821</mn><annotation-xml encoding="MathML-Content" id="A2.T6.19.19.19.3.m1.1b"><cn id="A2.T6.19.19.19.3.m1.1.1.cmml" type="float" xref="A2.T6.19.19.19.3.m1.1.1">0.821</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.19.19.19.3.m1.1c">0.821</annotation><annotation encoding="application/x-llamapun" id="A2.T6.19.19.19.3.m1.1d">0.821</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.20.20.20.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.483" class="ltx_Math" display="inline" id="A2.T6.20.20.20.4.m1.1"><semantics id="A2.T6.20.20.20.4.m1.1a"><mn id="A2.T6.20.20.20.4.m1.1.1" xref="A2.T6.20.20.20.4.m1.1.1.cmml">0.483</mn><annotation-xml encoding="MathML-Content" id="A2.T6.20.20.20.4.m1.1b"><cn id="A2.T6.20.20.20.4.m1.1.1.cmml" type="float" xref="A2.T6.20.20.20.4.m1.1.1">0.483</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.20.20.20.4.m1.1c">0.483</annotation><annotation encoding="application/x-llamapun" id="A2.T6.20.20.20.4.m1.1d">0.483</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.60.60.63.3">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A2.T6.60.60.63.3.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.60.60.63.3.1.1">Russian</span></th>
</tr>
<tr class="ltx_tr" id="A2.T6.24.24.24">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.24.24.24.5" style="padding-left:1.5pt;padding-right:1.5pt;">MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.21.21.21.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.748" class="ltx_Math" display="inline" id="A2.T6.21.21.21.1.m1.1"><semantics id="A2.T6.21.21.21.1.m1.1a"><mn id="A2.T6.21.21.21.1.m1.1.1" xref="A2.T6.21.21.21.1.m1.1.1.cmml">0.748</mn><annotation-xml encoding="MathML-Content" id="A2.T6.21.21.21.1.m1.1b"><cn id="A2.T6.21.21.21.1.m1.1.1.cmml" type="float" xref="A2.T6.21.21.21.1.m1.1.1">0.748</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.21.21.21.1.m1.1c">0.748</annotation><annotation encoding="application/x-llamapun" id="A2.T6.21.21.21.1.m1.1d">0.748</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.22.22.22.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.852" class="ltx_Math" display="inline" id="A2.T6.22.22.22.2.m1.1"><semantics id="A2.T6.22.22.22.2.m1.1a"><mn id="A2.T6.22.22.22.2.m1.1.1" xref="A2.T6.22.22.22.2.m1.1.1.cmml">0.852</mn><annotation-xml encoding="MathML-Content" id="A2.T6.22.22.22.2.m1.1b"><cn id="A2.T6.22.22.22.2.m1.1.1.cmml" type="float" xref="A2.T6.22.22.22.2.m1.1.1">0.852</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.22.22.22.2.m1.1c">0.852</annotation><annotation encoding="application/x-llamapun" id="A2.T6.22.22.22.2.m1.1d">0.852</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.23.23.23.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.643" class="ltx_Math" display="inline" id="A2.T6.23.23.23.3.m1.1"><semantics id="A2.T6.23.23.23.3.m1.1a"><mn id="A2.T6.23.23.23.3.m1.1.1" xref="A2.T6.23.23.23.3.m1.1.1.cmml">0.643</mn><annotation-xml encoding="MathML-Content" id="A2.T6.23.23.23.3.m1.1b"><cn id="A2.T6.23.23.23.3.m1.1.1.cmml" type="float" xref="A2.T6.23.23.23.3.m1.1.1">0.643</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.23.23.23.3.m1.1c">0.643</annotation><annotation encoding="application/x-llamapun" id="A2.T6.23.23.23.3.m1.1d">0.643</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.24.24.24.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.434" class="ltx_Math" display="inline" id="A2.T6.24.24.24.4.m1.1"><semantics id="A2.T6.24.24.24.4.m1.1a"><mn id="A2.T6.24.24.24.4.m1.1.1" xref="A2.T6.24.24.24.4.m1.1.1.cmml">0.434</mn><annotation-xml encoding="MathML-Content" id="A2.T6.24.24.24.4.m1.1b"><cn id="A2.T6.24.24.24.4.m1.1.1.cmml" type="float" xref="A2.T6.24.24.24.4.m1.1.1">0.434</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.24.24.24.4.m1.1c">0.434</annotation><annotation encoding="application/x-llamapun" id="A2.T6.24.24.24.4.m1.1d">0.434</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.32.32.32">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A2.T6.32.32.32.9" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="A2.T6.32.32.32.9.1">SDM</span> (Subset)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.26.26.26.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.858" class="ltx_Math" display="inline" id="A2.T6.25.25.25.1.m1.1"><semantics id="A2.T6.25.25.25.1.m1.1a"><mn id="A2.T6.25.25.25.1.m1.1.1" xref="A2.T6.25.25.25.1.m1.1.1.cmml">0.858</mn><annotation-xml encoding="MathML-Content" id="A2.T6.25.25.25.1.m1.1b"><cn id="A2.T6.25.25.25.1.m1.1.1.cmml" type="float" xref="A2.T6.25.25.25.1.m1.1.1">0.858</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.25.25.25.1.m1.1c">0.858</annotation><annotation encoding="application/x-llamapun" id="A2.T6.25.25.25.1.m1.1d">0.858</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.26.26.26.2.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.26.26.26.2.1.1"><math alttext="\pm 0.034" class="ltx_Math" display="inline" id="A2.T6.26.26.26.2.1.1.m1.1"><semantics id="A2.T6.26.26.26.2.1.1.m1.1a"><mrow id="A2.T6.26.26.26.2.1.1.m1.1.1" xref="A2.T6.26.26.26.2.1.1.m1.1.1.cmml"><mo id="A2.T6.26.26.26.2.1.1.m1.1.1a" xref="A2.T6.26.26.26.2.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.26.26.26.2.1.1.m1.1.1.2" xref="A2.T6.26.26.26.2.1.1.m1.1.1.2.cmml">0.034</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.26.26.26.2.1.1.m1.1b"><apply id="A2.T6.26.26.26.2.1.1.m1.1.1.cmml" xref="A2.T6.26.26.26.2.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.26.26.26.2.1.1.m1.1.1.1.cmml" xref="A2.T6.26.26.26.2.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.26.26.26.2.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.26.26.26.2.1.1.m1.1.1.2">0.034</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.26.26.26.2.1.1.m1.1c">\pm 0.034</annotation><annotation encoding="application/x-llamapun" id="A2.T6.26.26.26.2.1.1.m1.1d">± 0.034</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.28.28.28.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.850" class="ltx_Math" display="inline" id="A2.T6.27.27.27.3.m1.1"><semantics id="A2.T6.27.27.27.3.m1.1a"><mn id="A2.T6.27.27.27.3.m1.1.1" xref="A2.T6.27.27.27.3.m1.1.1.cmml">0.850</mn><annotation-xml encoding="MathML-Content" id="A2.T6.27.27.27.3.m1.1b"><cn id="A2.T6.27.27.27.3.m1.1.1.cmml" type="float" xref="A2.T6.27.27.27.3.m1.1.1">0.850</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.27.27.27.3.m1.1c">0.850</annotation><annotation encoding="application/x-llamapun" id="A2.T6.27.27.27.3.m1.1d">0.850</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.28.28.28.4.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.28.28.28.4.1.1"><math alttext="\pm 0.020" class="ltx_Math" display="inline" id="A2.T6.28.28.28.4.1.1.m1.1"><semantics id="A2.T6.28.28.28.4.1.1.m1.1a"><mrow id="A2.T6.28.28.28.4.1.1.m1.1.1" xref="A2.T6.28.28.28.4.1.1.m1.1.1.cmml"><mo id="A2.T6.28.28.28.4.1.1.m1.1.1a" xref="A2.T6.28.28.28.4.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.28.28.28.4.1.1.m1.1.1.2" xref="A2.T6.28.28.28.4.1.1.m1.1.1.2.cmml">0.020</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.28.28.28.4.1.1.m1.1b"><apply id="A2.T6.28.28.28.4.1.1.m1.1.1.cmml" xref="A2.T6.28.28.28.4.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.28.28.28.4.1.1.m1.1.1.1.cmml" xref="A2.T6.28.28.28.4.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.28.28.28.4.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.28.28.28.4.1.1.m1.1.1.2">0.020</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.28.28.28.4.1.1.m1.1c">\pm 0.020</annotation><annotation encoding="application/x-llamapun" id="A2.T6.28.28.28.4.1.1.m1.1d">± 0.020</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.30.30.30.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.656" class="ltx_Math" display="inline" id="A2.T6.29.29.29.5.m1.1"><semantics id="A2.T6.29.29.29.5.m1.1a"><mn id="A2.T6.29.29.29.5.m1.1.1" xref="A2.T6.29.29.29.5.m1.1.1.cmml">0.656</mn><annotation-xml encoding="MathML-Content" id="A2.T6.29.29.29.5.m1.1b"><cn id="A2.T6.29.29.29.5.m1.1.1.cmml" type="float" xref="A2.T6.29.29.29.5.m1.1.1">0.656</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.29.29.29.5.m1.1c">0.656</annotation><annotation encoding="application/x-llamapun" id="A2.T6.29.29.29.5.m1.1d">0.656</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.30.30.30.6.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.30.30.30.6.1.1"><math alttext="\pm 0.021" class="ltx_Math" display="inline" id="A2.T6.30.30.30.6.1.1.m1.1"><semantics id="A2.T6.30.30.30.6.1.1.m1.1a"><mrow id="A2.T6.30.30.30.6.1.1.m1.1.1" xref="A2.T6.30.30.30.6.1.1.m1.1.1.cmml"><mo id="A2.T6.30.30.30.6.1.1.m1.1.1a" xref="A2.T6.30.30.30.6.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.30.30.30.6.1.1.m1.1.1.2" xref="A2.T6.30.30.30.6.1.1.m1.1.1.2.cmml">0.021</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.30.30.30.6.1.1.m1.1b"><apply id="A2.T6.30.30.30.6.1.1.m1.1.1.cmml" xref="A2.T6.30.30.30.6.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.30.30.30.6.1.1.m1.1.1.1.cmml" xref="A2.T6.30.30.30.6.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.30.30.30.6.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.30.30.30.6.1.1.m1.1.1.2">0.021</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.30.30.30.6.1.1.m1.1c">\pm 0.021</annotation><annotation encoding="application/x-llamapun" id="A2.T6.30.30.30.6.1.1.m1.1d">± 0.021</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.32.32.32.8" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.478" class="ltx_Math" display="inline" id="A2.T6.31.31.31.7.m1.1"><semantics id="A2.T6.31.31.31.7.m1.1a"><mn id="A2.T6.31.31.31.7.m1.1.1" xref="A2.T6.31.31.31.7.m1.1.1.cmml">0.478</mn><annotation-xml encoding="MathML-Content" id="A2.T6.31.31.31.7.m1.1b"><cn id="A2.T6.31.31.31.7.m1.1.1.cmml" type="float" xref="A2.T6.31.31.31.7.m1.1.1">0.478</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.31.31.31.7.m1.1c">0.478</annotation><annotation encoding="application/x-llamapun" id="A2.T6.31.31.31.7.m1.1d">0.478</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.32.32.32.8.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.32.32.32.8.1.1"><math alttext="\pm 0.014" class="ltx_Math" display="inline" id="A2.T6.32.32.32.8.1.1.m1.1"><semantics id="A2.T6.32.32.32.8.1.1.m1.1a"><mrow id="A2.T6.32.32.32.8.1.1.m1.1.1" xref="A2.T6.32.32.32.8.1.1.m1.1.1.cmml"><mo id="A2.T6.32.32.32.8.1.1.m1.1.1a" xref="A2.T6.32.32.32.8.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.32.32.32.8.1.1.m1.1.1.2" xref="A2.T6.32.32.32.8.1.1.m1.1.1.2.cmml">0.014</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.32.32.32.8.1.1.m1.1b"><apply id="A2.T6.32.32.32.8.1.1.m1.1.1.cmml" xref="A2.T6.32.32.32.8.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.32.32.32.8.1.1.m1.1.1.1.cmml" xref="A2.T6.32.32.32.8.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.32.32.32.8.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.32.32.32.8.1.1.m1.1.1.2">0.014</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.32.32.32.8.1.1.m1.1c">\pm 0.014</annotation><annotation encoding="application/x-llamapun" id="A2.T6.32.32.32.8.1.1.m1.1d">± 0.014</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.36.36.36">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A2.T6.36.36.36.5" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="A2.T6.36.36.36.5.1">SDM</span> (Full)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.33.33.33.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.927" class="ltx_Math" display="inline" id="A2.T6.33.33.33.1.m1.1"><semantics id="A2.T6.33.33.33.1.m1.1a"><mn id="A2.T6.33.33.33.1.m1.1.1" xref="A2.T6.33.33.33.1.m1.1.1.cmml">0.927</mn><annotation-xml encoding="MathML-Content" id="A2.T6.33.33.33.1.m1.1b"><cn id="A2.T6.33.33.33.1.m1.1.1.cmml" type="float" xref="A2.T6.33.33.33.1.m1.1.1">0.927</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.33.33.33.1.m1.1c">0.927</annotation><annotation encoding="application/x-llamapun" id="A2.T6.33.33.33.1.m1.1d">0.927</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.34.34.34.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.839" class="ltx_Math" display="inline" id="A2.T6.34.34.34.2.m1.1"><semantics id="A2.T6.34.34.34.2.m1.1a"><mn id="A2.T6.34.34.34.2.m1.1.1" xref="A2.T6.34.34.34.2.m1.1.1.cmml">0.839</mn><annotation-xml encoding="MathML-Content" id="A2.T6.34.34.34.2.m1.1b"><cn id="A2.T6.34.34.34.2.m1.1.1.cmml" type="float" xref="A2.T6.34.34.34.2.m1.1.1">0.839</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.34.34.34.2.m1.1c">0.839</annotation><annotation encoding="application/x-llamapun" id="A2.T6.34.34.34.2.m1.1d">0.839</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.35.35.35.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.656" class="ltx_Math" display="inline" id="A2.T6.35.35.35.3.m1.1"><semantics id="A2.T6.35.35.35.3.m1.1a"><mn id="A2.T6.35.35.35.3.m1.1.1" xref="A2.T6.35.35.35.3.m1.1.1.cmml">0.656</mn><annotation-xml encoding="MathML-Content" id="A2.T6.35.35.35.3.m1.1b"><cn id="A2.T6.35.35.35.3.m1.1.1.cmml" type="float" xref="A2.T6.35.35.35.3.m1.1.1">0.656</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.35.35.35.3.m1.1c">0.656</annotation><annotation encoding="application/x-llamapun" id="A2.T6.35.35.35.3.m1.1d">0.656</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.36.36.36.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.521" class="ltx_Math" display="inline" id="A2.T6.36.36.36.4.m1.1"><semantics id="A2.T6.36.36.36.4.m1.1a"><mn id="A2.T6.36.36.36.4.m1.1.1" xref="A2.T6.36.36.36.4.m1.1.1.cmml">0.521</mn><annotation-xml encoding="MathML-Content" id="A2.T6.36.36.36.4.m1.1b"><cn id="A2.T6.36.36.36.4.m1.1.1.cmml" type="float" xref="A2.T6.36.36.36.4.m1.1.1">0.521</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.36.36.36.4.m1.1c">0.521</annotation><annotation encoding="application/x-llamapun" id="A2.T6.36.36.36.4.m1.1d">0.521</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.40.40.40">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A2.T6.40.40.40.5" style="padding-left:1.5pt;padding-right:1.5pt;">SDM+MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.37.37.37.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.815" class="ltx_Math" display="inline" id="A2.T6.37.37.37.1.m1.1"><semantics id="A2.T6.37.37.37.1.m1.1a"><mn id="A2.T6.37.37.37.1.m1.1.1" xref="A2.T6.37.37.37.1.m1.1.1.cmml">0.815</mn><annotation-xml encoding="MathML-Content" id="A2.T6.37.37.37.1.m1.1b"><cn id="A2.T6.37.37.37.1.m1.1.1.cmml" type="float" xref="A2.T6.37.37.37.1.m1.1.1">0.815</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.37.37.37.1.m1.1c">0.815</annotation><annotation encoding="application/x-llamapun" id="A2.T6.37.37.37.1.m1.1d">0.815</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.38.38.38.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.886" class="ltx_Math" display="inline" id="A2.T6.38.38.38.2.m1.1"><semantics id="A2.T6.38.38.38.2.m1.1a"><mn id="A2.T6.38.38.38.2.m1.1.1" xref="A2.T6.38.38.38.2.m1.1.1.cmml">0.886</mn><annotation-xml encoding="MathML-Content" id="A2.T6.38.38.38.2.m1.1b"><cn id="A2.T6.38.38.38.2.m1.1.1.cmml" type="float" xref="A2.T6.38.38.38.2.m1.1.1">0.886</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.38.38.38.2.m1.1c">0.886</annotation><annotation encoding="application/x-llamapun" id="A2.T6.38.38.38.2.m1.1d">0.886</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.39.39.39.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.726" class="ltx_Math" display="inline" id="A2.T6.39.39.39.3.m1.1"><semantics id="A2.T6.39.39.39.3.m1.1a"><mn id="A2.T6.39.39.39.3.m1.1.1" xref="A2.T6.39.39.39.3.m1.1.1.cmml">0.726</mn><annotation-xml encoding="MathML-Content" id="A2.T6.39.39.39.3.m1.1b"><cn id="A2.T6.39.39.39.3.m1.1.1.cmml" type="float" xref="A2.T6.39.39.39.3.m1.1.1">0.726</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.39.39.39.3.m1.1c">0.726</annotation><annotation encoding="application/x-llamapun" id="A2.T6.39.39.39.3.m1.1d">0.726</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.40.40.40.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.540" class="ltx_Math" display="inline" id="A2.T6.40.40.40.4.m1.1"><semantics id="A2.T6.40.40.40.4.m1.1a"><mn id="A2.T6.40.40.40.4.m1.1.1" xref="A2.T6.40.40.40.4.m1.1.1.cmml">0.540</mn><annotation-xml encoding="MathML-Content" id="A2.T6.40.40.40.4.m1.1b"><cn id="A2.T6.40.40.40.4.m1.1.1.cmml" type="float" xref="A2.T6.40.40.40.4.m1.1.1">0.540</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.40.40.40.4.m1.1c">0.540</annotation><annotation encoding="application/x-llamapun" id="A2.T6.40.40.40.4.m1.1d">0.540</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.60.60.64.4">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A2.T6.60.60.64.4.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.60.60.64.4.1.1">Spanish</span></th>
</tr>
<tr class="ltx_tr" id="A2.T6.44.44.44">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.44.44.44.5" style="padding-left:1.5pt;padding-right:1.5pt;">MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.41.41.41.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.597" class="ltx_Math" display="inline" id="A2.T6.41.41.41.1.m1.1"><semantics id="A2.T6.41.41.41.1.m1.1a"><mn id="A2.T6.41.41.41.1.m1.1.1" xref="A2.T6.41.41.41.1.m1.1.1.cmml">0.597</mn><annotation-xml encoding="MathML-Content" id="A2.T6.41.41.41.1.m1.1b"><cn id="A2.T6.41.41.41.1.m1.1.1.cmml" type="float" xref="A2.T6.41.41.41.1.m1.1.1">0.597</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.41.41.41.1.m1.1c">0.597</annotation><annotation encoding="application/x-llamapun" id="A2.T6.41.41.41.1.m1.1d">0.597</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.42.42.42.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.880" class="ltx_Math" display="inline" id="A2.T6.42.42.42.2.m1.1"><semantics id="A2.T6.42.42.42.2.m1.1a"><mn id="A2.T6.42.42.42.2.m1.1.1" xref="A2.T6.42.42.42.2.m1.1.1.cmml">0.880</mn><annotation-xml encoding="MathML-Content" id="A2.T6.42.42.42.2.m1.1b"><cn id="A2.T6.42.42.42.2.m1.1.1.cmml" type="float" xref="A2.T6.42.42.42.2.m1.1.1">0.880</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.42.42.42.2.m1.1c">0.880</annotation><annotation encoding="application/x-llamapun" id="A2.T6.42.42.42.2.m1.1d">0.880</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.43.43.43.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.616" class="ltx_Math" display="inline" id="A2.T6.43.43.43.3.m1.1"><semantics id="A2.T6.43.43.43.3.m1.1a"><mn id="A2.T6.43.43.43.3.m1.1.1" xref="A2.T6.43.43.43.3.m1.1.1.cmml">0.616</mn><annotation-xml encoding="MathML-Content" id="A2.T6.43.43.43.3.m1.1b"><cn id="A2.T6.43.43.43.3.m1.1.1.cmml" type="float" xref="A2.T6.43.43.43.3.m1.1.1">0.616</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.43.43.43.3.m1.1c">0.616</annotation><annotation encoding="application/x-llamapun" id="A2.T6.43.43.43.3.m1.1d">0.616</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T6.44.44.44.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.335" class="ltx_Math" display="inline" id="A2.T6.44.44.44.4.m1.1"><semantics id="A2.T6.44.44.44.4.m1.1a"><mn id="A2.T6.44.44.44.4.m1.1.1" xref="A2.T6.44.44.44.4.m1.1.1.cmml">0.335</mn><annotation-xml encoding="MathML-Content" id="A2.T6.44.44.44.4.m1.1b"><cn id="A2.T6.44.44.44.4.m1.1.1.cmml" type="float" xref="A2.T6.44.44.44.4.m1.1.1">0.335</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.44.44.44.4.m1.1c">0.335</annotation><annotation encoding="application/x-llamapun" id="A2.T6.44.44.44.4.m1.1d">0.335</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.52.52.52">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A2.T6.52.52.52.9" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="A2.T6.52.52.52.9.1">SDM</span> (Subset)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.46.46.46.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.795" class="ltx_Math" display="inline" id="A2.T6.45.45.45.1.m1.1"><semantics id="A2.T6.45.45.45.1.m1.1a"><mn id="A2.T6.45.45.45.1.m1.1.1" xref="A2.T6.45.45.45.1.m1.1.1.cmml">0.795</mn><annotation-xml encoding="MathML-Content" id="A2.T6.45.45.45.1.m1.1b"><cn id="A2.T6.45.45.45.1.m1.1.1.cmml" type="float" xref="A2.T6.45.45.45.1.m1.1.1">0.795</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.45.45.45.1.m1.1c">0.795</annotation><annotation encoding="application/x-llamapun" id="A2.T6.45.45.45.1.m1.1d">0.795</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.46.46.46.2.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.46.46.46.2.1.1"><math alttext="\pm 0.083" class="ltx_Math" display="inline" id="A2.T6.46.46.46.2.1.1.m1.1"><semantics id="A2.T6.46.46.46.2.1.1.m1.1a"><mrow id="A2.T6.46.46.46.2.1.1.m1.1.1" xref="A2.T6.46.46.46.2.1.1.m1.1.1.cmml"><mo id="A2.T6.46.46.46.2.1.1.m1.1.1a" xref="A2.T6.46.46.46.2.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.46.46.46.2.1.1.m1.1.1.2" xref="A2.T6.46.46.46.2.1.1.m1.1.1.2.cmml">0.083</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.46.46.46.2.1.1.m1.1b"><apply id="A2.T6.46.46.46.2.1.1.m1.1.1.cmml" xref="A2.T6.46.46.46.2.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.46.46.46.2.1.1.m1.1.1.1.cmml" xref="A2.T6.46.46.46.2.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.46.46.46.2.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.46.46.46.2.1.1.m1.1.1.2">0.083</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.46.46.46.2.1.1.m1.1c">\pm 0.083</annotation><annotation encoding="application/x-llamapun" id="A2.T6.46.46.46.2.1.1.m1.1d">± 0.083</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.48.48.48.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.856" class="ltx_Math" display="inline" id="A2.T6.47.47.47.3.m1.1"><semantics id="A2.T6.47.47.47.3.m1.1a"><mn id="A2.T6.47.47.47.3.m1.1.1" xref="A2.T6.47.47.47.3.m1.1.1.cmml">0.856</mn><annotation-xml encoding="MathML-Content" id="A2.T6.47.47.47.3.m1.1b"><cn id="A2.T6.47.47.47.3.m1.1.1.cmml" type="float" xref="A2.T6.47.47.47.3.m1.1.1">0.856</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.47.47.47.3.m1.1c">0.856</annotation><annotation encoding="application/x-llamapun" id="A2.T6.47.47.47.3.m1.1d">0.856</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.48.48.48.4.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.48.48.48.4.1.1"><math alttext="\pm 0.031" class="ltx_Math" display="inline" id="A2.T6.48.48.48.4.1.1.m1.1"><semantics id="A2.T6.48.48.48.4.1.1.m1.1a"><mrow id="A2.T6.48.48.48.4.1.1.m1.1.1" xref="A2.T6.48.48.48.4.1.1.m1.1.1.cmml"><mo id="A2.T6.48.48.48.4.1.1.m1.1.1a" xref="A2.T6.48.48.48.4.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.48.48.48.4.1.1.m1.1.1.2" xref="A2.T6.48.48.48.4.1.1.m1.1.1.2.cmml">0.031</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.48.48.48.4.1.1.m1.1b"><apply id="A2.T6.48.48.48.4.1.1.m1.1.1.cmml" xref="A2.T6.48.48.48.4.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.48.48.48.4.1.1.m1.1.1.1.cmml" xref="A2.T6.48.48.48.4.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.48.48.48.4.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.48.48.48.4.1.1.m1.1.1.2">0.031</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.48.48.48.4.1.1.m1.1c">\pm 0.031</annotation><annotation encoding="application/x-llamapun" id="A2.T6.48.48.48.4.1.1.m1.1d">± 0.031</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.50.50.50.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.611" class="ltx_Math" display="inline" id="A2.T6.49.49.49.5.m1.1"><semantics id="A2.T6.49.49.49.5.m1.1a"><mn id="A2.T6.49.49.49.5.m1.1.1" xref="A2.T6.49.49.49.5.m1.1.1.cmml">0.611</mn><annotation-xml encoding="MathML-Content" id="A2.T6.49.49.49.5.m1.1b"><cn id="A2.T6.49.49.49.5.m1.1.1.cmml" type="float" xref="A2.T6.49.49.49.5.m1.1.1">0.611</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.49.49.49.5.m1.1c">0.611</annotation><annotation encoding="application/x-llamapun" id="A2.T6.49.49.49.5.m1.1d">0.611</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.50.50.50.6.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.50.50.50.6.1.1"><math alttext="\pm 0.022" class="ltx_Math" display="inline" id="A2.T6.50.50.50.6.1.1.m1.1"><semantics id="A2.T6.50.50.50.6.1.1.m1.1a"><mrow id="A2.T6.50.50.50.6.1.1.m1.1.1" xref="A2.T6.50.50.50.6.1.1.m1.1.1.cmml"><mo id="A2.T6.50.50.50.6.1.1.m1.1.1a" xref="A2.T6.50.50.50.6.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.50.50.50.6.1.1.m1.1.1.2" xref="A2.T6.50.50.50.6.1.1.m1.1.1.2.cmml">0.022</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.50.50.50.6.1.1.m1.1b"><apply id="A2.T6.50.50.50.6.1.1.m1.1.1.cmml" xref="A2.T6.50.50.50.6.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.50.50.50.6.1.1.m1.1.1.1.cmml" xref="A2.T6.50.50.50.6.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.50.50.50.6.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.50.50.50.6.1.1.m1.1.1.2">0.022</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.50.50.50.6.1.1.m1.1c">\pm 0.022</annotation><annotation encoding="application/x-llamapun" id="A2.T6.50.50.50.6.1.1.m1.1d">± 0.022</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.52.52.52.8" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="0.416" class="ltx_Math" display="inline" id="A2.T6.51.51.51.7.m1.1"><semantics id="A2.T6.51.51.51.7.m1.1a"><mn id="A2.T6.51.51.51.7.m1.1.1" xref="A2.T6.51.51.51.7.m1.1.1.cmml">0.416</mn><annotation-xml encoding="MathML-Content" id="A2.T6.51.51.51.7.m1.1b"><cn id="A2.T6.51.51.51.7.m1.1.1.cmml" type="float" xref="A2.T6.51.51.51.7.m1.1.1">0.416</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.51.51.51.7.m1.1c">0.416</annotation><annotation encoding="application/x-llamapun" id="A2.T6.51.51.51.7.m1.1d">0.416</annotation></semantics></math>
<div class="ltx_inline-block ltx_transformed_outer" id="A2.T6.52.52.52.8.1" style="width:24.1pt;height:5.1pt;vertical-align:-0.6pt;"><span class="ltx_transformed_inner" style="transform:translate(-5.2pt,1.0pt) scale(0.7,0.7) ;">
<p class="ltx_p" id="A2.T6.52.52.52.8.1.1"><math alttext="\pm 0.023" class="ltx_Math" display="inline" id="A2.T6.52.52.52.8.1.1.m1.1"><semantics id="A2.T6.52.52.52.8.1.1.m1.1a"><mrow id="A2.T6.52.52.52.8.1.1.m1.1.1" xref="A2.T6.52.52.52.8.1.1.m1.1.1.cmml"><mo id="A2.T6.52.52.52.8.1.1.m1.1.1a" xref="A2.T6.52.52.52.8.1.1.m1.1.1.cmml">±</mo><mn id="A2.T6.52.52.52.8.1.1.m1.1.1.2" xref="A2.T6.52.52.52.8.1.1.m1.1.1.2.cmml">0.023</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.52.52.52.8.1.1.m1.1b"><apply id="A2.T6.52.52.52.8.1.1.m1.1.1.cmml" xref="A2.T6.52.52.52.8.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T6.52.52.52.8.1.1.m1.1.1.1.cmml" xref="A2.T6.52.52.52.8.1.1.m1.1.1">plus-or-minus</csymbol><cn id="A2.T6.52.52.52.8.1.1.m1.1.1.2.cmml" type="float" xref="A2.T6.52.52.52.8.1.1.m1.1.1.2">0.023</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.52.52.52.8.1.1.m1.1c">\pm 0.023</annotation><annotation encoding="application/x-llamapun" id="A2.T6.52.52.52.8.1.1.m1.1d">± 0.023</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.56.56.56">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A2.T6.56.56.56.5" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="A2.T6.56.56.56.5.1">SDM</span> (Full)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.53.53.53.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.864" class="ltx_Math" display="inline" id="A2.T6.53.53.53.1.m1.1"><semantics id="A2.T6.53.53.53.1.m1.1a"><mn id="A2.T6.53.53.53.1.m1.1.1" xref="A2.T6.53.53.53.1.m1.1.1.cmml">0.864</mn><annotation-xml encoding="MathML-Content" id="A2.T6.53.53.53.1.m1.1b"><cn id="A2.T6.53.53.53.1.m1.1.1.cmml" type="float" xref="A2.T6.53.53.53.1.m1.1.1">0.864</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.53.53.53.1.m1.1c">0.864</annotation><annotation encoding="application/x-llamapun" id="A2.T6.53.53.53.1.m1.1d">0.864</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.54.54.54.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.861" class="ltx_Math" display="inline" id="A2.T6.54.54.54.2.m1.1"><semantics id="A2.T6.54.54.54.2.m1.1a"><mn id="A2.T6.54.54.54.2.m1.1.1" xref="A2.T6.54.54.54.2.m1.1.1.cmml">0.861</mn><annotation-xml encoding="MathML-Content" id="A2.T6.54.54.54.2.m1.1b"><cn id="A2.T6.54.54.54.2.m1.1.1.cmml" type="float" xref="A2.T6.54.54.54.2.m1.1.1">0.861</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.54.54.54.2.m1.1c">0.861</annotation><annotation encoding="application/x-llamapun" id="A2.T6.54.54.54.2.m1.1d">0.861</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.55.55.55.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.621" class="ltx_Math" display="inline" id="A2.T6.55.55.55.3.m1.1"><semantics id="A2.T6.55.55.55.3.m1.1a"><mn id="A2.T6.55.55.55.3.m1.1.1" xref="A2.T6.55.55.55.3.m1.1.1.cmml">0.621</mn><annotation-xml encoding="MathML-Content" id="A2.T6.55.55.55.3.m1.1b"><cn id="A2.T6.55.55.55.3.m1.1.1.cmml" type="float" xref="A2.T6.55.55.55.3.m1.1.1">0.621</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.55.55.55.3.m1.1c">0.621</annotation><annotation encoding="application/x-llamapun" id="A2.T6.55.55.55.3.m1.1d">0.621</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T6.56.56.56.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.471" class="ltx_Math" display="inline" id="A2.T6.56.56.56.4.m1.1"><semantics id="A2.T6.56.56.56.4.m1.1a"><mn id="A2.T6.56.56.56.4.m1.1.1" xref="A2.T6.56.56.56.4.m1.1.1.cmml">0.471</mn><annotation-xml encoding="MathML-Content" id="A2.T6.56.56.56.4.m1.1b"><cn id="A2.T6.56.56.56.4.m1.1.1.cmml" type="float" xref="A2.T6.56.56.56.4.m1.1.1">0.471</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.56.56.56.4.m1.1c">0.471</annotation><annotation encoding="application/x-llamapun" id="A2.T6.56.56.56.4.m1.1d">0.471</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.60.60.60">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T6.60.60.60.5" style="padding-left:1.5pt;padding-right:1.5pt;">SDM+MPD</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T6.57.57.57.1" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.681" class="ltx_Math" display="inline" id="A2.T6.57.57.57.1.m1.1"><semantics id="A2.T6.57.57.57.1.m1.1a"><mn id="A2.T6.57.57.57.1.m1.1.1" xref="A2.T6.57.57.57.1.m1.1.1.cmml">0.681</mn><annotation-xml encoding="MathML-Content" id="A2.T6.57.57.57.1.m1.1b"><cn id="A2.T6.57.57.57.1.m1.1.1.cmml" type="float" xref="A2.T6.57.57.57.1.m1.1.1">0.681</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.57.57.57.1.m1.1c">0.681</annotation><annotation encoding="application/x-llamapun" id="A2.T6.57.57.57.1.m1.1d">0.681</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T6.58.58.58.2" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.907" class="ltx_Math" display="inline" id="A2.T6.58.58.58.2.m1.1"><semantics id="A2.T6.58.58.58.2.m1.1a"><mn id="A2.T6.58.58.58.2.m1.1.1" xref="A2.T6.58.58.58.2.m1.1.1.cmml">0.907</mn><annotation-xml encoding="MathML-Content" id="A2.T6.58.58.58.2.m1.1b"><cn id="A2.T6.58.58.58.2.m1.1.1.cmml" type="float" xref="A2.T6.58.58.58.2.m1.1.1">0.907</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.58.58.58.2.m1.1c">0.907</annotation><annotation encoding="application/x-llamapun" id="A2.T6.58.58.58.2.m1.1d">0.907</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T6.59.59.59.3" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.653" class="ltx_Math" display="inline" id="A2.T6.59.59.59.3.m1.1"><semantics id="A2.T6.59.59.59.3.m1.1a"><mn id="A2.T6.59.59.59.3.m1.1.1" xref="A2.T6.59.59.59.3.m1.1.1.cmml">0.653</mn><annotation-xml encoding="MathML-Content" id="A2.T6.59.59.59.3.m1.1b"><cn id="A2.T6.59.59.59.3.m1.1.1.cmml" type="float" xref="A2.T6.59.59.59.3.m1.1.1">0.653</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.59.59.59.3.m1.1c">0.653</annotation><annotation encoding="application/x-llamapun" id="A2.T6.59.59.59.3.m1.1d">0.653</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T6.60.60.60.4" style="padding-left:1.5pt;padding-right:1.5pt;"><math alttext="0.413" class="ltx_Math" display="inline" id="A2.T6.60.60.60.4.m1.1"><semantics id="A2.T6.60.60.60.4.m1.1a"><mn id="A2.T6.60.60.60.4.m1.1.1" xref="A2.T6.60.60.60.4.m1.1.1.cmml">0.413</mn><annotation-xml encoding="MathML-Content" id="A2.T6.60.60.60.4.m1.1b"><cn id="A2.T6.60.60.60.4.m1.1.1.cmml" type="float" xref="A2.T6.60.60.60.4.m1.1.1">0.413</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.60.60.60.4.m1.1c">0.413</annotation><annotation encoding="application/x-llamapun" id="A2.T6.60.60.60.4.m1.1d">0.413</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an automatic evaluation of the multilingual text detoxification model, mT0-XL.  The model was trained on three different datasets: the original MultiParaDetox dataset (MPD), the researchers' newly collected and synthetically generated dataset (SDM), and a combination of both (MPD+SDM). The evaluation metrics used are Style Transfer Accuracy (STA), Content Similarity (SIM), and Fluency (FL), with their combined score J.  The table shows the performance of the model across these datasets for three different languages: German, Russian, and Spanish.
> <details>
> <summary>read the caption</summary>
> Таблица 6: Results of the automatic evaluation for mT0-XL on German, Russian, and Spanish trained on original data (MPD stands for MultiParaDetox), our collected and synthetically generated data (SDM stands for SynthDetoxM) and on their combination (MultiParaDetox + SynthDetoxM).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T7.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A3.T7.3.3.4"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1">Spanish<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T7.1.1.1.m1.1"><semantics id="A3.T7.1.1.1.m1.1a"><mo id="A3.T7.1.1.1.m1.1.1" stretchy="false" xref="A3.T7.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T7.1.1.1.m1.1b"><ci id="A3.T7.1.1.1.m1.1.1.cmml" xref="A3.T7.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.2.2.2">German<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T7.2.2.2.m1.1"><semantics id="A3.T7.2.2.2.m1.1a"><mo id="A3.T7.2.2.2.m1.1.1" stretchy="false" xref="A3.T7.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T7.2.2.2.m1.1b"><ci id="A3.T7.2.2.2.m1.1.1.cmml" xref="A3.T7.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.3.3.3">Russian<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T7.3.3.3.m1.1"><semantics id="A3.T7.3.3.3.m1.1a"><mo id="A3.T7.3.3.3.m1.1.1" stretchy="false" xref="A3.T7.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T7.3.3.3.m1.1b"><ci id="A3.T7.3.3.3.m1.1.1.cmml" xref="A3.T7.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T7.3.4.1.1">Toxic</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.3.4.1.2">2089</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.3.4.1.3">323</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.3.4.1.4">4467</td>
</tr>
<tr class="ltx_tr" id="A3.T7.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T7.3.5.2.1">Detoxified</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.3.5.2.2">27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.3.5.2.3">102</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.3.5.2.4">14</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the total number of toxic words present in both the original toxic text and the corresponding detoxified text generated by the model, categorized by language (Spanish, German, and Russian). It demonstrates the effectiveness of the detoxification process by comparing the count of toxic words before and after the detoxification.
> <details>
> <summary>read the caption</summary>
> Таблица 7: Total amount of toxic words for toxic and detoxified subsets of SynthDetoxM with respect to language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T8.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T8.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A3.T8.3.3.4"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T8.1.1.1">Spanish<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T8.1.1.1.m1.1"><semantics id="A3.T8.1.1.1.m1.1a"><mo id="A3.T8.1.1.1.m1.1.1" stretchy="false" xref="A3.T8.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T8.1.1.1.m1.1b"><ci id="A3.T8.1.1.1.m1.1.1.cmml" xref="A3.T8.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T8.2.2.2">German<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T8.2.2.2.m1.1"><semantics id="A3.T8.2.2.2.m1.1a"><mo id="A3.T8.2.2.2.m1.1.1" stretchy="false" xref="A3.T8.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T8.2.2.2.m1.1b"><ci id="A3.T8.2.2.2.m1.1.1.cmml" xref="A3.T8.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T8.3.3.3">Russian<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T8.3.3.3.m1.1"><semantics id="A3.T8.3.3.3.m1.1a"><mo id="A3.T8.3.3.3.m1.1.1" stretchy="false" xref="A3.T8.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T8.3.3.3.m1.1b"><ci id="A3.T8.3.3.3.m1.1.1.cmml" xref="A3.T8.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T8.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T8.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T8.3.4.1.1">Toxic</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.4.1.2">0.522</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.4.1.3">0.081</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.3.4.1.4">1.117</td>
</tr>
<tr class="ltx_tr" id="A3.T8.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T8.3.5.2.1">Detoxified</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.3.5.2.2">0.007</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.3.5.2.3">0.036</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.3.5.2.4">0.004</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average number of toxic words found per text in both the original toxic and the generated detoxified versions of the SynthDetoxM dataset.  The average is calculated separately for each of the four languages included in the dataset: Spanish, German, Russian, and French. This data provides insights into the effectiveness of the detoxification process in reducing toxicity across different languages.
> <details>
> <summary>read the caption</summary>
> Таблица 8: Average number of toxic words per text in the toxic and detoxified SynthDetoxM with respect to language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T9.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Type</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T9.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.1.1.2.1">
<span class="ltx_p" id="A7.T9.1.1.1.2.1.1" style="width:256.1pt;">Text</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T9.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Perspective API Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T9.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">XLM-R Score</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T9.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.2.1.2.1">
<span class="ltx_p" id="A7.T9.1.2.1.2.1.1" style="width:256.1pt;">тварь присягу один раз,а проебал всю страну 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.2.1.2.1.1.1">The bastard swore an oath once, but screwed over the whole country.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.820</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.3.2.2.1">
<span class="ltx_p" id="A7.T9.1.3.2.2.1.1" style="width:256.1pt;">Присягу дал один раз, а разрушил всю страну 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.3.2.2.1.1.1">He took the oath once, but destroyed the whole country</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.360</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.001</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.4.3.2.1">
<span class="ltx_p" id="A7.T9.1.4.3.2.1.1" style="width:256.1pt;">нахрена этого придурка клоуна сюда впихивают? 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.4.3.2.1.1.1">why the fuck is this idiot clown being pushed in here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.743</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.5.4.2.1">
<span class="ltx_p" id="A7.T9.1.5.4.2.1.1" style="width:256.1pt;">Зачем этого человека сюда впихивают? 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.5.4.2.1.1.1">Why is this man being pushed in here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.042</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.005</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.6.5.2.1">
<span class="ltx_p" id="A7.T9.1.6.5.2.1.1" style="width:256.1pt;">молись не молись,всё - равно получишь хуй. ну, разве что блядям на радость 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.6.5.2.1.1.1">Pray or don’t pray, you’ll get a dick anyway. Well, except for the joy of whores.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.757</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.7.6.2.1">
<span class="ltx_p" id="A7.T9.1.7.6.2.1.1" style="width:256.1pt;">Молись не молись, всё - равно ничего не получишь. ну, разве что завистникам на радость. 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.7.6.2.1.1.1">Pray or don’t pray, you won’t get anything anyway. well, except for the envy of the joy.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.156</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.998</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.8.7.2.1">
<span class="ltx_p" id="A7.T9.1.8.7.2.1.1" style="width:256.1pt;">её муженька козла на кол надо посадить 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.8.7.2.1.1.1">Her scoundrel of a husband needs to be impaled.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.553</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.999</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.9.8.2.1">
<span class="ltx_p" id="A7.T9.1.9.8.2.1.1" style="width:256.1pt;">Её муженька нужно сурово наказать 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.9.8.2.1.1.1">Her hubby needs to be severely punished</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.029</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.988</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.10.9.2.1">
<span class="ltx_p" id="A7.T9.1.10.9.2.1.1" style="width:256.1pt;">хорошо пизды не получил уёбок 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.10.9.2.1.1.1">good thing the bastard didn’t get his ass kicked.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.853</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.11.10.2.1">
<span class="ltx_p" id="A7.T9.1.11.10.2.1.1" style="width:256.1pt;">хорошо что он не был избит 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.11.10.2.1.1.1">it’s a good thing he wasn’t beaten up</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.037</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">0.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.12.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.12.11.2.1">
<span class="ltx_p" id="A7.T9.1.12.11.2.1.1" style="width:256.1pt;">да что ты доебалась до этих клумб? людям жрать нечего! по мусоркам лазают! 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.12.11.2.1.1.1">why are you so fixated on those flower beds? people have nothing to eat! they’re rummaging through trash!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.13.12.2.1">
<span class="ltx_p" id="A7.T9.1.13.12.2.1.1" style="width:256.1pt;">да что ты докопалась до этих клумб? Людям есть нечего! по мусоркам лазают! 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.13.12.2.1.1.1">why did you get to these flower beds? People have nothing to eat! they’re climbing through the trash!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.115</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">0.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.14.13.2.1">
<span class="ltx_p" id="A7.T9.1.14.13.2.1.1" style="width:256.1pt;">именно благодаря этому президенту, россия еще жива. а такие долбоёбы, только могут воду мутить. дебилоид. 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.14.13.2.1.1.1">It’s precisely thanks to this president that Russia is still alive. And idiots like you can only stir up trouble. Moron.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.863</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.15.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.15.14.2.1">
<span class="ltx_p" id="A7.T9.1.15.14.2.1.1" style="width:256.1pt;">Именно благодаря этому президенту, Россия ещё жива, а такие люди, как ты, только и могут, что наводить смуту. 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.15.14.2.1.1.1">It is thanks to this president that Russia is still alive, and people like you can only cause trouble.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.15.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.369</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.15.14.4" style="padding-top:1pt;padding-bottom:1pt;">0.003</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.16.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.16.15.2.1">
<span class="ltx_p" id="A7.T9.1.16.15.2.1.1" style="width:256.1pt;">ты просто пидор,а не немец.я за свои слова отвечу, 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.16.15.2.1.1.1">you’re just a faggot, not a german. I stand by my words, but you won’t, because you’re a couch scumbag.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.16.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.906</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.16.15.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.17.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.17.16.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.17.16.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.17.16.2.1">
<span class="ltx_p" id="A7.T9.1.17.16.2.1.1" style="width:256.1pt;">ты просто не немец. я за свои слова отвечу, а ты н 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.17.16.2.1.1.1">you’re just not german. i’ll answer for my words, but you won’t, because you’re writing from the couch</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.17.16.3" style="padding-top:1pt;padding-bottom:1pt;">0.399</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.17.16.4" style="padding-top:1pt;padding-bottom:1pt;">0.002</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.18.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.18.17.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.18.17.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.18.17.2.1">
<span class="ltx_p" id="A7.T9.1.18.17.2.1.1" style="width:256.1pt;">да, блядь, кто это говнище постоянно сюда сливает?! 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.18.17.2.1.1.1">Yeah, fuck, who keeps dumping this shit here all the time?!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.18.17.3" style="padding-top:1pt;padding-bottom:1pt;">0.654</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.18.17.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.19.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T9.1.19.18.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T9.1.19.18.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.19.18.2.1">
<span class="ltx_p" id="A7.T9.1.19.18.2.1.1" style="width:256.1pt;">да кто эту ерунду постоянно сюда сливает?! 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.19.18.2.1.1.1">who is constantly pouring this nonsense here?!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T9.1.19.18.3" style="padding-top:1pt;padding-bottom:1pt;">0.096</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.19.18.4" style="padding-top:1pt;padding-bottom:1pt;">0.001</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.20.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T9.1.20.19.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T9.1.20.19.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.20.19.2.1">
<span class="ltx_p" id="A7.T9.1.20.19.2.1.1" style="width:256.1pt;">да вы заебали этим постом уже, пидарасы!!! 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.20.19.2.1.1.1">I’m sick of this post already, you bastards!!!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T9.1.20.19.3" style="padding-top:1pt;padding-bottom:1pt;">0.903</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.20.19.4" style="padding-top:1pt;padding-bottom:1pt;">1.000</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.21.20">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A7.T9.1.21.20.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A7.T9.1.21.20.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T9.1.21.20.2.1">
<span class="ltx_p" id="A7.T9.1.21.20.2.1.1" style="width:256.1pt;">да вы надоели этим постом уже, люди!!! 
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T9.1.21.20.2.1.1.1">Yes, people, I am tired of this post already!!!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A7.T9.1.21.20.3" style="padding-top:1pt;padding-bottom:1pt;">0.012</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T9.1.21.20.4" style="padding-top:1pt;padding-bottom:1pt;">0.001</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays a selection of few-shot examples used for the Russian language in the SynthDetoxM dataset creation.  Each row shows a toxic sentence and its corresponding neutral paraphrase, along with toxicity scores generated by two different methods: Perspective API and XLM-R. The table is used to illustrate the quality of the generated detoxification pairs in the dataset and how the LLM models handle various types of toxicity in the Russian language.
> <details>
> <summary>read the caption</summary>
> Таблица 9: Selected few-shot examples for the Russian language with toxicity scores.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T10.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T10.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T10.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Type</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T10.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.1.1.2.1">
<span class="ltx_p" id="A7.T10.1.1.1.1.2.1.1" style="width:256.1pt;">Text</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T10.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Perspective API Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T10.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">XLM-R Score</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T10.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.2.1.2.1">
<span class="ltx_p" id="A7.T10.1.1.2.1.2.1.1" style="width:256.1pt;">
<span class="ltx_text" id="A7.T10.1.1.2.1.2.1.1.1" lang="de">In dem Schwarz Grün regierden Hessen werden jetzt 8 zusätzliche Psychologen nur für die Jugendlichen Invasoren eingestellt. Jetzt AFD wählen</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.2.1.2.1.1.2">In the black-green governed Hesse, 8 additional psychologists are now being hired only for the young invader. Vote AFD now</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.397</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">0.486</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.3.2.2.1">
<span class="ltx_p" id="A7.T10.1.1.3.2.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.3.2.2.1.1.1" lang="de">In dem Schwarz Grün regierden Hessen werden jetzt 8 zusätzliche Psychologen nur für die Jugendlichen Einwanderer eingestellt. Jetzt AFD wählen</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.3.2.2.1.1.2">In the black-green governed Hesse, 8 additional psychologists are now being hired only for the young immigrants. Vote AFD now</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.313</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.004</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.4.3.2.1">
<span class="ltx_p" id="A7.T10.1.1.4.3.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.4.3.2.1.1.1" lang="de">Moin, moin, seid Ihr alle noch gesund und munter bei all dem geistigen Dünnpfiff im ”Merkel-Propagandaschrott”?</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.4.3.2.1.1.2">Hello, hello, are you all still healthy and cheerful despite all the intellectual drivel in the "Merkel propaganda junk"?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.471</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.898</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.5.4.2.1">
<span class="ltx_p" id="A7.T10.1.1.5.4.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.5.4.2.1.1.1" lang="de">Moin, moin, seid Ihr alle noch gesund und munter bei all dem geistigen Quatsch in der ”Merkel-Propaganda”?</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.5.4.2.1.1.2">Hello, hello, are you all still healthy and cheerful despite all the intellectual nonsense in the "Merkel propaganda"?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.427</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.999</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.6.5.2.1">
<span class="ltx_p" id="A7.T10.1.1.6.5.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.6.5.2.1.1.1" lang="de">Ich würde Grüne mit einem Geschwür am Arsch der Welt bezeichnen</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.6.5.2.1.1.2">I would describe Greens as a boil on the ass of the world</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.999</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.7.6.2.1">
<span class="ltx_p" id="A7.T10.1.1.7.6.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.7.6.2.1.1.1" lang="de">Ich würde Grüne mit einem Geschwür der Welt bezeichnen.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.7.6.2.1.1.2">I would describe Greens as a boil of the world.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.267</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.337</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.8.7.2.1">
<span class="ltx_p" id="A7.T10.1.1.8.7.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.8.7.2.1.1.1" lang="de">Dummes Gelaber, Kern.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.8.7.2.1.1.2">Stupid talk, Kern.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.397</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.653</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.9.8.2.1">
<span class="ltx_p" id="A7.T10.1.1.9.8.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.9.8.2.1.1.1" lang="de">Unsinnige Aussage, Kern</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.9.8.2.1.1.2">Nonsensical statement, Kern</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.177</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.002</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.10.9.2.1">
<span class="ltx_p" id="A7.T10.1.1.10.9.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.10.9.2.1.1.1" lang="de">wie kann man nur derart strunzdumme Moderatoren wie bei #taff auf #ProSieben beschäftigen</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.10.9.2.1.1.2">how can you employ such extremely stupid presenters as at #taff on #ProSieben</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.634</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.016</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.11.10.2.1">
<span class="ltx_p" id="A7.T10.1.1.11.10.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.11.10.2.1.1.1" lang="de">wie kann man nur solche Moderatoren wie bei #taff auf #ProSieben beschäftigen</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.11.10.2.1.1.2">how can you employ such presenters as at #taff on #ProSieben</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.056</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">0.001</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.12.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.12.11.2.1">
<span class="ltx_p" id="A7.T10.1.1.12.11.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.12.11.2.1.1.1" lang="de">Da macht sich die Bildung aus der Bild mal wieder bemerkbar. So ein Sau dummer Kommentar</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.12.11.2.1.1.2">That’s where the education from Bild becomes noticeable again. Such a pig stupid comment</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.557</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">0.332</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.13.12.2.1">
<span class="ltx_p" id="A7.T10.1.1.13.12.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.13.12.2.1.1.1" lang="de">Da macht sich die Bildung aus der Bild mal wieder bemerkbar. Ein sehr unüberlegter Beitrag</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.13.12.2.1.1.2">That’s where the education from Bild becomes noticeable again. A very inconsiderate contribution</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.110</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">0.000</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.14.13.2.1">
<span class="ltx_p" id="A7.T10.1.1.14.13.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.14.13.2.1.1.1" lang="de">Kurz lasst dich nicht von der Trulla aufs Glatteis führen!</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.14.13.2.1.1.2">Kurz don’t let the chick lead you astray!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.224</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">0.384</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.15.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.15.14.2.1">
<span class="ltx_p" id="A7.T10.1.1.15.14.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.15.14.2.1.1.1" lang="de">Kurz lasst dich nicht von der Frau aufs Glatteis führen!</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.15.14.2.1.1.2">Kurz don’t let the woman lead you astray!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.15.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.185</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.15.14.4" style="padding-top:1pt;padding-bottom:1pt;">0.012</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.16.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.16.15.2.1">
<span class="ltx_p" id="A7.T10.1.1.16.15.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.16.15.2.1.1.1" lang="de">Younower zu werden ist der finale schritt um ein Hurensohn zu werden</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.16.15.2.1.1.2">Becoming a Younower is the final step to becoming a son of a bitch</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.16.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.638</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.16.15.4" style="padding-top:1pt;padding-bottom:1pt;">0.999</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.17.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.17.16.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.17.16.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.17.16.2.1">
<span class="ltx_p" id="A7.T10.1.1.17.16.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.17.16.2.1.1.1" lang="de">Younower zu werden ist der finale schritt um unsympathisch zu werden</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.17.16.2.1.1.2">Becoming a Younower is the final step to becoming unsympathetic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.17.16.3" style="padding-top:1pt;padding-bottom:1pt;">0.231</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.17.16.4" style="padding-top:1pt;padding-bottom:1pt;">0.676</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.18.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.18.17.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.18.17.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.18.17.2.1">
<span class="ltx_p" id="A7.T10.1.1.18.17.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.18.17.2.1.1.1" lang="de">Sehe ich Kathrin Göring Eckart, Merkel, Gysi, Petry, Wagenknecht und all die anderen Wendehälse die uns heute regieren. Frage ich mich. War der Fall der Mauer ein Fehler.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.18.17.2.1.1.2">When I see Kathrin Göring Eckart, Merkel, Gysi, Petry, Wagenknecht and all the other turncoats who govern us today. I ask myself. Was the fall of the wall a mistake.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.18.17.3" style="padding-top:1pt;padding-bottom:1pt;">0.339</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.18.17.4" style="padding-top:1pt;padding-bottom:1pt;">0.733</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.19.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.19.18.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.19.18.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.19.18.2.1">
<span class="ltx_p" id="A7.T10.1.1.19.18.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.19.18.2.1.1.1" lang="de">Sehe ich Kathrin Göring Eckart, Merkel, Gysi, Petry, Wagenknecht und all die anderen wechselnhaften Politiker die uns heute regieren. Frage ich mich. War der Fall der Mauer ein Fehler.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.19.18.2.1.1.2">When I see Kathrin Göring Eckart, Merkel, Gysi, Petry, Wagenknecht and all the other fickle politicians who govern us today. I ask myself. Was the fall of the wall a mistake.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.19.18.3" style="padding-top:1pt;padding-bottom:1pt;">0.058</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.19.18.4" style="padding-top:1pt;padding-bottom:1pt;">0.003</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.20.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T10.1.1.20.19.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T10.1.1.20.19.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.20.19.2.1">
<span class="ltx_p" id="A7.T10.1.1.20.19.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.20.19.2.1.1.1" lang="de">Hahaha vllt gönn ich mir das ma. Aber diese asiaten sind einfach freaks, das is nich menschlich</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.20.19.2.1.1.2">Hahaha maybe I’ll treat myself to that. But these Asians are just freaks, that’s not human</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T10.1.1.20.19.3" style="padding-top:1pt;padding-bottom:1pt;">0.572</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.1.1.20.19.4" style="padding-top:1pt;padding-bottom:1pt;">0.273</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.1.21.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T10.1.1.21.20.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T10.1.1.21.20.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T10.1.1.21.20.2.1">
<span class="ltx_p" id="A7.T10.1.1.21.20.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T10.1.1.21.20.2.1.1.1" lang="de">Hahaha vllt gönn ich mir das ma. Aber diese asiaten sind einfach unglaublich, fast übermenschlich</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T10.1.1.21.20.2.1.1.2">Hahaha maybe I’ll treat myself to that. But these Asians are just unbelievable, almost superhuman</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T10.1.1.21.20.3" style="padding-top:1pt;padding-bottom:1pt;">0.235</td>
<td class="ltx_td ltx_align_center" id="A7.T10.1.1.21.20.4" style="padding-top:1pt;padding-bottom:1pt;">0.995</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a selection of few-shot examples used for the German language in the text detoxification process. Each example includes the original toxic text, its neutral counterpart generated by the model, and the toxicity scores obtained from the Perspective API and the XLM-R model.  This allows for an understanding of the model's performance in neutralizing toxic language while maintaining semantic similarity.
> <details>
> <summary>read the caption</summary>
> Таблица 10: Selected few-shot examples for German language with toxicity scores.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T11.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T11.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T11.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Type</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T11.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.1.1.2.1">
<span class="ltx_p" id="A7.T11.1.1.1.2.1.1" style="width:256.1pt;">Text</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T11.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Perspective API Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">XLM-R Score</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T11.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.2.1.2.1">
<span class="ltx_p" id="A7.T11.1.2.1.2.1.1" style="width:256.1pt;">
<span class="ltx_text" id="A7.T11.1.2.1.2.1.1.1" lang="es">Y lo bien que les va siendo fachas, que no es gratis</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.2.1.2.1.1.2">And how well they are doing being fascists, which is not free</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.184</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">0.002</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.3.2.2.1">
<span class="ltx_p" id="A7.T11.1.3.2.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.3.2.2.1.1.1" lang="es">Y lo bien que les va siendo conservadores, que no es gratis</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.3.2.2.1.1.2">And how well they are doing being conservatives, which is not free</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.012</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.574</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.4.3.2.1">
<span class="ltx_p" id="A7.T11.1.4.3.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.4.3.2.1.1.1" lang="es">Y a mí qué me importa lo que tú ”notes”, facha?</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.4.3.2.1.1.2">And what do I care what you "notice fascist?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.427</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.391</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.5.4.2.1">
<span class="ltx_p" id="A7.T11.1.5.4.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.5.4.2.1.1.1" lang="es">Y a mí qué me importa lo que tú ”notes”?</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.5.4.2.1.1.2">And what do I care what you "notice"?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.080</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.001</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.6.5.2.1">
<span class="ltx_p" id="A7.T11.1.6.5.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.6.5.2.1.1.1" lang="es">ya ves además a los policías nazis que tendrá esa en el whatsapp… como para creerse algo.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.6.5.2.1.1.2">you see also the nazi policemen that she will have on whatsapp… as if to believe something.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.261</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.608</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.7.6.2.1">
<span class="ltx_p" id="A7.T11.1.7.6.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.7.6.2.1.1.1" lang="es">ya ves además a los policías que tendrá esa en el whatsapp… como para creerse algo.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.7.6.2.1.1.2">you see also the policemen that she will have on whatsapp… as if to believe something.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.035</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.003</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.8.7.2.1">
<span class="ltx_p" id="A7.T11.1.8.7.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.8.7.2.1.1.1" lang="es">#YoSoyAnonymousUE basta de absurda represión victimista por parte del Estado Fascista</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.8.7.2.1.1.2">#YoSoyAnonymousUE enough of absurd victimist repression by the Fascist State</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.255</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.352</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.9.8.2.1">
<span class="ltx_p" id="A7.T11.1.9.8.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.9.8.2.1.1.1" lang="es">#YoSoyAnonymousUE basta de absurda represión victimista por parte del Estado</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.9.8.2.1.1.2">#YoSoyAnonymousUE enough of absurd victimist repression by the State</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.106</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.034</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.10.9.2.1">
<span class="ltx_p" id="A7.T11.1.10.9.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.10.9.2.1.1.1" lang="es">Supongo que Perro le dará asilo en la Moncloa</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.10.9.2.1.1.2">I suppose Dog will give him asylum in La Moncloa</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.314</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.283</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.11.10.2.1">
<span class="ltx_p" id="A7.T11.1.11.10.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.11.10.2.1.1.1" lang="es">Supongo que el presidente le dara asilo en la Moncloa</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.11.10.2.1.1.2">I suppose the president will give him asylum in La Moncloa</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.039</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">0.004</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.12.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.12.11.2.1">
<span class="ltx_p" id="A7.T11.1.12.11.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.12.11.2.1.1.1" lang="es">Los halagos y buenos modales siempre hacen bien, menos a los izquierdistas de la cultura del odio.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.12.11.2.1.1.2">Flattery and good manners are always good, except for the leftists of the culture of hatred.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.285</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">0.969</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.13.12.2.1">
<span class="ltx_p" id="A7.T11.1.13.12.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.13.12.2.1.1.1" lang="es">Los halagos y buenos modales siempre hacen bien, menos a los izquierdas de la cultura del odio.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.13.12.2.1.1.2">Flattery and good manners are always good, except for the leftists of the culture of hatred.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.280</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">0.236</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.14.13.2.1">
<span class="ltx_p" id="A7.T11.1.14.13.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.14.13.2.1.1.1" lang="es">Yo me quiero escapar también, dan paguita al llega</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.14.13.2.1.1.2">I want to escape too, they give a small handout to the newcomer</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.011</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">0.423</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.15.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.15.14.2.1">
<span class="ltx_p" id="A7.T11.1.15.14.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.15.14.2.1.1.1" lang="es">¿Ofrecen algún tipo de apoyo al llegar?</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.15.14.2.1.1.2">Do they offer any kind of support upon arrival?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.15.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.002</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.15.14.4" style="padding-top:1pt;padding-bottom:1pt;">0.000</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.16.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.16.15.2.1">
<span class="ltx_p" id="A7.T11.1.16.15.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.16.15.2.1.1.1" lang="es">Mire la saga de 50 sombras de Grey…casi todo eran.lectoras…les va el.morbillo no lo.nieguen</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.16.15.2.1.1.2">Look at the 50 Shades of Grey saga…almost all were.readers…they like.morbid curiosity don’t.deny it</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.16.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.039</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.16.15.4" style="padding-top:1pt;padding-bottom:1pt;">0.811</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.17.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.17.16.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.17.16.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.17.16.2.1">
<span class="ltx_p" id="A7.T11.1.17.16.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.17.16.2.1.1.1" lang="es">Miren la saga de 50 sombras de Grey.. casi todo eran lectoras… le encanta</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.17.16.2.1.1.2">Look at the 50 Shades of Grey saga… almost all were readers… they love it</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.17.16.3" style="padding-top:1pt;padding-bottom:1pt;">0.011</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.17.16.4" style="padding-top:1pt;padding-bottom:1pt;">0.000</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.18.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.18.17.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.18.17.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.18.17.2.1">
<span class="ltx_p" id="A7.T11.1.18.17.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.18.17.2.1.1.1" lang="es">Cortocircuito buenrrollista, pobres inmigrantes vs chica atacada sexualmente.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.18.17.2.1.1.2">Good-natured short circuit, poor immigrants vs sexually attacked girl.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.18.17.3" style="padding-top:1pt;padding-bottom:1pt;">0.305</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.18.17.4" style="padding-top:1pt;padding-bottom:1pt;">0.719</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.19.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T11.1.19.18.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T11.1.19.18.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.19.18.2.1">
<span class="ltx_p" id="A7.T11.1.19.18.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.19.18.2.1.1.1" lang="es">Es un conflicto entre el enfoque positivo y la compasión por los inmigrantes, frente a la preocupación por una chica atacada sexualmente.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.19.18.2.1.1.2">It is a conflict between the positive approach and compassion for immigrants, versus concern for a sexually attacked girl.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.1.19.18.3" style="padding-top:1pt;padding-bottom:1pt;">0.082</td>
<td class="ltx_td ltx_align_center" id="A7.T11.1.19.18.4" style="padding-top:1pt;padding-bottom:1pt;">0.002</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.20.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T11.1.20.19.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T11.1.20.19.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.20.19.2.1">
<span class="ltx_p" id="A7.T11.1.20.19.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.20.19.2.1.1.1" lang="es">menudos fachas xD HIJOS DE PUTA</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.20.19.2.1.1.2">what fascists xD SONS OF BITCHES</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.1.20.19.3" style="padding-top:1pt;padding-bottom:1pt;">0.921</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.1.20.19.4" style="padding-top:1pt;padding-bottom:1pt;">0.802</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.21.20">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A7.T11.1.21.20.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A7.T11.1.21.20.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T11.1.21.20.2.1">
<span class="ltx_p" id="A7.T11.1.21.20.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T11.1.21.20.2.1.1.1" lang="es">menudos fachas xD</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T11.1.21.20.2.1.1.2">what fascists xD</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A7.T11.1.21.20.3" style="padding-top:1pt;padding-bottom:1pt;">0.327</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T11.1.21.20.4" style="padding-top:1pt;padding-bottom:1pt;">0.982</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays several examples of few-shot prompts used for the Spanish language in the SynthDetoxM dataset creation.  For each example, it shows the original toxic text, a neutral (detoxified) paraphrase generated by the model, and the toxicity scores assigned by Perspective API and XLM-R.  This demonstrates the model's ability to generate neutral paraphrases and helps evaluate the effectiveness of the few-shot learning approach.
> <details>
> <summary>read the caption</summary>
> Таблица 11: Selected few-shot examples for the Spanish language with toxicity scores.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T12.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T12.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T12.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Type</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T12.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.1.1.2.1">
<span class="ltx_p" id="A7.T12.1.1.1.2.1.1" style="width:256.1pt;">Text</span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T12.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Perspective API Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T12.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">XLM-R Score</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T12.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.2.1.2.1">
<span class="ltx_p" id="A7.T12.1.2.1.2.1.1" style="width:256.1pt;">
<span class="ltx_text" id="A7.T12.1.2.1.2.1.1.1" lang="fr">Pour le crétin qui remet à chaque fois une soi-disant citation de Nietzsche, l’expression ”tout s’enjuive” est attribuée par Nietzsche à un libre-penseur démocrate, autrement dit Nietzsche identifie l’antisémitisme aux valeurs chrétiennes de la ”libre pensée”.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.2.1.2.1.1.2">For the idiot who always puts a so-called quote from Nietzsche, the expression "everything is becoming Jewish"is attributed by Nietzsche to a democratic freethinker, in other words Nietzsche identifies anti-Semitism with the Christian values of "free thought".</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.255</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T12.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T12.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.3.2.2.1">
<span class="ltx_p" id="A7.T12.1.3.2.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.3.2.2.1.1.1" lang="fr">Pour la personne qui remet à chacun une s citation de Nietzsche l’expression tout s’enjuive est attribuée par Nietzsche à un libre-penseur démocrate, autrement dit Nietzsche identifie l’antisémitisme aux valeurs chrétiennes de la libre pensée.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.3.2.2.1.1.2">For the person who gives everyone a quote from Nietzsche, the expression "everything is becoming Jewish"is attributed by Nietzsche to a democratic freethinker, in other words Nietzsche identifies anti-Semitism with the Christian values of free thought.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T12.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.000</td>
<td class="ltx_td ltx_align_center" id="A7.T12.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.4.3.2.1">
<span class="ltx_p" id="A7.T12.1.4.3.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.4.3.2.1.1.1" lang="fr">Et toi aussi tu commences sérieusement à me gonfler.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.4.3.2.1.1.2">And you too are seriously starting to annoy me.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.238</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T12.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T12.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.5.4.2.1">
<span class="ltx_p" id="A7.T12.1.5.4.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.5.4.2.1.1.1" lang="fr">Et toi aussi tu commences sérieusement à m’énerver.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.5.4.2.1.1.2">And you too are seriously starting to irritate me.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T12.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.285</td>
<td class="ltx_td ltx_align_center" id="A7.T12.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.6.5.2.1">
<span class="ltx_p" id="A7.T12.1.6.5.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.6.5.2.1.1.1" lang="fr">Tout est trop nul, tout est faux ou ou ou!</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.6.5.2.1.1.2">Everything is too rubbish, everything is false or or or!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.167</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T12.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T12.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.7.6.2.1">
<span class="ltx_p" id="A7.T12.1.7.6.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.7.6.2.1.1.1" lang="fr">Tout est médiocre et faux !</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.7.6.2.1.1.2">Everything is mediocre and false!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T12.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.195</td>
<td class="ltx_td ltx_align_center" id="A7.T12.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.8.7.2.1">
<span class="ltx_p" id="A7.T12.1.8.7.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.8.7.2.1.1.1" lang="fr">Continuez tout seul si ça vous amuse. Je ne perdrai pas plus de temps avec un pénible de votre espèce.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.8.7.2.1.1.2">Continue on your own if that amuses you. I won’t waste any more time with a pain in the ass like you.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.498</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T12.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T12.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.9.8.2.1">
<span class="ltx_p" id="A7.T12.1.9.8.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.9.8.2.1.1.1" lang="fr">Continuez tout seul si ça vous amuse. Je ne perdrai pas plus de temps avec une telle personne.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.9.8.2.1.1.2">Continue on your own if that amuses you. I won’t waste any more time with such a person.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T12.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.309</td>
<td class="ltx_td ltx_align_center" id="A7.T12.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.10.9.2.1">
<span class="ltx_p" id="A7.T12.1.10.9.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.10.9.2.1.1.1" lang="fr">Salut, j ai restauré cet article et réverté tes su</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.10.9.2.1.1.2">Hi, I restored this article and reverted your su</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.383</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T12.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T12.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.11.10.2.1">
<span class="ltx_p" id="A7.T12.1.11.10.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.11.10.2.1.1.1" lang="fr">Salut, j ai restauré cet article et réverté tes su</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.11.10.2.1.1.2">Hi, I restored this article and reverted your su</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T12.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.152</td>
<td class="ltx_td ltx_align_center" id="A7.T12.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.12.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.12.11.2.1">
<span class="ltx_p" id="A7.T12.1.12.11.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.12.11.2.1.1.1" lang="fr">Encore un vieux qui fait chier, je ne fais plus attention à force.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.12.11.2.1.1.2">Another old man who’s a pain in the ass, I don’t pay attention anymore.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.509</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T12.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T12.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.13.12.2.1">
<span class="ltx_p" id="A7.T12.1.13.12.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.13.12.2.1.1.1" lang="fr">Encore un vieux ennuyeux, je ne fais plus attention à force.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.13.12.2.1.1.2">Another boring old man, I don’t pay attention anymore.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T12.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.378</td>
<td class="ltx_td ltx_align_center" id="A7.T12.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.14.13.2.1">
<span class="ltx_p" id="A7.T12.1.14.13.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.14.13.2.1.1.1" lang="fr">Oue et on s en tape de ta façon a toi et on s en tape que t as eu d emmerdes avec personne c est pas mon problème donc comme je l ai dis tout a l heure je fais a ma façon.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.14.13.2.1.1.2">Yeah and we don’t care about your way and we don’t care that you had troubles with anyone it’s not my problem so as I said earlier I do it my way.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.373</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.15.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T12.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T12.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.15.14.2.1">
<span class="ltx_p" id="A7.T12.1.15.14.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.15.14.2.1.1.1" lang="fr">Oue et ça n’a rien à voir avec ta vie, le fait que tu aies eu des problèmes, ça ne me regarde pas, donc comme je l ai dis tout a l heure je fais a ma façon.</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.15.14.2.1.1.2">Yeah and it has nothing to do with your life, the fact that you had problems, it’s none of my business, so as I said earlier I do it my way.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T12.1.15.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.049</td>
<td class="ltx_td ltx_align_center" id="A7.T12.1.15.14.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.16.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.16.15.2.1">
<span class="ltx_p" id="A7.T12.1.16.15.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.16.15.2.1.1.1" lang="fr">Ta réponse est confondante… Et tu continues tes manigances ! Je te prie de t arrêter immédiatement!</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.16.15.2.1.1.2">Your answer is confusing… And you continue your schemes! I beg you to stop immediately!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.16.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.304</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.16.15.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.17.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A7.T12.1.17.16.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A7.T12.1.17.16.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.17.16.2.1">
<span class="ltx_p" id="A7.T12.1.17.16.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.17.16.2.1.1.1" lang="fr">Ta réponse est confondante… Et tu continues tes tricks! Je te prie de t arrêter immédiatement !</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.17.16.2.1.1.2">Your answer is confusing… And you continue your tricks! I beg you to stop immediately!</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T12.1.17.16.3" style="padding-top:1pt;padding-bottom:1pt;">0.255</td>
<td class="ltx_td ltx_align_center" id="A7.T12.1.17.16.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.18.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A7.T12.1.18.17.1" style="padding-top:1pt;padding-bottom:1pt;">Toxic</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A7.T12.1.18.17.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.18.17.2.1">
<span class="ltx_p" id="A7.T12.1.18.17.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.18.17.2.1.1.1" lang="fr">Faut croire que les amateurs de musique sont des malades mentaux</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.18.17.2.1.1.2">You have to believe that music lovers are mentally ill</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T12.1.18.17.3" style="padding-top:1pt;padding-bottom:1pt;">0.386</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T12.1.18.17.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
<tr class="ltx_tr" id="A7.T12.1.19.18">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A7.T12.1.19.18.1" style="padding-top:1pt;padding-bottom:1pt;">Neutral</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A7.T12.1.19.18.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A7.T12.1.19.18.2.1">
<span class="ltx_p" id="A7.T12.1.19.18.2.1.1" style="width:256.1pt;"><span class="ltx_text" id="A7.T12.1.19.18.2.1.1.1" lang="fr">Faut croire que les amateurs de musique ont des préférences étranges</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_italic" id="A7.T12.1.19.18.2.1.1.2">You have to believe that music lovers have strange preferences</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A7.T12.1.19.18.3" style="padding-top:1pt;padding-bottom:1pt;">0.046</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T12.1.19.18.4" style="padding-top:1pt;padding-bottom:1pt;">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays several examples of few-shot prompts used for the French language in the SynthDetoxM dataset creation process.  Each row shows a toxic sentence and its corresponding non-toxic paraphrase generated by a large language model.  The table also provides toxicity scores (Perspective API and XLM-R) for both the original toxic sentence and its generated counterpart. These scores help in evaluating the effectiveness of the detoxification process.
> <details>
> <summary>read the caption</summary>
> Таблица 12: Selected few-shot examples for the French language with toxicity scores.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06394/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06394/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}