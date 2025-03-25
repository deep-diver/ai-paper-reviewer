---
title: "Typed-RAG: Type-aware Multi-Aspect Decomposition for Non-Factoid Question Answering"
summary: "Typed-RAG enhances non-factoid QA by type-aware decomposition, refining retrieval and generation for nuanced, user-aligned answers."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Pohang University of Science and Technology",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.15879 {{< /keyword >}}
{{< keyword icon="writer" >}} DongGeon Lee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.15879" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.15879" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.15879/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Non-factoid question-answering (NFQA) is hard because of its open-ended nature and the need for multi-aspect reasoning, making regular methods not good enough. Existing NFQA approaches don't do well across different questions and don't use large language models (LLMs) and retrieval-augmented generation (RAG) frameworks effectively. Standard RAG improves context but fails to handle the differences in questions, leading to responses that lack the needed multi-aspect depth.



To solve these issues, **Typed-RAG** is introduced. This is a type-aware multi-aspect decomposition framework for NFQA within the RAG setup. It sorts NFQs into types like debate, experience, and comparison, then uses aspect-based decomposition to improve retrieval and generation. By breaking down complex NFQs into simpler parts and combining the results, **Typed-RAG** makes answers more helpful and relevant.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Typed-RAG enhances non-factoid question answering by classifying questions and applying aspect-based decomposition. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introduces Wiki-NFQA, a new benchmark dataset for non-factoid question answering research. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Typed-RAG outperforms existing models in generating high-quality, contextually relevant answers to non-factoid questions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces **Typed-RAG, a novel framework for NFQA**, which addresses the limitations of current RAG systems. The **Wiki-NFQA dataset** provides a valuable resource for future research. The method not only elevates the answers' ranks but also improves their relative quality, leading to better user satisfaction.

------
#### Visual Insights



![](https://arxiv.org/html/2503.15879/x1.png)

> 🔼 This figure illustrates the Typed-RAG architecture, a framework for answering non-factoid questions.  The process begins with a non-factoid question being inputted into a type classifier.  Based on the question's type (e.g., debate, experience, comparison), it then follows a tailored pathway.  Multi-aspect questions are decomposed into single-aspect sub-queries, which are then processed through retrieval and generation modules. Finally, an answer aggregator synthesizes these individual responses into a comprehensive, well-rounded answer that addresses the nuanced aspects of the initial non-factoid question.  The specific prompts used in the multi-aspect decomposition and answer aggregation steps are detailed in Appendix A.4.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of Typed-RAG. Non-factoid questions are classified by the type classifier and processed based on their type. Prompts for the multi-aspect decomposer and answer aggregator handle the unique requirements of each type. Details of the prompt can be found in Appendix A.4.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Scorer LLM</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S3.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">Wiki-NFQA Dataset</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.1.1">NQ-NF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.2.1">SQD-NF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.3.1">TQA-NF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.4.1">2WMH-NF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.5.1">HQA-NF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.6.1">MSQ-NF</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.3.1.1" rowspan="6"><span class="ltx_text" id="S3.T1.1.1.3.1.1.1">Llama-3.2-3B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.3.1.2" rowspan="3"><span class="ltx_text" id="S3.T1.1.1.3.1.2.1">Mistral-7B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.3.1.3">LLM</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3.1.4">0.5893</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3.1.5">0.5119</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3.1.6">0.6191</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3.1.7">0.3565</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3.1.8">0.4825</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3.1.9">0.4262</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.4.2.1">RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.2">0.5294</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.3">0.4944</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.4">0.5470</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.5">0.4150</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.6">0.4530</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2.7">0.4047</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.5.3.1">Typed-RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.3.2.1">0.7659</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.3.3.1">0.6493</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.3.4.1">0.7061</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.3.5.1">0.4544</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.3.6.1">0.5624</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.3.7.1">0.5356</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.6.4.1" rowspan="3"><span class="ltx_text" id="S3.T1.1.1.6.4.1.1">GPT-4o mini</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.6.4.2">LLM</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.4.3">0.4934</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.4.4">0.4506</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.4.5">0.5380</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.4.6">0.3070</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.4.7">0.3669</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.4.8">0.2917</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.7.5.1">RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.5.2">0.4187</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.5.3">0.3553</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.5.4">0.4586</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.5.5">0.2859</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.5.6">0.2957</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.5.7">0.2866</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.8.6.1">Typed-RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.6.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.6.2.1">0.8366</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.6.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.6.3.1">0.7139</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.6.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.6.4.1">0.7013</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.6.5.1">0.3692</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.6.6.1">0.5470</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.6.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.6.7.1">0.4482</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_tt" id="S3.T1.1.1.9.7.1" rowspan="6"><span class="ltx_text" id="S3.T1.1.1.9.7.1.1">Mistral-7B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.9.7.2" rowspan="3"><span class="ltx_text" id="S3.T1.1.1.9.7.2.1">Mistral-7B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.9.7.3">LLM</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.9.7.4">0.6356</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.9.7.5">0.5450</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.9.7.6">0.6363</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.9.7.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.7.7.1">0.4821</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.9.7.8">0.5255</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.9.7.9"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.7.9.1">0.5081</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.10.8.1">RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.8.2">0.5635</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.8.3">0.5069</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.8.4">0.6233</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.8.5">0.4789</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.8.6">0.5323</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.8.7">0.4438</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.11.9.1">Typed-RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.9.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.9.2.1">0.7103</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.9.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.9.3.1">0.6333</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.9.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.9.4.1">0.6709</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.9.5">0.4747</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.9.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.9.6.1">0.6035</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.9.7">0.4512</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.1.1.12.10.1" rowspan="3"><span class="ltx_text" id="S3.T1.1.1.12.10.1.1">GPT-4o mini</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.12.10.2">LLM</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.10.3">0.4656</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.10.4">0.4222</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.10.5">0.5921</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.10.6">0.3175</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.10.7">0.3965</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.10.8">0.3384</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.13.11.1">RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.11.2">0.4411</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.11.3">0.3817</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.11.4">0.5450</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.11.5">0.2890</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.11.6">0.3562</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.11.7">0.3079</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.1.1.14.12.1">Typed-RAG</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.14.12.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.14.12.2.1">0.8413</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.14.12.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.14.12.3.1">0.7444</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.14.12.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.14.12.4.1">0.7767</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.14.12.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.14.12.5.1">0.3987</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.14.12.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.14.12.6.1">0.6653</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.14.12.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.14.12.7.1">0.4929</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparative analysis of different language models and methods on the Wiki-NFQA dataset.  It uses Mean Reciprocal Rank (MRR) as the evaluation metric, and the rankings were determined using the LINKAGE method (Yang et al., 2024). The table shows the MRR scores for various combinations of language models (LLMs), scorer LLMs, and question answering methods (LLM-only, RAG, and Typed-RAG). This allows for assessing the impact of different LLMs, scoring strategies, and question answering architectures on the performance of non-factoid question answering systems.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results on the Wiki-NFQA dataset using Mean Reciprocal Rank (MRR), comparing the performance of various language models, scorer LLMs, and methods. Answers were ranked using LINKAGE Yang et al. (2024) scored with the MRR metric.
> </details>





### In-depth insights


#### Type-aware RAG
**Type-aware RAG** introduces a nuanced approach to Retrieval-Augmented Generation, tailoring it to different question types for non-factoid QA. The core idea revolves around classifying NFQs and adapting retrieval/generation strategies accordingly. The paper likely argues that standard RAG falls short due to the diverse nature of NFQs. **Type-aware RAG** aims to improve relevance and coherence by decomposing complex queries into sub-queries based on question type (e.g., comparison, debate). This allows for more targeted retrieval and synthesis, ultimately leading to more comprehensive and user-aligned answers. A key innovation might be the use of different prompts/models for each question type within the RAG pipeline. This could lead to **significant improvements** in handling the complexities inherent in NFQA.

#### Wiki-NFQA Data
The Wiki-NFQA dataset, introduced in this paper, appears to be a **significant contribution** to the field of non-factoid question answering (NFQA). Constructing such a dataset likely involved a **rigorous filtering process** of existing Wikipedia-based datasets to extract questions requiring more than simple factual answers. Given the nature of NFQA, the dataset's quality hinges on **high-quality reference answers**, necessitating careful generation and annotation. The authors probably used multiple LLMs and annotation steps to generate and assess the diversity and quality of these answers. Wiki-NFQA could be used as a robust benchmark for evaluating QA systems, pushing research beyond traditional factoid QA and encouraging the development of models capable of generating nuanced, comprehensive, and contextually relevant responses. **Dataset diversity across NFQ types** like comparison, experience, and reason is essential.

#### Multi-Aspect QA
Multi-aspect QA represents a significant challenge in question answering, as it necessitates synthesizing information from various perspectives. **It moves beyond simple fact retrieval**, requiring systems to consider multiple facets of a topic to provide comprehensive answers. This complexity stems from the open-ended nature of many real-world queries, where a single, definitive answer is insufficient. Systems tackling multi-aspect QA must effectively **integrate information from diverse sources**, resolve potential conflicts, and present a coherent response that addresses all relevant aspects of the question. **Effective decomposition strategies are crucial**, breaking down complex questions into manageable sub-queries to facilitate targeted information retrieval. Type-aware is also critical since questions have varying intents. The key is to create contextually relevant answers from these gathered results, by making it an **essential ingredient for building intelligent systems**.

#### Eval: LINKAGE
The evaluation using LINKAGE is a key aspect. It signifies a shift towards more nuanced assessment beyond traditional metrics. **LINKAGE's ability to rank answers listwise** is vital for NFQA, where semantic richness matters. The system leverages LLMs to score and rank, aligning more closely with human annotation, overcoming limitations of ROUGE/BERTScore. This ensures that high-quality answers that are comprehensive, contextual, and user-aligned are ranked higher, thereby emphasizing **the importance of relevance and user satisfaction in evaluating non-factoid responses**. This highlights its superiority in capturing nuanced quality variations.

#### Future NFQA Dev
**Future NFQA (Non-Factoid Question Answering) development holds significant promise.** Future efforts should focus on creating more nuanced evaluation metrics beyond traditional measures like ROUGE and BERTScore, which often fail to capture the semantic richness required for non-factoid answers. **Incorporating LLMs as scorers** and developing listwise ranking frameworks, as demonstrated by LINKAGE, could offer more robust assessments. **More diverse datasets,** and **Addressing the limitations of RAG**, particularly the introduction of noise through irrelevant retrieved information, remains critical. Strategies such as multi-aspect decomposition and type-aware retrieval can improve the precision and relevance of retrieved content. Future research should compare Typed-RAG with existing rewriting techniques, refine its evaluation, and benchmark against established methodologies to further advance NFQA.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.15879/x2.png)

> 🔼 Figure 2 presents a comparison of the performance of three different question answering methods (LLM, RAG, and Typed-RAG) across six categories of non-factoid questions.  The performance metric used is Mean Percentile Rank (MPR), expressed as a percentage.  Higher MPR scores indicate better performance.  The figure showcases results obtained using two different base language models (Llama-3.2-3B and Mistral-7B) and two different scorer LLMs (Mistral-7B and GPT-40 mini), demonstrating the impact of these model choices on the overall results. Each bar in the figure represents the average MPR for a particular question answering method within a specific non-factoid question category.
> <details>
> <summary>read the caption</summary>
> Figure 2: Mean Percentile Rank (MPR) performance comparison of LLM, RAG, and Typed-RAG on six different non-factoid question categories from the Wiki-NFQA dataset. Results are reported using different model configurations (Llama-3.2-3B and Mistral-7B) and scorer LLMs (Mistral-7B and GPT-4o mini). The y-axis represents the MPR score (%), with higher values indicating better performance.
> </details>



![](https://arxiv.org/html/2503.15879/x3.png)

> 🔼 This figure presents the prompt template employed by Yang et al. (2024) to generate a high-quality reference answer using the internal knowledge of a Large Language Model (LLM).  The template instructs the LLM to rewrite a provided non-factoid question and its corresponding ground truth answer, leveraging its internal knowledge base to produce a superior, more comprehensive and polished version of the answer. This ensures the reference answers used for evaluating the model's performance are of high quality and consistency, thereby enhancing the robustness and reliability of the evaluation process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Prompt template proposed by Yang et al. (2024) to generate the highest standard reference answer using LLM’s internal knowledge.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T2.1.1.1.1.1.1">NFQ Type</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T2.1.1.1.1.2.1">Example of Question</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A2.T2.1.1.2.1.1">Evidence-based</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="A2.T2.1.1.2.1.2">“How does sterilisation help to keep the money flow even?”</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T2.1.1.3.2.1">Comparison</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A2.T2.1.1.3.2.2">“what is the difference between dysphagia and odynophagia”</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T2.1.1.4.3.1">Experience</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A2.T2.1.1.4.3.2">“What are some of the best Portuguese wines?”</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T2.1.1.5.4.1">Reason</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A2.T2.1.1.5.4.2">
<table class="ltx_tabular ltx_align_middle" id="A2.T2.1.1.5.4.2.1">
<tr class="ltx_tr" id="A2.T2.1.1.5.4.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T2.1.1.5.4.2.1.1.1">“Kresy, which roughly was a part of the land beyond the so-called Curson Line,</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.5.4.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T2.1.1.5.4.2.1.2.1">   was drawn for what reason?”</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T2.1.1.6.5.1">Instruction</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A2.T2.1.1.6.5.2">“How can you find a lodge to ask to be a member of?”</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T2.1.1.7.6.1">Debate</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="A2.T2.1.1.7.6.2">
<table class="ltx_tabular ltx_align_middle" id="A2.T2.1.1.7.6.2.1">
<tr class="ltx_tr" id="A2.T2.1.1.7.6.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T2.1.1.7.6.2.1.1.1">“I Can See Your Voice, a reality show from South Korea, offers what kind of</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.7.6.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T2.1.1.7.6.2.1.2.1">   performers a chance to make their dreams of stardom a reality?”</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents example questions representing each of the six non-factoid question (NFQ) types included in the Wiki-NFQA dataset.  The types are: Evidence-based, Comparison, Experience, Reason, Instruction, and Debate. Each row shows an example question categorized by type, illustrating the variety of NFQs the dataset contains.
> <details>
> <summary>read the caption</summary>
> Table 2: Representative example questions for each type of non-factoid question (NFQ) in the Wiki-NFQA dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T2.1.1.5.4.2.1">
<tr class="ltx_tr" id="A2.T2.1.1.5.4.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T2.1.1.5.4.2.1.1.1">“Kresy, which roughly was a part of the land beyond the so-called Curson Line,</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.5.4.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T2.1.1.5.4.2.1.2.1">   was drawn for what reason?”</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the Wiki-NFQA dataset, which is a benchmark dataset for non-factoid question answering.  It breaks down the total number of questions (945) across six different categories of non-factoid questions (Evidence-based, Comparison, Experience, Reason, Instruction, Debate) and shows the distribution of questions within each category for different subsets of the Wiki-NFQA dataset (NQ-NF, SQD-NF, TQA-NF, 2WMHQA-NF, HQA-NF, MSQ-NF).  This allows researchers to understand the composition and characteristics of the dataset before using it for experiments.
> <details>
> <summary>read the caption</summary>
> Table 3: Statistics of the Wiki-NFQA dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T2.1.1.7.6.2.1">
<tr class="ltx_tr" id="A2.T2.1.1.7.6.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T2.1.1.7.6.2.1.1.1">“I Can See Your Voice, a reality show from South Korea, offers what kind of</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.7.6.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T2.1.1.7.6.2.1.2.1">   performers a chance to make their dreams of stardom a reality?”</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases example responses generated by the Typed-RAG model for various types of non-factoid questions.  It demonstrates the model's ability to produce answers tailored to the specific nuances and intentions of different question types, such as evidence-based, comparison, experience-based, reason-based, instruction-based, and debate-style questions.  Each example shows how Typed-RAG addresses the unique challenges inherent in each type.
> <details>
> <summary>read the caption</summary>
> Table 4: Examples of Typed-RAG responses for different types of non-factoid questions.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.15879/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15879/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}