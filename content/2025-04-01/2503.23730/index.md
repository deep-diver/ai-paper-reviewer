---
title: "KOFFVQA: An Objectively Evaluated Free-form VQA Benchmark for Large Vision-Language Models in the Korean Language"
summary: "KOFFVQA: Objectively evaluates Korean VLMs with a new free-form VQA benchmark, improving evaluation reliability via detailed grading criteria."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 MAUM AI Inc.",]
showSummary: true
date: 2025-03-31
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23730 {{< /keyword >}}
{{< keyword icon="writer" >}} Yoonshik Kim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23730" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23730" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23730/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses the challenge of reliably evaluating Large Vision-Language Models(VLMs), particularly in languages other than English. Existing benchmarks often force models to select from pre-defined answers, limiting their open-endedness, or rely on subjective judge models, which can be unreliable. Additionally, there's a lack of benchmarks for Korean VLMs, critical because language models perform differently across languages. To solve this, the paper aims to provide an improved method by focusing on objectively evaluating such open-ended responses in VLM. 



The authors introduce **KOFFVQA**, a new free-form visual question answering benchmark in Korean. It contains carefully designed questions paired with images and grading criteria. An LLM judge scores responses based on these criteria, enhancing reliability. The evaluation is designed in an objective manner, so that even small open-source models can evaluate other models. Experiments show this method is more reliable than existing approaches. By releasing KOFFVQA and its evaluation code, the researchers enhance VLM assessment in Korean, promoting more accurate and reliable model development.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} KOFFVQA, a new Korean VQA benchmark, enables objective evaluation via detailed grading criteria. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Using pre-defined criteria improves evaluation consistency compared to comparing with a baseline. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Direct visual input to VLM judges can reduce evaluation accuracy due to hallucinations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces KOFFVQA, a novel benchmark addressing the need for **objective VQA evaluation** in Korean. By providing detailed grading criteria, it significantly **improves evaluation reliability**. Also, it offers essential data and insights for **developing more effective VLMs** in Korean.

------
#### Visual Insights



![](https://arxiv.org/html/2503.23730/extracted/6322467/figures/fig0.png)

> 🔼 Figure 1 shows a pie chart that breaks down the distribution of question categories and subcategories within the KOFFVQA benchmark dataset.  Each slice of the pie represents a category, with the size of each slice corresponding to the percentage of questions in that category. Categories include 'Perception', 'Reasoning', 'Understanding', and 'Safety and Bias'.  Each major category is further divided into subcategories, shown in the legend, which further specify the types of questions within each major category (e.g., 'Object Attributes' under the 'Perception' category).  This visualization provides a clear overview of the KOFFVQA benchmark's composition and emphasis on different aspects of VLM performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Distribution of question categories and subcategories in the KOFFVQA benchmark.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.2.1">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<td class="ltx_td ltx_border_t" id="S4.T2.2.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.1.2">Gemma 2 9B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.1.3">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.1.4">Gemini 2.0 Flash</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1">KOFFVQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2">0.398</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.3">0.171</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.4">0.127</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3">
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.1">KOFFVQA-V</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3">0.208</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.4">0.254</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4">
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1">KOFFVQA-GT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.2">0.584</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3">0.456</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4">0.476</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.2.1.5.1">KOFFVQA-GT-V</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.2.1.5.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.2.1.5.3">0.452</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.2.1.5.4">0.426</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of the top 21 out of 47 large vision-language models (VLMs) evaluated using the KOFFVQA benchmark.  The models are ranked by their overall scores, which are calculated across multiple subcategories assessing various aspects of VLM performance.  The results show that model size does not directly correlate with better performance, and that models might excel in certain subcategories while underperforming in others.  For a complete list of results for all 47 models, refer to the Hugging Face space link provided.
> <details>
> <summary>read the caption</summary>
> Table 1: Selected evaluation results for the top scoring 21 VLMs out of the 47 total models tested on our benchmark. A larger model size does not necessarily correspond to better performance, and models that excel in some subcategories may not do well in others. Due to the page limit, we show the entire model’s result in https://huggingface.co/spaces/maum-ai/KOFFVQA-Leaderboard
> </details>





### In-depth insights


#### Korean VLM Eval
Based on the broader context, a section on "Korean VLM Eval" would likely address the specific challenges and considerations involved in evaluating Vision-Language Models (VLMs) for the Korean language. A core aspect would be the **lack of dedicated benchmarks** compared to English, necessitating the creation of new evaluation datasets tailored to the nuances of Korean. It would discuss **how translation is insufficient** as the performance of generative language models differs greatly based on language. This section would also discuss ways of evaluating the **reliability** of VLM's, and the pros and cons of **LLM as a judge.** The section would explore metrics that can accurately measure a model's comprehension and generation abilities in Korean, accounting for grammatical complexities and cultural context. Further insights might compare the effectiveness of closed and open-source Korean VLMs, plus analyzing failure cases to improve performance.

#### Objective VQA
While the paper doesn't explicitly use the heading 'Objective VQA,' the core theme revolves around achieving objective evaluation in Visual Question Answering, particularly for Korean language VLMs. The authors address the common problem of **subjectivity and unreliability** in VQA benchmarks that rely on LLM judges for free-form responses. Their approach, embodied in KOFFVQA, champions the use of **pre-defined, question-specific grading criteria** to guide the LLM judge, minimizing subjective interpretation. This focus on objective assessment is crucial because it allows for **fairer and more reproducible** comparisons between different VLMs. By defining clear rules for evaluating responses, even smaller, open-source models can be used to reliably assess VLM performance. This ensures that the VQA benchmarks do not suffer from issues like judge bias towards certain models or inconsistencies arising from subjective quality assessments. The careful construction of the benchmark, along with the defined grading criteria, makes the evaluation process more systematic.

#### KOFFVQA tasks
The study introduces **KOFFVQA, a Korean VQA benchmark with fine-grained evaluation criteria**. Tasks are categorized into Perception, Reasoning, and Safety/Bias. **Perception assesses basic visual understanding** via object attributes, relationships, and recognition (including Korean-specific elements). **Reasoning evaluates higher-level scene interpretation** through commonsense, document, table, and graph/chart understanding. **Safety/Bias focuses on mitigating language-based hallucinations**, crucial for VLM reliability. This comprehensive task design ensures a thorough assessment of VLM capabilities relevant to real-world Korean language applications.

#### VLM as Judge Bias
**VLMs as judges can exhibit biases**, influenced by factors like training data and model architecture. This can lead to unfair evaluations, particularly when assessing models with different architectures or those trained on less represented data. VLMs might favor responses similar to their training data, creating a **positive feedback loop that amplifies existing biases**. When assessing generative models, a VLM judge's own generation capabilities and stylistic preferences can inadvertently influence its judgment, potentially **undervaluing creativity** or penalizing responses that deviate from its expectations. Careful design of evaluation protocols and employing diverse, calibrated VLM judges is crucial to mitigating these biases.

#### LLM Judge Robust
While the term "LLM Judge Robust" isn't explicitly present in the provided paper, the research delves deeply into the reliability and consistency of using LLMs as judges for evaluating Vision-Language Models (VLMs). A core finding is that **VLM-as-a-judge setups can be surprisingly susceptible to hallucinations**. This means that when an LLM judge is given visual input (the image from the VQA task), it might misinterpret or invent details, leading to inconsistent grading. The authors' method of providing explicit, pre-defined grading criteria to the LLM judge is a significant step towards improving robustness. **This approach aims to ground the LLM's evaluation in objective rules rather than subjective interpretations**, making the evaluation process more reliable and less prone to biases or hallucinations. Moreover, it makes the evaluation process more accessible since smaller open-source LLMs can also be utilized.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.23730/extracted/6322467/figures/fig1.png)

> 🔼 Figure 2 showcases three example questions from each of the three main categories (Perception, Reasoning, Safety and Bias) within the KOFFVQA benchmark.  Each example includes the original Korean question and its English translation. The key feature is the inclusion of detailed grading criteria, accompanied by the partial scores assigned to each criterion.  These criteria are crucial because they provide objective guidelines that the LLM judge uses to evaluate the VLM's response. This objective evaluation strategy is a core aspect of the KOFFVQA methodology.
> <details>
> <summary>read the caption</summary>
> Figure 2: Three examples from each main category of our benchmark. The left column is the original text in Korean, and the right column provides the English translation. Grading criteria paired with partial points are given to the judge model to evaluate the VLM’s response.
> </details>



![](https://arxiv.org/html/2503.23730/extracted/6322467/figures/fig2.png)

> 🔼 This figure shows an example where a large language model (LLM), specifically GPT-40, evaluates a VLM response differently depending on whether or not an image is provided.  When only the response and grading criteria are given, the LLM accurately assesses the answer. However, when the image is included, the LLM incorrectly judges the response due to hallucinating a detail in the image (misinterpreting the color of a door). This demonstrates that providing images to the LLM judge, in this case, negatively impacts the consistency of the evaluation because the visual input leads to unreliable judgments.
> <details>
> <summary>read the caption</summary>
> Figure 3: An example of a response that GPT-4o grades correctly when the image is not given as input but grades incorrectly when the image is given. The left columns are the original text in Korean, and the right columns provide the English translations. When the image is given, the judge model attempts to judge the response based on the image and hallucinates that the door in the middle of the photograph is green. When the image is not given, the judge has no reason to grade the response based on anything other than the given criteria.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23730/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23730/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}