---
title: "Exploring Rewriting Approaches for Different Conversational Tasks"
summary: "Rewriting method is critical to conversational assistant effectiveness."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Adobe Research",]
showSummary: true
date: 2025-02-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.18860 {{< /keyword >}}
{{< keyword icon="writer" >}} Md Mehrab Tanjim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.18860" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.18860" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.18860/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Conversational assistants require question rewriting algorithms to provide accurate answers. The exact rewriting approach depends on the use case and application-specific tasks. Two approaches are investigated: **rewriting, which focuses on refining the question, and fusion, which combines elements from previous interactions.** These are evaluated on two fundamentally different generation tasks. 



The paper systematically investigates these approaches on text-to-text and multimodal generation tasks. The results show that the specific approach **depends on the underlying use case and generative task.** Query rewriting works best for conversational question-answering, while query fusion excels for data analysis assistants generating visualizations and data tables.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Query rewriting and fusion approaches depend on the use case and generative task. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Query rewriting is best for question-answering assistants. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Query fusion excels in data analysis assistants generating visualizations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper enhances conversational assistants by **systematically investigating query rewriting approaches.** The findings reveal the importance of context-aware strategies, offering valuable insights and guidance for future research and development in dialogue systems and data analysis assistance.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.3.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S1.T1.3.1.1.1"></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S1.T1.3.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.1.1.2.1">
<span class="ltx_p" id="S1.T1.3.1.1.2.1.1" style="width:136.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.2.1.1.1">Conversation</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S1.T1.3.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.1.1.3.1">
<span class="ltx_p" id="S1.T1.3.1.1.3.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.3.1.1.1">Rewritten Question</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.3.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S1.T1.3.2.1.1">1</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.2.1.2.1">
<span class="ltx_p" id="S1.T1.3.2.1.2.1.1" style="width:136.6pt;">compare monthly revenue by country</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.3.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.2.1.3.1">
<span class="ltx_p" id="S1.T1.3.2.1.3.1.1" style="width:284.5pt;">compare monthly revenue by country</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.3.3.2.1">2</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.3.2.2.1">
<span class="ltx_p" id="S1.T1.3.3.2.2.1.1" style="width:136.6pt;">yearly</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.3.2.3.1">
<span class="ltx_p" id="S1.T1.3.3.2.3.1.1" style="width:284.5pt;">compare yearly revenue by country</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.3.4.3.1">3</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.4.3.2.1">
<span class="ltx_p" id="S1.T1.3.4.3.2.1.1" style="width:136.6pt;">show it as a line chart</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.4.3.3.1">
<span class="ltx_p" id="S1.T1.3.4.3.3.1.1" style="width:284.5pt;">compare yearly revenue by country as line chart</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.3.5.4.1">4</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.5.4.2.1">
<span class="ltx_p" id="S1.T1.3.5.4.2.1.1" style="width:136.6pt;">now change to marketing channel</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.5.4.3.1">
<span class="ltx_p" id="S1.T1.3.5.4.3.1.1" style="width:284.5pt;">compare yearly revenue by marketing channel as line chart</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.3.6.5.1">5</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.6.5.2.1">
<span class="ltx_p" id="S1.T1.3.6.5.2.1.1" style="width:136.6pt;">what about month over month as bar</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.6.5.3.1">
<span class="ltx_p" id="S1.T1.3.6.5.3.1.1" style="width:284.5pt;">compare month over month revenue by marketing channel as bar</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.3.7.6.1">6</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.7.6.2.1">
<span class="ltx_p" id="S1.T1.3.7.6.2.1.1" style="width:136.6pt;">replace with pageviews</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.7.6.3.1">
<span class="ltx_p" id="S1.T1.3.7.6.3.1.1" style="width:284.5pt;">compare month over month pageviews by marketing channel as bar</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.3.8.7.1">7</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.8.7.2.1">
<span class="ltx_p" id="S1.T1.3.8.7.2.1.1" style="width:136.6pt;">show top-3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.8.7.3.1">
<span class="ltx_p" id="S1.T1.3.8.7.3.1.1" style="width:284.5pt;">compare month over month pageviews by top-3 marketing channels as bar</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.3.9.8.1">8</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.9.8.2.1">
<span class="ltx_p" id="S1.T1.3.9.8.2.1.1" style="width:136.6pt;">what about top-5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.9.8.3.1">
<span class="ltx_p" id="S1.T1.3.9.8.3.1.1" style="width:284.5pt;">compare month over month pageviews by top-5 marketing channels as bar</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.3.10.9.1">9</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.10.9.2.1">
<span class="ltx_p" id="S1.T1.3.10.9.2.1.1" style="width:136.6pt;">show only this month</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.3.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.10.9.3.1">
<span class="ltx_p" id="S1.T1.3.10.9.3.1.1" style="width:284.5pt;">compare this month pageviews by top-5 marketing channels as bar</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S1.T1.3.11.10.1">10</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S1.T1.3.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.11.10.2.1">
<span class="ltx_p" id="S1.T1.3.11.10.2.1.1" style="width:136.6pt;">add revenue</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S1.T1.3.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.3.11.10.3.1">
<span class="ltx_p" id="S1.T1.3.11.10.3.1.1" style="width:284.5pt;">compare this month pageviews and revenue by top-5 marketing channels as bar</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents example interactions between a user and a conversational AI assistant. Each row shows a sequence of user queries (Conversation) and the corresponding rewritten question generated by the query fusion method (described in Section 3.3 of the paper) with a context window of the last query (k=1).  The rewritten questions aim to be more precise and comprehensive than the user's original input, facilitating accurate responses from the assistant.
> <details>
> <summary>read the caption</summary>
> Table 1: Conversation that a user may have with an assistant and the corresponding rewritten question from our query fusion in Sec. 3.3 with k=1𝑘1k=1italic_k = 1.
> </details>





### In-depth insights


#### LLM QR Adaptivity
The adaptivity of LLMs in Query Rewriting (QR) is a critical area. LLMs, while powerful, may not always perform optimally across diverse tasks without careful adaptation. **Specialized modules tailored to specific query types and use cases might be necessary instead of a one-size-fits-all approach**. Context-dependent strategies are crucial because generic terms can have specific, context-dependent meanings. Practitioners must consider their specific use case and the nature of queries to design effective rewrite strategies, requiring a more nuanced, context-dependent approach is essential. LLM-based query rewriting can also experience concept drift, deviating from the original intention. A systematic evaluation across domains is needed to determine if specialized modules are indeed necessary, ensuring that the design of robust conversational assistants benefits from understanding whether to make use of context or not. The context includes short and long conversational data analysis tasks for generating visualizations, as well as text-based question answering tasks.

#### Rewrite vs. Fusion
The paper explores two distinct approaches to query modification for conversational AI: **rewriting** and **fusion**. Rewriting aims to generate a more self-contained and explicit query based on the context of past interactions, essentially reformulating the user's intent. Fusion, on the other hand, focuses on combining elements from previous queries to create a new query that synthesizes the ongoing conversation. The effectiveness of each approach seems to depend heavily on the specific task. **Rewriting** excels when the user's intent requires clarification and a clear restatement of the question, particularly for question-answering scenarios. **Fusion** shines when the task involves iteratively building upon previous information, such as in data analysis where users progressively refine visualizations or data tables. In essence, **rewriting** offers clarity, while **fusion** provides a concise summary of the interaction. The choice between them involves a trade-off between explicit clarification and contextual synthesis, influenced by the nature of the task.

#### Context is key
In conversational AI, the **context** of a user's query is **paramount** for accurate and relevant responses.  Context encompasses the **history of the conversation**, including previous questions, answers, and any implied information. Failing to consider context can lead to misinterpretations and irrelevant answers. Effective context management involves tracking the dialogue history and employing mechanisms to **resolve ambiguities** and maintain coherence. Question rewriting (QR) techniques become crucial to properly take the context into account to respond accurately to users. Furthermore, the ability to **seamlessly integrate information** gleaned from prior interactions is essential for providing a satisfying user experience.  The **dynamic nature of conversations** underscores the importance of adaptive models capable of adjusting their understanding as new information is revealed. Models must be capable of weighting recent history more strongly than the older history. Finally, accurately discerning user intent amidst complex and evolving dialogues requires sophisticated contextual analysis, highlighting the importance of context.

#### QR:Text & Vis
**Query Rewriting (QR) for Text and Visualizations** addresses the problem of adapting user queries in conversational interfaces that involve both textual and visual data.  It's essential when users interact with systems that generate charts or visualizations based on their input.  The core challenge lies in maintaining context across turns, ensuring the generated visualizations accurately reflect the user's evolving intent. Effective QR methods in this domain must **handle ambiguity, resolve underspecification, and seamlessly integrate new information** into existing queries. QR approaches can involve query expansion with relevant terms, or rewriting the query with similar phrases, leveraging LLMs. The ultimate goal is to improve the accuracy and relevance of the generated visualizations, leading to more efficient and insightful data analysis.

#### Fusion for data
While the provided text doesn't explicitly have a section labeled "Fusion for Data," the concept of "query fusion," which is discussed in the paper, is closely related. Query fusion, in this context, seems to involve **combining the current user query with a summary or representation of past interactions** to create a more contextually aware and effective query. This is particularly relevant in data analysis scenarios where user questions often build upon previous ones. The study highlights that for conversational data analysis assistants generating visualizations, query fusion outperforms query rewriting. This suggests that **summarizing the conversational history and integrating it directly into the query leads to better results than simply rewriting the current query in isolation**. The paper also finds that query fusion can handle conversations of arbitrary length, as it recursively generates a rewritten question that summarizes the conversation up to that point. This contrasts with query rewriting, which requires specifying a fixed length of chat history to consider, a process prone to errors. Thus, **query fusion creates a more adaptable and user-centric experience** by organically adapting to different interactions.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1" style="width:91.0pt;padding:1pt 10.0pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.2" style="width:44.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.2.1">
<span class="ltx_p" id="S3.T2.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1.1.1" style="color:#000000;"># Questions</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.3" style="width:62.6pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.3.1">
<span class="ltx_p" id="S3.T2.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1.1.1" style="color:#000000;"># Questions with Chat History</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.4" style="width:34.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.4.1">
<span class="ltx_p" id="S3.T2.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1.1.1" style="color:#000000;">Chat Length</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.5" style="width:34.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.5.1">
<span class="ltx_p" id="S3.T2.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.5.1.1.1" style="color:#000000;">Question Types</span></span>
</span>
</th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.2">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.2.2.1" style="width:91.0pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.1.1">
<span class="ltx_p" id="S3.T2.1.2.2.1.1.1"><span class="ltx_rule" style="width:0.0pt;height:13.8pt;background:black;display:inline-block;"></span><span class="ltx_text ltx_font_bold" id="S3.T2.1.2.2.1.1.1.1">Text-based Q&amp;A</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.2.2.2" style="width:44.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.2.1">
<span class="ltx_p" id="S3.T2.1.2.2.2.1.1">179</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.2.2.3" style="width:62.6pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.3.1">
<span class="ltx_p" id="S3.T2.1.2.2.3.1.1">136</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.2.2.4" style="width:34.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.4.1">
<span class="ltx_p" id="S3.T2.1.2.2.4.1.1">2-5</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.2.2.5" style="width:34.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.5.1">
<span class="ltx_p" id="S3.T2.1.2.2.5.1.1">3</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.3.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.1.1" style="width:91.0pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.1.1.1">
<span class="ltx_p" id="S3.T2.1.3.1.1.1.1"><span class="ltx_rule" style="width:0.0pt;height:13.8pt;background:black;display:inline-block;"></span><span class="ltx_text ltx_font_bold" id="S3.T2.1.3.1.1.1.1.1">Text-to-Vis (long conv.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.1.2" style="width:44.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.1.2.1">
<span class="ltx_p" id="S3.T2.1.3.1.2.1.1">794</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.1.3" style="width:62.6pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.1.3.1">
<span class="ltx_p" id="S3.T2.1.3.1.3.1.1">715</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.1.4" style="width:34.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.1.4.1">
<span class="ltx_p" id="S3.T2.1.3.1.4.1.1">10</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.3.1.5" style="width:34.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.1.5.1">
<span class="ltx_p" id="S3.T2.1.3.1.5.1.1">7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S3.T2.1.4.2.1" style="width:91.0pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.2.1.1">
<span class="ltx_p" id="S3.T2.1.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.4.2.1.1.1.1">Text-to-Vis (short conv.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S3.T2.1.4.2.2" style="width:44.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.2.2.1">
<span class="ltx_p" id="S3.T2.1.4.2.2.1.1">171</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S3.T2.1.4.2.3" style="width:62.6pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.2.3.1">
<span class="ltx_p" id="S3.T2.1.4.2.3.1.1">161</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S3.T2.1.4.2.4" style="width:34.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.2.4.1">
<span class="ltx_p" id="S3.T2.1.4.2.4.1.1">2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S3.T2.1.4.2.5" style="width:34.1pt;padding:1pt 10.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.2.5.1">
<span class="ltx_p" id="S3.T2.1.4.2.5.1.1">3</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a summary of the statistics for three datasets used in the paper's experiments.  It details the number of questions in each dataset, the number of those questions that have associated chat history (indicating a conversational context), the average length of the chat history (number of turns in the conversation), and the types of questions included in each dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Summary of the datasets and their statistics
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1" style="width:88.2pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1.1" style="color:#000000;">Task</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.2" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.2.1">
<span class="ltx_p" id="S4.T3.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1.1.1" style="color:#000000;">Approach</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.3" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.3.1">
<span class="ltx_p" id="S4.T3.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1.1.1" style="color:#000000;">Cosine Similarity</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.4" style="width:56.9pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.4.1">
<span class="ltx_p" id="S4.T3.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1.1.1" style="color:#000000;">BERT F1</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1" style="background-color:#C5F1FF;">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.2.1.1" style="width:88.2pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.1.1" style="background-color:#C5F1FF;">
<span class="ltx_p" id="S4.T3.1.2.1.1.1.1"><span class="ltx_rule" style="width:0.0pt;height:13.8pt;background:black;display:inline-block;"></span><span class="ltx_text ltx_font_bold" id="S4.T3.1.2.1.1.1.1.1">Text-based Q&amp;A</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.2.1.2" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.2.1" style="background-color:#C5F1FF;">
<span class="ltx_p" id="S4.T3.1.2.1.2.1.1">Query Fusion</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.2.1.3" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.3.1" style="background-color:#C5F1FF;">
<span class="ltx_p" id="S4.T3.1.2.1.3.1.1">0.826</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.2.1.4" style="width:56.9pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.4.1" style="background-color:#C5F1FF;">
<span class="ltx_p" id="S4.T3.1.2.1.4.1.1">0.751</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2" style="background-color:#C5F1FF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.3.2.1" style="width:88.2pt;padding:1pt 12.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.3.2.2" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.3.2.2.1" style="background-color:#C5F1FF;">
<span class="ltx_p" id="S4.T3.1.3.2.2.1.1">Query Rewrite</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.3.2.3" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.3.2.3.1" style="background-color:#C5F1FF;">
<span class="ltx_p" id="S4.T3.1.3.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.3.2.3.1.1.1">0.859</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.3.2.4" style="width:56.9pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.3.2.4.1" style="background-color:#C5F1FF;">
<span class="ltx_p" id="S4.T3.1.3.2.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.3.2.4.1.1.1">0.828</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3" style="background-color:#C8F7C8;">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.4.3.1" style="width:88.2pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.1.1" style="background-color:#C8F7C8;">
<span class="ltx_p" id="S4.T3.1.4.3.1.1.1"><span class="ltx_rule" style="width:0.0pt;height:13.8pt;background:black;display:inline-block;"></span><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.3.1.1.1.1">Text-to-Vis (long conv.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.4.3.2" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.2.1" style="background-color:#C8F7C8;">
<span class="ltx_p" id="S4.T3.1.4.3.2.1.1">Query Fusion</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.4.3.3" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.3.1" style="background-color:#C8F7C8;">
<span class="ltx_p" id="S4.T3.1.4.3.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.3.3.1.1.1">0.820</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.4.3.4" style="width:56.9pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.4.1" style="background-color:#C8F7C8;">
<span class="ltx_p" id="S4.T3.1.4.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.3.4.1.1.1">0.773</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.4" style="background-color:#C8F7C8;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.5.4.1" style="width:88.2pt;padding:1pt 12.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.5.4.2" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.5.4.2.1" style="background-color:#C8F7C8;">
<span class="ltx_p" id="S4.T3.1.5.4.2.1.1">Query Rewrite</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.5.4.3" style="width:71.1pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.5.4.3.1" style="background-color:#C8F7C8;">
<span class="ltx_p" id="S4.T3.1.5.4.3.1.1">0.760</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.5.4.4" style="width:56.9pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.5.4.4.1" style="background-color:#C8F7C8;">
<span class="ltx_p" id="S4.T3.1.5.4.4.1.1">0.734</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_middle" colspan="4" id="S4.T3.1.6.5.1" style="width:88.2pt;padding:1pt 12.0pt;"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of two query rewriting approaches (rewriting and fusion) applied to two distinct conversational tasks: text-based question answering and text-to-visualization.  For each task, the table shows the performance of both approaches using two metrics: cosine similarity and BERT F1 score.  This allows for a quantitative assessment of which approach (rewriting or fusion) is more effective for each specific task.
> <details>
> <summary>read the caption</summary>
> Table 3: Results comparing rewriting and fusion approaches across two conversational tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1" style="width:56.9pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.1.1.1">
<span class="ltx_p" id="S5.T4.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1.1.1" style="color:#000000;">Approach</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.2" style="width:45.5pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.1.2.1">
<span class="ltx_p" id="S5.T4.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.2.1.1.1" style="color:#000000;">Cosine Sim.</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.3" style="width:45.5pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.1.3.1">
<span class="ltx_p" id="S5.T4.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.3.1.1.1" style="color:#000000;">BERT F1</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.2.1">
<td class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T4.1.2.1.1" style="width:56.9pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.2.1.1.1">
<span class="ltx_p" id="S5.T4.1.2.1.1.1.1">Query Fusion</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T4.1.2.1.2" style="width:45.5pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.2.1.2.1">
<span class="ltx_p" id="S5.T4.1.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.1.2.1.1.1">0.925</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S5.T4.1.2.1.3" style="width:45.5pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.2.1.3.1">
<span class="ltx_p" id="S5.T4.1.2.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.1.3.1.1.1">0.856</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.3.2">
<td class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.T4.1.3.2.1" style="width:56.9pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.3.2.1.1">
<span class="ltx_p" id="S5.T4.1.3.2.1.1.1">Query Rewrite</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.T4.1.3.2.2" style="width:45.5pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.3.2.2.1">
<span class="ltx_p" id="S5.T4.1.3.2.2.1.1">0.857</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S5.T4.1.3.2.3" style="width:45.5pt;padding:1pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.3.2.3.1">
<span class="ltx_p" id="S5.T4.1.3.2.3.1.1">0.837</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of query rewriting and query fusion approaches on a short text-to-visualization conversational task.  It shows the cosine similarity and BERT F1 scores achieved by each approach, providing a quantitative assessment of their effectiveness in generating accurate and relevant rewritten questions for this specific type of conversational task.
> <details>
> <summary>read the caption</summary>
> Table 4: Results comparing rewriting and fusion approaches for short text-to-vis conversational task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.1.1.1">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.1" style="width:88.2pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.1.1.1.1">
<span class="ltx_p" id="S5.T5.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.1.1.1" style="color:#000000;">Task</span></span>
</span>
</th>
<th class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.2" style="width:45.5pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.1.1.2.1">
<span class="ltx_p" id="S5.T5.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.2.1.1.1" style="color:#000000;">Cosine Sim.</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.3" style="width:37.0pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.1.1.3.1">
<span class="ltx_p" id="S5.T5.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.3.1.1.1" style="color:#000000;">BERT F1</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.1.2.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.T5.1.2.1.1" style="width:88.2pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.2.1.1.1">
<span class="ltx_p" id="S5.T5.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.1.1.1.1.1">Text-based Q&amp;A</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.T5.1.2.1.2" style="width:45.5pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.2.1.2.1">
<span class="ltx_p" id="S5.T5.1.2.1.2.1.1"><span class="ltx_text" id="S5.T5.1.2.1.2.1.1.1">0.871</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S5.T5.1.2.1.3" style="width:37.0pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.2.1.3.1">
<span class="ltx_p" id="S5.T5.1.2.1.3.1.1"><span class="ltx_text" id="S5.T5.1.2.1.3.1.1.1">0.859</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.3.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_middle ltx_border_b" id="S5.T5.1.3.2.1" style="width:88.2pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.3.2.1.1">
<span class="ltx_p" id="S5.T5.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.3.2.1.1.1.1">Text-to-Vis (long conv.)</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_middle ltx_border_b" id="S5.T5.1.3.2.2" style="width:45.5pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.3.2.2.1">
<span class="ltx_p" id="S5.T5.1.3.2.2.1.1">0.769</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S5.T5.1.3.2.3" style="width:37.0pt;padding:1.5pt 12.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.1.3.2.3.1">
<span class="ltx_p" id="S5.T5.1.3.2.3.1.1">0.740</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a comparative analysis between two query rewriting approaches, with and without an ambiguity detection classifier. It shows the performance of each approach on two conversational tasks: text-based question answering and long conversational text-to-visualization, using cosine similarity and BERT F1 score as evaluation metrics. The inclusion of an ambiguity detection step aims to enhance the performance of query rewriting by addressing ambiguous queries.
> <details>
> <summary>read the caption</summary>
> Table 5: Results comparing rewriting with an ambiguity detection classifier.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.18860/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18860/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18860/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18860/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18860/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18860/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18860/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}