---
title: "Language Complexity Measurement as a Noisy Zero-Shot Proxy for Evaluating LLM Performance"
summary: "LLMs' performance on language complexity tasks (LIX & ADD) reveals a strong correlation with general capabilities, suggesting complexity metrics as noisy zero-shot proxies for model evaluation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 KTH Royal Institute of Technology",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11578 {{< /keyword >}}
{{< keyword icon="writer" >}} Birger Moell et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11578" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11578" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11578/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are rapidly advancing, but their capabilities in mathematical and analytical tasks remain a challenge. This paper explores LLMs' performance in language complexity measurement, specifically using the LIX readability metric and Average Dependency Distance (ADD). It evaluates six state-of-the-art LLMs on these tasks using Swedish essays, comparing their results to ground truths. 

The study reveals that while all LLMs demonstrate some capacity for these tasks, ChatGPT-01-mini performs most consistently, achieving the highest accuracy.  Importantly, a significant negative correlation is found between models' accuracy in computing LIX and their overall performance on the Massive Multitask Language Understanding (MMLU) benchmark. This suggests that language complexity measurement abilities can serve as **noisy zero-shot proxies for assessing the general capabilities of LLMs**, offering a more efficient model evaluation method.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Language complexity measurement (LIX and ADD) can serve as a noisy zero-shot proxy for evaluating LLM performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A strong correlation exists between LLMs' accuracy in calculating LIX and their overall performance on the MMLU benchmark. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ChatGPT-01-mini shows the most consistent performance in both LIX computation and dependency parsing. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it proposes a novel zero-shot proxy for evaluating LLMs using language complexity metrics. This method is **cost-effective and avoids the need for extensive benchmark datasets**, offering a practical approach for researchers and developers. Its findings also shed light on the relationship between language complexity and overall LLM capabilities, paving the way for future research on more efficient and effective LLM evaluation methods. The study also highlights the **limitations of LLMs in mathematical and analytical tasks**, demonstrating the need for further advancements in these areas.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">MMLU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">LIX Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.2.1.1">Gemini-1.5-pro</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.2.1.2">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.2.1.3">19.72</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T1.1.3.2.1">Gemini-2.0-flash</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.3.2.2">87.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.3.2.3">10.42</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T1.1.4.3.1">llama-70b</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.4.3.2">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.4.3.3">20.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T1.1.5.4.1">llama-70b 3.3</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.5.4.2">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.5.4.3">18.64</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T1.1.6.5.1">GPT-4o-mini</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.6.5.2">88.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.6.5.3">9.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S4.T1.1.7.6.1">o1-mini</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.7.6.2">90.8</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.7.6.3">7.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the Massive Multitask Language Understanding (MMLU) benchmark scores and the corresponding LIX error values for six different large language models (LLMs).  The MMLU score reflects each model's overall performance across various tasks, while the LIX error represents the deviation between the model's calculated LIX readability score and the ground truth LIX score for a set of Swedish texts.  This comparison allows for an analysis of the relationship between a model's general performance (MMLU) and its ability to accurately assess text readability (LIX).
> <details>
> <summary>read the caption</summary>
> Table 1: MMLU and LIX error for various models
> </details>





### In-depth insights


#### LLM Complexity Proxy
The concept of an "LLM Complexity Proxy" proposes using readily measurable aspects of LLM performance as indicators of their overall capabilities.  **The core idea is to avoid extensive, resource-intensive benchmark testing by identifying simpler, correlated tasks.** This approach is particularly valuable for evaluating analytical abilities often lacking in LLMs.  For instance, measuring an LLM's accuracy in calculating readability metrics (like LIX) or performing dependency parsing to compute Average Dependency Distance (ADD) could act as effective proxies.  **A strong correlation between performance on these simpler tasks and established general-purpose benchmarks (like MMLU) would validate the proxy's effectiveness.** However, it's crucial to acknowledge potential limitations.  **The proxy might be noisy, meaning that the correlation isn't perfect.**  Furthermore, the choice of proxy tasks is critical; they must be relevant and representative of the broader capabilities being assessed, otherwise, the prediction will lack validity.  The inherent complexities of LLMs, such as variations in tokenization and model architectures, require careful consideration when interpreting results.  Future research should focus on refining and validating these proxies, potentially creating a tiered system where proxies assess different aspects of LLM capabilities. This proxy methodology offers a potential pathway toward efficient and practical LLM evaluation.

#### Swedish LLM Test
A hypothetical "Swedish LLM Test" would involve evaluating the performance of large language models (LLMs) on tasks specifically designed using Swedish language data. This would go beyond simply translating English prompts and evaluating the output in English.  **Key aspects would include using Swedish text corpora for training and evaluation**, assessing the models' understanding of Swedish grammar and semantics, including subtleties like word order and complex sentence structures. The test could involve tasks such as **text summarization, question answering, machine translation (to and from Swedish), and sentiment analysis**, all performed on uniquely Swedish datasets.  Crucially, it needs to address the issue of resource availability, as sufficient high-quality Swedish datasets might be comparatively limited, necessitating careful dataset curation and potentially the development of new evaluation metrics tailored to the nuances of the Swedish language.  **A successful Swedish LLM Test would provide valuable insights into the capabilities of LLMs in handling morphologically rich and relatively low-resource languages**, informing the development of more robust and adaptable multilingual models.

#### MMLU Correlation
The analysis of the correlation between Massive Multitask Language Understanding (MMLU) scores and language complexity metrics reveals a **strong negative correlation**, suggesting that LLMs with higher MMLU scores demonstrate better accuracy in computing language complexity metrics such as LIX.  This indicates that **an LLM's proficiency in complex analytical tasks is linked to its ability to correctly process linguistic structures and compute readability metrics**.  The negative correlation implies that as a model's overall performance (as measured by MMLU) increases, its errors in language complexity calculations decrease. This is a valuable insight because it suggests that language complexity assessment can serve as a **noisy but efficient zero-shot proxy for evaluating broader LLM capabilities**, thereby reducing the need for extensive, resource-intensive benchmarking datasets.  The statistical significance of this correlation supports the validity of using LIX computation accuracy as a helpful indicator of an LLM's overall proficiency.

#### Dependency Parsing
The research paper section on "Dependency Parsing" likely delves into how well large language models (LLMs) can analyze sentence structure by identifying the relationships between words.  This is a crucial aspect of natural language understanding, and the authors likely used **metrics like the Unlabeled Attachment Score (UAS)** to quantitatively assess the models' performance in this task.  **A higher UAS score would indicate greater accuracy in correctly identifying the dependencies between words** within a sentence's dependency tree.  The evaluation likely involved comparing the LLMs' dependency parses to a gold standard, such as human-annotated trees. The analysis may further explore which types of dependencies are more challenging for LLMs to accurately parse.  For instance, the performance differences between parsing simple subject-verb-object relationships versus more complex structures with multiple clauses are important.  Ultimately, this section would provide evidence about the strength and limitations of LLMs in handling the complexities of syntactic structures, a key component of natural language understanding tasks.

#### Future of LLMs
The future of LLMs is brimming with potential, yet fraught with challenges.  **Improved reasoning and problem-solving capabilities** are crucial; current LLMs often struggle with tasks requiring mathematical precision or complex logical inference.  **Enhanced explainability and transparency** are also vital, enabling better understanding of model decisions and fostering trust.  Addressing **biases and ethical concerns** is paramount, requiring careful data curation and model training techniques to mitigate harmful outputs.  **More efficient and resource-friendly models** will be essential for widespread accessibility and deployment.  Finally, **interoperability and standardization** will facilitate seamless collaboration and integration of LLMs into diverse applications and workflows.  The future hinges on achieving a sophisticated balance between advancing performance and mitigating potential risks.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">ADD diff 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">ADD diff 2</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T2.1.2.1.1">Gemini-1.5-pro</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.2.1.2">1.02</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.2.1.3">3.54</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.1.3.2.1">Gemini-2.0-flash</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.3.2.2">0.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.3.2.3">0.41</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.1.4.3.1">llama-70b</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.4.3.2">0.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.4.3.3">0.64</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.1.5.4.1">GPT-4o-mini</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.5.4.2">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.5.4.3">1.38</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S4.T2.1.6.5.1">o1-mini</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.1.6.5.2">0.64</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.1.6.5.3">0.12</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the Average Dependency Distance (ADD) computed in two different ways: first, by comparing the model's produced dependency trees against ground truth, and second, by comparing the ADD values reported by the models themselves against the actual ADD values calculated from their produced dependency trees.  ADD diff 1 shows the average absolute difference between the ADD calculated from ground truth dependency trees and the model's dependency trees. ADD diff 2 displays the average absolute difference between the model-reported ADD and the actual ADD obtained from the model's dependency trees.
> <details>
> <summary>read the caption</summary>
> Table 2: ADD diff 1 = Average absolute difference between ADD in the ground truth dependency trees and the dependency trees produced by various models. ADD diff 2 = Average absolute difference between the actual ADD in the dependency trees computed by the model, and the ADD reported by the models themselves.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="A1.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A1.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.1">Label / Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.2.1">Gemini-pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.3.1">Gemini-2.0-flash</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.4.1">llama-70b</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.5.1">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.6.1">o1-mini</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A1.T3.1.2.2.1">ADJ</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.2.2.2">0.49</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.2.2.3">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.2.2.4">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.2.2.5">0.59</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.2.2.6">0.71</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.3.3.1">ADP</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.3.3.2">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.3.3.3">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.3.3.4">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.3.3.5">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.3.3.6">0.13</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.4.4.1">ADV</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.4.4.2">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.4.4.3">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.4.4.4">0.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.4.4.5">0.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.4.4.6">0.62</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.5.5.1">AUX</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.5.5.2">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.5.5.3">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.5.5.4">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.5.5.5">0.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.5.5.6">0.32</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.6.6.1">CCONJ</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.6.6.2">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.6.6.3">0.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.6.6.4">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.6.6.5">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.6.6.6">0.08</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.7.7.1">DET</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.7.7.2">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.7.7.3">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.7.7.4">0.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.7.7.5">0.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.7.7.6">0.76</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.8.8.1">NOUN</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.8.8.2">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.8.8.3">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.8.8.4">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.8.8.5">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.8.8.6">0.37</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.9.9.1">NUM</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.9.9.2">0.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.9.9.3">0.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.9.9.4">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.9.9.5">0.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.9.9.6">0.45</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.10.10.1">PART</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.10.10.2">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.10.10.3">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.10.10.4">0.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.10.10.5">0.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.10.10.6">0.49</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.11.11.1">PRON</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.11.11.2">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.11.11.3">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.11.11.4">0.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.11.11.5">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.11.11.6">0.46</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.12.12.1">PROPN</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.12.12.2">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.12.12.3">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.12.12.4">0.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.12.12.5">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.12.12.6">0.30</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.13.13.1">PUNCT</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.13.13.2">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.13.13.3">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.13.13.4">0.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.13.13.5">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.13.13.6">0.49</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.14.14.1">SCONJ</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.14.14.2">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.14.14.3">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.14.14.4">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.14.14.5">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.14.14.6">0.18</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T3.1.15.15.1">VERB</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.15.15.2">0.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.15.15.3">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.15.15.4">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.15.15.5">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.15.15.6">0.26</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A1.T3.1.16.16.1">Micro-average (UAS)</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.16.16.2">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.16.16.3">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.16.16.4">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.16.16.5">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.16.16.6">0.38</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="A1.T3.1.17.17.1">Macro-average (UAS)</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T3.1.17.17.2">0.27</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T3.1.17.17.3">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T3.1.17.17.4">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T3.1.17.17.5">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T3.1.17.17.6">0.40</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different Large Language Models (LLMs) in dependency parsing. It shows the Unlabeled Attachment Score (UAS) for each model across various parts-of-speech (POS) tags. The UAS measures the accuracy of the model's prediction of the correct head for each word in a sentence.  A higher UAS indicates better performance.  The table also provides micro-averaged and macro-averaged UAS scores, which represent the average UAS across all data points and all POS tags, respectively.
> <details>
> <summary>read the caption</summary>
> Table 3: The table shows how well various models predicted the correct heads to words of various parts-of-speech, relative to the ground truth as given by Stanza. The final rows shows the UAS averaged over all datapoints (micro-average) and over all part-of-speech classes (macro-average). We are using the standard set of parts-of-speech according to Universal Dependencies (https://universaldependencies.org/u/pos/index.html)
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11578/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11578/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11578/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11578/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11578/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11578/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11578/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11578/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}