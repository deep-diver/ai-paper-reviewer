---
title: "Chain-of-Retrieval Augmented Generation"
summary: "CoRAG, a novel Chain-of-Retrieval Augmented Generation model, dynamically refines queries for improved accuracy in multi-hop question answering, achieving state-of-the-art performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Microsoft Research",]
showSummary: true
date: 2025-01-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.14342 {{< /keyword >}}
{{< keyword icon="writer" >}} Liang Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.14342" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.14342" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.14342/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Retrieval-Augmented Generation (RAG) models often struggle with complex queries due to limitations in their single retrieval step before answer generation.  This leads to inaccurate or incomplete answers, especially in scenarios requiring multi-hop reasoning where information needs to be gathered from multiple sources.  This problem is further exacerbated by the inherent difficulty in accurately training these models due to the lack of intermediate reasoning steps in available datasets. 

CoRAG solves these problems with a novel chain-of-retrieval approach. **It dynamically refines queries based on evolving context**, allowing for more accurate retrieval and multi-hop reasoning.  This approach, combined with a rejection sampling technique for data augmentation and various test-time decoding strategies, **significantly improves the model's accuracy and efficiency**.  The method is validated on multiple benchmarks, surpassing existing state-of-the-art models particularly in multi-hop question answering tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CoRAG improves accuracy in multi-hop question answering by dynamically refining queries during the retrieval process. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CoRAG utilizes rejection sampling to effectively train the model and various decoding strategies to control test-time compute. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CoRAG achieves state-of-the-art results on multiple benchmarks, showcasing its effectiveness and potential. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it significantly advances the field of Retrieval-Augmented Generation (RAG)** by introducing a novel training approach and decoding strategies.  It offers a practical solution to the limitations of current RAG systems, particularly for complex, multi-hop questions. The work opens exciting new avenues of research, particularly in developing efficient and robust RAG models that address real-world challenges.

------
#### Visual Insights



![](https://arxiv.org/html/2501.14342/x1.png)

> 🔼 This figure shows how the performance of the CoRAG model scales with the increase of the average number of tokens consumed during testing. The x-axis represents the average number of tokens consumed per test instance, which sums both prompt and generated tokens. The y-axis shows the exact match (EM) score, a common metric for evaluating the accuracy of question-answering models. The curve shows that increasing token consumption initially leads to significant improvement in the EM score, indicating better performance by allowing for more extensive reasoning steps. However, the gains gradually diminish as the token consumption increases beyond a certain point.
> <details>
> <summary>read the caption</summary>
> (a) Test-time scaling behavior of CoRAG.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.26">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.26.25.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T1.26.25.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.26.25.1.2">2WikiQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.26.25.1.3">HotpotQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.26.25.1.4">Bamboogle</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.26.25.1.5">MuSiQue</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.26.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T1.26.26.2.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.26.26.2.2">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.26.26.2.3">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.26.26.2.4">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.26.26.2.5">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.26.26.2.6">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.26.26.2.7">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.26.26.2.8">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.26.26.2.9">F1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.27.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T1.26.27.3.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S4.T1.26.27.3.1.1">Few-shot w/o Retrieval</em></th>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.1.1">
<math alttext="3" class="ltx_Math" display="inline" id="S4.T1.3.1.1.m1.1"><semantics id="S4.T1.3.1.1.m1.1a"><mn id="S4.T1.3.1.1.m1.1.1" xref="S4.T1.3.1.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.3.1.1.m1.1b"><cn id="S4.T1.3.1.1.m1.1.1.cmml" type="integer" xref="S4.T1.3.1.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.1.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.1.1.m1.1d">3</annotation></semantics></math>-shot Llama-3.1-8B-Inst.</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.2">27.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3">32.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4">20.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6">17.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7">21.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8">3.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9">9.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.2.1">
<math alttext="3" class="ltx_Math" display="inline" id="S4.T1.4.2.1.m1.1"><semantics id="S4.T1.4.2.1.m1.1a"><mn id="S4.T1.4.2.1.m1.1.1" xref="S4.T1.4.2.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.4.2.1.m1.1b"><cn id="S4.T1.4.2.1.m1.1.1.cmml" type="integer" xref="S4.T1.4.2.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.2.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.2.1.m1.1d">3</annotation></semantics></math>-shot GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.2">39.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.3">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.4">38.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.5">51.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.6">49.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.7">61.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.8">15.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.9">27.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.28.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T1.26.28.4.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S4.T1.26.28.4.1.1">w/ Retrieval</em></th>
</tr>
<tr class="ltx_tr" id="S4.T1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.3.1">
<math alttext="3" class="ltx_Math" display="inline" id="S4.T1.5.3.1.m1.1"><semantics id="S4.T1.5.3.1.m1.1a"><mn id="S4.T1.5.3.1.m1.1.1" xref="S4.T1.5.3.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.5.3.1.m1.1b"><cn id="S4.T1.5.3.1.m1.1.1.cmml" type="integer" xref="S4.T1.5.3.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.3.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.3.1.m1.1d">3</annotation></semantics></math>-shot Llama-3.1-8B-Inst.</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.3.2">30.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.3.3">39.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.3.4">34.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.3.5">46.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.3.6">28.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.3.7">37.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.3.8">7.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.3.9">15.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.4.1">
<math alttext="3" class="ltx_Math" display="inline" id="S4.T1.6.4.1.m1.1"><semantics id="S4.T1.6.4.1.m1.1a"><mn id="S4.T1.6.4.1.m1.1.1" xref="S4.T1.6.4.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.6.4.1.m1.1b"><cn id="S4.T1.6.4.1.m1.1.1.cmml" type="integer" xref="S4.T1.6.4.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.4.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.4.1.m1.1d">3</annotation></semantics></math>-shot GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.2">49.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.3">56.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.4">45.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.5">59.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.6">53.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.7">63.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.8">15.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.9">25.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.29.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.26.29.5.1">Self-RAG-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T1.26.29.5.2">12.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.29.5.3">24.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.29.5.4">16.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.29.5.5">29.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.29.5.6">5.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.29.5.7">16.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.29.5.8">4.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.29.5.9">13.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.30.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.26.30.6.1">ITER-RETGEN</th>
<td class="ltx_td ltx_align_center" id="S4.T1.26.30.6.2">35.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.30.6.3">47.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.30.6.4">45.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.30.6.5">60.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.30.6.6">40.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.30.6.7">50.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.30.6.8">26.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.30.6.9">42.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.5.1">DRAG (<math alttext="32" class="ltx_Math" display="inline" id="S4.T1.7.5.1.m1.1"><semantics id="S4.T1.7.5.1.m1.1a"><mn id="S4.T1.7.5.1.m1.1.1" xref="S4.T1.7.5.1.m1.1.1.cmml">32</mn><annotation-xml encoding="MathML-Content" id="S4.T1.7.5.1.m1.1b"><cn id="S4.T1.7.5.1.m1.1.1.cmml" type="integer" xref="S4.T1.7.5.1.m1.1.1">32</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.5.1.m1.1c">32</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.5.1.m1.1d">32</annotation></semantics></math>k)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.2">45.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.3">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.4">46.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.5">60.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.6">48.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.7">59.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.8">15.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.9">26.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.6.1">IterDRAG (<math alttext="32" class="ltx_Math" display="inline" id="S4.T1.8.6.1.m1.1"><semantics id="S4.T1.8.6.1.m1.1a"><mn id="S4.T1.8.6.1.m1.1.1" xref="S4.T1.8.6.1.m1.1.1.cmml">32</mn><annotation-xml encoding="MathML-Content" id="S4.T1.8.6.1.m1.1b"><cn id="S4.T1.8.6.1.m1.1.1.cmml" type="integer" xref="S4.T1.8.6.1.m1.1.1">32</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.6.1.m1.1c">32</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.6.1.m1.1d">32</annotation></semantics></math>k)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.2">44.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.3">54.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.4">38.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.5">49.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.6">46.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.7">56.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.8">12.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.9">23.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.31.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.26.31.7.1">Search-o1-32B</th>
<td class="ltx_td ltx_align_center" id="S4.T1.26.31.7.2">58.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.31.7.3">71.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.31.7.4">45.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.31.7.5">57.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.31.7.6"><span class="ltx_text ltx_font_bold" id="S4.T1.26.31.7.6.1">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.31.7.7">67.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.31.7.8">16.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.31.7.9">28.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.9.7.1">Fine-tuned Llama-8B w/ E5<math alttext="{}_{\text{large}}" class="ltx_Math" display="inline" id="S4.T1.9.7.1.m1.1"><semantics id="S4.T1.9.7.1.m1.1a"><msub id="S4.T1.9.7.1.m1.1.1" xref="S4.T1.9.7.1.m1.1.1.cmml"><mi id="S4.T1.9.7.1.m1.1.1a" xref="S4.T1.9.7.1.m1.1.1.cmml"></mi><mtext id="S4.T1.9.7.1.m1.1.1.1" xref="S4.T1.9.7.1.m1.1.1.1a.cmml">large</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.9.7.1.m1.1b"><apply id="S4.T1.9.7.1.m1.1.1.cmml" xref="S4.T1.9.7.1.m1.1.1"><ci id="S4.T1.9.7.1.m1.1.1.1a.cmml" xref="S4.T1.9.7.1.m1.1.1.1"><mtext id="S4.T1.9.7.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T1.9.7.1.m1.1.1.1">large</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.7.1.m1.1c">{}_{\text{large}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.7.1.m1.1d">start_FLOATSUBSCRIPT large end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.2">55.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.3">60.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.4">50.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.5">63.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.6">40.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.7">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.8">17.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.7.9">28.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.32.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T1.26.32.8.1">CoRAG-8B (Ours)</th>
</tr>
<tr class="ltx_tr" id="S4.T1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.12.10.3">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="S4.T1.10.8.1.m1.1"><semantics id="S4.T1.10.8.1.m1.1a"><mo id="S4.T1.10.8.1.m1.1.1" xref="S4.T1.10.8.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.8.1.m1.1b"><ci id="S4.T1.10.8.1.m1.1.1.cmml" xref="S4.T1.10.8.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.8.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.8.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="S4.T1.11.9.2.m2.1"><semantics id="S4.T1.11.9.2.m2.1a"><mi id="S4.T1.11.9.2.m2.1.1" xref="S4.T1.11.9.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="S4.T1.11.9.2.m2.1b"><ci id="S4.T1.11.9.2.m2.1.1.cmml" xref="S4.T1.11.9.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.9.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.9.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="1" class="ltx_Math" display="inline" id="S4.T1.12.10.3.m3.1"><semantics id="S4.T1.12.10.3.m3.1a"><mn id="S4.T1.12.10.3.m3.1.1" xref="S4.T1.12.10.3.m3.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="S4.T1.12.10.3.m3.1b"><cn id="S4.T1.12.10.3.m3.1.1.cmml" type="integer" xref="S4.T1.12.10.3.m3.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.10.3.m3.1c">1</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.10.3.m3.1d">1</annotation></semantics></math>, greedy</th>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.4">56.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.5">62.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.6">50.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.7">63.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.8">37.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.9">51.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.10">18.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.11">29.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.15.13.3">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="S4.T1.13.11.1.m1.1"><semantics id="S4.T1.13.11.1.m1.1a"><mo id="S4.T1.13.11.1.m1.1.1" xref="S4.T1.13.11.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.11.1.m1.1b"><ci id="S4.T1.13.11.1.m1.1.1.cmml" xref="S4.T1.13.11.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.11.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.11.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="S4.T1.14.12.2.m2.1"><semantics id="S4.T1.14.12.2.m2.1a"><mi id="S4.T1.14.12.2.m2.1.1" xref="S4.T1.14.12.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="S4.T1.14.12.2.m2.1b"><ci id="S4.T1.14.12.2.m2.1.1.cmml" xref="S4.T1.14.12.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.12.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.12.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="6" class="ltx_Math" display="inline" id="S4.T1.15.13.3.m3.1"><semantics id="S4.T1.15.13.3.m3.1a"><mn id="S4.T1.15.13.3.m3.1.1" xref="S4.T1.15.13.3.m3.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S4.T1.15.13.3.m3.1b"><cn id="S4.T1.15.13.3.m3.1.1.cmml" type="integer" xref="S4.T1.15.13.3.m3.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.13.3.m3.1c">6</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.13.3.m3.1d">6</annotation></semantics></math>, greedy</th>
<td class="ltx_td ltx_align_center" id="S4.T1.15.13.4">70.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.13.5">75.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.13.6">54.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.13.7">67.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.13.8">48.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.13.9">63.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.13.10">27.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.13.11">38.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.19.17.4">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="S4.T1.16.14.1.m1.1"><semantics id="S4.T1.16.14.1.m1.1a"><mo id="S4.T1.16.14.1.m1.1.1" xref="S4.T1.16.14.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.14.1.m1.1b"><ci id="S4.T1.16.14.1.m1.1.1.cmml" xref="S4.T1.16.14.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.14.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.14.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="S4.T1.17.15.2.m2.1"><semantics id="S4.T1.17.15.2.m2.1a"><mi id="S4.T1.17.15.2.m2.1.1" xref="S4.T1.17.15.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="S4.T1.17.15.2.m2.1b"><ci id="S4.T1.17.15.2.m2.1.1.cmml" xref="S4.T1.17.15.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.15.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.15.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="6" class="ltx_Math" display="inline" id="S4.T1.18.16.3.m3.1"><semantics id="S4.T1.18.16.3.m3.1a"><mn id="S4.T1.18.16.3.m3.1.1" xref="S4.T1.18.16.3.m3.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S4.T1.18.16.3.m3.1b"><cn id="S4.T1.18.16.3.m3.1.1.cmml" type="integer" xref="S4.T1.18.16.3.m3.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.16.3.m3.1c">6</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.16.3.m3.1d">6</annotation></semantics></math>, best-of-<math alttext="4" class="ltx_Math" display="inline" id="S4.T1.19.17.4.m4.1"><semantics id="S4.T1.19.17.4.m4.1a"><mn id="S4.T1.19.17.4.m4.1.1" xref="S4.T1.19.17.4.m4.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S4.T1.19.17.4.m4.1b"><cn id="S4.T1.19.17.4.m4.1.1.cmml" type="integer" xref="S4.T1.19.17.4.m4.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.17.4.m4.1c">4</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.17.4.m4.1d">4</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.19.17.5">71.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.17.6">76.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.17.7">55.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.17.8">68.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.17.9">51.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.17.10">63.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.17.11">28.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.17.12">39.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.22.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.22.20.3">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="S4.T1.20.18.1.m1.1"><semantics id="S4.T1.20.18.1.m1.1a"><mo id="S4.T1.20.18.1.m1.1.1" xref="S4.T1.20.18.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="S4.T1.20.18.1.m1.1b"><ci id="S4.T1.20.18.1.m1.1.1.cmml" xref="S4.T1.20.18.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.18.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.18.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="S4.T1.21.19.2.m2.1"><semantics id="S4.T1.21.19.2.m2.1a"><mi id="S4.T1.21.19.2.m2.1.1" xref="S4.T1.21.19.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="S4.T1.21.19.2.m2.1b"><ci id="S4.T1.21.19.2.m2.1.1.cmml" xref="S4.T1.21.19.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.19.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.19.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="6" class="ltx_Math" display="inline" id="S4.T1.22.20.3.m3.1"><semantics id="S4.T1.22.20.3.m3.1a"><mn id="S4.T1.22.20.3.m3.1.1" xref="S4.T1.22.20.3.m3.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S4.T1.22.20.3.m3.1b"><cn id="S4.T1.22.20.3.m3.1.1.cmml" type="integer" xref="S4.T1.22.20.3.m3.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.20.3.m3.1c">6</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.20.3.m3.1d">6</annotation></semantics></math>, tree search</th>
<td class="ltx_td ltx_align_center" id="S4.T1.22.20.4">71.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.20.5">76.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.20.6">55.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.20.7">69.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.20.8">48.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.20.9">64.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.20.10">29.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.20.11">40.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.26.24.4">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="S4.T1.23.21.1.m1.1"><semantics id="S4.T1.23.21.1.m1.1a"><mo id="S4.T1.23.21.1.m1.1.1" xref="S4.T1.23.21.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="S4.T1.23.21.1.m1.1b"><ci id="S4.T1.23.21.1.m1.1.1.cmml" xref="S4.T1.23.21.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.21.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.21.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="S4.T1.24.22.2.m2.1"><semantics id="S4.T1.24.22.2.m2.1a"><mi id="S4.T1.24.22.2.m2.1.1" xref="S4.T1.24.22.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="S4.T1.24.22.2.m2.1b"><ci id="S4.T1.24.22.2.m2.1.1.cmml" xref="S4.T1.24.22.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.24.22.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="S4.T1.24.22.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="10" class="ltx_Math" display="inline" id="S4.T1.25.23.3.m3.1"><semantics id="S4.T1.25.23.3.m3.1a"><mn id="S4.T1.25.23.3.m3.1.1" xref="S4.T1.25.23.3.m3.1.1.cmml">10</mn><annotation-xml encoding="MathML-Content" id="S4.T1.25.23.3.m3.1b"><cn id="S4.T1.25.23.3.m3.1.1.cmml" type="integer" xref="S4.T1.25.23.3.m3.1.1">10</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.25.23.3.m3.1c">10</annotation><annotation encoding="application/x-llamapun" id="S4.T1.25.23.3.m3.1d">10</annotation></semantics></math>, best-of-<math alttext="8" class="ltx_Math" display="inline" id="S4.T1.26.24.4.m4.1"><semantics id="S4.T1.26.24.4.m4.1a"><mn id="S4.T1.26.24.4.m4.1.1" xref="S4.T1.26.24.4.m4.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="S4.T1.26.24.4.m4.1b"><cn id="S4.T1.26.24.4.m4.1.1.cmml" type="integer" xref="S4.T1.26.24.4.m4.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.26.24.4.m4.1c">8</annotation><annotation encoding="application/x-llamapun" id="S4.T1.26.24.4.m4.1d">8</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.26.24.5"><span class="ltx_text ltx_font_bold" id="S4.T1.26.24.5.1">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.26.24.6"><span class="ltx_text ltx_font_bold" id="S4.T1.26.24.6.1">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.26.24.7"><span class="ltx_text ltx_font_bold" id="S4.T1.26.24.7.1">56.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.26.24.8"><span class="ltx_text ltx_font_bold" id="S4.T1.26.24.8.1">69.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.26.24.9">54.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.26.24.10"><span class="ltx_text ltx_font_bold" id="S4.T1.26.24.10.1">68.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.26.24.11"><span class="ltx_text ltx_font_bold" id="S4.T1.26.24.11.1">30.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.26.24.12"><span class="ltx_text ltx_font_bold" id="S4.T1.26.24.12.1">42.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of the CoRAG-8B model's performance on several multi-hop question answering (QA) datasets against various state-of-the-art baselines.  It showcases the impact of different decoding strategies (greedy, best-of-N sampling, tree search) and varying retrieval chain lengths on the model's accuracy, measured by Exact Match (EM) and F1 scores.  The table also includes results for a few-shot setting without retrieval augmentation for comparison, highlighting the effectiveness of the CoRAG approach.  Note that certain baseline models (DRAG, IterDRAG, and Search-01-32B) leverage specific underlying models and retrieval methods which are explicitly noted in the caption for transparency.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on multi-hop QA datasets. We report the performance of CoRAG-8B using various decoding strategies and retrieval chain lengths L𝐿Litalic_L. The “Few-shot w/o Retrieval” configuration utilizes only QA pairs without retrieval augmentation. Both DRAG and IterDRAG are based on Gemini 1.5 Flash [29], while Search-o1-32B is based on QwQ [35] and the Bing Search API.
> </details>





### In-depth insights


#### CoRAG: Chain-of-Retrieval
CoRAG, or Chain-of-Retrieval Augmented Generation, presents a novel approach to enhance Retrieval Augmented Generation (RAG) models.  Unlike traditional RAG which performs a single retrieval step before generation, **CoRAG iteratively retrieves and reasons over information**, dynamically refining queries based on the evolving context. This multi-step process allows CoRAG to effectively handle complex queries that might stump single-step methods due to imperfect initial retrieval.  A key innovation is the use of **rejection sampling to augment existing datasets** with intermediate retrieval chains, enabling effective model training.  The paper also introduces various decoding strategies at test time to control computational cost by managing retrieval chain length and sampling.  **Empirical results showcase significant improvements over strong baselines**, particularly in multi-hop question answering, demonstrating the efficacy of CoRAG's iterative approach and establishing new state-of-the-art results. The scalability analysis offers valuable insights into the trade-off between computational cost and performance.  The technique holds **promise for building more robust and factual foundation models** by mitigating limitations inherent in traditional RAG methods.

#### Rejection Sampling
Rejection sampling, in the context of the research paper, is a crucial technique for augmenting existing datasets by generating synthetic retrieval chains.  **Its primary function is to address the scarcity of intermediate retrieval steps in typical RAG (Retrieval-Augmented Generation) datasets.** This data augmentation is vital for effectively training models to reason and retrieve information dynamically, a core feature of the CoRAG system.  The process involves sampling chains of sub-queries and sub-answers, evaluating them based on the probability of arriving at the correct final answer, and rejecting those that fall below a certain threshold.  **This iterative refinement improves the model's ability to learn complex multi-hop reasoning, going beyond the limitations of single-step retrieval.** The effectiveness and efficiency of this method are significant, enabling the creation of diverse and high-quality training data without manual annotation, a major bottleneck in the development of advanced RAG models.  **The strategic use of rejection sampling ultimately enhances the generalization capabilities and improves the overall performance of CoRAG in tasks requiring multi-step reasoning.**

#### Decoding Strategies
The effectiveness of retrieval-augmented generation (RAG) models hinges significantly on the decoding strategies employed during inference.  **The choice of decoding strategy directly impacts the trade-off between computational cost and model performance.**  The paper explores various strategies, including greedy decoding, best-of-N sampling, and tree search.  Greedy decoding is computationally efficient but may not explore the full potential of the model.  Best-of-N sampling balances efficiency with improved accuracy by generating multiple candidate answers.  **Tree search, while most comprehensive, incurs the highest computational overhead.**  The optimal strategy is context-dependent and varies across datasets and tasks, demonstrating the **crucial need for adaptive decoding mechanisms** that dynamically adjust to the complexity of the query and the quality of the retriever.  Further research should investigate more sophisticated strategies and explore the potential of reinforcement learning to optimize the selection of decoding strategies during inference.

#### Test-Time Scaling
The concept of 'Test-Time Scaling' in the context of Retrieval Augmented Generation (RAG) models is crucial for practical applications.  It addresses the trade-off between model performance and computational cost during inference.  The paper explores various decoding strategies—**greedy decoding**, **best-of-N sampling**, and **tree search**—to control this trade-off.  **Greedy decoding** is the fastest but may not be optimal, while **best-of-N sampling** offers a balance between speed and accuracy by exploring multiple retrieval chains.  **Tree search**, though potentially most effective, is computationally expensive.  The empirical evaluation reveals a relationship between total tokens consumed and model performance, often following a log-linear trend.  This finding suggests that **dynamically allocating computational resources based on query complexity and retriever performance** is beneficial.  The results highlight the importance of test-time optimization in RAG models to achieve efficient and high-quality responses in real-world scenarios, particularly for complex or resource-constrained environments.

#### Future of RAG
The future of Retrieval Augmented Generation (RAG) is bright, with several key areas ripe for advancement. **Improved retrieval methods**, moving beyond simple keyword matching to incorporate semantic understanding and contextual awareness, are crucial.  This includes exploring more sophisticated techniques like dense passage retrieval and advanced query reformulation strategies to handle complex, multi-hop queries more effectively.  **Enhanced model architectures** are also needed to better integrate retrieval and generation processes, potentially via more seamless integration of LLMs and retrieval systems.  Furthermore, research into **efficient test-time scaling** is paramount, enabling RAG to handle increasingly large datasets and complex reasoning tasks without compromising speed and efficiency.  Finally, addressing **hallucination issues** remains a top priority, improving the accuracy and reliability of RAG-generated responses, perhaps through better methods for evaluating the trustworthiness of retrieved information and incorporating uncertainty quantification into the generation process.  These combined efforts will enable RAG systems to become more accurate, robust, efficient, and reliable, unlocking their full potential across a wider range of applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.14342/x2.png)

> 🔼 The figure shows an example of a multi-hop question answering process using the Chain-of-Retrieval Augmented Generation (CoRAG) model.  The user asks a question, 'Where did the star of Dark Hazard study?', and the system uses multiple retrieval steps to find the answer. First, it retrieves the star's name, 'Edward G. Robinson'. Then, it reformulates the query to 'What college did Edward G. Robinson attend?' and retrieves the answer, 'City College of New York'. This illustrates the dynamic reformulation of queries and the step-by-step retrieval process of CoRAG, highlighting its capability in addressing complex questions requiring multiple hops of reasoning.
> <details>
> <summary>read the caption</summary>
> (b) An example of CoRAG in action.
> </details>



![](https://arxiv.org/html/2501.14342/x3.png)

> 🔼 CoRAG (Chain-of-Retrieval Augmented Generation) is a novel approach for training RAG models that retrieve and reason over relevant information step by step before generating the final answer.  The figure illustrates the CoRAG framework. It begins with rejection sampling to augment standard QA datasets by creating retrieval chains. Each chain starts with the original query and iteratively generates sub-queries and corresponding sub-answers.  These chains are used to train an open-source large language model (LLM) to predict the next action (sub-query or sub-answer) based on the current state of the chain. During the inference stage (when generating answers to new questions), multiple decoding strategies are employed to control the computational cost and balance it with the desired accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of CoRAG. Rejection sampling is utilized to augment QA-only datasets with retrieval chains. Each chain starts with the original query, followed by a sequence of sub-queries and sub-answers. An open-source LLM is then fine-tuned to predict the next action based on the current state. During inference, multiple decoding strategies are available to control the test-time compute.
> </details>



![](https://arxiv.org/html/2501.14342/x4.png)

> 🔼 This figure examines the trade-off between model performance (measured by Exact Match score) and computational cost (measured by the average number of tokens used per query) in multi-hop question answering.  It shows how different decoding strategies (greedy, best-of-N sampling, tree search) and retrieval chain lengths affect this trade-off.  The Pareto frontier is visualized, illustrating the optimal balance between performance and cost for each strategy. Points on the Pareto frontier represent situations where no other strategy could achieve a higher EM score with fewer tokens. The relationship between tokens and EM score is modeled by a logarithmic function, y = a × log(x + b) + c, where y represents EM and x represents average tokens.
> <details>
> <summary>read the caption</summary>
> Figure 2: Scaling test-time compute on multi-hop QA datasets. The Pareto frontier is in the form of y=a×log⁡(x+b)+c𝑦𝑎𝑥𝑏𝑐y=a\times\log(x+b)+citalic_y = italic_a × roman_log ( italic_x + italic_b ) + italic_c fitted on the Pareto optimal points. A point is considered Pareto optimal if no other point achieves a higher EM score with less token consumption. The metric “# Avg. Tokens” represents the average number of tokens consumed per test instance, summing up both the prompt and generated tokens.
> </details>



![](https://arxiv.org/html/2501.14342/x5.png)

> 🔼 This figure shows how varying the retrieval chain length impacts the performance and computational cost of the CoRAG model on three different tasks from the KILT benchmark.  The x-axis represents the length of the retrieval chain (number of retrieval steps), and the y-axis represents the performance (accuracy or exact match) achieved on the tasks. Different lines represent various decoding strategies employed by the model.  The figure highlights the trade-off between achieving higher accuracy and managing computational cost by adjusting the retrieval chain length. The scores are those achieved on the public validation set of the KILT benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: Scaling test-time compute across three datasets from the KILT benchmark. We report scores on the public validation set.
> </details>



![](https://arxiv.org/html/2501.14342/x6.png)

> 🔼 This figure illustrates the effect of a learnable 'stop' mechanism that determines when to halt the iterative retrieval process within the Chain-of-Retrieval Augmented Generation (CoRAG) model.  The experiment varies the logit bias associated with the 'stop' prediction. A higher logit bias incentivizes the model to stop earlier, reducing the number of retrieval steps. The results show the trade-off between the model's performance (measured by Exact Match score) and the number of tokens consumed for different stopping strategies.  The x-axis represents the logit bias of the stop decision, and the y-axis depicts the Exact Match score and token consumption. The different colored lines represent different numbers of retrieval steps: L=6 (always using 6 retrieval steps) and L=0 (no intermediate retrieval steps).  This allows for examination of how a learnable stopping mechanism affects efficiency without sacrificing accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4: Learning to stop at test time. Larger logit bias values result in earlier stopping. L=6𝐿6L=6italic_L = 6 correspond to always performing 6666 retrieval steps, while L=0𝐿0L=0italic_L = 0 indicate no intermediate retrieval steps.
> </details>



![](https://arxiv.org/html/2501.14342/x7.png)

> 🔼 This figure illustrates the impact of varying the number of retrieval chains sampled during the rejection sampling process on the performance of the model.  The experiment systematically varies the number of sampled chains, increasing it from 4 to 16, while keeping all other hyperparameters constant.  The x-axis represents the number of sampled chains, and the y-axis displays the resulting EM (Exact Match) score on four different multi-hop question answering datasets.  The purpose is to investigate the effect of the quantity of training data generated through rejection sampling on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Scaling rejection sampling compute for training data generation. We vary the number of sampled chains from 4444 to 16161616 while maintaining all other hyperparameters fixed.
> </details>



![](https://arxiv.org/html/2501.14342/x8.png)

> 🔼 This figure displays the impact of different sampling temperatures on the performance of the CoRAG model across four multi-hop question answering datasets (2WikiMultihopQA, HotpotQA, Bamboogle, and MuSiQue).  Each dataset has a separate subplot showing the Exact Match (EM) score on the y-axis and the sampling temperature on the x-axis. Different lines represent different decoding strategies (greedy, best-of-4, best-of-8).  The plots reveal how the choice of sampling temperature influences the balance between diversity and quality in the retrieval chains generated during training, which in turn affects the final model's performance on these datasets. The results suggest that there is no universally optimal sampling temperature, and its effectiveness can vary based on the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: Effects of varying the sampling temperature on multi-hop QA datasets.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.3.1.2.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.3.1.2.1.1.1">System</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.3.1.2.1.2">Entity Linking</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.1.2.1.3">Slot Filling</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.3.1.2.1.4">Open QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.2.1.5">Fact</th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.1">AIDA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.2">WnWi</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.3">WnCw</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.4">T-REx</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.5">zsRE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.6">NQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.7">HoPo</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.8">TQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.3.2.9">FEVER</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.1.4.1.1">KILT-RAG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.2">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.3">48.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.4">47.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.5">59.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.6">44.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.7">44.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.8">27.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.9">71.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.1.10">86.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.5.2.1">SEAL</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.5">83.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.6">74.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.7">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.8">40.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.9">70.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.2.10">89.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.6.3.1">Atlas-11B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.2">90.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.5">85.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.6">80.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.7">61.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.8">50.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.9">84.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3.10"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.3.10.1">93.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.7.4.1">RA-DIT 65B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.2">80.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.5">72.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.6">78.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.7">43.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.8">36.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.9">72.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4.10">86.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.8.5.1">FiD with RS</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.5">85.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.6">83.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.7">61.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.8">39.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.9">84.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5.10">92.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.1.1">Previous Best<sup class="ltx_sup" id="S4.T2.3.1.1.1.1">∗</sup>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.2">90.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.3">87.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.4">71.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.5">87.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.6">85.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.7">62.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.8">50.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.9">84.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.10.1">93.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.1">CoRAG-8B (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.6.2.1">93.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.6.3.1">88.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.6.4.1">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.6.5.1">88.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.6.6.1">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.6.7.1">63.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.8"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.6.8.1">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.9"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.6.9.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.9.6.10">93.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of the KILT benchmark, a comprehensive evaluation suite for knowledge-intensive language tasks.  The table compares the performance of the proposed CoRAG model against several state-of-the-art models across various subtasks within KILT.  These subtasks cover diverse areas like entity linking, slot filling, and open question answering.  The scores are sourced directly from the official KILT leaderboard, providing an objective comparison.  One exception is the RA-DIT 65B model, where the score is taken from its original publication (reference [21]), as opposed to the leaderboard.  The 'Previous Best' column indicates the top score achieved for each task on the public leaderboard up to January 10, 2025.
> <details>
> <summary>read the caption</summary>
> Table 2: The downstream results on the hidden test set of the KILT benchmark. All scores are sourced directly from the official leaderboard, with the exception that “RA-DIT 65B” is from the original paper [21]. ∗*∗: “Previous Best” refers to the highest score for each task on the public KILT leaderboard as of January 10, 2025.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.8.9.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.8.9.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.8.9.1.2">2WikiQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.8.9.1.3">HotpotQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.8.9.1.4">Bamboogle</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.8.9.1.5">MuSiQue</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.10.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T3.8.10.2.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.10.2.2">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.10.2.3">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.10.2.4">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.10.2.5">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.10.2.6">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.10.2.7">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.10.2.8">EM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.10.2.9">F1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.1">CoRAG-8B (L=<math alttext="6" class="ltx_Math" display="inline" id="S5.T3.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.m1.1a"><mn id="S5.T3.1.1.1.m1.1.1" xref="S5.T3.1.1.1.m1.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.m1.1b"><cn id="S5.T3.1.1.1.m1.1.1.cmml" type="integer" xref="S5.T3.1.1.1.m1.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.m1.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.m1.1d">6</annotation></semantics></math>, greedy)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2">70.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3">75.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.4.1">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.5.1">67.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.6.1">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.7.1">63.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.8.1">27.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.9.1">38.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.2.2.1">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="S5.T3.2.2.1.m1.1"><semantics id="S5.T3.2.2.1.m1.1a"><mo id="S5.T3.2.2.1.m1.1.1" xref="S5.T3.2.2.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.1.m1.1b"><ci id="S5.T3.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.1.m1.1d">▷</annotation></semantics></math> iterative training</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.1">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.3.1">76.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.4">53.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.5">66.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.6">45.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.7">60.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.8">26.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.9">37.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S5.T3.8.11.3.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S5.T3.8.11.3.1.1">Weak-to-strong Generalization</em></th>
</tr>
<tr class="ltx_tr" id="S5.T3.8.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.8.12.4.1">    w/ Llama-3.2-1B-Inst.</th>
<td class="ltx_td ltx_align_center" id="S5.T3.8.12.4.2">59.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.12.4.3">64.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.12.4.4">50.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.12.4.5">63.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.12.4.6">40.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.12.4.7">51.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.12.4.8">22.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.12.4.9">32.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.8.13.5.1">    w/ Llama-3.2-3B-Inst.</th>
<td class="ltx_td ltx_align_center" id="S5.T3.8.13.5.2">69.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.13.5.3">74.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.13.5.4">53.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.13.5.5">67.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.13.5.6">45.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.13.5.7">59.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.13.5.8">25.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.13.5.9">36.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.14.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S5.T3.8.14.6.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S5.T3.8.14.6.1.1">Different Retrievers</em></th>
</tr>
<tr class="ltx_tr" id="S5.T3.8.15.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.8.15.7.1">E5-base w/o chain-of-retrieval</th>
<td class="ltx_td ltx_align_center" id="S5.T3.8.15.7.2">53.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.15.7.3">58.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.15.7.4">47.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.15.7.5">61.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.15.7.6">38.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.15.7.7">52.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.15.7.8">15.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.15.7.9">26.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.5.3">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="S5.T3.3.3.1.m1.1"><semantics id="S5.T3.3.3.1.m1.1a"><mo id="S5.T3.3.3.1.m1.1.1" xref="S5.T3.3.3.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.1.m1.1b"><ci id="S5.T3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.1.m1.1d">▷</annotation></semantics></math> L=<math alttext="6" class="ltx_Math" display="inline" id="S5.T3.4.4.2.m2.1"><semantics id="S5.T3.4.4.2.m2.1a"><mn id="S5.T3.4.4.2.m2.1.1" xref="S5.T3.4.4.2.m2.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.2.m2.1b"><cn id="S5.T3.4.4.2.m2.1.1.cmml" type="integer" xref="S5.T3.4.4.2.m2.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.2.m2.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.2.m2.1d">6</annotation></semantics></math>, best-of-<math alttext="4" class="ltx_Math" display="inline" id="S5.T3.5.5.3.m3.1"><semantics id="S5.T3.5.5.3.m3.1a"><mn id="S5.T3.5.5.3.m3.1.1" xref="S5.T3.5.5.3.m3.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.3.m3.1b"><cn id="S5.T3.5.5.3.m3.1.1.cmml" type="integer" xref="S5.T3.5.5.3.m3.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.3.m3.1c">4</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.3.m3.1d">4</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.4">70.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5">75.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.6">53.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.7">66.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.8">47.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.9">59.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.10">26.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.11">37.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.16.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.8.16.8.1">BM25 w/o chain-of-retrieval</th>
<td class="ltx_td ltx_align_center" id="S5.T3.8.16.8.2">49.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.16.8.3">55.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.16.8.4">46.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.16.8.5">60.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.16.8.6">36.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.16.8.7">48.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.16.8.8">14.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.16.8.9">24.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.8.8.3">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="S5.T3.6.6.1.m1.1"><semantics id="S5.T3.6.6.1.m1.1a"><mo id="S5.T3.6.6.1.m1.1.1" xref="S5.T3.6.6.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.1.m1.1b"><ci id="S5.T3.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.1.m1.1d">▷</annotation></semantics></math> L=<math alttext="6" class="ltx_Math" display="inline" id="S5.T3.7.7.2.m2.1"><semantics id="S5.T3.7.7.2.m2.1a"><mn id="S5.T3.7.7.2.m2.1.1" xref="S5.T3.7.7.2.m2.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.2.m2.1b"><cn id="S5.T3.7.7.2.m2.1.1.cmml" type="integer" xref="S5.T3.7.7.2.m2.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.2.m2.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.2.m2.1d">6</annotation></semantics></math>, best-of-<math alttext="4" class="ltx_Math" display="inline" id="S5.T3.8.8.3.m3.1"><semantics id="S5.T3.8.8.3.m3.1a"><mn id="S5.T3.8.8.3.m3.1.1" xref="S5.T3.8.8.3.m3.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.3.m3.1b"><cn id="S5.T3.8.8.3.m3.1.1.cmml" type="integer" xref="S5.T3.8.8.3.m3.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.3.m3.1c">4</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.3.m3.1d">4</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.4">62.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.5">67.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.6">51.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.7">64.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.8">37.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.9">52.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.10">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.11">33.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to analyze the impact of various components and training strategies on the CoRAG model's performance.  Three main variations were tested: 1) Iterative Training, where a trained CoRAG model was used to generate additional retrieval chains via rejection sampling; 2) Weak-to-Strong Generalization, which explored using weaker LLMs to generate retrieval chains while retaining a stronger LLM (Llama-3.1-8B-Inst.) for the main training; and 3) Different Retrievers, where alternative text retrieval methods were substituted during the testing phase.  The table shows the performance (EM and F1 scores) across multiple multi-hop QA datasets (2WikiQA, HotpotQA, Bamboogle, MuSiQue) for each of these variations, allowing for a detailed comparison and analysis of each component's contribution to the overall model effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study results. “Iterative training” employs a trained CoRAG model for another round of rejection sampling. “Weak-to-strong Generalization” utilizes weaker LLMs for retrieval chain generation while using stronger LLMs (Llama-3.1-8B-Inst.) for training. “Different Retrievers” replaces the text retriever at test time.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.14.15.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A1.T4.14.15.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.14.15.1.2">Multi-hop QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.14.15.1.3">KILT Benchmark</th>
</tr>
<tr class="ltx_tr" id="A1.T4.14.16.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T4.14.16.2.1">Initialization</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="A1.T4.14.16.2.2"><em class="ltx_emph ltx_font_italic" id="A1.T4.14.16.2.2.1">Llama-3.1-8B-Instruct</em></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.2.2.3">Learning rate</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.1"><math alttext="5\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.m1.1a"><mrow id="A1.T4.1.1.1.m1.1.1" xref="A1.T4.1.1.1.m1.1.1.cmml"><mn id="A1.T4.1.1.1.m1.1.1.2" xref="A1.T4.1.1.1.m1.1.1.2.cmml">5</mn><mo id="A1.T4.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.1.1.1.m1.1.1.3" xref="A1.T4.1.1.1.m1.1.1.3.cmml"><mn id="A1.T4.1.1.1.m1.1.1.3.2" xref="A1.T4.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.1.1.1.m1.1.1.3.3" xref="A1.T4.1.1.1.m1.1.1.3.3.cmml"><mo id="A1.T4.1.1.1.m1.1.1.3.3a" xref="A1.T4.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.1.1.1.m1.1.1.3.3.2" xref="A1.T4.1.1.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.1b"><apply id="A1.T4.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1"><times id="A1.T4.1.1.1.m1.1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1.1"></times><cn id="A1.T4.1.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.1.1.1.m1.1.1.2">5</cn><apply id="A1.T4.1.1.1.m1.1.1.3.cmml" xref="A1.T4.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.1.1.1.m1.1.1.3.1.cmml" xref="A1.T4.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.1.1.1.m1.1.1.3.2">10</cn><apply id="A1.T4.1.1.1.m1.1.1.3.3.cmml" xref="A1.T4.1.1.1.m1.1.1.3.3"><minus id="A1.T4.1.1.1.m1.1.1.3.3.1.cmml" xref="A1.T4.1.1.1.m1.1.1.3.3"></minus><cn id="A1.T4.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.1.1.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.1c">5\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.1d">5 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2"><math alttext="10^{-5}" class="ltx_Math" display="inline" id="A1.T4.2.2.2.m1.1"><semantics id="A1.T4.2.2.2.m1.1a"><msup id="A1.T4.2.2.2.m1.1.1" xref="A1.T4.2.2.2.m1.1.1.cmml"><mn id="A1.T4.2.2.2.m1.1.1.2" xref="A1.T4.2.2.2.m1.1.1.2.cmml">10</mn><mrow id="A1.T4.2.2.2.m1.1.1.3" xref="A1.T4.2.2.2.m1.1.1.3.cmml"><mo id="A1.T4.2.2.2.m1.1.1.3a" xref="A1.T4.2.2.2.m1.1.1.3.cmml">−</mo><mn id="A1.T4.2.2.2.m1.1.1.3.2" xref="A1.T4.2.2.2.m1.1.1.3.2.cmml">5</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.m1.1b"><apply id="A1.T4.2.2.2.m1.1.1.cmml" xref="A1.T4.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.2.2.2.m1.1.1.1.cmml" xref="A1.T4.2.2.2.m1.1.1">superscript</csymbol><cn id="A1.T4.2.2.2.m1.1.1.2.cmml" type="integer" xref="A1.T4.2.2.2.m1.1.1.2">10</cn><apply id="A1.T4.2.2.2.m1.1.1.3.cmml" xref="A1.T4.2.2.2.m1.1.1.3"><minus id="A1.T4.2.2.2.m1.1.1.3.1.cmml" xref="A1.T4.2.2.2.m1.1.1.3"></minus><cn id="A1.T4.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.2.2.2.m1.1.1.3.2">5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.m1.1c">10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.m1.1d">10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.4.4.3">Batch size</th>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.1"><math alttext="256" class="ltx_Math" display="inline" id="A1.T4.3.3.1.m1.1"><semantics id="A1.T4.3.3.1.m1.1a"><mn id="A1.T4.3.3.1.m1.1.1" xref="A1.T4.3.3.1.m1.1.1.cmml">256</mn><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.1.m1.1b"><cn id="A1.T4.3.3.1.m1.1.1.cmml" type="integer" xref="A1.T4.3.3.1.m1.1.1">256</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.1.m1.1c">256</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.1.m1.1d">256</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.2"><math alttext="1024" class="ltx_Math" display="inline" id="A1.T4.4.4.2.m1.1"><semantics id="A1.T4.4.4.2.m1.1a"><mn id="A1.T4.4.4.2.m1.1.1" xref="A1.T4.4.4.2.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.2.m1.1b"><cn id="A1.T4.4.4.2.m1.1.1.cmml" type="integer" xref="A1.T4.4.4.2.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.2.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.2.m1.1d">1024</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.6.6.3">Epoch</th>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.1"><math alttext="1" class="ltx_Math" display="inline" id="A1.T4.5.5.1.m1.1"><semantics id="A1.T4.5.5.1.m1.1a"><mn id="A1.T4.5.5.1.m1.1.1" xref="A1.T4.5.5.1.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.1.m1.1b"><cn id="A1.T4.5.5.1.m1.1.1.cmml" type="integer" xref="A1.T4.5.5.1.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.1.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.1.m1.1d">1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.2"><math alttext="1" class="ltx_Math" display="inline" id="A1.T4.6.6.2.m1.1"><semantics id="A1.T4.6.6.2.m1.1a"><mn id="A1.T4.6.6.2.m1.1.1" xref="A1.T4.6.6.2.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.2.m1.1b"><cn id="A1.T4.6.6.2.m1.1.1.cmml" type="integer" xref="A1.T4.6.6.2.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.2.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.2.m1.1d">1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.8.8.3">Warmup steps</th>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.1"><math alttext="100" class="ltx_Math" display="inline" id="A1.T4.7.7.1.m1.1"><semantics id="A1.T4.7.7.1.m1.1a"><mn id="A1.T4.7.7.1.m1.1.1" xref="A1.T4.7.7.1.m1.1.1.cmml">100</mn><annotation-xml encoding="MathML-Content" id="A1.T4.7.7.1.m1.1b"><cn id="A1.T4.7.7.1.m1.1.1.cmml" type="integer" xref="A1.T4.7.7.1.m1.1.1">100</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.7.7.1.m1.1c">100</annotation><annotation encoding="application/x-llamapun" id="A1.T4.7.7.1.m1.1d">100</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.2"><math alttext="100" class="ltx_Math" display="inline" id="A1.T4.8.8.2.m1.1"><semantics id="A1.T4.8.8.2.m1.1a"><mn id="A1.T4.8.8.2.m1.1.1" xref="A1.T4.8.8.2.m1.1.1.cmml">100</mn><annotation-xml encoding="MathML-Content" id="A1.T4.8.8.2.m1.1b"><cn id="A1.T4.8.8.2.m1.1.1.cmml" type="integer" xref="A1.T4.8.8.2.m1.1.1">100</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.8.8.2.m1.1c">100</annotation><annotation encoding="application/x-llamapun" id="A1.T4.8.8.2.m1.1d">100</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.10.10.3"># Training samples</th>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.1"><math alttext="125k" class="ltx_Math" display="inline" id="A1.T4.9.9.1.m1.1"><semantics id="A1.T4.9.9.1.m1.1a"><mrow id="A1.T4.9.9.1.m1.1.1" xref="A1.T4.9.9.1.m1.1.1.cmml"><mn id="A1.T4.9.9.1.m1.1.1.2" xref="A1.T4.9.9.1.m1.1.1.2.cmml">125</mn><mo id="A1.T4.9.9.1.m1.1.1.1" xref="A1.T4.9.9.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.9.9.1.m1.1.1.3" xref="A1.T4.9.9.1.m1.1.1.3.cmml">k</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.9.9.1.m1.1b"><apply id="A1.T4.9.9.1.m1.1.1.cmml" xref="A1.T4.9.9.1.m1.1.1"><times id="A1.T4.9.9.1.m1.1.1.1.cmml" xref="A1.T4.9.9.1.m1.1.1.1"></times><cn id="A1.T4.9.9.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.9.9.1.m1.1.1.2">125</cn><ci id="A1.T4.9.9.1.m1.1.1.3.cmml" xref="A1.T4.9.9.1.m1.1.1.3">𝑘</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.9.9.1.m1.1c">125k</annotation><annotation encoding="application/x-llamapun" id="A1.T4.9.9.1.m1.1d">125 italic_k</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.2"><math alttext="660k" class="ltx_Math" display="inline" id="A1.T4.10.10.2.m1.1"><semantics id="A1.T4.10.10.2.m1.1a"><mrow id="A1.T4.10.10.2.m1.1.1" xref="A1.T4.10.10.2.m1.1.1.cmml"><mn id="A1.T4.10.10.2.m1.1.1.2" xref="A1.T4.10.10.2.m1.1.1.2.cmml">660</mn><mo id="A1.T4.10.10.2.m1.1.1.1" xref="A1.T4.10.10.2.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.10.10.2.m1.1.1.3" xref="A1.T4.10.10.2.m1.1.1.3.cmml">k</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.10.10.2.m1.1b"><apply id="A1.T4.10.10.2.m1.1.1.cmml" xref="A1.T4.10.10.2.m1.1.1"><times id="A1.T4.10.10.2.m1.1.1.1.cmml" xref="A1.T4.10.10.2.m1.1.1.1"></times><cn id="A1.T4.10.10.2.m1.1.1.2.cmml" type="integer" xref="A1.T4.10.10.2.m1.1.1.2">660</cn><ci id="A1.T4.10.10.2.m1.1.1.3.cmml" xref="A1.T4.10.10.2.m1.1.1.3">𝑘</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.10.10.2.m1.1c">660k</annotation><annotation encoding="application/x-llamapun" id="A1.T4.10.10.2.m1.1d">660 italic_k</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.12.12.3"># Retrieved passages</th>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.1"><math alttext="20" class="ltx_Math" display="inline" id="A1.T4.11.11.1.m1.1"><semantics id="A1.T4.11.11.1.m1.1a"><mn id="A1.T4.11.11.1.m1.1.1" xref="A1.T4.11.11.1.m1.1.1.cmml">20</mn><annotation-xml encoding="MathML-Content" id="A1.T4.11.11.1.m1.1b"><cn id="A1.T4.11.11.1.m1.1.1.cmml" type="integer" xref="A1.T4.11.11.1.m1.1.1">20</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.11.11.1.m1.1c">20</annotation><annotation encoding="application/x-llamapun" id="A1.T4.11.11.1.m1.1d">20</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.12.12.2"><math alttext="20" class="ltx_Math" display="inline" id="A1.T4.12.12.2.m1.1"><semantics id="A1.T4.12.12.2.m1.1a"><mn id="A1.T4.12.12.2.m1.1.1" xref="A1.T4.12.12.2.m1.1.1.cmml">20</mn><annotation-xml encoding="MathML-Content" id="A1.T4.12.12.2.m1.1b"><cn id="A1.T4.12.12.2.m1.1.1.cmml" type="integer" xref="A1.T4.12.12.2.m1.1.1">20</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.12.12.2.m1.1c">20</annotation><annotation encoding="application/x-llamapun" id="A1.T4.12.12.2.m1.1d">20</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T4.14.14.3">Max sequence length</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.13.13.1"><math alttext="3072" class="ltx_Math" display="inline" id="A1.T4.13.13.1.m1.1"><semantics id="A1.T4.13.13.1.m1.1a"><mn id="A1.T4.13.13.1.m1.1.1" xref="A1.T4.13.13.1.m1.1.1.cmml">3072</mn><annotation-xml encoding="MathML-Content" id="A1.T4.13.13.1.m1.1b"><cn id="A1.T4.13.13.1.m1.1.1.cmml" type="integer" xref="A1.T4.13.13.1.m1.1.1">3072</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.13.13.1.m1.1c">3072</annotation><annotation encoding="application/x-llamapun" id="A1.T4.13.13.1.m1.1d">3072</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.14.14.2"><math alttext="3072" class="ltx_Math" display="inline" id="A1.T4.14.14.2.m1.1"><semantics id="A1.T4.14.14.2.m1.1a"><mn id="A1.T4.14.14.2.m1.1.1" xref="A1.T4.14.14.2.m1.1.1.cmml">3072</mn><annotation-xml encoding="MathML-Content" id="A1.T4.14.14.2.m1.1b"><cn id="A1.T4.14.14.2.m1.1.1.cmml" type="integer" xref="A1.T4.14.14.2.m1.1.1">3072</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.14.14.2.m1.1c">3072</annotation><annotation encoding="application/x-llamapun" id="A1.T4.14.14.2.m1.1d">3072</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the training of the Chain-of-Retrieval Augmented Generation (CoRAG) model.  It shows the different settings for two sets of experiments: one for multi-hop question answering (QA) tasks and another for the KILT benchmark, a diverse set of knowledge-intensive tasks. For each experiment, it specifies the model initialization, learning rate, batch size, number of training epochs, number of warmup steps, and the total number of training samples and retrieved passages used. The maximum sequence length for each experiment is also specified.
> <details>
> <summary>read the caption</summary>
> Table 4: Hyperparameters for training CoRAG.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T5.13.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T5.13.13.14.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T5.13.13.14.1.1" rowspan="2"><span class="ltx_text" id="A2.T5.13.13.14.1.1.1">System</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A2.T5.13.13.14.1.2">Entity Linking</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T5.13.13.14.1.3">Slot Filling</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A2.T5.13.13.14.1.4">Open QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T5.13.13.14.1.5">Fact</th>
</tr>
<tr class="ltx_tr" id="A2.T5.13.13.15.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.1">AIDA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.2">WnWi</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.3">WnCw</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.4">T-REx</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.5">zsRE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.6">NQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.7">HoPo</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.8">TQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T5.13.13.15.2.9">FEVER</th>
</tr>
<tr class="ltx_tr" id="A2.T5.13.13.16.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="10" id="A2.T5.13.13.16.3.1">CoRAG-8B (Ours)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.3.3.3.3">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="A2.T5.1.1.1.1.m1.1"><semantics id="A2.T5.1.1.1.1.m1.1a"><mo id="A2.T5.1.1.1.1.m1.1.1" xref="A2.T5.1.1.1.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="A2.T5.1.1.1.1.m1.1b"><ci id="A2.T5.1.1.1.1.m1.1.1.cmml" xref="A2.T5.1.1.1.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.1.1.1.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="A2.T5.1.1.1.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="A2.T5.2.2.2.2.m2.1"><semantics id="A2.T5.2.2.2.2.m2.1a"><mi id="A2.T5.2.2.2.2.m2.1.1" xref="A2.T5.2.2.2.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="A2.T5.2.2.2.2.m2.1b"><ci id="A2.T5.2.2.2.2.m2.1.1.cmml" xref="A2.T5.2.2.2.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.2.2.2.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="A2.T5.2.2.2.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="1" class="ltx_Math" display="inline" id="A2.T5.3.3.3.3.m3.1"><semantics id="A2.T5.3.3.3.3.m3.1a"><mn id="A2.T5.3.3.3.3.m3.1.1" xref="A2.T5.3.3.3.3.m3.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A2.T5.3.3.3.3.m3.1b"><cn id="A2.T5.3.3.3.3.m3.1.1.cmml" type="integer" xref="A2.T5.3.3.3.3.m3.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.3.3.3.3.m3.1c">1</annotation><annotation encoding="application/x-llamapun" id="A2.T5.3.3.3.3.m3.1d">1</annotation></semantics></math>, greedy</th>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.4">90.4</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.5">86.0</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.6"><span class="ltx_text ltx_font_bold" id="A2.T5.3.3.3.6.1">76.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.7"><span class="ltx_text ltx_font_bold" id="A2.T5.3.3.3.7.1">87.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.8">82.1</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.9">62.5</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.10">56.4</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.11">88.4</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.3.3.12">91.4</td>
</tr>
<tr class="ltx_tr" id="A2.T5.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.6.6.6.3">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="A2.T5.4.4.4.1.m1.1"><semantics id="A2.T5.4.4.4.1.m1.1a"><mo id="A2.T5.4.4.4.1.m1.1.1" xref="A2.T5.4.4.4.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="A2.T5.4.4.4.1.m1.1b"><ci id="A2.T5.4.4.4.1.m1.1.1.cmml" xref="A2.T5.4.4.4.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.4.4.4.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="A2.T5.4.4.4.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="A2.T5.5.5.5.2.m2.1"><semantics id="A2.T5.5.5.5.2.m2.1a"><mi id="A2.T5.5.5.5.2.m2.1.1" xref="A2.T5.5.5.5.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="A2.T5.5.5.5.2.m2.1b"><ci id="A2.T5.5.5.5.2.m2.1.1.cmml" xref="A2.T5.5.5.5.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.5.5.5.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="A2.T5.5.5.5.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="6" class="ltx_Math" display="inline" id="A2.T5.6.6.6.3.m3.1"><semantics id="A2.T5.6.6.6.3.m3.1a"><mn id="A2.T5.6.6.6.3.m3.1.1" xref="A2.T5.6.6.6.3.m3.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="A2.T5.6.6.6.3.m3.1b"><cn id="A2.T5.6.6.6.3.m3.1.1.cmml" type="integer" xref="A2.T5.6.6.6.3.m3.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.6.6.6.3.m3.1c">6</annotation><annotation encoding="application/x-llamapun" id="A2.T5.6.6.6.3.m3.1d">6</annotation></semantics></math>, greedy</th>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.4"><span class="ltx_text ltx_font_bold" id="A2.T5.6.6.6.4.1">92.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.5"><span class="ltx_text ltx_font_bold" id="A2.T5.6.6.6.5.1">87.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.6">75.8</td>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.7">86.6</td>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.8"><span class="ltx_text ltx_font_bold" id="A2.T5.6.6.6.8.1">83.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.9"><span class="ltx_text ltx_font_bold" id="A2.T5.6.6.6.9.1">63.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.10">59.1</td>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.11">88.6</td>
<td class="ltx_td ltx_align_center" id="A2.T5.6.6.6.12">93.8</td>
</tr>
<tr class="ltx_tr" id="A2.T5.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.10.10.10.4">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="A2.T5.7.7.7.1.m1.1"><semantics id="A2.T5.7.7.7.1.m1.1a"><mo id="A2.T5.7.7.7.1.m1.1.1" xref="A2.T5.7.7.7.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="A2.T5.7.7.7.1.m1.1b"><ci id="A2.T5.7.7.7.1.m1.1.1.cmml" xref="A2.T5.7.7.7.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.7.7.7.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="A2.T5.7.7.7.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="A2.T5.8.8.8.2.m2.1"><semantics id="A2.T5.8.8.8.2.m2.1a"><mi id="A2.T5.8.8.8.2.m2.1.1" xref="A2.T5.8.8.8.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="A2.T5.8.8.8.2.m2.1b"><ci id="A2.T5.8.8.8.2.m2.1.1.cmml" xref="A2.T5.8.8.8.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.8.8.8.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="A2.T5.8.8.8.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="6" class="ltx_Math" display="inline" id="A2.T5.9.9.9.3.m3.1"><semantics id="A2.T5.9.9.9.3.m3.1a"><mn id="A2.T5.9.9.9.3.m3.1.1" xref="A2.T5.9.9.9.3.m3.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="A2.T5.9.9.9.3.m3.1b"><cn id="A2.T5.9.9.9.3.m3.1.1.cmml" type="integer" xref="A2.T5.9.9.9.3.m3.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.9.9.9.3.m3.1c">6</annotation><annotation encoding="application/x-llamapun" id="A2.T5.9.9.9.3.m3.1d">6</annotation></semantics></math>, best-of-<math alttext="4" class="ltx_Math" display="inline" id="A2.T5.10.10.10.4.m4.1"><semantics id="A2.T5.10.10.10.4.m4.1a"><mn id="A2.T5.10.10.10.4.m4.1.1" xref="A2.T5.10.10.10.4.m4.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="A2.T5.10.10.10.4.m4.1b"><cn id="A2.T5.10.10.10.4.m4.1.1.cmml" type="integer" xref="A2.T5.10.10.10.4.m4.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.10.10.10.4.m4.1c">4</annotation><annotation encoding="application/x-llamapun" id="A2.T5.10.10.10.4.m4.1d">4</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.5">92.5</td>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.6"><span class="ltx_text ltx_font_bold" id="A2.T5.10.10.10.6.1">87.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.7">75.8</td>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.8">86.3</td>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.9">83.5</td>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.10">62.6</td>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.11">59.6</td>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.12">88.7</td>
<td class="ltx_td ltx_align_center" id="A2.T5.10.10.10.13"><span class="ltx_text ltx_font_bold" id="A2.T5.10.10.10.13.1">93.9</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T5.13.13.13.3">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="A2.T5.11.11.11.1.m1.1"><semantics id="A2.T5.11.11.11.1.m1.1a"><mo id="A2.T5.11.11.11.1.m1.1.1" xref="A2.T5.11.11.11.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="A2.T5.11.11.11.1.m1.1b"><ci id="A2.T5.11.11.11.1.m1.1.1.cmml" xref="A2.T5.11.11.11.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.11.11.11.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="A2.T5.11.11.11.1.m1.1d">▷</annotation></semantics></math> <math alttext="L" class="ltx_Math" display="inline" id="A2.T5.12.12.12.2.m2.1"><semantics id="A2.T5.12.12.12.2.m2.1a"><mi id="A2.T5.12.12.12.2.m2.1.1" xref="A2.T5.12.12.12.2.m2.1.1.cmml">L</mi><annotation-xml encoding="MathML-Content" id="A2.T5.12.12.12.2.m2.1b"><ci id="A2.T5.12.12.12.2.m2.1.1.cmml" xref="A2.T5.12.12.12.2.m2.1.1">𝐿</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.12.12.12.2.m2.1c">L</annotation><annotation encoding="application/x-llamapun" id="A2.T5.12.12.12.2.m2.1d">italic_L</annotation></semantics></math>=<math alttext="6" class="ltx_Math" display="inline" id="A2.T5.13.13.13.3.m3.1"><semantics id="A2.T5.13.13.13.3.m3.1a"><mn id="A2.T5.13.13.13.3.m3.1.1" xref="A2.T5.13.13.13.3.m3.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="A2.T5.13.13.13.3.m3.1b"><cn id="A2.T5.13.13.13.3.m3.1.1.cmml" type="integer" xref="A2.T5.13.13.13.3.m3.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.13.13.13.3.m3.1c">6</annotation><annotation encoding="application/x-llamapun" id="A2.T5.13.13.13.3.m3.1d">6</annotation></semantics></math>, tree search</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.4">91.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.5">86.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.6">75.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.7">86.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.8">83.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.9">62.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.10"><span class="ltx_text ltx_font_bold" id="A2.T5.13.13.13.10.1">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.11"><span class="ltx_text ltx_font_bold" id="A2.T5.13.13.13.11.1">88.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.13.13.13.12"><span class="ltx_text ltx_font_bold" id="A2.T5.13.13.13.12.1">93.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents the performance of the CoRAG model on the hidden test set of the KILT benchmark.  KILT is a comprehensive benchmark for knowledge-intensive language tasks, encompassing various downstream tasks like entity linking, slot filling, and open QA. The table shows the model's performance on each task compared against several strong baselines. This allows for a comparison of CoRAG's performance across a diverse set of knowledge-intensive tasks, demonstrating its generalizability.
> <details>
> <summary>read the caption</summary>
> Table 5: Downstream results on the public validation set of the KILT benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.4.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T6.4.2.3.1.1" rowspan="2"><span class="ltx_text" id="A2.T6.4.2.3.1.1.1">System</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A2.T6.4.2.3.1.2">Entity Linking</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T6.4.2.3.1.3">Slot Filling</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A2.T6.4.2.3.1.4">Open QA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.4.2.3.1.5">Fact</th>
</tr>
<tr class="ltx_tr" id="A2.T6.4.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.1">AIDA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.2">WnWi</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.3">WnCw</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.4">T-REx</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.5">zsRE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.6">NQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.7">HoPo</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.8">TQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T6.4.2.4.2.9">FEVER</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.3.1.1.1">Fine-tuned E5<math alttext="{}_{\text{mistral}}" class="ltx_Math" display="inline" id="A2.T6.3.1.1.1.m1.1"><semantics id="A2.T6.3.1.1.1.m1.1a"><msub id="A2.T6.3.1.1.1.m1.1.1" xref="A2.T6.3.1.1.1.m1.1.1.cmml"><mi id="A2.T6.3.1.1.1.m1.1.1a" xref="A2.T6.3.1.1.1.m1.1.1.cmml"></mi><mtext id="A2.T6.3.1.1.1.m1.1.1.1" xref="A2.T6.3.1.1.1.m1.1.1.1a.cmml">mistral</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T6.3.1.1.1.m1.1b"><apply id="A2.T6.3.1.1.1.m1.1.1.cmml" xref="A2.T6.3.1.1.1.m1.1.1"><ci id="A2.T6.3.1.1.1.m1.1.1.1a.cmml" xref="A2.T6.3.1.1.1.m1.1.1.1"><mtext id="A2.T6.3.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A2.T6.3.1.1.1.m1.1.1.1">mistral</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.1.1.1.m1.1c">{}_{\text{mistral}}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.1.1.1.m1.1d">start_FLOATSUBSCRIPT mistral end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.2">92.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.3">86.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.4">76.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.5">80.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.6">95.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.7">77.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.8">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.9">78.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.1.1.10">90.9</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T6.4.2.2.1">    <math alttext="\triangleright" class="ltx_Math" display="inline" id="A2.T6.4.2.2.1.m1.1"><semantics id="A2.T6.4.2.2.1.m1.1a"><mo id="A2.T6.4.2.2.1.m1.1.1" xref="A2.T6.4.2.2.1.m1.1.1.cmml">▷</mo><annotation-xml encoding="MathML-Content" id="A2.T6.4.2.2.1.m1.1b"><ci id="A2.T6.4.2.2.1.m1.1.1.cmml" xref="A2.T6.4.2.2.1.m1.1.1">▷</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.2.2.1.m1.1c">\triangleright</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.2.2.1.m1.1d">▷</annotation></semantics></math> w/ re-ranking</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.2">93.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.3">88.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.4">77.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.5">83.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.6">97.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.7">78.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.8">78.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.9">81.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.2.2.10">92.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents the results of retrieval performance, specifically R-Precision scores, on the public validation subset of the KILT benchmark.  R-Precision measures the proportion of relevant documents retrieved among the top retrieved documents. The experiment used a fine-tuned retriever to get the top 100 candidates, which were then used as input for re-ranking. The table breaks down the R-Precision scores across different tasks within the KILT benchmark, including entity linking (AIDA, WnWi, WnCw), slot filling (T-Rex, zsRE), and open QA tasks (NQ, HoPo, TQA, FEVER).
> <details>
> <summary>read the caption</summary>
> Table 6: Retrieval results (R-Precision) on the public validation set of the KILT benchmark. For re-ranking, we use the top-100100100100 candidates from the fine-tuned retriever as input.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.1.1.1">
<span class="ltx_p" id="A3.T7.1.1.1.1.1.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.1.1.1.1">Dataset</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.1.2.1">
<span class="ltx_p" id="A3.T7.1.1.1.1.2.1.1" style="width:303.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.2.1.1.1">Task Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.2.1.1.1">
<span class="ltx_p" id="A3.T7.1.1.2.1.1.1.1" style="width:130.1pt;">HotpotQA / 2WikiMultihopQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.2.1.2.1">
<span class="ltx_p" id="A3.T7.1.1.2.1.2.1.1" style="width:303.5pt;">answer multi-hop questions</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.3.2.1.1">
<span class="ltx_p" id="A3.T7.1.1.3.2.1.1.1" style="width:130.1pt;">NQ</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.3.2.2.1">
<span class="ltx_p" id="A3.T7.1.1.3.2.2.1.1" style="width:303.5pt;">answer natural questions from Google search</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.4.3.1.1">
<span class="ltx_p" id="A3.T7.1.1.4.3.1.1.1" style="width:130.1pt;">AidaYago 2 / WnWi / WnCw / Blink</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.4.3.2.1">
<span class="ltx_p" id="A3.T7.1.1.4.3.2.1.1" style="width:303.5pt;">link the mention surrounded by [START_ENT] and [END_ENT] to the title of the correct Wikipedia page</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.5.4.1.1">
<span class="ltx_p" id="A3.T7.1.1.5.4.1.1.1" style="width:130.1pt;">FEVER</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.5.4.2.1">
<span class="ltx_p" id="A3.T7.1.1.5.4.2.1.1" style="width:303.5pt;">verify if the claim is supported or refuted</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.6.5.1.1">
<span class="ltx_p" id="A3.T7.1.1.6.5.1.1.1" style="width:130.1pt;">T-REx / Zero-Shot RE</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.6.5.2.1">
<span class="ltx_p" id="A3.T7.1.1.6.5.2.1.1" style="width:303.5pt;">given head entity and relation separated by [SEP], find the correct tail entity, return the title of its Wikipedia page</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.7.6.1.1">
<span class="ltx_p" id="A3.T7.1.1.7.6.1.1.1" style="width:130.1pt;">Trivia QA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.7.6.2.1">
<span class="ltx_p" id="A3.T7.1.1.7.6.2.1.1" style="width:303.5pt;">answer trivia questions</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T7.1.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.8.7.1.1">
<span class="ltx_p" id="A3.T7.1.1.8.7.1.1.1" style="width:130.1pt;">MuSiQue / Bamboogle</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T7.1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.8.7.2.1">
<span class="ltx_p" id="A3.T7.1.1.8.7.2.1.1" style="width:303.5pt;">answer multi-hop questions</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table provides detailed descriptions of the various tasks involved in the different datasets used for evaluating the model.  For each dataset (HotpotQA, NQ, AidaYago, FEVER, T-REX, TriviaQA, MuSiQue, Bamboogle), it specifies the nature of the tasks, such as answering multi-hop questions, verifying claims, or linking entities, and offers a brief explanation for better understanding.
> <details>
> <summary>read the caption</summary>
> Table 7: Task descriptions for each dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T8.1.1.1.1">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T8.1.1.1.1.1">
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.1.1.1.1.1">
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.1.1.1.1.1.1">Query:</span> What wrestling team is Mathew Thomas Rehwoldt a part of?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.2.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.T8.1.1.1.1.1.1.2.1.1">RAG without Chain-of-Retrieval</em></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.3.1">Final Answer: <span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.1.1.1.3.1.1" style="color:#FF0000;">WWE<span class="ltx_text ltx_font_medium" id="A3.T8.1.1.1.1.1.1.3.1.1.1"> ✗</span></span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.4.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.T8.1.1.1.1.1.1.4.1.1">CoRAG (Ours)</em></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.5.1">Sub-query 1: What is Mathew Thomas Rehwoldt’s profession?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.6.1">Sub-answer 1: No relevant information found.</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.7.1">Sub-query 2: What is Mathew Thomas Rehwoldt’s name in the wrestling industry?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.8.1">Sub-answer 2: Aiden English</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.9.1">Sub-query 3: What wrestling team is Aiden English a part of?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.10.1">Sub-answer 3: The Vaudevillains</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.1.1.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.1.1.1.1.11.1">Final Answer: <span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.1.1.1.11.1.1" style="color:#0000FF;">The Vaudevillains<span class="ltx_text ltx_font_medium" id="A3.T8.1.1.1.1.1.1.11.1.1.1"> ✓</span></span>
</td>
</tr>
</table>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T8.1.1.2.1">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A3.T8.1.1.2.1.1">
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.1.2.1.1.1">
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="A3.T8.1.1.2.1.1.1.1.1.1">Query:</span> How many months apart are Johan Mjällby and Neil Lennon in age?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.2.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.T8.1.1.2.1.1.1.2.1.1">RAG without Chain-of-Retrieval</em></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.3.1">Final Answer: <span class="ltx_text ltx_font_bold" id="A3.T8.1.1.2.1.1.1.3.1.1" style="color:#FF0000;">two months<span class="ltx_text ltx_font_medium" id="A3.T8.1.1.2.1.1.1.3.1.1.1"> ✗</span></span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.4.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.T8.1.1.2.1.1.1.4.1.1">CoRAG (Ours)</em></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.5.1">Sub-query 1: What is Johan Mjällby’s birthdate?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.6.1">Sub-answer 1: 9 February 1971</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.7.1">Sub-query 2: What is Neil Lennon’s birthdate?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.8.1">Sub-answer 2: 25 June 1971</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.9.1">Sub-query 3: What is the difference in months between 9 February 1971 and 25 June 1971?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.10.1">Sub-answer 3: 4 months</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.1.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.2.1.1.1.11.1">Final Answer: <span class="ltx_text ltx_font_bold" id="A3.T8.1.1.2.1.1.1.11.1.1" style="color:#0000FF;">4<span class="ltx_text ltx_font_medium" id="A3.T8.1.1.2.1.1.1.11.1.1.1"> ✓</span></span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A3.T8.1.1.3.2.1">
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.1.3.2.1.1">
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.1.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.1.1.1.1" style="width:477.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.3.2.1.1.1.1.1.1.1">Query:</span> Thomas Parker Sanborn was a model for the protagonist in the only novel by a poet originally from what country?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.2.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.2.1.1.1" style="width:477.0pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.T8.1.1.3.2.1.1.2.1.1.1.1">RAG without Chain-of-Retrieval</em></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.3.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.3.1.1.1" style="width:477.0pt;">Final Answer: <span class="ltx_text ltx_font_bold" id="A3.T8.1.1.3.2.1.1.3.1.1.1.1" style="color:#FF0000;">Italian<span class="ltx_text ltx_font_medium" id="A3.T8.1.1.3.2.1.1.3.1.1.1.1.1"> ✗</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.4.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.4.1.1.1" style="width:477.0pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.T8.1.1.3.2.1.1.4.1.1.1.1">CoRAG (Ours)</em></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.5.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.5.1.1.1" style="width:477.0pt;">Sub-query 1: What country is the poet originally from?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.6.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.6.1.1.1" style="width:477.0pt;">Sub-answer 1: Hungary, Romania, Switzerland, China, Ukraine, France, Turkey.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.7.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.7.1.1.1" style="width:477.0pt;">Sub-query 2: What is the name of the poet who wrote the only novel?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.8.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.8.1.1.1" style="width:477.0pt;">Sub-answer 2: Emily Brontë</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.9.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.9.1.1.1" style="width:477.0pt;">Sub-query 3: What country is the poet who wrote the only novel originally from?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.10.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.10.1.1.1" style="width:477.0pt;">Sub-answer 3: United States</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.11.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.11.1.1.1" style="width:477.0pt;">Sub-query 4: What is the name of the poet who wrote the only novel that Thomas Parker Sanborn was a model for?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.12.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.12.1.1.1" style="width:477.0pt;">Sub-answer 4: George Santayana</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.13.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.13.1.1.1" style="width:477.0pt;">Sub-query 5: What poet wrote the only novel that Thomas Parker Sanborn was a model for?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.14.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.14.1.1.1" style="width:477.0pt;">Sub-answer 5: George Santayana</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.15">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.15.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.15.1.1.1" style="width:477.0pt;">Sub-query 6: What country is the poet George Santayana originally from?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.16">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.16.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.16.1.1.1" style="width:477.0pt;">Sub-answer 6: Spain.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.3.2.1.1.17">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.T8.1.1.3.2.1.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.3.2.1.1.17.1.1">
<span class="ltx_p" id="A3.T8.1.1.3.2.1.1.17.1.1.1" style="width:477.0pt;">Final Answer: <span class="ltx_text ltx_font_bold" id="A3.T8.1.1.3.2.1.1.17.1.1.1.1" style="color:#0000FF;">Spain<span class="ltx_text ltx_font_medium" id="A3.T8.1.1.3.2.1.1.17.1.1.1.1.1"> ✓</span></span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="A3.T8.1.1.4.3.1">
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.1.4.3.1.1">
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="A3.T8.1.1.4.3.1.1.1.1.1">Query:</span> Which university is further North, University of New Hampshire or Stony Brook University?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.2.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.T8.1.1.4.3.1.1.2.1.1">RAG without Chain-of-Retrieval</em></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.3.1">Final Answer: <span class="ltx_text ltx_font_bold" id="A3.T8.1.1.4.3.1.1.3.1.1" style="color:#FF0000;">University of New Hampshire<span class="ltx_text ltx_font_medium" id="A3.T8.1.1.4.3.1.1.3.1.1.1"> ✗</span></span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.4.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="A3.T8.1.1.4.3.1.1.4.1.1">CoRAG (Ours)</em></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.5.1">Sub-query 1: What is the location of the University of New Hampshire?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.6.1">Sub-answer 1: Durham, New Hampshire.</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.7.1">Sub-query 2: What is the location of Stony Brook University?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.8.1">Sub-answer 2: Stony Brook, NY.</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.9.1">Sub-query 3: What is the latitude of Durham, New Hampshire?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.10.1">Sub-answer 3: No relevant information found.</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.11.1">Sub-query 4: What is the latitude of Stony Brook, NY?</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.12.1">Sub-answer 4: No relevant information found.</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.3.1.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T8.1.1.4.3.1.1.13.1">Final Answer: <span class="ltx_text ltx_font_bold" id="A3.T8.1.1.4.3.1.1.13.1.1" style="color:#FF0000;">University of New Hampshire<span class="ltx_text ltx_font_medium" id="A3.T8.1.1.4.3.1.1.13.1.1.1"> ✗</span></span>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents four examples from the HotpotQA validation dataset to illustrate how the Chain-of-Retrieval Augmented Generation (CoRAG) model improves performance compared to a standard RAG model. Each example shows the original query, the final answer generated by the standard RAG, and the intermediate steps and final answer provided by CoRAG.  Correct answers are marked in blue, incorrect answers in red.  For brevity, the retrieved documents at each step are not shown.
> <details>
> <summary>read the caption</summary>
> Table 8: Examples from the validation set of the HotpotQA dataset. For conciseness, all retrieved documents at each step are omitted. Correct answers are highlighted in blue, while incorrect answers are highlighted in red.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.14342/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14342/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}