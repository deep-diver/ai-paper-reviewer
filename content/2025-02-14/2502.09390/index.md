---
title: "SQuARE: Sequential Question Answering Reasoning Engine for Enhanced Chain-of-Thought in Large Language Models"
summary: "SQUARE, a novel prompting technique, enhances LLM reasoning by prompting self-interrogation through sequential question answering, significantly outperforming traditional methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Intel Labs",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09390 {{< /keyword >}}
{{< keyword icon="writer" >}} Daniel Fleischer et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09390" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09390" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09390/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) often struggle with complex reasoning tasks.  Traditional methods like chain-of-thought prompting show some promise but are limited.  This necessitates improved techniques to fully exploit LLM reasoning potential. 

The paper introduces SQUARE (Sequential Question Answering Reasoning Engine), a novel prompting technique.  **SQUARE guides LLMs to generate and answer multiple sub-questions before tackling the main query**, improving reasoning by systematically decomposing complex queries into smaller, manageable steps.  Evaluations on several datasets show SQUARE's superior performance over existing methods, demonstrating the effectiveness of its self-interrogation paradigm.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SQUARE significantly improves LLM reasoning capabilities compared to existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The self-interrogation paradigm in SQUARE promotes a thorough exploration of a topic. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SQUARE's code is publicly available, facilitating further research and application. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working with LLMs because it introduces a novel prompting technique to significantly improve reasoning capabilities.  **SQUARE's effectiveness across multiple datasets and models**, along with its publicly available code, makes it readily applicable and promotes further research into advanced prompting strategies and self-interrogation paradigms.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09390/x1.png)

> 🔼 The figure illustrates the SQUARE method's operation.  It shows how SQUARE prompts a language model to generate multiple question-answer pairs (N) related to the main query before answering it. This approach builds context and enables the model to explore different facets of the topic more thoroughly, enhancing its ability to answer complex questions accurately.
> <details>
> <summary>read the caption</summary>
> Figure 1: The SQuARE methods prompts the model to generate N𝑁Nitalic_N question-answer pairs about the topic and then respond to the original query, having established additional context.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S0.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S0.T1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S0.T1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S0.T1.1.1.1.1.1">
<span class="ltx_p" id="S0.T1.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="S0.T1.1.1.1.1.1.1.1">You are a helpful question answerer who can provide an answer given a question and relevant context.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S0.T1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S0.T1.1.2.2.1.1">
<span class="ltx_p" id="S0.T1.1.2.2.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="S0.T1.1.2.2.1.1.1.1">Generate {N} questions based on the given question and context, and shortly answer them.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S0.T1.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S0.T1.1.3.3.1.1">
<span class="ltx_p" id="S0.T1.1.3.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="S0.T1.1.3.3.1.1.1.1">Finally, provide an answer to the original question using what you learned from answering the questions you created.
The answer should be a short span, just a few words.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the main prompt used for the SQUARE technique.  The prompt instructs the language model to act as a question answerer, generating a specified number of sub-questions based on the given question and context.  It then requires the model to answer these sub-questions concisely before ultimately providing a brief answer to the original question, leveraging insights gained from the intermediate steps.
> <details>
> <summary>read the caption</summary>
> Table 1: Main prompt for the SQuARE technique.
> </details>





### In-depth insights


#### SQUARE: Reasoning Engine
The SQUARE reasoning engine, as described in the research paper, presents a novel prompting technique designed to significantly enhance the reasoning capabilities of Large Language Models (LLMs).  It achieves this by implementing a **self-interrogation paradigm**, prompting the model to generate and answer multiple auxiliary questions before tackling the main query. This systematic decomposition of complex questions allows for a **more thorough exploration of various aspects of the topic**, leading to more accurate and comprehensive answers. Unlike traditional chain-of-thought prompting, SQUARE's iterative questioning process promotes a deeper understanding and more robust reasoning. The evaluation results across multiple datasets and LLMs, notably Llama and GPT-4, demonstrate that SQUARE consistently outperforms baseline methods, showcasing its effectiveness in improving LLM reasoning capabilities. The technique's **iterative, self-directed questioning** sets it apart, moving beyond the limitations of single-step reasoning and showing significant potential for advancing LLM performance in complex reasoning tasks.

#### Self-Interrogation Paradigm
The "Self-Interrogation Paradigm" presents a novel approach to enhancing Large Language Model (LLM) reasoning.  Instead of relying solely on external prompts, this paradigm encourages the LLM to engage in a **process of self-questioning**. This involves prompting the model to generate and subsequently answer intermediate questions related to the main query.  This iterative process allows for a more thorough exploration of the problem space, potentially uncovering hidden aspects or nuances that would be missed in a simpler chain-of-thought approach. The key benefit lies in the **LLM's active participation** in shaping its own reasoning path, leading to more robust and comprehensive solutions, particularly in complex tasks.  The efficacy of this approach relies on the model's ability to generate relevant and insightful auxiliary questions, which may require careful prompt engineering and potentially further fine-tuning to optimize the model's capacity for self-directed inquiry.  Further research could explore the application of this paradigm to other LLM tasks and the development of techniques to guide and evaluate the self-interrogation process more effectively. **Scalability** and computational cost will also need to be addressed given the inherent iterative nature of the process.

#### LLM Reasoning Enhancements
LLM reasoning enhancements are a critical area of research, focusing on improving the capacity of large language models to perform complex reasoning tasks.  **Current methods often fall short**, particularly when dealing with multi-step reasoning or problems requiring external knowledge.  Strategies like chain-of-thought prompting have shown promise, guiding the LLM through intermediate steps, but **further advancements are needed**.  **Self-interrogation techniques**, where the LLM generates and answers its own auxiliary questions, offer a powerful approach to enhancing thoroughness and exploration of the problem space.  **Systematic decomposition of queries** is key to unlocking improved reasoning capabilities, allowing the model to tackle complex problems more effectively.  However, **challenges remain in balancing thoroughness with computational efficiency**, particularly for resource-intensive models.  Furthermore, **robust evaluation methodologies are crucial** to objectively assess the effectiveness of different enhancement strategies, considering factors like dataset characteristics, and model architecture.  Future research should focus on developing more adaptive and efficient prompting techniques and better methods to analyze and validate LLM reasoning outputs.  **Combining techniques**, such as self-interrogation with external knowledge retrieval, and exploring various aggregation methods for combining sub-question answers, are promising avenues for future investigation.

#### Ablation Study: Insights
An ablation study systematically removes components of a model or system to assess their individual contributions.  In the context of a question answering model, this might involve removing elements such as the self-interrogation module, the number of sub-questions generated, or the few-shot examples provided during training.  **Insights from such a study would highlight the relative importance of each component.** For example, removing the self-interrogation module and observing a significant performance drop would indicate its critical role in enhancing reasoning capabilities. Similarly, analyzing the effect of varying the number of sub-questions would reveal the optimal level of decomposition for achieving a balance between accuracy and computational cost. The impact of removing few-shot examples would reveal the model's ability to generalize knowledge without explicit examples, indicating its learning efficiency and robustness. **Overall, the ablation study provides a granular understanding of the model's internal workings and identifies key components driving its success, paving the way for further model improvements and optimization.**

#### Future Research Needs
Future research should prioritize enhancing the adaptability of SQUARE to diverse query complexities and domains.  **Determining the optimal number of sub-questions dynamically** is crucial, avoiding redundancy or insufficient exploration.  The generalizability of SQUARE across various question types and datasets beyond those initially tested needs further investigation.  **Addressing the computational cost** associated with generating and answering multiple sub-questions is vital for real-world applications, potentially exploring efficient question generation mechanisms or parallel processing techniques.  Finally, **mitigating potential ethical concerns** such as the generation of misleading or harmful information is paramount, requiring safeguards to ensure accuracy and fairness in responses.  Rigorous evaluation across a broader range of LLM architectures is essential to ascertain the technique's effectiveness and scalability.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T2.3.1.1.1">Dataset</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T2.3.1.1.2">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.3.1.1.3">Baseline</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.3.1.1.4">RAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.3.1.1.5">CoT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.3.1.1.6">RaR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.3.1.1.7">SQuARE</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.3.2.1">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_t" id="S2.T2.3.2.1.1" rowspan="3"><span class="ltx_text" id="S2.T2.3.2.1.1.1">TriviaQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.3.2.1.2">Llama-3.2 3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.2.1.3">59.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.2.1.4">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.2.1.5">87.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.2.1.6">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.2.1.7"><span class="ltx_text ltx_font_bold" id="S2.T2.3.2.1.7.1">88.5</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.3.3.2.1">Llama-3.1 8B</th>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.2.2">76.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.2.3">89.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.2.4">90.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.2.5">89.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.3.2.6"><span class="ltx_text ltx_font_bold" id="S2.T2.3.3.2.6.1">92.5</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.3.4.3.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S2.T2.3.4.3.2">88.7</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.4.3.3">92.7</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.4.3.4">92.7</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.4.3.5">94.7</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.4.3.6"><span class="ltx_text ltx_font_bold" id="S2.T2.3.4.3.6.1">96.7</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.5.4">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_t" id="S2.T2.3.5.4.1" rowspan="3"><span class="ltx_text" id="S2.T2.3.5.4.1.1">HotpotQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.3.5.4.2">Llama-3.2 3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.5.4.3">17.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.5.4.4">26.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.5.4.5">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.5.4.6">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.5.4.7"><span class="ltx_text ltx_font_bold" id="S2.T2.3.5.4.7.1">31.5</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.3.6.5.1">Llama-3.1 8B</th>
<td class="ltx_td ltx_align_center" id="S2.T2.3.6.5.2">23.0</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.6.5.3">26.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.6.5.4">31.0</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.6.5.5">28.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.6.5.6"><span class="ltx_text ltx_font_bold" id="S2.T2.3.6.5.6.1">33.5</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.3.7.6.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S2.T2.3.7.6.2">44.0</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.7.6.3">45.3</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.7.6.4">46.7</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.7.6.5"><span class="ltx_text ltx_font_bold" id="S2.T2.3.7.6.5.1">47.3</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.7.6.6">46.7</td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.8.7">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S2.T2.3.8.7.1" rowspan="3"><span class="ltx_text" id="S2.T2.3.8.7.1.1">ASQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T2.3.8.7.2">Llama-3.2 3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.8.7.3">14.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.8.7.4">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.8.7.5">21.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.8.7.6">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.3.8.7.7"><span class="ltx_text ltx_font_bold" id="S2.T2.3.8.7.7.1">26.6</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T2.3.9.8.1">Llama-3.1 8B</th>
<td class="ltx_td ltx_align_center" id="S2.T2.3.9.8.2">14.6</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.9.8.3">23.1</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.9.8.4">24.8</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.9.8.5">25.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.3.9.8.6"><span class="ltx_text ltx_font_bold" id="S2.T2.3.9.8.6.1">28.8</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.3.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S2.T2.3.10.9.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.3.10.9.2">26.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.3.10.9.3">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.3.10.9.4"><span class="ltx_text ltx_font_bold" id="S2.T2.3.10.9.4.1">31.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.3.10.9.5">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.3.10.9.6">31.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different question answering methods on three benchmark datasets: TriviaQA, HotpotQA, and ASQA.  Results are shown for three different large language models: Llama-3.2 3B, Llama-3.1 8B, and GPT-40. Each row shows the performance of a single model on a specific dataset using a different technique.  The techniques include a baseline approach, Retrieval Augmented Generation (RAG), Chain-of-Thought (CoT) prompting, rephrase-and-respond (RaR), and the proposed SQUARE method.  The best performing method for each model and dataset is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 2: The main results of our experimentation. Each row group corresponds to the results for the given dataset, with each row showcasing the metric results for each model. The columns include all the main approaches, with bold highlighting the best result across all approaches.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.2">Dataset</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.1"><math alttext="N" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">italic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.3">SQuARE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.4">+Summarize</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.5">+Vote</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.2.1.1" rowspan="3"><span class="ltx_text" id="S4.T3.1.2.1.1.1">TriviaQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.2.1.2">3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.3">92.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.4">87.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.5">81.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.3.2.1">5</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.3.2.2.1">94.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.3">85.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.4">78.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.4.3.1">10</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.3.2.1">94.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.3.3">88.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.3.4">89.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.4">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.5.4.1" rowspan="3"><span class="ltx_text" id="S4.T3.1.5.4.1.1">HotpotQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.5.4.2">3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.5.4.3.1">33.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.4.4">30.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.4.5">23.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.6.5.1">5</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.5.2">31.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.5.3">31.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.5.4">22.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.7.6.1">10</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.7.6.2.1">33.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.6.3">29.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.6.4">23.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.8.7">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.1.8.7.1" rowspan="3"><span class="ltx_text" id="S4.T3.1.8.7.1.1">ASQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.8.7.2">3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.8.7.3.1">28.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.7.4">20.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.7.5">23.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.9.8.1">5</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.8.2">27.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.8.3">22.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.8.4">23.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.10.9.1">10</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.10.9.2">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.10.9.3">23.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.10.9.4">22.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares three methods for aggregating the results of SQUARE: using no aggregation, summarizing the answers, and voting on the answers.  It also shows how the performance of the Llama-3.1 8B model changes when varying the number of sub-questions (N) generated by the SQUARE method. The results are based on experiments using a few-shot learning approach with adapted examples, as detailed in Appendix A.2 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of two aggregation methods in addition to SQuARE, and the effect of varying the number of sub-questions (N𝑁Nitalic_N). Results showcase the Llama-3.1 8B model with few-shot examples adapted for each approach, as detailed in Section A.2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T4.1.1.1.1">Dataset</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T4.1.1.1.2">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.3">Baseline</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.4">RAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.5">CoT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.6">RaR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.7">SQuARE-3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.8">SQuARE-5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.9">SQuARE-10</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.2.1.1" rowspan="3"><span class="ltx_text" id="A1.T4.1.2.1.1.1">TriviaQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.2.1.2">Llama-3.2 3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.3">59.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.4">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.5">57.0 / 87.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.6">67.5 / 86.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.7">89.5 / 88.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.8">89.5 / 89.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.9">86.0 / 86.5</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.3.2.1">Llama-3.1 8B</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.2">76.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.3">89.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.4">53.5 / 90.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.5">84.0 / 89.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.6">72.5 / 92.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.7">89.0 / 94.0</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.8">76.5 / 94.0</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.4.3.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.2">88.7</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.3">92.7</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.4">01.3 / 92.7</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.5">87.3 / 94.7</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.6">84.7 / 96.7</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.7">84.0 / 96.7</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.8">86.0 / 95.3</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.5.4.1" rowspan="3"><span class="ltx_text" id="A1.T4.1.5.4.1.1">HotpotQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.5.4.2">Llama-3.2 3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.5.4.3">17.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.5.4.4">26.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.5.4.5">23.0 / 26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.5.4.6">25.0 / 25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.5.4.7">31.0 / 31.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.5.4.8">28.0 / 29.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.5.4.9">30.5 / 28.0</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.6.5.1">Llama-3.1 8B</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.2">23.0</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.3">26.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.4">21.0 / 31.0</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.5">26.0 / 28.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.6">30.5 / 33.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.7">33.5 / 31.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.8">29.5 / 33.5</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.7.6.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.2">44.0</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.3">45.3</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.4">06.7 / 46.7</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.5">40.0 / 47.3</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.6">45.3 / 46.7</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.7">44.7 / 47.3</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.8">40.0 / 46.0</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8.7">
<th class="ltx_td ltx_align_left ltx_align_middle ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T4.1.8.7.1" rowspan="3"><span class="ltx_text" id="A1.T4.1.8.7.1.1">ASQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.8.7.2">Llama-3.2 3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.8.7.3">14.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.8.7.4">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.8.7.5">24.4 / 21.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.8.7.6">18.3 / 23.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.8.7.7">24.2 / 26.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.8.7.8">24.8 / 27.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.8.7.9">25.6 / 27.4</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.9.8.1">Llama-3.1 8B</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.2">14.6</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.3">23.1</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.4">21.2 / 24.8</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.5">25.1 / 25.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.6">23.8 / 28.8</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.7">29.1 / 27.9</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.8">30.0 / 27.8</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T4.1.10.9.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.10.9.2">26.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.10.9.3">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.10.9.4">02.1 / 31.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.10.9.5">20.7 / 30.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.10.9.6">24.8 / 31.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.10.9.7">30.2 / 29.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.10.9.8">29.6 / 31.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive summary of the experimental results obtained across three different question-answering datasets (TriviaQA, HotpotQA, and ASQA) using three distinct language models (Llama-3.2 3B, Llama-3.1 8B, and GPT-40).  For each dataset-model combination, the table compares the performance of seven different configurations: a baseline, RAG (Retrieval-Augmented Generation), CoT (Chain-of-Thought), RaR (Rephrase and Respond), and three variations of the SQUARE method with different numbers of generated questions (N=3, N=5, and N=10).  Where applicable, both zero-shot (no prior examples) and few-shot (with example queries) results are reported, offering a detailed comparison of various prompting techniques on different model sizes and datasets.
> <details>
> <summary>read the caption</summary>
> Table 4: Summary of results; comparing seven configurations on three datasets, using three models. When applicable, zero-shot/few-shot results are shown.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.3.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T5.3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.1.1.1.1">
<span class="ltx_p" id="A1.T5.3.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.1.1.1.1.1.1">Question: In what month is the annual documentary film festival, that is presented by the fortnightly published British journal of literary essays, held?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.3.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.2.1.1.1">
<span class="ltx_p" id="A1.T5.3.2.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.2.1.1.1.1.1">The annual documentary film festival, presented by the fortnightly published British journal, is the Open City Documentary Festival.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.3.2.1.1">
<span class="ltx_p" id="A1.T5.3.3.2.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.4.3.1.1">
<span class="ltx_p" id="A1.T5.3.4.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.4.3.1.1.1.1">Let’s break down the context:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.5.4.1.1">
<span class="ltx_p" id="A1.T5.3.5.4.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.6.5.1.1">
<span class="ltx_p" id="A1.T5.3.6.5.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.6.5.1.1.1.1">The journal is described as a fortnightly published British journal of literary essays.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.7.6.1.1">
<span class="ltx_p" id="A1.T5.3.7.6.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.7.6.1.1.1.1">The London Review of Books is mentioned as a publication associated with the London International Documentary Festival, but it is a monthly publication, not fortnightly.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.8.7.1.1">
<span class="ltx_p" id="A1.T5.3.8.7.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.8.7.1.1.1.1">The Open City Documentary Festival is not mentioned in the context as being associated with a specific journal, but it is a documentary film festival that takes place in London.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.9.8.1.1">
<span class="ltx_p" id="A1.T5.3.9.8.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.9.8.1.1.1.1">However, the Open City Documentary Festival is not the only festival that matches the description. The London Review of Bookseller is a monthly publication, but the journal described in the question is fortnightly. The London Review of Books is not the journal described in the question.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.10.9.1.1">
<span class="ltx_p" id="A1.T5.3.10.9.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.10.9.1.1.1.1">The Open City Documentary Festival is not the only festival that matches the description, but it is the only festival that is associated with a journal that is published twice a year, which could be interpreted as fortnightly.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.11.10.1.1">
<span class="ltx_p" id="A1.T5.3.11.10.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.11.10.1.1.1.1">However, the London Independent Film Festival is not the correct answer because it is held in April, and the journal is not mentioned in the context.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.12.11.1.1">
<span class="ltx_p" id="A1.T5.3.12.11.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.12.11.1.1.1.1">The London International Documentary Festival is held in </span><span class="ltx_text ltx_align_left ltx_font_bold" id="A1.T5.3.12.11.1.1.1.2" style="color:#0000FF;">March and April</span><span class="ltx_text ltx_align_left ltx_font_typewriter" id="A1.T5.3.12.11.1.1.1.3">, but the journal is not mentioned in the context.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.13.12.1.1">
<span class="ltx_p" id="A1.T5.3.13.12.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.13.12.1.1.1.1">The Open City Documentary Festival is the only festival that matches the description of being associated with a journal that is published twice a year, which could be interpreted as fortnightly.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.3.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.14.13.1.1">
<span class="ltx_p" id="A1.T5.3.14.13.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T5.3.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.3.15.14.1.1">
<span class="ltx_p" id="A1.T5.3.15.14.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.3.15.14.1.1.1.1">Answer: </span><span class="ltx_text ltx_align_left ltx_font_bold ltx_align_center" id="A1.T5.3.15.14.1.1.1.2" style="color:#FF0000;">Open City</span><span class="ltx_text ltx_align_left ltx_font_typewriter ltx_align_center" id="A1.T5.3.15.14.1.1.1.3">.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a verbatim example of an incorrect answer generated by a Llama-3.1 8B model using the chain-of-thought (CoT) prompting technique.  The question is from the HotpotQA dataset. The correct answer, 'March and April', is present within the model's reasoning steps. However, the model's final answer is incorrect ('Open City').  The discrepancy highlights the challenge of reliably extracting correct answers from the model's intermediate reasoning steps and underscores the need for improved answer extraction methods.
> <details>
> <summary>read the caption</summary>
> Table 5: Generated answer (verbatim) for a question from the HotpotQA dataset, produced by Llama-3.1 8B model, using the CoT technique with two few-shot examples. Correct answer is March and April, which is found in the reasoning chain, probably due to this fact appearing in the relevant external context provided to the model (not shown here). The final model’s answer is wrong, necessitating the need to correctly extract answers for better analysis and research.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.3.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T6.3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.1.1.1.1">
<span class="ltx_p" id="A1.T6.3.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.1.1.1.1.1.1">Question: What is the shared profession of Jack Kerouac and Dan Masterson?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.3.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.2.1.1.1">
<span class="ltx_p" id="A1.T6.3.2.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.2.1.1.1.1.1">Generated Questions and Answers:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.3.2.1.1">
<span class="ltx_p" id="A1.T6.3.3.2.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.3.2.1.1.1.1">1. Question: What literary movement was Jack Kerouac a pioneer of?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.4.3.1.1">
<span class="ltx_p" id="A1.T6.3.4.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.4.3.1.1.1.1">Answer: Jack Kerouac was a pioneer of the Beat Generation.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.5.4.1.1">
<span class="ltx_p" id="A1.T6.3.5.4.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.6.5.1.1">
<span class="ltx_p" id="A1.T6.3.6.5.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.6.5.1.1.1.1">2. Question: What is Dan Masterson primarily known for?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.7.6.1.1">
<span class="ltx_p" id="A1.T6.3.7.6.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.7.6.1.1.1.1">Answer: Dan Masterson is primarily known for being a poet.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.8.7.1.1">
<span class="ltx_p" id="A1.T6.3.8.7.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.9.8.1.1">
<span class="ltx_p" id="A1.T6.3.9.8.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.9.8.1.1.1.1">3. Question: When was the Jack Kerouac School of Disembodied Poetics founded and by whom?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.10.9.1.1">
<span class="ltx_p" id="A1.T6.3.10.9.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.10.9.1.1.1.1">Answer: The Jack Kerouac School of Disembodied Poetics was founded in 1974 by Allen Ginsberg and Anne Waldman.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.11.10.1.1">
<span class="ltx_p" id="A1.T6.3.11.10.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.12.11.1.1">
<span class="ltx_p" id="A1.T6.3.12.11.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.12.11.1.1.1.1">Answer: The shared profession of Jack Kerouac and Dan Masterson is that they were both poets.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.3.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.13.12.1.1">
<span class="ltx_p" id="A1.T6.3.13.12.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.13.12.1.1.1.1">Question: Which band top the UK charts with their singles "Chelsea Dagger" and "Whistle for the Choir": The Fratellis or The Madden Brothers?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.3.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.14.13.1.1">
<span class="ltx_p" id="A1.T6.3.14.13.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.14.13.1.1.1.1">Questions and Answers Based on the Given Context:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.15.14.1.1">
<span class="ltx_p" id="A1.T6.3.15.14.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.16.15.1.1">
<span class="ltx_p" id="A1.T6.3.16.15.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.16.15.1.1.1.1">1. Question: When was "Whistle for the Choir" released, and how did it perform on the UK Singles Chart?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.17.16.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.17.16.1.1">
<span class="ltx_p" id="A1.T6.3.17.16.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.17.16.1.1.1.1">Answer: "Whistle for the Choir" was released on 27 November 2006 and reached number nine on the UK Singles Chart.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.18.17.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.18.17.1.1">
<span class="ltx_p" id="A1.T6.3.18.17.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.19.18.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.19.18.1.1">
<span class="ltx_p" id="A1.T6.3.19.18.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.19.18.1.1.1.1">2. Question: What inspired the name of the song "Chelsea Dagger" by The Fratellis?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.20.19.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.20.19.1.1">
<span class="ltx_p" id="A1.T6.3.20.19.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.20.19.1.1.1.1">Answer: The song "Chelsea Dagger" was named after Jon Fratelli’s wife Heather, who performed as a burlesque dancer under the stage name Chelsea Dagger.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.21.20.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.21.20.1.1">
<span class="ltx_p" id="A1.T6.3.21.20.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.22.21.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.22.21.1.1">
<span class="ltx_p" id="A1.T6.3.22.21.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.22.21.1.1.1.1">3. Question: What is the relationship between the members of The Fratellis, and what are their stage names?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.23.22.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.23.22.1.1">
<span class="ltx_p" id="A1.T6.3.23.22.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.23.22.1.1.1.1">Answer: The members of The Fratellis are not related by blood. They perform under pseudonyms: Jon Fratelli (lead vocalist and guitarist), Barry Fratelli (bassist), and Mince Fratelli (drummer).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.3.24.23.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.24.23.1.1">
<span class="ltx_p" id="A1.T6.3.24.23.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T6.3.25.24.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.25.24.1.1">
<span class="ltx_p" id="A1.T6.3.25.24.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T6.3.25.24.1.1.1.1">Answer: The Fratellis are the band that topped the UK charts with their singles "Chelsea Dagger" and "Whistle for the Choir."</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents two example question-answer pairs used in the few-shot learning setting of the SQUARE method.  These examples are provided to the model before it receives the actual question, to give it context and guide its reasoning.  The SQUARE prompt is used, with a parameter 'N' set to 3, meaning the model generates and answers three intermediate questions before arriving at the final answer to the main query.
> <details>
> <summary>read the caption</summary>
> Table 6: The two examples used in our few-shot configurations. Here, the SQuARE prompt is used, with N=3𝑁3N=3italic_N = 3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T7.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.1.1.1">
<span class="ltx_p" id="A1.T7.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.1.1.1.1.1">You are a helpful question answerer who can provide an answer given a question and relevant context.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.2.2.1.1">
<span class="ltx_p" id="A1.T7.1.2.2.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.2.2.1.1.1.1">Generate {N} questions based on the given question and context, and shortly answer them.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.3.3.1.1">
<span class="ltx_p" id="A1.T7.1.3.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.3.3.1.1.1.1">Shortly summarize what you have learned from the answers.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.4.4.1.1">
<span class="ltx_p" id="A1.T7.1.4.4.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.4.4.1.1.1.1">Finally, provide an answer to the original question using they summary you created.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T7.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.5.5.1.1">
<span class="ltx_p" id="A1.T7.1.5.5.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.5.5.1.1.1.1">The answer should be a short span, just a few words.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 details the prompt used in the SQUARE experiment for answer summarization.  This variant of the SQUARE method modifies the original prompt to instruct the LLM to not only generate and answer multiple sub-questions, but also to concisely summarize the information gleaned from those answers before arriving at a final answer to the original question.
> <details>
> <summary>read the caption</summary>
> Table 7: Prompt used for the SQuARE supplement aggregation method, using answer summarization; see Section 4.1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.1.1.1">
<span class="ltx_p" id="A1.T8.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.1.1.1.1.1.1">Question: What is the shared profession of Jack Kerouac and Dan Masterson?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.2.1.1.1">
<span class="ltx_p" id="A1.T8.1.2.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.2.1.1.1.1.1">1. What notable literary movement was Jack Kerouac a pioneer of?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.3.2.1.1">
<span class="ltx_p" id="A1.T8.1.3.2.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.3.2.1.1.1.1">- The Beat Generation.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.4.3.1.1">
<span class="ltx_p" id="A1.T8.1.4.3.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.5.4.1.1">
<span class="ltx_p" id="A1.T8.1.5.4.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.5.4.1.1.1.1">2. What type of school is the Jack Kerouac School of Disembodied Poetics?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.6.5.1.1">
<span class="ltx_p" id="A1.T8.1.6.5.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.6.5.1.1.1.1">- A creative writing and literature school.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.7.6.1.1">
<span class="ltx_p" id="A1.T8.1.7.6.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.8.7.1.1">
<span class="ltx_p" id="A1.T8.1.8.7.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.8.7.1.1.1.1">3. What is the connection between Jack Kerouac’s novel "On the Road" and his personal life?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.9.8.1.1">
<span class="ltx_p" id="A1.T8.1.9.8.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.9.8.1.1.1.1">- The novel is based on his travels and features characters representing key figures of the Beat movement, including himself.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.10.9.1.1">
<span class="ltx_p" id="A1.T8.1.10.9.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.11.10.1.1">
<span class="ltx_p" id="A1.T8.1.11.10.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.11.10.1.1.1.1">Summary:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.12.11.1.1">
<span class="ltx_p" id="A1.T8.1.12.11.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.12.11.1.1.1.1">From the provided context, we learned that Jack Kerouac was an American novelist and poet, recognized as a pioneer of the Beat Generation, and known for his spontaneous prose. Dan Masterson was also an American poet, known for his work and his background. Both individuals are noted primarily for their contributions to poetry.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.13.12.1.1">
<span class="ltx_p" id="A1.T8.1.13.12.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.14.13.1.1">
<span class="ltx_p" id="A1.T8.1.14.13.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.14.13.1.1.1.1">Answer: Poet.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.15.14.1.1">
<span class="ltx_p" id="A1.T8.1.15.14.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.15.14.1.1.1.1">Question: Which band top the UK charts with their singles "Chelsea Dagger" and "Whistle for the Choir": The Fratellis or The Madden Brothers?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.16.15.1.1">
<span class="ltx_p" id="A1.T8.1.16.15.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.16.15.1.1.1.1">1. Question: What are the names of the members of The Fratellis?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.17.16.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.17.16.1.1">
<span class="ltx_p" id="A1.T8.1.17.16.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.17.16.1.1.1.1">Answer: Jon Fratelli, Barry Fratelli, and Mince Fratelli.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.18.17.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.18.17.1.1">
<span class="ltx_p" id="A1.T8.1.18.17.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.19.18.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.19.18.1.1">
<span class="ltx_p" id="A1.T8.1.19.18.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.19.18.1.1.1.1">2. Question: What is the highest chart position "Whistle for the Choir" reached in Scotland?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.20.19.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.20.19.1.1">
<span class="ltx_p" id="A1.T8.1.20.19.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.20.19.1.1.1.1">Answer: Number two.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.21.20.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.21.20.1.1">
<span class="ltx_p" id="A1.T8.1.21.20.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.22.21.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.22.21.1.1">
<span class="ltx_p" id="A1.T8.1.22.21.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.22.21.1.1.1.1">3. Question: When was "Chelsea Dagger" released as a single?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.23.22.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.23.22.1.1">
<span class="ltx_p" id="A1.T8.1.23.22.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.23.22.1.1.1.1">Answer: 28 August 2006.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.24.23.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.24.23.1.1">
<span class="ltx_p" id="A1.T8.1.24.23.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.25.24.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.25.24.1.1">
<span class="ltx_p" id="A1.T8.1.25.24.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.25.24.1.1.1.1">Summary: The Fratellis are a Scottish rock band consisting of Jon, Barry, and Mince Fratelli. Their singles "Chelsea Dagger" and "Whistle for the Choir" were top ten hits in the UK charts, with "Whistle for the Choir" reaching number nine on the UK Singles Chart and number two in Scotland.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.26.25.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.26.25.1.1">
<span class="ltx_p" id="A1.T8.1.26.25.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.27.26">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T8.1.27.26.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.27.26.1.1">
<span class="ltx_p" id="A1.T8.1.27.26.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T8.1.27.26.1.1.1.1">Answer: The Fratellis.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents two example question-answer pairs used in an ablation study.  The study examines the effect of adding a summarization step to the SQUARE method before the model provides a final answer.  The examples illustrate how the SQUARE method, enhanced with summarization, works on two different question types. These examples are used as few-shot prompts within the broader experimental setup described in Section 4.1 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 8: Two-shot examples used in an ablation study where SQuARE is supplemented by an instruction to summarize the model’s learning before providing the final answer, see Section 4.1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T9.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.1.1.1.1">
<span class="ltx_p" id="A1.T9.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T9.1.1.1.1.1.1.1">You are a helpful question answerer who can provide an answer given a question and relevant context.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.2.2.1.1">
<span class="ltx_p" id="A1.T9.1.2.2.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T9.1.2.2.1.1.1.1">Generate {N} questions based on the given question and context, and shortly answer them.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.3.3.1.1">
<span class="ltx_p" id="A1.T9.1.3.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T9.1.3.3.1.1.1.1">Finally, provide an answer to the original question by choosing amongst the answers you created the most common answer. The answer can’t be any other option.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T9.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.4.4.1.1">
<span class="ltx_p" id="A1.T9.1.4.4.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T9.1.4.4.1.1.1.1">The answer should be a short span, just a few words.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt used for the SQUARE (Sequential Question Answering Reasoning Engine) method's supplement aggregation technique, specifically employing a majority voting approach to determine the final answer.  The SQUARE method involves generating several sub-questions related to the main question and then using the answers to those sub-questions to arrive at a final answer. This particular variant uses a majority voting approach amongst the sub-questions' answers to determine the final answer. This is contrasted with other aggregation methods explored in the paper (summarization and voting).
> <details>
> <summary>read the caption</summary>
> Table 9: Prompt used for the SQuARE supplement aggregation method, using majority voting; see Section 4.1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T10.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T10.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.1.1.1.1">
<span class="ltx_p" id="A1.T10.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.1.1.1.1.1.1">Question: What is the shared profession of Jack Kerouac and Dan Masterson?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.2.1.1.1">
<span class="ltx_p" id="A1.T10.1.2.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.2.1.1.1.1.1">1. What was Jack Kerouac’s profession?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.3.2.1.1">
<span class="ltx_p" id="A1.T10.1.3.2.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.3.2.1.1.1.1">- Novelist and poet</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.4.3.1.1">
<span class="ltx_p" id="A1.T10.1.4.3.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.5.4.1.1">
<span class="ltx_p" id="A1.T10.1.5.4.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.5.4.1.1.1.1">2. What was Dan Masterson’s profession?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.6.5.1.1">
<span class="ltx_p" id="A1.T10.1.6.5.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.6.5.1.1.1.1">- Poet</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.7.6.1.1">
<span class="ltx_p" id="A1.T10.1.7.6.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.8.7.1.1">
<span class="ltx_p" id="A1.T10.1.8.7.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.8.7.1.1.1.1">3. What genre is Jack Kerouac associated with?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.9.8.1.1">
<span class="ltx_p" id="A1.T10.1.9.8.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.9.8.1.1.1.1">- Beat Generation literature</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.10.9.1.1">
<span class="ltx_p" id="A1.T10.1.10.9.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.11.10.1.1">
<span class="ltx_p" id="A1.T10.1.11.10.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.11.10.1.1.1.1">Answer: Poet</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.1.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.12.11.1.1">
<span class="ltx_p" id="A1.T10.1.12.11.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.12.11.1.1.1.1">Question: Which band top the UK charts with their singles "Chelsea Dagger" and "Whistle for the Choir": The Fratellis or The Madden Brothers?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.1.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.13.12.1.1">
<span class="ltx_p" id="A1.T10.1.13.12.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.13.12.1.1.1.1">1. Which band is known for the singles "Chelsea Dagger" and "Whistle for the Choir"?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.14.13.1.1">
<span class="ltx_p" id="A1.T10.1.14.13.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.14.13.1.1.1.1">- The Fratellis</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.15.14.1.1">
<span class="ltx_p" id="A1.T10.1.15.14.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.16.15.1.1">
<span class="ltx_p" id="A1.T10.1.16.15.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.16.15.1.1.1.1">2. Which band had a top ten hit in the UK with "Chelsea Dagger"?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.17.16.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.17.16.1.1">
<span class="ltx_p" id="A1.T10.1.17.16.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.17.16.1.1.1.1">- The Fratellis</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.18.17.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.18.17.1.1">
<span class="ltx_p" id="A1.T10.1.18.17.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.19.18.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.19.18.1.1">
<span class="ltx_p" id="A1.T10.1.19.18.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.19.18.1.1.1.1">3. What was the highest chart position for "Whistle for the Choir" in the UK Singles Chart?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.20.19.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.20.19.1.1">
<span class="ltx_p" id="A1.T10.1.20.19.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.20.19.1.1.1.1">- Number nine</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T10.1.21.20.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.21.20.1.1">
<span class="ltx_p" id="A1.T10.1.21.20.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T10.1.22.21.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.22.21.1.1">
<span class="ltx_p" id="A1.T10.1.22.21.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T10.1.22.21.1.1.1.1">Answer: The Fratellis</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents two examples used in an ablation study to evaluate a modified version of the SQuARE prompting technique.  The modification involves instructing the language model to select the final answer by majority vote among the answers generated to several sub-questions.  This table is part of an analysis to determine the effect of different answer aggregation methods on the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 10: Two-shot examples used in an ablation study where SQuARE is supplemented by an instruction to pick the final answer as a majority vote amongst the sub-questions’ answers, see Section 4.1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T11.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T11.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T11.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.1.1.1.1.1">
<span class="ltx_p" id="A1.T11.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T11.1.1.1.1.1.1.1">You are a helpful question answerer who can provide an answer given a question and relevant context.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T11.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.1.2.2.1.1">
<span class="ltx_p" id="A1.T11.1.2.2.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T11.1.2.2.1.1.1.1">Let’s think through this step by step. Solve each step and explain how you arrived at your answer.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T11.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.1.3.3.1.1">
<span class="ltx_p" id="A1.T11.1.3.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T11.1.3.3.1.1.1.1">Final answer should be a short span, just a few words.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt used in the experiments for the chain-of-thought (CoT) method proposed by Wei et al. (2023).  It shows the instructions given to the large language model (LLM) to guide its reasoning process step-by-step, before arriving at a final answer. The prompt is designed to encourage the model to break down the problem into smaller, more manageable parts, thus improving the accuracy and explanation of its reasoning.
> <details>
> <summary>read the caption</summary>
> Table 11: Prompt used for the CoT Wei et al. (2023) experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T12.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T12.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T12.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.1.1.1.1">
<span class="ltx_p" id="A1.T12.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.1.1.1.1.1.1">Question: What is the shared profession of Jack Kerouac and Dan Masterson?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T12.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T12.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.2.1.1.1">
<span class="ltx_p" id="A1.T12.1.2.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.2.1.1.1.1.1">Jack Kerouac and Dan Masterson are both writers. Jack Kerouac is best known as a novelist and a poet, a central figure of the Beat Generation. Dan Masterson is known as a poet. Therefore, their shared profession is writing, specifically in the realm of literature.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.3.2.1.1">
<span class="ltx_p" id="A1.T12.1.3.2.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.4.3.1.1">
<span class="ltx_p" id="A1.T12.1.4.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.4.3.1.1.1.1">Answer: they are poets.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T12.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.5.4.1.1">
<span class="ltx_p" id="A1.T12.1.5.4.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.5.4.1.1.1.1">Question: Which band top the UK charts with their singles "Chelsea Dagger" and "Whistle for the Choir": The Fratellis or The Madden Brothers?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T12.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.6.5.1.1">
<span class="ltx_p" id="A1.T12.1.6.5.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.6.5.1.1.1.1">The band that topped the UK charts with their singles "Chelsea Dagger" and "Whistle for the Choir" is The Fratellis.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.7.6.1.1">
<span class="ltx_p" id="A1.T12.1.7.6.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.8.7.1.1">
<span class="ltx_p" id="A1.T12.1.8.7.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.8.7.1.1.1.1">To determine this, we can look at the history and discography of each band:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.9.8.1.1">
<span class="ltx_p" id="A1.T12.1.9.8.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.9.8.1.1.1.1">The Fratellis:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.10.9.1.1">
<span class="ltx_p" id="A1.T12.1.10.9.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.10.9.1.1.1.1">"Chelsea Dagger" is a well-known single by The Fratellis, released in 2006 from their debut album "Costello Music."</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.11.10.1.1">
<span class="ltx_p" id="A1.T12.1.11.10.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.11.10.1.1.1.1">"Whistle for the Choir" is another single from the same album, also released in 2006.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.12.11.1.1">
<span class="ltx_p" id="A1.T12.1.12.11.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.12.11.1.1.1.1">The Madden Brothers:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.13.12.1.1">
<span class="ltx_p" id="A1.T12.1.13.12.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.13.12.1.1.1.1">This is a different musical duo consisting of Joel and Benji Madden from the band Good Charlotte.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.14.13.1.1">
<span class="ltx_p" id="A1.T12.1.14.13.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.14.13.1.1.1.1">They do not have singles named "Chelsea Dagger" or "Whistle for the Choir."</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.15.14.1.1">
<span class="ltx_p" id="A1.T12.1.15.14.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.16.15.1.1">
<span class="ltx_p" id="A1.T12.1.16.15.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.16.15.1.1.1.1">Given this information, it is clear that The Fratellis are the band associated with these singles.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T12.1.17.16.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.17.16.1.1">
<span class="ltx_p" id="A1.T12.1.17.16.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T12.1.18.17.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T12.1.18.17.1.1">
<span class="ltx_p" id="A1.T12.1.18.17.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T12.1.18.17.1.1.1.1">Answer: The Fratellis.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays two example question-answer pairs used during the experiments. These examples are employed as few-shot learning examples to guide the model before answering the main questions.  The examples cover two different question types to ensure that the model receives broad exposure.
> <details>
> <summary>read the caption</summary>
> Table 12: The two-shot examples used for the CoT Wei et al. (2023) configurations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T13.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T13.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T13.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T13.1.1.1.1.1">
<span class="ltx_p" id="A1.T13.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T13.1.1.1.1.1.1.1">You are a helpful question answerer who can provide an answer given a question and relevant context.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T13.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T13.1.2.2.1.1">
<span class="ltx_p" id="A1.T13.1.2.2.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T13.1.2.2.1.1.1.1">Reframe the question with additional context and detail, then provide an answer.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T13.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T13.1.3.3.1.1">
<span class="ltx_p" id="A1.T13.1.3.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T13.1.3.3.1.1.1.1">Final answer should be a short span, just a few words.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt used for the rephrasing and responding (RaR) experiments in the paper. The RaR technique is a prompting strategy that instructs the language model to first rephrase the given question before attempting to answer it directly.  This table outlines the specific instructions given to the model in this experimental setup, thereby providing a clear understanding of how the RaR technique was implemented and utilized in the research.
> <details>
> <summary>read the caption</summary>
> Table 13: Prompt used for the RaR Deng et al. (2024) experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T14.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T14.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T14.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T14.1.1.1.1.1">
<span class="ltx_p" id="A1.T14.1.1.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T14.1.1.1.1.1.1.1">Question: What is the shared profession of Jack Kerouac and Dan Masterson?</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T14.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T14.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T14.1.2.1.1.1">
<span class="ltx_p" id="A1.T14.1.2.1.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T14.1.2.1.1.1.1.1">What is the common profession that both Jack Kerouac, known for his influential work in the Beat Generation, and Dan Masterson, noted for his contributions to literature, share?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T14.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T14.1.3.2.1.1">
<span class="ltx_p" id="A1.T14.1.3.2.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T14.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T14.1.4.3.1.1">
<span class="ltx_p" id="A1.T14.1.4.3.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T14.1.4.3.1.1.1.1">Answer: Writers</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T14.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T14.1.5.4.1.1">
<span class="ltx_p" id="A1.T14.1.5.4.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T14.1.5.4.1.1.1.1">Question: Which band top the UK charts with their singles "Chelsea Dagger" and "Whistle for the Choir": The Fratellis or The Madden Brothers?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T14.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T14.1.6.5.1.1">
<span class="ltx_p" id="A1.T14.1.6.5.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T14.1.6.5.1.1.1.1">Which band achieved the number one position on the UK charts with their hit singles "Chelsea Dagger" and "Whistle for the Choir": was it The Fratellis or The Madden Brothers?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T14.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T14.1.7.6.1.1">
<span class="ltx_p" id="A1.T14.1.7.6.1.1.1" style="width:424.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T14.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T14.1.8.7.1.1">
<span class="ltx_p" id="A1.T14.1.8.7.1.1.1" style="width:424.9pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T14.1.8.7.1.1.1.1">Answer: The Fratellis</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 14 shows the two example questions and answers used in the RaR (Rephrase and Respond) experimental setup.  The examples are designed to demonstrate how the RaR prompting technique works by first rephrasing the question to provide more context and detail before answering. This is in contrast to other techniques where the model attempts to answer directly from the initial question. The examples cover two distinct question types, one focused on shared professions and another on identifying a music band, showcasing the versatility of this prompting method across different knowledge domains.
> <details>
> <summary>read the caption</summary>
> Table 14: The two-shot examples used for the RaR Deng et al. (2024) configurations.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09390/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09390/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}