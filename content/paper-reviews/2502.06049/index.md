---
title: "LM2: Large Memory Models"
summary: "LM2: Large Memory Models enhance Transformers by adding an auxiliary memory module, significantly improving multi-step reasoning and long-context information synthesis. "
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Convergence Labs Ltd",]
showSummary: true
date: 2025-02-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06049 {{< /keyword >}}
{{< keyword icon="writer" >}} Jikun Kang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06049" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06049" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06049/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) like Transformers struggle with long-context reasoning and complex multi-step inference. Existing solutions often sacrifice generalization or introduce significant computational overhead. This paper presents LM2, a novel Transformer architecture integrating an auxiliary memory module.



LM2 enhances the standard Transformer architecture by adding a complementary memory pathway. This memory module interacts with input tokens via cross-attention and updates dynamically via gating mechanisms. LM2 outperforms existing models on the BABILong benchmark (designed for memory-intensive tasks), showing significant improvements in multi-hop reasoning, numerical reasoning, and long-context question answering.  Importantly, LM2 also achieves performance gains on the MMLU dataset, demonstrating that its memory enhancements do not come at the cost of general performance. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LM2 significantly outperforms existing memory-augmented models and baselines on long-context reasoning tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The LM2 memory module enhances performance without hindering general capabilities, as shown by improvements on general benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The design of the LM2 memory module, including gated updates and interaction with input embeddings, is computationally efficient and scalable, making it practical for real-world applications.  {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces a novel approach to enhance the capabilities of Transformer models, addressing limitations in handling long contexts and complex reasoning.  **The LM2 architecture, with its auxiliary memory module, offers a significant improvement in performance on memory-intensive tasks while maintaining generalizability**. This work could significantly impact research in natural language processing, impacting advancements in various applications, and opening up avenues for further exploration into memory-augmented Transformer architectures. 

------
#### Visual Insights



![](https://arxiv.org/html/2502.06049/extracted/6175910/figs/lm2_wf.png)

> 🔼 The figure illustrates the architecture of the Large Memory Model (LM2).  It shows how a memory bank interacts with the standard Transformer decoder blocks.  The memory bank receives input and is updated using input, output, and forget gates, influencing the main information flow through cross-attention.  A gray curve depicts the standard Transformer's attention flow, while a pink curve represents the additional memory flow that augments the original pathway.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of LM2 overall architecture. It consists of a separate memory bank, which updates the main information flow through cross attention, and is updated using the input (ℐℐ\mathcal{I}caligraphic_I), output (𝒪𝒪\mathcal{O}caligraphic_O), and forget (ℱℱ\mathcal{F}caligraphic_F) gates. For the information flow from one block to another, the gray curve shows the normal attention flow and the pink curve shows the extra memory flow.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.3.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.3.2.1.1">model</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.2">qa1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.3">qa2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.4">qa3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.5">qa4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.6">qa5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.7">qa6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.8">qa7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.9">qa8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.10">qa9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.2.1.11">qa10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.2.1.12">Avg.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S3.T1.3.3.2.1">0K</th>
</tr>
<tr class="ltx_tr" id="S3.T1.3.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.3.4.3.1">Llama-3.2-1.2B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.2">54.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.3">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.4">29.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.5">62.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.6">59.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.7">49.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.8">14.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.9">52.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.10">41.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.4.3.11">22.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.4.3.12">40.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.5.4.1">vanilla-Llama-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.2">86.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.3">57.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.4">46.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.5">59.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.6">85.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.7">83.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.8">95.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.9">79.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.10">83.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.5.4.11">77.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.5.4.12">75.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.6.5.1">RMT-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.2">85.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.3">49.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.4">49.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.5">81.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.6">95.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.7">84.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.8">82.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.9">78.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.10">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.6.5.11">76.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.6.5.12">76.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.7.6.1">LM2-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.2.1">99.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.3.1">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.4.1">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.5.1">88.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.6.1">98.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.7.1">95.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.8"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.8.1">96.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.9"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.9.1">97.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.10"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.10.1">99.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.7.6.11"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.11.1">94.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.7.6.12"><span class="ltx_text ltx_font_bold" id="S3.T1.3.7.6.12.1">92.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S3.T1.3.8.7.1">1K</th>
</tr>
<tr class="ltx_tr" id="S3.T1.3.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.3.9.8.1">Llama-3.2-1.2B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.2">48.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.3">22.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.4">24.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.5">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.6">69.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.7">49.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.8">9.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.9">31.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.10">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.9.8.11">33.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.9.8.12">39.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.10.9.1">Llama-3.2-1.2B-RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.2">51.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.3">14.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.4">19.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.5">59.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.6">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.7">49.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.8">10.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.9">38.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.10">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.10.9.11">46.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.10.9.12">40.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.11.10.1">vanilla-Llama-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.2">31.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.3">21.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.4">44.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.5">43.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.6">71.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.7">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.8">71.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.9">40.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.10">67.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.11.10.11">58.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.11.10.12">50.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.12.11.1">RMT-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.2">35.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.3">26.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.4">29.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.5">33.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.6">61.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.7">50.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.8">83.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.9">41.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.10">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.12.11.11">53.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.12.11.12">47.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.13.12.1">LM2-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.2.1">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.3.1">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.4.1">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.5.1">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.6.1">91.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.7.1">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.8"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.8.1">96.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.9"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.9.1">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.10"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.10.1">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.13.12.11"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.11.1">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.13.12.12"><span class="ltx_text ltx_font_bold" id="S3.T1.3.13.12.12.1">78.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S3.T1.3.14.13.1">2K</th>
</tr>
<tr class="ltx_tr" id="S3.T1.3.15.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.3.15.14.1">Llama-3.2-1.2B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.2">44.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.3">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.4">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.15.14.5.1">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.6">64.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.7">52.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.8">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.9">24.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.10">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.15.14.11">42.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.15.14.12">38.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.16.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.16.15.1">Llama-3.2-1.2B-RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.2">52.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.3">11.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.4">12.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.5">49.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.6">75.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.7">48.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.8">5.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.9">33.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.10">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.16.15.11">43.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.16.15.12">37.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.17.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.17.16.1">vanilla-Llama-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.2">25.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.3">22.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.4">37.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.5">34.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.6">58.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.7">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.8">65.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.9">38.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.10">66.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.17.16.11">58.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.17.16.12">46.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.18.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.18.17.1">RMT-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.2">44.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.3">21.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.4">43.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.5">41.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.6">79.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.7">47.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.8">78.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.9">41.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.10">69.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.18.17.11">51.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.18.17.12">51.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.19.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.19.18.1">LM2-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.2.1">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.3.1">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.4.1">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.5">43.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.6.1">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.7.1">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.8"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.8.1">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.9"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.9.1">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.10"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.10.1">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.19.18.11"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.11.1">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.19.18.12"><span class="ltx_text ltx_font_bold" id="S3.T1.3.19.18.12.1">65.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.20.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S3.T1.3.20.19.1">4K</th>
</tr>
<tr class="ltx_tr" id="S3.T1.3.21.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.3.21.20.1">Llama-3.2-1.2B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.2">37.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.3">16.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.4">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.5">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.6">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.7">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.8">14.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.9">27.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.10">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.21.20.11">32.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.21.20.12">36.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.22.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.22.21.1">Llama-3.2-1.2B-RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.2">47.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.3">3.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.4">16.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.22.21.5.1">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.6">68.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.7">58.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.8">3.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.9">36.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.10">45.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.22.21.11">39.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.22.21.12">37.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.23.22">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.23.22.1">vanilla-Llama-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.2">21.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.3">18.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.4">38.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.5">28.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.6">55.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.7">61.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.8">64.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.9">35.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.10">49.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.23.22.11">53.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.23.22.12">42.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.24.23">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.24.23.1">RMT-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.2">24.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.3">20.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.4">22.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.5">24.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.6">28.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.7">46.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.8">75.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.9">35.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.10"><span class="ltx_text ltx_font_bold" id="S3.T1.3.24.23.10.1">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.24.23.11">45.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.24.23.12">38.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.25.24">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.25.24.1">LM2-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.2.1">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.3.1">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.4.1">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.5">34.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.6.1">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.7.1">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.8"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.8.1">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.9"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.9.1">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.10">62.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.25.24.11"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.11.1">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.25.24.12"><span class="ltx_text ltx_font_bold" id="S3.T1.3.25.24.12.1">55.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="S3.T1.3.1.1">AVG. Length <math alttext="\geq" class="ltx_Math" display="inline" id="S3.T1.3.1.1.m1.1"><semantics id="S3.T1.3.1.1.m1.1a"><mo id="S3.T1.3.1.1.m1.1.1" xref="S3.T1.3.1.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.1.1.m1.1b"><geq id="S3.T1.3.1.1.m1.1.1.cmml" xref="S3.T1.3.1.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.1.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.1.1.m1.1d">≥</annotation></semantics></math>8K</th>
</tr>
<tr class="ltx_tr" id="S3.T1.3.26.25">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.3.26.25.1">Llama-3.2-1.2B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.2">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.3">8.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.4">17.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.5">27.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.6">36.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.7">49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.8">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.9">12.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.10">48.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.26.25.11">41.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.26.25.12">28.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.27.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.27.26.1">Llama-3.2-1.2B-RAG</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.2">29.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.3">1.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.4">5.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.27.26.5.1">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.27.26.6.1">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.27.26.7.1">49.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.8">4.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.9">22.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.10">46.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.27.26.11">36.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.27.26.12">32.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.28.27">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.28.27.1">vanilla-Llama-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.2">11.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.3">15.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.4">21.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.5">14.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.6">31.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.7">44.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.8">63.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.9">33.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.10">42.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.28.27.11">36.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.28.27.12">31.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.29.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.3.29.28.1">RMT-1.7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.2">17.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.3">14.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.4">20.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.5">22.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.6">20.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.7">47.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.8">73.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.9">34.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.10">62.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.29.28.11"><span class="ltx_text ltx_font_bold" id="S3.T1.3.29.28.11.1">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.29.28.12">35.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.30.29">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S3.T1.3.30.29.1">LM2-1.7B</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.30.29.2.1">23.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.30.29.3.1">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.30.29.4.1">24.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.5">24.0</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.6">38.8</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.7">47.3</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.8"><span class="ltx_text ltx_font_bold" id="S3.T1.3.30.29.8.1">92.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.9"><span class="ltx_text ltx_font_bold" id="S3.T1.3.30.29.9.1">37.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.10"><span class="ltx_text ltx_font_bold" id="S3.T1.3.30.29.10.1">53.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.30.29.11">42.0</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.30.29.12"><span class="ltx_text ltx_font_bold" id="S3.T1.3.30.29.12.1">39.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive evaluation of different large language models (LLMs) on the BABILong dataset, a benchmark designed to assess reasoning capabilities with long contexts.  The table shows the performance of various models across different context lengths, ranging from short contexts (0K tokens, equivalent to the original bAbI dataset) to extremely long contexts (up to 128K tokens).  Multiple model variations are compared, including a baseline Llama model, a memory-augmented version (RMT), and the proposed LM2 model.  The results are broken down by individual questions (qa1-qa10), and an average performance score is also shown. Due to space limitations, results for very long contexts (8K, 16K, 32K, 64K, and 128K tokens) are aggregated into a single average metric, with the full details available in Appendix B.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance on the BABILong dataset: All models are evaluated on various context lengths ranging from 0K, 1K, 2K, and 4K to an aggregated average length of ≥8⁢Kabsent8𝐾\geq 8K≥ 8 italic_K. Qa stands for various subsets. Due to page limits, we aggregate the results for 8K, 16K, 32K, 64K, and 128K into a single metric, with detailed results provided in Appendix B.
> </details>





### In-depth insights


#### LM2's Memory Flow
LM2's memory flow is a crucial aspect of its design, **dynamically interacting with the Transformer's original information flow** rather than replacing it.  This design choice allows LM2 to leverage the strengths of the Transformer architecture while adding the benefits of explicit memory. The memory information is carefully integrated using cross-attention, allowing the model to retrieve and utilize relevant past information.  **Learnable gates (input, forget, and output) control the flow of information**, ensuring that the memory is updated efficiently and relevantly, while also preventing the model from overwriting or forgetting essential information. The interaction is carefully managed via skip connections, ensuring that the standard attention mechanisms are not disrupted, maintaining the model's general-purpose capabilities and enhancing performance in demanding tasks. The system's efficiency comes from its ability to focus on the most salient past information and avoids the inherent problems of simply feeding previous answers as prompts, which leads to degraded performance.

#### Memory Updates
The section on "Memory Updates" would detail the mechanisms by which the memory module in the LM2 model is dynamically updated.  This is crucial because it addresses a key limitation of previous memory-augmented models: the inability to efficiently manage and update long-term context over extended sequences.  **The authors likely describe a gated mechanism**, similar to those found in LSTMs, involving input, forget, and output gates.  **The input gate determines how much new information is added**,  filtering out noise or redundant details.  **The forget gate controls which information is discarded**, preventing the overwriting of crucial long-term facts.  **Finally, the output gate regulates the flow of memory information** into the main Transformer network.  This carefully controlled update process is key to LM2's success, balancing the incorporation of new information with the preservation of relevant context, a significant improvement over simply appending or summarizing previous responses.

#### BABILong Results
The BABILong results section would be crucial in evaluating the Large Memory Model (LM2)'s performance.  It would likely present quantitative results comparing LM2 against various baselines (e.g., standard Transformers, other memory-augmented models) across multiple metrics relevant to long-context reasoning tasks.  Key aspects to analyze would include **performance trends across different context lengths**, highlighting how LM2's performance changes as the amount of input text increases. This is important because the primary goal of LM2 is to overcome limitations in handling long contexts.  Furthermore, a breakdown of performance by task type within BABILong would be vital.  **BABILong likely includes diverse tasks requiring various levels of reasoning and memory access.**  Analyzing LM2's strengths and weaknesses across these tasks would provide a nuanced understanding of its capabilities and limitations. Finally, **statistical significance testing** should accompany any reported performance differences, ensuring the results are robust and not simply due to random variation. The discussion of these findings would likely highlight the impact of the memory module on enabling LM2 to effectively utilize long-term information, drawing connections to the model's architecture and design choices.

#### MMLU Performance
The MMLU (Massive Multitask Language Understanding) performance section of the research paper is crucial for evaluating the robustness and generalization capabilities of the proposed LM2 model beyond specialized memory tasks.  **A key insight would be the comparison of LM2's performance against a vanilla Transformer model and a memory-augmented model (e.g., RMT) on MMLU.**  This comparison would reveal whether incorporating the memory module enhances general language understanding or hinders performance in diverse tasks.  **A significant finding would be if LM2 demonstrates superior or comparable performance on MMLU compared to the vanilla Transformer, showing that the memory module doesn't compromise its ability to handle general tasks.**  Conversely, if performance is significantly lower on MMLU than the vanilla model, it suggests that the added memory mechanism interferes with generalization abilities.  The detailed breakdown of results across various MMLU subjects and difficulty levels will offer valuable insights into the model's strengths and weaknesses. **Analyzing the results could reveal subject-specific impacts of the memory module, possibly revealing which types of reasoning benefit the most or are negatively affected.**  Overall, the MMLU results section should offer a complete assessment of the LM2 model's practical applicability and general language understanding beyond its targeted strengths in memory-intensive tasks.

#### Memory Analysis
A dedicated memory analysis section in a research paper would ideally delve into several key aspects.  It should begin by describing the **memory architecture** itself, detailing its design choices and how it integrates with the core model architecture.  A crucial element would be the **methodology** used to analyze the memory's contents and behavior.  This may involve techniques like probing the memory representations with specifically designed prompts or leveraging visualization methods to understand internal activations.  The analysis should present concrete results, showing **quantitative metrics** like accuracy improvements or efficiency gains attributable to the memory module.  Qualitative insights are equally important; this section should discuss what types of information the memory effectively stores and how the memory's contents evolve during the processing of complex tasks.  Finally, the analysis must **interpret the findings**, explaining how the observed results relate to the overarching goals of the research and contribute to a deeper understanding of memory augmentation in models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.06049/extracted/6175910/figs/gate.png)

> 🔼 This figure illustrates the memory module's operation within a single decoding block of the LM2 model.  The memory module is composed of three phases:  the input phase (green), forget phase (blue), and output phase (red). The input phase determines how much new information is added to the memory bank.  The forget phase decides which parts of the existing memory are discarded. Finally, the output phase regulates how much memory information is passed to the next decoder layer. The figure visually represents these three phases as separate components interacting with the input and output embeddings of the decoder block.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of how memory module works inside of each decoding block, where blue, green, and red box corresponds to forget, input, and output phase.
> </details>



![](https://arxiv.org/html/2502.06049/x1.png)

> 🔼 This radar chart visualizes the performance of different models on the BABILong benchmark, categorized by various reasoning capabilities.  Each axis represents a specific reasoning task: Single-step Reasoning, Multi-step Reasoning, Relation Tracking, Basic Queries, and Negation & Uncertainty. The length of each spoke indicates the model's performance on that task. The chart allows for a direct comparison of the relative strengths and weaknesses of each model across different reasoning skills.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance on BABILong benchmark with different capabilities.
> </details>



![](https://arxiv.org/html/2502.06049/extracted/6175910/figs/example_.png)

> 🔼 Figure 4 shows an example of a question from the MMLU benchmark used to evaluate the LM2 model.  The question is presented in a few-shot learning setting, meaning a few examples are given before the actual question.  Critically, useful information relevant to answering the target question is deliberately included within one of the example questions. This experimental setup allows the researchers to analyze how the memory module within the LM2 model focuses on and retrieves relevant information when answering the question. By strategically placing relevant information within the examples, the researchers can better understand how the memory module functions during the question-answering process.
> <details>
> <summary>read the caption</summary>
> Figure 4: We sample a question from MMLU to test the LM2 in a few-shot fashion. To study how the memory module focuses on relevant information, we place useful information inside one of the few-shot examples.
> </details>



![](https://arxiv.org/html/2502.06049/x2.png)

> 🔼 This figure displays the results of an experiment evaluating the impact of integrating a memory module into different numbers of decoder blocks within a transformer-based language model. The x-axis represents the number of training tokens (in billions), and the y-axis shows the perplexity scores. Multiple lines are plotted, each representing a different configuration where the memory module is included in varying numbers of initial decoder blocks (1, 6, 12, or all 16). The purpose is to analyze how incorporating the memory mechanism in different layers of the architecture affects model performance and training efficiency. The results show that including the memory module in more blocks leads to lower perplexity, but that including it in only one block significantly slows training.
> <details>
> <summary>read the caption</summary>
> Figure 5: We evaluate variations of integrating memory within the decoder blocks. The number indicates how many of the initial decoder blocks include the memory module, as we found that the order of implementing memory modules does not affect performance.
> </details>



![](https://arxiv.org/html/2502.06049/x3.png)

> 🔼 This figure shows cross-attention heatmaps between input tokens and memory slots.  Panel (a) displays the heatmap *before* any memory updates have been applied during the model's inference process.  This visualization helps to understand which parts of the input text are initially most strongly associated with different memory locations. The heatmap uses color intensity to represent the strength of the cross-attention weights, with darker colors indicating stronger associations.
> <details>
> <summary>read the caption</summary>
> (a) Cross-attention heatmaps before memory update.
> </details>



![](https://arxiv.org/html/2502.06049/x4.png)

> 🔼 This figure shows a heatmap visualization of cross-attention weights between input tokens and memory slots in the LM2 model *after* the memory has been updated. The heatmap displays the attention weights, indicating the strength of the relationships between different input tokens and memory slots.  The x-axis represents the memory slots, ordered numerically, while the y-axis represents the input tokens. Warmer colors (e.g., red) represent stronger attention weights, signifying a greater influence of the memory slot on the corresponding input token, while cooler colors (e.g., blue) represent weaker attention weights. Comparing this figure with Figure 6a (before memory update) helps illustrate the dynamic nature of the memory's interaction with the input during the generation process. This change demonstrates the model's ability to adapt memory focus based on context.
> <details>
> <summary>read the caption</summary>
> (b) Cross-attention heatmaps after memory update.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.1.1">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.4.1.1.1"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.1.1.2"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.1.3">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.4.1.1.3.1">
<tr class="ltx_tr" id="S4.T2.4.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.1.1.3.1.1.1">vanilla</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.1.1.3.1.2.1">Llama</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.1.4">RMT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.1.5">LM2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.2.2.1" rowspan="4"><span class="ltx_text" id="S4.T2.4.2.2.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.4.2.2.1.1.1">
<span class="ltx_tr" id="S4.T2.4.2.2.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.2.2.1.1.1.1.1">Subject</span></span>
<span class="ltx_tr" id="S4.T2.4.2.2.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.2.2.1.1.1.2.1">Category</span></span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.2.2.2">STEM</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.2.2.3">27.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.2.2.4">25.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.2.2.5.1">28.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.3.3.1">Humanities</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.3.3.2">28.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.3.3.3">26.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.3.3.4.1">32.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.4.4.1">Social Sciences</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.2">29.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.3">27.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.1">31.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.5.5.1">Others</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.5.5.2">27.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.5.5.3">27.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.5.4.1">28.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.6.6.1" rowspan="4"><span class="ltx_text" id="S4.T2.4.6.6.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.4.6.6.1.1.1">
<span class="ltx_tr" id="S4.T2.4.6.6.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.6.6.1.1.1.1.1">Difficulty</span></span>
<span class="ltx_tr" id="S4.T2.4.6.6.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.6.6.1.1.1.2.1">Level</span></span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.6.6.2">High School</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.6.3">28.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.6.4">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.6.6.5.1">30.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.7.7.1">College</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.7.2">27.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.7.3">27.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.7.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.7.7.4.1">29.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.8.8.1">Professional</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.8.8.2">27.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.8.8.3">26.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.8.8.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.8.8.4.1">27.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.9.9.1">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.4.9.9.1.1">
<tr class="ltx_tr" id="S4.T2.4.9.9.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.9.9.1.1.1.1">General</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.9.9.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.9.9.1.1.2.1">Knowledge</td>
</tr>
</table>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.9.9.2">27.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.9.9.3">25.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.9.9.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.9.9.4.1">28.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" colspan="2" id="S4.T2.4.10.10.1">Average</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.4.10.10.2">28.0</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.4.10.10.3">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.4.10.10.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.10.10.4.1">29.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Large Memory Model (LM2) and baseline models on the Massive Multitask Language Understanding (MMLU) benchmark.  MMLU tests a wide range of subjects (STEM, Humanities, Social Sciences, and Others) and difficulty levels (High School, College, Professional, and General Knowledge). The table categorizes the MMLU dataset by subject and difficulty level to provide a more detailed performance comparison, highlighting how the models perform across different domains and challenge levels. This allows for a nuanced evaluation of the LM2's ability to generalize across various tasks and difficulty levels compared to the baseline models.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance on MMLU dataset. For better visualization, the dataset is categorized on two criteria - subject and difficulty.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.4.1.1.3.1">
<tr class="ltx_tr" id="S4.T2.4.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.1.1.3.1.1.1">vanilla</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.1.1.3.1.2.1">Llama</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed breakdown of the BABILong benchmark results.  It shows the performance of several models across various tasks within the BABILong dataset, categorized by context length.  The models evaluated include Llama-3.2-1.2B, Llama-3.2-1.2B-RAG (Retrieval Augmented Generation), vanilla-Llama-1.7B, RMT-1.7B (Recurrent Memory Transformer), and LM2-1.7B.  The context lengths range from 0K (equivalent to the original bAbI dataset) to 128K tokens.  The table allows for a granular comparison of model performance across different task types and context lengths, revealing trends in performance for both memory-intensive and non-memory-intensive models.
> <details>
> <summary>read the caption</summary>
> Table 3: Detailed performance of BABILong benchmark
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06049/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06049/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}