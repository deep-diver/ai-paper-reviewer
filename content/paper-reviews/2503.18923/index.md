---
title: "Video SimpleQA: Towards Factuality Evaluation in Large Video Language Models"
summary: "Video SimpleQA: A New Benchmark for Factuality Evaluation in Large Video Language Models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 MBZUAI",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18923 {{< /keyword >}}
{{< keyword icon="writer" >}} Meng Cao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18923" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18923" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18923/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Video Language Models (LVLMs) show great promise for multi-modal understanding, but their ability to ground information factually in video contexts is still a challenge. Current video benchmarks often involve subjective reasoning, lack definitive answers, or don't require external knowledge. This makes it hard to evaluate if these models truly grasp real-world facts when processing videos.



To address this, the paper introduces **Video SimpleQA**, a new benchmark designed to test the factuality of LVLMs. It requires models to integrate external knowledge, answer fact-seeking questions with definitive, short answers, and provide external verification sources. The benchmark reveals that current LVLMs struggle with factuality, even with test-time compute or RAG. **Video SimpleQA** serves as a critical tool for directing LVLM development toward verifiable real-world understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current LVLMs show deficiencies in factual adherence, especially open-source models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Test-time compute methods offer limited gains in improving factuality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Retrieval-Augmented Generation (RAG) improves factuality but increases computational cost. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces **Video SimpleQA**, a new benchmark that directly assesses factual grounding in LVLMs, which is critical for trustworthy AI. The findings highlight current limitations & guide future work toward more reliable & factual video understanding, fostering responsible AI development.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18923/x2.png)

> 🔼 Figure 1 illustrates three key aspects of the Video SimpleQA benchmark.  Panel (a) presents a hierarchical taxonomy showing how different question types are categorized within the benchmark. Panel (b) displays examples from existing video question answering benchmarks (KnowIT-VQA, WorldQA, Video-MMMU, MMVU, and MMWorld), highlighting their reliance on knowledge that may require subjective interpretation or hypothetical reasoning. In contrast, Panel (c) showcases examples from the Video SimpleQA benchmark, emphasizing fact-seeking questions with definitive, short answers that can be verified against external sources. This contrast highlights the key improvements introduced by Video SimpleQA.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) The taxonomy of Video SimpleQA benchmark; (b) Illustrations of existing knowledge-based video benchmarks [21, 84, 30, 85, 28] which may involve hypothetical or subjective reasoning; (c) Illustrations of our Video SimpleQA benchmark with the fact-seeking question and definitive & short-form answer with external-source verified.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S1.T1.5.1.1.1.1" rowspan="2" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.1.1.1">Benchmarks</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.5.1.1.1.2" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.1.2.1">Video</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.5.1.1.1.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.1.3.1">Knowledge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.5.1.1.1.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.1.4.1">Factuality</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.5.1.1.1.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.1.5.1">Evidence</span></th>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.5.1.2.2.1" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.2.2.1.1">Domain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.5.1.2.2.2" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.2.2.2.1">driven</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S1.T1.5.1.2.2.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.2.2.3.1">based</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S1.T1.5.1.2.2.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.2.2.4.1">Source</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.5.1.3.1.1" style="padding:0.5pt 2.5pt;">Video-MME <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.3.1.2" style="padding:0.5pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.3.1.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.3.1.3.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.3.1.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.3.1.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.5.1.3.1.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.3.1.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.4.2.1" style="padding:0.5pt 2.5pt;">MMBench-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.4.2.2" style="padding:0.5pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.4.2.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.4.2.3.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.4.2.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.4.2.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.4.2.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.4.2.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.5.3.1" style="padding:0.5pt 2.5pt;">Video-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.3.2" style="padding:0.5pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.3.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.5.3.3.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.3.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.5.3.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.5.3.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.5.3.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.6.4.1" style="padding:0.5pt 2.5pt;">TempCompass <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.4.2" style="padding:0.5pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.4.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.6.4.3.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.4.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.6.4.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.6.4.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.6.4.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.7.5.1" style="padding:0.5pt 2.5pt;">MVBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.5.2" style="padding:0.5pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.5.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.7.5.3.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.5.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.7.5.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.7.5.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.7.5.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.8.6.1" style="padding:0.5pt 2.5pt;">AutoEval-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.8.6.2" style="padding:0.5pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.8.6.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.8.6.3.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.8.6.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.8.6.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.8.6.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.8.6.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.9.7.1" style="padding:0.5pt 2.5pt;">Video-MMMU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.9.7.2" style="padding:0.5pt 2.5pt;">Professional</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.9.7.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.9.7.3.1" style="color:#336600;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.9.7.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.9.7.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.9.7.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.9.7.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.10.8.1" style="padding:0.5pt 2.5pt;">MMVU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.8.2" style="padding:0.5pt 2.5pt;">Discipline</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.8.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.10.8.3.1" style="color:#336600;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.8.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.10.8.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.10.8.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.10.8.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.11.9.1" style="padding:0.5pt 2.5pt;">MMWorld <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.11.9.2" style="padding:0.5pt 2.5pt;">Discipline</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.11.9.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.11.9.3.1" style="color:#336600;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.11.9.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.11.9.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.11.9.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.11.9.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.12.10.1" style="padding:0.5pt 2.5pt;">WorldQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.12.10.2" style="padding:0.5pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.12.10.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.12.10.3.1" style="color:#336600;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.12.10.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.12.10.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.12.10.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.12.10.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.5.1.13.11.1" style="padding:0.5pt 2.5pt;">KnowIT-VQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.13.11.2" style="padding:0.5pt 2.5pt;">TV shows</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.13.11.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.13.11.3.1" style="color:#336600;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.13.11.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.13.11.4.1" style="color:#CC0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.5.1.13.11.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.13.11.5.1" style="color:#CC0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S1.T1.5.1.14.12.1" style="padding:0.5pt 2.5pt;">
<span class="ltx_text ltx_font_typewriter" id="S1.T1.5.1.14.12.1.1">Video</span> <span class="ltx_text ltx_font_typewriter" id="S1.T1.5.1.14.12.1.2">SimpleQA</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.14.12.2" style="padding:0.5pt 2.5pt;">Open</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.14.12.3" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.14.12.3.1" style="color:#336600;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.14.12.4" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.14.12.4.1" style="color:#336600;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S1.T1.5.1.14.12.5" style="padding:0.5pt 2.5pt;"><span class="ltx_text" id="S1.T1.5.1.14.12.5.1" style="color:#336600;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares Video SimpleQA with other existing video benchmarks across four key aspects: the type of videos used (open-domain vs. discipline-specific), whether the benchmark emphasizes knowledge integration beyond the video's explicit content, whether the focus is on evaluating factuality (correctness of generated content), and whether supporting evidence is provided for the answers.  It highlights the unique contributions of Video SimpleQA in addressing the limitations of previous benchmarks regarding factuality evaluation in video.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparisons with existing video benchmarks regarding the video domain, their knowledge-driven focus, emphasis on factuality, and provision of supporting evidence.
> </details>





### In-depth insights


#### Factuality Deficit
The notion of a "factuality deficit" in large language models (LLMs) is critically important. It highlights a core challenge: ensuring that AI-generated content aligns with verifiable truths and credible sources. This deficit arises from LLMs' reliance on pattern recognition and statistical relationships, which can lead to the generation of outputs that are internally consistent but factually incorrect. **Addressing this deficit** is vital for building trustworthy AI systems, especially in domains where accuracy is paramount. **Improving factuality requires** integrating external knowledge sources, enhancing reasoning capabilities, and developing robust verification mechanisms. This is not just a matter of technical improvement; it is also about establishing ethical guidelines and responsible AI development practices, **ultimately** promoting user trust.

#### RAG Efficiency Gap
The "RAG Efficiency Gap," as I interpret it, highlights the tension between enhanced performance and computational cost when employing Retrieval-Augmented Generation (RAG). RAG improves results by grounding generations in external knowledge, addressing limitations of models trained on fixed datasets. **However, retrieving and processing external data adds inference time overhead.** This presents a trade-off: models gain factuality and depth, but at the expense of speed and efficiency. A key challenge is minimizing this gap, finding methods to optimize retrieval, reduce processing time, and maintain accuracy. This requires innovative solutions in indexing, search algorithms, and potentially model architectures designed for efficient knowledge integration, which can allow LVLM to maintain real-time performance without factual mistakes. **Closing the RAG Efficiency Gap will be crucial to wider adoption of the model**

#### Overconfidence Bias
The paper highlights a significant issue of **overconfidence bias** in Large Video Language Models (LVLMs). Despite the models' capacity to generate responses, they often exhibit systematic overconfidence, especially in the absence of verified factual grounding. **LVLMs tend to provide answers even when their knowledge is insufficient**, and this tendency is quantified in the study by comparing the number of incorrect responses vs. the number of cases in which the model abstains. Such overconfidence underscores the importance of calibration; the models should ideally "know what they know", but the alignment between confidence scores and the actual likelihood of correctness is lacking. The Brier score analysis confirms this misalignment, showing a deviation from ideal calibration. These observations point to a critical need for improving the factuality and reliability of LVLMs.

#### Temporal Reasoning
The paper underscores the **critical role of temporal reasoning** in video understanding, moving beyond static, single-frame analysis. It highlights the benchmark's design to necessitate both **short-term and long-term temporal comprehension**, with specific temporal understanding definitions to categorize question-answer pairs. Results emphasize the significant **performance decline for videos requiring long-term context**, suggesting that current LVLMs struggle with maintaining factual accuracy when temporal dependencies are extended.

#### External Verifiable
**External verification** is crucial for ensuring the reliability of information. By relying on **independent sources**, we can mitigate biases and inaccuracies. **Fact-checking organizations** and **expert reviews** play a vital role in validating claims. **Transparent methodologies** and **source citations** enhance credibility. **Cross-referencing information** from multiple reputable sources strengthens confidence. **Peer review** in academic research helps to identify flaws and improve the quality of studies. **Data provenance** tracking ensures that the origin and transformations of data are documented. **Auditing processes** can verify compliance with standards and regulations. These combined approaches are essential for promoting trustworthy content.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18923/x3.png)

> 🔼 This figure showcases several examples from the Video SimpleQA benchmark dataset, highlighting the challenges involved in evaluating the factuality of Large Video Language Models (LVLMs).  Each example shows a video still, a question about the video, the correct answer (ground truth), and the responses generated by three different LVLMs (GPT-40, Gemini-1.5-Pro, and Qwen-2.5-VL-72B).  The responses illustrate the varying levels of accuracy and confidence exhibited by the LVLMs in answering fact-based questions related to videos. The discrepancies between the LVLMs' answers and the ground truth demonstrate the need for a comprehensive benchmark like Video SimpleQA to evaluate the factuality of LVLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Sampled examples in Video SimpleQA and the responses of typical LVLMs [53, 62, 5].
> </details>



![](https://arxiv.org/html/2503.18923/x4.png)

> 🔼 Figure 3 illustrates the three-stage pipeline for creating the Video SimpleQA dataset.  First, videos are collected from Wikimedia Commons and their associated encyclopedic descriptions are gathered via a Retrieval-Augmented Generation (RAG) process.  Second, a two-stage QA annotation process is undertaken: 1) an iterative LLM-based approach for initial QA pair generation, refined by 2) human-in-the-loop verification.  Finally, a quality control phase incorporates difficulty filtering and human cross-verification to ensure high-quality QA pairs. 
> <details>
> <summary>read the caption</summary>
> Figure 3: An overview of the construction pipeline of Video SimpleQA including the video & encyclopedia collection (Sec. 3.1), QA annotation (Sec. 3.2), and quality control (Sec. 3.3).
> </details>



![](https://arxiv.org/html/2503.18923/x5.png)

> 🔼 This figure illustrates the process of creating a comprehensive encyclopedia for the Video SimpleQA benchmark.  It begins with raw descriptions from Wikimedia Commons. Then, GPT-40 is used with a Retrieval Augmented Generation (RAG) method to extract key terms and find more detailed definitions for them. These additional definitions from search engines like Google and Bing are then added to create a richer and more accurate knowledge base for the dataset.  This ensures that the questions in the benchmark require knowledge beyond what is explicitly shown in the video itself.
> <details>
> <summary>read the caption</summary>
> Figure 4: The encyclopedia collection process including the raw associated description in Wikimedia and the RAG results† ‣ 3.1 for the specialized terms extracted by GPT-4o.
> </details>



![](https://arxiv.org/html/2503.18923/x6.png)

> 🔼 This figure shows a pie chart that visualizes the taxonomy of the Video SimpleQA benchmark. The chart is divided into four main categories: Nature, Engineering, Science, and Society & Culture.  Each of these categories is further subdivided into secondary and tertiary categories representing various sub-topics. The size of each slice in the pie chart corresponds to the number of videos in that particular category, illustrating the distribution of video content across different topics in the Video SimpleQA dataset.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.18923/x7.png)

> 🔼 This figure shows an example of an existing knowledge-based video benchmark.  The example uses a question about a video demonstrating a Euclidean geometry principle and the correct answer, which is 'Pythagorean theorem'. The benchmark includes information about the required knowledge, whether the question is factual, whether the answer is definitive, and whether it was verified by an external source. This illustrates that existing benchmarks may involve hypothetical or subjective reasoning, unlike the proposed Video SimpleQA benchmark.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.18923/x8.png)

> 🔼 This figure illustrates the Video SimpleQA benchmark, which is a novel dataset for evaluating the factuality of Large Video Language Models (LVLMs). It contrasts with existing benchmarks by focusing on fact-seeking questions that necessitate integrating external knowledge beyond the video's explicit narrative.  The answers provided are unambiguous, definitive, and short-form, allowing for automated evaluation.  The questions necessitate both static single-frame understanding and dynamic temporal reasoning, testing LVLMs' ability to handle long-context dependencies.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2503.18923/x9.png)

> 🔼 Figure 5 presents a comprehensive overview of the Video SimpleQA dataset. Subfigure (a) shows the distribution of videos across 15 secondary categories, illustrating the diversity of video content in the benchmark. Subfigure (b) visualizes the distribution of question types, revealing the balance between different question forms. Subfigure (c) provides key statistics of the dataset, including the total number of question-answer pairs, video lengths, and the number of categories at different levels of granularity.
> <details>
> <summary>read the caption</summary>
> Figure 5: (a) Video distribution at the secondary level; (b) Question type distribution; (c) Key statistics of Video SimpleQA .
> </details>



![](https://arxiv.org/html/2503.18923/x10.png)

> 🔼 This figure displays the calibration of several large video language models (LVLMs) by plotting their self-reported confidence scores against their actual accuracy.  The x-axis represents the self-stated confidence levels, categorized into intervals (bins), while the y-axis shows the accuracy within each confidence interval.  A perfectly calibrated model would have a diagonal line representing perfect agreement between confidence and accuracy. Deviations from this ideal diagonal line reveal overconfidence or underconfidence in the model's predictions.  The Brier score, displayed numerically in the figure, quantifies the overall deviation from perfect calibration, providing a single metric for comparing the calibration quality across different LVLMs.
> <details>
> <summary>read the caption</summary>
> Figure 6: Calibration curves based on the self-stated confidence scores and interval-level accuracy; Brier scores to quantify the deviation from the ideal calibration line.
> </details>



![](https://arxiv.org/html/2503.18923/x11.png)

> 🔼 This figure displays the results of experiments evaluating the impact of test-time compute strategies on the Video SimpleQA benchmark.  Two strategies were tested: Best-of-N, which involves generating N independent responses and selecting the best one, and Self-refine, which involves iteratively refining initial outputs using self-generated feedback. The graphs show the accuracy (proportion of correct answers) against the number of models used for Best-of-N and the number of refinement iterations for Self-refine, for several different models. The results reveal that neither strategy consistently improves accuracy and that in some cases, performance even degrades.
> <details>
> <summary>read the caption</summary>
> Figure 7: Evaluations of test-time compute including Best-of-N and Self-refine.
> </details>



![](https://arxiv.org/html/2503.18923/x12.png)

> 🔼 This figure illustrates the correlation between the size of large video language models (LVLMs) and their performance on the Video SimpleQA benchmark.  The x-axis represents the model size in billions of parameters, while the y-axis shows the F1-score achieved by each model on the benchmark. The plot visually demonstrates the general trend of improved performance with increasing model size, although the relationship isn't perfectly linear. Some larger models may underperform compared to smaller models, indicating that model size is not the sole determinant of performance.
> <details>
> <summary>read the caption</summary>
> Figure 8: The relationship between model size and F-score.
> </details>



![](https://arxiv.org/html/2503.18923/x13.png)

> 🔼 This figure displays the results of experiments examining the effect of the number of video frames used as input on the performance of various Large Video Language Models (LVLMs).  The x-axis likely represents the number of frames, and the y-axis likely represents a performance metric, such as the F-score.  Each line likely represents a different LVLMs. The plot aims to demonstrate whether increasing the number of frames improves the models' ability to answer factually grounded questions about the video content.
> <details>
> <summary>read the caption</summary>
> Figure 9: Frame number scaling experiments.
> </details>



![](https://arxiv.org/html/2503.18923/x14.png)

> 🔼 This figure displays the F-scores achieved by different Large Video Language Models (LVLMs) when evaluated using various judge models (GPT-40, Gemini-1.5-Pro, Claude-3.5-SonnetV2, GPT-40-mini).  The consistent ranking of the LVLMs across different judge models highlights the robustness of the evaluation methodology, showing that even smaller judge models can provide consistent results.  The variation in F-scores across models reveals differences in their performance across various subtopics.
> <details>
> <summary>read the caption</summary>
> Figure 10: Results with different judge models.
> </details>



![](https://arxiv.org/html/2503.18923/x15.png)

> 🔼 This figure visualizes the performance of various large video language models (LVLMs) across 15 secondary categories within the Video SimpleQA benchmark.  It allows for a comparison of model strengths and weaknesses in different domains or topical areas.  Each bar represents the F1-score achieved by a specific model within a particular category, offering insights into the relative performance of various models for different types of factual video understanding tasks.  Higher bars indicate better performance.
> <details>
> <summary>read the caption</summary>
> Figure 11: The performance of different models across 15 secondary categories in Video SimpleQA .
> </details>



![](https://arxiv.org/html/2503.18923/x16.png)

> 🔼 Figure 12 presents four examples illustrating common error types made by Large Video Language Models (LVLMs) when answering questions about video content.  (a) shows a  perception error, where the model fails to correctly identify an object (a bat) within the video. (b) demonstrates a lack of knowledge error, where the model correctly identifies an object (a beetle) but lacks the contextual information (its origin) to answer the question.  (c) exemplifies a refusal to answer error, in which the model acknowledges its inability to confidently answer the question. Finally, (d) illustrates an error stemming from a failure to follow instructions, where the model correctly identifies an object (a tower) but provides an answer that doesn't directly address the question (it gives the city instead of the country where the tower is located).  These examples highlight the diverse challenges in achieving factual accuracy in video question answering for LVLMs.
> <details>
> <summary>read the caption</summary>
> Figure 12: Visualizations of typical error types including (a) perception error; (b) lack of knowledge; (c) refusal to answer; (d) failure to follow instructions.
> </details>



![](https://arxiv.org/html/2503.18923/x17.png)

> 🔼 This figure presents a comparison of error types across three large video language models (LVLMs): Qwen2.5-VL-72B, GPT-4o, and Gemini-1.5-Pro.  It shows the percentage breakdown of four error categories for each model: Perception Error (incorrect identification of objects in the video), Lack of Knowledge (correct identification, but the model lacks the required factual information to answer accurately), Refusal to Answer (the model correctly recognizes it cannot answer confidently and chooses to abstain), and Failure to Follow Instructions (the model understands the instruction but doesn't follow the format or generates an irrelevant answer). The figure allows for a quantitative comparison of the models' error profiles and strengths/weaknesses in various aspects of video question answering.
> <details>
> <summary>read the caption</summary>
> Figure 13: Error type distributions across Qwen2.5-VL-72B [5], GPT-4o [53] and Gemini-1.5-Pro [62].
> </details>



![](https://arxiv.org/html/2503.18923/x18.png)

> 🔼 This figure shows the prompt used for the human evaluators to grade the quality of the LLM generated answers.  The prompt provides examples of answers that are considered CORRECT, INCORRECT, and NOT ATTEMPTED. This helps ensure consistency in evaluation across different annotators.  The examples illustrate various scenarios and edge cases in the responses that impact the final grading decision.  Specifically, it covers cases with partial answers, answers containing additional information,  hedging or uncertainty in the answers, contradictory statements, and responses that are simply incorrect or refuse to answer.
> <details>
> <summary>read the caption</summary>
> Figure 14: Prompt for grading: Part 1
> </details>



![](https://arxiv.org/html/2503.18923/x19.png)

> 🔼 This prompt instructs the evaluator to grade the correctness of a large language model's response by comparing it to the ground truth.  The task involves considering various factors like numerical precision, semantic equivalence, and tolerance of minor errors.  The evaluator is asked to classify each answer as CORRECT, INCORRECT, or NOT_ATTEMPTED based on specific guidelines, illustrating these classifications with provided examples of each grade.
> <details>
> <summary>read the caption</summary>
> Figure 15: Prompt for grading: Part 2
> </details>



![](https://arxiv.org/html/2503.18923/x20.png)

> 🔼 This figure shows the prompt used in the calibration experiments. The prompt instructs the model to process video frames, a question, a gold target answer, and a predicted answer. Then, the model should classify the predicted answer as either 'CORRECT', 'INCORRECT', or 'NOT_ATTEMPTED', based on whether it aligns with the gold target.  The prompt provides examples of each classification and clarifies the criteria for each, addressing edge cases like minor discrepancies or hedging in answers.  It emphasizes that only factual accuracy matters, ignoring issues like grammar or punctuation.
> <details>
> <summary>read the caption</summary>
> Figure 16: Prompt for calibration experiments.
> </details>



![](https://arxiv.org/html/2503.18923/x21.png)

> 🔼 This figure showcases three example questions from the Video SimpleQA benchmark dataset, each accompanied by the ground truth answer and the model's response from three different large video language models (LVLMs): GPT-40, Gemini-1.5-Pro, and Qwen2.5-VL-72B.  The examples illustrate the diversity of questions within the dataset and the varying capabilities of current LVLMs in accurately answering factually-grounded questions about video content.  The responses highlight the models' strengths and weaknesses in understanding and correctly interpreting visual information and integrating external knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 17: Sampled examples in Video SimpleQA and the responses of typical LVLMs: part 1
> </details>



![](https://arxiv.org/html/2503.18923/x22.png)

> 🔼 This figure shows two example questions from the Video SimpleQA benchmark dataset and the corresponding answers generated by three different large video language models (LVLMs): GPT-4, Gemini-1.5-Pro, and Qwen2.5-VL-72B.  The first example involves identifying the pioneers associated with an aircraft shown in a video, while the second involves identifying the physical principle demonstrated.  The answers highlight the varying levels of accuracy and detail provided by different LVLMs in addressing factual video understanding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 18: Sampled examples in Video SimpleQA and the responses of typical LVLMs: part 2
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.F5.sf3.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.F5.sf3.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.F5.sf3.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.F5.sf3.2.1.1.1.1.1">Statistics</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.F5.sf3.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.F5.sf3.2.1.1.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F5.sf3.2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.sf3.2.1.2.1.1">Total number of QA pairs</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.F5.sf3.2.1.2.1.2">2030</td>
</tr>
<tr class="ltx_tr" id="S3.F5.sf3.2.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.F5.sf3.2.1.3.2.1">Question Length (avg/max)</td>
<td class="ltx_td ltx_align_right" id="S3.F5.sf3.2.1.3.2.2">9.71 / 23</td>
</tr>
<tr class="ltx_tr" id="S3.F5.sf3.2.1.4.3">
<td class="ltx_td ltx_align_left" id="S3.F5.sf3.2.1.4.3.1">Answer Length (avg/max)</td>
<td class="ltx_td ltx_align_right" id="S3.F5.sf3.2.1.4.3.2">1.98 / 19</td>
</tr>
<tr class="ltx_tr" id="S3.F5.sf3.2.1.5.4">
<td class="ltx_td ltx_align_left" id="S3.F5.sf3.2.1.5.4.1">Unique Videos</td>
<td class="ltx_td ltx_align_right" id="S3.F5.sf3.2.1.5.4.2">1293</td>
</tr>
<tr class="ltx_tr" id="S3.F5.sf3.2.1.6.5">
<td class="ltx_td ltx_align_left" id="S3.F5.sf3.2.1.6.5.1">Video Length (Seconds, avg/max)</td>
<td class="ltx_td ltx_align_right" id="S3.F5.sf3.2.1.6.5.2">181 / 8763</td>
</tr>
<tr class="ltx_tr" id="S3.F5.sf3.2.1.7.6">
<td class="ltx_td ltx_align_left" id="S3.F5.sf3.2.1.7.6.1">Number of primary category</td>
<td class="ltx_td ltx_align_right" id="S3.F5.sf3.2.1.7.6.2">4</td>
</tr>
<tr class="ltx_tr" id="S3.F5.sf3.2.1.8.7">
<td class="ltx_td ltx_align_left" id="S3.F5.sf3.2.1.8.7.1">Number of secondary category</td>
<td class="ltx_td ltx_align_right" id="S3.F5.sf3.2.1.8.7.2">15</td>
</tr>
<tr class="ltx_tr" id="S3.F5.sf3.2.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.F5.sf3.2.1.9.8.1">Number of tertiary category</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.F5.sf3.2.1.9.8.2">84</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various Large Video Language Models (LVLMs) on the Video SimpleQA benchmark.  It details the performance of both open-source and proprietary LVLMs across five key metrics: the percentage of answers that are Correct, Incorrect, Not Attempted, and the Correct Given Attempted rate, along with the resulting F-score.  The performance is further broken down across four primary subtopic categories (Engineering, Nature, Science, and Society & Culture) providing a granular view of model strengths and weaknesses in different domains. The table allows for a detailed analysis of the models' factuality and ability to correctly answer fact-based questions about video content integrating external knowledge.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation results (%) of open-source and proprietary multi-modal LLMs on Video SimpleQA . For metrics, CO, NA, IN, and CGA denote “Correct”, “Not attempted”, “Incorrect”, and “Correct given attempted”, respectively. For subtopics, ENG, NAT, SCI and SAC represent “Engineering”, “Nature”, “Science” and “Society and Culture”.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.2.2.3.1.1" rowspan="2" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T2.2.2.3.1.2" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.2.1">Overall results on 5 metrics</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.2.2.3.1.3" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.3.1">F-score on 4 primary categories</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.3" style="padding:0.25pt 9.0pt;">CO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1" style="padding:0.25pt 9.0pt;">IN<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2" style="padding:0.25pt 9.0pt;">NA<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.4" style="padding:0.25pt 9.0pt;">CGA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.5" style="padding:0.25pt 9.0pt;">F-score</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.6" style="padding:0.25pt 9.0pt;">ENG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.7" style="padding:0.25pt 9.0pt;">NAT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.8" style="padding:0.25pt 9.0pt;">SCI</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.9" style="padding:0.25pt 9.0pt;">SAC</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T2.2.2.4.2.1" style="padding:0.25pt 9.0pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S4.T2.2.2.4.2.1.1" style="color:#0000FF;">Human Performance</em></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.5.3.1" style="padding:0.25pt 9.0pt;">Human Open-book</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.2" style="padding:0.25pt 9.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.3" style="padding:0.25pt 9.0pt;">11.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.4" style="padding:0.25pt 9.0pt;">21.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.5" style="padding:0.25pt 9.0pt;">85.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.6" style="padding:0.25pt 9.0pt;">74.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.7" style="padding:0.25pt 9.0pt;">78.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.8" style="padding:0.25pt 9.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.9" style="padding:0.25pt 9.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.10" style="padding:0.25pt 9.0pt;">85.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.6.4.1" style="padding:0.25pt 9.0pt;">Human Closed-book</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.2" style="padding:0.25pt 9.0pt;">25.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.3" style="padding:0.25pt 9.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.4" style="padding:0.25pt 9.0pt;">61.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.5" style="padding:0.25pt 9.0pt;">65.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.6" style="padding:0.25pt 9.0pt;">36.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.7" style="padding:0.25pt 9.0pt;">38.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.8" style="padding:0.25pt 9.0pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.9" style="padding:0.25pt 9.0pt;">28.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.10" style="padding:0.25pt 9.0pt;">47.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T2.2.2.7.5.1" style="padding:0.25pt 9.0pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S4.T2.2.2.7.5.1.1" style="color:#0000FF;">Proprietary Multi-modal LLMs</em></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.8.6.1" style="padding:0.25pt 9.0pt;">o1-preview <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.2" style="padding:0.25pt 9.0pt;">47.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.3" style="padding:0.25pt 9.0pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.4" style="padding:0.25pt 9.0pt;">17.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.5" style="padding:0.25pt 9.0pt;">57.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.6" style="padding:0.25pt 9.0pt;">51.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.7" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.7.1" style="color:#FF0000;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.8" style="padding:0.25pt 9.0pt;">47.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.9" style="padding:0.25pt 9.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.10" style="padding:0.25pt 9.0pt;">50.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.9.7.1" style="padding:0.25pt 9.0pt;">Gemini-2.0-Flash <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.2" style="padding:0.25pt 9.0pt;">41.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.3" style="padding:0.25pt 9.0pt;">28.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.4" style="padding:0.25pt 9.0pt;">29.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.5" style="padding:0.25pt 9.0pt;">59.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.6" style="padding:0.25pt 9.0pt;">48.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.7" style="padding:0.25pt 9.0pt;">56.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.8" style="padding:0.25pt 9.0pt;">41.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.9" style="padding:0.25pt 9.0pt;">30.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.9.7.10" style="padding:0.25pt 9.0pt;">55.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.10.8.1" style="padding:0.25pt 9.0pt;">Gemini-2.0-Flash-Thinking <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.2" style="padding:0.25pt 9.0pt;">45.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.3" style="padding:0.25pt 9.0pt;">41.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.4" style="padding:0.25pt 9.0pt;">13.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.5" style="padding:0.25pt 9.0pt;">52.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.6" style="padding:0.25pt 9.0pt;">49.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.7" style="padding:0.25pt 9.0pt;">41.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.8" style="padding:0.25pt 9.0pt;">42.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.9" style="padding:0.25pt 9.0pt;">34.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.10" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.10.8.10.1" style="color:#FF0000;">70.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.11.9.1" style="padding:0.25pt 9.0pt;">Doubao-1.5-vision-pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.2" style="padding:0.25pt 9.0pt;">29.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.3" style="padding:0.25pt 9.0pt;">18.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.4" style="padding:0.25pt 9.0pt;">51.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.5" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.11.9.5.1" style="color:#FF0000;">61.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.6" style="padding:0.25pt 9.0pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.7" style="padding:0.25pt 9.0pt;">39.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.8" style="padding:0.25pt 9.0pt;">35.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.9" style="padding:0.25pt 9.0pt;">29.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.11.9.10" style="padding:0.25pt 9.0pt;">50.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.12.10.1" style="padding:0.25pt 9.0pt;">Doubao-vision-pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.2" style="padding:0.25pt 9.0pt;">37.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.3" style="padding:0.25pt 9.0pt;">38.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.4" style="padding:0.25pt 9.0pt;">24.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.5" style="padding:0.25pt 9.0pt;">49.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.6" style="padding:0.25pt 9.0pt;">42.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.7" style="padding:0.25pt 9.0pt;">46.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.8" style="padding:0.25pt 9.0pt;">35.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.9" style="padding:0.25pt 9.0pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.12.10.10" style="padding:0.25pt 9.0pt;">52.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.13.11.1" style="padding:0.25pt 9.0pt;">Doubao-vision-lite <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.2" style="padding:0.25pt 9.0pt;">17.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.3" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.13.11.3.1" style="color:#FF0000;">15.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.4" style="padding:0.25pt 9.0pt;">67.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.5" style="padding:0.25pt 9.0pt;">53.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.6" style="padding:0.25pt 9.0pt;">26.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.7" style="padding:0.25pt 9.0pt;">28.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.8" style="padding:0.25pt 9.0pt;">24.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.9" style="padding:0.25pt 9.0pt;">14.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.13.11.10" style="padding:0.25pt 9.0pt;">29.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.14.12.1" style="padding:0.25pt 9.0pt;">GPT-4o-mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.2" style="padding:0.25pt 9.0pt;">38.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.3" style="padding:0.25pt 9.0pt;">50.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.4" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.14.12.4.1" style="color:#FF0000;">10.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.5" style="padding:0.25pt 9.0pt;">43.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.6" style="padding:0.25pt 9.0pt;">41.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.7" style="padding:0.25pt 9.0pt;">45.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.8" style="padding:0.25pt 9.0pt;">35.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.9" style="padding:0.25pt 9.0pt;">19.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.14.12.10" style="padding:0.25pt 9.0pt;">50.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.15.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.15.13.1" style="padding:0.25pt 9.0pt;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.2" style="padding:0.25pt 9.0pt;">49.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.3" style="padding:0.25pt 9.0pt;">35.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.4" style="padding:0.25pt 9.0pt;">14.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.5" style="padding:0.25pt 9.0pt;">58.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.6" style="padding:0.25pt 9.0pt;">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.7" style="padding:0.25pt 9.0pt;">58.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.8" style="padding:0.25pt 9.0pt;">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.9" style="padding:0.25pt 9.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.15.13.10" style="padding:0.25pt 9.0pt;">63.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.16.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.16.14.1" style="padding:0.25pt 9.0pt;">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.2" style="padding:0.25pt 9.0pt;">29.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.3" style="padding:0.25pt 9.0pt;">28.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.4" style="padding:0.25pt 9.0pt;">42.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.5" style="padding:0.25pt 9.0pt;">51.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.6" style="padding:0.25pt 9.0pt;">37.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.7" style="padding:0.25pt 9.0pt;">39.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.8" style="padding:0.25pt 9.0pt;">33.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.9" style="padding:0.25pt 9.0pt;">27.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.16.14.10" style="padding:0.25pt 9.0pt;">45.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.17.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.17.15.1" style="padding:0.25pt 9.0pt;">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.2" style="padding:0.25pt 9.0pt;">36.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.3" style="padding:0.25pt 9.0pt;">40.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.4" style="padding:0.25pt 9.0pt;">22.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.5" style="padding:0.25pt 9.0pt;">47.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.6" style="padding:0.25pt 9.0pt;">41.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.7" style="padding:0.25pt 9.0pt;">49.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.8" style="padding:0.25pt 9.0pt;">35.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.9" style="padding:0.25pt 9.0pt;">29.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.17.15.10" style="padding:0.25pt 9.0pt;">47.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.18.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.18.16.1" style="padding:0.25pt 9.0pt;">Claude-3.5-SonnetV2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.2" style="padding:0.25pt 9.0pt;">42.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.3" style="padding:0.25pt 9.0pt;">38.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.4" style="padding:0.25pt 9.0pt;">19.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.5" style="padding:0.25pt 9.0pt;">52.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.6" style="padding:0.25pt 9.0pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.7" style="padding:0.25pt 9.0pt;">57.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.8" style="padding:0.25pt 9.0pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.9" style="padding:0.25pt 9.0pt;">33.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.18.16.10" style="padding:0.25pt 9.0pt;">53.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.19.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.19.17.1" style="padding:0.25pt 9.0pt;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.2" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.19.17.2.1" style="color:#FF0000;">50.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.3" style="padding:0.25pt 9.0pt;">34.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.4" style="padding:0.25pt 9.0pt;">15.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.5" style="padding:0.25pt 9.0pt;">59.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.6" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.19.17.6.1" style="color:#FF0000;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.7" style="padding:0.25pt 9.0pt;">57.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.8" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.19.17.8.1" style="color:#FF0000;">50.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.9" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.19.17.9.1" style="color:#FF0000;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.19.17.10" style="padding:0.25pt 9.0pt;">60.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.20.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.20.18.1" style="padding:0.25pt 9.0pt;">Gemini-1.5-Pro-Flash <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.2" style="padding:0.25pt 9.0pt;">40.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.3" style="padding:0.25pt 9.0pt;">29.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.4" style="padding:0.25pt 9.0pt;">30.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.5" style="padding:0.25pt 9.0pt;">58.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.6" style="padding:0.25pt 9.0pt;">47.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.7" style="padding:0.25pt 9.0pt;">50.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.8" style="padding:0.25pt 9.0pt;">46.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.9" style="padding:0.25pt 9.0pt;">36.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.20.18.10" style="padding:0.25pt 9.0pt;">49.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.21.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.21.19.1" style="padding:0.25pt 9.0pt;">Qwen-VL-MAX <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.2" style="padding:0.25pt 9.0pt;">36.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.3" style="padding:0.25pt 9.0pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.4" style="padding:0.25pt 9.0pt;">19.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.5" style="padding:0.25pt 9.0pt;">45.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.6" style="padding:0.25pt 9.0pt;">40.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.7" style="padding:0.25pt 9.0pt;">47.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.8" style="padding:0.25pt 9.0pt;">33.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.9" style="padding:0.25pt 9.0pt;">23.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.21.19.10" style="padding:0.25pt 9.0pt;">51.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.22.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S4.T2.2.2.22.20.1" style="padding:0.25pt 9.0pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S4.T2.2.2.22.20.1.1" style="color:#0000FF;">Open-source Multi-modal LLMs</em></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.23.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.23.21.1" style="padding:0.25pt 9.0pt;">DeepSeek-VL2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.2" style="padding:0.25pt 9.0pt;">23.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.3" style="padding:0.25pt 9.0pt;">57.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.4" style="padding:0.25pt 9.0pt;">18.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.5" style="padding:0.25pt 9.0pt;">29.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.6" style="padding:0.25pt 9.0pt;">26.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.7" style="padding:0.25pt 9.0pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.8" style="padding:0.25pt 9.0pt;">21.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.9" style="padding:0.25pt 9.0pt;">19.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.23.21.10" style="padding:0.25pt 9.0pt;">31.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.24.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.24.22.1" style="padding:0.25pt 9.0pt;">Deepseek-VL2-Small <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.2" style="padding:0.25pt 9.0pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.3" style="padding:0.25pt 9.0pt;">57.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.4" style="padding:0.25pt 9.0pt;">18.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.5" style="padding:0.25pt 9.0pt;">29.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.6" style="padding:0.25pt 9.0pt;">26.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.7" style="padding:0.25pt 9.0pt;">31.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.8" style="padding:0.25pt 9.0pt;">22.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.9" style="padding:0.25pt 9.0pt;">14.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.24.22.10" style="padding:0.25pt 9.0pt;">31.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.25.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.25.23.1" style="padding:0.25pt 9.0pt;">Deepseek-VL2-Tiny <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.2" style="padding:0.25pt 9.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.3" style="padding:0.25pt 9.0pt;">57.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.4" style="padding:0.25pt 9.0pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.5" style="padding:0.25pt 9.0pt;">25.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.6" style="padding:0.25pt 9.0pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.7" style="padding:0.25pt 9.0pt;">27.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.8" style="padding:0.25pt 9.0pt;">17.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.9" style="padding:0.25pt 9.0pt;">14.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.25.23.10" style="padding:0.25pt 9.0pt;">27.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.26.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.26.24.1" style="padding:0.25pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.2.2.26.24.1.1">\hdashline</span>LLaVA-OneVison-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.2" style="padding:0.25pt 9.0pt;">27.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.3" style="padding:0.25pt 9.0pt;">55.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.4" style="padding:0.25pt 9.0pt;">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.5" style="padding:0.25pt 9.0pt;">33.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.6" style="padding:0.25pt 9.0pt;">30.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.7" style="padding:0.25pt 9.0pt;">37.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.8" style="padding:0.25pt 9.0pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.9" style="padding:0.25pt 9.0pt;">20.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.26.24.10" style="padding:0.25pt 9.0pt;">35.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.27.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.27.25.1" style="padding:0.25pt 9.0pt;">LLaVA-OneVision-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.2" style="padding:0.25pt 9.0pt;">19.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.3" style="padding:0.25pt 9.0pt;">33.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.4" style="padding:0.25pt 9.0pt;">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.5" style="padding:0.25pt 9.0pt;">37.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.6" style="padding:0.25pt 9.0pt;">25.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.7" style="padding:0.25pt 9.0pt;">29.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.8" style="padding:0.25pt 9.0pt;">20.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.9" style="padding:0.25pt 9.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.27.25.10" style="padding:0.25pt 9.0pt;">32.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.28.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.28.26.1" style="padding:0.25pt 9.0pt;">LLaVA-OneVison-0.5B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.2" style="padding:0.25pt 9.0pt;">16.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.3" style="padding:0.25pt 9.0pt;">58.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.4" style="padding:0.25pt 9.0pt;">24.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.5" style="padding:0.25pt 9.0pt;">22.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.6" style="padding:0.25pt 9.0pt;">18.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.7" style="padding:0.25pt 9.0pt;">26.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.8" style="padding:0.25pt 9.0pt;">12.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.9" style="padding:0.25pt 9.0pt;">14.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.28.26.10" style="padding:0.25pt 9.0pt;">23.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.29.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.29.27.1" style="padding:0.25pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.2.2.29.27.1.1">\hdashline</span>Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.2" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.29.27.2.1" style="color:#FF0000;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.3" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.29.27.3.1" style="color:#FF0000;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.4" style="padding:0.25pt 9.0pt;">32.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.5" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.29.27.5.1" style="color:#FF0000;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.6" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.29.27.6.1" style="color:#FF0000;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.7" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.29.27.7.1" style="color:#FF0000;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.8" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.29.27.8.1" style="color:#FF0000;">37.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.9" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.29.27.9.1" style="color:#FF0000;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.29.27.10" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.29.27.10.1" style="color:#FF0000;">51.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.30.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.30.28.1" style="padding:0.25pt 9.0pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.2" style="padding:0.25pt 9.0pt;">33.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.3" style="padding:0.25pt 9.0pt;">45.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.4" style="padding:0.25pt 9.0pt;">21.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.5" style="padding:0.25pt 9.0pt;">41.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.6" style="padding:0.25pt 9.0pt;">36.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.7" style="padding:0.25pt 9.0pt;">38.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.8" style="padding:0.25pt 9.0pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.9" style="padding:0.25pt 9.0pt;">23.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.30.28.10" style="padding:0.25pt 9.0pt;">41.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.31.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.31.29.1" style="padding:0.25pt 9.0pt;">Qwen2.5-VL-3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.2" style="padding:0.25pt 9.0pt;">28.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.3" style="padding:0.25pt 9.0pt;">52.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.4" style="padding:0.25pt 9.0pt;">19.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.5" style="padding:0.25pt 9.0pt;">34.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.6" style="padding:0.25pt 9.0pt;">31.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.7" style="padding:0.25pt 9.0pt;">32.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.8" style="padding:0.25pt 9.0pt;">29.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.9" style="padding:0.25pt 9.0pt;">18.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.31.29.10" style="padding:0.25pt 9.0pt;">35.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.32.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.32.30.1" style="padding:0.25pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.2.2.32.30.1.1">\hdashline</span>Qwen2-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.2" style="padding:0.25pt 9.0pt;">28.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.3" style="padding:0.25pt 9.0pt;">40.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.4" style="padding:0.25pt 9.0pt;">31.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.5" style="padding:0.25pt 9.0pt;">41.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.6" style="padding:0.25pt 9.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.7" style="padding:0.25pt 9.0pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.8" style="padding:0.25pt 9.0pt;">28.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.9" style="padding:0.25pt 9.0pt;">25.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.32.30.10" style="padding:0.25pt 9.0pt;">40.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.33.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.33.31.1" style="padding:0.25pt 9.0pt;">Qwen2-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.2" style="padding:0.25pt 9.0pt;">26.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.3" style="padding:0.25pt 9.0pt;">40.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.4" style="padding:0.25pt 9.0pt;">33.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.5" style="padding:0.25pt 9.0pt;">39.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.6" style="padding:0.25pt 9.0pt;">31.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.7" style="padding:0.25pt 9.0pt;">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.8" style="padding:0.25pt 9.0pt;">28.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.9" style="padding:0.25pt 9.0pt;">23.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.33.31.10" style="padding:0.25pt 9.0pt;">33.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.34.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.34.32.1" style="padding:0.25pt 9.0pt;">Qwen2-VL-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.2" style="padding:0.25pt 9.0pt;">26.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.3" style="padding:0.25pt 9.0pt;">47.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.4" style="padding:0.25pt 9.0pt;">26.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.5" style="padding:0.25pt 9.0pt;">36.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.6" style="padding:0.25pt 9.0pt;">30.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.7" style="padding:0.25pt 9.0pt;">35.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.8" style="padding:0.25pt 9.0pt;">27.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.9" style="padding:0.25pt 9.0pt;">19.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.34.32.10" style="padding:0.25pt 9.0pt;">34.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.35.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.35.33.1" style="padding:0.25pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.2.2.35.33.1.1">\hdashline</span>InternVL2.5-78B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.2" style="padding:0.25pt 9.0pt;">31.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.3" style="padding:0.25pt 9.0pt;">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.4" style="padding:0.25pt 9.0pt;">15.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.5" style="padding:0.25pt 9.0pt;">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.6" style="padding:0.25pt 9.0pt;">33.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.7" style="padding:0.25pt 9.0pt;">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.8" style="padding:0.25pt 9.0pt;">28.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.9" style="padding:0.25pt 9.0pt;">24.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.35.33.10" style="padding:0.25pt 9.0pt;">40.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.36.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.36.34.1" style="padding:0.25pt 9.0pt;">InternVL2.5-38B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.2" style="padding:0.25pt 9.0pt;">29.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.3" style="padding:0.25pt 9.0pt;">51.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.4" style="padding:0.25pt 9.0pt;">19.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.5" style="padding:0.25pt 9.0pt;">36.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.6" style="padding:0.25pt 9.0pt;">32.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.7" style="padding:0.25pt 9.0pt;">38.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.8" style="padding:0.25pt 9.0pt;">27.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.9" style="padding:0.25pt 9.0pt;">21.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.36.34.10" style="padding:0.25pt 9.0pt;">37.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.37.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.37.35.1" style="padding:0.25pt 9.0pt;">InternVL2.5-26B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.2" style="padding:0.25pt 9.0pt;">28.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.3" style="padding:0.25pt 9.0pt;">50.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.4" style="padding:0.25pt 9.0pt;">21.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.5" style="padding:0.25pt 9.0pt;">35.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.6" style="padding:0.25pt 9.0pt;">31.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.7" style="padding:0.25pt 9.0pt;">35.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.8" style="padding:0.25pt 9.0pt;">27.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.9" style="padding:0.25pt 9.0pt;">19.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.37.35.10" style="padding:0.25pt 9.0pt;">35.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.38.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.38.36.1" style="padding:0.25pt 9.0pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.2" style="padding:0.25pt 9.0pt;">22.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.3" style="padding:0.25pt 9.0pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.4" style="padding:0.25pt 9.0pt;">13.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.5" style="padding:0.25pt 9.0pt;">25.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.6" style="padding:0.25pt 9.0pt;">23.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.7" style="padding:0.25pt 9.0pt;">26.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.8" style="padding:0.25pt 9.0pt;">19.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.9" style="padding:0.25pt 9.0pt;">13.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.38.36.10" style="padding:0.25pt 9.0pt;">30.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.39.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.39.37.1" style="padding:0.25pt 9.0pt;">InternVL2.5-4B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.2" style="padding:0.25pt 9.0pt;">21.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.3" style="padding:0.25pt 9.0pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.4" style="padding:0.25pt 9.0pt;">14.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.5" style="padding:0.25pt 9.0pt;">24.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.6" style="padding:0.25pt 9.0pt;">22.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.7" style="padding:0.25pt 9.0pt;">28.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.8" style="padding:0.25pt 9.0pt;">17.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.9" style="padding:0.25pt 9.0pt;">17.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.39.37.10" style="padding:0.25pt 9.0pt;">28.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.40.38">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.40.38.1" style="padding:0.25pt 9.0pt;">InternVL2.5-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.2" style="padding:0.25pt 9.0pt;">16.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.3" style="padding:0.25pt 9.0pt;">65.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.4" style="padding:0.25pt 9.0pt;">17.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.5" style="padding:0.25pt 9.0pt;">20.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.6" style="padding:0.25pt 9.0pt;">18.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.7" style="padding:0.25pt 9.0pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.8" style="padding:0.25pt 9.0pt;">13.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.9" style="padding:0.25pt 9.0pt;">12.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.40.38.10" style="padding:0.25pt 9.0pt;">22.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.41.39">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.41.39.1" style="padding:0.25pt 9.0pt;">InternVL2.5-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.2" style="padding:0.25pt 9.0pt;">15.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.3" style="padding:0.25pt 9.0pt;">60.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.4" style="padding:0.25pt 9.0pt;">24.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.5" style="padding:0.25pt 9.0pt;">20.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.6" style="padding:0.25pt 9.0pt;">17.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.7" style="padding:0.25pt 9.0pt;">24.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.8" style="padding:0.25pt 9.0pt;">13.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.9" style="padding:0.25pt 9.0pt;">10.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.41.39.10" style="padding:0.25pt 9.0pt;">21.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.42.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.42.40.1" style="padding:0.25pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.2.2.42.40.1.1">\hdashline</span>LLaVA-NeXT-Video-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.2" style="padding:0.25pt 9.0pt;">16.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.3" style="padding:0.25pt 9.0pt;">61.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.4" style="padding:0.25pt 9.0pt;">22.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.5" style="padding:0.25pt 9.0pt;">20.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.6" style="padding:0.25pt 9.0pt;">18.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.7" style="padding:0.25pt 9.0pt;">25.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.8" style="padding:0.25pt 9.0pt;">11.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.9" style="padding:0.25pt 9.0pt;">14.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.42.40.10" style="padding:0.25pt 9.0pt;">23.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.43.41">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.43.41.1" style="padding:0.25pt 9.0pt;">LLaVA-NeXT-Video-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.2" style="padding:0.25pt 9.0pt;">10.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.3" style="padding:0.25pt 9.0pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.4" style="padding:0.25pt 9.0pt;">46.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.5" style="padding:0.25pt 9.0pt;">20.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.6" style="padding:0.25pt 9.0pt;">14.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.7" style="padding:0.25pt 9.0pt;">19.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.8" style="padding:0.25pt 9.0pt;">9.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.9" style="padding:0.25pt 9.0pt;">9.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.43.41.10" style="padding:0.25pt 9.0pt;">19.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.44.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.44.42.1" style="padding:0.25pt 9.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.2.2.44.42.1.1">\hdashline</span>ST-LLM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.2" style="padding:0.25pt 9.0pt;">26.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.3" style="padding:0.25pt 9.0pt;">59.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.4" style="padding:0.25pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.44.42.4.1" style="color:#FF0000;">13.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.5" style="padding:0.25pt 9.0pt;">30.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.6" style="padding:0.25pt 9.0pt;">28.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.7" style="padding:0.25pt 9.0pt;">31.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.8" style="padding:0.25pt 9.0pt;">23.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.9" style="padding:0.25pt 9.0pt;">18.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.44.42.10" style="padding:0.25pt 9.0pt;">35.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.45.43">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.45.43.1" style="padding:0.25pt 9.0pt;">Chat-UniVi <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.2" style="padding:0.25pt 9.0pt;">8.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.3" style="padding:0.25pt 9.0pt;">58.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.4" style="padding:0.25pt 9.0pt;">33.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.5" style="padding:0.25pt 9.0pt;">12.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.6" style="padding:0.25pt 9.0pt;">10.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.7" style="padding:0.25pt 9.0pt;">11.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.8" style="padding:0.25pt 9.0pt;">8.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.9" style="padding:0.25pt 9.0pt;">5.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.45.43.10" style="padding:0.25pt 9.0pt;">13.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.46.44">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.46.44.1" style="padding:0.25pt 9.0pt;">PPLLaVA-Qwen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.2" style="padding:0.25pt 9.0pt;">20.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.3" style="padding:0.25pt 9.0pt;">48.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.4" style="padding:0.25pt 9.0pt;">31.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.5" style="padding:0.25pt 9.0pt;">29.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.6" style="padding:0.25pt 9.0pt;">23.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.7" style="padding:0.25pt 9.0pt;">26.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.8" style="padding:0.25pt 9.0pt;">17.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.9" style="padding:0.25pt 9.0pt;">14.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.46.44.10" style="padding:0.25pt 9.0pt;">33.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.47.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.47.45.1" style="padding:0.25pt 9.0pt;">PPLLaVA-Vicuna <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.2" style="padding:0.25pt 9.0pt;">10.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.3" style="padding:0.25pt 9.0pt;">41.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.4" style="padding:0.25pt 9.0pt;">48.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.5" style="padding:0.25pt 9.0pt;">19.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.6" style="padding:0.25pt 9.0pt;">13.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.7" style="padding:0.25pt 9.0pt;">15.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.8" style="padding:0.25pt 9.0pt;">6.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.9" style="padding:0.25pt 9.0pt;">14.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.47.45.10" style="padding:0.25pt 9.0pt;">22.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.48.46">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.48.46.1" style="padding:0.25pt 9.0pt;">VideoLLaMA3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib81" title=""><span class="ltx_text" style="font-size:90%;">81</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.2" style="padding:0.25pt 9.0pt;">25.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.3" style="padding:0.25pt 9.0pt;">60.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.4" style="padding:0.25pt 9.0pt;">13.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.5" style="padding:0.25pt 9.0pt;">29.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.6" style="padding:0.25pt 9.0pt;">27.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.7" style="padding:0.25pt 9.0pt;">36.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.8" style="padding:0.25pt 9.0pt;">18.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.9" style="padding:0.25pt 9.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.48.46.10" style="padding:0.25pt 9.0pt;">34.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.49.47">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.2.49.47.1" style="padding:0.25pt 9.0pt;">Video-LLaVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18923v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.2" style="padding:0.25pt 9.0pt;">15.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.3" style="padding:0.25pt 9.0pt;">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.4" style="padding:0.25pt 9.0pt;">19.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.5" style="padding:0.25pt 9.0pt;">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.6" style="padding:0.25pt 9.0pt;">17.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.7" style="padding:0.25pt 9.0pt;">23.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.8" style="padding:0.25pt 9.0pt;">9.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.9" style="padding:0.25pt 9.0pt;">11.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.49.47.10" style="padding:0.25pt 9.0pt;">24.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various Large Language Models (LLMs) with and without Retrieval-Augmented Generation (RAG).  It shows the F1-score achieved by each model on the Video SimpleQA benchmark, indicating their accuracy in answering factual questions about videos.  Importantly, it also details the total inference time (in minutes) required for each model, illustrating the computational cost associated with using RAG. This allows for analysis of the trade-off between improved accuracy (through RAG) and increased computational demands.
> <details>
> <summary>read the caption</summary>
> Table 3: The comparisons between vanilla models and models with RAG in terms of F-score and the total inference time (min).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.5.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.2.1">F-score</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.3.1">Inference Time</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.5.1.2.2.1">vanilla</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.5.1.2.2.2">
<em class="ltx_emph ltx_font_italic" id="S4.T3.5.1.2.2.2.1">w/</em> RAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.5.1.2.2.3">vanilla</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.5.1.2.2.4">
<em class="ltx_emph ltx_font_italic" id="S4.T3.5.1.2.2.4.1">w/</em> RAG</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.1.3.1.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.2">53.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.3.1.3.1">53.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.3.1.4.1">37.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.5">63.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.1.4.2.1">Claude-3.5-SonnetV2</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.2">46.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.4.2.3.1">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.4.2.4.1">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.5">51.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.1.5.3.1">GPT-4V</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.2">37.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.5.3.3.1">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.5.3.4.1">24.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.5">51.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.1.6.4.1">Gemini-1.5-Pro-Flash</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.6.4.2">47.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.6.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.6.4.3.1">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.6.4.4.1">31.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.6.4.5">51.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.5.1.7.5.1">Qwen-VL-MAX</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.7.5.2">40.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.7.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.7.5.3.1">51.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.7.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.7.5.4.1">16.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.7.5.5">53.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of the Video SimpleQA dataset based on the temporal reasoning required to answer the questions. It shows the proportion of questions falling into four categories: single-frame understanding, short-term understanding (less than 10 seconds), medium-term understanding (10 seconds to 1 minute), and long-term understanding (more than 1 minute).  For each category, the table provides the proportion of questions in that category, as well as the performance metrics (CO - Correct, IN - Incorrect, NA - Not Attempted, CGA - Correct Given Attempted, F-score) achieved by the evaluated models on those questions. This allows for analysis of how well the models perform on questions requiring different levels of temporal reasoning.
> <details>
> <summary>read the caption</summary>
> Table 4: The proportion and performance for QA pairs requiring single-frame or short/medium/long-term understanding.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.3.1">Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.4.1">Prop</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.5.1">CO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">IN<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.1">NA<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.6.1">CGA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.7.1">F-score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.2.2.3.1.1">Single-frame</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.2">13.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.3.1">57.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.4.1">23.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.5">19.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.6"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.6.1">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.7"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.7.1">63.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.2.4.2.1">Short-term</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.2.2.1">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.3">51.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.4">32.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.5">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.6">61.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.7">55.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.2.5.3.1">Medium-term</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.3.2">34.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.3.3">47.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.3.4">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.3.5"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.5.3.5.1">16.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.3.6">56.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.3.7">51.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.2.2.6.4.1">Long-term</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.6.4.2">16.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.6.4.3">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.6.4.4">40.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.6.4.5">21.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.6.4.6">48.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.6.4.7">42.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the Large Vision Language Models (LVLMs) used in the Video SimpleQA benchmark.  For each model, it specifies the organization that developed it, the model's name, the release date, the version used in the experiments, and the number of input video frames considered during evaluation. The models are categorized into proprietary and open-source.
> <details>
> <summary>read the caption</summary>
> Table 5: Configurations of evaluated LVLMs in Video SimpleQA .
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S6.SS1.tab1.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.SS1.tab1.10.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.SS1.tab1.10.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.SS1.tab1.10.1.1.1.1" style="font-size:80%;">Organization</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.SS1.tab1.10.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.SS1.tab1.10.1.1.2.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.SS1.tab1.10.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.SS1.tab1.10.1.1.3.1" style="font-size:80%;">Release</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.SS1.tab1.10.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.SS1.tab1.10.1.1.4.1" style="font-size:80%;">Version</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.SS1.tab1.10.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="S6.SS1.tab1.10.1.1.5.1">
<tr class="ltx_tr" id="S6.SS1.tab1.10.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.SS1.tab1.10.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.SS1.tab1.10.1.1.5.1.1.1.1" style="font-size:80%;">Input</span></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.SS1.tab1.10.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.SS1.tab1.10.1.1.5.1.2.1.1" style="font-size:80%;">Frames</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_border_tt" id="S6.SS1.tab1.10.1.1.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.SS1.tab1.10.2.2.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S6.SS1.tab1.10.2.2.1.1" style="font-size:80%;">Proprietary Multi-modal LLMs</em></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.SS1.tab1.10.3.3.1" rowspan="3"><span class="ltx_text" id="S6.SS1.tab1.10.3.3.1.1" style="font-size:80%;">OpenAI</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.SS1.tab1.10.3.3.2"><span class="ltx_text" id="S6.SS1.tab1.10.3.3.2.1" style="font-size:80%;">o1-preview</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.SS1.tab1.10.3.3.3"><span class="ltx_text" id="S6.SS1.tab1.10.3.3.3.1" style="font-size:80%;">2024-9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.SS1.tab1.10.3.3.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.3.3.4.1" style="font-size:80%;">o1-preview-2024-09-12</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.SS1.tab1.10.3.3.5"><span class="ltx_text" id="S6.SS1.tab1.10.3.3.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_border_t" id="S6.SS1.tab1.10.3.3.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.4.4">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.4.4.1"><span class="ltx_text" id="S6.SS1.tab1.10.4.4.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.4.4.2"><span class="ltx_text" id="S6.SS1.tab1.10.4.4.2.1" style="font-size:80%;">2024-8</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.4.4.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.4.4.3.1" style="font-size:80%;">gpt-4o-2024-08-06</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.4.4.4"><span class="ltx_text" id="S6.SS1.tab1.10.4.4.4.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.4.4.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.5.5">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.5.5.1"><span class="ltx_text" id="S6.SS1.tab1.10.5.5.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.5.5.2"><span class="ltx_text" id="S6.SS1.tab1.10.5.5.2.1" style="font-size:80%;">2024-7</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.5.5.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.5.5.3.1" style="font-size:80%;">gpt-4o-mini-2024-07-18</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.5.5.4"><span class="ltx_text" id="S6.SS1.tab1.10.5.5.4.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.5.5.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.6.6">
<td class="ltx_td" id="S6.SS1.tab1.10.6.6.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.6.6.2"><span class="ltx_text" id="S6.SS1.tab1.10.6.6.2.1" style="font-size:80%;">GPT-4V</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.6.6.3"><span class="ltx_text" id="S6.SS1.tab1.10.6.6.3.1" style="font-size:80%;">2023-9</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.6.6.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.6.6.4.1" style="font-size:80%;">gpt-4-vision</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.6.6.5"><span class="ltx_text" id="S6.SS1.tab1.10.6.6.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.6.6.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.7.7">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.7.7.1" rowspan="2">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.7.7.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.7.7.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.7.7.1.3" style="font-size:80%;">Google</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.7.7.2"><span class="ltx_text" id="S6.SS1.tab1.10.7.7.2.1" style="font-size:80%;">Gemini-2.0-Flash-Thinking</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.7.7.3"><span class="ltx_text" id="S6.SS1.tab1.10.7.7.3.1" style="font-size:80%;">2024-12</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.7.7.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.7.7.4.1" style="font-size:80%;">gemini-2.0-flash-thinking-exp-1219</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.7.7.5"><span class="ltx_text" id="S6.SS1.tab1.10.7.7.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.7.7.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.8.8">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.8.8.1"><span class="ltx_text" id="S6.SS1.tab1.10.8.8.1.1" style="font-size:80%;">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.8.8.2"><span class="ltx_text" id="S6.SS1.tab1.10.8.8.2.1" style="font-size:80%;">2024-12</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.8.8.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.8.8.3.1" style="font-size:80%;">gemini-2.0-flash-exp</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.8.8.4"><span class="ltx_text" id="S6.SS1.tab1.10.8.8.4.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.8.8.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.9.9">
<td class="ltx_td" id="S6.SS1.tab1.10.9.9.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.9.9.2"><span class="ltx_text" id="S6.SS1.tab1.10.9.9.2.1" style="font-size:80%;">Gemini-1.5-Pro</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.9.9.3"><span class="ltx_text" id="S6.SS1.tab1.10.9.9.3.1" style="font-size:80%;">2024-9</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.9.9.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.9.9.4.1" style="font-size:80%;">gemini-1.5-pro</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.9.9.5"><span class="ltx_text" id="S6.SS1.tab1.10.9.9.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.9.9.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.10.10">
<td class="ltx_td" id="S6.SS1.tab1.10.10.10.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.10.10.2"><span class="ltx_text" id="S6.SS1.tab1.10.10.10.2.1" style="font-size:80%;">Gemini-1.5-Pro-Flash</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.10.10.3"><span class="ltx_text" id="S6.SS1.tab1.10.10.10.3.1" style="font-size:80%;">2024-9</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.10.10.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.10.10.4.1" style="font-size:80%;">gemini-1.5-pro-flash</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.10.10.5"><span class="ltx_text" id="S6.SS1.tab1.10.10.10.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.10.10.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.11.11">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.11.11.1">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.11.11.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.11.11.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.11.11.1.3" style="font-size:80%;">Anthropic</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.11.11.2"><span class="ltx_text" id="S6.SS1.tab1.10.11.11.2.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.11.11.3"><span class="ltx_text" id="S6.SS1.tab1.10.11.11.3.1" style="font-size:80%;">2024-6</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.11.11.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.11.11.4.1" style="font-size:80%;">claude-3-5-sonnet</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.11.11.5"><span class="ltx_text" id="S6.SS1.tab1.10.11.11.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.11.11.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.12.12">
<td class="ltx_td" id="S6.SS1.tab1.10.12.12.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.12.12.2"><span class="ltx_text" id="S6.SS1.tab1.10.12.12.2.1" style="font-size:80%;">Claude-3.5-SonnetV2</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.12.12.3"><span class="ltx_text" id="S6.SS1.tab1.10.12.12.3.1" style="font-size:80%;">2024-10</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.12.12.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.12.12.4.1" style="font-size:80%;">claude-3-5-sonnetV2</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.12.12.5"><span class="ltx_text" id="S6.SS1.tab1.10.12.12.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.12.12.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.13.13">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.13.13.1">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.13.13.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.13.13.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.13.13.1.3" style="font-size:80%;">Alibaba</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.13.13.2"><span class="ltx_text" id="S6.SS1.tab1.10.13.13.2.1" style="font-size:80%;">Qwen-VL-MAX</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.13.13.3"><span class="ltx_text" id="S6.SS1.tab1.10.13.13.3.1" style="font-size:80%;">2024-1</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.13.13.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.13.13.4.1" style="font-size:80%;">Qwen-VL-MAX</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.13.13.5"><span class="ltx_text" id="S6.SS1.tab1.10.13.13.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.13.13.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.14.14">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.14.14.1">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.14.14.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.14.14.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.14.14.1.3" style="font-size:80%;">ByteDance</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.14.14.2"><span class="ltx_text" id="S6.SS1.tab1.10.14.14.2.1" style="font-size:80%;">Doubao-1.5-vision-pro</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.14.14.3"><span class="ltx_text" id="S6.SS1.tab1.10.14.14.3.1" style="font-size:80%;">2025-1</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.14.14.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.14.14.4.1" style="font-size:80%;">Doubao-1.5-vision-pro</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.14.14.5"><span class="ltx_text" id="S6.SS1.tab1.10.14.14.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.14.14.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.15.15">
<td class="ltx_td" id="S6.SS1.tab1.10.15.15.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.15.15.2"><span class="ltx_text" id="S6.SS1.tab1.10.15.15.2.1" style="font-size:80%;">Doubao-vision-pro</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.15.15.3"><span class="ltx_text" id="S6.SS1.tab1.10.15.15.3.1" style="font-size:80%;">2025-1</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.15.15.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.15.15.4.1" style="font-size:80%;">Doubao-vision-pro</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.15.15.5"><span class="ltx_text" id="S6.SS1.tab1.10.15.15.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.15.15.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.16.16">
<td class="ltx_td" id="S6.SS1.tab1.10.16.16.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.16.16.2"><span class="ltx_text" id="S6.SS1.tab1.10.16.16.2.1" style="font-size:80%;">Doubao-vision-lite</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.16.16.3"><span class="ltx_text" id="S6.SS1.tab1.10.16.16.3.1" style="font-size:80%;">2025-1</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.16.16.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.16.16.4.1" style="font-size:80%;">Doubao-vision-lite</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.16.16.5"><span class="ltx_text" id="S6.SS1.tab1.10.16.16.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.16.16.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.17.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.SS1.tab1.10.17.17.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S6.SS1.tab1.10.17.17.1.1" style="font-size:80%;">Open-source Multi-modal LLMs</em></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.18.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.SS1.tab1.10.18.18.1" rowspan="3"><span class="ltx_text" id="S6.SS1.tab1.10.18.18.1.1" style="font-size:80%;">Shanghai AI Lab</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.SS1.tab1.10.18.18.2"><span class="ltx_text" id="S6.SS1.tab1.10.18.18.2.1" style="font-size:80%;">InternVL2.5-1B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.SS1.tab1.10.18.18.3"><span class="ltx_text" id="S6.SS1.tab1.10.18.18.3.1" style="font-size:80%;">2024-11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.SS1.tab1.10.18.18.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.18.18.4.1" style="font-size:80%;">InternVL2.5-1B</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.SS1.tab1.10.18.18.5"><span class="ltx_text" id="S6.SS1.tab1.10.18.18.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_border_t" id="S6.SS1.tab1.10.18.18.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.19.19">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.19.19.1"><span class="ltx_text" id="S6.SS1.tab1.10.19.19.1.1" style="font-size:80%;">InternVL2.5-2B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.19.19.2"><span class="ltx_text" id="S6.SS1.tab1.10.19.19.2.1" style="font-size:80%;">2024-11</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.19.19.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.19.19.3.1" style="font-size:80%;">InternVL2.5-2B</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.19.19.4"><span class="ltx_text" id="S6.SS1.tab1.10.19.19.4.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.19.19.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.20.20">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.20.20.1"><span class="ltx_text" id="S6.SS1.tab1.10.20.20.1.1" style="font-size:80%;">InternVL2.5-4B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.20.20.2"><span class="ltx_text" id="S6.SS1.tab1.10.20.20.2.1" style="font-size:80%;">2024-11</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.20.20.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.20.20.3.1" style="font-size:80%;">InternVL2.5-4B</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.20.20.4"><span class="ltx_text" id="S6.SS1.tab1.10.20.20.4.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.20.20.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.21.21">
<td class="ltx_td" id="S6.SS1.tab1.10.21.21.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.21.21.2"><span class="ltx_text" id="S6.SS1.tab1.10.21.21.2.1" style="font-size:80%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.21.21.3"><span class="ltx_text" id="S6.SS1.tab1.10.21.21.3.1" style="font-size:80%;">2024-11</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.21.21.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.21.21.4.1" style="font-size:80%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.21.21.5"><span class="ltx_text" id="S6.SS1.tab1.10.21.21.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.21.21.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.22.22">
<td class="ltx_td" id="S6.SS1.tab1.10.22.22.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.22.22.2"><span class="ltx_text" id="S6.SS1.tab1.10.22.22.2.1" style="font-size:80%;">InternVL2.5-26B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.22.22.3"><span class="ltx_text" id="S6.SS1.tab1.10.22.22.3.1" style="font-size:80%;">2024-11</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.22.22.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.22.22.4.1" style="font-size:80%;">InternVL2.5-26B</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.22.22.5"><span class="ltx_text" id="S6.SS1.tab1.10.22.22.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.22.22.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.23.23">
<td class="ltx_td" id="S6.SS1.tab1.10.23.23.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.23.23.2"><span class="ltx_text" id="S6.SS1.tab1.10.23.23.2.1" style="font-size:80%;">InternVL2.5-38B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.23.23.3"><span class="ltx_text" id="S6.SS1.tab1.10.23.23.3.1" style="font-size:80%;">2024-11</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.23.23.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.23.23.4.1" style="font-size:80%;">InternVL2.5-38B</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.23.23.5"><span class="ltx_text" id="S6.SS1.tab1.10.23.23.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.23.23.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.24.24">
<td class="ltx_td" id="S6.SS1.tab1.10.24.24.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.24.24.2"><span class="ltx_text" id="S6.SS1.tab1.10.24.24.2.1" style="font-size:80%;">InternVL2.5-78B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.24.24.3"><span class="ltx_text" id="S6.SS1.tab1.10.24.24.3.1" style="font-size:80%;">2024-11</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.24.24.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.24.24.4.1" style="font-size:80%;">InternVL2.5-78B</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.24.24.5"><span class="ltx_text" id="S6.SS1.tab1.10.24.24.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.24.24.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.25.25">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.25.25.1" rowspan="3">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.25.25.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.25.25.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.25.25.1.3" style="font-size:80%;">Alibaba</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.25.25.2"><span class="ltx_text" id="S6.SS1.tab1.10.25.25.2.1" style="font-size:80%;">Qwen2-VL-2B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.25.25.3"><span class="ltx_text" id="S6.SS1.tab1.10.25.25.3.1" style="font-size:80%;">2024-8</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.25.25.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.25.25.4.1" style="font-size:80%;">Qwen2-VL-2B-Instruct</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.25.25.5"><span class="ltx_text" id="S6.SS1.tab1.10.25.25.5.1" style="font-size:80%;">16</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.25.25.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.26.26">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.26.26.1"><span class="ltx_text" id="S6.SS1.tab1.10.26.26.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.26.26.2"><span class="ltx_text" id="S6.SS1.tab1.10.26.26.2.1" style="font-size:80%;">2024-8</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.26.26.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.26.26.3.1" style="font-size:80%;">Qwen2-VL-7B-Instruct</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.26.26.4"><span class="ltx_text" id="S6.SS1.tab1.10.26.26.4.1" style="font-size:80%;">16</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.26.26.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.27.27">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.27.27.1"><span class="ltx_text" id="S6.SS1.tab1.10.27.27.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.27.27.2"><span class="ltx_text" id="S6.SS1.tab1.10.27.27.2.1" style="font-size:80%;">2024-9</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.27.27.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.27.27.3.1" style="font-size:80%;">Qwen2-VL-72B-Instruct</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.27.27.4"><span class="ltx_text" id="S6.SS1.tab1.10.27.27.4.1" style="font-size:80%;">16</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.27.27.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.28.28">
<td class="ltx_td" id="S6.SS1.tab1.10.28.28.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.28.28.2"><span class="ltx_text" id="S6.SS1.tab1.10.28.28.2.1" style="font-size:80%;">Qwen2.5-VL-3B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.28.28.3"><span class="ltx_text" id="S6.SS1.tab1.10.28.28.3.1" style="font-size:80%;">2025-2</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.28.28.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.28.28.4.1" style="font-size:80%;">Qwen2.5-VL-3B-Instruct</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.28.28.5"><span class="ltx_text" id="S6.SS1.tab1.10.28.28.5.1" style="font-size:80%;">16</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.28.28.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.29.29">
<td class="ltx_td" id="S6.SS1.tab1.10.29.29.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.29.29.2"><span class="ltx_text" id="S6.SS1.tab1.10.29.29.2.1" style="font-size:80%;">Qwen2.5-VL-7B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.29.29.3"><span class="ltx_text" id="S6.SS1.tab1.10.29.29.3.1" style="font-size:80%;">2025-2</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.29.29.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.29.29.4.1" style="font-size:80%;">Qwen2.5-VL-7B-Instruct</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.29.29.5"><span class="ltx_text" id="S6.SS1.tab1.10.29.29.5.1" style="font-size:80%;">16</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.29.29.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.30.30">
<td class="ltx_td" id="S6.SS1.tab1.10.30.30.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.30.30.2"><span class="ltx_text" id="S6.SS1.tab1.10.30.30.2.1" style="font-size:80%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.30.30.3"><span class="ltx_text" id="S6.SS1.tab1.10.30.30.3.1" style="font-size:80%;">2025-2</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.30.30.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.30.30.4.1" style="font-size:80%;">Qwen2.5-VL-72B-Instruct</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.30.30.5"><span class="ltx_text" id="S6.SS1.tab1.10.30.30.5.1" style="font-size:80%;">16</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.30.30.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.31.31">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.31.31.1">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.31.31.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.31.31.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.31.31.1.3" style="font-size:80%;">DAMO</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.31.31.2"><span class="ltx_text" id="S6.SS1.tab1.10.31.31.2.1" style="font-size:80%;">VideoLLaMA3</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.31.31.3"><span class="ltx_text" id="S6.SS1.tab1.10.31.31.3.1" style="font-size:80%;">2025-1</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.31.31.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.31.31.4.1" style="font-size:80%;">VideoLLaMA3</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.31.31.5"><span class="ltx_text" id="S6.SS1.tab1.10.31.31.5.1" style="font-size:80%;">128</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.31.31.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.32.32">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.32.32.1" rowspan="3">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.32.32.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.32.32.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.32.32.1.3" style="font-size:80%;">DeepSeek</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.32.32.2"><span class="ltx_text" id="S6.SS1.tab1.10.32.32.2.1" style="font-size:80%;">DeepSeek-VL2</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.32.32.3"><span class="ltx_text" id="S6.SS1.tab1.10.32.32.3.1" style="font-size:80%;">2024-12</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.32.32.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.32.32.4.1" style="font-size:80%;">deepseek-vl2</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.32.32.5"><span class="ltx_text" id="S6.SS1.tab1.10.32.32.5.1" style="font-size:80%;">2</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.32.32.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.33.33">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.33.33.1"><span class="ltx_text" id="S6.SS1.tab1.10.33.33.1.1" style="font-size:80%;">DeepSeek-VL2-Small</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.33.33.2"><span class="ltx_text" id="S6.SS1.tab1.10.33.33.2.1" style="font-size:80%;">2024-12</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.33.33.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.33.33.3.1" style="font-size:80%;">deepseek-vl2-small</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.33.33.4"><span class="ltx_text" id="S6.SS1.tab1.10.33.33.4.1" style="font-size:80%;">2</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.33.33.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.34.34">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.34.34.1"><span class="ltx_text" id="S6.SS1.tab1.10.34.34.1.1" style="font-size:80%;">DeepSeek-VL2-Tiny</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.34.34.2"><span class="ltx_text" id="S6.SS1.tab1.10.34.34.2.1" style="font-size:80%;">2024-12</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.34.34.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.34.34.3.1" style="font-size:80%;">deepseek-vl2-tiny</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.34.34.4"><span class="ltx_text" id="S6.SS1.tab1.10.34.34.4.1" style="font-size:80%;">2</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.34.34.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.35.35">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.35.35.1" rowspan="4">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.35.35.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.35.35.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.35.35.1.3" style="font-size:80%;">Llava Hugging Face</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.35.35.2"><span class="ltx_text" id="S6.SS1.tab1.10.35.35.2.1" style="font-size:80%;">LLaVA-OneVision-0.5B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.35.35.3"><span class="ltx_text" id="S6.SS1.tab1.10.35.35.3.1" style="font-size:80%;">2024-9</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.35.35.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.35.35.4.1" style="font-size:80%;">llava-onevision-qwen2-0.5b-ov-chat-hf</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.35.35.5"><span class="ltx_text" id="S6.SS1.tab1.10.35.35.5.1" style="font-size:80%;">16</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.35.35.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.36.36">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.36.36.1"><span class="ltx_text" id="S6.SS1.tab1.10.36.36.1.1" style="font-size:80%;">LLaVA-OneVision-7B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.36.36.2"><span class="ltx_text" id="S6.SS1.tab1.10.36.36.2.1" style="font-size:80%;">2024-9</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.36.36.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.36.36.3.1" style="font-size:80%;">llava-onevision-qwen2-7b-ov-chat-hf</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.36.36.4"><span class="ltx_text" id="S6.SS1.tab1.10.36.36.4.1" style="font-size:80%;">16</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.36.36.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.37.37">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.37.37.1"><span class="ltx_text" id="S6.SS1.tab1.10.37.37.1.1" style="font-size:80%;">LLaVA-OneVision-72B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.37.37.2"><span class="ltx_text" id="S6.SS1.tab1.10.37.37.2.1" style="font-size:80%;">2024-9</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.37.37.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.37.37.3.1" style="font-size:80%;">llava-onevision-qwen2-72b-ov-chat-hf</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.37.37.4"><span class="ltx_text" id="S6.SS1.tab1.10.37.37.4.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.37.37.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.38.38">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.38.38.1"><span class="ltx_text" id="S6.SS1.tab1.10.38.38.1.1" style="font-size:80%;">LLaVA-NeXT-Video-7B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.38.38.2"><span class="ltx_text" id="S6.SS1.tab1.10.38.38.2.1" style="font-size:80%;">2024-6</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.38.38.3"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.38.38.3.1" style="font-size:80%;">LLaVA-NeXT-Video-7B-hf</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.38.38.4"><span class="ltx_text" id="S6.SS1.tab1.10.38.38.4.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.38.38.5"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.39.39">
<td class="ltx_td" id="S6.SS1.tab1.10.39.39.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.39.39.2"><span class="ltx_text" id="S6.SS1.tab1.10.39.39.2.1" style="font-size:80%;">LLaVA-NeXT-Video-34B</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.39.39.3"><span class="ltx_text" id="S6.SS1.tab1.10.39.39.3.1" style="font-size:80%;">2024-6</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.39.39.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.39.39.4.1" style="font-size:80%;">LLaVA-NeXT-Video-34B-hf</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.39.39.5"><span class="ltx_text" id="S6.SS1.tab1.10.39.39.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.39.39.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.40.40">
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.40.40.1">
<span class="ltx_ERROR undefined" id="S6.SS1.tab1.10.40.40.1.1">\hdashline</span><span class="ltx_text" id="S6.SS1.tab1.10.40.40.1.2" style="font-size:80%;">
</span><span class="ltx_text" id="S6.SS1.tab1.10.40.40.1.3" style="font-size:80%;">PKU</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.40.40.2"><span class="ltx_text" id="S6.SS1.tab1.10.40.40.2.1" style="font-size:80%;">ST-LLM</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.40.40.3"><span class="ltx_text" id="S6.SS1.tab1.10.40.40.3.1" style="font-size:80%;">2024-3</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.40.40.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.40.40.4.1" style="font-size:80%;">ST-LLM</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.40.40.5"><span class="ltx_text" id="S6.SS1.tab1.10.40.40.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.40.40.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.41.41">
<td class="ltx_td" id="S6.SS1.tab1.10.41.41.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.41.41.2"><span class="ltx_text" id="S6.SS1.tab1.10.41.41.2.1" style="font-size:80%;">Chat-UniVi</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.41.41.3"><span class="ltx_text" id="S6.SS1.tab1.10.41.41.3.1" style="font-size:80%;">2023-11</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.41.41.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.41.41.4.1" style="font-size:80%;">Chat-UniVi</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.41.41.5"><span class="ltx_text" id="S6.SS1.tab1.10.41.41.5.1" style="font-size:80%;">100</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.41.41.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.42.42">
<td class="ltx_td" id="S6.SS1.tab1.10.42.42.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.42.42.2"><span class="ltx_text" id="S6.SS1.tab1.10.42.42.2.1" style="font-size:80%;">PPLLaVA-Qwen</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.42.42.3"><span class="ltx_text" id="S6.SS1.tab1.10.42.42.3.1" style="font-size:80%;">2024-10</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.42.42.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.42.42.4.1" style="font-size:80%;">PPLLaVA-Qwen</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.42.42.5"><span class="ltx_text" id="S6.SS1.tab1.10.42.42.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.42.42.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.43.43">
<td class="ltx_td" id="S6.SS1.tab1.10.43.43.1"></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.43.43.2"><span class="ltx_text" id="S6.SS1.tab1.10.43.43.2.1" style="font-size:80%;">PPLLaVA-Vicuna</span></td>
<td class="ltx_td ltx_align_left" id="S6.SS1.tab1.10.43.43.3"><span class="ltx_text" id="S6.SS1.tab1.10.43.43.3.1" style="font-size:80%;">2024-10</span></td>
<td class="ltx_td ltx_align_center" id="S6.SS1.tab1.10.43.43.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.43.43.4.1" style="font-size:80%;">PPLLaVA-Vicuna</span></td>
<td class="ltx_td ltx_align_right" id="S6.SS1.tab1.10.43.43.5"><span class="ltx_text" id="S6.SS1.tab1.10.43.43.5.1" style="font-size:80%;">32</span></td>
<td class="ltx_td" id="S6.SS1.tab1.10.43.43.6"></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.44.44">
<td class="ltx_td ltx_border_bb" id="S6.SS1.tab1.10.44.44.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.SS1.tab1.10.44.44.2"><span class="ltx_text" id="S6.SS1.tab1.10.44.44.2.1" style="font-size:80%;">Video-LLaVA</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.SS1.tab1.10.44.44.3"><span class="ltx_text" id="S6.SS1.tab1.10.44.44.3.1" style="font-size:80%;">2023-11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.SS1.tab1.10.44.44.4"><span class="ltx_text ltx_font_typewriter" id="S6.SS1.tab1.10.44.44.4.1" style="font-size:80%;">Video-LLaVA</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.SS1.tab1.10.44.44.5"><span class="ltx_text" id="S6.SS1.tab1.10.44.44.5.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_border_bb" id="S6.SS1.tab1.10.44.44.6"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a hierarchical classification of the videos included in the Video SimpleQA dataset.  It shows the distribution of videos across four primary categories (Nature, Engineering, Science, and Society & Culture). Each primary category is further divided into secondary categories, which are then broken down into more granular tertiary categories. The table lists each tertiary category and the number of videos belonging to it. This detailed taxonomy highlights the diversity of video content covered by the benchmark, showcasing its broad scope and ability to test various aspects of multimodal understanding in large video language models.
> <details>
> <summary>read the caption</summary>
> Table 6: The taxonomy of videos in Video SimpleQA (part 1).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.SS1.tab1.10.1.1.5.1">
<tr class="ltx_tr" id="S6.SS1.tab1.10.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.SS1.tab1.10.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.SS1.tab1.10.1.1.5.1.1.1.1" style="font-size:80%;">Input</span></td>
</tr>
<tr class="ltx_tr" id="S6.SS1.tab1.10.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.SS1.tab1.10.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.SS1.tab1.10.1.1.5.1.2.1.1" style="font-size:80%;">Frames</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 provides a detailed breakdown of the Video SimpleQA dataset, focusing on the categories of videos included.  It's part 2 of a two-part table, continuing the taxonomic classification of videos used in the benchmark. The table lists the primary category (broad thematic area), secondary category (a more specific area within the primary category), tertiary category (the most granular level of categorization), and finally the count of videos belonging to each tertiary category.  This table is crucial for understanding the diversity and distribution of video content within the Video SimpleQA benchmark, illustrating its comprehensive scope in terms of subject matter.
> <details>
> <summary>read the caption</summary>
> Table 7: The taxonomy of videos in Video SimpleQA (part 2).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18923/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18923/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}