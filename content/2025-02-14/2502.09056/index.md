---
title: "An Open Recipe: Adapting Language-Specific LLMs to a Reasoning Model in One Day via Model Merging"
summary: "Low-resource language LLMs gain strong reasoning abilities by merging with a high-resource reasoning model, achieving performance comparable to state-of-the-art models while maintaining target languag..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 SCB 10X R&D",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09056 {{< /keyword >}}
{{< keyword icon="writer" >}} Kunat Pipatanakul et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09056" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09056" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09056/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many advanced reasoning language models, like DeepSeek R1, primarily excel in high-resource languages such as English and Chinese.  This creates a significant gap for low-resource languages due to the dominance of English-centric training data.  Local and regional LLM initiatives aim to bridge this gap by focusing on improving linguistic fidelity in specific languages. However, these models often lack robust reasoning capabilities.

This research introduces a novel method to enhance the reasoning capabilities of language-specific LLMs in low-resource languages.  The researchers successfully merged a Thai-language LLM with DeepSeek R1, a strong reasoning model, using a cost-effective approach. **This resulted in a model that matches the reasoning performance of DeepSeek R1 without compromising the original model's language proficiency.**  The researchers also made their data, code and model weights publicly available to benefit the research community.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Merging language-specific LLMs with reasoning models significantly improves reasoning capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed method effectively addresses the challenge of limited data and computational resources for low-resource language LLM development. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Publicly available data, code, and model weights promote advancement in language-specific LLM initiatives. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel and effective method for enhancing the reasoning capabilities of language-specific LLMs, particularly those for low-resource languages.  **It offers a practical solution to a significant challenge in the field**, bridging the performance gap between high-resource and low-resource language models. The publicly available data, merge configurations, and model weights contribute significantly to the advancement of LLM initiatives, facilitating further research and development in this area.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09056/x1.png)

> 🔼 This figure illustrates the process of creating the Typhoon2 R1 70B model, which enhances the reasoning capabilities of a Thai language model.  It starts with selecting two specialized LLMs: Typhoon2 70B (a Thai language model) and DeepSeek R1 70B (a reasoning model).  These models undergo representation alignment using Supervised Fine-Tuning (SFT) with a curated dataset.  Finally, an Ability-Aware Model Merging technique combines the fine-tuned Typhoon2 and DeepSeek R1 models, resulting in the final Typhoon2 R1 70B model. The diagram visually depicts the data used at each step and the resulting model.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our Typhoon2 R1 70B recipe
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.1.1.1.1" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.1">Experiment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.2" style="padding-left:2.8pt;padding-right:2.8pt;">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.3" style="padding-left:2.8pt;padding-right:2.8pt;">MT-Bench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.4" style="padding-left:2.8pt;padding-right:2.8pt;">Response Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.5" style="padding-left:2.8pt;padding-right:2.8pt;">AIME</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.6" style="padding-left:2.8pt;padding-right:2.8pt;">MATH500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.7" style="padding-left:2.8pt;padding-right:2.8pt;">LCB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.8" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T1.1.1.1.8.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2.2">
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.3" style="padding-left:2.8pt;padding-right:2.8pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.4" style="padding-left:2.8pt;padding-right:2.8pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.5" style="padding-left:2.8pt;padding-right:2.8pt;">Lang</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.6" style="padding-left:2.8pt;padding-right:2.8pt;">Think</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.7" style="padding-left:2.8pt;padding-right:2.8pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.8" style="padding-left:2.8pt;padding-right:2.8pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.9" style="padding-left:2.8pt;padding-right:2.8pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.10" style="padding-left:2.8pt;padding-right:2.8pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.11" style="padding-left:2.8pt;padding-right:2.8pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2.12" style="padding-left:2.8pt;padding-right:2.8pt;">TH</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.3.3.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T1.1.3.3.1.1">Typhoon2 70B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.3.3.2.1">88.7</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.3.3.3.1">81.4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.4" style="padding-left:2.8pt;padding-right:2.8pt;">8.856</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.3.3.5.1">7.362</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.3.3.6.1">98.8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.8" style="padding-left:2.8pt;padding-right:2.8pt;">10.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.9" style="padding-left:2.8pt;padding-right:2.8pt;">3.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.10" style="padding-left:2.8pt;padding-right:2.8pt;">66.2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.11" style="padding-left:2.8pt;padding-right:2.8pt;">60.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.12" style="padding-left:2.8pt;padding-right:2.8pt;">39.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.13" style="padding-left:2.8pt;padding-right:2.8pt;">36.4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.3.3.14" style="padding-left:2.8pt;padding-right:2.8pt;">54.0</th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.1.4.4.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T1.1.4.4.1.1">Deepseek R1 70B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.2" style="padding-left:2.8pt;padding-right:2.8pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.3" style="padding-left:2.8pt;padding-right:2.8pt;">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.4.1">8.939</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.5" style="padding-left:2.8pt;padding-right:2.8pt;">6.329</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.6" style="padding-left:2.8pt;padding-right:2.8pt;">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.7.1">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.8.1">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.9.1">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.10.1">88.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.11.1">78.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.12" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.12.1">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.13" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.13.1">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.4.4.14" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.14.1">67.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of two large language models (LLMs): Typhoon2 70B Instruct and DeepSeek R1 70B Distill, across various tasks including instruction following (IFEval), machine translation (MT-Bench), language accuracy, and reasoning (AIME, MATH500, LiveCodeBench).  Typhoon2 excels in language tasks, demonstrating significantly higher accuracy on Thai-specific instruction-following and translation tasks. In contrast, DeepSeek R1 shows better performance on reasoning tasks, outperforming Typhoon2 on mathematics and coding benchmarks.  However, neither model exhibits strong performance across both language and reasoning tasks, highlighting a trade-off between these capabilities.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison between Typhoon2 70B Instruct and DeepSeek R1 70B Distill, Showing that Typhoon2 have stronger language task performance, while DeepSeek has stronger reasoning performance. However, neither model compensates for its weakness.
> </details>





### In-depth insights


#### Reasoning LLM Merge
The concept of "Reasoning LLM Merge" explores combining the strengths of large language models (LLMs) specialized in reasoning with those proficient in specific languages.  This approach directly addresses the limitations of reasoning models, which often excel in high-resource languages like English but struggle with low-resource languages. **Merging allows for the integration of advanced reasoning capabilities without sacrificing the target language fluency of the language-specific LLM.**  The process typically involves aligning the internal representations of both models, potentially through supervised fine-tuning on a bilingual dataset, then strategically merging their parameters, often weighting the contribution of each model based on layer-specific importance for reasoning versus language generation.  The success hinges on carefully selecting appropriate models with compatible architectures and **optimizing the merging ratios and fine-tuning data to balance reasoning and language performance**. This technique offers a potentially efficient and effective solution for enhancing the reasoning abilities of LLMs in under-resourced languages, leveraging existing resources and bypassing the computationally expensive process of training a new model from scratch.

#### SFT Data Optimizations
Optimizing supervised fine-tuning (SFT) data is crucial for effectively enhancing the reasoning capabilities of language models.  **Careful data selection** is paramount; a balanced dataset representing diverse reasoning tasks and avoiding biases is essential.  **Data augmentation techniques** such as back-translation or paraphrasing can increase dataset size and diversity, but must be applied judiciously to avoid introducing noise or inaccuracies.  **The inclusion of high-quality reasoning traces** can significantly improve model performance, but obtaining these traces might be expensive. **Exploring techniques like curriculum learning**, where models gradually learn from simpler to more complex reasoning tasks, can also boost SFT efficiency.  Ultimately, the success of SFT data optimization hinges on a deep understanding of the target model and task, necessitating a well-defined evaluation metric to guide the optimization process and ensure the improvements generalize well to unseen data.

#### Cross-lingual Reasoning
Cross-lingual reasoning presents a significant challenge in natural language processing, demanding models capable of understanding and generating text across different languages while performing complex reasoning tasks.  **Existing multilingual models often struggle with this**, particularly when dealing with low-resource languages or tasks involving nuanced linguistic features.  A key aspect is bridging the gap between language-specific capabilities and reasoning abilities.  **This requires careful consideration of data selection and model training**, potentially involving techniques like cross-lingual knowledge transfer or model merging to integrate high-performing reasoning models with strong language-specific LLMs.  **The evaluation of such models needs to be comprehensive**, extending beyond standard accuracy metrics to include assessments of reasoning capabilities in various languages and a focus on the quality of the reasoning process itself.  This area presents significant opportunities for improving multilingual AI's ability to reason accurately and effectively across diverse linguistic contexts.

#### Low-Resource LLM Boost
The concept of a 'Low-Resource LLM Boost' is crucial in bridging the technological gap between high-resource and low-resource languages.  It highlights the need for methods that effectively enhance the capabilities of Large Language Models (LLMs) trained on limited data for low-resource languages.  **Model merging**, as explored in the research paper, presents a promising approach, combining the strengths of a reasoning model trained on high-resource data with a language-specific model trained on the low-resource language.  This technique aims to **transfer reasoning abilities** without sacrificing linguistic fidelity.  **Data selection and augmentation** are also key; carefully curating and expanding available datasets for the low-resource language is critical for successful model training and fine-tuning.  A successful 'Low-Resource LLM Boost' necessitates careful consideration of computational cost-effectiveness and the balance between model size, performance, and accessibility, ultimately promoting greater inclusivity and fairness in AI technology.

#### Merge Ratio Effects
The merge ratio significantly impacts the resulting model's performance.  **Varying the ratio of the language-specific LLM to the reasoning LLM across different layers reveals crucial insights**.  Assigning a higher ratio of the reasoning model to earlier layers, which handle high-level comprehension and abstraction, enhances reasoning capabilities. Conversely, a higher language-specific model ratio in later layers, focused on output generation, improves fluency and adherence to the target language.  **Finding the optimal balance avoids compromising either linguistic fidelity or reasoning accuracy.**  Experimentation with different merge ratios, especially those that vary across model layers, is crucial for maximizing the benefits of this merging technique.  **The results show that a carefully tuned merge ratio can lead to a model that surpasses the capabilities of either component model individually**, highlighting the potential of this methodology for advancing LLMs in low-resource languages.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09056/extracted/6200631/figures/deepseek-r1-codeswitch.png)

> 🔼 Figure 2 shows an example of the code-switching and language accuracy issues that can arise when using language models like DeepSeek R1 70B Distill, especially in low-resource languages.  The model attempts to answer the question of 'Which came first, the chicken or the egg?' but includes unexpected code-switching (mixing languages) in its response, which is not natural Thai. This illustrates the limitations of relying on English-centric training data when working with languages other than English.
> <details>
> <summary>read the caption</summary>
> Figure 2: Example demonstrate code-switching / language accuracy problem in DeepSeek R1 70B Distill. - The question is ”Which came first, the chicken or the egg?” - The model generated a final response, but it was unsatisfactory as it contained unnatural code-switching that not in Thai.
> </details>



![](https://arxiv.org/html/2502.09056/extracted/6200631/figures/deepseek-r1-codeswitch-2.png)

> 🔼 Figure 3 demonstrates a code-switching and language accuracy issue within the DeepSeek R1 70B Distill model.  The model was given a question requiring the conversion of rectangular coordinates (0,3) into polar coordinates. The expected response was in Thai, but instead, the model's response was entirely in Chinese, illustrating its failure to maintain the target language (Thai) while performing a reasoning task.
> <details>
> <summary>read the caption</summary>
> Figure 3: Example demonstrate code-switching / language accuracy problem in DeepSeek R1 70B Distill. - The question is “Convert the point ⁢(0,3)⁢ in rectangular coordinates to polar coordinates.Convert the point 03 in rectangular coordinates to polar coordinates.\text{Convert the point }(0,3)\text{ in rectangular coordinates to polar % coordinates.}Convert the point ( 0 , 3 ) in rectangular coordinates to polar coordinates. Enter your answer in the form  (r,θ),wherer>0,0≤θ<2⁢π.formulae-sequence𝑟𝜃where𝑟00𝜃2𝜋(r,\theta),\quad\text{where}\quad r>0,\quad 0\leq\theta<2\pi.( italic_r , italic_θ ) , where italic_r > 0 , 0 ≤ italic_θ < 2 italic_π .” - The model generated a final response, but it was entirely in Chinese, which is not the usual language in Thai.
> </details>



![](https://arxiv.org/html/2502.09056/extracted/6200631/figures/typhoon-r1-codeswitch.png)

> 🔼 This figure showcases an example of the Typhoon2-R1-70B model's response to the question: 'Which came first, the chicken or the egg?'  The model not only provides a complete and accurate answer in Thai, but also demonstrates its reasoning process by clearly articulating the different perspectives and arguments involved in addressing this classic philosophical question. This exemplifies the model's enhanced reasoning capabilities while maintaining fluency in the target language.
> <details>
> <summary>read the caption</summary>
> Figure 4: Example from our model: The question is, ’Which came first, the chicken or the egg?’ - The model successfully responds fully in Thai while reasoning through its thought process on general question.
> </details>



![](https://arxiv.org/html/2502.09056/extracted/6200631/figures/typhoon-r1-codeswitch-2.png)

> 🔼 Figure 5 demonstrates the successful application of the model merging technique.  The model accurately answers a math question (converting rectangular coordinates to polar coordinates) entirely in Thai, showcasing both its reasoning capabilities and strong Thai language proficiency.  The response includes a step-by-step solution, illustrating the model's thought process.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example demonstrate code-switching / language accuracy problem in DeepSeek R1 70B Distill. - The question is “Convert the point ⁢(0,3)⁢ in rectangular coordinates to polar coordinates.Convert the point 03 in rectangular coordinates to polar coordinates.\text{Convert the point }(0,3)\text{ in rectangular coordinates to polar % coordinates.}Convert the point ( 0 , 3 ) in rectangular coordinates to polar coordinates. Enter your answer in the form  (r,θ),wherer>0,0≤θ<2⁢π.formulae-sequence𝑟𝜃where𝑟00𝜃2𝜋(r,\theta),\quad\text{where}\quad r>0,\quad 0\leq\theta<2\pi.( italic_r , italic_θ ) , where italic_r > 0 , 0 ≤ italic_θ < 2 italic_π .” - The model successfully responds fully in Thai while reasoning through its thought process on math question.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">Merge Config</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.2" style="padding-left:2.3pt;padding-right:2.3pt;">DS-R @ Layer 0 - Layer 80</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.2.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">M1 (More Typhoon)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.2" style="padding-left:2.3pt;padding-right:2.3pt;">25%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.1.3.2.1" style="padding-left:2.3pt;padding-right:2.3pt;">M2 (More DeepSeek)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.3.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">75%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the configuration used for merging two language models in experiment 4.2.1.  It shows how the DeepSeek ratio (DS-R), representing the weighting of the reasoning model (DeepSeek R1), is applied at different layers (K) of the model.  Two merge configurations are presented: M1 (More Typhoon) and M2 (More DeepSeek).  Each configuration specifies the DS-R for layers 0 through 80, illustrating how the weighting of the DeepSeek model changes across different model layers during the merge process.
> <details>
> <summary>read the caption</summary>
> Table 2: Merge config for question 4.2.1, where DS-R @ K represents the DeepSeek ratio (DS-R) at layer K
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1" rowspan="2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S4.T3.1.1.1.1.1">Experiment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.2" style="padding-left:3.7pt;padding-right:3.7pt;">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.3" style="padding-left:3.7pt;padding-right:3.7pt;">MT-Bench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.4" style="padding-left:3.7pt;padding-right:3.7pt;">Response Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.5" style="padding-left:3.7pt;padding-right:3.7pt;">AIME</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.6" style="padding-left:3.7pt;padding-right:3.7pt;">MATH500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.1.1.1.7" style="padding-left:3.7pt;padding-right:3.7pt;">LCB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.8" rowspan="2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S4.T3.1.1.1.8.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.1" style="padding-left:3.7pt;padding-right:3.7pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.2" style="padding-left:3.7pt;padding-right:3.7pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.3" style="padding-left:3.7pt;padding-right:3.7pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.4" style="padding-left:3.7pt;padding-right:3.7pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.5" style="padding-left:3.7pt;padding-right:3.7pt;">Lang</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.6" style="padding-left:3.7pt;padding-right:3.7pt;">Think</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.7" style="padding-left:3.7pt;padding-right:3.7pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.8" style="padding-left:3.7pt;padding-right:3.7pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.9" style="padding-left:3.7pt;padding-right:3.7pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.10" style="padding-left:3.7pt;padding-right:3.7pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.11" style="padding-left:3.7pt;padding-right:3.7pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.2.2.12" style="padding-left:3.7pt;padding-right:3.7pt;">TH</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.3.1.1" style="padding-left:3.7pt;padding-right:3.7pt;">M1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.2" style="padding-left:3.7pt;padding-right:3.7pt;">57.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.3" style="padding-left:3.7pt;padding-right:3.7pt;">58.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.4" style="padding-left:3.7pt;padding-right:3.7pt;">7.728</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.5" style="padding-left:3.7pt;padding-right:3.7pt;">6.412</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.6" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.3.1.6.1">86.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.7" style="padding-left:3.7pt;padding-right:3.7pt;">96.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.8" style="padding-left:3.7pt;padding-right:3.7pt;">26.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.9" style="padding-left:3.7pt;padding-right:3.7pt;">26.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.10" style="padding-left:3.7pt;padding-right:3.7pt;">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.11" style="padding-left:3.7pt;padding-right:3.7pt;">78.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.12" style="padding-left:3.7pt;padding-right:3.7pt;">43.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.13" style="padding-left:3.7pt;padding-right:3.7pt;">44.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.1.14" style="padding-left:3.7pt;padding-right:3.7pt;">61.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.4.2.1" style="padding-left:3.7pt;padding-right:3.7pt;">M2</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.2.1">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.3" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.3.1">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.4.1">8.606</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.5.1">6.950</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.6" style="padding-left:3.7pt;padding-right:3.7pt;">59.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.7" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.7.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.8" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.8.1">46.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.9" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.9.1">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.10" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.10.1">89.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.11.1">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.12" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.12.1">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.13" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.13.1">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2.14" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.2.14.1">72.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.1.5.3.1" style="padding-left:3.7pt;padding-right:3.7pt;">Deepseek R1 70B</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.2" style="padding-left:3.7pt;padding-right:3.7pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.3" style="padding-left:3.7pt;padding-right:3.7pt;">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.4" style="padding-left:3.7pt;padding-right:3.7pt;">8.939</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.5" style="padding-left:3.7pt;padding-right:3.7pt;">6.329</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.6" style="padding-left:3.7pt;padding-right:3.7pt;">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.7" style="padding-left:3.7pt;padding-right:3.7pt;">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.8" style="padding-left:3.7pt;padding-right:3.7pt;">63.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.9" style="padding-left:3.7pt;padding-right:3.7pt;">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.10" style="padding-left:3.7pt;padding-right:3.7pt;">88.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.11" style="padding-left:3.7pt;padding-right:3.7pt;">78.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.12" style="padding-left:3.7pt;padding-right:3.7pt;">64.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.13" style="padding-left:3.7pt;padding-right:3.7pt;">62.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.5.3.14" style="padding-left:3.7pt;padding-right:3.7pt;">67.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two merged language models: M1, which incorporates more of the Thai-language model 'Typhoon2', and M2, which uses more of the reasoning model 'DeepSeek R1'.  The results show that M2, with its greater emphasis on DeepSeek R1, achieves better overall performance across various reasoning tasks. However, M2 shows a decrease in the accuracy of language tasks, specifically in generating correct Thai text. This indicates a trade-off between enhanced reasoning abilities and maintaining strong language proficiency in the merged model.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison between the merged models: M1 (More Typhoon) and M2 (More DeepSeek), showing that M2 performs better overall but still exhibits degradation in language accuracy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.1" style="padding-left:3.4pt;padding-right:3.4pt;">Merge Config</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.2" style="padding-left:3.4pt;padding-right:3.4pt;">DS-R @ Layer 0-53</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.3" style="padding-left:3.4pt;padding-right:3.4pt;">DS-R @ Layer 53-80</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.2.1.1" style="padding-left:3.4pt;padding-right:3.4pt;">M2 (Constraint ratio)</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.2.1.2" style="padding-left:3.4pt;padding-right:3.4pt;">75%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.1.3" style="padding-left:3.4pt;padding-right:3.4pt;">75%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.1.3.2.1" style="padding-left:3.4pt;padding-right:3.4pt;">M3 (More Typhoon in later layer)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.1.3.2.2" style="padding-left:3.4pt;padding-right:3.4pt;">75%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.3.2.3" style="padding-left:3.4pt;padding-right:3.4pt;">75% linearly decrease to 12.5%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the configuration used for merging the Typhoon and DeepSeek models in experiment 4.2.2.  It shows how the DeepSeek ratio (DS-R), representing the proportion of DeepSeek model weights, varies across different layers (K) of the model.  This experiment explores the impact of adjusting the DeepSeek ratio across different layers to optimize reasoning ability while maintaining the target language fluency.  Specifically, it contrasts a configuration with a constant DeepSeek ratio across all layers with one where the ratio decreases linearly from higher to lower layers.
> <details>
> <summary>read the caption</summary>
> Table 4: Merge config for question 4.2.2, where DS-R @ K represents the DeepSeek ratio (DS-R) at layer K
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.1.1.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.1.1.1.1.1">Experiment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Response Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">AIME</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">MATH500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">LCB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.8" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.1.1.1.8.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">Lang</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">Think</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.2.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">TH</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.3.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">M2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.2.1">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.3.1">76.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.4.1">8.606</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.950</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">59.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.7.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.8.1">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.9.1">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">89.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.11.1">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.12.1">58.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.1.13.1">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.14" style="padding-left:4.0pt;padding-right:4.0pt;">72.3</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.4.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">M3</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">82.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">8.390</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.2.5.1">7.164</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.2.6.1">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.2.7.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.2.8.1">46.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.2.10.1">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">81.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">55.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">58.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.14" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.2.14.1">72.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.1.5.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Typhoon2 70B</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">88.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">81.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">8.856</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">7.362</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">98.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">3.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">66.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">60.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">39.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.13" style="padding-left:4.0pt;padding-right:4.0pt;">36.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.3.14" style="padding-left:4.0pt;padding-right:4.0pt;">54.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of the performance of two merged language models: M2 and M3.  Model M2 uses a fixed merge ratio across all layers, whereas Model M3 assigns a higher weight to the language-specific model in later layers. The table shows that model M3 significantly improves language accuracy while maintaining comparable performance in reasoning tasks, demonstrating the effectiveness of adjusting layer-specific merge ratios for enhanced overall model performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison between the merged model with M2(Constraint ratio) and M3(More Typhoon in the later layer), showing that M3 improves language accuracy and enhances overall performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1" style="padding-left:1.7pt;padding-right:1.7pt;">Dataset</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.2" style="padding-left:1.7pt;padding-right:1.7pt;">Language</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.3" style="padding-left:1.7pt;padding-right:1.7pt;">#Examples</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.4" style="padding-left:1.7pt;padding-right:1.7pt;">SFT-V1</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.5" style="padding-left:1.7pt;padding-right:1.7pt;">SFT-V2</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.6" style="padding-left:1.7pt;padding-right:1.7pt;">SFT-V3</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.7" style="padding-left:1.7pt;padding-right:1.7pt;">SFT-V4</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T6.1.2.1.1" style="padding-left:1.7pt;padding-right:1.7pt;">Bespoke-Stratos (Original)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T6.1.2.1.2" style="padding-left:1.7pt;padding-right:1.7pt;">EN</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T6.1.2.1.3" style="padding-left:1.7pt;padding-right:1.7pt;">17K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.1.2.1.4" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.1.2.1.5" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.1.2.1.6" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.1.2.1.7" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.3.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.3.2.1" style="padding-left:1.7pt;padding-right:1.7pt;">Bespoke-Stratos TH Translate (Small)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.3.2.2" style="padding-left:1.7pt;padding-right:1.7pt;">TH</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.3.2.3" style="padding-left:1.7pt;padding-right:1.7pt;">2K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.3.2.4" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.3.2.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.3.2.6" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.3.2.7" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.4.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.4.3.1" style="padding-left:1.7pt;padding-right:1.7pt;">Bespoke-Stratos TH Translate (Large)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.4.3.2" style="padding-left:1.7pt;padding-right:1.7pt;">TH</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.4.3.3" style="padding-left:1.7pt;padding-right:1.7pt;">6.5K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.4.3.4" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.4.3.5" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.4.3.6" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.4.3.7" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.5.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.5.4.1" style="padding-left:1.7pt;padding-right:1.7pt;">Deepseek R1 Distill <span class="ltx_text ltx_font_typewriter" id="S4.T6.1.5.4.1.1">thai_instruction_sft</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.5.4.2" style="padding-left:1.7pt;padding-right:1.7pt;">TH</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.5.4.3" style="padding-left:1.7pt;padding-right:1.7pt;">0.5K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.5.4.4" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.5.4.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.5.4.6" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.5.4.7" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.6.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.6.5.1" style="padding-left:1.7pt;padding-right:1.7pt;">Capybara (Original)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.6.5.2" style="padding-left:1.7pt;padding-right:1.7pt;">EN</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T6.1.6.5.3" style="padding-left:1.7pt;padding-right:1.7pt;">10K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.6.5.4" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.6.5.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.6.5.6" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.1.6.5.7" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.7.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T6.1.7.6.1" style="padding-left:1.7pt;padding-right:1.7pt;">
<span class="ltx_text ltx_font_typewriter" id="S4.T6.1.7.6.1.1">thai_instruction_sft</span> (Original)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T6.1.7.6.2" style="padding-left:1.7pt;padding-right:1.7pt;">TH</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T6.1.7.6.3" style="padding-left:1.7pt;padding-right:1.7pt;">10K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T6.1.7.6.4" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T6.1.7.6.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T6.1.7.6.6" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T6.1.7.6.7" style="padding-left:1.7pt;padding-right:1.7pt;">✓</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table summarizes the different configurations of the Supervised Fine-Tuning (SFT) data used in the experiments.  Each row represents a different experiment, showing which datasets were included (Bespoke-Stratos, Thai translations of Bespoke-Stratos, distilled Thai reasoning traces, Capybara (English general instruction data), and thai_instruction_sft (Thai general instruction data)) and the number of examples in each dataset for that experiment. This allows comparison of the impact of different data compositions on the model's performance before merging with the reasoning model.
> <details>
> <summary>read the caption</summary>
> Table 6: A summary of the SFT data configurations used in our SFT: data mixture experiment.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T7.1.1.1.1" rowspan="2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S4.T7.1.1.1.1.1">Experiment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T7.1.1.1.2" style="padding-left:2.3pt;padding-right:2.3pt;">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T7.1.1.1.3" style="padding-left:2.3pt;padding-right:2.3pt;">MT-Bench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T7.1.1.1.4" style="padding-left:2.3pt;padding-right:2.3pt;">Response Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T7.1.1.1.5" style="padding-left:2.3pt;padding-right:2.3pt;">AIME</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T7.1.1.1.6" style="padding-left:2.3pt;padding-right:2.3pt;">MATH500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T7.1.1.1.7" style="padding-left:2.3pt;padding-right:2.3pt;">LCB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1.8" rowspan="2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S4.T7.1.1.1.8.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T7.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.1" style="padding-left:2.3pt;padding-right:2.3pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.3" style="padding-left:2.3pt;padding-right:2.3pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.4" style="padding-left:2.3pt;padding-right:2.3pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.5" style="padding-left:2.3pt;padding-right:2.3pt;">Lang</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.6" style="padding-left:2.3pt;padding-right:2.3pt;">Think</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.7" style="padding-left:2.3pt;padding-right:2.3pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.8" style="padding-left:2.3pt;padding-right:2.3pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.9" style="padding-left:2.3pt;padding-right:2.3pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.10" style="padding-left:2.3pt;padding-right:2.3pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.11" style="padding-left:2.3pt;padding-right:2.3pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T7.1.2.2.12" style="padding-left:2.3pt;padding-right:2.3pt;">EN</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.1.3.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">SFT-v1 + M3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.2" style="padding-left:2.3pt;padding-right:2.3pt;">82.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.3" style="padding-left:2.3pt;padding-right:2.3pt;">75.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.4" style="padding-left:2.3pt;padding-right:2.3pt;">8.390</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.5" style="padding-left:2.3pt;padding-right:2.3pt;">7.164</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.6" style="padding-left:2.3pt;padding-right:2.3pt;">87.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.7" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.3.1.7.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.8" style="padding-left:2.3pt;padding-right:2.3pt;">46.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.9" style="padding-left:2.3pt;padding-right:2.3pt;">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.10" style="padding-left:2.3pt;padding-right:2.3pt;">90.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.11" style="padding-left:2.3pt;padding-right:2.3pt;">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.12" style="padding-left:2.3pt;padding-right:2.3pt;">55.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.13" style="padding-left:2.3pt;padding-right:2.3pt;">58.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.3.1.14" style="padding-left:2.3pt;padding-right:2.3pt;">72.9</td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.1.4.2.1" style="padding-left:2.3pt;padding-right:2.3pt;">+Add 4.5k TH translation (SFT-v2)</th>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">83.5</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.3" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.4.2.3.1">78.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.4" style="padding-left:2.3pt;padding-right:2.3pt;">8.725</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.5" style="padding-left:2.3pt;padding-right:2.3pt;">7.082</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.6" style="padding-left:2.3pt;padding-right:2.3pt;">89.4</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.7" style="padding-left:2.3pt;padding-right:2.3pt;">99.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.8" style="padding-left:2.3pt;padding-right:2.3pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.9" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.4.2.9.1">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.10" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.4.2.10.1">91.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.11" style="padding-left:2.3pt;padding-right:2.3pt;">82.1</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.12" style="padding-left:2.3pt;padding-right:2.3pt;">59.6</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.13" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.4.2.13.1">61.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2.14" style="padding-left:2.3pt;padding-right:2.3pt;">76.1</td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.1.5.3.1" style="padding-left:2.3pt;padding-right:2.3pt;">+Distil 500 TH general thought (SFT-v3)</th>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.5.3.2.1">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.3" style="padding-left:2.3pt;padding-right:2.3pt;">75.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.4" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.5.3.4.1">8.843</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.5" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.5.3.5.1">7.181</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.6" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.5.3.6.1">96.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.7" style="padding-left:2.3pt;padding-right:2.3pt;">99.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.8" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.5.3.8.1">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.9" style="padding-left:2.3pt;padding-right:2.3pt;">46.6</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.10" style="padding-left:2.3pt;padding-right:2.3pt;">90.4</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.11" style="padding-left:2.3pt;padding-right:2.3pt;">83.5</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.12" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.5.3.12.1">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.13" style="padding-left:2.3pt;padding-right:2.3pt;">57.3</td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3.14" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.5.3.14.1">76.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T7.1.6.4.1" style="padding-left:2.3pt;padding-right:2.3pt;">+General Instruction (SFT-v4)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.2" style="padding-left:2.3pt;padding-right:2.3pt;">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.3" style="padding-left:2.3pt;padding-right:2.3pt;">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.4" style="padding-left:2.3pt;padding-right:2.3pt;">8.806</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.5" style="padding-left:2.3pt;padding-right:2.3pt;">6.939</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.6" style="padding-left:2.3pt;padding-right:2.3pt;">93.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.7" style="padding-left:2.3pt;padding-right:2.3pt;">99.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.8" style="padding-left:2.3pt;padding-right:2.3pt;">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.9" style="padding-left:2.3pt;padding-right:2.3pt;">46.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.10" style="padding-left:2.3pt;padding-right:2.3pt;">89.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.11" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.1.6.4.11.1">85.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.12" style="padding-left:2.3pt;padding-right:2.3pt;">53.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.13" style="padding-left:2.3pt;padding-right:2.3pt;">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.1.6.4.14" style="padding-left:2.3pt;padding-right:2.3pt;">73.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of four different supervised fine-tuning (SFT) data mixture configurations on a language model. The configurations vary in the proportion of Thai and English data, the inclusion of distilled reasoning traces, and the addition of general instruction data. The goal is to find the optimal data mixture that enhances the model's performance on reasoning and language tasks.  The table presents results for multiple metrics, including IFEval, MT-Bench, language accuracy, AIME, MATH500, and LCB across English and Thai languages.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance comparison of each SFT mixture. Result in Section 4.3
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T8.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T8.1.1.1.1" rowspan="2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S4.T8.1.1.1.1.1">Experiment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T8.1.1.1.2" style="padding-left:3.7pt;padding-right:3.7pt;">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T8.1.1.1.3" style="padding-left:3.7pt;padding-right:3.7pt;">MT-Bench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T8.1.1.1.4" style="padding-left:3.7pt;padding-right:3.7pt;">Response Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T8.1.1.1.5" style="padding-left:3.7pt;padding-right:3.7pt;">AIME</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T8.1.1.1.6" style="padding-left:3.7pt;padding-right:3.7pt;">MATH500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T8.1.1.1.7" style="padding-left:3.7pt;padding-right:3.7pt;">LCB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.1.8" rowspan="2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S4.T8.1.1.1.8.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T8.1.2.2">
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.1" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.2" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.3" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.4" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.5" style="padding-left:3.7pt;padding-right:3.7pt;">Lang</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.6" style="padding-left:3.7pt;padding-right:3.7pt;">Think</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.7" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.8" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.9" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.10" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.11" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T8.1.2.2.12" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
</tr>
<tr class="ltx_tr" id="S4.T8.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T8.1.3.3.1" style="padding-left:3.7pt;padding-right:3.7pt;">Typhoon2+M3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.2" style="padding-left:3.7pt;padding-right:3.7pt;">77.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.3" style="padding-left:3.7pt;padding-right:3.7pt;">58.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.4" style="padding-left:3.7pt;padding-right:3.7pt;">8.581</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.5" style="padding-left:3.7pt;padding-right:3.7pt;">5.835</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.6" style="padding-left:3.7pt;padding-right:3.7pt;">90.8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.7" style="padding-left:3.7pt;padding-right:3.7pt;">65.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.8" style="padding-left:3.7pt;padding-right:3.7pt;">46.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.9" style="padding-left:3.7pt;padding-right:3.7pt;">20.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.10" style="padding-left:3.7pt;padding-right:3.7pt;">88.2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.11" style="padding-left:3.7pt;padding-right:3.7pt;">67.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.12" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.3.3.12.1">61.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.13" style="padding-left:3.7pt;padding-right:3.7pt;">47.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.3.3.14" style="padding-left:3.7pt;padding-right:3.7pt;">63.9</th>
</tr>
<tr class="ltx_tr" id="S4.T8.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T8.1.4.4.1" style="padding-left:3.7pt;padding-right:3.7pt;">Best Model</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.2.1">85.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.3" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.3.1">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.4.1">8.843</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.5.1">7.181</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.6" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.6.1">96.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.7" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.7.1">99.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.8" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.8.1">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.9" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.9.1">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.10" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.10.1">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.11.1">83.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.12" style="padding-left:3.7pt;padding-right:3.7pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.13" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.13.1">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.4.4.14" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.4.4.14.1">76.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two approaches: (1) our best-performing model, which combines Typhoon2 (a Thai-language LLM) with DeepSeek R1 (a reasoning LLM) using supervised fine-tuning (SFT) and ability-aware model merging (M3); and (2) a model created by directly merging Typhoon2 and DeepSeek R1 without SFT.  The comparison covers several evaluation metrics including IFEval (instruction-following), MT-Bench (multilingual translation benchmark), response accuracy, language accuracy, Think accuracy, AIME (American Invitational Mathematics Examination), MATH500, and LiveCodeBench (coding benchmark) to assess both language capabilities and reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance comparison between our best model(Typhoon2+SFT-v3+M3) and direct merging(Typhoon2+M3).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T9.1.1.1.1" rowspan="2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S4.T9.1.1.1.1.1">Experiment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T9.1.1.1.2" style="padding-left:3.7pt;padding-right:3.7pt;">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T9.1.1.1.3" style="padding-left:3.7pt;padding-right:3.7pt;">MT-Bench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T9.1.1.1.4" style="padding-left:3.7pt;padding-right:3.7pt;">Response Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T9.1.1.1.5" style="padding-left:3.7pt;padding-right:3.7pt;">AIME</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T9.1.1.1.6" style="padding-left:3.7pt;padding-right:3.7pt;">MATH500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T9.1.1.1.7" style="padding-left:3.7pt;padding-right:3.7pt;">LCB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T9.1.1.1.8" rowspan="2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S4.T9.1.1.1.8.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T9.1.2.2">
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.1" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.2" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.3" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.4" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.5" style="padding-left:3.7pt;padding-right:3.7pt;">Lang</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.6" style="padding-left:3.7pt;padding-right:3.7pt;">Think</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.7" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.8" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.9" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.10" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.11" style="padding-left:3.7pt;padding-right:3.7pt;">EN</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.2.2.12" style="padding-left:3.7pt;padding-right:3.7pt;">TH</td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T9.1.3.3.1" style="padding-left:3.7pt;padding-right:3.7pt;">Typhoon2+SFT-v3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.2" style="padding-left:3.7pt;padding-right:3.7pt;">70.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.3" style="padding-left:3.7pt;padding-right:3.7pt;">60.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.4" style="padding-left:3.7pt;padding-right:3.7pt;">7.868</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.5" style="padding-left:3.7pt;padding-right:3.7pt;">6.412</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.6" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.3.3.6.1">98.6</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.7" style="padding-left:3.7pt;padding-right:3.7pt;">97.7</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.8" style="padding-left:3.7pt;padding-right:3.7pt;">10.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.9" style="padding-left:3.7pt;padding-right:3.7pt;">16.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.10" style="padding-left:3.7pt;padding-right:3.7pt;">72.8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.11" style="padding-left:3.7pt;padding-right:3.7pt;">67.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.12" style="padding-left:3.7pt;padding-right:3.7pt;">35.8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.13" style="padding-left:3.7pt;padding-right:3.7pt;">34.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T9.1.3.3.14" style="padding-left:3.7pt;padding-right:3.7pt;">59.0</th>
</tr>
<tr class="ltx_tr" id="S4.T9.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T9.1.4.4.1" style="padding-left:3.7pt;padding-right:3.7pt;">Best Model</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.2.1">85.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.3" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.3.1">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.4.1">8.843</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.5.1">7.181</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.6" style="padding-left:3.7pt;padding-right:3.7pt;">96.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.7" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.7.1">99.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.8" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.8.1">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.9" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.9.1">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.10" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.10.1">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.11.1">83.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.12" style="padding-left:3.7pt;padding-right:3.7pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.13" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.13.1">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.1.4.4.14" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.4.4.14.1">76.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two models: (1) Typhoon2+SFT-v3+M3, which represents the best-performing model obtained through a combination of supervised fine-tuning (SFT) and model merging, and (2) Typhoon2+SFT-v3, which utilizes only SFT without merging.  The comparison assesses their performance across various metrics including IFEval, MT-Bench, language accuracy, AIME, MATH500, and LiveCodeBench. This helps in understanding the contribution of model merging to the overall performance improvement, and whether SFT alone is sufficient to achieve comparable results.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance comparison between our best model(Typhoon2+SFT-v3+M3) and direct SFT(Typhoon2+SFT-v3).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T10.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T10.1.1.1.1" rowspan="2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S4.T10.1.1.1.1.1">Experiment</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T10.1.1.1.2" style="padding-left:1.4pt;padding-right:1.4pt;">IFEval</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T10.1.1.1.3" style="padding-left:1.4pt;padding-right:1.4pt;">MT-Bench</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T10.1.1.1.4" style="padding-left:1.4pt;padding-right:1.4pt;">Response Acc</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T10.1.1.1.5" style="padding-left:1.4pt;padding-right:1.4pt;">AIME</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T10.1.1.1.6" style="padding-left:1.4pt;padding-right:1.4pt;">MATH500</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T10.1.1.1.7" style="padding-left:1.4pt;padding-right:1.4pt;">LCB</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T10.1.1.1.8" rowspan="2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S4.T10.1.1.1.8.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T10.1.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.1" style="padding-left:1.4pt;padding-right:1.4pt;">EN</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.2" style="padding-left:1.4pt;padding-right:1.4pt;">TH</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.3" style="padding-left:1.4pt;padding-right:1.4pt;">EN</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.4" style="padding-left:1.4pt;padding-right:1.4pt;">TH</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.5" style="padding-left:1.4pt;padding-right:1.4pt;">Lang</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.6" style="padding-left:1.4pt;padding-right:1.4pt;">Think</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.7" style="padding-left:1.4pt;padding-right:1.4pt;">EN</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.8" style="padding-left:1.4pt;padding-right:1.4pt;">TH</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.9" style="padding-left:1.4pt;padding-right:1.4pt;">EN</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.10" style="padding-left:1.4pt;padding-right:1.4pt;">TH</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.11" style="padding-left:1.4pt;padding-right:1.4pt;">EN</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T10.1.2.2.12" style="padding-left:1.4pt;padding-right:1.4pt;">TH</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T10.1.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T10.1.3.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">Typhoon2 70B Instruct</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.3.1.2.1">88.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.3.1.3.1">81.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.3.1.4.1">8.856</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.3.1.5.1">7.362</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.3.1.6.1">98.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.7" style="padding-left:1.4pt;padding-right:1.4pt;">0.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.8" style="padding-left:1.4pt;padding-right:1.4pt;">10.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.9" style="padding-left:1.4pt;padding-right:1.4pt;">3.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.10" style="padding-left:1.4pt;padding-right:1.4pt;">66.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.11" style="padding-left:1.4pt;padding-right:1.4pt;">60.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.12" style="padding-left:1.4pt;padding-right:1.4pt;">39.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.13" style="padding-left:1.4pt;padding-right:1.4pt;">36.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T10.1.3.1.14" style="padding-left:1.4pt;padding-right:1.4pt;">54.0</td>
</tr>
<tr class="ltx_tr" id="S4.T10.1.4.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T10.1.4.2.1" style="padding-left:1.4pt;padding-right:1.4pt;">Typhoon2-R1-70B(Best Model)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.2" style="padding-left:1.4pt;padding-right:1.4pt;">85.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.3" style="padding-left:1.4pt;padding-right:1.4pt;">75.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.4" style="padding-left:1.4pt;padding-right:1.4pt;">8.843</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.5" style="padding-left:1.4pt;padding-right:1.4pt;">7.181</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.6" style="padding-left:1.4pt;padding-right:1.4pt;">96.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.4.2.7.1">99.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.4.2.8.1">63.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.4.2.9.1">46.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.4.2.10.1">90.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.11" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.4.2.11.1">83.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.12" style="padding-left:1.4pt;padding-right:1.4pt;">60.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.13" style="padding-left:1.4pt;padding-right:1.4pt;">57.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T10.1.4.2.14" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.4.2.14.1">76.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.1.5.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T10.1.5.3.1" style="padding-left:1.4pt;padding-right:1.4pt;">Deepseek R1 70B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.2" style="padding-left:1.4pt;padding-right:1.4pt;">85.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.3" style="padding-left:1.4pt;padding-right:1.4pt;">74.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.4" style="padding-left:1.4pt;padding-right:1.4pt;">8.939</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.5" style="padding-left:1.4pt;padding-right:1.4pt;">6.329</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.6" style="padding-left:1.4pt;padding-right:1.4pt;">19.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.7" style="padding-left:1.4pt;padding-right:1.4pt;">84.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.5.3.8.1">63.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.9" style="padding-left:1.4pt;padding-right:1.4pt;">40.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.10" style="padding-left:1.4pt;padding-right:1.4pt;">88.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.11" style="padding-left:1.4pt;padding-right:1.4pt;">78.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.12" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.5.3.12.1">64.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.13" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.1.5.3.13.1">62.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T10.1.5.3.14" style="padding-left:1.4pt;padding-right:1.4pt;">67.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of three different language models: Typhoon2 70B Instruct (a Thai-specialized model), Typhoon2 R1 70B (the best-performing model from the study, which combines Typhoon2 70B with DeepSeek R1 70B), and DeepSeek R1 70B Distill (a reasoning-focused model).  It evaluates their capabilities on various tasks, including instruction following (IFEval), machine translation (MT-Bench), language accuracy (Lang Acc), reasoning ability (AIME, MATH500, LiveCodeBench), and the tendency to generate 'thinking traces' (Think Acc). The results demonstrate the effectiveness of combining the strengths of a language-specific model and a reasoning-focused model using supervised fine-tuning (SFT) and model merging.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance comparison of Typhoon2 70B Instruct, Typhoon2 R1 70B (Best Model), and DeepSeek R1 70B Distill shows that we can combine the performance of two models into one using SFT and model merging.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T11.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T11.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T11.1.1.1.1" rowspan="2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S4.T11.1.1.1.1.1">Experiment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T11.1.1.1.2" style="padding-left:2.6pt;padding-right:2.6pt;">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T11.1.1.1.3" style="padding-left:2.6pt;padding-right:2.6pt;">MT-Bench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T11.1.1.1.4" style="padding-left:2.6pt;padding-right:2.6pt;">Response Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T11.1.1.1.5" style="padding-left:2.6pt;padding-right:2.6pt;">AIME</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T11.1.1.1.6" style="padding-left:2.6pt;padding-right:2.6pt;">MATH500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T11.1.1.1.7" style="padding-left:2.6pt;padding-right:2.6pt;">LCB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T11.1.1.1.8" rowspan="2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text" id="S4.T11.1.1.1.8.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T11.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.1" style="padding-left:2.6pt;padding-right:2.6pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.2" style="padding-left:2.6pt;padding-right:2.6pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.3" style="padding-left:2.6pt;padding-right:2.6pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.4" style="padding-left:2.6pt;padding-right:2.6pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.5" style="padding-left:2.6pt;padding-right:2.6pt;">Lang</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.6" style="padding-left:2.6pt;padding-right:2.6pt;">Think</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.7" style="padding-left:2.6pt;padding-right:2.6pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.8" style="padding-left:2.6pt;padding-right:2.6pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.9" style="padding-left:2.6pt;padding-right:2.6pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.10" style="padding-left:2.6pt;padding-right:2.6pt;">TH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.11" style="padding-left:2.6pt;padding-right:2.6pt;">EN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T11.1.2.2.12" style="padding-left:2.6pt;padding-right:2.6pt;">TH</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T11.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T11.1.3.1.1" style="padding-left:2.6pt;padding-right:2.6pt;">Sealion 70B Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.2" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.3.1.2.1">89.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.3" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.3.1.3.1">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.4" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.3.1.4.1">9.056</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.5" style="padding-left:2.6pt;padding-right:2.6pt;">6.972</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.6" style="padding-left:2.6pt;padding-right:2.6pt;">90.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.7" style="padding-left:2.6pt;padding-right:2.6pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.8" style="padding-left:2.6pt;padding-right:2.6pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.9" style="padding-left:2.6pt;padding-right:2.6pt;">6.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.10" style="padding-left:2.6pt;padding-right:2.6pt;">69.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.11" style="padding-left:2.6pt;padding-right:2.6pt;">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.12" style="padding-left:2.6pt;padding-right:2.6pt;">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.13" style="padding-left:2.6pt;padding-right:2.6pt;">25.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T11.1.3.1.14" style="padding-left:2.6pt;padding-right:2.6pt;">52.8</td>
</tr>
<tr class="ltx_tr" id="S4.T11.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T11.1.4.2.1" style="padding-left:2.6pt;padding-right:2.6pt;">Sealion 70B+SFT-v3+M3</th>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.2" style="padding-left:2.6pt;padding-right:2.6pt;">83.3</td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.3" style="padding-left:2.6pt;padding-right:2.6pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.4" style="padding-left:2.6pt;padding-right:2.6pt;">8.653</td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.5" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.4.2.5.1">7.104</span></td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.6" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.4.2.6.1">90.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.7" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.4.2.7.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.8" style="padding-left:2.6pt;padding-right:2.6pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.9" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.4.2.9.1">43.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.10" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.4.2.10.1">89.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.11" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.4.2.11.1">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.12" style="padding-left:2.6pt;padding-right:2.6pt;">59.4</td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.13" style="padding-left:2.6pt;padding-right:2.6pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T11.1.4.2.14" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.4.2.14.1">74.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T11.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T11.1.5.3.1" style="padding-left:2.6pt;padding-right:2.6pt;">Deepseek R1 70B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.2" style="padding-left:2.6pt;padding-right:2.6pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.3" style="padding-left:2.6pt;padding-right:2.6pt;">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.4" style="padding-left:2.6pt;padding-right:2.6pt;">8.939</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.5" style="padding-left:2.6pt;padding-right:2.6pt;">6.329</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.6" style="padding-left:2.6pt;padding-right:2.6pt;">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.7" style="padding-left:2.6pt;padding-right:2.6pt;">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.8" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.5.3.8.1">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.9" style="padding-left:2.6pt;padding-right:2.6pt;">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.10" style="padding-left:2.6pt;padding-right:2.6pt;">88.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.11" style="padding-left:2.6pt;padding-right:2.6pt;">78.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.12" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.5.3.12.1">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.13" style="padding-left:2.6pt;padding-right:2.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T11.1.5.3.13.1">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T11.1.5.3.14" style="padding-left:2.6pt;padding-right:2.6pt;">67.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of three different language models: the original Sealion 70B Instruct model, the Sealion model after applying the SFT-v3 and M3 methods (referred to as the 'best recipe'), and the DeepSeek R1 70B Distill model.  It shows the performance across several evaluation metrics including IFEval, MT-Bench, Language Accuracy, AIME, MATH500, and LiveCodeBench.  The goal is to demonstrate the transferability and effectiveness of the SFT-v3+M3 recipe to different models, specifically showcasing that the recipe can enhance the reasoning capabilities of a language-specific LLM (Sealion) without significantly compromising its performance on language tasks. The comparison highlights how the recipe improves reasoning capabilities while maintaining acceptable language performance.
> <details>
> <summary>read the caption</summary>
> Table 11: Performance comparison of Sealion 70B Instruct, Sealion 70B Instruct+SFT-v3+M3 (Best recipe), and DeepSeek R1 70B Distill demonstrates that this recipe can be transferred between different CPT/SFT recipes of language-specific LLMs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09056/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09056/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}