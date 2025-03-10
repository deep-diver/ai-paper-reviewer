---
title: "SAGE: A Framework of Precise Retrieval for RAG"
summary: "SAGE: Precise RAG via semantic segmentation, adaptive chunking, and LLM feedback, boosting QA accuracy & cost-efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01713 {{< /keyword >}}
{{< keyword icon="writer" >}} Jintao Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01713" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01713" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01713/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Retrieval-augmented generation (RAG)** enhances QA by leveraging external knowledge. Current RAG methods face challenges: (1) segmenting corpus without considering semantics, causing context loss, and (2) balancing relevant vs. irrelevant context is difficult, leading to inaccurate answers and token cost inefficiencies. These limitations stem from ineffective corpus segmentation and noisy retrieval issues. 



This paper introduces **SAGE, a RAG framework**, designed to overcome these limitations. SAGE employs a semantic segmentation model for coherent chunks, a gradient-based selection for relevant context, and LLM feedback for refining the context. This approach boosts the quality of QA by 61.25% and cost efficiency by 49.41% by avoiding noisy context and improving the retrieved context for LLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Semantic segmentation significantly improves retrieval accuracy in RAG. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Adaptive chunk selection dynamically optimizes context for QA. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LLM self-feedback effectively refines context retrieval, enhancing precision. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work enhances RAG by improving retrieval precision, significantly boosting QA accuracy and cost-efficiency. It opens new research directions in semantic segmentation and adaptive chunk selection for better context utilization.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01713/x1.png)

> 🔼 This figure showcases three common problems in the precise retrieval phase of Retrieval-Augmented Generation (RAG) systems.  Panel A demonstrates 'Ineffective Corpus Segmentation,' where the crucial segment containing the answer is improperly divided, hindering retrieval. Panel B illustrates 'Noisy Retrieval,' where the retrieval process returns both relevant and irrelevant segments, leading to an ambiguous and potentially inaccurate LLM response. Finally, Panel C shows 'Missing Retrieval,' where a critical segment containing the answer is missed, resulting in an incorrect LLM response. Each panel shows the question, the relevant segment, the retrieved segments, and the resulting LLM response, highlighting the failures that result from poor segmentation and retrieval strategies.
> <details>
> <summary>read the caption</summary>
> Figure 1: Three motivational examples illustrating the current limitations of precise retrieval for RAG.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.T1.8">
<tr class="ltx_tr" id="S1.T1.8.9">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.8.9.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.8.9.1.1">Notation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.8.9.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.8.9.2.1">Description</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.1.1.1" style="padding-left:9.0pt;padding-right:9.0pt;"><math alttext="\mathbb{T}" class="ltx_Math" display="inline" id="S1.T1.1.1.1.m1.1"><semantics id="S1.T1.1.1.1.m1.1a"><mi id="S1.T1.1.1.1.m1.1.1" xref="S1.T1.1.1.1.m1.1.1.cmml">𝕋</mi><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.m1.1b"><ci id="S1.T1.1.1.1.m1.1.1.cmml" xref="S1.T1.1.1.1.m1.1.1">𝕋</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.m1.1c">\mathbb{T}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.m1.1d">blackboard_T</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.1.1.2" style="padding-left:9.0pt;padding-right:9.0pt;">Segmented Chunks</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.2.2.1" style="padding-left:9.0pt;padding-right:9.0pt;"><math alttext="f_{e}(\cdot)" class="ltx_Math" display="inline" id="S1.T1.2.2.1.m1.1"><semantics id="S1.T1.2.2.1.m1.1a"><mrow id="S1.T1.2.2.1.m1.1.2" xref="S1.T1.2.2.1.m1.1.2.cmml"><msub id="S1.T1.2.2.1.m1.1.2.2" xref="S1.T1.2.2.1.m1.1.2.2.cmml"><mi id="S1.T1.2.2.1.m1.1.2.2.2" xref="S1.T1.2.2.1.m1.1.2.2.2.cmml">f</mi><mi id="S1.T1.2.2.1.m1.1.2.2.3" xref="S1.T1.2.2.1.m1.1.2.2.3.cmml">e</mi></msub><mo id="S1.T1.2.2.1.m1.1.2.1" xref="S1.T1.2.2.1.m1.1.2.1.cmml">⁢</mo><mrow id="S1.T1.2.2.1.m1.1.2.3.2" xref="S1.T1.2.2.1.m1.1.2.cmml"><mo id="S1.T1.2.2.1.m1.1.2.3.2.1" stretchy="false" xref="S1.T1.2.2.1.m1.1.2.cmml">(</mo><mo id="S1.T1.2.2.1.m1.1.1" lspace="0em" rspace="0em" xref="S1.T1.2.2.1.m1.1.1.cmml">⋅</mo><mo id="S1.T1.2.2.1.m1.1.2.3.2.2" stretchy="false" xref="S1.T1.2.2.1.m1.1.2.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.2.2.1.m1.1b"><apply id="S1.T1.2.2.1.m1.1.2.cmml" xref="S1.T1.2.2.1.m1.1.2"><times id="S1.T1.2.2.1.m1.1.2.1.cmml" xref="S1.T1.2.2.1.m1.1.2.1"></times><apply id="S1.T1.2.2.1.m1.1.2.2.cmml" xref="S1.T1.2.2.1.m1.1.2.2"><csymbol cd="ambiguous" id="S1.T1.2.2.1.m1.1.2.2.1.cmml" xref="S1.T1.2.2.1.m1.1.2.2">subscript</csymbol><ci id="S1.T1.2.2.1.m1.1.2.2.2.cmml" xref="S1.T1.2.2.1.m1.1.2.2.2">𝑓</ci><ci id="S1.T1.2.2.1.m1.1.2.2.3.cmml" xref="S1.T1.2.2.1.m1.1.2.2.3">𝑒</ci></apply><ci id="S1.T1.2.2.1.m1.1.1.cmml" xref="S1.T1.2.2.1.m1.1.1">⋅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.2.2.1.m1.1c">f_{e}(\cdot)</annotation><annotation encoding="application/x-llamapun" id="S1.T1.2.2.1.m1.1d">italic_f start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT ( ⋅ )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.2.2.2" style="padding-left:9.0pt;padding-right:9.0pt;">Embedding model</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.3.3.1" style="padding-left:9.0pt;padding-right:9.0pt;"><math alttext="\mathcal{M}" class="ltx_Math" display="inline" id="S1.T1.3.3.1.m1.1"><semantics id="S1.T1.3.3.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S1.T1.3.3.1.m1.1.1" xref="S1.T1.3.3.1.m1.1.1.cmml">ℳ</mi><annotation-xml encoding="MathML-Content" id="S1.T1.3.3.1.m1.1b"><ci id="S1.T1.3.3.1.m1.1.1.cmml" xref="S1.T1.3.3.1.m1.1.1">ℳ</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.3.1.m1.1c">\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.3.1.m1.1d">caligraphic_M</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.3.3.2" style="padding-left:9.0pt;padding-right:9.0pt;">MLP model used in segmentation model</td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.4.4.1" style="padding-left:9.0pt;padding-right:9.0pt;"><math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S1.T1.4.4.1.m1.1"><semantics id="S1.T1.4.4.1.m1.1a"><mi id="S1.T1.4.4.1.m1.1.1" xref="S1.T1.4.4.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S1.T1.4.4.1.m1.1b"><ci id="S1.T1.4.4.1.m1.1.1.cmml" xref="S1.T1.4.4.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.4.4.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.4.4.1.m1.1d">blackboard_C</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.4.4.2" style="padding-left:9.0pt;padding-right:9.0pt;">Chunks queried from vector database</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.5.5.1" style="padding-left:9.0pt;padding-right:9.0pt;"><math alttext="\mathbb{C}_{s}" class="ltx_Math" display="inline" id="S1.T1.5.5.1.m1.1"><semantics id="S1.T1.5.5.1.m1.1a"><msub id="S1.T1.5.5.1.m1.1.1" xref="S1.T1.5.5.1.m1.1.1.cmml"><mi id="S1.T1.5.5.1.m1.1.1.2" xref="S1.T1.5.5.1.m1.1.1.2.cmml">ℂ</mi><mi id="S1.T1.5.5.1.m1.1.1.3" xref="S1.T1.5.5.1.m1.1.1.3.cmml">s</mi></msub><annotation-xml encoding="MathML-Content" id="S1.T1.5.5.1.m1.1b"><apply id="S1.T1.5.5.1.m1.1.1.cmml" xref="S1.T1.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S1.T1.5.5.1.m1.1.1.1.cmml" xref="S1.T1.5.5.1.m1.1.1">subscript</csymbol><ci id="S1.T1.5.5.1.m1.1.1.2.cmml" xref="S1.T1.5.5.1.m1.1.1.2">ℂ</ci><ci id="S1.T1.5.5.1.m1.1.1.3.cmml" xref="S1.T1.5.5.1.m1.1.1.3">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.5.5.1.m1.1c">\mathbb{C}_{s}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.5.5.1.m1.1d">blackboard_C start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.5.2" style="padding-left:9.0pt;padding-right:9.0pt;">Chunks after gradient based selection</td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.6.6.1" style="padding-left:9.0pt;padding-right:9.0pt;"><math alttext="N" class="ltx_Math" display="inline" id="S1.T1.6.6.1.m1.1"><semantics id="S1.T1.6.6.1.m1.1a"><mi id="S1.T1.6.6.1.m1.1.1" xref="S1.T1.6.6.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S1.T1.6.6.1.m1.1b"><ci id="S1.T1.6.6.1.m1.1.1.cmml" xref="S1.T1.6.6.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.6.6.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S1.T1.6.6.1.m1.1d">italic_N</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.6.6.2" style="padding-left:9.0pt;padding-right:9.0pt;">The number of chunks queried from a vector database</td>
</tr>
<tr class="ltx_tr" id="S1.T1.7.7">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.7.7.1" style="padding-left:9.0pt;padding-right:9.0pt;"><math alttext="K" class="ltx_Math" display="inline" id="S1.T1.7.7.1.m1.1"><semantics id="S1.T1.7.7.1.m1.1a"><mi id="S1.T1.7.7.1.m1.1.1" xref="S1.T1.7.7.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="S1.T1.7.7.1.m1.1b"><ci id="S1.T1.7.7.1.m1.1.1.cmml" xref="S1.T1.7.7.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.7.7.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="S1.T1.7.7.1.m1.1d">italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.7.7.2" style="padding-left:9.0pt;padding-right:9.0pt;">The number of retrieved chunks</td>
</tr>
<tr class="ltx_tr" id="S1.T1.8.8">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S1.T1.8.8.1" style="padding-left:9.0pt;padding-right:9.0pt;"><math alttext="c_{i},c_{o}" class="ltx_Math" display="inline" id="S1.T1.8.8.1.m1.2"><semantics id="S1.T1.8.8.1.m1.2a"><mrow id="S1.T1.8.8.1.m1.2.2.2" xref="S1.T1.8.8.1.m1.2.2.3.cmml"><msub id="S1.T1.8.8.1.m1.1.1.1.1" xref="S1.T1.8.8.1.m1.1.1.1.1.cmml"><mi id="S1.T1.8.8.1.m1.1.1.1.1.2" xref="S1.T1.8.8.1.m1.1.1.1.1.2.cmml">c</mi><mi id="S1.T1.8.8.1.m1.1.1.1.1.3" xref="S1.T1.8.8.1.m1.1.1.1.1.3.cmml">i</mi></msub><mo id="S1.T1.8.8.1.m1.2.2.2.3" xref="S1.T1.8.8.1.m1.2.2.3.cmml">,</mo><msub id="S1.T1.8.8.1.m1.2.2.2.2" xref="S1.T1.8.8.1.m1.2.2.2.2.cmml"><mi id="S1.T1.8.8.1.m1.2.2.2.2.2" xref="S1.T1.8.8.1.m1.2.2.2.2.2.cmml">c</mi><mi id="S1.T1.8.8.1.m1.2.2.2.2.3" xref="S1.T1.8.8.1.m1.2.2.2.2.3.cmml">o</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.8.8.1.m1.2b"><list id="S1.T1.8.8.1.m1.2.2.3.cmml" xref="S1.T1.8.8.1.m1.2.2.2"><apply id="S1.T1.8.8.1.m1.1.1.1.1.cmml" xref="S1.T1.8.8.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S1.T1.8.8.1.m1.1.1.1.1.1.cmml" xref="S1.T1.8.8.1.m1.1.1.1.1">subscript</csymbol><ci id="S1.T1.8.8.1.m1.1.1.1.1.2.cmml" xref="S1.T1.8.8.1.m1.1.1.1.1.2">𝑐</ci><ci id="S1.T1.8.8.1.m1.1.1.1.1.3.cmml" xref="S1.T1.8.8.1.m1.1.1.1.1.3">𝑖</ci></apply><apply id="S1.T1.8.8.1.m1.2.2.2.2.cmml" xref="S1.T1.8.8.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S1.T1.8.8.1.m1.2.2.2.2.1.cmml" xref="S1.T1.8.8.1.m1.2.2.2.2">subscript</csymbol><ci id="S1.T1.8.8.1.m1.2.2.2.2.2.cmml" xref="S1.T1.8.8.1.m1.2.2.2.2.2">𝑐</ci><ci id="S1.T1.8.8.1.m1.2.2.2.2.3.cmml" xref="S1.T1.8.8.1.m1.2.2.2.2.3">𝑜</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.8.8.1.m1.2c">c_{i},c_{o}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.8.8.1.m1.2d">italic_c start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT , italic_c start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S1.T1.8.8.2" style="padding-left:9.0pt;padding-right:9.0pt;">Price per input/output token of a LLM</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table lists the notations used throughout the paper.  It defines acronyms and symbols used to represent various aspects of the SAGE framework, including corpus elements, models, and performance metrics. This provides a handy reference for understanding the mathematical descriptions and algorithms presented later in the paper.
> <details>
> <summary>read the caption</summary>
> TABLE I: Notations.
> </details>





### In-depth insights


#### Precise Retrieval
**Precise retrieval** in RAG systems hinges on semantically coherent data chunks. Current methods often segment corpora without semantic awareness, leading to retrieval of incomplete or irrelevant information. **Effective segmentation** is essential to capture the full context needed for accurate question answering. Strategies to ensure precise retrieval dynamically adjust the amount of context based on the specific question, avoiding a fixed number of chunks that may introduce noise or miss crucial data. This approach leverages feedback mechanisms to refine retrieval accuracy, aiming to provide LLMs with only the most relevant and complete information, ultimately boosting QA performance and cost-efficiency by reducing unnecessary token processing.

#### Semantic Chunks
**Semantic chunks** play a crucial role in enhancing RAG. Current methods often overlook semantic coherence, leading to irrelevant or incomplete information retrieval. **Effective segmentation** ensures retrieved chunks are semantically complete and relevant, improving QA capabilities. Unlike fixed-length chunks, **semantics-aware chunks** better capture context, reducing noisy information and improving answer accuracy. Training lightweight models for rapid and accurate semantic segmentation is key. This approach minimizes token requirements and lowers LLM inference costs, ultimately leading to more precise and efficient RAG systems, while **Gradient-based chunk selection** is used to find the optimal chunk

#### Gradient Selection
The research paper introduces a 'Gradient-based Chunk Selection' method for improving the precision of retrieval-augmented generation (RAG). This approach dynamically selects context chunks based on the **relevance score gradient**, aiming to identify the most pertinent information while minimizing noise. Traditional methods often rely on a fixed number of retrieved chunks, leading to either insufficient context or the inclusion of irrelevant data. **By leveraging the gradient**, the system identifies points where relevance sharply decreases, effectively truncating the context to only include the most valuable segments. This technique enhances accuracy, reduces computational costs, and optimizes the information retrieval process within RAG frameworks.

#### LLM Self-Feedback
**LLM Self-Feedback** is presented as an integral component for refining retrieval precision. By prompting the LLM to evaluate both the quality of its answer and the relevance of the retrieved context, the framework actively identifies and mitigates issues like **noisy retrieval** or **missing context**. This iterative feedback loop dynamically adjusts the number of retrieved chunks based on the LLM's assessment, ensuring a balance between sufficient information and minimal noise. A self-feedback loop has two outcomes, the first being an evaluation score and the second denoting context adjustment. If there is excessive information, the retrieved chunks reduce by one, or if there is information lacking, the chunks increase by one. This approach harnesses the LLM's understanding of the question and the ideal context, allowing for a more adaptive and context-aware retrieval process than traditional methods with fixed retrieval sizes.

#### Scalable SAGE
**Scalable SAGE** highlights the importance of the solution's adaptability to growing datasets & user loads. Key considerations include segmentation & retrieval speed, memory footprint, and concurrent processing capabilities. Efficiency in these areas is critical to maintaining real-time responsiveness. The system must leverage hardware acceleration (GPUs) and algorithmic optimizations to handle large-scale datasets. Maintaining performance as data volume and user concurrency increases is a core factor. It should also be cost-effective in terms of computational resources and energy consumption. Scalability is not merely about handling more data; it is about doing so efficiently, cost-effectively, and without sacrificing the accuracy or relevance of the generated answers. The system must adapt to new domains without significant performance degradation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01713/x2.png)

> 🔼 This figure illustrates the workflow of the SAGE framework for precise retrieval in RAG.  It begins with corpus segmentation, where the corpus is divided into semantically complete chunks using a trained model.  These chunks are then converted into vector embeddings and stored in a vector database.  When a question arrives, it is embedded and used to query the database, retrieving the top N most similar chunks. A gradient-based reranking model then dynamically selects the most relevant chunks (Top K). These top K chunks, along with the original question, are provided as input to a large language model (LLM) for answer generation. Finally, a self-feedback loop is implemented: the LLM's generated answer and the context are assessed to determine if additional or fewer chunks are needed for a more accurate response. If the answer quality is not sufficient, the system iteratively refines chunk selection and LLM input until the quality reaches the set threshold or the iteration limit is reached.
> <details>
> <summary>read the caption</summary>
> Figure 2: Workflow of SAGE, where the ⇢⇢\dashrightarrow⇢ inidcates the pipelines of self-feedback.
> </details>



![](https://arxiv.org/html/2503.01713/x3.png)

> 🔼 This figure illustrates the motivation behind choosing a suitable corpus segmentation method for retrieval-augmented generation (RAG). It compares four different approaches: partitioning by a small fixed length, partitioning by whole sentences using a small fixed length, partitioning by whole sentences using a large fixed length, and using a semantics-based segmentation model. The examples highlight how fixed-length segmentation often leads to semantically incomplete or incoherent chunks, whereas a semantic approach ensures the retrieved context is relevant and complete. The numbers within the figure represent chunk IDs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Motivation of corpus segmentation. The number in  1 means the chunk ID.
> </details>



![](https://arxiv.org/html/2503.01713/x4.png)

> 🔼 This figure illustrates the architecture of the corpus segmentation model used in the SAGE framework.  The model takes pairs of sentences as input, embedding them using a pre-trained embedding model.  Feature augmentation then calculates the difference and product of the sentence embeddings.  Finally, a Multi-Layer Perceptron (MLP) processes these features (embeddings, difference, and product) to produce a score indicating whether the two sentences should belong to the same semantically coherent chunk or be separated.  A threshold on this score determines the final segmentation decision.
> <details>
> <summary>read the caption</summary>
> Figure 4: Corpus segmentation model.
> </details>



![](https://arxiv.org/html/2503.01713/x5.png)

> 🔼 This figure illustrates two common patterns observed in the relevance scores assigned to retrieved document segments by a reranking model in a RAG system.  The x-axis represents the ID of each retrieved segment, and the y-axis shows its relevance score.  The first pattern shows a sharp drop in relevance scores after the top few segments, indicating a clear separation between highly relevant and less relevant content.  The second pattern shows a more gradual decrease in relevance, suggesting a less distinct boundary between highly relevant and less relevant segments.  These patterns highlight the challenge of dynamically selecting the optimal number of relevant segments for input to the language model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Two general cases in relevance scores of retrieved segmentations.
> </details>



![](https://arxiv.org/html/2503.01713/x6.png)

> 🔼 This figure shows the prompt template used for the LLM self-feedback mechanism in the SAGE framework.  The prompt includes the original question, the LLM's generated answer, and a request for the LLM to evaluate the answer's quality (on a scale of 1-10) and assess whether the provided context was sufficient or excessive (+1/-1). This feedback is crucial for dynamically adjusting the number of retrieved chunks in subsequent iterations, improving the accuracy and efficiency of the RAG system.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prompt of Self-Feedback.
> </details>



![](https://arxiv.org/html/2503.01713/x7.png)

> 🔼 Figure 7 presents a bar chart comparing the time overhead introduced by the semantic segmentation module in SAGE across three different datasets: QUALITY, NarrativeQA, and QASPER.  It illustrates the additional time required for SAGE's segmentation process, comparing it to the time taken by a typical LLM approach.  The chart visually demonstrates whether the time savings from using a lightweight segmentation model in SAGE outweighs the overhead added by the extra steps in SAGE's process. The use of different LLMs (GPT-4 and GPT-4-o-mini) for different parts of the experiment are also shown in the graph.
> <details>
> <summary>read the caption</summary>
> Figure 7: Segmentation Overhead Evaluation.
> </details>



![](https://arxiv.org/html/2503.01713/x8.png)

> 🔼 This figure demonstrates a real-world example from the QUALITY dataset where noisy retrieval negatively impacts question answering.  The question asks for the genetic definition of 'kin'.  While the correct answer is 'full siblings', numerous noisy chunks, containing information supporting alternative answers like 'all humans', are retrieved along with the correct answer.  The chart illustrates how the score assigned to each chunk by the model varies. Crucially, it shows that if the number of retrieved chunks (K) is small (2 ≤ K ≤ 10), the correct answer ('full siblings') is selected. However, as K increases (11 ≤ K ≤ 13), incorrect responses arise due to the noisy chunks' influence, and when K reaches 14, the LLM selects the completely wrong answer 'all humans'. This highlights the issue of noisy retrieval in RAG systems and the need for a precise retrieval mechanism.
> <details>
> <summary>read the caption</summary>
> Figure 8: A case of noisy retrieval.
> </details>



![](https://arxiv.org/html/2503.01713/x9.png)

> 🔼 This figure demonstrates a scenario where crucial contextual information, necessary for accurate question answering, is absent from the retrieved text.  The question is about which technology has not been developed on Venus. The correct answer (Option 3: Creating fire) requires the presence of a specific chunk of text among those retrieved. However, when the number (K) of retrieved chunks is set to a value less than or equal to 6, this essential chunk is missing, leading to an incorrect answer (Option 4: Metallurgy).  Only when K is between 7 and 14 does the model have access to the necessary information and provide the correct answer.  Increasing K to 15 leads to another incorrect answer.
> <details>
> <summary>read the caption</summary>
> Figure 9: A case of missing retrieval.
> </details>



![](https://arxiv.org/html/2503.01713/x10.png)

> 🔼 This figure shows an example from the QUALITY dataset where ineffective corpus segmentation leads to an incorrect answer.  The question is: 'Who asked Gavir to sing a tribal song?' The correct answer is 'The moderator.' However, the corpus is segmented such that the two sentences containing the answer ('Well, enough of that!' the moderator said briskly.  'How about singing one of your tribal songs for us?' Gavir said, 'I will sing the Song of Going to Hunt.') are split into separate chunks.  As a result, the model cannot connect the moderator's request with Gavir's response, making it impossible to determine the correct answer.
> <details>
> <summary>read the caption</summary>
> Figure 10: A case of ineffective corpus segmentation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T2.1">
<tr class="ltx_tr" id="S6.T2.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.1.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <svg height="19.07" overflow="visible" version="1.1" width="79.26"><g transform="translate(0,19.07) scale(1,-1)"><path d="M 0,19.07 79.26,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S6.T2.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S6.T2.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S6.T2.1.1.1.pic1.1.1.1.1">Model</span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(39.63,9.61)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S6.T2.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S6.T2.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S6.T2.1.1.1.pic1.2.1.1.1">Metric</span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.2" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.1.2.1">ROUGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.3" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.1.3.1">BLEU-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.4" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.1.4.1">BLEU-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.5" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.1.5.1">METEOR</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.2.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.2.1.1">SBERT with SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.2.2.1">27.56%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.3" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.2.3.1">14.56%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.4" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.2.4.1">0.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.5" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.2.5.1">13.97%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.3.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.3.1.1">SBERT without SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.2" style="padding-left:22.0pt;padding-right:22.0pt;">       27.34%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3" style="padding-left:22.0pt;padding-right:22.0pt;">       12.99%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.4" style="padding-left:22.0pt;padding-right:22.0pt;">       0.94%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.5" style="padding-left:22.0pt;padding-right:22.0pt;">       12.61%</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.4.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.4.1.1">BM25 with SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.2" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.4.2.1">25.93%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.3" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.4.3.1">14.44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.4.4.1">0.99%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.5" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.4.5.1">13.61%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.5.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.5.1.1">BM25 without SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.2" style="padding-left:22.0pt;padding-right:22.0pt;">       22.12%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.3" style="padding-left:22.0pt;padding-right:22.0pt;">       10.95%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.4" style="padding-left:22.0pt;padding-right:22.0pt;">       0.89%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.5" style="padding-left:22.0pt;padding-right:22.0pt;">       11.07%</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.6.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.6.1.1">DPR with SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.2" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.6.2.1">24.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.3" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.6.3.1">12.15%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.4" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.6.4.1">0.99%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.5" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.6.5.1">11.75%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.7">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.7.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.7.1.1">DPR without SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.2" style="padding-left:22.0pt;padding-right:22.0pt;">       22.94%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.3" style="padding-left:22.0pt;padding-right:22.0pt;">       10.87%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.4" style="padding-left:22.0pt;padding-right:22.0pt;">       0.25%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.5" style="padding-left:22.0pt;padding-right:22.0pt;">       11.12%</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.8">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.8.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.8.1.1">OpenAI Embedding with SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.8.2" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.8.2.1">26.56%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.8.3" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.8.3.1">12.74%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.8.4" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.8.4.1">1.44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.8.5" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_bold" id="S6.T2.1.8.5.1">11.68%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.9">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S6.T2.1.9.1" style="padding-left:22.0pt;padding-right:22.0pt;">       <span class="ltx_text ltx_font_typewriter" id="S6.T2.1.9.1.1">OpenAI Embedding without SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.9.2" style="padding-left:22.0pt;padding-right:22.0pt;">       24.82%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.9.3" style="padding-left:22.0pt;padding-right:22.0pt;">       11.24%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.9.4" style="padding-left:22.0pt;padding-right:22.0pt;">       1.16%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.9.5" style="padding-left:22.0pt;padding-right:22.0pt;">       10.80%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different retrieval methods on the NarrativeQA dataset when using the GPT-4o-mini language model.  It shows the ROUGE, BLEU-1, BLEU-4, and METEOR scores for various combinations of retrieval methods (SBERT, BM25, DPR, OpenAI Embedding) with and without the SAGE framework. This allows for an assessment of how SAGE impacts the effectiveness of different retrieval techniques on this specific QA dataset.
> <details>
> <summary>read the caption</summary>
> TABLE II: Effectiveness evaluation on NarrativeQA Dataset (using GPT-4o-mini).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T3.1">
<tr class="ltx_tr" id="S6.T3.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.1.1" style="padding-left:12.6pt;padding-right:12.6pt;"><svg height="19.07" overflow="visible" version="1.1" width="79.26"><g transform="translate(0,19.07) scale(1,-1)"><path d="M 0,19.07 79.26,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S6.T3.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S6.T3.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S6.T3.1.1.1.pic1.1.1.1.1">Model</span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(39.63,9.61)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S6.T3.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S6.T3.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S6.T3.1.1.1.pic1.2.1.1.1">Metric</span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.2" style="padding-left:12.6pt;padding-right:12.6pt;">
<span class="ltx_text" id="S6.T3.1.1.2.1"></span> <span class="ltx_text" id="S6.T3.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T3.1.1.2.2.1">
<span class="ltx_tr" id="S6.T3.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.1.2.2.1.1.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.1.2.2.1.1.1.1">Accuracy</span></span></span>
<span class="ltx_tr" id="S6.T3.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.1.2.2.1.2.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.1.2.2.1.2.1.1">(QuALITY)</span></span></span>
</span></span><span class="ltx_text" id="S6.T3.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.3" style="padding-left:12.6pt;padding-right:12.6pt;">
<span class="ltx_text" id="S6.T3.1.1.3.1"></span> <span class="ltx_text" id="S6.T3.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T3.1.1.3.2.1">
<span class="ltx_tr" id="S6.T3.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.1.3.2.1.1.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.1.3.2.1.1.1.1">F1-Match</span></span></span>
<span class="ltx_tr" id="S6.T3.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.1.3.2.1.2.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.1.3.2.1.2.1.1">(QASPER)</span></span></span>
</span></span><span class="ltx_text" id="S6.T3.1.1.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.2.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.2.1.1">SBERT with SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.2.2" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.2.2.1">73.14%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.2.3" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.2.3.1">40.23%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.3.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.3.1.1">SBERT without SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.3.2" style="padding-left:12.6pt;padding-right:12.6pt;">72.48%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.3.3" style="padding-left:12.6pt;padding-right:12.6pt;">37.57%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.4.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.4.1.1">BM25 with SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.4.2" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.4.2.1">74.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.4.3" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.4.3.1">39.95%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.5.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.5.1.1">BM25 without SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.5.2" style="padding-left:12.6pt;padding-right:12.6pt;">72.18%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.5.3" style="padding-left:12.6pt;padding-right:12.6pt;">37.30%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.6.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.6.1.1">DPR with SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.6.2" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.6.2.1">74.37%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.6.3" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.6.3.1">40.06%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.7">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.7.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.7.1.1">DPR without SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.7.2" style="padding-left:12.6pt;padding-right:12.6pt;">72.38%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.7.3" style="padding-left:12.6pt;padding-right:12.6pt;">37.41%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.8">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.8.1" style="padding-left:12.6pt;padding-right:12.6pt;">
<span class="ltx_text" id="S6.T3.1.8.1.1"></span> <span class="ltx_text" id="S6.T3.1.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T3.1.8.1.2.1">
<span class="ltx_tr" id="S6.T3.1.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.8.1.2.1.1.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.8.1.2.1.1.1.1">OpenAI Embedding</span></span></span>
<span class="ltx_tr" id="S6.T3.1.8.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.8.1.2.1.2.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.8.1.2.1.2.1.1">with SAGE</span></span></span>
</span></span><span class="ltx_text" id="S6.T3.1.8.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.8.2" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.8.2.1">78.30%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.8.3" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.8.3.1">41.23%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.9">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S6.T3.1.9.1" style="padding-left:12.6pt;padding-right:12.6pt;">
<span class="ltx_text" id="S6.T3.1.9.1.1"></span> <span class="ltx_text" id="S6.T3.1.9.1.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T3.1.9.1.2.1">
<span class="ltx_tr" id="S6.T3.1.9.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.9.1.2.1.1.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.9.1.2.1.1.1.1">OpenAI Embedding</span></span></span>
<span class="ltx_tr" id="S6.T3.1.9.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T3.1.9.1.2.1.2.1" style="padding-left:12.6pt;padding-right:12.6pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T3.1.9.1.2.1.2.1.1">without SAGE</span></span></span>
</span></span><span class="ltx_text" id="S6.T3.1.9.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T3.1.9.2" style="padding-left:12.6pt;padding-right:12.6pt;">75.32%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T3.1.9.3" style="padding-left:12.6pt;padding-right:12.6pt;">38.94%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance evaluation results of different retrieval methods on two distinct question answering datasets: QuALITY and QASPER.  The evaluation metric used is Accuracy for the QuALITY dataset and F1-Match for the QASPER dataset.  The results show the accuracy and F1-Match scores achieved by various combinations of retrieval techniques (SBERT, BM25, DPR, OpenAI Embedding)  with and without the SAGE framework, indicating the improvement in performance offered by the SAGE framework on each dataset.
> <details>
> <summary>read the caption</summary>
> TABLE III: Effectiveness evaluation on QuALITY and QASPER Dataset (using GPT-4o-mini).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T4.1">
<tr class="ltx_tr" id="S6.T4.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T4.1.1.1" style="padding-left:24.0pt;padding-right:24.0pt;">        <svg height="19.07" overflow="visible" version="1.1" width="79.26"><g transform="translate(0,19.07) scale(1,-1)"><path d="M 0,19.07 79.26,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S6.T4.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S6.T4.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S6.T4.1.1.1.pic1.1.1.1.1">Model</span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(39.63,9.61)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S6.T4.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S6.T4.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S6.T4.1.1.1.pic1.2.1.1.1">Metric</span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.2" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.2.1">ROUGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.3" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.3.1">BLEU-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.4" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.4.1">BLEU-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.5" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.5.1">METEOR</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T4.1.2.1" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.2.1.1">Naive RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.2.2" style="padding-left:24.0pt;padding-right:24.0pt;">        28.45%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.2.3" style="padding-left:24.0pt;padding-right:24.0pt;">        12.73%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.2.4" style="padding-left:24.0pt;padding-right:24.0pt;">        0.29%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.2.5" style="padding-left:24.0pt;padding-right:24.0pt;">        12.73%</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T4.1.3.1" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.3.1.1">Naive RAG with Segmentation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.3.2" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.3.2.1">29.74%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.3.3" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.3.3.1">13.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.3.4" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.3.4.1">0.33%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.3.5" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.3.5.1">12.84%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T4.1.4.1" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.4.1.1">Naive RAG with Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.4.2" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.4.2.1">29.15%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.4.3" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.4.3.1">13.18%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.4.4" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.4.4.1">0.42%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.4.5" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.4.5.1">12.92%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T4.1.5.1" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.5.1.1">Naive RAG with Feedback</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.5.2" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.5.2.1">30.59%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.5.3" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.5.3.1">14.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.5.4" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.5.4.1">0.81%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.5.5" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.5.5.1">14.34%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S6.T4.1.6.1" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_typewriter" id="S6.T4.1.6.1.1">SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.1.6.2" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.6.2.1">31.65%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.1.6.3" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.6.3.1">15.27%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.1.6.4" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.6.4.1">1.70%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T4.1.6.5" style="padding-left:24.0pt;padding-right:24.0pt;">        <span class="ltx_text ltx_font_bold" id="S6.T4.1.6.5.1">14.42%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the NarrativeQA dataset using the GPT-4o-mini language model.  The study investigates the impact of each component of the proposed SAGE framework (semantic segmentation, gradient-based chunk selection, and LLM self-feedback) on the performance of the system.  It compares the performance metrics (ROUGE, BLEU-1, BLEU-4, and METEOR) of several models: a naive RAG baseline, and variants incorporating one or more components of SAGE. This allows for a quantitative assessment of the contribution of each component to the overall performance.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Ablation study on NarrativeQA Dataset (using GPT-4o-mini).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T5.1">
<tr class="ltx_tr" id="S6.T5.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T5.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"><svg height="19.07" overflow="visible" version="1.1" width="79.26"><g transform="translate(0,19.07) scale(1,-1)"><path d="M 0,19.07 79.26,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S6.T5.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S6.T5.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S6.T5.1.1.1.pic1.1.1.1.1">Model</span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(39.63,9.61)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S6.T5.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S6.T5.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S6.T5.1.1.1.pic1.2.1.1.1">Metric</span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T5.1.1.2.1">GPT-3.5 F1-Match</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T5.1.1.3.1">GPT-4-o mini F1-Match</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T5.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S6.T5.1.2.1.1"></span> <span class="ltx_text" id="S6.T5.1.2.1.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.2.1.2.1">
<span class="ltx_tr" id="S6.T5.1.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.2.1.2.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T5.1.2.1.2.1.1.1.1">Title+</span></span></span>
<span class="ltx_tr" id="S6.T5.1.2.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.2.1.2.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T5.1.2.1.2.1.2.1.1">Abstract</span></span></span>
</span></span><span class="ltx_text" id="S6.T5.1.2.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.1.2.2" style="padding-left:2.5pt;padding-right:2.5pt;">16.82%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.1.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">16.41%</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T5.1.3.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T5.1.3.1.1">BM25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.1.3.2" style="padding-left:2.5pt;padding-right:2.5pt;">35.26%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.1.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">37.30%</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T5.1.4.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T5.1.4.1.1">DPR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.1.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">35.73%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.1.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">37.41%</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S6.T5.1.5.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T5.1.5.1.1">SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.1.5.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.2.1">41.06%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T5.1.5.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.3.1">41.23%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the F1-Match scores achieved by different retrieval methods on the QASPER dataset using the GPT-3.5-Turbo large language model.  It shows the performance of different retrieval techniques in retrieving relevant information for answering questions from the QASPER dataset, a benchmark dataset for question answering tasks. The results highlight the relative effectiveness of each retrieval approach.
> <details>
> <summary>read the caption</summary>
> TABLE V: Comparison on QASPER Dataset (using GPT-3.5-turbo).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T6.1">
<tr class="ltx_tr" id="S6.T6.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T6.1.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><svg height="19.07" overflow="visible" version="1.1" width="79.26"><g transform="translate(0,19.07) scale(1,-1)"><path d="M 0,19.07 79.26,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S6.T6.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S6.T6.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S6.T6.1.1.1.pic1.1.1.1.1">Model</span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(39.63,9.61)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S6.T6.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S6.T6.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S6.T6.1.1.1.pic1.2.1.1.1">Metric</span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.1.1.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.1.1.2.1">ROUGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.1.1.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.1.1.3.1">METEOR</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T6.1.2.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text ltx_font_typewriter" id="S6.T6.1.2.1.1">BiDAF</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01713v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.1.2.2" style="padding-left:15.0pt;padding-right:15.0pt;">6.20%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.1.2.3" style="padding-left:15.0pt;padding-right:15.0pt;">3.70%</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T6.1.3.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text ltx_font_typewriter" id="S6.T6.1.3.1.1">BM25+BERT</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01713v1#bib.bib30" title="">30</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.1.3.2" style="padding-left:15.0pt;padding-right:15.0pt;">15.5%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.1.3.3" style="padding-left:15.0pt;padding-right:15.0pt;">5.0%</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T6.1.4.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S6.T6.1.4.1.1"></span> <span class="ltx_text" id="S6.T6.1.4.1.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T6.1.4.1.2.1">
<span class="ltx_tr" id="S6.T6.1.4.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.4.1.2.1.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.1.4.1.2.1.1.1.1">Recursively</span></span></span>
<span class="ltx_tr" id="S6.T6.1.4.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.4.1.2.1.2.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.1.4.1.2.1.2.1.1">Summarizing Books</span></span></span>
</span></span> <span class="ltx_text" id="S6.T6.1.4.1.3"></span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01713v1#bib.bib48" title="">48</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.1.4.2" style="padding-left:15.0pt;padding-right:15.0pt;">21.06%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.1.4.3" style="padding-left:15.0pt;padding-right:15.0pt;">10.06%</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S6.T6.1.5.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.1.5.1.1">SAGE +UnifiedQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T6.1.5.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.1.5.2.1">22.22%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T6.1.5.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.1.5.3.1">12.05%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different models on the NarrativeQA dataset. The models compared include BIDAF, BM25+BERT, Recursively Summarizing Books, and SAGE+UnifiedQA-3B.  The evaluation metrics used are ROUGE and METEOR, which measure the quality of generated summaries. The table highlights the relative performance of SAGE+UnifiedQA-3B in comparison to existing methods for the NarrativeQA task.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Comparison on NarrativeQA dataset (using UnifiedQA-3B).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T7.1">
<tr class="ltx_tr" id="S6.T7.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T7.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><svg height="19.07" overflow="visible" version="1.1" width="79.26"><g transform="translate(0,19.07) scale(1,-1)"><path d="M 0,19.07 79.26,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S6.T7.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S6.T7.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S6.T7.1.1.1.pic1.1.1.1.1">Model</span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(39.63,9.61)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S6.T7.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S6.T7.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S6.T7.1.1.1.pic1.2.1.1.1">Metric</span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.1.2" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T7.1.1.2.1"></span> <span class="ltx_text" id="S6.T7.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T7.1.1.2.2.1">
<span class="ltx_tr" id="S6.T7.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T7.1.1.2.2.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T7.1.1.2.2.1.1.1.1">Accuracy in</span></span></span>
<span class="ltx_tr" id="S6.T7.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T7.1.1.2.2.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T7.1.1.2.2.1.2.1.1">Test Set</span></span></span>
</span></span><span class="ltx_text" id="S6.T7.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.1.3" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T7.1.1.3.1"></span> <span class="ltx_text" id="S6.T7.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T7.1.1.3.2.1">
<span class="ltx_tr" id="S6.T7.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T7.1.1.3.2.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T7.1.1.3.2.1.1.1.1">Accuracy in</span></span></span>
<span class="ltx_tr" id="S6.T7.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T7.1.1.3.2.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T7.1.1.3.2.1.2.1.1">Hard Set</span></span></span>
</span></span><span class="ltx_text" id="S6.T7.1.1.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T7.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text ltx_font_typewriter" id="S6.T7.1.2.1.1">Longformer-base</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01713v1#bib.bib4" title="">4</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.2.2" style="padding-left:2.7pt;padding-right:2.7pt;">39.5%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.2.3" style="padding-left:2.7pt;padding-right:2.7pt;">35.3%</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T7.1.3.1" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text ltx_font_typewriter" id="S6.T7.1.3.1.1">DPR+DeBERTaV3-large</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01713v1#bib.bib34" title="">34</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.3.2" style="padding-left:2.7pt;padding-right:2.7pt;">55.4%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.3.3" style="padding-left:2.7pt;padding-right:2.7pt;">36.1%</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T7.1.4.1" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text ltx_font_typewriter" id="S6.T7.1.4.1.1">CoLISA(DeBERTaV3-large)</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01713v1#bib.bib9" title="">9</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.4.2" style="padding-left:2.7pt;padding-right:2.7pt;">62.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.4.3" style="padding-left:2.7pt;padding-right:2.7pt;">54.7%</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T7.1.5.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T7.1.5.1.1">RAPTOR+GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.5.2" style="padding-left:2.7pt;padding-right:2.7pt;">82.6%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.1.5.3" style="padding-left:2.7pt;padding-right:2.7pt;">76.2%</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S6.T7.1.6.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T7.1.6.1.1">SAGE +GPT-4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T7.1.6.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T7.1.6.2.1">90.10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T7.1.6.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T7.1.6.3.1">76.3%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the accuracy achieved by different models on the QuALITY dataset, specifically focusing on the performance using GPT-4 as the large language model.  It highlights the accuracy scores obtained on both the overall test set and a more challenging subset known as the 'Hard Set'.  The models being compared represent various approaches to question answering, allowing for a quantitative assessment of their relative effectiveness on this particular dataset.
> <details>
> <summary>read the caption</summary>
> TABLE VII: Comparison on the QuALITY dataset (using GPT-4).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T8.3">
<tr class="ltx_tr" id="S6.T8.3.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T8.3.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.1.1" style="color:#000000;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.1.2" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T8.3.1.2.1"></span><span class="ltx_text" id="S6.T8.3.1.2.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T8.3.1.2.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T8.3.1.2.3.1">
<span class="ltx_tr" id="S6.T8.3.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.2.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.2.3.1.1.1.1">Host memory</span></span></span>
<span class="ltx_tr" id="S6.T8.3.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.2.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.2.3.1.2.1.1">usage</span></span></span>
</span></span><span class="ltx_text" id="S6.T8.3.1.2.4"></span><span class="ltx_text" id="S6.T8.3.1.2.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.1.3" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T8.3.1.3.1"></span><span class="ltx_text" id="S6.T8.3.1.3.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T8.3.1.3.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T8.3.1.3.3.1">
<span class="ltx_tr" id="S6.T8.3.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.3.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.3.3.1.1.1.1">GPU memory</span></span></span>
<span class="ltx_tr" id="S6.T8.3.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.3.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.3.3.1.2.1.1">usage</span></span></span>
</span></span><span class="ltx_text" id="S6.T8.3.1.3.4"></span><span class="ltx_text" id="S6.T8.3.1.3.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.1.4" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T8.3.1.4.1"></span><span class="ltx_text" id="S6.T8.3.1.4.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T8.3.1.4.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T8.3.1.4.3.1">
<span class="ltx_tr" id="S6.T8.3.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.4.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.4.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T8.3.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.4.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.4.3.1.2.1.1">building</span></span></span>
<span class="ltx_tr" id="S6.T8.3.1.4.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.4.3.1.3.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.4.3.1.3.1.1">vector database</span></span></span>
</span></span><span class="ltx_text" id="S6.T8.3.1.4.4"></span><span class="ltx_text" id="S6.T8.3.1.4.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.1.5" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T8.3.1.5.1"></span><span class="ltx_text" id="S6.T8.3.1.5.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T8.3.1.5.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T8.3.1.5.3.1">
<span class="ltx_tr" id="S6.T8.3.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.5.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.5.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T8.3.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.5.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.5.3.1.2.1.1">segmentation</span></span></span>
</span></span><span class="ltx_text" id="S6.T8.3.1.5.4"></span><span class="ltx_text" id="S6.T8.3.1.5.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.1.6" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T8.3.1.6.1"></span><span class="ltx_text" id="S6.T8.3.1.6.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T8.3.1.6.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T8.3.1.6.3.1">
<span class="ltx_tr" id="S6.T8.3.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.6.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.6.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T8.3.1.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.6.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.6.3.1.2.1.1">retrieval</span></span></span>
</span></span><span class="ltx_text" id="S6.T8.3.1.6.4"></span><span class="ltx_text" id="S6.T8.3.1.6.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.1.7" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T8.3.1.7.1"></span><span class="ltx_text" id="S6.T8.3.1.7.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T8.3.1.7.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T8.3.1.7.3.1">
<span class="ltx_tr" id="S6.T8.3.1.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.7.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.7.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T8.3.1.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.7.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.7.3.1.2.1.1">feedback</span></span></span>
</span></span><span class="ltx_text" id="S6.T8.3.1.7.4"></span><span class="ltx_text" id="S6.T8.3.1.7.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.1.8" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T8.3.1.8.1"></span><span class="ltx_text" id="S6.T8.3.1.8.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T8.3.1.8.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T8.3.1.8.3.1">
<span class="ltx_tr" id="S6.T8.3.1.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.8.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.8.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T8.3.1.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T8.3.1.8.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.8.3.1.2.1.1">answering</span></span></span>
</span></span><span class="ltx_text" id="S6.T8.3.1.8.4"></span><span class="ltx_text" id="S6.T8.3.1.8.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.1.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T8.3.1.9.1" style="color:#000000;">F1-Match</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.3.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T8.3.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.1.1" style="color:#000000;">Naive RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.2.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.2.1" style="color:#000000;">0.580 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.2.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.3.1" style="color:#000000;">0.000 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.2.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.4.1" style="color:#000000;">0.000s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.2.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.5.1" style="color:#000000;">9.696s (1066 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.2.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.6.1" style="color:#000000;">0.914s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.2.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.7.1" style="color:#000000;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.2.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.8.1" style="color:#000000;">1.817s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.2.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.2.9.1" style="color:#000000;">0.704</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.3.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T8.3.3.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.1.1" style="color:#000000;">BM25 + Naive RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.3.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.2.1" style="color:#000000;">0.605 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.3.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.3.1" style="color:#000000;">0.000 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.3.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.4.1" style="color:#000000;">0.005s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.3.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.5.1" style="color:#000000;">9.696s (1066 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.3.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.6.1" style="color:#000000;">0.003s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.3.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.7.1" style="color:#000000;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.3.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.8.1" style="color:#000000;">1.810s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.3.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.3.9.1" style="color:#000000;">0.704</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.3.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T8.3.4.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.1.1" style="color:#000000;">BM25 + SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.2.1" style="color:#000000;">4.870 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.3.1" style="color:#000000;">2.200 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.4.1" style="color:#000000;">0.005s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.5.1" style="color:#000000;">5.070s (644 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.6.1" style="color:#000000;">0.502s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.7.1" style="color:#000000;">1.791s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.8.1" style="color:#000000;">1.791s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.4.9.1" style="color:#000000;">0.718</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.3.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T8.3.5.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.1.1" style="color:#000000;">SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.5.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.2.1" style="color:#000000;">5.170 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.5.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.3.1" style="color:#000000;">2.200 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.5.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.4.1" style="color:#000000;">0.012s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.5.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.5.1" style="color:#000000;">16.050s (725 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.5.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.6.1" style="color:#000000;">0.8 + 0.50s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.5.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.7.1" style="color:#000000;">1.831s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.5.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.8.1" style="color:#000000;">1.794s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.5.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.5.9.1" style="color:#000000;">0.724</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.3.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T8.3.6.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.1.1" style="color:#000000;">SAGE (5x)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.6.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.2.1" style="color:#000000;">6.320 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.6.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.3.1" style="color:#000000;">2.765 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.6.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.4.1" style="color:#000000;">0.012s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.6.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.5.1" style="color:#000000;">16.050s (725 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.6.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.6.1" style="color:#000000;">0.8 + 1.40s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.6.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.7.1" style="color:#000000;">1.834s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.6.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.8.1" style="color:#000000;">1.799s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.6.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.6.9.1" style="color:#000000;">0.724</span></td>
</tr>
<tr class="ltx_tr" id="S6.T8.3.7">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S6.T8.3.7.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.1.1" style="color:#000000;">SAGE (10x)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T8.3.7.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.2.1" style="color:#000000;">7.270 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T8.3.7.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.3.1" style="color:#000000;">3.300 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T8.3.7.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.4.1" style="color:#000000;">0.012s</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T8.3.7.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.5.1" style="color:#000000;">16.050s (725 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T8.3.7.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.6.1" style="color:#000000;">0.8 + 2.25s</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T8.3.7.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.7.1" style="color:#000000;">1.831s</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T8.3.7.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.8.1" style="color:#000000;">1.791s</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T8.3.7.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T8.3.7.9.1" style="color:#000000;">0.724</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table VIII presents a comprehensive performance analysis of the SAGE framework on the large-scale TRIVIA_QA dataset. It details the memory usage (both host and GPU memory), offline latency (for vector database building and segmentation), online latency (for retrieval, feedback, and answering), and the overall F1-Match score, all under varying degrees of concurrency (1x, 5x, and 10x).  The experiment utilizes the GPT4-o-mini language model, providing a detailed view of SAGE's efficiency and scalability in a real-world, concurrent environment.
> <details>
> <summary>read the caption</summary>
> TABLE VIII: Memory usage, offline and online latency, and end-to-end performance of SAGE on a large scale TRIVIA_QA dataset in a concurrent environment. (5x)/(10x) indicates five (time) times concurrency. Using GPT4-o-mini.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T9.3">
<tr class="ltx_tr" id="S6.T9.3.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T9.3.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.1.1" style="color:#000000;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.1.2" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T9.3.1.2.1"></span><span class="ltx_text" id="S6.T9.3.1.2.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T9.3.1.2.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T9.3.1.2.3.1">
<span class="ltx_tr" id="S6.T9.3.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.2.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.2.3.1.1.1.1">Host memory</span></span></span>
<span class="ltx_tr" id="S6.T9.3.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.2.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.2.3.1.2.1.1">usage</span></span></span>
</span></span><span class="ltx_text" id="S6.T9.3.1.2.4"></span><span class="ltx_text" id="S6.T9.3.1.2.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.1.3" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T9.3.1.3.1"></span><span class="ltx_text" id="S6.T9.3.1.3.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T9.3.1.3.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T9.3.1.3.3.1">
<span class="ltx_tr" id="S6.T9.3.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.3.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.3.3.1.1.1.1">GPU memory</span></span></span>
<span class="ltx_tr" id="S6.T9.3.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.3.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.3.3.1.2.1.1">usage</span></span></span>
</span></span><span class="ltx_text" id="S6.T9.3.1.3.4"></span><span class="ltx_text" id="S6.T9.3.1.3.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.1.4" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T9.3.1.4.1"></span><span class="ltx_text" id="S6.T9.3.1.4.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T9.3.1.4.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T9.3.1.4.3.1">
<span class="ltx_tr" id="S6.T9.3.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.4.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.4.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T9.3.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.4.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.4.3.1.2.1.1">building</span></span></span>
<span class="ltx_tr" id="S6.T9.3.1.4.3.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.4.3.1.3.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.4.3.1.3.1.1">vector database</span></span></span>
</span></span><span class="ltx_text" id="S6.T9.3.1.4.4"></span><span class="ltx_text" id="S6.T9.3.1.4.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.1.5" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T9.3.1.5.1"></span><span class="ltx_text" id="S6.T9.3.1.5.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T9.3.1.5.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T9.3.1.5.3.1">
<span class="ltx_tr" id="S6.T9.3.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.5.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.5.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T9.3.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.5.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.5.3.1.2.1.1">segmentation</span></span></span>
</span></span><span class="ltx_text" id="S6.T9.3.1.5.4"></span><span class="ltx_text" id="S6.T9.3.1.5.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.1.6" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T9.3.1.6.1"></span><span class="ltx_text" id="S6.T9.3.1.6.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T9.3.1.6.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T9.3.1.6.3.1">
<span class="ltx_tr" id="S6.T9.3.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.6.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.6.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T9.3.1.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.6.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.6.3.1.2.1.1">retrieval</span></span></span>
</span></span><span class="ltx_text" id="S6.T9.3.1.6.4"></span><span class="ltx_text" id="S6.T9.3.1.6.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.1.7" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T9.3.1.7.1"></span><span class="ltx_text" id="S6.T9.3.1.7.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T9.3.1.7.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T9.3.1.7.3.1">
<span class="ltx_tr" id="S6.T9.3.1.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.7.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.7.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T9.3.1.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.7.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.7.3.1.2.1.1">feedback</span></span></span>
</span></span><span class="ltx_text" id="S6.T9.3.1.7.4"></span><span class="ltx_text" id="S6.T9.3.1.7.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.1.8" style="padding-left:2.7pt;padding-right:2.7pt;">
<span class="ltx_text" id="S6.T9.3.1.8.1"></span><span class="ltx_text" id="S6.T9.3.1.8.2" style="color:#000000;"> </span><span class="ltx_text" id="S6.T9.3.1.8.3" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S6.T9.3.1.8.3.1">
<span class="ltx_tr" id="S6.T9.3.1.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.8.3.1.1.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.8.3.1.1.1.1">Latency of</span></span></span>
<span class="ltx_tr" id="S6.T9.3.1.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T9.3.1.8.3.1.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.8.3.1.2.1.1">answering</span></span></span>
</span></span><span class="ltx_text" id="S6.T9.3.1.8.4"></span><span class="ltx_text" id="S6.T9.3.1.8.5" style="color:#000000;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.1.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text ltx_font_bold" id="S6.T9.3.1.9.1" style="color:#000000;">F1-Match</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.3.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T9.3.2.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.1.1" style="color:#000000;">Naive RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.2.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.2.1" style="color:#000000;">3.256 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.2.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.3.1" style="color:#000000;">12.20 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.2.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.4.1" style="color:#000000;">0.004s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.2.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.5.1" style="color:#000000;">9.696s (1066 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.2.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.6.1" style="color:#000000;">0.914s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.2.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.7.1" style="color:#000000;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.2.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.8.1" style="color:#000000;">1.089s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.2.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.2.9.1" style="color:#000000;">0.652</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.3.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T9.3.3.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.1.1" style="color:#000000;">BM25 + Naive RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.3.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.2.1" style="color:#000000;">3.243 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.3.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.3.1" style="color:#000000;">12.20 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.3.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.4.1" style="color:#000000;">0.005s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.3.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.5.1" style="color:#000000;">9.696s (1066 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.3.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.6.1" style="color:#000000;">0.003s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.3.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.7.1" style="color:#000000;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.3.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.8.1" style="color:#000000;">1.097s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.3.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.3.9.1" style="color:#000000;">0.594</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.3.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T9.3.4.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.1.1" style="color:#000000;">BM25 + SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.4.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.2.1" style="color:#000000;">13.150 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.4.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.3.1" style="color:#000000;">15.24 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.4.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.4.1" style="color:#000000;">0.005s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.4.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.5.1" style="color:#000000;">5.070s (644 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.4.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.6.1" style="color:#000000;">0.502s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.4.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.7.1" style="color:#000000;">2.810s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.4.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.8.1" style="color:#000000;">1.084s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.4.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.4.9.1" style="color:#000000;">0.612</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.3.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T9.3.5.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.1.1" style="color:#000000;">SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.5.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.2.1" style="color:#000000;">13.150 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.5.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.3.1" style="color:#000000;">15.61 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.5.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.4.1" style="color:#000000;">0.012s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.5.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.5.1" style="color:#000000;">16.050s (725 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.5.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.6.1" style="color:#000000;">0.8 + 0.50s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.5.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.7.1" style="color:#000000;">2.793s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.5.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.8.1" style="color:#000000;">1.091s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.5.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.5.9.1" style="color:#000000;">0.671</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.3.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S6.T9.3.6.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.1.1" style="color:#000000;">SAGE (5x)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.6.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.2.1" style="color:#000000;">15.500 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.6.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.3.1" style="color:#000000;">16.175 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.6.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.4.1" style="color:#000000;">0.012s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.6.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.5.1" style="color:#000000;">16.050s (725 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.6.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.6.1" style="color:#000000;">0.8 + 1.40s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.6.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.7.1" style="color:#000000;">2.793s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.6.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.8.1" style="color:#000000;">1.106s</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T9.3.6.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.6.9.1" style="color:#000000;">0.671</span></td>
</tr>
<tr class="ltx_tr" id="S6.T9.3.7">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S6.T9.3.7.1" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.1.1" style="color:#000000;">SAGE (10x)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T9.3.7.2" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.2.1" style="color:#000000;">17.250 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T9.3.7.3" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.3.1" style="color:#000000;">16.720 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T9.3.7.4" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.4.1" style="color:#000000;">0.012s</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T9.3.7.5" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.5.1" style="color:#000000;">16.050s (725 tokens/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T9.3.7.6" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.6.1" style="color:#000000;">0.8 + 2.25s</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T9.3.7.7" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.7.1" style="color:#000000;">2.801s</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T9.3.7.8" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.8.1" style="color:#000000;">1.097s</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T9.3.7.9" style="padding-left:2.7pt;padding-right:2.7pt;"><span class="ltx_text" id="S6.T9.3.7.9.1" style="color:#000000;">0.671</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive performance evaluation of the SAGE framework on the large-scale TRIVIA_QA dataset using the UnifiedQA-3B language model.  It details the memory usage (both host and GPU), offline latency (for vector database building and segmentation), and online latency (for retrieval, feedback, and answering) under various concurrency levels (1x, 5x, and 10x). The end-to-end performance is assessed using the F1-Match metric.  This allows for a detailed understanding of SAGE's resource consumption and response time in a concurrent environment, showcasing its scalability and efficiency.
> <details>
> <summary>read the caption</summary>
> TABLE IX: Memory usage, offline and online latency, and end-to-end performance of SAGE on a large scale TRIVIA_QA dataset in a concurrent environment. (5x)/(10x) indicates five (time) times concurrency. Using UnifiedQA-3B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T10.5">
<tr class="ltx_tr" id="S6.T10.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T10.1.1.1"><svg height="18.92" overflow="visible" version="1.1" width="102.08"><g transform="translate(0,18.92) scale(1,-1)"><path d="M 0,18.92 102.08,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="51.04">
<span class="ltx_inline-block" id="S6.T10.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S6.T10.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S6.T10.1.1.1.pic1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T10.1.1.1.pic1.1.1.1.1.1" style="color:#000000;">Features</span></span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(62.45,9.46)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S6.T10.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S6.T10.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S6.T10.1.1.1.pic1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T10.1.1.1.pic1.2.1.1.1.1" style="color:#000000;">Metric</span></span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T10.1.1.2"><span class="ltx_text ltx_font_typewriter" id="S6.T10.1.1.2.1" style="color:#000000;">Segmentation Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.2.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T10.2.2.1"><math alttext="(x_{1}),(x_{2})" class="ltx_Math" display="inline" id="S6.T10.2.2.1.m1.2"><semantics id="S6.T10.2.2.1.m1.2a"><mrow id="S6.T10.2.2.1.m1.2.2.2" xref="S6.T10.2.2.1.m1.2.2.3.cmml"><mrow id="S6.T10.2.2.1.m1.1.1.1.1.1" xref="S6.T10.2.2.1.m1.1.1.1.1.1.1.cmml"><mo id="S6.T10.2.2.1.m1.1.1.1.1.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.2.2.1.m1.1.1.1.1.1.1.cmml">(</mo><msub id="S6.T10.2.2.1.m1.1.1.1.1.1.1" xref="S6.T10.2.2.1.m1.1.1.1.1.1.1.cmml"><mi id="S6.T10.2.2.1.m1.1.1.1.1.1.1.2" mathcolor="#000000" xref="S6.T10.2.2.1.m1.1.1.1.1.1.1.2.cmml">x</mi><mn id="S6.T10.2.2.1.m1.1.1.1.1.1.1.3" mathcolor="#000000" xref="S6.T10.2.2.1.m1.1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S6.T10.2.2.1.m1.1.1.1.1.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.2.2.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S6.T10.2.2.1.m1.2.2.2.3" mathcolor="#000000" xref="S6.T10.2.2.1.m1.2.2.3.cmml">,</mo><mrow id="S6.T10.2.2.1.m1.2.2.2.2.1" xref="S6.T10.2.2.1.m1.2.2.2.2.1.1.cmml"><mo id="S6.T10.2.2.1.m1.2.2.2.2.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.2.2.1.m1.2.2.2.2.1.1.cmml">(</mo><msub id="S6.T10.2.2.1.m1.2.2.2.2.1.1" xref="S6.T10.2.2.1.m1.2.2.2.2.1.1.cmml"><mi id="S6.T10.2.2.1.m1.2.2.2.2.1.1.2" mathcolor="#000000" xref="S6.T10.2.2.1.m1.2.2.2.2.1.1.2.cmml">x</mi><mn id="S6.T10.2.2.1.m1.2.2.2.2.1.1.3" mathcolor="#000000" xref="S6.T10.2.2.1.m1.2.2.2.2.1.1.3.cmml">2</mn></msub><mo id="S6.T10.2.2.1.m1.2.2.2.2.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.2.2.1.m1.2.2.2.2.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S6.T10.2.2.1.m1.2b"><list id="S6.T10.2.2.1.m1.2.2.3.cmml" xref="S6.T10.2.2.1.m1.2.2.2"><apply id="S6.T10.2.2.1.m1.1.1.1.1.1.1.cmml" xref="S6.T10.2.2.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S6.T10.2.2.1.m1.1.1.1.1.1.1.1.cmml" xref="S6.T10.2.2.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S6.T10.2.2.1.m1.1.1.1.1.1.1.2.cmml" xref="S6.T10.2.2.1.m1.1.1.1.1.1.1.2">𝑥</ci><cn id="S6.T10.2.2.1.m1.1.1.1.1.1.1.3.cmml" type="integer" xref="S6.T10.2.2.1.m1.1.1.1.1.1.1.3">1</cn></apply><apply id="S6.T10.2.2.1.m1.2.2.2.2.1.1.cmml" xref="S6.T10.2.2.1.m1.2.2.2.2.1"><csymbol cd="ambiguous" id="S6.T10.2.2.1.m1.2.2.2.2.1.1.1.cmml" xref="S6.T10.2.2.1.m1.2.2.2.2.1">subscript</csymbol><ci id="S6.T10.2.2.1.m1.2.2.2.2.1.1.2.cmml" xref="S6.T10.2.2.1.m1.2.2.2.2.1.1.2">𝑥</ci><cn id="S6.T10.2.2.1.m1.2.2.2.2.1.1.3.cmml" type="integer" xref="S6.T10.2.2.1.m1.2.2.2.2.1.1.3">2</cn></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S6.T10.2.2.1.m1.2c">(x_{1}),(x_{2})</annotation><annotation encoding="application/x-llamapun" id="S6.T10.2.2.1.m1.2d">( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ) , ( italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T10.2.2.2"><span class="ltx_text" id="S6.T10.2.2.2.1" style="color:#000000;">84.5%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.3.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T10.3.3.1"><math alttext="(x_{1}),(x_{2}),(x_{1}-x_{2})" class="ltx_Math" display="inline" id="S6.T10.3.3.1.m1.3"><semantics id="S6.T10.3.3.1.m1.3a"><mrow id="S6.T10.3.3.1.m1.3.3.3" xref="S6.T10.3.3.1.m1.3.3.4.cmml"><mrow id="S6.T10.3.3.1.m1.1.1.1.1.1" xref="S6.T10.3.3.1.m1.1.1.1.1.1.1.cmml"><mo id="S6.T10.3.3.1.m1.1.1.1.1.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.3.3.1.m1.1.1.1.1.1.1.cmml">(</mo><msub id="S6.T10.3.3.1.m1.1.1.1.1.1.1" xref="S6.T10.3.3.1.m1.1.1.1.1.1.1.cmml"><mi id="S6.T10.3.3.1.m1.1.1.1.1.1.1.2" mathcolor="#000000" xref="S6.T10.3.3.1.m1.1.1.1.1.1.1.2.cmml">x</mi><mn id="S6.T10.3.3.1.m1.1.1.1.1.1.1.3" mathcolor="#000000" xref="S6.T10.3.3.1.m1.1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S6.T10.3.3.1.m1.1.1.1.1.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.3.3.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S6.T10.3.3.1.m1.3.3.3.4" mathcolor="#000000" xref="S6.T10.3.3.1.m1.3.3.4.cmml">,</mo><mrow id="S6.T10.3.3.1.m1.2.2.2.2.1" xref="S6.T10.3.3.1.m1.2.2.2.2.1.1.cmml"><mo id="S6.T10.3.3.1.m1.2.2.2.2.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.3.3.1.m1.2.2.2.2.1.1.cmml">(</mo><msub id="S6.T10.3.3.1.m1.2.2.2.2.1.1" xref="S6.T10.3.3.1.m1.2.2.2.2.1.1.cmml"><mi id="S6.T10.3.3.1.m1.2.2.2.2.1.1.2" mathcolor="#000000" xref="S6.T10.3.3.1.m1.2.2.2.2.1.1.2.cmml">x</mi><mn id="S6.T10.3.3.1.m1.2.2.2.2.1.1.3" mathcolor="#000000" xref="S6.T10.3.3.1.m1.2.2.2.2.1.1.3.cmml">2</mn></msub><mo id="S6.T10.3.3.1.m1.2.2.2.2.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.3.3.1.m1.2.2.2.2.1.1.cmml">)</mo></mrow><mo id="S6.T10.3.3.1.m1.3.3.3.5" mathcolor="#000000" xref="S6.T10.3.3.1.m1.3.3.4.cmml">,</mo><mrow id="S6.T10.3.3.1.m1.3.3.3.3.1" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.cmml"><mo id="S6.T10.3.3.1.m1.3.3.3.3.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.cmml">(</mo><mrow id="S6.T10.3.3.1.m1.3.3.3.3.1.1" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.cmml"><msub id="S6.T10.3.3.1.m1.3.3.3.3.1.1.2" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.cmml"><mi id="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.2" mathcolor="#000000" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.2.cmml">x</mi><mn id="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.3" mathcolor="#000000" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.3.cmml">1</mn></msub><mo id="S6.T10.3.3.1.m1.3.3.3.3.1.1.1" mathcolor="#000000" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.1.cmml">−</mo><msub id="S6.T10.3.3.1.m1.3.3.3.3.1.1.3" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.cmml"><mi id="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.2" mathcolor="#000000" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.2.cmml">x</mi><mn id="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.3" mathcolor="#000000" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.3.cmml">2</mn></msub></mrow><mo id="S6.T10.3.3.1.m1.3.3.3.3.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S6.T10.3.3.1.m1.3b"><list id="S6.T10.3.3.1.m1.3.3.4.cmml" xref="S6.T10.3.3.1.m1.3.3.3"><apply id="S6.T10.3.3.1.m1.1.1.1.1.1.1.cmml" xref="S6.T10.3.3.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S6.T10.3.3.1.m1.1.1.1.1.1.1.1.cmml" xref="S6.T10.3.3.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S6.T10.3.3.1.m1.1.1.1.1.1.1.2.cmml" xref="S6.T10.3.3.1.m1.1.1.1.1.1.1.2">𝑥</ci><cn id="S6.T10.3.3.1.m1.1.1.1.1.1.1.3.cmml" type="integer" xref="S6.T10.3.3.1.m1.1.1.1.1.1.1.3">1</cn></apply><apply id="S6.T10.3.3.1.m1.2.2.2.2.1.1.cmml" xref="S6.T10.3.3.1.m1.2.2.2.2.1"><csymbol cd="ambiguous" id="S6.T10.3.3.1.m1.2.2.2.2.1.1.1.cmml" xref="S6.T10.3.3.1.m1.2.2.2.2.1">subscript</csymbol><ci id="S6.T10.3.3.1.m1.2.2.2.2.1.1.2.cmml" xref="S6.T10.3.3.1.m1.2.2.2.2.1.1.2">𝑥</ci><cn id="S6.T10.3.3.1.m1.2.2.2.2.1.1.3.cmml" type="integer" xref="S6.T10.3.3.1.m1.2.2.2.2.1.1.3">2</cn></apply><apply id="S6.T10.3.3.1.m1.3.3.3.3.1.1.cmml" xref="S6.T10.3.3.1.m1.3.3.3.3.1"><minus id="S6.T10.3.3.1.m1.3.3.3.3.1.1.1.cmml" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.1"></minus><apply id="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.cmml" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.2"><csymbol cd="ambiguous" id="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.1.cmml" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.2">subscript</csymbol><ci id="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.2.cmml" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.2">𝑥</ci><cn id="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.3.cmml" type="integer" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.2.3">1</cn></apply><apply id="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.cmml" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.3"><csymbol cd="ambiguous" id="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.1.cmml" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.3">subscript</csymbol><ci id="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.2.cmml" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.2">𝑥</ci><cn id="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.3.cmml" type="integer" xref="S6.T10.3.3.1.m1.3.3.3.3.1.1.3.3">2</cn></apply></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S6.T10.3.3.1.m1.3c">(x_{1}),(x_{2}),(x_{1}-x_{2})</annotation><annotation encoding="application/x-llamapun" id="S6.T10.3.3.1.m1.3d">( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ) , ( italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ) , ( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT - italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T10.3.3.2"><span class="ltx_text" id="S6.T10.3.3.2.1" style="color:#000000;">85.6%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.4.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T10.4.4.1"><math alttext="(x_{1}),(x_{2}),(x_{1}*x_{2})" class="ltx_Math" display="inline" id="S6.T10.4.4.1.m1.3"><semantics id="S6.T10.4.4.1.m1.3a"><mrow id="S6.T10.4.4.1.m1.3.3.3" xref="S6.T10.4.4.1.m1.3.3.4.cmml"><mrow id="S6.T10.4.4.1.m1.1.1.1.1.1" xref="S6.T10.4.4.1.m1.1.1.1.1.1.1.cmml"><mo id="S6.T10.4.4.1.m1.1.1.1.1.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.4.4.1.m1.1.1.1.1.1.1.cmml">(</mo><msub id="S6.T10.4.4.1.m1.1.1.1.1.1.1" xref="S6.T10.4.4.1.m1.1.1.1.1.1.1.cmml"><mi id="S6.T10.4.4.1.m1.1.1.1.1.1.1.2" mathcolor="#000000" xref="S6.T10.4.4.1.m1.1.1.1.1.1.1.2.cmml">x</mi><mn id="S6.T10.4.4.1.m1.1.1.1.1.1.1.3" mathcolor="#000000" xref="S6.T10.4.4.1.m1.1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S6.T10.4.4.1.m1.1.1.1.1.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.4.4.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S6.T10.4.4.1.m1.3.3.3.4" mathcolor="#000000" xref="S6.T10.4.4.1.m1.3.3.4.cmml">,</mo><mrow id="S6.T10.4.4.1.m1.2.2.2.2.1" xref="S6.T10.4.4.1.m1.2.2.2.2.1.1.cmml"><mo id="S6.T10.4.4.1.m1.2.2.2.2.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.4.4.1.m1.2.2.2.2.1.1.cmml">(</mo><msub id="S6.T10.4.4.1.m1.2.2.2.2.1.1" xref="S6.T10.4.4.1.m1.2.2.2.2.1.1.cmml"><mi id="S6.T10.4.4.1.m1.2.2.2.2.1.1.2" mathcolor="#000000" xref="S6.T10.4.4.1.m1.2.2.2.2.1.1.2.cmml">x</mi><mn id="S6.T10.4.4.1.m1.2.2.2.2.1.1.3" mathcolor="#000000" xref="S6.T10.4.4.1.m1.2.2.2.2.1.1.3.cmml">2</mn></msub><mo id="S6.T10.4.4.1.m1.2.2.2.2.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.4.4.1.m1.2.2.2.2.1.1.cmml">)</mo></mrow><mo id="S6.T10.4.4.1.m1.3.3.3.5" mathcolor="#000000" xref="S6.T10.4.4.1.m1.3.3.4.cmml">,</mo><mrow id="S6.T10.4.4.1.m1.3.3.3.3.1" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.cmml"><mo id="S6.T10.4.4.1.m1.3.3.3.3.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.cmml">(</mo><mrow id="S6.T10.4.4.1.m1.3.3.3.3.1.1" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.cmml"><msub id="S6.T10.4.4.1.m1.3.3.3.3.1.1.2" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.cmml"><mi id="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.2" mathcolor="#000000" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.2.cmml">x</mi><mn id="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.3" mathcolor="#000000" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.3.cmml">1</mn></msub><mo id="S6.T10.4.4.1.m1.3.3.3.3.1.1.1" lspace="0.222em" mathcolor="#000000" rspace="0.222em" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.1.cmml">∗</mo><msub id="S6.T10.4.4.1.m1.3.3.3.3.1.1.3" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.cmml"><mi id="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.2" mathcolor="#000000" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.2.cmml">x</mi><mn id="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.3" mathcolor="#000000" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.3.cmml">2</mn></msub></mrow><mo id="S6.T10.4.4.1.m1.3.3.3.3.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S6.T10.4.4.1.m1.3b"><list id="S6.T10.4.4.1.m1.3.3.4.cmml" xref="S6.T10.4.4.1.m1.3.3.3"><apply id="S6.T10.4.4.1.m1.1.1.1.1.1.1.cmml" xref="S6.T10.4.4.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S6.T10.4.4.1.m1.1.1.1.1.1.1.1.cmml" xref="S6.T10.4.4.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S6.T10.4.4.1.m1.1.1.1.1.1.1.2.cmml" xref="S6.T10.4.4.1.m1.1.1.1.1.1.1.2">𝑥</ci><cn id="S6.T10.4.4.1.m1.1.1.1.1.1.1.3.cmml" type="integer" xref="S6.T10.4.4.1.m1.1.1.1.1.1.1.3">1</cn></apply><apply id="S6.T10.4.4.1.m1.2.2.2.2.1.1.cmml" xref="S6.T10.4.4.1.m1.2.2.2.2.1"><csymbol cd="ambiguous" id="S6.T10.4.4.1.m1.2.2.2.2.1.1.1.cmml" xref="S6.T10.4.4.1.m1.2.2.2.2.1">subscript</csymbol><ci id="S6.T10.4.4.1.m1.2.2.2.2.1.1.2.cmml" xref="S6.T10.4.4.1.m1.2.2.2.2.1.1.2">𝑥</ci><cn id="S6.T10.4.4.1.m1.2.2.2.2.1.1.3.cmml" type="integer" xref="S6.T10.4.4.1.m1.2.2.2.2.1.1.3">2</cn></apply><apply id="S6.T10.4.4.1.m1.3.3.3.3.1.1.cmml" xref="S6.T10.4.4.1.m1.3.3.3.3.1"><times id="S6.T10.4.4.1.m1.3.3.3.3.1.1.1.cmml" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.1"></times><apply id="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.cmml" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.2"><csymbol cd="ambiguous" id="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.1.cmml" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.2">subscript</csymbol><ci id="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.2.cmml" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.2">𝑥</ci><cn id="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.3.cmml" type="integer" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.2.3">1</cn></apply><apply id="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.cmml" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.3"><csymbol cd="ambiguous" id="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.1.cmml" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.3">subscript</csymbol><ci id="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.2.cmml" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.2">𝑥</ci><cn id="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.3.cmml" type="integer" xref="S6.T10.4.4.1.m1.3.3.3.3.1.1.3.3">2</cn></apply></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S6.T10.4.4.1.m1.3c">(x_{1}),(x_{2}),(x_{1}*x_{2})</annotation><annotation encoding="application/x-llamapun" id="S6.T10.4.4.1.m1.3d">( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ) , ( italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ) , ( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ∗ italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T10.4.4.2"><span class="ltx_text" id="S6.T10.4.4.2.1" style="color:#000000;">88.4%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T10.5.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S6.T10.5.5.1"><math alttext="(x_{1}),(x_{2}),(x_{1}-x_{2}),(x_{1}*x_{2})" class="ltx_Math" display="inline" id="S6.T10.5.5.1.m1.4"><semantics id="S6.T10.5.5.1.m1.4a"><mrow id="S6.T10.5.5.1.m1.4.4.4" xref="S6.T10.5.5.1.m1.4.4.5.cmml"><mrow id="S6.T10.5.5.1.m1.1.1.1.1.1" xref="S6.T10.5.5.1.m1.1.1.1.1.1.1.cmml"><mo id="S6.T10.5.5.1.m1.1.1.1.1.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.5.5.1.m1.1.1.1.1.1.1.cmml">(</mo><msub id="S6.T10.5.5.1.m1.1.1.1.1.1.1" xref="S6.T10.5.5.1.m1.1.1.1.1.1.1.cmml"><mi id="S6.T10.5.5.1.m1.1.1.1.1.1.1.2" mathcolor="#000000" xref="S6.T10.5.5.1.m1.1.1.1.1.1.1.2.cmml">x</mi><mn id="S6.T10.5.5.1.m1.1.1.1.1.1.1.3" mathcolor="#000000" xref="S6.T10.5.5.1.m1.1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S6.T10.5.5.1.m1.1.1.1.1.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.5.5.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S6.T10.5.5.1.m1.4.4.4.5" mathcolor="#000000" xref="S6.T10.5.5.1.m1.4.4.5.cmml">,</mo><mrow id="S6.T10.5.5.1.m1.2.2.2.2.1" xref="S6.T10.5.5.1.m1.2.2.2.2.1.1.cmml"><mo id="S6.T10.5.5.1.m1.2.2.2.2.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.5.5.1.m1.2.2.2.2.1.1.cmml">(</mo><msub id="S6.T10.5.5.1.m1.2.2.2.2.1.1" xref="S6.T10.5.5.1.m1.2.2.2.2.1.1.cmml"><mi id="S6.T10.5.5.1.m1.2.2.2.2.1.1.2" mathcolor="#000000" xref="S6.T10.5.5.1.m1.2.2.2.2.1.1.2.cmml">x</mi><mn id="S6.T10.5.5.1.m1.2.2.2.2.1.1.3" mathcolor="#000000" xref="S6.T10.5.5.1.m1.2.2.2.2.1.1.3.cmml">2</mn></msub><mo id="S6.T10.5.5.1.m1.2.2.2.2.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.5.5.1.m1.2.2.2.2.1.1.cmml">)</mo></mrow><mo id="S6.T10.5.5.1.m1.4.4.4.6" mathcolor="#000000" xref="S6.T10.5.5.1.m1.4.4.5.cmml">,</mo><mrow id="S6.T10.5.5.1.m1.3.3.3.3.1" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.cmml"><mo id="S6.T10.5.5.1.m1.3.3.3.3.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.cmml">(</mo><mrow id="S6.T10.5.5.1.m1.3.3.3.3.1.1" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.cmml"><msub id="S6.T10.5.5.1.m1.3.3.3.3.1.1.2" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.cmml"><mi id="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.2" mathcolor="#000000" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.2.cmml">x</mi><mn id="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.3" mathcolor="#000000" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.3.cmml">1</mn></msub><mo id="S6.T10.5.5.1.m1.3.3.3.3.1.1.1" mathcolor="#000000" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.1.cmml">−</mo><msub id="S6.T10.5.5.1.m1.3.3.3.3.1.1.3" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.cmml"><mi id="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.2" mathcolor="#000000" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.2.cmml">x</mi><mn id="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.3" mathcolor="#000000" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.3.cmml">2</mn></msub></mrow><mo id="S6.T10.5.5.1.m1.3.3.3.3.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.cmml">)</mo></mrow><mo id="S6.T10.5.5.1.m1.4.4.4.7" mathcolor="#000000" xref="S6.T10.5.5.1.m1.4.4.5.cmml">,</mo><mrow id="S6.T10.5.5.1.m1.4.4.4.4.1" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.cmml"><mo id="S6.T10.5.5.1.m1.4.4.4.4.1.2" mathcolor="#000000" stretchy="false" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.cmml">(</mo><mrow id="S6.T10.5.5.1.m1.4.4.4.4.1.1" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.cmml"><msub id="S6.T10.5.5.1.m1.4.4.4.4.1.1.2" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.cmml"><mi id="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.2" mathcolor="#000000" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.2.cmml">x</mi><mn id="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.3" mathcolor="#000000" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.3.cmml">1</mn></msub><mo id="S6.T10.5.5.1.m1.4.4.4.4.1.1.1" lspace="0.222em" mathcolor="#000000" rspace="0.222em" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.1.cmml">∗</mo><msub id="S6.T10.5.5.1.m1.4.4.4.4.1.1.3" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.cmml"><mi id="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.2" mathcolor="#000000" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.2.cmml">x</mi><mn id="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.3" mathcolor="#000000" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.3.cmml">2</mn></msub></mrow><mo id="S6.T10.5.5.1.m1.4.4.4.4.1.3" mathcolor="#000000" stretchy="false" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S6.T10.5.5.1.m1.4b"><list id="S6.T10.5.5.1.m1.4.4.5.cmml" xref="S6.T10.5.5.1.m1.4.4.4"><apply id="S6.T10.5.5.1.m1.1.1.1.1.1.1.cmml" xref="S6.T10.5.5.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S6.T10.5.5.1.m1.1.1.1.1.1.1.1.cmml" xref="S6.T10.5.5.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S6.T10.5.5.1.m1.1.1.1.1.1.1.2.cmml" xref="S6.T10.5.5.1.m1.1.1.1.1.1.1.2">𝑥</ci><cn id="S6.T10.5.5.1.m1.1.1.1.1.1.1.3.cmml" type="integer" xref="S6.T10.5.5.1.m1.1.1.1.1.1.1.3">1</cn></apply><apply id="S6.T10.5.5.1.m1.2.2.2.2.1.1.cmml" xref="S6.T10.5.5.1.m1.2.2.2.2.1"><csymbol cd="ambiguous" id="S6.T10.5.5.1.m1.2.2.2.2.1.1.1.cmml" xref="S6.T10.5.5.1.m1.2.2.2.2.1">subscript</csymbol><ci id="S6.T10.5.5.1.m1.2.2.2.2.1.1.2.cmml" xref="S6.T10.5.5.1.m1.2.2.2.2.1.1.2">𝑥</ci><cn id="S6.T10.5.5.1.m1.2.2.2.2.1.1.3.cmml" type="integer" xref="S6.T10.5.5.1.m1.2.2.2.2.1.1.3">2</cn></apply><apply id="S6.T10.5.5.1.m1.3.3.3.3.1.1.cmml" xref="S6.T10.5.5.1.m1.3.3.3.3.1"><minus id="S6.T10.5.5.1.m1.3.3.3.3.1.1.1.cmml" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.1"></minus><apply id="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.cmml" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.2"><csymbol cd="ambiguous" id="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.1.cmml" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.2">subscript</csymbol><ci id="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.2.cmml" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.2">𝑥</ci><cn id="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.3.cmml" type="integer" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.2.3">1</cn></apply><apply id="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.cmml" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.3"><csymbol cd="ambiguous" id="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.1.cmml" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.3">subscript</csymbol><ci id="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.2.cmml" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.2">𝑥</ci><cn id="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.3.cmml" type="integer" xref="S6.T10.5.5.1.m1.3.3.3.3.1.1.3.3">2</cn></apply></apply><apply id="S6.T10.5.5.1.m1.4.4.4.4.1.1.cmml" xref="S6.T10.5.5.1.m1.4.4.4.4.1"><times id="S6.T10.5.5.1.m1.4.4.4.4.1.1.1.cmml" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.1"></times><apply id="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.cmml" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.2"><csymbol cd="ambiguous" id="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.1.cmml" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.2">subscript</csymbol><ci id="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.2.cmml" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.2">𝑥</ci><cn id="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.3.cmml" type="integer" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.2.3">1</cn></apply><apply id="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.cmml" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.3"><csymbol cd="ambiguous" id="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.1.cmml" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.3">subscript</csymbol><ci id="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.2.cmml" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.2">𝑥</ci><cn id="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.3.cmml" type="integer" xref="S6.T10.5.5.1.m1.4.4.4.4.1.1.3.3">2</cn></apply></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S6.T10.5.5.1.m1.4c">(x_{1}),(x_{2}),(x_{1}-x_{2}),(x_{1}*x_{2})</annotation><annotation encoding="application/x-llamapun" id="S6.T10.5.5.1.m1.4d">( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ) , ( italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ) , ( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT - italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ) , ( italic_x start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ∗ italic_x start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T10.5.5.2"><span class="ltx_text ltx_font_bold" id="S6.T10.5.5.2.1" style="color:#000000;">91.8%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of feature augmentation on the performance of a semantic segmentation model.  The study specifically examines the model's accuracy in segmenting sentences from the QASPER dataset.  Different combinations of features were used to train the model and their corresponding segmentation accuracies are reported. This allows the researchers to assess the contribution of each feature to the overall performance.
> <details>
> <summary>read the caption</summary>
> TABLE X: Verification of the effectiveness of feature augmentation for semantic segmentation on QASPER Dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T11.1">
<tr class="ltx_tr" id="S6.T11.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T11.1.1.1" style="padding-left:6.1pt;padding-right:6.1pt;"><svg height="19.07" overflow="visible" version="1.1" width="79.26"><g transform="translate(0,19.07) scale(1,-1)"><path d="M 0,19.07 79.26,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S6.T11.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S6.T11.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S6.T11.1.1.1.pic1.1.1.1.1">Model</span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(39.63,9.61)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S6.T11.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S6.T11.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S6.T11.1.1.1.pic1.2.1.1.1">Metric</span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.1.2" style="padding-left:6.1pt;padding-right:6.1pt;">
<span class="ltx_text" id="S6.T11.1.1.2.1"></span> <span class="ltx_text" id="S6.T11.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T11.1.1.2.2.1">
<span class="ltx_tr" id="S6.T11.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T11.1.1.2.2.1.1.1" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.1.2.2.1.1.1.1">Number</span></span></span>
<span class="ltx_tr" id="S6.T11.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T11.1.1.2.2.1.2.1" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.1.2.2.1.2.1.1">of tokens</span></span></span>
</span></span><span class="ltx_text" id="S6.T11.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.1.3" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.1.3.1">Accuray</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.1.4" style="padding-left:6.1pt;padding-right:6.1pt;">
<span class="ltx_text" id="S6.T11.1.1.4.1"></span> <span class="ltx_text" id="S6.T11.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="S6.T11.1.1.4.2.1">
<span class="ltx_tr" id="S6.T11.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T11.1.1.4.2.1.1.1" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.1.4.2.1.1.1.1">Relative Cost</span></span></span>
<span class="ltx_tr" id="S6.T11.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T11.1.1.4.2.1.2.1" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.1.4.2.1.2.1.1">Efficiency</span></span></span>
</span></span><span class="ltx_text" id="S6.T11.1.1.4.3"></span></td>
</tr>
<tr class="ltx_tr" id="S6.T11.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T11.1.2.1" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.2.1.1">BM25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.2.2" style="padding-left:6.1pt;padding-right:6.1pt;">140699</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.2.3" style="padding-left:6.1pt;padding-right:6.1pt;">65.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.2.4" style="padding-left:6.1pt;padding-right:6.1pt;">0.646</td>
</tr>
<tr class="ltx_tr" id="S6.T11.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T11.1.3.1" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.3.1.1">DPR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.3.2" style="padding-left:6.1pt;padding-right:6.1pt;">142008</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.3.3" style="padding-left:6.1pt;padding-right:6.1pt;">70.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.3.4" style="padding-left:6.1pt;padding-right:6.1pt;">0.689</td>
</tr>
<tr class="ltx_tr" id="S6.T11.1.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S6.T11.1.4.1" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.4.1.1">SBERT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.4.2" style="padding-left:6.1pt;padding-right:6.1pt;">140888</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.4.3" style="padding-left:6.1pt;padding-right:6.1pt;">67.5%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T11.1.4.4" style="padding-left:6.1pt;padding-right:6.1pt;">0.670</td>
</tr>
<tr class="ltx_tr" id="S6.T11.1.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S6.T11.1.5.1" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T11.1.5.1.1">SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T11.1.5.2" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T11.1.5.2.1">104939</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T11.1.5.3" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T11.1.5.3.1">75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T11.1.5.4" style="padding-left:6.1pt;padding-right:6.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T11.1.5.4.1">1.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the cost-efficiency of different retrieval methods in a RAG system using the GPT-4o-mini language model.  Cost-efficiency is calculated by considering both the accuracy of the question answering (QA) task and the cost of tokens consumed during LLM inference.  The table allows a comparison of the balance between achieving high QA accuracy and minimizing the computational cost.
> <details>
> <summary>read the caption</summary>
> TABLE XI: Comparison of cost efficiency (using GPT-4o-mini).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T12.1">
<tr class="ltx_tr" id="S7.T12.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S7.T12.1.1.1" style="padding-left:3.6pt;padding-right:3.6pt;"><svg height="19.07" overflow="visible" version="1.1" width="79.26"><g transform="translate(0,19.07) scale(1,-1)"><path d="M 0,19.07 79.26,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S7.T12.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S7.T12.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S7.T12.1.1.1.pic1.1.1.1.1">Model</span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(39.63,9.61)"><g transform="translate(0,9.46) scale(1, -1)"><foreignobject height="9.46" overflow="visible" width="39.63">
<span class="ltx_inline-block" id="S7.T12.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S7.T12.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S7.T12.1.1.1.pic1.2.1.1.1">Metric</span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T12.1.1.2" style="padding-left:3.6pt;padding-right:3.6pt;"><span class="ltx_text ltx_font_typewriter" id="S7.T12.1.1.2.1">GPT-3.5 Accuracy</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T12.1.1.3" style="padding-left:3.6pt;padding-right:3.6pt;"><span class="ltx_text ltx_font_typewriter" id="S7.T12.1.1.3.1">GPT-4o-mini Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S7.T12.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S7.T12.1.2.1" style="padding-left:3.6pt;padding-right:3.6pt;"><span class="ltx_text ltx_font_typewriter" id="S7.T12.1.2.1.1">BM25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T12.1.2.2" style="padding-left:3.6pt;padding-right:3.6pt;">62.70%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T12.1.2.3" style="padding-left:3.6pt;padding-right:3.6pt;">73.50%</td>
</tr>
<tr class="ltx_tr" id="S7.T12.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_rr ltx_border_t" id="S7.T12.1.3.1" style="padding-left:3.6pt;padding-right:3.6pt;"><span class="ltx_text ltx_font_typewriter" id="S7.T12.1.3.1.1">DPR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T12.1.3.2" style="padding-left:3.6pt;padding-right:3.6pt;">60.4%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T12.1.3.3" style="padding-left:3.6pt;padding-right:3.6pt;">73.0%</td>
</tr>
<tr class="ltx_tr" id="S7.T12.1.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_rr ltx_border_t" id="S7.T12.1.4.1" style="padding-left:3.6pt;padding-right:3.6pt;"><span class="ltx_text ltx_font_typewriter" id="S7.T12.1.4.1.1">SAGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S7.T12.1.4.2" style="padding-left:3.6pt;padding-right:3.6pt;"><span class="ltx_text ltx_font_bold" id="S7.T12.1.4.2.1">64.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S7.T12.1.4.3" style="padding-left:3.6pt;padding-right:3.6pt;"><span class="ltx_text ltx_font_bold" id="S7.T12.1.4.3.1">77.1%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy results of different LLMs on the QuALITY dataset.  It compares the performance of various Large Language Models (LLMs) in a question-answering task using the QuALITY dataset. The results show the accuracy achieved by each LLM on the QuALITY dataset, providing a comparison of their performance on a complex question answering benchmark.
> <details>
> <summary>read the caption</summary>
> TABLE XII: Accuracy on QuALITY Dataset with different LLMs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01713/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01713/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}