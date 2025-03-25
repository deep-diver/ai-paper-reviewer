---
title: "Lost in Cultural Translation: Do LLMs Struggle with Math Across Cultural Contexts?"
summary: "LLMs falter on culturally adapted math problems, revealing a critical cultural bias."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 155mv Research Lab",]
showSummary: true
date: 2025-03-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18018 {{< /keyword >}}
{{< keyword icon="writer" >}} Aabid Karim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18018" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18018" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18018/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models(LLMs) excel in many areas, but do they truly understand different cultures, or do they just reflect the cultural biases present in their training data? This paper explores whether LLMs can solve math problems when those problems are adapted to different cultural contexts. The researchers question whether LLMs can perform math reasoning when presented with math word problems that are adapted in different cultures. They changed cultural elements in problems and assessed how well LLMs could solve them. This paper finds that **cultural context greatly impacts LLMs' math abilities**. 



To tackle this question, researchers created six synthetic cultural datasets based on the GSM8K benchmark, a standard test for LLMs' math skills. While keeping the math the same, they altered cultural details such as names, foods, and places to reflect different regions. Then, they tested 14 LLMs on these datasets to see how well they performed.The results showed that **LLMs struggle when math problems include unfamiliar cultural references**, even when the underlying math is unchanged. Smaller models had even more trouble than larger ones. Interestingly, exposure to relevant cultural contexts can improve mathematical reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs struggle with math problems when cultural references are changed, even if the underlying mathematical structure remains constant. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Smaller models exhibit greater performance drops compared to larger models when cultural references change. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Cultural familiarity can enhance mathematical reasoning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper reveals **LLMs' cultural biases** in math reasoning, highlighting the need for diverse training data and culturally nuanced evaluation. It prompts future research into **fairer, more robust AI** across cultures.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/Figure1.png)

> 🔼 This figure illustrates the process of creating culturally adapted datasets from the GSM8K dataset. It starts with the 1319 questions from GSM8K, a sample of which are manually inspected to identify cultural entities. These entities are then used to create symbolic versions of the questions using GPT-40.  A dictionary of cultural entities is built through web searches, which are used to replace placeholders in the symbolic questions to create culturally adapted versions. The process involves multiple iterations of refinement and manual inspection to ensure accuracy and consistency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Cultural Datasets Creation Flow
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.2.1.1.1">No</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.2.1.1.2">Country</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.2.1.1.3">Continent</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.2.1.1.4">Dataset</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.2.2.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.1.2">Pakistan</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.1.3">Asia</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.1.4">PakGSM8K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.2.3.2.1">2</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.3.2.2">Moldova</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.3.2.3">Europe</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.3.2.4">MolGSM8K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.2.4.3.1">3</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.4.3.2">Somalia</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.4.3.3">Africa</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.4.3.4">SomGSM8K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.2.5.4.1">4</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.5.4.2">Haiti</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.5.4.3">North America</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.5.4.4">HaiGSM8K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.2.6.5.1">5</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.6.5.2">Suriname</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.6.5.3">South America</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.6.5.4">SurGSM8K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S3.T1.2.7.6.1">6</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.2.7.6.2">Solomon islands</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.2.7.6.3">Oceania</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.2.7.6.4">SolIGSM8K</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the six countries and corresponding datasets used in the study.  Each dataset is a culturally adapted version of the GSM8K dataset, reflecting the cultural context of a specific country. The countries were selected to represent diverse geographical regions and levels of socioeconomic development, ensuring a wide range of cultural contexts in the evaluation.
> <details>
> <summary>read the caption</summary>
> Table 1: Countries and Datasets
> </details>





### In-depth insights


#### Cultural Reasoning
Cultural reasoning in Large Language Models (LLMs) is challenged by biases in training data, leading to difficulties when processing culturally adapted math problems.  The study reveals that LLMs struggle with math problems when cultural references change, even while mathematical structures remain constant. **Smaller models exhibit greater performance drops**, underscoring limitations in generalizing mathematical skills.  Interestingly, cultural familiarity can enhance reasoning, even in models without explicit math training. Cultural context significantly influences math reasoning in LLMs, creating a need for more diverse training data to improve real-world application robustness. Tokenization variances across cultures and the influence of training on problem-solving approaches show intricacies. **LLMs can introduce incorrect cultural assumptions**, underlining the importance of accounting for cultural context when evaluating mathematical reasoning in LLMs.

#### Synthetic Datasets
While the research paper does not explicitly delve into a section called 'Synthetic Datasets,' the methodology inherently relies on synthetic data generation to augment or adapt existing benchmarks like GSM8K. The creation of culturally diverse datasets from GSM8K is a form of synthetic data generation, **preserving mathematical structure while modifying cultural elements.** This approach raises important considerations: the quality and diversity of the synthetic data are crucial for reliable evaluation. If the generated cultural contexts are not sufficiently representative or diverse, the assessment of LLMs' cultural understanding might be skewed. Also, there is a potential for **introducing unintended biases** during the synthesis process, where the models used for adapting the data might inadvertently reflect their own limitations or biases.

#### Tokenization Bias
Tokenization bias in LLMs arises because the models' **vocabularies and subword tokenization algorithms are shaped by their training data**, often skewed towards dominant languages and cultures. Consequently, less represented languages or specialized domains may be tokenized into more subwords, increasing input length and computational cost. This can **degrade performance** because longer sequences introduce more opportunities for error and dilute contextual understanding. Bias can also lead to **inconsistent representations** where semantically similar concepts are tokenized differently based on their cultural origin. Mitigating this requires **careful vocabulary design**, cross-lingual training, and bias correction strategies to ensure fair and efficient processing across diverse inputs.

#### McNemar Analysis
**McNemar's test is employed to statistically validate the observed performance differences**. It assesses whether Large language Models (LLMs) responses on culturally adapted math problems deviate significantly from those on the original GSM8K dataset, using p-values and b/c counts. This analysis aids in determining if performance variances are genuinely linked to cultural context or merely arise from random chance, indicating model sensitivity. A statistically significant result points to a cultural effect impacting accuracy, influencing the reliability of LLMs across diverse scenarios.

#### Reasoning Failure
The paper highlights **reasoning failures** in LLMs when faced with culturally adapted math problems. The failures are **not merely arithmetic errors**, but stem from contextual misunderstandings. **Currency handling** is problematic; models struggle with less familiar units, often misinterpreting decimals based on cultural norms. **Family structures** also pose challenges, as models trained on Western norms struggle with non-Western familial relationships, leading to inaccurate calculations. A crucial point is **entity interpretation**; unfamiliar cultural terms trigger incorrect assumptions, showcasing reliance on learned patterns over genuine understanding. This underscores that cultural context significantly influences reasoning, even with unchanged underlying mathematical logic. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18018/extracted/6302685/images/Figure2a.png)

> 🔼 This figure shows a sample question from the GSM8K dataset after its cultural entities have been replaced with placeholders.  The original question contained culturally specific elements like names and items. The symbolic version retains the mathematical structure but replaces these entities with generic placeholders, such as {Person Name} and {Food Item}, allowing for easier cultural adaptation in subsequent steps of the dataset creation process.
> <details>
> <summary>read the caption</summary>
> (a) Symbolic version of an original sample question from GSM8K test dataset
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/Figure2b.png)

> 🔼 This figure shows the mapping rules used to ensure that when placeholders representing cultural entities (e.g., person names, food items) are replaced with actual entities from a cultural dictionary, the logical consistency of the question is maintained.  The mapping ensures that if a specific placeholder appears multiple times within a question, it is always replaced by the same entity.  This addresses the challenge of maintaining the original mathematical logic when swapping out culturally-specific terms.
> <details>
> <summary>read the caption</summary>
> (b) Mapping rules for the sample question from GSM8K test dataset
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/Figure2c.png)

> 🔼 The figure shows three versions of the same question: the original question from the GSM8K dataset, its symbolic version (with placeholders replacing culturally specific entities), and a culturally adapted version (where the placeholders have been replaced with entities relevant to a specific culture).  This illustrates the process of creating culturally adapted datasets from the original GSM8K dataset.
> <details>
> <summary>read the caption</summary>
> (c) Original GSM8K test set sample question, its symbolic version and its cultural variant after replacement
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/Figure3.png)

> 🔼 This figure illustrates the process of creating culturally adapted datasets from the GSM8K dataset. It shows a flowchart of the dataset creation process, starting with the original GSM8K questions, followed by the manual identification of cultural entities using a 7-shot prompt in GPT-40, and leading to the creation of dictionaries for different cultures, and finally the generation of six culturally adapted datasets from the original GSM8K dataset using a mapping rule.
> <details>
> <summary>read the caption</summary>
> Figure 2:
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/Figure4.png)

> 🔼 This figure presents a comparison of the accuracy of various Large Language Models (LLMs) when answering questions from the original GSM8K mathematics dataset and six culturally adapted versions of the same dataset.  Each cultural adaptation modifies elements such as names, locations, and foods to reflect the cultural context of a specific continent. The figure shows the accuracy for each model on the original GSM8K dataset and each of its six cultural variants, allowing for a visual comparison of how well the models generalize to different cultural contexts.  Error bars represent confidence intervals.
> <details>
> <summary>read the caption</summary>
> Figure 3: Accuracy Comparison of GSM8K vs culturally variant versions of GSM8K across various models
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/FigureA1.png)

> 🔼 This figure presents a bar chart comparing the performance gap of various LLMs across different culturally adapted versions of the GSM8K dataset. The performance gap is calculated as the difference in accuracy between the original GSM8K dataset and its culturally adapted counterparts for each model.  The chart visually represents how much each model's accuracy decreases when faced with culturally adapted questions.  This allows for a comparison of the models' robustness and sensitivity to cultural variations in mathematical problem-solving.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance Gap of Models across various culturally adapted GSM8K variants
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/FigureA2.png)

> 🔼 This figure shows the prompt used for the cultural entities recognition task. The prompt instructs the model to identify and replace culturally specific entities in a given question with placeholders while preserving the numerical values and mathematical logic. It provides two examples to illustrate the expected output format, which includes listing the entities and providing the modified question with placeholders.
> <details>
> <summary>read the caption</summary>
> Figure A1: Prompt for Cultural Entities Recognition
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/FigureA3.png)

> 🔼 This figure displays the prompt used to evaluate whether GPT-40 correctly identified and replaced culturally specific entities with placeholders.  The prompt provides examples of correctly and incorrectly identified entities to guide the evaluation. The evaluator determines if the GPT-40 output accurately reflects the original question by checking for correctly identified and replaced cultural entities and ensuring that no unnecessary or missing placeholders exist.
> <details>
> <summary>read the caption</summary>
> Figure A2: Prompt for Recognized Cultural Entities Evaluation
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/FigureA4.png)

> 🔼 Figure A3 is a screenshot showing a snippet of the dictionary created for the cultural adaptation of the GSM8K dataset.  The dictionary maps cultural entities (e.g., person names, food items, currencies) to their corresponding values specific to a given culture.  This is a crucial component of the dataset creation process, ensuring that the substituted entities are relevant and contextually appropriate for the target culture.
> <details>
> <summary>read the caption</summary>
> Figure A3: Screenshot of a Dictionary
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/FigureA5.png)

> 🔼 This figure displays the prompt used for evaluating LLMs' performance on all datasets in the study.  The prompt instructs the LLMs to solve math problems step-by-step and to explicitly state the final numerical answer in a separate tag.  This standardized prompt ensures consistency across all models and datasets, allowing for a fair comparison of their performance on both the original GSM8K dataset and its culturally adapted variants.  The consistent format helps to isolate the impact of cultural adaptation on the LLM's reasoning process, minimizing the influence of variations in prompt phrasing or instruction style.
> <details>
> <summary>read the caption</summary>
> Figure A4: Prompt for LLMs Evaluation on all Datasets
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/FigureA6.png)

> 🔼 This figure displays how the OpenAI tokenizer handles tokenization differently for an original English question from the GSM8K dataset and its culturally adapted Moldovan version.  The only change made between the two questions is the replacement of names with culturally relevant names (Amalia, Megan, and Dior are replaced with Aleksandr, Nicolae, and Albert). Despite this minor change, the tokenization process yields a different number of tokens and characters. This difference highlights how subtle cultural adaptations can alter the model's interpretation of the text, potentially influencing the overall reasoning process.
> <details>
> <summary>read the caption</summary>
> Figure A5: Difference in Tokenization
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/FigureA7.png)

> 🔼 Figure A6 showcases GPT-4's reasoning process when solving a volume calculation problem, comparing its performance on two versions: the original GSM8K question and a culturally-adapted HaiGSM8K variant.  The original GSM8K problem involves calculating the cost of filling a pool given its dimensions and the cost per cubic foot in US dollars. The HaiGSM8K version is identical in structure but uses Haitian Gourdes (HTG) instead of dollars.  The figure highlights how GPT-4 correctly solves the GSM8K problem but makes an error in the HaiGSM8K version due to inconsistent interpretation of the decimal place value in the Haitian Gourde currency, showcasing the model's sensitivity to cultural context and numerical representation differences.
> <details>
> <summary>read the caption</summary>
> Figure A6: GPT-4o Reasoning
> </details>



![](https://arxiv.org/html/2503.18018/extracted/6302685/images/FigureA8.png)

> 🔼 Figure A7 showcases GPT-4's reasoning process for solving a culturally adapted math word problem from the HaiGSM8K dataset (Solomon Islands).  It contrasts the model's responses to the original GSM8K problem and its culturally adapted counterpart. The original problem involves calculating the cost of a trip involving plane tickets and hotel stays. In the adapted version, the cultural context is changed, replacing the 'wife' with 'father-in-law' and using the Solomon Islands currency (SBD). The figure highlights how the model's approach and result change due to the cultural adaptation. Noteworthy is the difference in the hotel price calculation, demonstrating how cultural context influences the model's understanding of the problem and impacts its final answer. 
> <details>
> <summary>read the caption</summary>
> Figure A7: GPT-4o Reasoning
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="Ax1.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax1.T1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T1.2.1.1.1">Person name</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T1.2.1.1.2">currency</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.2.2">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.2.2.1">Types of pastries/local deserts</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.2.2.2">currency sign</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.3.3">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.3.3.1">City name</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.3.3.2">Types of commercial establishments</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.4.4">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.4.4.1">Types of houses</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.4.4.2">Types of dance</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.5.5">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.5.5.1">Types of goods merchant purchase</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.5.5.2">Types of common jobs</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.6.6">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.6.6.1">food items</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.6.6.2">clothing items</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.7.7">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.7.7.1">Common type of sport</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.7.7.2">Common brand name</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.8.8">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.8.8.1">cooking item</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.8.8.2">Types of events</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.9.9">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.9.9.1">Types of beverages</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.9.9.2">Common clothing items</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.10.10">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.10.10.1">Types of books</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.10.10.2">Types of vehicles</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.11.11">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.11.11.1">Types of places</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.11.11.2">animal</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.12.12">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.12.12.1">Recreation activity</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.12.12.2">Types of family events</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.13.13">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.13.13.1">types of shows</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.13.13.2">Village names</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.14.14">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.14.14.1">School subject</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.14.14.2">cultural event</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.15.15">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.15.15.1">Types of games</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.15.15.2">Types of flowers</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.16.16">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.16.16.1">family member</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.16.16.2">recreation places</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.17.17">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.17.17.1">Types of musical compositions</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.17.17.2">profession</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.18.18">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.18.18.1">Types of classes</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.18.18.2">holiday</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.19.19">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.19.19.1">company names</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.19.19.2">Types of teacher</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.20.20">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.20.20.1">restaurant name</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.20.20.2">cultural landmark</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.21.21">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.21.21.1">Mythical character</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.21.21.2">online shopping platforms</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.22.22">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.22.22.1">Types of entertainment places</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.22.22.2">cultural dance style</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.23.23">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.23.23.1">Government body</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.23.23.2">Types of scents</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.24.24">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.24.24.1">Cultural songs</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.24.24.2">school name</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.25.25">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.25.25.1">common places</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.25.25.2">Types of tea</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.26.26">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.26.26.1">appliances</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.26.26.2">newspaper names</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.27.27">
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.27.27.1">religious place</td>
<td class="ltx_td ltx_align_center" id="Ax1.T1.2.27.27.2">Language</td>
</tr>
<tr class="ltx_tr" id="Ax1.T1.2.28.28">
<td class="ltx_td ltx_align_center ltx_border_b" id="Ax1.T1.2.28.28.1">school subject</td>
<td class="ltx_td ltx_border_b" id="Ax1.T1.2.28.28.2"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the cultural entities identified by GPT-40 during the dataset creation process.  These entities represent various cultural elements that were systematically replaced with placeholders in the GSM8K dataset questions to create culturally diverse variations for evaluating LLMs' mathematical reasoning abilities. The categories include person names, types of food, places, currency, jobs, and many more, reflecting a wide range of cultural aspects.
> <details>
> <summary>read the caption</summary>
> Table A1: Cultural Entities
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Ax2.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Ax2.T2.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="Ax2.T2.2.1.1.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T2.2.1.1.1.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T2.2.1.1.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T2.2.1.1.2.1" style="font-size:80%;">G8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T2.2.1.1.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T2.2.1.1.3.1" style="font-size:80%;">Hti</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T2.2.1.1.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T2.2.1.1.4.1" style="font-size:80%;">Mld</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T2.2.1.1.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T2.2.1.1.5.1" style="font-size:80%;">Pak</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T2.2.1.1.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T2.2.1.1.6.1" style="font-size:80%;">Sol</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T2.2.1.1.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T2.2.1.1.7.1" style="font-size:80%;">Som</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T2.2.1.1.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T2.2.1.1.8.1" style="font-size:80%;">Sur</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax2.T2.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.2.1.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.2.1.1.1" style="font-size:80%;">C3.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.2.1.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.2.1.2.1" style="font-size:80%;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.2.1.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.2.1.3.1" style="font-size:80%;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.2.1.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.2.1.4.1" style="font-size:80%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.2.1.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.2.1.5.1" style="font-size:80%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.2.1.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.2.1.6.1" style="font-size:80%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.2.1.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.2.1.7.1" style="font-size:80%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.2.1.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.2.1.8.1" style="font-size:80%;">0.94</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.3.2">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.3.2.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.3.2.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.3.2.2.1" style="font-size:80%;">(0.94-0.96)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.3.2.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.3.2.3.1" style="font-size:80%;">(0.93-0.96)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.3.2.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.3.2.4.1" style="font-size:80%;">(0.93-0.96)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.3.2.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.3.2.5.1" style="font-size:80%;">(0.92-0.95)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.3.2.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.3.2.6.1" style="font-size:80%;">(0.93-0.95)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.3.2.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.3.2.7.1" style="font-size:80%;">(0.93-0.95)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.3.2.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.3.2.8.1" style="font-size:80%;">(0.93-0.95)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.4.3.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.4.3.1.1" style="font-size:80%;">DSeek</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.4.3.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.4.3.2.1" style="font-size:80%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.4.3.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.4.3.3.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.4.3.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.4.3.4.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.4.3.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.4.3.5.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.4.3.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.4.3.6.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.4.3.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.4.3.7.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.4.3.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.4.3.8.1" style="font-size:80%;">0.90</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.5.4">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.5.4.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.5.4.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.5.4.2.1" style="font-size:80%;">(0.91-0.94)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.5.4.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.5.4.3.1" style="font-size:80%;">(0.90-0.93)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.5.4.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.5.4.4.1" style="font-size:80%;">(0.89-0.92)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.5.4.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.5.4.5.1" style="font-size:80%;">(0.88-0.92)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.5.4.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.5.4.6.1" style="font-size:80%;">(0.88-0.91)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.5.4.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.5.4.7.1" style="font-size:80%;">(0.89-0.92)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.5.4.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.5.4.8.1" style="font-size:80%;">(0.88-0.92)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.6.5.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.6.5.1.1" style="font-size:80%;">G2.0</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.6.5.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.6.5.2.1" style="font-size:80%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.6.5.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.6.5.3.1" style="font-size:80%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.6.5.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.6.5.4.1" style="font-size:80%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.6.5.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.6.5.5.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.6.5.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.6.5.6.1" style="font-size:80%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.6.5.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.6.5.7.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.6.5.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.6.5.8.1" style="font-size:80%;">0.91</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.7.6">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.7.6.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.7.6.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.7.6.2.1" style="font-size:80%;">(0.92-0.95)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.7.6.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.7.6.3.1" style="font-size:80%;">(0.90-0.93)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.7.6.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.7.6.4.1" style="font-size:80%;">(0.90-0.93)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.7.6.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.7.6.5.1" style="font-size:80%;">(0.89-0.92)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.7.6.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.7.6.6.1" style="font-size:80%;">(0.90-0.93)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.7.6.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.7.6.7.1" style="font-size:80%;">(0.89-0.93)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.7.6.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.7.6.8.1" style="font-size:80%;">(0.90-0.93)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.8.7.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.8.7.1.1" style="font-size:80%;">G1.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.8.7.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.8.7.2.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.8.7.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.8.7.3.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.8.7.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.8.7.4.1" style="font-size:80%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.8.7.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.8.7.5.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.8.7.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.8.7.6.1" style="font-size:80%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.8.7.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.8.7.7.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.8.7.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.8.7.8.1" style="font-size:80%;">0.81</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.9.8">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.9.8.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.9.8.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.9.8.2.1" style="font-size:80%;">(0.80-0.85)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.9.8.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.9.8.3.1" style="font-size:80%;">(0.78-0.82)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.9.8.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.9.8.4.1" style="font-size:80%;">(0.79-0.83)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.9.8.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.9.8.5.1" style="font-size:80%;">(0.78-0.83)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.9.8.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.9.8.6.1" style="font-size:80%;">(0.79-0.83)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.9.8.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.9.8.7.1" style="font-size:80%;">(0.78-0.83)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.9.8.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.9.8.8.1" style="font-size:80%;">(0.79-0.83)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.10.9.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.10.9.1.1" style="font-size:80%;">G27B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.10.9.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.10.9.2.1" style="font-size:80%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.10.9.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.10.9.3.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.10.9.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.10.9.4.1" style="font-size:80%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.10.9.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.10.9.5.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.10.9.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.10.9.6.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.10.9.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.10.9.7.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.10.9.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.10.9.8.1" style="font-size:80%;">0.83</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.11.10">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.11.10.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.11.10.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.11.10.2.1" style="font-size:80%;">(0.84-0.88)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.11.10.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.11.10.3.1" style="font-size:80%;">(0.82-0.86)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.11.10.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.11.10.4.1" style="font-size:80%;">(0.82-0.86)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.11.10.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.11.10.5.1" style="font-size:80%;">(0.81-0.86)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.11.10.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.11.10.6.1" style="font-size:80%;">(0.82-0.86)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.11.10.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.11.10.7.1" style="font-size:80%;">(0.82-0.86)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.11.10.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.11.10.8.1" style="font-size:80%;">(0.81-0.85)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.12.11.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.12.11.1.1" style="font-size:80%;">G9B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.12.11.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.12.11.2.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.12.11.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.12.11.3.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.12.11.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.12.11.4.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.12.11.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.12.11.5.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.12.11.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.12.11.6.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.12.11.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.12.11.7.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.12.11.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.12.11.8.1" style="font-size:80%;">0.80</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.13.12">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.13.12.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.13.12.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.13.12.2.1" style="font-size:80%;">(0.79-0.84)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.13.12.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.13.12.3.1" style="font-size:80%;">(0.78-0.82)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.13.12.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.13.12.4.1" style="font-size:80%;">(0.78-0.82)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.13.12.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.13.12.5.1" style="font-size:80%;">(0.78-0.82)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.13.12.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.13.12.6.1" style="font-size:80%;">(0.78-0.82)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.13.12.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.13.12.7.1" style="font-size:80%;">(0.77-0.82)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.13.12.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.13.12.8.1" style="font-size:80%;">(0.77-0.82)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.14.13.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.14.13.1.1" style="font-size:80%;">L70B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.14.13.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.14.13.2.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.14.13.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.14.13.3.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.14.13.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.14.13.4.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.14.13.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.14.13.5.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.14.13.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.14.13.6.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.14.13.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.14.13.7.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.14.13.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.14.13.8.1" style="font-size:80%;">0.88</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.15.14">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.15.14.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.15.14.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.15.14.2.1" style="font-size:80%;">(0.89-0.93)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.15.14.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.15.14.3.1" style="font-size:80%;">(0.87-0.90)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.15.14.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.15.14.4.1" style="font-size:80%;">(0.85-0.89)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.15.14.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.15.14.5.1" style="font-size:80%;">(0.86-0.89)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.15.14.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.15.14.6.1" style="font-size:80%;">(0.87-0.90)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.15.14.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.15.14.7.1" style="font-size:80%;">(0.86-0.90)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.15.14.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.15.14.8.1" style="font-size:80%;">(0.86-0.89)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.16.15.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.16.15.1.1" style="font-size:80%;">L8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.16.15.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.16.15.2.1" style="font-size:80%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.16.15.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.16.15.3.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.16.15.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.16.15.4.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.16.15.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.16.15.5.1" style="font-size:80%;">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.16.15.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.16.15.6.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.16.15.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.16.15.7.1" style="font-size:80%;">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.16.15.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.16.15.8.1" style="font-size:80%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.17.16">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.17.16.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.17.16.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.17.16.2.1" style="font-size:80%;">(0.61-0.67)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.17.16.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.17.16.3.1" style="font-size:80%;">(0.57-0.63)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.17.16.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.17.16.4.1" style="font-size:80%;">(0.57-0.63)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.17.16.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.17.16.5.1" style="font-size:80%;">(0.56-0.61)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.17.16.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.17.16.6.1" style="font-size:80%;">(0.58-0.63)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.17.16.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.17.16.7.1" style="font-size:80%;">(0.55-0.61)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.17.16.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.17.16.8.1" style="font-size:80%;">(0.57-0.62)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.18.17.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.18.17.1.1" style="font-size:80%;">P3M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.18.17.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.18.17.2.1" style="font-size:80%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.18.17.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.18.17.3.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.18.17.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.18.17.4.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.18.17.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.18.17.5.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.18.17.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.18.17.6.1" style="font-size:80%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.18.17.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.18.17.7.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.18.17.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.18.17.8.1" style="font-size:80%;">0.75</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.19.18">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.19.18.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.19.18.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.19.18.2.1" style="font-size:80%;">(0.75-0.79)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.19.18.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.19.18.3.1" style="font-size:80%;">(0.72-0.77)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.19.18.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.19.18.4.1" style="font-size:80%;">(0.72-0.77)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.19.18.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.19.18.5.1" style="font-size:80%;">(0.73-0.78)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.19.18.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.19.18.6.1" style="font-size:80%;">(0.68-0.73)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.19.18.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.19.18.7.1" style="font-size:80%;">(0.73-0.78)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.19.18.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.19.18.8.1" style="font-size:80%;">(0.72-0.77)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.20.19.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.20.19.1.1" style="font-size:80%;">P4</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.20.19.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.20.19.2.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.20.19.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.20.19.3.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.20.19.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.20.19.4.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.20.19.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.20.19.5.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.20.19.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.20.19.6.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.20.19.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.20.19.7.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.20.19.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.20.19.8.1" style="font-size:80%;">0.89</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.21.20">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.21.20.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.21.20.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.21.20.2.1" style="font-size:80%;">(0.89-0.92)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.21.20.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.21.20.3.1" style="font-size:80%;">(0.88-0.91)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.21.20.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.21.20.4.1" style="font-size:80%;">(0.87-0.91)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.21.20.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.21.20.5.1" style="font-size:80%;">(0.88-0.91)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.21.20.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.21.20.6.1" style="font-size:80%;">(0.87-0.90)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.21.20.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.21.20.7.1" style="font-size:80%;">(0.86-0.90)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.21.20.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.21.20.8.1" style="font-size:80%;">(0.87-0.91)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.22.21.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.22.21.1.1" style="font-size:80%;">M2411</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.22.21.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.22.21.2.1" style="font-size:80%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.22.21.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.22.21.3.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.22.21.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.22.21.4.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.22.21.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.22.21.5.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.22.21.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.22.21.6.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.22.21.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.22.21.7.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.22.21.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.22.21.8.1" style="font-size:80%;">0.89</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.23.22">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.23.22.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.23.22.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.23.22.2.1" style="font-size:80%;">(0.91-0.94)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.23.22.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.23.22.3.1" style="font-size:80%;">(0.88-0.91)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.23.22.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.23.22.4.1" style="font-size:80%;">(0.89-0.92)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.23.22.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.23.22.5.1" style="font-size:80%;">(0.86-0.90)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.23.22.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.23.22.6.1" style="font-size:80%;">(0.88-0.91)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.23.22.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.23.22.7.1" style="font-size:80%;">(0.86-0.89)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.23.22.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.23.22.8.1" style="font-size:80%;">(0.87-0.91)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.24.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.24.23.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.24.23.1.1" style="font-size:80%;">MSaba</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.24.23.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.24.23.2.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.24.23.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.24.23.3.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.24.23.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.24.23.4.1" style="font-size:80%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.24.23.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.24.23.5.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.24.23.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.24.23.6.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.24.23.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.24.23.7.1" style="font-size:80%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.24.23.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.24.23.8.1" style="font-size:80%;">0.86</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.25.24">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.25.24.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.25.24.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.25.24.2.1" style="font-size:80%;">(0.86-0.89)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.25.24.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.25.24.3.1" style="font-size:80%;">(0.85-0.89)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.25.24.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.25.24.4.1" style="font-size:80%;">(0.84-0.88)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.25.24.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.25.24.5.1" style="font-size:80%;">(0.85-0.89)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.25.24.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.25.24.6.1" style="font-size:80%;">(0.85-0.88)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.25.24.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.25.24.7.1" style="font-size:80%;">(0.84-0.88)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.25.24.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.25.24.8.1" style="font-size:80%;">(0.84-0.88)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.26.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.26.25.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.26.25.1.1" style="font-size:80%;">G4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.26.25.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.26.25.2.1" style="font-size:80%;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.26.25.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.26.25.3.1" style="font-size:80%;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.26.25.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.26.25.4.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.26.25.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.26.25.5.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.26.25.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.26.25.6.1" style="font-size:80%;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.26.25.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.26.25.7.1" style="font-size:80%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.26.25.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.26.25.8.1" style="font-size:80%;">0.92</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.27.26">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T2.2.27.26.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.27.26.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.27.26.2.1" style="font-size:80%;">(0.92-0.95)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.27.26.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.27.26.3.1" style="font-size:80%;">(0.91-0.94)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.27.26.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.27.26.4.1" style="font-size:80%;">(0.90-0.93)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.27.26.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.27.26.5.1" style="font-size:80%;">(0.90-0.93)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.27.26.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.27.26.6.1" style="font-size:80%;">(0.91-0.94)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.27.26.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.27.26.7.1" style="font-size:80%;">(0.91-0.94)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T2.2.27.26.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.27.26.8.1" style="font-size:80%;">(0.90-0.93)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.28.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T2.2.28.27.1" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.28.27.1.1" style="font-size:80%;">Q32B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.28.27.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.28.27.2.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.28.27.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.28.27.3.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.28.27.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.28.27.4.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.28.27.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.28.27.5.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.28.27.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.28.27.6.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.28.27.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.28.27.7.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T2.2.28.27.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.28.27.8.1" style="font-size:80%;">0.89</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T2.2.29.28">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="Ax2.T2.2.29.28.1" style="padding:-0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T2.2.29.28.2" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.29.28.2.1" style="font-size:80%;">(0.89-0.92)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T2.2.29.28.3" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.29.28.3.1" style="font-size:80%;">(0.87-0.91)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T2.2.29.28.4" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.29.28.4.1" style="font-size:80%;">(0.88-0.91)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T2.2.29.28.5" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.29.28.5.1" style="font-size:80%;">(0.86-0.90)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T2.2.29.28.6" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.29.28.6.1" style="font-size:80%;">(0.86-0.90)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T2.2.29.28.7" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.29.28.7.1" style="font-size:80%;">(0.88-0.91)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T2.2.29.28.8" style="padding:-0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T2.2.29.28.8.1" style="font-size:80%;">(0.87-0.90)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy scores of fourteen different large language models (LLMs) across seven datasets.  The seven datasets consist of one original benchmark dataset (GSM8K) and six culturally adapted versions of that dataset, one for each of six selected continents (Haiti, Moldova, Pakistan, Solomon Islands, Somalia, and Suriname). The accuracy scores represent the percentage of correctly answered questions by each LLM for each dataset, considering only answers that are consistently correct across three attempts per question. The confidence intervals (CIs) provide a measure of uncertainty around the accuracy scores.  The abbreviations used for LLMs and datasets are explained in the caption. This allows for the comparison of LLM performance in standard mathematical reasoning tasks versus tasks that require adapting to different cultural contexts.
> <details>
> <summary>read the caption</summary>
> Table A2: Accuracy Scores Across Models and Datasets. Values in parentheses indicate confidence intervals (CI). C3.5 = anthropic_claude-3.5-sonnet, DSeek = deepseek_deepseek-v3, G2.0 = google_gemini-2.0-flash-001, G1.5 = google_gemini-flash-1.5-8b, G27B = google_gemma-2-27b-it, G9B = google_gemma-2-9b-it, L70B = meta-llama_llama-3.1-70b-instruct, L8B = meta-llama_llama-3.1-8b-instruct, P3M = microsoft_phi-3-medium-128k-instruct, P4 = microsoft_phi-4, M2411 = mistralai_mistral-large-2411, MSaba = Mistral Saba, G4o = chatgpt-4o-latest, Q32B = qwen2.5-32b-instruct. G8K = GSM8K, Hti = HaiGSM8K, Mld = MolGSM8K, Pak = PakGSM8K, Sol = SolIGSM8K, Som = SomGSM8K, Sur = SurGSM8K.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Ax2.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Ax2.T3.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="Ax2.T3.2.1.1.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T3.2.1.1.1.1" style="font-size:70%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T3.2.1.1.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T3.2.1.1.2.1" style="font-size:70%;">Hti Gap</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T3.2.1.1.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T3.2.1.1.3.1" style="font-size:70%;">Mld Gap</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T3.2.1.1.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T3.2.1.1.4.1" style="font-size:70%;">Pak Gap</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T3.2.1.1.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T3.2.1.1.5.1" style="font-size:70%;">Sol Gap</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T3.2.1.1.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T3.2.1.1.6.1" style="font-size:70%;">Som Gap</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T3.2.1.1.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T3.2.1.1.7.1" style="font-size:70%;">Sur Gap</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax2.T3.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T3.2.2.1.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.2.1.1.1" style="font-size:70%;">Claude 3.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T3.2.2.1.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.2.1.2.1" style="font-size:70%;">0.0025</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T3.2.2.1.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.2.1.3.1" style="font-size:70%;">0.0042</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T3.2.2.1.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.2.1.4.1" style="font-size:70%;">0.0109</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T3.2.2.1.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.2.1.5.1" style="font-size:70%;">0.0083</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T3.2.2.1.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.2.1.6.1" style="font-size:70%;">0.0083</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T3.2.2.1.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.2.1.7.1" style="font-size:70%;">0.0067</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.3.2.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.3.2.1.1" style="font-size:70%;">DeepSeek</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.3.2.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.3.2.2.1" style="font-size:70%;">0.0117</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.3.2.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.3.2.3.1" style="font-size:70%;">0.0209</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.3.2.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.3.2.4.1" style="font-size:70%;">0.0225</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.3.2.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.3.2.5.1" style="font-size:70%;">0.0301</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.3.2.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.3.2.6.1" style="font-size:70%;">0.0217</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.3.2.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.3.2.7.1" style="font-size:70%;">0.0242</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.4.3.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.4.3.1.1" style="font-size:70%;">Gemini 2.0</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.4.3.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.4.3.2.1" style="font-size:70%;">0.0184</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.4.3.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.4.3.3.1" style="font-size:70%;">0.0192</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.4.3.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.4.3.4.1" style="font-size:70%;">0.0292</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.4.3.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.4.3.5.1" style="font-size:70%;">0.0200</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.4.3.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.4.3.6.1" style="font-size:70%;">0.0275</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.4.3.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.4.3.7.1" style="font-size:70%;">0.0242</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.5.4.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.5.4.1.1" style="font-size:70%;">Gemini 1.5</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.5.4.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.5.4.2.1" style="font-size:70%;">0.0275</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.5.4.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.5.4.3.1" style="font-size:70%;">0.0175</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.5.4.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.5.4.4.1" style="font-size:70%;">0.0225</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.5.4.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.5.4.5.1" style="font-size:70%;">0.0167</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.5.4.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.5.4.6.1" style="font-size:70%;">0.0217</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.5.4.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.5.4.7.1" style="font-size:70%;">0.0175</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.6.5.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.6.5.1.1" style="font-size:70%;">Gemma 27B</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.6.5.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.6.5.2.1" style="font-size:70%;">0.0242</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.6.5.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.6.5.3.1" style="font-size:70%;">0.0184</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.6.5.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.6.5.4.1" style="font-size:70%;">0.0275</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.6.5.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.6.5.5.1" style="font-size:70%;">0.0250</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.6.5.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.6.5.6.1" style="font-size:70%;">0.0259</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.6.5.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.6.5.7.1" style="font-size:70%;">0.0317</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.7.6.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.7.6.1.1" style="font-size:70%;">Gemma 9B</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.7.6.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.7.6.2.1" style="font-size:70%;">0.0142</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.7.6.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.7.6.3.1" style="font-size:70%;">0.0150</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.7.6.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.7.6.4.1" style="font-size:70%;">0.0159</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.7.6.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.7.6.5.1" style="font-size:70%;">0.0142</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.7.6.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.7.6.6.1" style="font-size:70%;">0.0209</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.7.6.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.7.6.7.1" style="font-size:70%;">0.0209</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.8.7.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.8.7.1.1" style="font-size:70%;">LLaMA 70B</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.8.7.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.8.7.2.1" style="font-size:70%;">0.0250</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.8.7.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.8.7.3.1" style="font-size:70%;">0.0376</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.8.7.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.8.7.4.1" style="font-size:70%;">0.0359</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.8.7.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.8.7.5.1" style="font-size:70%;">0.0250</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.8.7.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.8.7.6.1" style="font-size:70%;">0.0317</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.8.7.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.8.7.7.1" style="font-size:70%;">0.0342</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.9.8.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.9.8.1.1" style="font-size:70%;">LLaMA 8B</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.9.8.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.9.8.2.1" style="font-size:70%;">0.0401</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.9.8.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.9.8.3.1" style="font-size:70%;">0.0376</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.9.8.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.9.8.4.1" style="font-size:70%;">0.0551</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.9.8.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.9.8.5.1" style="font-size:70%;">0.0351</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.9.8.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.9.8.6.1" style="font-size:70%;">0.0593</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.9.8.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.9.8.7.1" style="font-size:70%;">0.0426</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.10.9.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.10.9.1.1" style="font-size:70%;">Phi-3 Medium</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.10.9.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.10.9.2.1" style="font-size:70%;">0.0234</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.10.9.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.10.9.3.1" style="font-size:70%;">0.0217</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.10.9.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.10.9.4.1" style="font-size:70%;">0.0167</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.10.9.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.10.9.5.1" style="font-size:70%;">0.0626</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.10.9.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.10.9.6.1" style="font-size:70%;">0.0175</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.10.9.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.10.9.7.1" style="font-size:70%;">0.0234</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.11.10.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.11.10.1.1" style="font-size:70%;">Phi-4</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.11.10.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.11.10.2.1" style="font-size:70%;">0.0142</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.11.10.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.11.10.3.1" style="font-size:70%;">0.0175</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.11.10.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.11.10.4.1" style="font-size:70%;">0.0159</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.11.10.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.11.10.5.1" style="font-size:70%;">0.0242</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.11.10.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.11.10.6.1" style="font-size:70%;">0.0309</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.11.10.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.11.10.7.1" style="font-size:70%;">0.0200</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.12.11.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.12.11.1.1" style="font-size:70%;">Mistral Large</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.12.11.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.12.11.2.1" style="font-size:70%;">0.0267</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.12.11.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.12.11.3.1" style="font-size:70%;">0.0167</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.12.11.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.12.11.4.1" style="font-size:70%;">0.0417</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.12.11.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.12.11.5.1" style="font-size:70%;">0.0259</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.12.11.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.12.11.6.1" style="font-size:70%;">0.0459</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.12.11.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.12.11.7.1" style="font-size:70%;">0.0326</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.13.12.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.13.12.1.1" style="font-size:70%;">Mistral Saba</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.13.12.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.13.12.2.1" style="font-size:70%;">0.0033</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.13.12.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.13.12.3.1" style="font-size:70%;">0.0134</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.13.12.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.13.12.4.1" style="font-size:70%;">0.0025</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.13.12.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.13.12.5.1" style="font-size:70%;">0.0083</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.13.12.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.13.12.6.1" style="font-size:70%;">0.0117</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.13.12.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.13.12.7.1" style="font-size:70%;">0.0117</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T3.2.14.13.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.14.13.1.1" style="font-size:70%;">ChatGPT-4o</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.14.13.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.14.13.2.1" style="font-size:70%;">0.0067</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.14.13.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.14.13.3.1" style="font-size:70%;">0.0184</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.14.13.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.14.13.4.1" style="font-size:70%;">0.0200</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.14.13.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.14.13.5.1" style="font-size:70%;">0.0075</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.14.13.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.14.13.6.1" style="font-size:70%;">0.0109</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T3.2.14.13.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.14.13.7.1" style="font-size:70%;">0.0142</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T3.2.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="Ax2.T3.2.15.14.1" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.15.14.1.1" style="font-size:70%;">Qwen 32B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T3.2.15.14.2" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.15.14.2.1" style="font-size:70%;">0.0142</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T3.2.15.14.3" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.15.14.3.1" style="font-size:70%;">0.0109</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T3.2.15.14.4" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.15.14.4.1" style="font-size:70%;">0.0267</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T3.2.15.14.5" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.15.14.5.1" style="font-size:70%;">0.0250</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T3.2.15.14.6" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.15.14.6.1" style="font-size:70%;">0.0134</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T3.2.15.14.7" style="padding:0.7pt 4.0pt;"><span class="ltx_text" id="Ax2.T3.2.15.14.7.1" style="font-size:70%;">0.0192</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance gap between the original GSM8K dataset and its six culturally adapted versions for 14 different LLMs.  The performance gap is calculated by subtracting the accuracy of each model on a culturally adapted version from its accuracy on the original GSM8K.  A larger gap indicates that the model's performance is more significantly affected by cultural adaptation. The table shows the gap for each model across six different datasets (Haiti, Moldova, Pakistan, Solomon Islands, Somalia, Suriname) and is useful for comparing how different LLMs handle cultural variations in mathematical reasoning problems.
> <details>
> <summary>read the caption</summary>
> Table A3: Performance Gap Analysis Across Datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Ax2.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Ax2.T4.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="Ax2.T4.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T4.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.1.1.2.1">Hti</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T4.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.1.1.3.1">Mld</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T4.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.1.1.4.1">Pak</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T4.2.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.1.1.5.1">Sol</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T4.2.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.1.1.6.1">Som</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T4.2.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.1.1.7.1">Sur</span></th>
</tr>
<tr class="ltx_tr" id="Ax2.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="Ax2.T4.2.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.2.2.1.1">Count</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Ax2.T4.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">14</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Ax2.T4.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">14</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Ax2.T4.2.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">14</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Ax2.T4.2.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">14</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Ax2.T4.2.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">14</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Ax2.T4.2.2.2.7" style="padding-top:1pt;padding-bottom:1pt;">14</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax2.T4.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T4.2.3.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.3.1.1.1">Mean</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.3.1.2" style="padding-top:1pt;padding-bottom:1pt;">0.0180</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.3.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.0192</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.3.1.4" style="padding-top:1pt;padding-bottom:1pt;">0.0245</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.3.1.5" style="padding-top:1pt;padding-bottom:1pt;">0.0234</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.3.1.6" style="padding-top:1pt;padding-bottom:1pt;">0.0248</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.3.1.7" style="padding-top:1pt;padding-bottom:1pt;">0.0231</td>
</tr>
<tr class="ltx_tr" id="Ax2.T4.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T4.2.4.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.4.2.1.1">Std</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.4.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.0105</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.4.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.0090</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.4.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.0133</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.4.2.5" style="padding-top:1pt;padding-bottom:1pt;">0.0141</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.4.2.6" style="padding-top:1pt;padding-bottom:1pt;">0.0141</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.4.2.7" style="padding-top:1pt;padding-bottom:1pt;">0.0096</td>
</tr>
<tr class="ltx_tr" id="Ax2.T4.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T4.2.5.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.5.3.1.1">Min</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.5.3.2" style="padding-top:1pt;padding-bottom:1pt;">0.0025</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.5.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.0042</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.5.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.0025</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.5.3.5" style="padding-top:1pt;padding-bottom:1pt;">0.0075</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.5.3.6" style="padding-top:1pt;padding-bottom:1pt;">0.0083</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.5.3.7" style="padding-top:1pt;padding-bottom:1pt;">0.0067</td>
</tr>
<tr class="ltx_tr" id="Ax2.T4.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T4.2.6.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.6.4.1.1">25%</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.6.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.0123</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.6.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.0154</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.6.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.0161</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.6.4.5" style="padding-top:1pt;padding-bottom:1pt;">0.0148</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.6.4.6" style="padding-top:1pt;padding-bottom:1pt;">0.0144</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.6.4.7" style="padding-top:1pt;padding-bottom:1pt;">0.0179</td>
</tr>
<tr class="ltx_tr" id="Ax2.T4.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T4.2.7.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.7.5.1.1">50% (Median)</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.7.5.2" style="padding-top:1pt;padding-bottom:1pt;">0.0163</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.7.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.0179</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.7.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.0225</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.7.5.5" style="padding-top:1pt;padding-bottom:1pt;">0.0246</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.7.5.6" style="padding-top:1pt;padding-bottom:1pt;">0.0217</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.7.5.7" style="padding-top:1pt;padding-bottom:1pt;">0.0221</td>
</tr>
<tr class="ltx_tr" id="Ax2.T4.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax2.T4.2.8.6.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.8.6.1.1">75%</span></th>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.8.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.0248</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.8.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.0205</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.8.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.0288</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.8.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.0257</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.8.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.0301</td>
<td class="ltx_td ltx_align_center" id="Ax2.T4.2.8.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.0298</td>
</tr>
<tr class="ltx_tr" id="Ax2.T4.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="Ax2.T4.2.9.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T4.2.9.7.1.1">Max</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T4.2.9.7.2" style="padding-top:1pt;padding-bottom:1pt;">0.0401</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T4.2.9.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.0376</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T4.2.9.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.0551</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T4.2.9.7.5" style="padding-top:1pt;padding-bottom:1pt;">0.0626</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T4.2.9.7.6" style="padding-top:1pt;padding-bottom:1pt;">0.0593</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T4.2.9.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.0426</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A4 presents descriptive statistics of accuracy drops across different models for six datasets.  The values represent the magnitude of performance drops when comparing each model's accuracy on the culturally adapted datasets against the original GSM8K dataset.  'Count' indicates the number of models evaluated for each dataset.  'Mean', 'Std', 'Min', '25%', '50% (Median)', and '75%' show the central tendency, variability, and spread of the accuracy drops.  'Max' shows the largest observed accuracy drop.
> <details>
> <summary>read the caption</summary>
> Table A4: Descriptive Statistics of accuracy drops across models
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Ax2.T5.61">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Ax2.T5.61.62.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="Ax2.T5.61.62.1.1" style="padding:0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T5.61.62.1.1.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T5.61.62.1.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T5.61.62.1.2.1" style="font-size:80%;">Hti</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T5.61.62.1.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T5.61.62.1.3.1" style="font-size:80%;">Mld</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T5.61.62.1.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T5.61.62.1.4.1" style="font-size:80%;">Pak</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T5.61.62.1.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T5.61.62.1.5.1" style="font-size:80%;">Sol</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T5.61.62.1.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T5.61.62.1.6.1" style="font-size:80%;">Som</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="Ax2.T5.61.62.1.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="Ax2.T5.61.62.1.7.1" style="font-size:80%;">Sur</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax2.T5.61.63.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.61.63.1.1" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.63.1.1.1" style="font-size:80%;">Mistral Saba</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.61.63.1.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.63.1.2.1" style="font-size:80%;">0.74933</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.61.63.1.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.63.1.3.1" style="font-size:80%;">0.12929</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.61.63.1.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.63.1.4.1" style="font-size:80%;">0.83585</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.61.63.1.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.63.1.5.1" style="font-size:80%;">0.36820</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.61.63.1.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.63.1.6.1" style="font-size:80%;">0.19335</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.61.63.1.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.63.1.7.1" style="font-size:80%;">0.17498</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.64.2">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.64.2.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.64.2.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.64.2.2.1" style="font-size:80%;">(46,42)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.64.2.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.64.2.3.1" style="font-size:80%;">(57,41)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.64.2.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.64.2.4.1" style="font-size:80%;">(48,45)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.64.2.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.64.2.5.1" style="font-size:80%;">(55,45)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.64.2.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.64.2.6.1" style="font-size:80%;">(57,43)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.64.2.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.64.2.7.1" style="font-size:80%;">(53,39)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.6.6.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.6.6.7.1" style="font-size:80%;">Gem Flash 1.5-8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.1.1.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.1.1.1.1" style="font-size:80%;">0.00293</span><sup class="ltx_sup" id="Ax2.T5.1.1.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.1.1.1.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.2.2.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.2.2.2.1" style="font-size:80%;">0.06171</span><sup class="ltx_sup" id="Ax2.T5.2.2.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.2.2.2.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.3.3.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.3.3.3.1" style="font-size:80%;">0.01773</span><sup class="ltx_sup" id="Ax2.T5.3.3.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.3.3.3.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.4.4.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.4.4.4.1" style="font-size:80%;">0.08241</span><sup class="ltx_sup" id="Ax2.T5.4.4.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.4.4.4.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.5.5.5" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.5.5.5.1" style="font-size:80%;">0.01988</span><sup class="ltx_sup" id="Ax2.T5.5.5.5.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.5.5.5.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.6.6.6" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.6.6.6.1" style="font-size:80%;">0.06399</span><sup class="ltx_sup" id="Ax2.T5.6.6.6.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.6.6.6.2.1" style="font-size:80%;">∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.65.3">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.65.3.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.65.3.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.65.3.2.1" style="font-size:80%;">(75,42)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.65.3.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.65.3.3.1" style="font-size:80%;">(68,47)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.65.3.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.65.3.4.1" style="font-size:80%;">(74,47)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.65.3.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.65.3.5.1" style="font-size:80%;">(70,50)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.65.3.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.65.3.6.1" style="font-size:80%;">(71,45)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.65.3.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.65.3.7.1" style="font-size:80%;">(69,48)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.12.12.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.12.12.7.1" style="font-size:80%;">Gemma 2-27B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.7.7.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.7.7.1.1" style="font-size:80%;">0.00346</span><sup class="ltx_sup" id="Ax2.T5.7.7.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.7.7.1.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.8.8.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.8.8.2.1" style="font-size:80%;">0.01832</span><sup class="ltx_sup" id="Ax2.T5.8.8.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.8.8.2.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.9.9.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.9.9.3.1" style="font-size:80%;">0.00119</span><sup class="ltx_sup" id="Ax2.T5.9.9.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.9.9.3.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.10.10.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.10.10.4.1" style="font-size:80%;">0.00288</span><sup class="ltx_sup" id="Ax2.T5.10.10.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.10.10.4.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.11.11.5" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.11.11.5.1" style="font-size:80%;">0.00152</span><sup class="ltx_sup" id="Ax2.T5.11.11.5.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.11.11.5.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.12.12.6" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.12.12.6.1" style="font-size:80%;">0.00021</span><sup class="ltx_sup" id="Ax2.T5.12.12.6.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.12.12.6.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.66.4">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.66.4.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.66.4.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.66.4.2.1" style="font-size:80%;">(61,32)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.66.4.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.66.4.3.1" style="font-size:80%;">(51,29)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.66.4.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.66.4.4.1" style="font-size:80%;">(66,33)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.66.4.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.66.4.5.1" style="font-size:80%;">(63,33)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.66.4.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.66.4.6.1" style="font-size:80%;">(61,30)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.66.4.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.66.4.7.1" style="font-size:80%;">(70,32)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.18.18.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.18.18.7.1" style="font-size:80%;">LLaMA 3.1-70B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.13.13.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.13.13.1.1" style="font-size:80%;">0.00231</span><sup class="ltx_sup" id="Ax2.T5.13.13.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.13.13.1.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.14.14.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.14.14.2.1" style="font-size:80%;">0.00001</span><sup class="ltx_sup" id="Ax2.T5.14.14.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.14.14.2.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.15.15.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.15.15.3.1" style="font-size:80%;">0.00003</span><sup class="ltx_sup" id="Ax2.T5.15.15.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.15.15.3.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.16.16.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.16.16.4.1" style="font-size:80%;">0.00423</span><sup class="ltx_sup" id="Ax2.T5.16.16.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.16.16.4.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.17.17.5" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.17.17.5.1" style="font-size:80%;">0.00018</span><sup class="ltx_sup" id="Ax2.T5.17.17.5.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.17.17.5.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.18.18.6" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.18.18.6.1" style="font-size:80%;">0.00007</span><sup class="ltx_sup" id="Ax2.T5.18.18.6.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.18.18.6.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.67.5">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.67.5.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.67.5.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.67.5.2.1" style="font-size:80%;">(61,31)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.67.5.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.67.5.3.1" style="font-size:80%;">(75,30)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.67.5.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.67.5.4.1" style="font-size:80%;">(73,30)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.67.5.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.67.5.5.1" style="font-size:80%;">(67,37)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.67.5.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.67.5.6.1" style="font-size:80%;">(69,31)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.67.5.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.67.5.7.1" style="font-size:80%;">(72,31)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.20.20.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.20.20.3.1" style="font-size:80%;">Gemma 2-9B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.20.20.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.20.20.4.1" style="font-size:80%;">0.16826</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.20.20.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.20.20.5.1" style="font-size:80%;">0.10461</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.20.20.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.20.20.6.1" style="font-size:80%;">0.10420</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.20.20.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.20.20.7.1" style="font-size:80%;">0.15212</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.19.19.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.19.19.1.1" style="font-size:80%;">0.04588</span><sup class="ltx_sup" id="Ax2.T5.19.19.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.19.19.1.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.20.20.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.20.20.2.1" style="font-size:80%;">0.04140</span><sup class="ltx_sup" id="Ax2.T5.20.20.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.20.20.2.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.68.6">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.68.6.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.68.6.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.68.6.2.1" style="font-size:80%;">(76,59)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.68.6.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.68.6.3.1" style="font-size:80%;">(64,46)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.68.6.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.68.6.4.1" style="font-size:80%;">(71,52)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.68.6.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.68.6.5.1" style="font-size:80%;">(71,54)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.68.6.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.68.6.6.1" style="font-size:80%;">(85,60)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.68.6.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.68.6.7.1" style="font-size:80%;">(82,57)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.26.26.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.26.26.7.1" style="font-size:80%;">Phi-4</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.21.21.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.21.21.1.1" style="font-size:80%;">0.06037</span><sup class="ltx_sup" id="Ax2.T5.21.21.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.21.21.1.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.22.22.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.22.22.2.1" style="font-size:80%;">0.02203</span><sup class="ltx_sup" id="Ax2.T5.22.22.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.22.22.2.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.23.23.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.23.23.3.1" style="font-size:80%;">0.05025</span><sup class="ltx_sup" id="Ax2.T5.23.23.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.23.23.3.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.24.24.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.24.24.4.1" style="font-size:80%;">0.00169</span><sup class="ltx_sup" id="Ax2.T5.24.24.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.24.24.4.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.25.25.5" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.25.25.5.1" style="font-size:80%;">0.00016</span><sup class="ltx_sup" id="Ax2.T5.25.25.5.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.25.25.5.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.26.26.6" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.26.26.6.1" style="font-size:80%;">0.00631</span><sup class="ltx_sup" id="Ax2.T5.26.26.6.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.26.26.6.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.69.7">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.69.7.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.69.7.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.69.7.2.1" style="font-size:80%;">(45,28)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.69.7.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.69.7.3.1" style="font-size:80%;">(49,28)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.69.7.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.69.7.4.1" style="font-size:80%;">(52,33)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.69.7.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.69.7.5.1" style="font-size:80%;">(55,26)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.69.7.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.69.7.6.1" style="font-size:80%;">(65,28)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.69.7.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.69.7.7.1" style="font-size:80%;">(48,24)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.31.31.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.31.31.6.1" style="font-size:80%;">DeepSeek</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.31.31.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.31.31.7.1" style="font-size:80%;">0.14564</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.27.27.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.27.27.1.1" style="font-size:80%;">0.00804</span><sup class="ltx_sup" id="Ax2.T5.27.27.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.27.27.1.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.28.28.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.28.28.2.1" style="font-size:80%;">0.00280</span><sup class="ltx_sup" id="Ax2.T5.28.28.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.28.28.2.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.29.29.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.29.29.3.1" style="font-size:80%;">0.00016</span><sup class="ltx_sup" id="Ax2.T5.29.29.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.29.29.3.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.30.30.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.30.30.4.1" style="font-size:80%;">0.00734</span><sup class="ltx_sup" id="Ax2.T5.30.30.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.30.30.4.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.31.31.5" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.31.31.5.1" style="font-size:80%;">0.00169</span><sup class="ltx_sup" id="Ax2.T5.31.31.5.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.31.31.5.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.70.8">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.70.8.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.70.8.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.70.8.2.1" style="font-size:80%;">(47,33)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.70.8.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.70.8.3.1" style="font-size:80%;">(54,29)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.70.8.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.70.8.4.1" style="font-size:80%;">(52,25)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.70.8.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.70.8.5.1" style="font-size:80%;">(62,26)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.70.8.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.70.8.6.1" style="font-size:80%;">(57,31)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.70.8.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.70.8.7.1" style="font-size:80%;">(55,26)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.37.37.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.37.37.7.1" style="font-size:80%;">Gem Flash 2.0</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.32.32.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.32.32.1.1" style="font-size:80%;">0.00094</span><sup class="ltx_sup" id="Ax2.T5.32.32.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.32.32.1.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.33.33.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.33.33.2.1" style="font-size:80%;">0.00061</span><sup class="ltx_sup" id="Ax2.T5.33.33.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.33.33.2.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.34.34.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.34.34.3.1" style="font-size:80%;">0.00000</span><sup class="ltx_sup" id="Ax2.T5.34.34.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.34.34.3.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.35.35.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.35.35.4.1" style="font-size:80%;">0.00027</span><sup class="ltx_sup" id="Ax2.T5.35.35.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.35.35.4.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.36.36.5" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.36.36.5.1" style="font-size:80%;">0.00000</span><sup class="ltx_sup" id="Ax2.T5.36.36.5.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.36.36.5.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.37.37.6" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.37.37.6.1" style="font-size:80%;">0.00002</span><sup class="ltx_sup" id="Ax2.T5.37.37.6.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.37.37.6.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.71.9">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.71.9.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.71.9.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.71.9.2.1" style="font-size:80%;">(32,10)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.71.9.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.71.9.3.1" style="font-size:80%;">(33,10)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.71.9.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.71.9.4.1" style="font-size:80%;">(46,11)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.71.9.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.71.9.5.1" style="font-size:80%;">(33,9)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.71.9.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.71.9.6.1" style="font-size:80%;">(41,8)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.71.9.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.71.9.7.1" style="font-size:80%;">(38,9)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.40.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.40.40.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.40.40.4.1" style="font-size:80%;">Phi-3 Medium</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.38.38.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.38.38.1.1" style="font-size:80%;">0.08496</span><sup class="ltx_sup" id="Ax2.T5.38.38.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.38.38.1.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.40.40.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.40.40.5.1" style="font-size:80%;">0.10346</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.40.40.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.40.40.6.1" style="font-size:80%;">0.20416</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.39.39.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.39.39.2.1" style="font-size:80%;">0.00000</span><sup class="ltx_sup" id="Ax2.T5.39.39.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.39.39.2.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.40.40.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.40.40.7.1" style="font-size:80%;">0.18424</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.40.40.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.40.40.3.1" style="font-size:80%;">0.07479</span><sup class="ltx_sup" id="Ax2.T5.40.40.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.40.40.3.2.1" style="font-size:80%;">∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.72.10">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.72.10.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.72.10.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.72.10.2.1" style="font-size:80%;">(137,109)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.72.10.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.72.10.3.1" style="font-size:80%;">(131,105)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.72.10.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.72.10.4.1" style="font-size:80%;">(122,102)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.72.10.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.72.10.5.1" style="font-size:80%;">(161,86)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.72.10.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.72.10.6.1" style="font-size:80%;">(124,103)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.72.10.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.72.10.7.1" style="font-size:80%;">(129,101)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.46.46">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.46.46.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.46.46.7.1" style="font-size:80%;">Mistral Large</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.41.41.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.41.41.1.1" style="font-size:80%;">0.00031</span><sup class="ltx_sup" id="Ax2.T5.41.41.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.41.41.1.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.42.42.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.42.42.2.1" style="font-size:80%;">0.03079</span><sup class="ltx_sup" id="Ax2.T5.42.42.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.42.42.2.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.43.43.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.43.43.3.1" style="font-size:80%;">0.00000</span><sup class="ltx_sup" id="Ax2.T5.43.43.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.43.43.3.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.44.44.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.44.44.4.1" style="font-size:80%;">0.00117</span><sup class="ltx_sup" id="Ax2.T5.44.44.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.44.44.4.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.45.45.5" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.45.45.5.1" style="font-size:80%;">0.00000</span><sup class="ltx_sup" id="Ax2.T5.45.45.5.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.45.45.5.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.46.46.6" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.46.46.6.1" style="font-size:80%;">0.00002</span><sup class="ltx_sup" id="Ax2.T5.46.46.6.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.46.46.6.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.73.11">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.73.11.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.73.11.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.73.11.2.1" style="font-size:80%;">(54,22)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.73.11.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.73.11.3.1" style="font-size:80%;">(49,29)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.73.11.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.73.11.4.1" style="font-size:80%;">(66,16)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.73.11.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.73.11.5.1" style="font-size:80%;">(59,28)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.73.11.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.73.11.6.1" style="font-size:80%;">(75,20)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.73.11.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.73.11.7.1" style="font-size:80%;">(61,22)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.49.49">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.49.49.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.49.49.4.1" style="font-size:80%;">ChatGPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.49.49.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.49.49.5.1" style="font-size:80%;">0.33175</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.47.47.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.47.47.1.1" style="font-size:80%;">0.00535</span><sup class="ltx_sup" id="Ax2.T5.47.47.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.47.47.1.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.48.48.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.48.48.2.1" style="font-size:80%;">0.00427</span><sup class="ltx_sup" id="Ax2.T5.48.48.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.48.48.2.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.49.49.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.49.49.6.1" style="font-size:80%;">0.27168</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.49.49.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.49.49.7.1" style="font-size:80%;">0.11116</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.49.49.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.49.49.3.1" style="font-size:80%;">0.02701</span><sup class="ltx_sup" id="Ax2.T5.49.49.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.49.49.3.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.74.12">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.74.12.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.74.12.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.74.12.2.1" style="font-size:80%;">(30,22)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.74.12.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.74.12.3.1" style="font-size:80%;">(40,18)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.74.12.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.74.12.4.1" style="font-size:80%;">(45,21)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.74.12.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.74.12.5.1" style="font-size:80%;">(31,22)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.74.12.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.74.12.6.1" style="font-size:80%;">(35,22)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.74.12.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.74.12.7.1" style="font-size:80%;">(35,18)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.53.53">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.53.53.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.53.53.5.1" style="font-size:80%;">Qwen 2.5-32B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.50.50.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.50.50.1.1" style="font-size:80%;">0.06755</span><sup class="ltx_sup" id="Ax2.T5.50.50.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.50.50.1.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.53.53.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.53.53.6.1" style="font-size:80%;">0.19276</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.51.51.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.51.51.2.1" style="font-size:80%;">0.00111</span><sup class="ltx_sup" id="Ax2.T5.51.51.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.51.51.2.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.52.52.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.52.52.3.1" style="font-size:80%;">0.00161</span><sup class="ltx_sup" id="Ax2.T5.52.52.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.52.52.3.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.53.53.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.53.53.7.1" style="font-size:80%;">0.10523</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.53.53.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.53.53.4.1" style="font-size:80%;">0.02202</span><sup class="ltx_sup" id="Ax2.T5.53.53.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.53.53.4.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.75.13">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.75.13.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.75.13.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.75.13.2.1" style="font-size:80%;">(47,30)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.75.13.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.75.13.3.1" style="font-size:80%;">(49,36)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.75.13.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.75.13.4.1" style="font-size:80%;">(62,30)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.75.13.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.75.13.5.1" style="font-size:80%;">(58,28)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.75.13.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.75.13.6.1" style="font-size:80%;">(51,35)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.75.13.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.75.13.7.1" style="font-size:80%;">(58,35)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.55.55">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.55.55.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.55.55.3.1" style="font-size:80%;">Claude 3.5</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.55.55.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.55.55.4.1" style="font-size:80%;">0.74283</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.55.55.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.55.55.5.1" style="font-size:80%;">0.47313</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.54.54.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.54.54.1.1" style="font-size:80%;">0.06599</span><sup class="ltx_sup" id="Ax2.T5.54.54.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.54.54.1.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.55.55.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.55.55.2.1" style="font-size:80%;">0.09874</span><sup class="ltx_sup" id="Ax2.T5.55.55.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.55.55.2.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.55.55.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.55.55.6.1" style="font-size:80%;">0.14331</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.55.55.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.55.55.7.1" style="font-size:80%;">0.24298</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.76.14">
<th class="ltx_td ltx_th ltx_th_row" id="Ax2.T5.61.76.14.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.76.14.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.76.14.2.1" style="font-size:80%;">(20,17)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.76.14.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.76.14.3.1" style="font-size:80%;">(18,13)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.76.14.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.76.14.4.1" style="font-size:80%;">(28,15)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.76.14.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.76.14.5.1" style="font-size:80%;">(20,10)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.76.14.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.76.14.6.1" style="font-size:80%;">(24,14)</span></td>
<td class="ltx_td ltx_align_center" id="Ax2.T5.61.76.14.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.76.14.7.1" style="font-size:80%;">(22,14)</span></td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.61">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax2.T5.61.61.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.61.7.1" style="font-size:80%;">LLaMA 3.1-8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.56.56.1" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.56.56.1.1" style="font-size:80%;">0.00674</span><sup class="ltx_sup" id="Ax2.T5.56.56.1.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.56.56.1.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.57.57.2" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.57.57.2.1" style="font-size:80%;">0.00879</span><sup class="ltx_sup" id="Ax2.T5.57.57.2.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.57.57.2.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.58.58.3" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.58.58.3.1" style="font-size:80%;">0.00017</span><sup class="ltx_sup" id="Ax2.T5.58.58.3.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.58.58.3.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.59.59.4" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.59.59.4.1" style="font-size:80%;">0.01628</span><sup class="ltx_sup" id="Ax2.T5.59.59.4.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.59.59.4.2.1" style="font-size:80%;">∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.60.60.5" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.60.60.5.1" style="font-size:80%;">0.00005</span><sup class="ltx_sup" id="Ax2.T5.60.60.5.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.60.60.5.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax2.T5.61.61.6" style="padding:0.4pt 3.0pt;">
<span class="ltx_text" id="Ax2.T5.61.61.6.1" style="font-size:80%;">0.00242</span><sup class="ltx_sup" id="Ax2.T5.61.61.6.2"><span class="ltx_text ltx_font_italic" id="Ax2.T5.61.61.6.2.1" style="font-size:80%;">∗∗∗</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="Ax2.T5.61.77.15">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="Ax2.T5.61.77.15.1" style="padding:0.4pt 3.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T5.61.77.15.2" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.77.15.2.1" style="font-size:80%;">(175,127)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T5.61.77.15.3" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.77.15.3.1" style="font-size:80%;">(164,119)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T5.61.77.15.4" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.77.15.4.1" style="font-size:80%;">(184,118)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T5.61.77.15.5" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.77.15.5.1" style="font-size:80%;">(167,125)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T5.61.77.15.6" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.77.15.6.1" style="font-size:80%;">(185,114)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="Ax2.T5.61.77.15.7" style="padding:0.4pt 3.0pt;"><span class="ltx_text" id="Ax2.T5.61.77.15.7.1" style="font-size:80%;">(162,111)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A5 presents the results of McNemar's Test, a statistical method used to compare the accuracy of different language models across various datasets. Specifically, it examines whether the accuracy changes significantly when using culturally adapted versions of the questions compared to the original questions. The p-values indicate the statistical significance of the difference in accuracy between these two sets of questions.  Lower p-values (p < 0.01, p < 0.05) denote statistically significant changes in accuracy, indicating that the models' performance is affected by the cultural adaptations. The (b,c) values show the counts of cases where the model is correct/incorrect on the original dataset and its culturally adapted version, providing insights into the nature of the accuracy differences.
> <details>
> <summary>read the caption</summary>
> Table A5: McNemar Test Results for Model Performance Across Datasets. Values represent p-values (rounded to 5 decimal places). Significance: p∗<0.10superscript𝑝0.10{}^{*}p<0.10start_FLOATSUPERSCRIPT ∗ end_FLOATSUPERSCRIPT italic_p < 0.10, p∗∗<0.05superscript𝑝absent0.05{}^{**}p<0.05start_FLOATSUPERSCRIPT ∗ ∗ end_FLOATSUPERSCRIPT italic_p < 0.05, p∗⁣∗∗<0.01superscript𝑝absent0.01{}^{***}p<0.01start_FLOATSUPERSCRIPT ∗ ∗ ∗ end_FLOATSUPERSCRIPT italic_p < 0.01. (b,c) values in parentheses.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18018/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18018/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}