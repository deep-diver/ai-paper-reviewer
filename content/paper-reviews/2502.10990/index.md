---
title: "FinMTEB: Finance Massive Text Embedding Benchmark"
summary: "FinMTEB: A new benchmark reveals that general-purpose embedding models struggle in the finance domain; domain-specific models excel, and surprisingly, simple BoW outperforms sophisticated models on ce..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.10990 {{< /keyword >}}
{{< keyword icon="writer" >}} Yixuan Tang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.10990" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.10990" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.10990/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing embedding model benchmarks often overlook the unique challenges of the financial domain.  Models trained on general-purpose datasets may not effectively capture the nuances of financial language, which often involves specialized terminology, complex numerical relationships, and temporal sensitivity.  This paper highlights the need for domain-specific evaluation and addresses the limitation by presenting a benchmark specialized for the financial domain. 



To tackle these issues, the researchers introduce FinMTEB, a finance-specific benchmark encompassing diverse datasets and tasks. They also develop a domain-adapted model, Fin-E5.  Their evaluation reveals that domain-adapted models consistently outperform general-purpose ones.  Surprisingly, a basic Bag-of-Words (BoW) model outperforms sophisticated dense embeddings in specific tasks, indicating limitations of current techniques in handling financial text semantics. FinMTEB establishes a robust evaluation framework for financial NLP, offering valuable insights for developing effective financial embedding models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} General-purpose embedding models perform poorly on financial tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Domain-adapted models significantly outperform general-purpose models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Surprisingly, a simple Bag-of-Words model outperforms complex embeddings in some financial tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for **financial NLP researchers** because it introduces FinMTEB, the first comprehensive benchmark for evaluating embedding models in finance.  It addresses the **lack of domain-specific evaluation** in the field and provides a standard for comparing models effectively.  The development of Fin-E5, a domain-adapted model, and the surprising performance of BoW demonstrate limitations in current models and **suggest new avenues for model development**.

------
#### Visual Insights



![](https://arxiv.org/html/2502.10990/x1.png)

> 🔼 This word cloud shows the most frequent terms present in the training data used to develop the Fin-E5 model.  The size of each word reflects its frequency, illustrating the prevalence of various financial concepts within the training dataset.  This visualization helps to highlight the domain-specific vocabulary learned by Fin-E5, illustrating its focus on finance-related terms and concepts.
> <details>
> <summary>read the caption</summary>
> Figure 1: Word cloud visualization of Fin-E5’s training data, contain common financial terms.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.2.1">Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="7" id="S5.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.3.1">Tasks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.4.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.2.1.1">STS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.2.2.1">Retrieval</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.2.3.1">Class.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.2.4.1">Cluster.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.2.5.1">Rerank.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.2.6.1">PairClass.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.2.7.1">Summ.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.1.3.3.1"></th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.1.3.3.2"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.3.3.1">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.3.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.3.4.1">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.3.5"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.3.5.1">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.3.6"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.3.6.1">6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.3.7"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.3.7.1">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.3.8"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.3.8.1">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.3.9"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.3.9.1">3</span></td>
<td class="ltx_td" id="S5.T1.1.1.3.3.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.4.4.1">BOW</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.4.4.2">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4.4.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.4.4.3.1">0.4845</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4.4.4">0.2084</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4.4.5">0.4696</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4.4.6">0.2547</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4.4.7">0.7628</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4.4.8">0.7143</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4.4.9">0.0542</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.4.4.10">0.4212</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S5.T1.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.5.5.1.1">Encoder based Models</span></th>
<td class="ltx_td ltx_border_t" id="S5.T1.1.1.5.5.2"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.6.6.1">BERT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.6.6.2">110M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6.6.3">0.3789</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6.6.4">0.0207</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6.6.5">0.5496</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6.6.6">0.1744</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6.6.7">0.3930</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6.6.8">0.7111</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6.6.9">0.0452</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.6.6.10">0.3247</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.7.7.1">FinBERT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.7.7.2">110M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7.3">0.4198</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7.4">0.1102</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7.5">0.5923</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7.6">0.2833</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7.7">0.6404</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7.8">0.6967</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7.9">0.0417</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7.10">0.3978</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.8.8.1">instructor-base</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.8.8.2">110M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8.3">0.3732</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8.4">0.5772</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8.5">0.6208</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8.6">0.5300</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8.7">0.9734</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8.8">0.6138</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8.9">0.1465</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8.10">0.5479</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.9.9.1">bge-large-en-v1.5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.9.9.2">335M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.9.3">0.3396</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.9.4">0.6463</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.9.5">0.6436</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.9.6">0.5725</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.9.7">0.9825</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.9.8">0.7400</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.9.9">0.2019</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.9.10">0.5895</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.10.10.1">AnglE-BERT</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.10.10.2">335M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.10.3">0.3080</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.10.4">0.5730</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.10.5">0.6439</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.10.6">0.5774</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.10.7">0.9650</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.10.8">0.6891</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.10.9">0.5049</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.10.10">0.6088</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S5.T1.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.11.11.1.1">LLM-based Models</span></th>
<td class="ltx_td ltx_border_t" id="S5.T1.1.1.11.11.2"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.12.12.1">gte-Qwen1.5-7B-instruct</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.12.12.2">7B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.12.12.3">0.3758</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.12.12.4">0.6697</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.12.12.5">0.6438</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.12.12.6">0.5854</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.12.12.7">0.9890</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.12.12.8">0.6998</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.12.12.9">0.2350</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.12.12.10">0.5998</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.13.13.1">Echo</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.13.13.2">7B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.13.13.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.1.1.13.13.3.1">0.4380</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.13.13.4">0.6443</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.13.13.5">0.6525</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.13.13.6">0.5776</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.13.13.7">0.9765</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.13.13.8">0.6261</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.13.13.9">0.4722</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.13.13.10">0.6267</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.14.14.1">bge-en-icl</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.14.14.2">7B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.14.14.3">0.3233</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.14.14.4">0.6789</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.14.14.5">0.6569</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.14.14.6">0.5742</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.14.14.7">0.9898</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.14.14.8">0.6738</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.14.14.9">0.5197</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.14.14.10">0.6309</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.15.15.1">NV-Embed v2</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.15.15.2">7B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.15.15.3">0.3739</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.15.15.4">0.7061</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.15.15.5">0.6393</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.15.15.6">0.6096</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.15.15.7">0.9822</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.15.15.8">0.6043</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.15.15.9">0.5103</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.15.15.10">0.6322</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.16.16.1">e5-mistral-7b-instruct</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.16.16.2">7B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.16.16.3">0.3800</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.16.16.4">0.6749</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.16.16.5">0.6449</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.16.16.6">0.5783</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.16.16.7">0.9875</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.16.16.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.1.1.16.16.8.1">0.7394</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.16.16.9">0.5275</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.16.16.10">0.6475</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S5.T1.1.1.17.17.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.17.17.1.1">Commercial Models</span></th>
<td class="ltx_td ltx_border_t" id="S5.T1.1.1.17.17.2"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.18.18.1">text-embedding-3-small</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.18.18.2">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.18.18.3">0.3254</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.18.18.4">0.6641</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.18.18.5">0.6387</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.18.18.6">0.5802</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.18.18.7">0.9825</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.18.18.8">0.5957</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.18.18.9">0.5085</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.18.18.10">0.6136</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.19.19.1">text-embedding-3-large</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.19.19.2">-</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.19.19.3">0.3615</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.19.19.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.1.1.19.19.4.1">0.7112</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.19.19.5">0.6596</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.19.19.6"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.19.19.6.1">0.6081</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.19.19.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.1.1.19.19.7.1">0.9910</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.19.19.8">0.7309</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.19.19.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.1.1.19.19.9.1">0.5671</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.19.19.10">0.6613</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.20.20.1">voyage-3-large</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.20.20.2">-</th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.20.20.3">0.4145</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.20.20.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.20.20.4.1">0.7463</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.20.20.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.1.1.20.20.5.1">0.6861</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.20.20.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.1.1.20.20.6.1">0.5944</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.20.20.7"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.20.20.7.1">0.9938</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.20.20.8">0.6519</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.20.20.9"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.20.20.9.1">0.6484</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.20.20.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.1.1.20.20.10.1">0.6765</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S5.T1.1.1.21.21.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.21.21.1.1">Finance Adapted LLM-based Models</span></th>
<td class="ltx_td ltx_border_t" id="S5.T1.1.1.21.21.2"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.1">Fin-E5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.2">7B</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.3">0.4342</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.4">0.7105</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.5"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.22.22.5.1">0.7565</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.6">0.5650</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.7">0.9896</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.8"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.22.22.8.1">0.8014</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.9">0.4797</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.22.22.10"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.22.22.10.1">0.6767</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a performance comparison of various embedding models on the Finance Massive Text Embedding Benchmark (FinMTEB).  It evaluates these models across seven distinct tasks: Semantic Textual Similarity (STS), Retrieval, Classification, Clustering, Reranking, Pair Classification, and Summarization.  The table displays the performance of each model on each task, allowing for a comparison of their relative strengths and weaknesses.  The best performing model for each task is highlighted in bold, and the second-best is underlined.  Model sizes (in parameters) are also included to provide context for performance differences.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across different embedding models on FinMTEB benchmark. The evaluation metrics include semantic textual similarity (STS), retrieval, classification (Class.), clustering (Cluster.), reranking (Rerank.), pair classification (PairClass.), and summarization (Summ.). Best results are in bold. The underline represents the second-best performance.
> </details>





### In-depth insights


#### FinMTEB Benchmark
The FinMTEB Benchmark represents a substantial contribution to the field of financial natural language processing (NLP).  Its core strength lies in its **comprehensive nature**, covering diverse financial text types in both English and Chinese across seven distinct tasks. This breadth ensures a more robust evaluation of embedding models, moving beyond the limitations of general-purpose benchmarks which often fail to capture the nuances of financial language.  **FinMTEB's focus on domain-specific datasets**, including annual reports, news articles, and regulatory filings, is particularly valuable.  The inclusion of both Chinese and English datasets significantly expands the scope of applicability and allows for cross-lingual comparisons.  Furthermore, the development and release of the **Fin-E5 model**, a finance-adapted embedding model, provides a valuable resource for researchers and practitioners.  The findings regarding the surprising performance of simple Bag-of-Words models in certain tasks highlight the current limitations of sophisticated dense embeddings in the financial domain and suggest avenues for future research.  Overall, FinMTEB offers a more realistic and challenging evaluation framework that will significantly advance the field of financial NLP.

#### Fin-E5 Model
The research paper introduces Fin-E5, a **finance-adapted text embedding model**, designed to overcome limitations of general-purpose embedding models in financial applications.  Fin-E5's development directly addresses the need for improved handling of domain-specific terminology, temporal sensitivities, and complex numerical relationships prevalent in financial text.  The model's creation is notable for its use of a **persona-based data synthesis method**, generating a diverse range of financial tasks and incorporating different perspectives. This approach enhances the model's ability to capture nuanced financial semantics and adapt to various financial contexts.  The paper emphasizes the importance of **domain adaptation** through the use of Fin-E5, highlighting its consistent outperformance over general-purpose counterparts across multiple financial tasks.  The results demonstrate that Fin-E5 achieves state-of-the-art performance on the Finance Massive Text Embedding Benchmark (FinMTEB), a comprehensive benchmark specifically designed for evaluating financial embedding models.  Overall, Fin-E5 represents a significant advance in finance-specific natural language processing, offering valuable insights for researchers and practitioners working within the financial domain.

#### Domain Adaptation
The concept of domain adaptation is central to the research paper, addressing the challenges of applying general-purpose embedding models to the specialized financial domain.  The authors highlight the **limited correlation between performance on general benchmarks and financial domain-specific tasks**, emphasizing the necessity of adapting models to the unique characteristics of financial text.  This adaptation is crucial due to factors like **domain-specific terminology, temporal sensitivity, and complex numerical relationships**. The paper explores domain adaptation strategies, specifically focusing on the development of a **finance-adapted model (Fin-E5)** using a persona-based data augmentation technique, and demonstrates the effectiveness of these techniques.  Their findings strongly support that domain-adapted models significantly outperform their general-purpose counterparts, underscoring the importance of considering domain-specific needs when developing embedding models for financial natural language processing (NLP) applications.

#### BOW Outperforms
The unexpected finding that a Bag-of-Words (BoW) model outperforms sophisticated dense embedding models in specific financial semantic textual similarity (STS) tasks is a significant result.  **This challenges the prevailing assumption that complex, dense embeddings are always superior**; instead, it suggests that the current dense embedding techniques struggle to capture the nuances of financial language effectively.  The reasons might include: **over-reliance on contextual information which fails to identify core semantic similarities** obscured by boilerplate language and financial jargon prevalent in financial documents; **inability to effectively handle numerical and temporal relationships** key to financial understanding; and/or **limitations in the training data itself which may not sufficiently represent the intricate semantic space** inherent in financial language.  This finding underscores the need for further research into embedding model design and training methods to address these weaknesses, including investigations into how to incorporate better financial domain expertise and potentially explore alternative embedding techniques beyond the dense vector representation paradigm.

#### Future Directions
Future research should **focus on addressing the limitations** of current embedding models in capturing nuanced financial semantics, particularly within the context of complex numerical data and temporal dependencies.  **Developing more robust and comprehensive evaluation frameworks** for specialized financial domains is crucial, moving beyond single-task benchmarks to encompass diverse financial applications.  This includes **exploring new architectural designs** that effectively handle the specific linguistic features and semantic complexities of financial text, including boilerplate language and domain-specific terminology. Investigating the potential of **multimodal approaches** that integrate textual and numerical data sources holds significant promise.  Further research should also explore **cross-lingual financial embedding models**, expanding the scope beyond English and Chinese to support broader financial data analysis.  Finally, **exploring novel domain adaptation techniques** specific to financial text is vital to optimize embedding model performance.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.10990/x2.png)

> 🔼 This figure provides a visual overview of the tasks and datasets included in the FinMTEB benchmark.  It's organized into seven categories representing different natural language processing tasks: Clustering, Reranking, Retrieval, Pair Classification, Classification, Summarization, and Semantic Textual Similarity (STS).  Each task category lists the specific datasets used within FinMTEB for that task, showing the breadth of financial text data types covered by the benchmark (e.g., financial news, annual reports, etc.).  The figure highlights the diversity of tasks and datasets designed to comprehensively evaluate the performance of embedding models in the financial domain. More detailed information on each dataset is available in Appendix A.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of tasks and datasets used in FinMTEB. All the dataset descriptions and examples are provided in the Appendix A.
> </details>



![](https://arxiv.org/html/2502.10990/x3.png)

> 🔼 This figure presents a breakdown of the data used to train the Fin-E5 model.  The left pie chart visualizes the distribution of different personas (e.g., financial analyst, investor, trader) represented in the training data, illustrating the diversity of user perspectives. The right pie chart shows the distribution of various financial tasks (e.g., market analysis, risk assessment, financial planning) covered by the dataset.  Both charts offer insights into the comprehensiveness and balance of the training data, demonstrating its ability to capture the nuances of financial language across various roles and tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution analysis of 5000 randomly sampled training data showing the breakdown of Tasks and Person Types. Left: Persona distribution. Right: Task distribution.
> </details>



![](https://arxiv.org/html/2502.10990/x4.png)

> 🔼 This heatmap visualizes the pairwise semantic similarity between the 64 datasets within the FinMTEB benchmark.  Each cell represents the cosine similarity between the average embeddings of two datasets, calculated using the all-MiniLM-L6-v2 model. Darker blues indicate higher similarity, revealing relationships between datasets with similar semantic content. The figure highlights the semantic diversity of the FinMTEB datasets, showing that many have low similarity scores, demonstrating the benchmark's comprehensive coverage of distinct financial text types.
> <details>
> <summary>read the caption</summary>
> Figure 4: Semantic similarity across all the datasets in FinMTEB benchmark.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.1.1">Dataset Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.2.1">Language</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.1.1.1.3.1">
<span class="ltx_p" id="A1.T2.1.1.1.1.3.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T2.1.1.2.1.1">FINAL <cite class="ltx_cite ltx_citemacro_citep">(Ju et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib22" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T2.1.1.2.1.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T2.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.1.2.1.3.1">
<span class="ltx_p" id="A1.T2.1.1.2.1.3.1.1" style="width:256.1pt;">A dataset designed for discovering financial signals in narrative financial reports.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T2.1.1.3.2.1">FinSTS <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib30" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.1.3.2.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T2.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.1.3.2.3.1">
<span class="ltx_p" id="A1.T2.1.1.3.2.3.1.1" style="width:256.1pt;">A dataset focused on detecting subtle semantic shifts in financial narratives.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T2.1.1.4.3.1">AFQMC <span class="ltx_note ltx_role_footnote" id="footnote6"><sup class="ltx_note_mark">6</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">6</sup><span class="ltx_tag ltx_tag_note">6</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://tianchi.aliyun.com/dataset/106411" title="">https://tianchi.aliyun.com/dataset/106411</a></span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T2.1.1.4.3.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T2.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.1.4.3.3.1">
<span class="ltx_p" id="A1.T2.1.1.4.3.3.1.1" style="width:256.1pt;">A Chinese dataset for customer service question matching in the financial domain.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T2.1.1.5.4.1">BQ-Corpus <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib5" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T2.1.1.5.4.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T2.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.1.5.4.3.1">
<span class="ltx_p" id="A1.T2.1.1.5.4.3.1.1" style="width:256.1pt;">A large-scale Chinese corpus for sentence semantic equivalence identification (SSEI) in the banking domain.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the datasets used for the Semantic Textual Similarity (STS) task in the FinMTEB benchmark.  It shows the dataset name, language (English or Chinese), and a brief description of each dataset's content and purpose within the financial domain.
> <details>
> <summary>read the caption</summary>
> Table 2: Summary of STS Datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.1.1.1.1">
<span class="ltx_p" id="A1.T3.1.1.1.1.1.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.1.1.1.1">Dataset Name</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.1.1.2.1">
<span class="ltx_p" id="A1.T3.1.1.1.1.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.2.1.1.1">Language</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.1.1.3.1">
<span class="ltx_p" id="A1.T3.1.1.1.1.3.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T3.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.2.1.1.1">
<span class="ltx_p" id="A1.T3.1.1.2.1.1.1.1" style="width:142.3pt;">FiQA2018 <cite class="ltx_cite ltx_citemacro_citep">(FiQA, <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib14" title="">2018</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T3.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.2.1.2.1">
<span class="ltx_p" id="A1.T3.1.1.2.1.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T3.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.2.1.3.1">
<span class="ltx_p" id="A1.T3.1.1.2.1.3.1.1" style="width:227.6pt;">Financial opinion mining and question answering dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.3.2.1.1">
<span class="ltx_p" id="A1.T3.1.1.3.2.1.1.1" style="width:142.3pt;">FinanceBench <cite class="ltx_cite ltx_citemacro_citep">(Islam et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib20" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.3.2.2.1">
<span class="ltx_p" id="A1.T3.1.1.3.2.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.3.2.3.1">
<span class="ltx_p" id="A1.T3.1.1.3.2.3.1.1" style="width:227.6pt;">Open book financial question answering dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.4.3.1.1">
<span class="ltx_p" id="A1.T3.1.1.4.3.1.1.1" style="width:142.3pt;">HC3(Finance) <cite class="ltx_cite ltx_citemacro_citep">(Guo et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib18" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.4.3.2.1">
<span class="ltx_p" id="A1.T3.1.1.4.3.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.4.3.3.1">
<span class="ltx_p" id="A1.T3.1.1.4.3.3.1.1" style="width:227.6pt;">A human-ChatGPT comparison corpus in the finance domain.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.5.4.1.1">
<span class="ltx_p" id="A1.T3.1.1.5.4.1.1.1" style="width:142.3pt;">Apple-10K-2022 <span class="ltx_note ltx_role_footnote" id="footnote7"><sup class="ltx_note_mark">7</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">7</sup><span class="ltx_tag ltx_tag_note">7</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://lighthouz.ai/blog/rag-benchmark-finance-apple-10K-2022/" title="">https://lighthouz.ai/blog/rag-benchmark-finance-apple-10K-2022/</a></span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.5.4.2.1">
<span class="ltx_p" id="A1.T3.1.1.5.4.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.5.4.3.1">
<span class="ltx_p" id="A1.T3.1.1.5.4.3.1.1" style="width:227.6pt;">A retrieval-augmented generation (RAG) benchmark for finance applications.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.6.5.1.1">
<span class="ltx_p" id="A1.T3.1.1.6.5.1.1.1" style="width:142.3pt;">FinQA <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib8" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.6.5.2.1">
<span class="ltx_p" id="A1.T3.1.1.6.5.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.6.5.3.1">
<span class="ltx_p" id="A1.T3.1.1.6.5.3.1.1" style="width:227.6pt;">Financial numerical reasoning dataset with structured and unstructured evidence.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.7.6.1.1">
<span class="ltx_p" id="A1.T3.1.1.7.6.1.1.1" style="width:142.3pt;">TAT-QA <cite class="ltx_cite ltx_citemacro_citep">(Zhu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib73" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.7.6.2.1">
<span class="ltx_p" id="A1.T3.1.1.7.6.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.7.6.3.1">
<span class="ltx_p" id="A1.T3.1.1.7.6.3.1.1" style="width:227.6pt;">Question answering benchmark combining tabular and textual content in finance.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.8.7.1.1">
<span class="ltx_p" id="A1.T3.1.1.8.7.1.1.1" style="width:142.3pt;">US Financial News <span class="ltx_note ltx_role_footnote" id="footnote8"><sup class="ltx_note_mark">8</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">8</sup><span class="ltx_tag ltx_tag_note">8</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.kaggle.com/datasets/jeet2016/us-financial-news-articles" title="">https://www.kaggle.com/datasets/jeet2016/us-financial-news-articles</a></span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.8.7.2.1">
<span class="ltx_p" id="A1.T3.1.1.8.7.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.8.7.3.1">
<span class="ltx_p" id="A1.T3.1.1.8.7.3.1.1" style="width:227.6pt;">Finance news articles paired with headlines and stock ticker symbols.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.9.8.1.1">
<span class="ltx_p" id="A1.T3.1.1.9.8.1.1.1" style="width:142.3pt;">TradeTheEvent (Trading Benchmark) <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib72" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.9.8.2.1">
<span class="ltx_p" id="A1.T3.1.1.9.8.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.9.8.3.1">
<span class="ltx_p" id="A1.T3.1.1.9.8.3.1.1" style="width:227.6pt;">Finance news articles paired with headlines and stock ticker symbols.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.10.9.1.1">
<span class="ltx_p" id="A1.T3.1.1.10.9.1.1.1" style="width:142.3pt;">TradeTheEvent (Domain Adaption) <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib72" title="">2021</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.10.9.2.1">
<span class="ltx_p" id="A1.T3.1.1.10.9.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.10.9.3.1">
<span class="ltx_p" id="A1.T3.1.1.10.9.3.1.1" style="width:227.6pt;">Financial terms and explanations dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.11.10.1.1">
<span class="ltx_p" id="A1.T3.1.1.11.10.1.1.1" style="width:142.3pt;">TheGoldman-en</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.11.10.2.1">
<span class="ltx_p" id="A1.T3.1.1.11.10.2.1.1" style="width:42.7pt;">English</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.11.10.3.1">
<span class="ltx_p" id="A1.T3.1.1.11.10.3.1.1" style="width:227.6pt;">English version of the Goldman Sachs Financial Dictionary.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.12.11.1.1">
<span class="ltx_p" id="A1.T3.1.1.12.11.1.1.1" style="width:142.3pt;">FinTruthQA <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib65" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.12.11.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.12.11.2.1">
<span class="ltx_p" id="A1.T3.1.1.12.11.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.12.11.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.12.11.3.1">
<span class="ltx_p" id="A1.T3.1.1.12.11.3.1.1" style="width:227.6pt;">Dataset for evaluating the quality of financial information disclosure.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.13.12.1.1">
<span class="ltx_p" id="A1.T3.1.1.13.12.1.1.1" style="width:142.3pt;">Fin-Eva (Retrieval task) <span class="ltx_note ltx_role_footnote" id="footnote9"><sup class="ltx_note_mark">9</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">9</sup><span class="ltx_tag ltx_tag_note">9</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://github.com/alipay/financial_evaluation_dataset/tree/main" title="">https://github.com/alipay/financial_evaluation_dataset/tree/main</a></span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.13.12.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.13.12.2.1">
<span class="ltx_p" id="A1.T3.1.1.13.12.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.13.12.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.13.12.3.1">
<span class="ltx_p" id="A1.T3.1.1.13.12.3.1.1" style="width:227.6pt;">Financial scenario QA dataset focusing on retrieval tasks.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.14.13.1.1">
<span class="ltx_p" id="A1.T3.1.1.14.13.1.1.1" style="width:142.3pt;">AlphaFin <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib26" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.14.13.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.14.13.2.1">
<span class="ltx_p" id="A1.T3.1.1.14.13.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.14.13.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.14.13.3.1">
<span class="ltx_p" id="A1.T3.1.1.14.13.3.1.1" style="width:227.6pt;">Comprehensive financial dataset including NLI, QA, and stock trend predictions.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.15.14.1.1">
<span class="ltx_p" id="A1.T3.1.1.15.14.1.1.1" style="width:142.3pt;">DISC-FinLLM (Retrieval Part Data) <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib7" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.15.14.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.15.14.2.1">
<span class="ltx_p" id="A1.T3.1.1.15.14.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.15.14.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.15.14.3.1">
<span class="ltx_p" id="A1.T3.1.1.15.14.3.1.1" style="width:227.6pt;">Financial scenario QA dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.16.15.1.1">
<span class="ltx_p" id="A1.T3.1.1.16.15.1.1.1" style="width:142.3pt;">FinQA (from DuEE-fin) <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib35" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.16.15.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.16.15.2.1">
<span class="ltx_p" id="A1.T3.1.1.16.15.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.16.15.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.16.15.3.1">
<span class="ltx_p" id="A1.T3.1.1.16.15.3.1.1" style="width:227.6pt;">Financial news bulletin event quiz dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.17.16.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.17.16.1.1">
<span class="ltx_p" id="A1.T3.1.1.17.16.1.1.1" style="width:142.3pt;">DISC-FinLLM (Computing) <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib7" title="">2023</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.17.16.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.17.16.2.1">
<span class="ltx_p" id="A1.T3.1.1.17.16.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.17.16.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.17.16.3.1">
<span class="ltx_p" id="A1.T3.1.1.17.16.3.1.1" style="width:227.6pt;">Financial scenario QA dataset focusing on numerical tasks.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.18.17.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.18.17.1.1">
<span class="ltx_p" id="A1.T3.1.1.18.17.1.1.1" style="width:142.3pt;">SmoothNLP <span class="ltx_note ltx_role_footnote" id="footnote10"><sup class="ltx_note_mark">10</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">10</sup><span class="ltx_tag ltx_tag_note">10</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://github.com/smoothnlp/SmoothNLP" title="">https://github.com/smoothnlp/SmoothNLP</a></span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.18.17.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.18.17.2.1">
<span class="ltx_p" id="A1.T3.1.1.18.17.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.18.17.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.18.17.3.1">
<span class="ltx_p" id="A1.T3.1.1.18.17.3.1.1" style="width:227.6pt;">Chinese finance news dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.19.18.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.19.18.1.1">
<span class="ltx_p" id="A1.T3.1.1.19.18.1.1.1" style="width:142.3pt;">THUCNews <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib57" title="">2016</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.19.18.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.19.18.2.1">
<span class="ltx_p" id="A1.T3.1.1.19.18.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.19.18.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.19.18.3.1">
<span class="ltx_p" id="A1.T3.1.1.19.18.3.1.1" style="width:227.6pt;">Chinese finance news dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.20.19.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.20.19.1.1">
<span class="ltx_p" id="A1.T3.1.1.20.19.1.1.1" style="width:142.3pt;">Fin-Eva (Terminology) <span class="ltx_note ltx_role_footnote" id="footnote11"><sup class="ltx_note_mark">11</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">11</sup><span class="ltx_tag ltx_tag_note">11</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://github.com/alipay/financial_evaluation_dataset/tree/main" title="">https://github.com/alipay/financial_evaluation_dataset/tree/main</a></span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.20.19.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.20.19.2.1">
<span class="ltx_p" id="A1.T3.1.1.20.19.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.1.1.20.19.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.20.19.3.1">
<span class="ltx_p" id="A1.T3.1.1.20.19.3.1.1" style="width:227.6pt;">Financial terminology dataset used in the industry.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T3.1.1.21.20.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.21.20.1.1">
<span class="ltx_p" id="A1.T3.1.1.21.20.1.1.1" style="width:142.3pt;">TheGoldman-cn</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T3.1.1.21.20.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.21.20.2.1">
<span class="ltx_p" id="A1.T3.1.1.21.20.2.1.1" style="width:42.7pt;">Chinese</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T3.1.1.21.20.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.1.1.21.20.3.1">
<span class="ltx_p" id="A1.T3.1.1.21.20.3.1.1" style="width:227.6pt;">Chinese version of the Goldman Sachs Financial Dictionary.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists 20 datasets used in the paper's benchmark for the retrieval task.  Each dataset is described with its name, language (English or Chinese), and a concise description of its content and purpose.  For example, some datasets contain financial news articles, others focus on question answering about financial topics, and yet others include information from SEC filings.
> <details>
> <summary>read the caption</summary>
> Table 3: Summary of Retrieval Datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1.1">Dataset Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.2.1">Language</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.1.1.3.1">
<span class="ltx_p" id="A1.T4.1.1.1.1.3.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.2.1.1">FinancialPhrasebank <cite class="ltx_cite ltx_citemacro_citep">(Malo et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib37" title="">2014</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.2.1.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T4.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.2.1.3.1">
<span class="ltx_p" id="A1.T4.1.1.2.1.3.1.1" style="width:256.1pt;">Polar sentiment dataset of sentences from financial news, categorized by sentiment into positive, negative, or neutral.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.2.1">FinSent <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib68" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.2.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.3.2.3.1">
<span class="ltx_p" id="A1.T4.1.1.3.2.3.1.1" style="width:256.1pt;">Polar sentiment dataset of sentences from the financial domain, categorized by sentiment into positive, negative, or neutral.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.3.1">FiQA_ABSA <cite class="ltx_cite ltx_citemacro_citep">(FiQA, <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib14" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.3.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.4.3.3.1">
<span class="ltx_p" id="A1.T4.1.1.4.3.3.1.1" style="width:256.1pt;">Polar sentiment dataset of sentences from the financial domain, categorized by sentiment into positive, negative, or neutral.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.4.1">SemEva2017_Headline <cite class="ltx_cite ltx_citemacro_citep">(Cortis et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib10" title="">2017</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.4.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.5.4.3.1">
<span class="ltx_p" id="A1.T4.1.1.5.4.3.1.1" style="width:256.1pt;">Polar sentiment dataset of sentences from the financial domain, categorized by sentiment into positive, negative, or neutral.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.5.1">FLS <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib68" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.5.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.6.5.3.1">
<span class="ltx_p" id="A1.T4.1.1.6.5.3.1.1" style="width:256.1pt;">A finance dataset detects whether the sentence is a forward-looking statement.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.6.1">ESG <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib68" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.6.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.7.6.3.1">
<span class="ltx_p" id="A1.T4.1.1.7.6.3.1.1" style="width:256.1pt;">A finance dataset performs sentence classification under the environmental, social, and corporate governance (ESG) framework.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.7.1">FOMC <cite class="ltx_cite ltx_citemacro_citep">(Shah et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib53" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.7.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.8.7.3.1">
<span class="ltx_p" id="A1.T4.1.1.8.7.3.1.1" style="width:256.1pt;">A task of hawkish-dovish classification in finance domain.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.8.1">Financial-Fraud <span class="ltx_note ltx_role_footnote" id="footnote12"><sup class="ltx_note_mark">12</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">12</sup><span class="ltx_tag ltx_tag_note">12</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://github.com/amitkedia007/Financial-Fraud-Detection-Using-LLMs/tree/main" title="">https://github.com/amitkedia007/Financial-Fraud-Detection-Using-LLMs/tree/main</a></span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.8.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.9.8.3.1">
<span class="ltx_p" id="A1.T4.1.1.9.8.3.1.1" style="width:256.1pt;">This dataset was used for research in detecting financial fraud.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.10.9">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.10.9.1">FinNSP <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib35" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.10.9.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.10.9.3.1">
<span class="ltx_p" id="A1.T4.1.1.10.9.3.1.1" style="width:256.1pt;">Financial negative news and its subject determination dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.11.10">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.11.10.1">FinChina <cite class="ltx_cite ltx_citemacro_citep">(Lan et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib24" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.11.10.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.11.10.3.1">
<span class="ltx_p" id="A1.T4.1.1.11.10.3.1.1" style="width:256.1pt;">Polar sentiment dataset of sentences from the financial domain, categorized by sentiment into positive, negative, or neutral.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.12.11">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.12.11.1">FinFE <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib35" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.12.11.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.12.11.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.12.11.3.1">
<span class="ltx_p" id="A1.T4.1.1.12.11.3.1.1" style="width:256.1pt;">Financial social media text sentiment categorization dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.13.12">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.13.12.1">OpenFinData <span class="ltx_note ltx_role_footnote" id="footnote13"><sup class="ltx_note_mark">13</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">13</sup><span class="ltx_tag ltx_tag_note">13</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://github.com/open-compass/OpenFinData?tab=readme-ov-file" title="">https://github.com/open-compass/OpenFinData?tab=readme-ov-file</a></span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.13.12.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.1.13.12.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.13.12.3.1">
<span class="ltx_p" id="A1.T4.1.1.13.12.3.1.1" style="width:256.1pt;">Financial scenario QA dataset including sentiment task.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.14.13.1">MDFEND-Weibo2 (finance) <cite class="ltx_cite ltx_citemacro_citep">(Nan et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib42" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.14.13.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T4.1.1.14.13.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.14.13.3.1">
<span class="ltx_p" id="A1.T4.1.1.14.13.3.1.1" style="width:256.1pt;">Fake news detection in the finance domain.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists 16 classification datasets used in the FinMTEB benchmark.  Each dataset is described with its language (English or Chinese), and a detailed description of its contents and intended use in financial natural language processing.  The descriptions highlight the type of financial text included (e.g., news, social media, regulatory filings), the task the dataset supports (e.g., sentiment analysis, fraud detection, financial news categorization), and key characteristics such as the number of sentences and whether the data is labeled with positive, negative, or neutral sentiments.
> <details>
> <summary>read the caption</summary>
> Table 4: Summary of Classification Datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1">Dataset Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.2.1">Language</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.1.1.3.1">
<span class="ltx_p" id="A1.T5.1.1.1.1.3.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.2.1.1">MInDS-14-en <cite class="ltx_cite ltx_citemacro_citep">(Gerz et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib17" title="">2021b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.2.1.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T5.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.2.1.3.1">
<span class="ltx_p" id="A1.T5.1.1.2.1.3.1.1" style="width:256.1pt;">MINDS-14 is a dataset for intent detection in e-banking, covering 14 intents across 14 languages.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2.1">Consumer Complaints <cite class="ltx_cite ltx_citemacro_citep">(CFPB, <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib4" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.3.2.3.1">
<span class="ltx_p" id="A1.T5.1.1.3.2.3.1.1" style="width:256.1pt;">The Consumer Complaint Database is a collection of complaints about consumer financial products and services that sent to companies for response.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.3.1">Synthetic PII finance <cite class="ltx_cite ltx_citemacro_citep">(Watson et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib62" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.3.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.4.3.3.1">
<span class="ltx_p" id="A1.T5.1.1.4.3.3.1.1" style="width:256.1pt;">Synthetic financial documents containing Personally Identifiable Information (PII).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.4.1">FinanceArxiv-s2s <span class="ltx_note ltx_role_footnote" id="footnote14"><sup class="ltx_note_mark">14</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">14</sup><span class="ltx_tag ltx_tag_note">14</span>Collect from the Arixv</span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.4.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.5.4.3.1">
<span class="ltx_p" id="A1.T5.1.1.5.4.3.1.1" style="width:256.1pt;">Clustering of titles from arxiv (q-fin).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.5.1">FinanceArxiv-p2p</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.5.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.6.5.3.1">
<span class="ltx_p" id="A1.T5.1.1.6.5.3.1.1" style="width:256.1pt;">Clustering of abstract from arxiv (q-fin).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.6.1">WikiCompany2Industry-en <span class="ltx_note ltx_role_footnote" id="footnote15"><sup class="ltx_note_mark">15</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">15</sup><span class="ltx_tag ltx_tag_note">15</span>Collect from the Wikipedia</span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.6.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.7.6.3.1">
<span class="ltx_p" id="A1.T5.1.1.7.6.3.1.1" style="width:256.1pt;">Clustering the related industry domain according to the company description.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.7.1">MInDS-14-zh <cite class="ltx_cite ltx_citemacro_citep">(Gerz et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib17" title="">2021b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.7.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.8.7.3.1">
<span class="ltx_p" id="A1.T5.1.1.8.7.3.1.1" style="width:256.1pt;">MINDS-14 is a dataset for intent detection in e-banking, covering 14 intents across 14 languages.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.8.1">FinNL <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib35" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.8.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.9.8.3.1">
<span class="ltx_p" id="A1.T5.1.1.9.8.3.1.1" style="width:256.1pt;">Financial news categorization dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10.9">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.9.1">CCKS2022 <cite class="ltx_cite ltx_citemacro_citep">(CCKS, <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib3" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.9.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.10.9.3.1">
<span class="ltx_p" id="A1.T5.1.1.10.9.3.1.1" style="width:256.1pt;">Clustering of financial events.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11.10">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.10.1">CCKS2020</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.10.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.1.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.11.10.3.1">
<span class="ltx_p" id="A1.T5.1.1.11.10.3.1.1" style="width:256.1pt;">Clustering of financial events.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.12.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.12.11.1">CCKS2019</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.12.11.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T5.1.1.12.11.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.12.11.3.1">
<span class="ltx_p" id="A1.T5.1.1.12.11.3.1.1" style="width:256.1pt;">Clustering of financial events.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the datasets used in the FinMTEB benchmark for the clustering task.  Each dataset is described with its language (English or Chinese) and a brief explanation of its content and purpose, providing context to understand the nature of the financial data included in each dataset and its relevance to clustering tasks.  This aids in interpreting the results obtained by using these datasets in the FinMTEB benchmark. The datasets show diversity in terms of their sources and the type of financial data represented.
> <details>
> <summary>read the caption</summary>
> Table 5: Summary of Clustering Datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1.1">Dataset Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.2.1">Language</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.1.1.3.1">
<span class="ltx_p" id="A1.T6.1.1.1.1.3.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T6.1.1.2.1.1">Ectsum <cite class="ltx_cite ltx_citemacro_citep">(Mukherjee et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib41" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T6.1.1.2.1.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T6.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.2.1.3.1">
<span class="ltx_p" id="A1.T6.1.1.2.1.3.1.1" style="width:256.1pt;">A Dataset For Bullet Point Summarization of Long Earnings Call Transcripts.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.3.2.1">FINDSum <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib32" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.3.2.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.3.2.3.1">
<span class="ltx_p" id="A1.T6.1.1.3.2.3.1.1" style="width:256.1pt;">A Large-Scale Dataset for Long Text and Multi-Table Summarization.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.4.3.1">FNS-2022 <cite class="ltx_cite ltx_citemacro_citep">(El-Haj et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib12" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.4.3.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.4.3.3.1">
<span class="ltx_p" id="A1.T6.1.1.4.3.3.1.1" style="width:256.1pt;">Financial Narrative Summarisation for 10K.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.5.4.1">FiNNA <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib35" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.5.4.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.5.4.3.1">
<span class="ltx_p" id="A1.T6.1.1.5.4.3.1.1" style="width:256.1pt;">A financial news summarization dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.6.5.1">Fin-Eva (Headline) <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib70" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.6.5.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T6.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.6.5.3.1">
<span class="ltx_p" id="A1.T6.1.1.6.5.3.1.1" style="width:256.1pt;">A financial summarization dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.1.1.7.6.1">Fin-Eva (Abstract) <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib70" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.1.1.7.6.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T6.1.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.7.6.3.1">
<span class="ltx_p" id="A1.T6.1.1.7.6.3.1.1" style="width:256.1pt;">A financial summarization dataset.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists summarization datasets used in the FinMTEB benchmark.  It provides details for each dataset, including the dataset name, language (English or Chinese), and a description of the dataset's content and purpose within the context of financial text summarization.
> <details>
> <summary>read the caption</summary>
> Table 6: Summary of Summarization Datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1.1">Dataset Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.2.1">Language</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.1.1.3.1">
<span class="ltx_p" id="A1.T7.1.1.1.1.3.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T7.1.1.2.1.1">Fin-Fact <cite class="ltx_cite ltx_citemacro_citep">(Rangapur et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib50" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T7.1.1.2.1.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T7.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.2.1.3.1">
<span class="ltx_p" id="A1.T7.1.1.2.1.3.1.1" style="width:256.1pt;">A Benchmark Dataset for Financial Fact Checking and Explanation Generation.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.3.2.1">FiQA2018 <cite class="ltx_cite ltx_citemacro_citep">(FiQA, <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib14" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.3.2.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.3.2.3.1">
<span class="ltx_p" id="A1.T7.1.1.3.2.3.1.1" style="width:256.1pt;">Financial opinion mining and question answering.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.4.3.1">HC3(Finance) <cite class="ltx_cite ltx_citemacro_citep">(Guo et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib18" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.4.3.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.4.3.3.1">
<span class="ltx_p" id="A1.T7.1.1.4.3.3.1.1" style="width:256.1pt;">A human-ChatGPT comparison finance corpus.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.5.4.1">Fin-Eva (Retrieval task) <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib70" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T7.1.1.5.4.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.5.4.3.1">
<span class="ltx_p" id="A1.T7.1.1.5.4.3.1.1" style="width:256.1pt;">Financial scenario QA dataset including retrieval task.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T7.1.1.6.5.1">DISC-FinLLM (Retrieval Part Data) <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib7" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T7.1.1.6.5.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T7.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.6.5.3.1">
<span class="ltx_p" id="A1.T7.1.1.6.5.3.1.1" style="width:256.1pt;">Financial scenario QA dataset.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the datasets used for the reranking task in the FinMTEB benchmark.  For each dataset, it provides the language (English or Chinese) and a description of its content and purpose. The descriptions highlight the specific focus of each dataset, such as financial fact-checking, question answering, or retrieval of relevant information in financial contexts.
> <details>
> <summary>read the caption</summary>
> Table 7: Summary of Reranking Datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.1.1">Dataset Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.2.1">Language</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T8.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.1.1.3.1">
<span class="ltx_p" id="A1.T8.1.1.1.1.3.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.1.1.2.1.1">HeadlineAC-PairClassification <cite class="ltx_cite ltx_citemacro_citep">(Sinha and Khandait, <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib54" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.1.1.2.1.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T8.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.2.1.3.1">
<span class="ltx_p" id="A1.T8.1.1.2.1.3.1.1" style="width:256.1pt;">Financial text sentiment categorization dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.3.2.1">HeadlinePDD-PairClassification <cite class="ltx_cite ltx_citemacro_citep">(Sinha and Khandait, <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib54" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.3.2.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.3.2.3.1">
<span class="ltx_p" id="A1.T8.1.1.3.2.3.1.1" style="width:256.1pt;">Financial text sentiment categorization dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.4.3.1">HeadlinePDU-PairClassification <cite class="ltx_cite ltx_citemacro_citep">(Sinha and Khandait, <a class="ltx_ref" href="https://arxiv.org/html/2502.10990v1#bib.bib54" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.4.3.2">English</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T8.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.4.3.3.1">
<span class="ltx_p" id="A1.T8.1.1.4.3.3.1.1" style="width:256.1pt;">Financial text sentiment categorization dataset.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T8.1.1.5.4.1">AFQMC</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T8.1.1.5.4.2">Chinese</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T8.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.5.4.3.1">
<span class="ltx_p" id="A1.T8.1.1.5.4.3.1.1" style="width:256.1pt;">Ant Financial Question Matching Corpus.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the datasets used for the pair classification task in the FinMTEB benchmark.  For each dataset, it provides the language (English or Chinese) and a brief description of its content and purpose within the context of financial text analysis.  The descriptions highlight the type of data and the specific aspect of financial text pairs being classified.
> <details>
> <summary>read the caption</summary>
> Table 8: Summary of PairClassification Datasets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A5.T10.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T10.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A5.T10.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.2.1">STS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.3.1">Class.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.4.1">Ret.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.5.1">Rerank.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.6.1">Clust.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.7.1">PairClass.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.8.1">Summ.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T10.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T10.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.2.1.1.1">Correlation</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.2.1.2">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.2.1.3">-0.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.2.1.4">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.2.1.5">-0.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.2.1.6">-0.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.2.1.7">-0.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.1.1.2.1.8">0.60</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T10.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.3.2.1.1">p-value</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.1.1.3.2.2">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.1.1.3.2.3">0.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.1.1.3.2.4">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.1.1.3.2.5">0.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.1.1.3.2.6">0.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.1.1.3.2.7">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.1.1.3.2.8">0.28</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares several linguistic features of the FinMTEB and MTEB datasets, which are used for evaluating text embedding models.  The features compared are average sentence length, average token length, average number of syllables per token, and average dependency distance.  The data reveals differences in the complexity of text between the financial domain (FinMTEB) and a general domain (MTEB), with FinMTEB showing longer and more complex sentences.
> <details>
> <summary>read the caption</summary>
> Table 9: Comparison of Text Characteristics Between FinMTEB and MTEB. The numbers represent the average scores across all samples from all datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A6.T11.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T11.14.14.15.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T11.14.14.15.1.1"><span class="ltx_text ltx_font_bold" id="A6.T11.14.14.15.1.1.1">Task</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T11.14.14.15.1.2"><span class="ltx_text ltx_font_bold" id="A6.T11.14.14.15.1.2.1">Factor</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T11.14.14.15.1.3"><span class="ltx_text ltx_font_bold" id="A6.T11.14.14.15.1.3.1">Sum of Squares</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T11.14.14.15.1.4"><span class="ltx_text ltx_font_bold" id="A6.T11.14.14.15.1.4.1">Degrees of Freedom</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T11.14.14.15.1.5"><span class="ltx_text ltx_font_bold" id="A6.T11.14.14.15.1.5.1">F-Statistic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T11.14.14.15.1.6"><span class="ltx_text ltx_font_bold" id="A6.T11.14.14.15.1.6.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T11.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T11.1.1.1.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="A6.T11.1.1.1.2.1">Classification</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.1.1.1.3">Model Factor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.1.1.1.4">4.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.1.1.1.5">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.1.1.1.6">25.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.1.1.1.1"><math alttext="3.41\times 10^{-30}" class="ltx_Math" display="inline" id="A6.T11.1.1.1.1.m1.1"><semantics id="A6.T11.1.1.1.1.m1.1a"><mrow id="A6.T11.1.1.1.1.m1.1.1" xref="A6.T11.1.1.1.1.m1.1.1.cmml"><mn id="A6.T11.1.1.1.1.m1.1.1.2" xref="A6.T11.1.1.1.1.m1.1.1.2.cmml">3.41</mn><mo id="A6.T11.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T11.1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A6.T11.1.1.1.1.m1.1.1.3" xref="A6.T11.1.1.1.1.m1.1.1.3.cmml"><mn id="A6.T11.1.1.1.1.m1.1.1.3.2" xref="A6.T11.1.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A6.T11.1.1.1.1.m1.1.1.3.3" xref="A6.T11.1.1.1.1.m1.1.1.3.3.cmml"><mo id="A6.T11.1.1.1.1.m1.1.1.3.3a" xref="A6.T11.1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A6.T11.1.1.1.1.m1.1.1.3.3.2" xref="A6.T11.1.1.1.1.m1.1.1.3.3.2.cmml">30</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.1.1.1.1.m1.1b"><apply id="A6.T11.1.1.1.1.m1.1.1.cmml" xref="A6.T11.1.1.1.1.m1.1.1"><times id="A6.T11.1.1.1.1.m1.1.1.1.cmml" xref="A6.T11.1.1.1.1.m1.1.1.1"></times><cn id="A6.T11.1.1.1.1.m1.1.1.2.cmml" type="float" xref="A6.T11.1.1.1.1.m1.1.1.2">3.41</cn><apply id="A6.T11.1.1.1.1.m1.1.1.3.cmml" xref="A6.T11.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A6.T11.1.1.1.1.m1.1.1.3.1.cmml" xref="A6.T11.1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A6.T11.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A6.T11.1.1.1.1.m1.1.1.3.2">10</cn><apply id="A6.T11.1.1.1.1.m1.1.1.3.3.cmml" xref="A6.T11.1.1.1.1.m1.1.1.3.3"><minus id="A6.T11.1.1.1.1.m1.1.1.3.3.1.cmml" xref="A6.T11.1.1.1.1.m1.1.1.3.3"></minus><cn id="A6.T11.1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A6.T11.1.1.1.1.m1.1.1.3.3.2">30</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.1.1.1.1.m1.1c">3.41\times 10^{-30}</annotation><annotation encoding="application/x-llamapun" id="A6.T11.1.1.1.1.m1.1d">3.41 × 10 start_POSTSUPERSCRIPT - 30 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.2.2.2">
<td class="ltx_td ltx_align_center" id="A6.T11.2.2.2.2">Domain Factor</td>
<td class="ltx_td ltx_align_center" id="A6.T11.2.2.2.3">56.82</td>
<td class="ltx_td ltx_align_center" id="A6.T11.2.2.2.4">1.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.2.2.2.5">2086.30</td>
<td class="ltx_td ltx_align_center" id="A6.T11.2.2.2.1"><math alttext="\approx 0" class="ltx_Math" display="inline" id="A6.T11.2.2.2.1.m1.1"><semantics id="A6.T11.2.2.2.1.m1.1a"><mrow id="A6.T11.2.2.2.1.m1.1.1" xref="A6.T11.2.2.2.1.m1.1.1.cmml"><mi id="A6.T11.2.2.2.1.m1.1.1.2" xref="A6.T11.2.2.2.1.m1.1.1.2.cmml"></mi><mo id="A6.T11.2.2.2.1.m1.1.1.1" xref="A6.T11.2.2.2.1.m1.1.1.1.cmml">≈</mo><mn id="A6.T11.2.2.2.1.m1.1.1.3" xref="A6.T11.2.2.2.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.2.2.2.1.m1.1b"><apply id="A6.T11.2.2.2.1.m1.1.1.cmml" xref="A6.T11.2.2.2.1.m1.1.1"><approx id="A6.T11.2.2.2.1.m1.1.1.1.cmml" xref="A6.T11.2.2.2.1.m1.1.1.1"></approx><csymbol cd="latexml" id="A6.T11.2.2.2.1.m1.1.1.2.cmml" xref="A6.T11.2.2.2.1.m1.1.1.2">absent</csymbol><cn id="A6.T11.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="A6.T11.2.2.2.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.2.2.2.1.m1.1c">\approx 0</annotation><annotation encoding="application/x-llamapun" id="A6.T11.2.2.2.1.m1.1d">≈ 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.16.1">
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.16.1.1">Residual</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.16.1.2">190.42</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.16.1.3">6992.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.16.1.4">NA</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.16.1.5">NA</td>
</tr>
<tr class="ltx_tr" id="A6.T11.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T11.3.3.3.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="A6.T11.3.3.3.2.1">Retrieval</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.3.3.3.3">Model Factor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.3.3.3.4">104.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.3.3.3.5">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.3.3.3.6">9052.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.3.3.3.1"><math alttext="\approx 0" class="ltx_Math" display="inline" id="A6.T11.3.3.3.1.m1.1"><semantics id="A6.T11.3.3.3.1.m1.1a"><mrow id="A6.T11.3.3.3.1.m1.1.1" xref="A6.T11.3.3.3.1.m1.1.1.cmml"><mi id="A6.T11.3.3.3.1.m1.1.1.2" xref="A6.T11.3.3.3.1.m1.1.1.2.cmml"></mi><mo id="A6.T11.3.3.3.1.m1.1.1.1" xref="A6.T11.3.3.3.1.m1.1.1.1.cmml">≈</mo><mn id="A6.T11.3.3.3.1.m1.1.1.3" xref="A6.T11.3.3.3.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.3.3.3.1.m1.1b"><apply id="A6.T11.3.3.3.1.m1.1.1.cmml" xref="A6.T11.3.3.3.1.m1.1.1"><approx id="A6.T11.3.3.3.1.m1.1.1.1.cmml" xref="A6.T11.3.3.3.1.m1.1.1.1"></approx><csymbol cd="latexml" id="A6.T11.3.3.3.1.m1.1.1.2.cmml" xref="A6.T11.3.3.3.1.m1.1.1.2">absent</csymbol><cn id="A6.T11.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="A6.T11.3.3.3.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.3.3.3.1.m1.1c">\approx 0</annotation><annotation encoding="application/x-llamapun" id="A6.T11.3.3.3.1.m1.1d">≈ 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.4.4.4">
<td class="ltx_td ltx_align_center" id="A6.T11.4.4.4.2">Domain Factor</td>
<td class="ltx_td ltx_align_center" id="A6.T11.4.4.4.3">6.16</td>
<td class="ltx_td ltx_align_center" id="A6.T11.4.4.4.4">1.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.4.4.4.5">3207.72</td>
<td class="ltx_td ltx_align_center" id="A6.T11.4.4.4.1"><math alttext="\approx 0" class="ltx_Math" display="inline" id="A6.T11.4.4.4.1.m1.1"><semantics id="A6.T11.4.4.4.1.m1.1a"><mrow id="A6.T11.4.4.4.1.m1.1.1" xref="A6.T11.4.4.4.1.m1.1.1.cmml"><mi id="A6.T11.4.4.4.1.m1.1.1.2" xref="A6.T11.4.4.4.1.m1.1.1.2.cmml"></mi><mo id="A6.T11.4.4.4.1.m1.1.1.1" xref="A6.T11.4.4.4.1.m1.1.1.1.cmml">≈</mo><mn id="A6.T11.4.4.4.1.m1.1.1.3" xref="A6.T11.4.4.4.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.4.4.4.1.m1.1b"><apply id="A6.T11.4.4.4.1.m1.1.1.cmml" xref="A6.T11.4.4.4.1.m1.1.1"><approx id="A6.T11.4.4.4.1.m1.1.1.1.cmml" xref="A6.T11.4.4.4.1.m1.1.1.1"></approx><csymbol cd="latexml" id="A6.T11.4.4.4.1.m1.1.1.2.cmml" xref="A6.T11.4.4.4.1.m1.1.1.2">absent</csymbol><cn id="A6.T11.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="A6.T11.4.4.4.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.4.4.4.1.m1.1c">\approx 0</annotation><annotation encoding="application/x-llamapun" id="A6.T11.4.4.4.1.m1.1d">≈ 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.17.2">
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.17.2.1">Residual</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.17.2.2">13.42</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.17.2.3">6992.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.17.2.4">NA</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.17.2.5">NA</td>
</tr>
<tr class="ltx_tr" id="A6.T11.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T11.5.5.5.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="A6.T11.5.5.5.2.1">STS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.5.5.5.3">Model Factor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.5.5.5.4">10.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.5.5.5.5">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.5.5.5.6">149.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.5.5.5.1"><math alttext="1.64\times 10^{-178}" class="ltx_Math" display="inline" id="A6.T11.5.5.5.1.m1.1"><semantics id="A6.T11.5.5.5.1.m1.1a"><mrow id="A6.T11.5.5.5.1.m1.1.1" xref="A6.T11.5.5.5.1.m1.1.1.cmml"><mn id="A6.T11.5.5.5.1.m1.1.1.2" xref="A6.T11.5.5.5.1.m1.1.1.2.cmml">1.64</mn><mo id="A6.T11.5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T11.5.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A6.T11.5.5.5.1.m1.1.1.3" xref="A6.T11.5.5.5.1.m1.1.1.3.cmml"><mn id="A6.T11.5.5.5.1.m1.1.1.3.2" xref="A6.T11.5.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="A6.T11.5.5.5.1.m1.1.1.3.3" xref="A6.T11.5.5.5.1.m1.1.1.3.3.cmml"><mo id="A6.T11.5.5.5.1.m1.1.1.3.3a" xref="A6.T11.5.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="A6.T11.5.5.5.1.m1.1.1.3.3.2" xref="A6.T11.5.5.5.1.m1.1.1.3.3.2.cmml">178</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.5.5.5.1.m1.1b"><apply id="A6.T11.5.5.5.1.m1.1.1.cmml" xref="A6.T11.5.5.5.1.m1.1.1"><times id="A6.T11.5.5.5.1.m1.1.1.1.cmml" xref="A6.T11.5.5.5.1.m1.1.1.1"></times><cn id="A6.T11.5.5.5.1.m1.1.1.2.cmml" type="float" xref="A6.T11.5.5.5.1.m1.1.1.2">1.64</cn><apply id="A6.T11.5.5.5.1.m1.1.1.3.cmml" xref="A6.T11.5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A6.T11.5.5.5.1.m1.1.1.3.1.cmml" xref="A6.T11.5.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A6.T11.5.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A6.T11.5.5.5.1.m1.1.1.3.2">10</cn><apply id="A6.T11.5.5.5.1.m1.1.1.3.3.cmml" xref="A6.T11.5.5.5.1.m1.1.1.3.3"><minus id="A6.T11.5.5.5.1.m1.1.1.3.3.1.cmml" xref="A6.T11.5.5.5.1.m1.1.1.3.3"></minus><cn id="A6.T11.5.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="A6.T11.5.5.5.1.m1.1.1.3.3.2">178</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.5.5.5.1.m1.1c">1.64\times 10^{-178}</annotation><annotation encoding="application/x-llamapun" id="A6.T11.5.5.5.1.m1.1d">1.64 × 10 start_POSTSUPERSCRIPT - 178 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.6.6.6">
<td class="ltx_td ltx_align_center" id="A6.T11.6.6.6.2">Domain Factor</td>
<td class="ltx_td ltx_align_center" id="A6.T11.6.6.6.3">304.09</td>
<td class="ltx_td ltx_align_center" id="A6.T11.6.6.6.4">1.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.6.6.6.5">25761.71</td>
<td class="ltx_td ltx_align_center" id="A6.T11.6.6.6.1"><math alttext="\approx 0" class="ltx_Math" display="inline" id="A6.T11.6.6.6.1.m1.1"><semantics id="A6.T11.6.6.6.1.m1.1a"><mrow id="A6.T11.6.6.6.1.m1.1.1" xref="A6.T11.6.6.6.1.m1.1.1.cmml"><mi id="A6.T11.6.6.6.1.m1.1.1.2" xref="A6.T11.6.6.6.1.m1.1.1.2.cmml"></mi><mo id="A6.T11.6.6.6.1.m1.1.1.1" xref="A6.T11.6.6.6.1.m1.1.1.1.cmml">≈</mo><mn id="A6.T11.6.6.6.1.m1.1.1.3" xref="A6.T11.6.6.6.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.6.6.6.1.m1.1b"><apply id="A6.T11.6.6.6.1.m1.1.1.cmml" xref="A6.T11.6.6.6.1.m1.1.1"><approx id="A6.T11.6.6.6.1.m1.1.1.1.cmml" xref="A6.T11.6.6.6.1.m1.1.1.1"></approx><csymbol cd="latexml" id="A6.T11.6.6.6.1.m1.1.1.2.cmml" xref="A6.T11.6.6.6.1.m1.1.1.2">absent</csymbol><cn id="A6.T11.6.6.6.1.m1.1.1.3.cmml" type="integer" xref="A6.T11.6.6.6.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.6.6.6.1.m1.1c">\approx 0</annotation><annotation encoding="application/x-llamapun" id="A6.T11.6.6.6.1.m1.1d">≈ 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.18.3">
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.18.3.1">Residual</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.18.3.2">82.53</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.18.3.3">6992.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.18.3.4">NA</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.18.3.5">NA</td>
</tr>
<tr class="ltx_tr" id="A6.T11.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T11.7.7.7.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="A6.T11.7.7.7.2.1">Clustering</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.7.7.7.3">Model Factor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.7.7.7.4">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.7.7.7.5">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.7.7.7.6">47.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.7.7.7.1"><math alttext="1.59\times 10^{-57}" class="ltx_Math" display="inline" id="A6.T11.7.7.7.1.m1.1"><semantics id="A6.T11.7.7.7.1.m1.1a"><mrow id="A6.T11.7.7.7.1.m1.1.1" xref="A6.T11.7.7.7.1.m1.1.1.cmml"><mn id="A6.T11.7.7.7.1.m1.1.1.2" xref="A6.T11.7.7.7.1.m1.1.1.2.cmml">1.59</mn><mo id="A6.T11.7.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T11.7.7.7.1.m1.1.1.1.cmml">×</mo><msup id="A6.T11.7.7.7.1.m1.1.1.3" xref="A6.T11.7.7.7.1.m1.1.1.3.cmml"><mn id="A6.T11.7.7.7.1.m1.1.1.3.2" xref="A6.T11.7.7.7.1.m1.1.1.3.2.cmml">10</mn><mrow id="A6.T11.7.7.7.1.m1.1.1.3.3" xref="A6.T11.7.7.7.1.m1.1.1.3.3.cmml"><mo id="A6.T11.7.7.7.1.m1.1.1.3.3a" xref="A6.T11.7.7.7.1.m1.1.1.3.3.cmml">−</mo><mn id="A6.T11.7.7.7.1.m1.1.1.3.3.2" xref="A6.T11.7.7.7.1.m1.1.1.3.3.2.cmml">57</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.7.7.7.1.m1.1b"><apply id="A6.T11.7.7.7.1.m1.1.1.cmml" xref="A6.T11.7.7.7.1.m1.1.1"><times id="A6.T11.7.7.7.1.m1.1.1.1.cmml" xref="A6.T11.7.7.7.1.m1.1.1.1"></times><cn id="A6.T11.7.7.7.1.m1.1.1.2.cmml" type="float" xref="A6.T11.7.7.7.1.m1.1.1.2">1.59</cn><apply id="A6.T11.7.7.7.1.m1.1.1.3.cmml" xref="A6.T11.7.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="A6.T11.7.7.7.1.m1.1.1.3.1.cmml" xref="A6.T11.7.7.7.1.m1.1.1.3">superscript</csymbol><cn id="A6.T11.7.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="A6.T11.7.7.7.1.m1.1.1.3.2">10</cn><apply id="A6.T11.7.7.7.1.m1.1.1.3.3.cmml" xref="A6.T11.7.7.7.1.m1.1.1.3.3"><minus id="A6.T11.7.7.7.1.m1.1.1.3.3.1.cmml" xref="A6.T11.7.7.7.1.m1.1.1.3.3"></minus><cn id="A6.T11.7.7.7.1.m1.1.1.3.3.2.cmml" type="integer" xref="A6.T11.7.7.7.1.m1.1.1.3.3.2">57</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.7.7.7.1.m1.1c">1.59\times 10^{-57}</annotation><annotation encoding="application/x-llamapun" id="A6.T11.7.7.7.1.m1.1d">1.59 × 10 start_POSTSUPERSCRIPT - 57 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.8.8.8">
<td class="ltx_td ltx_align_center" id="A6.T11.8.8.8.2">Domain Factor</td>
<td class="ltx_td ltx_align_center" id="A6.T11.8.8.8.3">32.25</td>
<td class="ltx_td ltx_align_center" id="A6.T11.8.8.8.4">1.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.8.8.8.5">32161.37</td>
<td class="ltx_td ltx_align_center" id="A6.T11.8.8.8.1"><math alttext="\approx 0" class="ltx_Math" display="inline" id="A6.T11.8.8.8.1.m1.1"><semantics id="A6.T11.8.8.8.1.m1.1a"><mrow id="A6.T11.8.8.8.1.m1.1.1" xref="A6.T11.8.8.8.1.m1.1.1.cmml"><mi id="A6.T11.8.8.8.1.m1.1.1.2" xref="A6.T11.8.8.8.1.m1.1.1.2.cmml"></mi><mo id="A6.T11.8.8.8.1.m1.1.1.1" xref="A6.T11.8.8.8.1.m1.1.1.1.cmml">≈</mo><mn id="A6.T11.8.8.8.1.m1.1.1.3" xref="A6.T11.8.8.8.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.8.8.8.1.m1.1b"><apply id="A6.T11.8.8.8.1.m1.1.1.cmml" xref="A6.T11.8.8.8.1.m1.1.1"><approx id="A6.T11.8.8.8.1.m1.1.1.1.cmml" xref="A6.T11.8.8.8.1.m1.1.1.1"></approx><csymbol cd="latexml" id="A6.T11.8.8.8.1.m1.1.1.2.cmml" xref="A6.T11.8.8.8.1.m1.1.1.2">absent</csymbol><cn id="A6.T11.8.8.8.1.m1.1.1.3.cmml" type="integer" xref="A6.T11.8.8.8.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.8.8.8.1.m1.1c">\approx 0</annotation><annotation encoding="application/x-llamapun" id="A6.T11.8.8.8.1.m1.1d">≈ 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.19.4">
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.19.4.1">Residual</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.19.4.2">7.01</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.19.4.3">6992.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.19.4.4">NA</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.19.4.5">NA</td>
</tr>
<tr class="ltx_tr" id="A6.T11.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T11.9.9.9.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="A6.T11.9.9.9.2.1">Summarization</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.9.9.9.3">Model Factor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.9.9.9.4">12.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.9.9.9.5">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.9.9.9.6">145.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.9.9.9.1"><math alttext="2.90\times 10^{-174}" class="ltx_Math" display="inline" id="A6.T11.9.9.9.1.m1.1"><semantics id="A6.T11.9.9.9.1.m1.1a"><mrow id="A6.T11.9.9.9.1.m1.1.1" xref="A6.T11.9.9.9.1.m1.1.1.cmml"><mn id="A6.T11.9.9.9.1.m1.1.1.2" xref="A6.T11.9.9.9.1.m1.1.1.2.cmml">2.90</mn><mo id="A6.T11.9.9.9.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T11.9.9.9.1.m1.1.1.1.cmml">×</mo><msup id="A6.T11.9.9.9.1.m1.1.1.3" xref="A6.T11.9.9.9.1.m1.1.1.3.cmml"><mn id="A6.T11.9.9.9.1.m1.1.1.3.2" xref="A6.T11.9.9.9.1.m1.1.1.3.2.cmml">10</mn><mrow id="A6.T11.9.9.9.1.m1.1.1.3.3" xref="A6.T11.9.9.9.1.m1.1.1.3.3.cmml"><mo id="A6.T11.9.9.9.1.m1.1.1.3.3a" xref="A6.T11.9.9.9.1.m1.1.1.3.3.cmml">−</mo><mn id="A6.T11.9.9.9.1.m1.1.1.3.3.2" xref="A6.T11.9.9.9.1.m1.1.1.3.3.2.cmml">174</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.9.9.9.1.m1.1b"><apply id="A6.T11.9.9.9.1.m1.1.1.cmml" xref="A6.T11.9.9.9.1.m1.1.1"><times id="A6.T11.9.9.9.1.m1.1.1.1.cmml" xref="A6.T11.9.9.9.1.m1.1.1.1"></times><cn id="A6.T11.9.9.9.1.m1.1.1.2.cmml" type="float" xref="A6.T11.9.9.9.1.m1.1.1.2">2.90</cn><apply id="A6.T11.9.9.9.1.m1.1.1.3.cmml" xref="A6.T11.9.9.9.1.m1.1.1.3"><csymbol cd="ambiguous" id="A6.T11.9.9.9.1.m1.1.1.3.1.cmml" xref="A6.T11.9.9.9.1.m1.1.1.3">superscript</csymbol><cn id="A6.T11.9.9.9.1.m1.1.1.3.2.cmml" type="integer" xref="A6.T11.9.9.9.1.m1.1.1.3.2">10</cn><apply id="A6.T11.9.9.9.1.m1.1.1.3.3.cmml" xref="A6.T11.9.9.9.1.m1.1.1.3.3"><minus id="A6.T11.9.9.9.1.m1.1.1.3.3.1.cmml" xref="A6.T11.9.9.9.1.m1.1.1.3.3"></minus><cn id="A6.T11.9.9.9.1.m1.1.1.3.3.2.cmml" type="integer" xref="A6.T11.9.9.9.1.m1.1.1.3.3.2">174</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.9.9.9.1.m1.1c">2.90\times 10^{-174}</annotation><annotation encoding="application/x-llamapun" id="A6.T11.9.9.9.1.m1.1d">2.90 × 10 start_POSTSUPERSCRIPT - 174 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.10.10.10">
<td class="ltx_td ltx_align_center" id="A6.T11.10.10.10.2">Domain Factor</td>
<td class="ltx_td ltx_align_center" id="A6.T11.10.10.10.3">14.49</td>
<td class="ltx_td ltx_align_center" id="A6.T11.10.10.10.4">1.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.10.10.10.5">973.32</td>
<td class="ltx_td ltx_align_center" id="A6.T11.10.10.10.1"><math alttext="3.60\times 10^{-200}" class="ltx_Math" display="inline" id="A6.T11.10.10.10.1.m1.1"><semantics id="A6.T11.10.10.10.1.m1.1a"><mrow id="A6.T11.10.10.10.1.m1.1.1" xref="A6.T11.10.10.10.1.m1.1.1.cmml"><mn id="A6.T11.10.10.10.1.m1.1.1.2" xref="A6.T11.10.10.10.1.m1.1.1.2.cmml">3.60</mn><mo id="A6.T11.10.10.10.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T11.10.10.10.1.m1.1.1.1.cmml">×</mo><msup id="A6.T11.10.10.10.1.m1.1.1.3" xref="A6.T11.10.10.10.1.m1.1.1.3.cmml"><mn id="A6.T11.10.10.10.1.m1.1.1.3.2" xref="A6.T11.10.10.10.1.m1.1.1.3.2.cmml">10</mn><mrow id="A6.T11.10.10.10.1.m1.1.1.3.3" xref="A6.T11.10.10.10.1.m1.1.1.3.3.cmml"><mo id="A6.T11.10.10.10.1.m1.1.1.3.3a" xref="A6.T11.10.10.10.1.m1.1.1.3.3.cmml">−</mo><mn id="A6.T11.10.10.10.1.m1.1.1.3.3.2" xref="A6.T11.10.10.10.1.m1.1.1.3.3.2.cmml">200</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.10.10.10.1.m1.1b"><apply id="A6.T11.10.10.10.1.m1.1.1.cmml" xref="A6.T11.10.10.10.1.m1.1.1"><times id="A6.T11.10.10.10.1.m1.1.1.1.cmml" xref="A6.T11.10.10.10.1.m1.1.1.1"></times><cn id="A6.T11.10.10.10.1.m1.1.1.2.cmml" type="float" xref="A6.T11.10.10.10.1.m1.1.1.2">3.60</cn><apply id="A6.T11.10.10.10.1.m1.1.1.3.cmml" xref="A6.T11.10.10.10.1.m1.1.1.3"><csymbol cd="ambiguous" id="A6.T11.10.10.10.1.m1.1.1.3.1.cmml" xref="A6.T11.10.10.10.1.m1.1.1.3">superscript</csymbol><cn id="A6.T11.10.10.10.1.m1.1.1.3.2.cmml" type="integer" xref="A6.T11.10.10.10.1.m1.1.1.3.2">10</cn><apply id="A6.T11.10.10.10.1.m1.1.1.3.3.cmml" xref="A6.T11.10.10.10.1.m1.1.1.3.3"><minus id="A6.T11.10.10.10.1.m1.1.1.3.3.1.cmml" xref="A6.T11.10.10.10.1.m1.1.1.3.3"></minus><cn id="A6.T11.10.10.10.1.m1.1.1.3.3.2.cmml" type="integer" xref="A6.T11.10.10.10.1.m1.1.1.3.3.2">200</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.10.10.10.1.m1.1c">3.60\times 10^{-200}</annotation><annotation encoding="application/x-llamapun" id="A6.T11.10.10.10.1.m1.1d">3.60 × 10 start_POSTSUPERSCRIPT - 200 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.20.5">
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.20.5.1">Residual</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.20.5.2">104.07</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.20.5.3">6992.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.20.5.4">NA</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.20.5.5">NA</td>
</tr>
<tr class="ltx_tr" id="A6.T11.11.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T11.11.11.11.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="A6.T11.11.11.11.2.1">Reranking</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.11.11.11.3">Model Factor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.11.11.11.4">5.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.11.11.11.5">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.11.11.11.6">489.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.11.11.11.1"><math alttext="\approx 0" class="ltx_Math" display="inline" id="A6.T11.11.11.11.1.m1.1"><semantics id="A6.T11.11.11.11.1.m1.1a"><mrow id="A6.T11.11.11.11.1.m1.1.1" xref="A6.T11.11.11.11.1.m1.1.1.cmml"><mi id="A6.T11.11.11.11.1.m1.1.1.2" xref="A6.T11.11.11.11.1.m1.1.1.2.cmml"></mi><mo id="A6.T11.11.11.11.1.m1.1.1.1" xref="A6.T11.11.11.11.1.m1.1.1.1.cmml">≈</mo><mn id="A6.T11.11.11.11.1.m1.1.1.3" xref="A6.T11.11.11.11.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.11.11.11.1.m1.1b"><apply id="A6.T11.11.11.11.1.m1.1.1.cmml" xref="A6.T11.11.11.11.1.m1.1.1"><approx id="A6.T11.11.11.11.1.m1.1.1.1.cmml" xref="A6.T11.11.11.11.1.m1.1.1.1"></approx><csymbol cd="latexml" id="A6.T11.11.11.11.1.m1.1.1.2.cmml" xref="A6.T11.11.11.11.1.m1.1.1.2">absent</csymbol><cn id="A6.T11.11.11.11.1.m1.1.1.3.cmml" type="integer" xref="A6.T11.11.11.11.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.11.11.11.1.m1.1c">\approx 0</annotation><annotation encoding="application/x-llamapun" id="A6.T11.11.11.11.1.m1.1d">≈ 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.12.12.12">
<td class="ltx_td ltx_align_center" id="A6.T11.12.12.12.2">Domain Factor</td>
<td class="ltx_td ltx_align_center" id="A6.T11.12.12.12.3">0.64</td>
<td class="ltx_td ltx_align_center" id="A6.T11.12.12.12.4">1.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.12.12.12.5">346.78</td>
<td class="ltx_td ltx_align_center" id="A6.T11.12.12.12.1"><math alttext="1.39\times 10^{-75}" class="ltx_Math" display="inline" id="A6.T11.12.12.12.1.m1.1"><semantics id="A6.T11.12.12.12.1.m1.1a"><mrow id="A6.T11.12.12.12.1.m1.1.1" xref="A6.T11.12.12.12.1.m1.1.1.cmml"><mn id="A6.T11.12.12.12.1.m1.1.1.2" xref="A6.T11.12.12.12.1.m1.1.1.2.cmml">1.39</mn><mo id="A6.T11.12.12.12.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T11.12.12.12.1.m1.1.1.1.cmml">×</mo><msup id="A6.T11.12.12.12.1.m1.1.1.3" xref="A6.T11.12.12.12.1.m1.1.1.3.cmml"><mn id="A6.T11.12.12.12.1.m1.1.1.3.2" xref="A6.T11.12.12.12.1.m1.1.1.3.2.cmml">10</mn><mrow id="A6.T11.12.12.12.1.m1.1.1.3.3" xref="A6.T11.12.12.12.1.m1.1.1.3.3.cmml"><mo id="A6.T11.12.12.12.1.m1.1.1.3.3a" xref="A6.T11.12.12.12.1.m1.1.1.3.3.cmml">−</mo><mn id="A6.T11.12.12.12.1.m1.1.1.3.3.2" xref="A6.T11.12.12.12.1.m1.1.1.3.3.2.cmml">75</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.12.12.12.1.m1.1b"><apply id="A6.T11.12.12.12.1.m1.1.1.cmml" xref="A6.T11.12.12.12.1.m1.1.1"><times id="A6.T11.12.12.12.1.m1.1.1.1.cmml" xref="A6.T11.12.12.12.1.m1.1.1.1"></times><cn id="A6.T11.12.12.12.1.m1.1.1.2.cmml" type="float" xref="A6.T11.12.12.12.1.m1.1.1.2">1.39</cn><apply id="A6.T11.12.12.12.1.m1.1.1.3.cmml" xref="A6.T11.12.12.12.1.m1.1.1.3"><csymbol cd="ambiguous" id="A6.T11.12.12.12.1.m1.1.1.3.1.cmml" xref="A6.T11.12.12.12.1.m1.1.1.3">superscript</csymbol><cn id="A6.T11.12.12.12.1.m1.1.1.3.2.cmml" type="integer" xref="A6.T11.12.12.12.1.m1.1.1.3.2">10</cn><apply id="A6.T11.12.12.12.1.m1.1.1.3.3.cmml" xref="A6.T11.12.12.12.1.m1.1.1.3.3"><minus id="A6.T11.12.12.12.1.m1.1.1.3.3.1.cmml" xref="A6.T11.12.12.12.1.m1.1.1.3.3"></minus><cn id="A6.T11.12.12.12.1.m1.1.1.3.3.2.cmml" type="integer" xref="A6.T11.12.12.12.1.m1.1.1.3.3.2">75</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.12.12.12.1.m1.1c">1.39\times 10^{-75}</annotation><annotation encoding="application/x-llamapun" id="A6.T11.12.12.12.1.m1.1d">1.39 × 10 start_POSTSUPERSCRIPT - 75 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.21.6">
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.21.6.1">Residual</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.21.6.2">12.84</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.21.6.3">7002.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.21.6.4">NA</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.21.6.5">NA</td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.22.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T11.14.14.22.7.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="A6.T11.14.14.22.7.1.1">Pair Classification</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.22.7.2">Model Factor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.22.7.3">0.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.22.7.4">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.22.7.5">1.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.22.7.6">0.07</td>
</tr>
<tr class="ltx_tr" id="A6.T11.13.13.13">
<td class="ltx_td ltx_align_center" id="A6.T11.13.13.13.2">Domain Factor</td>
<td class="ltx_td ltx_align_center" id="A6.T11.13.13.13.3">249.19</td>
<td class="ltx_td ltx_align_center" id="A6.T11.13.13.13.4">1.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.13.13.13.5">11989.92</td>
<td class="ltx_td ltx_align_center" id="A6.T11.13.13.13.1"><math alttext="\approx 0" class="ltx_Math" display="inline" id="A6.T11.13.13.13.1.m1.1"><semantics id="A6.T11.13.13.13.1.m1.1a"><mrow id="A6.T11.13.13.13.1.m1.1.1" xref="A6.T11.13.13.13.1.m1.1.1.cmml"><mi id="A6.T11.13.13.13.1.m1.1.1.2" xref="A6.T11.13.13.13.1.m1.1.1.2.cmml"></mi><mo id="A6.T11.13.13.13.1.m1.1.1.1" xref="A6.T11.13.13.13.1.m1.1.1.1.cmml">≈</mo><mn id="A6.T11.13.13.13.1.m1.1.1.3" xref="A6.T11.13.13.13.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.13.13.13.1.m1.1b"><apply id="A6.T11.13.13.13.1.m1.1.1.cmml" xref="A6.T11.13.13.13.1.m1.1.1"><approx id="A6.T11.13.13.13.1.m1.1.1.1.cmml" xref="A6.T11.13.13.13.1.m1.1.1.1"></approx><csymbol cd="latexml" id="A6.T11.13.13.13.1.m1.1.1.2.cmml" xref="A6.T11.13.13.13.1.m1.1.1.2">absent</csymbol><cn id="A6.T11.13.13.13.1.m1.1.1.3.cmml" type="integer" xref="A6.T11.13.13.13.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.13.13.13.1.m1.1c">\approx 0</annotation><annotation encoding="application/x-llamapun" id="A6.T11.13.13.13.1.m1.1d">≈ 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.23.8">
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.23.8.1">Residual</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.23.8.2">145.31</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.23.8.3">6992.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.23.8.4">NA</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.23.8.5">NA</td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.24.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T11.14.14.24.9.1"><span class="ltx_text ltx_font_bold" id="A6.T11.14.14.24.9.1.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.24.9.2">Model Factor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.24.9.3">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.24.9.4">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.24.9.5">1.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T11.14.14.24.9.6">0.37</td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.14">
<td class="ltx_td" id="A6.T11.14.14.14.2"></td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.14.3">Domain Factor</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.14.4">0.08</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.14.5">1.00</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.14.6">253.87</td>
<td class="ltx_td ltx_align_center" id="A6.T11.14.14.14.1"><math alttext="\approx 0" class="ltx_Math" display="inline" id="A6.T11.14.14.14.1.m1.1"><semantics id="A6.T11.14.14.14.1.m1.1a"><mrow id="A6.T11.14.14.14.1.m1.1.1" xref="A6.T11.14.14.14.1.m1.1.1.cmml"><mi id="A6.T11.14.14.14.1.m1.1.1.2" xref="A6.T11.14.14.14.1.m1.1.1.2.cmml"></mi><mo id="A6.T11.14.14.14.1.m1.1.1.1" xref="A6.T11.14.14.14.1.m1.1.1.1.cmml">≈</mo><mn id="A6.T11.14.14.14.1.m1.1.1.3" xref="A6.T11.14.14.14.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T11.14.14.14.1.m1.1b"><apply id="A6.T11.14.14.14.1.m1.1.1.cmml" xref="A6.T11.14.14.14.1.m1.1.1"><approx id="A6.T11.14.14.14.1.m1.1.1.1.cmml" xref="A6.T11.14.14.14.1.m1.1.1.1"></approx><csymbol cd="latexml" id="A6.T11.14.14.14.1.m1.1.1.2.cmml" xref="A6.T11.14.14.14.1.m1.1.1.2">absent</csymbol><cn id="A6.T11.14.14.14.1.m1.1.1.3.cmml" type="integer" xref="A6.T11.14.14.14.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T11.14.14.14.1.m1.1c">\approx 0</annotation><annotation encoding="application/x-llamapun" id="A6.T11.14.14.14.1.m1.1d">≈ 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T11.14.14.25.10">
<td class="ltx_td ltx_border_bb" id="A6.T11.14.14.25.10.1"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T11.14.14.25.10.2">Residual</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T11.14.14.25.10.3">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T11.14.14.25.10.4">6.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T11.14.14.25.10.5">NA</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T11.14.14.25.10.6">NA</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Spearman's rank correlation coefficients between the performance rankings of various embedding models on two benchmark datasets: the Massive Text Embedding Benchmark (MTEB) and the Finance Massive Text Embedding Benchmark (FinMTEB).  The analysis considers seven different NLP tasks.  The p-values associated with each correlation indicate whether the observed correlation is statistically significant.  In this case, all p-values are above the standard significance threshold, suggesting that there is no statistically significant relationship between a model's performance on MTEB and its performance on FinMTEB. This implies that performance on a general-purpose benchmark (MTEB) does not reliably predict performance on a domain-specific benchmark (FinMTEB), highlighting the importance of domain-specific evaluation.
> <details>
> <summary>read the caption</summary>
> Table 10: Spearman’s correlation of embedding models’ performance on MTEB and FinMTEB across different tasks. The p-value indicates that all correlations are statistically insignificant, suggesting a lack of evidence for a relationship between embedding model performance on the two benchmarks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.10990/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10990/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}