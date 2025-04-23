---
title: "Retrieval-Augmented Generation with Conflicting Evidence"
summary: "RAMDocs: LLM agents can now navigate conflicting info with RAG! New dataset & multi-agent debate enhance response accuracy & reliability."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 University of North Carolina at Chapel Hill",]
showSummary: true
date: 2025-04-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13079 {{< /keyword >}}
{{< keyword icon="writer" >}} Han Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13079" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13079" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13079/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Model(LLM) agents are increasingly adopting Retrieval-Augmented Generation(RAG) to improve the responses. However, the systems often need to handle ambiguous user queries & conflicting info from sources while suppressing the inaccurate info from irrelevant documents. Prior studies handled these challenges in isolation. This paper proposes a new dataset, **RAMDocs (Retrieval with Ambiguity and Misinformation in Documents)**, to simulate complex scenarios including ambiguity, misinformation, and noise.



To address this, the paper introduces **MADAM-RAG, a multi-agent approach** where LLM agents debate over an answer's merits, allowing an aggregator to collate disambiguated responses while discarding noise, jointly handling diverse conflicts. MADAM-RAG's effectiveness is demonstrated using both closed and open-source models on AmbigDocs, improving over RAG baselines by up to 11.40%, and on FaithEval, improving by up to 15.80% with Llama3.3-70B-Instruct.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Conflicting information from multiple sources is a critical challenge for retrieval-augmented generation (RAG) systems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Multi-agent debate frameworks can effectively improve the accuracy and reliability of RAG systems by reasoning and filtering conflicting information. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The new RAMDocs dataset provides a valuable benchmark for evaluating the performance of RAG systems in handling ambiguity, misinformation, and noise. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel dataset, RAMDocs, to specifically address the issue of **handling conflicting information from multiple sources** for RAG systems. The **multi-agent debate framework** not only highlights the importance of **reasoning and filtering capabilities** but also opens new avenues for future research on building more robust and reliable RAG pipelines.

------
#### Visual Insights



![](https://arxiv.org/html/2504.13079/x1.png)

> 🔼 The figure illustrates the challenges posed by the RAMDocs dataset and the MADAM-RAG solution.  The left side shows an example from the RAMDocs dataset where a simple query, 'In which year was Michael Jordan born?', retrieves documents with conflicting information. This conflict arises from three sources: (1) ambiguity (different people named Michael Jordan), (2) misinformation (a document providing a factually incorrect birth year), and (3) noise (irrelevant documents). The right side depicts the MADAM-RAG approach, which uses multiple agents, each summarizing a single document's information, to engage in a multi-round debate and resolve this conflicting evidence. An aggregator then synthesizes a final coherent answer from the debate.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example from our RamDocs dataset (left) illustrating multiple sources of conflict in retrieved documents. Conflict may occur because of ambiguity in the query (in this case, different referents for Michael Jordan), but also because of misinformation from incorrect documents and noise from irrelevant ones. Madam-RAG (right) addresses this through multi-agent debate, where each agent summarizes and represents the information in one document. Agents discuss their responses across multiple rounds, with the final answers being combined via an aggregator module that summarizes the discussion.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.3.1">FaithEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.4.1">AmbigDocs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.5"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T1.1.1.1.5.1">Ram<span class="ltx_text ltx_font_upright" id="S5.T1.1.1.1.5.1.1">Docs</span></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.2.1.1" rowspan="4"><span class="ltx_text" id="S5.T1.1.2.1.1.1">Llama3.3-70B-Inst</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.2.1.2">No RAG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.3">26.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.4">4.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.5">5.80</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.3.2.1">Prompt-based</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.2">27.30</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.3">54.20</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.4">32.60</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.4.3.1">Astute RAG</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.4.3.2">37.10</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.4.3.3">46.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.4.3.4">31.80</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.5.4.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.5.4.1.1">Madam</span>-RAG</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.5.4.2.1">43.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.5.4.3.1">58.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.5.4.4.1">34.40</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.6.5.1" rowspan="4"><span class="ltx_text" id="S5.T1.1.6.5.1.1">Qwen2.5-72B-Inst</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.6.5.2">No RAG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.3">26.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.4">1.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.5">4.20</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.7.6.1">Prompt-based</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.7.6.2">38.50</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.7.6.3">41.20</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.7.6.4">20.60</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.8.7.1">Astute RAG</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.7.2">44.60</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.7.3">39.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.7.4">20.80</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.9.8.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.9.8.1.1">Madam</span>-RAG</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.9.8.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.9.8.2.1">57.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.9.8.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.9.8.3.1">52.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.9.8.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.9.8.4.1">26.40</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.1.10.9.1" rowspan="4"><span class="ltx_text" id="S5.T1.1.10.9.1.1">GPT-4o-mini</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.10.9.2">No RAG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.10.9.3">31.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.10.9.4">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.10.9.5">2.50</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.11.10.1">Prompt-based</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.11.10.2">21.00</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.11.10.3">51.50</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.11.10.4">25.00</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.12.11.1">Astute RAG</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.12.11.2">34.00</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.12.11.3">15.00</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.12.11.4">13.00</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.1.13.12.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.13.12.1.1">Madam</span>-RAG</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.13.12.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.13.12.2.1">38.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.13.12.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.13.12.3.1">63.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.13.12.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.13.12.4.1">28.00</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance comparison of MADAM-RAG against several baselines across three different datasets: FaithEval, AmbigDocs, and RAMDocs.  Each dataset evaluates a different aspect of handling conflicting information in a retrieval-augmented generation (RAG) setting. FaithEval focuses on handling misinformation, AmbigDocs on handling ambiguous queries with multiple valid answers, and RAMDocs on handling a combination of ambiguity, misinformation, and noise.  The baselines include a No RAG model (using only the LLM's internal knowledge), a Concatenated Prompt model (concatenating all retrieved documents), and Astute RAG. The results show MADAM-RAG's superior performance across all datasets and for different language models (LLMs), demonstrating its effectiveness in managing various types of conflicting information.
> <details>
> <summary>read the caption</summary>
> Table 1: Madam-RAG outperforms baselines across datasets on different language models.
> </details>





### In-depth insights


#### RAG & Conflict
**RAG's effectiveness hinges on conflict resolution.** Ambiguity, misinformation, and noise present key challenges. Handling conflicting information from varied sources is crucial for RAG systems. Balancing multiple valid answers with misinformation filtering is vital. **Datasets must simulate real-world scenarios involving diverse conflicts.** Models need to identify ambiguity and ignore misinformation. Approaches should also handle noisy data and differing levels of support for answers. Multi-agent debate frameworks such as MADAM-RAG address these challenges by providing a structured approach to inter-document conflicts.

#### MADAM-RAG
**MADAM-RAG**, likely a novel method, seems to address challenges in Retrieval-Augmented Generation (RAG) by employing a multi-agent debate framework. It aims to improve response factuality and handle conflicting information. It potentially enhances RAG systems in dealing with ambiguity, misinformation, and noisy data from diverse sources. **Key advantages** could include better disambiguation, filtering of inaccurate information, and more robust answers in complex scenarios. Multi-agent interaction likely enables iterative refinement of information and error correction, leading to better overall performance. **It could also offer improved interpretability**, by allowing tracing of information flow and conflict resolution among agents.

#### RAMDocs Dataset
The RAMDocs dataset is designed to simulate real-world retrieval challenges, combining conflicting information, noise, and misinformation. **It builds upon AmbigDocs by including misinformation and irrelevant documents.** It simulates the variability of real-world retrieval by introducing randomness in the number of correct answers, supporting documents, and adding misinformation/noise, addressing limitations of existing datasets. **The goal is to test RAG system robustness.** The datasets consist of 500 unique queries extracted from AmbigDocs, with each query have 2.20 valid answers. **It tests the model's ability to filter noise.**

#### Multi-Agent Debate
**Multi-agent debate** frameworks offer a structured approach to handling conflicting information in RAG systems. By assigning each document to an individual agent, different perspectives can be independently evaluated and debated. This iterative process allows for identifying ambiguity, misinformation, and noise. The final answer is synthesized through an aggregator, leading to more reliable and trustworthy responses. **The key lies in balancing diversity and selectivity**: preserving valid interpretations while filtering out unsupported claims.

#### Future RAMDocs
Considering the trajectory of Retrieval-Augmented Generation (RAG), 'Future RAMDocs' would involve dynamically adapting to diverse information conflicts. **Datasets should simulate real-world scenarios with ambiguous queries, misinformation, and noise**, requiring models to discern nuanced contexts and user intents. Adaptive methods for weighting evidence based on source reliability and context relevance should be a central focus. **Multi-agent systems could become more sophisticated, with agents specializing in conflict resolution strategies or fact-checking**. Evaluation metrics must evolve beyond exact match to assess the quality of disambiguation, trustworthiness of responses, and ability to handle varying levels of evidence imbalance. **Incorporating user feedback and iterative refinement could further enhance the system's adaptability and reliability**, leading to more robust and trustworthy information retrieval in complex environments.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13079/x2.png)

> 🔼 The figure illustrates the MADAM-RAG architecture.  Each retrieved document is assigned to a separate LLM agent. These agents independently summarize and represent the information in their assigned document.  The agents then engage in a multi-round debate to identify and resolve inconsistencies, filter out misinformation and noise, and address ambiguity in the input. Finally, an aggregator module synthesizes the discussions from all agents to produce a single, coherent response.
> <details>
> <summary>read the caption</summary>
> Figure 2: Madam-RAG operates by assigning each document to a separate agent. Agents are responsible for summarizing and representing their documents, and engage in a multi-agent, multi-round debate with each other to filter out misinformation and noise and address ambiguity. An aggregator then summarizes the discussion into a single response.
> </details>



![](https://arxiv.org/html/2504.13079/x3.png)

> 🔼 This ablation study analyzes the effects of the aggregator module and the number of debate rounds in the MADAM-RAG model on the FaithEval and RAMDocs datasets.  It demonstrates how both the aggregator and multiple rounds of debate contribute to improved performance in handling conflicting information, misinformation, and ambiguity. The results show that the aggregator significantly enhances performance, especially in earlier rounds, by synthesizing evidence and suppressing unreliable information. Increasing the number of debate rounds further refines the model's responses and reduces errors, highlighting the iterative nature of the debate process.  The analysis shows the tradeoff between precision and recall, indicating the importance of precision in scenarios where incorrect answers are harmful.
> <details>
> <summary>read the caption</summary>
> Figure 3: Ablation study on the importance of aggregator and multiple rounds of discussion.
> </details>



![](https://arxiv.org/html/2504.13079/x4.png)

> 🔼 Figure 4 illustrates the performance comparison of different methods using the Llama 3.3-70B-Instruct model under two experimental conditions. Subfigure (a) examines the impact of an uneven distribution of supporting documents across multiple valid answers within a query. It shows how the number of supporting documents for one correct answer affects the performance of different approaches. Subfigure (b) assesses how increased levels of misinformation in the retrieved documents impact model performance, specifically examining the changes as the number of misinformation documents rises. This figure highlights how various methods handle conflict and imbalance in evidence within retrieval-augmented generation systems.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance of different methods with Llama3.3-70B-Instruct under setting (a) imbalance in supporting documents and (b) increasing the level of misinformation.
> </details>



![](https://arxiv.org/html/2504.13079/x5.png)

> 🔼 Figure 5 presents a detailed statistical analysis of the RAMDocs dataset, breaking down various aspects across both document and answer levels.  At the document level, it shows the average number of documents per example (5.53), the average number supporting correct answers (3.84), the average number supporting incorrect answers (0.61), and the average number containing irrelevant or noisy information (1.08). This gives insight into the prevalence of misinformation and noise within the dataset.  The second row focuses on the answer level, providing the average number of correct answers per example (2.20), the average number of incorrect answers (0.86), and the average number of documents supporting each correct answer (1.77) and each incorrect answer (0.73).  This highlights the level of ambiguity and the imbalance of supporting evidence for different answers within each example.
> <details>
> <summary>read the caption</summary>
> Figure 5: Dataset statistics across eight dimensions. The first row shows document-level properties per example: total number of documents (avg: 5.53), number of documents supporting correct answers (avg: 3.84), incorrect answers (avg: 0.61), and noisy or irrelevant content (avg: 1.08). The second row presents answer-level properties: number of correct answers per example (avg: 2.20), wrong answers (avg: 0.86), and number of documents supporting each correct answer (avg: 1.77) and each wrong answer (avg: 0.73).
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13079/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13079/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}