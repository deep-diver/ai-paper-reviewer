---
title: "Think Twice: Enhancing LLM Reasoning by Scaling Multi-round Test-time Thinking"
summary: "Boost LLM reasoning by having models 'Think Twice'! This novel method iteratively refines answers, significantly enhancing accuracy on complex tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 a-m-team",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19855 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiaoyu Tian et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19855" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19855" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19855/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) have shown improved performance with test-time scaling. However, challenges like long texts and reinforcement learning inefficiencies remain. To address these limitations, the paper introduces **Multi-round Thinking**, a test-time scaling approach. It iteratively refines reasoning by using previous answers as prompts for subsequent rounds. This method aims to enhance reasoning without requiring extensive model retraining or complex setups, thus offering a practical and scalable solution.



The research demonstrates that the **Multi-round Thinking** enhances performance across models like QwQ-32B and DeepSeek-R1 on AIME 2024, MATH-500, GPQA-diamond, and LiveCodeBench. The accuracy improved by using previous answers as prompts for subsequent rounds. Lexical analysis further indicates that the approach promotes more confident and concise reasoning. This highlights the effectiveness and potential of this approach for improving LLM reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multi-round Thinking enhances LLM reasoning by iteratively refining answers, leveraging previous outputs as prompts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method shows consistent performance improvements across multiple models and benchmarks without additional training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Lexical analysis reveals that Multi-round Thinking leads to more confident and decisive reasoning in LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **Multi-round Thinking**, a novel test-time scaling method. It offers a practical and efficient way to enhance LLM reasoning without extra training, potentially impacting future research in test-time scaling and real-world LLM deployments.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19855/extracted/6309504/round_performance_qwq_32b.png)

> 🔼 This figure displays the performance of the QwQ-32B language model across four rounds of reasoning using the Multi-round Thinking approach.  It shows the accuracy (or pass@1 rate) on four different benchmarks: AIME 2024, MATH-500, GPQA-Diamond, and LiveCodeBench.  The bars represent the accuracy achieved at each round of reasoning, demonstrating the improvement in performance with each subsequent round.
> <details>
> <summary>read the caption</summary>
> Figure 1: Benchmark performance of QwQ-32B using Multi-round Thinking.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.1.1.1" style="padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_th_row ltx_border_rr ltx_border_t" id="S3.T1.1.1.1.1.2" style="width:30.4pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1.1.1">Round</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.1.1.3" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.3.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1.1.1">AIME 2024 pass@1</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.1.1.4" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.4.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1.1.1">MATH500 pass@1</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.1.1.5" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.5.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.5.1.1.1">GPQA-Diamond pass@1</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.1.1.1.1.6" style="width:78.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.6.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.6.1.1.1">LiveCodeBench pass@1</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.1.1.7" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.7.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.7.1.1.1">Average</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.1.1">Deepseek-R1</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S3.T1.1.1.2.1.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.2.1.1">1</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.2.1.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.3.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.3.1.1">79.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.2.1.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.4.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.4.1.1">97.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.2.1.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.5.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.5.1.1">74.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.6.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.6.1.1">65.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.2.1.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.7.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.7.1.1">79.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.2">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T1.1.1.3.2.1" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.1.1.1.1">2</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.3.2.2" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.2.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.2.1.1.1">82.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.3.2.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.3.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.3.1.1.1">97.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.3.2.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.4.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.4.1.1.1">74.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T1.1.1.3.2.5" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.5.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.5.1.1.1">67.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.3.2.6" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.6.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.2.6.1.1.1">80.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.4.3.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.1.1">QwQ-32B</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S3.T1.1.1.4.3.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.2.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.2.1.1">1</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.4.3.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.3.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.3.1.1">80.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.4.3.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.4.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.4.1.1">97.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.4.3.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.5.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.5.1.1">65.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S3.T1.1.1.4.3.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.6.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.6.1.1">63.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.4.3.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.7.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.7.1.1">76.6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.4">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T1.1.1.5.4.1" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.1.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.1.1.1">2</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.5.4.2" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.2.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.2.1.1">82.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.5.4.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.3.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.3.1.1">97.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.5.4.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.4.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.4.1.1">67.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T1.1.1.5.4.5" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.5.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.5.1.1">64.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.5.4.6" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.6.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.6.1.1">78.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T1.1.1.6.5.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.2.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.2.1.1">3</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.6.5.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.3.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.3.1.1">82.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.6.5.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.4.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.4.1.1">97.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.6.5.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.5.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.5.1.1">67.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T1.1.1.6.5.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.6.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.6.1.1">65.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.6.5.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.7.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.7.1.1">78.3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T1.1.1.7.6.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.2.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.6.2.1.1.1">4</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.7.6.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.3.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.6.3.1.1.1">83.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.7.6.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.4.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.6.4.1.1.1">97.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.7.6.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.5.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.6.5.1.1.1">68.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T1.1.1.7.6.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.6.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.6.6.1.1.1">66.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.7.6.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.7.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.6.7.1.1.1">78.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.8.7.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.7.1.1">DeepSeek-R1-Distill-Qwen-32B</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S3.T1.1.1.8.7.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.2.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.2.1.1">1</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.8.7.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.3.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.3.1.1">72.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.8.7.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.4.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.4.1.1">96.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.8.7.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.5.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.5.1.1">60.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S3.T1.1.1.8.7.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.6.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.6.1.1">57.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.8.7.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.7.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.7.1.1">71.3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.8">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T1.1.1.9.8.1" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.1.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.8.1.1.1.1">2</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.9.8.2" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.2.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.8.2.1.1.1">75.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.9.8.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.3.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.8.3.1.1.1">96.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.9.8.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.4.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.8.4.1.1.1">61.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T1.1.1.9.8.5" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.5.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.8.5.1.1.1">57.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.9.8.6" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.6.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.8.6.1.1.1">72.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.10.9.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.10.9.1.1">DeepSeek-R1-Distill-Qwen-7B</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S3.T1.1.1.10.9.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.2.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.2.1.1">1</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.10.9.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.3.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.3.1.1">56.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.10.9.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.4.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.4.1.1">93.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.10.9.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.5.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.5.1.1">49.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S3.T1.1.1.10.9.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.6.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.6.1.1">35.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.10.9.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.7.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.7.1.1">58.6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.10">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T1.1.1.11.10.1" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.1.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.10.1.1.1.1">2</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.11.10.2" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.2.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.10.2.1.1.1">58.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.11.10.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.3.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.10.3.1.1.1">93.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.11.10.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.4.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.10.4.1.1.1">49.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T1.1.1.11.10.5" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.5.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.10.5.1.1.1">36.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.1.1.11.10.6" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.6.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.10.6.1.1.1">59.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S3.T1.1.1.12.11.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.12.11.1.1">AM-Distill-Qwen-32B</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S3.T1.1.1.12.11.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.11.2.1">
<span class="ltx_p" id="S3.T1.1.1.12.11.2.1.1">1</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.12.11.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.11.3.1">
<span class="ltx_p" id="S3.T1.1.1.12.11.3.1.1">72.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.12.11.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.11.4.1">
<span class="ltx_p" id="S3.T1.1.1.12.11.4.1.1">96.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.12.11.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.11.5.1">
<span class="ltx_p" id="S3.T1.1.1.12.11.5.1.1">62.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S3.T1.1.1.12.11.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.11.6.1">
<span class="ltx_p" id="S3.T1.1.1.12.11.6.1.1">58.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.1.12.11.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.11.7.1">
<span class="ltx_p" id="S3.T1.1.1.12.11.7.1.1">72.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13.12">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_b ltx_border_rr" id="S3.T1.1.1.13.12.1" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.12.1.1">
<span class="ltx_p" id="S3.T1.1.1.13.12.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.12.1.1.1.1">2</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T1.1.1.13.12.2" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.12.2.1">
<span class="ltx_p" id="S3.T1.1.1.13.12.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.12.2.1.1.1">76.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T1.1.1.13.12.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.12.3.1">
<span class="ltx_p" id="S3.T1.1.1.13.12.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.12.3.1.1.1">97.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T1.1.1.13.12.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.12.4.1">
<span class="ltx_p" id="S3.T1.1.1.13.12.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.12.4.1.1.1">62.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r" id="S3.T1.1.1.13.12.5" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.12.5.1">
<span class="ltx_p" id="S3.T1.1.1.13.12.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.12.5.1.1.1">60.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T1.1.1.13.12.6" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.12.6.1">
<span class="ltx_p" id="S3.T1.1.1.13.12.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.12.6.1.1.1">74.2</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance (pass@1 accuracy) of several large language models (LLMs) on four different reasoning benchmarks.  It compares the performance of each model under a single round of reasoning (Round 1) with the performance achieved when using the Multi-round Thinking approach for 2 to 4 rounds.  The benchmarks assess performance across various reasoning tasks, offering a holistic evaluation of the Multi-round Thinking method's effectiveness in improving model accuracy.  Models tested include DeepSeek-R1, QwQ-32B, and variations using distilled Qwen models.
> <details>
> <summary>read the caption</summary>
> Table 1: Model Performance Comparison (pass@1 accuracy) Between Single-round (Round 1) and Multi-round Thinking (Round 2-4) Across Different Benchmarks
> </details>





### In-depth insights


#### LLM Test-time Scaling
**LLM Test-time Scaling** is an emerging area focused on enhancing the capabilities of large language models during the inference phase, **distinct from training-time scaling**. The idea is to improve performance by strategically using computational resources during the prediction process. Techniques such as **Multi-round Thinking**, majority voting, and best-of-N strategies demonstrate the potential. A core benefit is that **test-time scaling can refine initial outputs** through iterative methods or by exploring multiple reasoning paths. However, challenges persist, including the computational overhead of these methods. Balancing accuracy gains with inference costs is crucial. Future research may focus on **developing more efficient test-time scaling techniques**, leveraging human feedback, or combining test-time scaling with fine-tuning.

#### Multi-round Thinking
**Multi-round Thinking** introduces a novel test-time scaling strategy to enhance LLM reasoning by iteratively refining answers. It leverages previous answers as prompts for subsequent rounds, promoting independent reconsideration and correction, **mitigating cognitive inertia**, and enabling models to overcome entrenched errors. This approach enhances reasoning processes, corrects earlier mistakes, and boosts model performance across challenging reasoning tasks by fostering more concise and assertive phrasing and achieving stable enhancements in model performance. The effectiveness of multi-round thinking lies in its ability to prompt models to reconsider previous conclusions independently, systematically improving the quality of reasoning outcomes and achieving a clear and steady upward trend across various benchmarks. It offers an efficient pathway to enhance model accuracy without additional training overhead, highlighting its practical value for real-world deployment and future research in test-time scaling methods.

#### Iterative Refinement
**Iterative refinement** is a powerful concept, particularly in the context of AI and machine learning. The core idea involves starting with an initial solution or model, then repeatedly improving it through cycles of analysis and modification. Each iteration builds upon the previous one, gradually converging towards a more optimal result. This approach is valuable when the problem is complex or the optimal solution is unknown. It allows for continuous learning and adaptation, incorporating feedback and new information at each stage. The success hinges on well-defined metrics for evaluation and clear strategies for adjusting the model or solution in each iteration. Effectively, iterative refinement enables us to tackle intricate problems by breaking them down into manageable steps and continuously optimizing our approach based on empirical evidence and insight gleaned from each cycle.

#### No Training Overhead
The concept of 'No Training Overhead' is compelling, especially in resource-constrained scenarios. It implies the ability to enhance model performance **without the costly and time-intensive process of retraining**. This is a significant advantage, potentially achieved through techniques like intelligent prompting strategies or test-time manipulations of the model's behavior. If a model can adapt and improve its reasoning simply by altering the input or employing iterative refinement at inference time, it circumvents the need for extensive datasets and computational resources typically required for traditional training. This not only makes deployment more accessible but also allows for **rapid experimentation and adaptation** to new tasks or domains. The challenge lies in developing robust and generalizable methods that consistently yield improvements without introducing instability or unintended side effects. However, the absence of training doesn't equate to zero cost, as there might be **engineering efforts or human expertise** in designing effective prompts or refinement strategies. Moreover, the efficiency gains should be carefully weighed against potential limitations in the magnitude of performance improvement compared to a fully retrained model. Nevertheless, the promise of enhanced reasoning capabilities without training overhead makes it a crucial area for further research and development.

#### Cognitive Patterns
**Cognitive patterns** in language models reveal how they approach problem-solving. **Iterative refinement** enhances reasoning by mimicking human cognitive processes, reducing errors. Models learn from past mistakes, adapting strategies. This process decreases uncertainty and increases confidence. **Lexical analysis** shows shifts in language, using fewer hesitation markers. Models become more concise and assertive. **Correcting errors** involves thoughtful reanalysis. Understanding these patterns offers insights for improving model reasoning and trustworthiness. Analyzing language use uncovers deeper cognitive mechanisms. Emulating human thought boosts performance and reliability. This allows us to use the patterns to guide development.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19855/extracted/6309504/round_performance_R1.png)

> 🔼 This figure presents the performance comparison of DeepSeek-R1 model on four benchmarks (AIME 2024, MATH-500, GPQA Diamond, and LiveCodeBench) across two rounds of reasoning.  Round 1 shows the model's initial performance without multi-round thinking, while Round 2 demonstrates the improvement achieved by incorporating multi-round test-time thinking. Each benchmark is represented by a bar graph displaying the pass@1 accuracy. The results highlight the consistent improvement in accuracy after implementing the multi-round thinking approach.
> <details>
> <summary>read the caption</summary>
> Figure 2: Benchmark performance of DeepSeek-R1 using Multi-round Thinking.
> </details>



![](https://arxiv.org/html/2503.19855/extracted/6309504/word_frequence_all.png)

> 🔼 This figure shows the overall change in frequency of four specific words (but, wait, maybe, therefore) from Round 1 to Round 2 of the Multi-round Thinking process across all examples from the AIME 2024 dataset.  It illustrates how the use of these words, indicative of uncertainty or hesitation versus decisiveness, changes as the model iteratively refines its reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overall change in word frequency across all AIME 2024 examples.
> </details>



![](https://arxiv.org/html/2503.19855/extracted/6309504/word_frequence_merge.png)

> 🔼 This figure analyzes how the usage frequency of four specific words ('but', 'wait', 'maybe', and 'therefore') changes between the first and second reasoning rounds of the Multi-round Thinking model.  The analysis is broken down by four categories of reasoning trajectories: I-C (Incorrect to Correct), I-I (Incorrect to Incorrect), C-C (Correct to Correct), and C-I (Correct to Incorrect). Each subplot in the figure represents one of these trajectory types, showing how frequently each of the four words appears in the model's reasoning process for that trajectory type in Round 1 versus Round 2. This helps to understand the model's shift in confidence and its reasoning process over multiple rounds.
> <details>
> <summary>read the caption</summary>
> Figure 4: Changes in average word frequency across different reasoning trajectories. Each subplot shows the average frequency of four indicative words — but, wait, maybe, and therefore — in Round 1 vs. Round 2, grouped by response type: I-C (Incorrect → Correct), I-I (Incorrect → Incorrect), C-C (Correct → Correct), and C-I (Correct → Incorrect).
> </details>



![](https://arxiv.org/html/2503.19855/extracted/6309504/answer_length_variation.png)

> 🔼 Figure 5 displays the changes in response length for the QwQ-32B model across multiple reasoning rounds on the AIME 2024 dataset.  The x-axis represents the different correctness trajectories from Round 1 to Round 2: C-C (correct in both rounds), C-I (correct in Round 1, incorrect in Round 2), I-C (incorrect in Round 1, correct in Round 2), and I-I (incorrect in both rounds). The y-axis shows the average response length (number of tokens) for each trajectory.  This figure helps visualize how the model's response length changes as it iteratively refines its answers and whether the changes are related to whether the answer is correct or incorrect.
> <details>
> <summary>read the caption</summary>
> Figure 5: Changes in response length across reasoning rounds on the AIME 2024 dataset (QwQ-32B model). Labels represent the correctness trajectory from Round 1 to Round 2: “C” = Correct, “I” = Incorrect. For example, “C–I” indicates responses that were correct initially but became incorrect in the next round.
> </details>



![](https://arxiv.org/html/2503.19855/extracted/6309504/20250325-232442.jpeg)

> 🔼 The figure illustrates how the Think Twice method works.  The model initially provides an incorrect response based on flawed reasoning. Then, the Think Twice strategy prompts the model to reconsider its previous answer. In the second round of thinking, the model identifies and corrects its initial error, ultimately arriving at the correct solution. The example highlights the effectiveness of iterative reasoning and self-correction enabled by the Think Twice approach.
> <details>
> <summary>read the caption</summary>
> Figure 6: Illustration of the “Think Twice” Strategy in Multi-round Reasoning.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.1.1.1.1.1" style="padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_th_row ltx_border_rr ltx_border_t" id="S3.T2.1.1.1.1.2" style="width:30.4pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.2.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.2.1.1.1">Round</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.1.1.1.3" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.3.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.3.1.1.1">AIME 2024</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.1.1.1.4" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.4.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.4.1.1.1">MATH-500</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.1.1.1.5" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.5.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.5.1.1.1">GPQA-Diamond</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T2.1.1.1.1.6" style="width:78.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.6.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.6.1.1.1">LiveCodeBench</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.1.1.1.7" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.7.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.7.1.1.1">Average</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.1.1.2.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1.1.1">QwQ-32B</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S3.T2.1.1.2.1.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.1.2.1">
<span class="ltx_p" id="S3.T2.1.1.2.1.2.1.1">1</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.1.2.1.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.1.3.1">
<span class="ltx_p" id="S3.T2.1.1.2.1.3.1.1">13566.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.1.2.1.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.1.4.1">
<span class="ltx_p" id="S3.T2.1.1.2.1.4.1.1">8489.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.1.2.1.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.1.5.1">
<span class="ltx_p" id="S3.T2.1.1.2.1.5.1.1">13860.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S3.T2.1.1.2.1.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.1.6.1">
<span class="ltx_p" id="S3.T2.1.1.2.1.6.1.1">4473.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.1.2.1.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.1.7.1">
<span class="ltx_p" id="S3.T2.1.1.2.1.7.1.1">10097.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.2">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T2.1.1.3.2.1" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.2.1.1">
<span class="ltx_p" id="S3.T2.1.1.3.2.1.1.1">2</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.1.3.2.2" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.2.2.1">
<span class="ltx_p" id="S3.T2.1.1.3.2.2.1.1">9607.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.1.3.2.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.2.3.1">
<span class="ltx_p" id="S3.T2.1.1.3.2.3.1.1">5540.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.1.3.2.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.2.4.1">
<span class="ltx_p" id="S3.T2.1.1.3.2.4.1.1">11043.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T2.1.1.3.2.5" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.2.5.1">
<span class="ltx_p" id="S3.T2.1.1.3.2.5.1.1">3200.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.1.3.2.6" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.2.6.1">
<span class="ltx_p" id="S3.T2.1.1.3.2.6.1.1">7348.3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S3.T2.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T2.1.1.4.3.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.3.2.1">
<span class="ltx_p" id="S3.T2.1.1.4.3.2.1.1">3</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.1.4.3.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.3.3.1">
<span class="ltx_p" id="S3.T2.1.1.4.3.3.1.1">8630.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.1.4.3.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.3.4.1">
<span class="ltx_p" id="S3.T2.1.1.4.3.4.1.1">5287.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.1.4.3.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.3.5.1">
<span class="ltx_p" id="S3.T2.1.1.4.3.5.1.1">10368.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T2.1.1.4.3.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.3.6.1">
<span class="ltx_p" id="S3.T2.1.1.4.3.6.1.1">3012.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.1.4.3.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.3.7.1">
<span class="ltx_p" id="S3.T2.1.1.4.3.7.1.1">6824.6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S3.T2.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_b ltx_border_rr" id="S3.T2.1.1.5.4.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.4.2.1">
<span class="ltx_p" id="S3.T2.1.1.5.4.2.1.1">4</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T2.1.1.5.4.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.4.3.1">
<span class="ltx_p" id="S3.T2.1.1.5.4.3.1.1">8654.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T2.1.1.5.4.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.4.4.1">
<span class="ltx_p" id="S3.T2.1.1.5.4.4.1.1">4948.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T2.1.1.5.4.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.4.5.1">
<span class="ltx_p" id="S3.T2.1.1.5.4.5.1.1">9674.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r" id="S3.T2.1.1.5.4.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.4.6.1">
<span class="ltx_p" id="S3.T2.1.1.5.4.6.1.1">2920.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T2.1.1.5.4.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.4.7.1">
<span class="ltx_p" id="S3.T2.1.1.5.4.7.1.1">6549.5</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an analysis of response lengths produced by the QwQ-32B model across multiple rounds of reasoning using the Multi-round Thinking approach.  It shows the average number of tokens in model responses for four different benchmarks (AIME 2024, MATH-500, GPQA-Diamond, LiveCodeBench) and the overall average across all benchmarks.  The key observation is that the average response length decreases as the model iteratively refines its answers, indicating improved efficiency and conciseness in its reasoning process with each subsequent round.
> <details>
> <summary>read the caption</summary>
> Table 2: Analysis of response length across multiple reasoning rounds for QwQ-32B, demonstrating decreasing token lengths as the model iteratively refines answers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.1.1.1.1.1" style="padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_th_row ltx_border_rr ltx_border_t" id="S3.T3.1.1.1.1.2" style="width:30.4pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1.2.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.2.1.1.1">Round</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1.1.3" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1.3.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.3.1.1.1">AIME 2024</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1.1.4" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1.4.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.4.1.1.1">MATH-500</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1.1.5" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1.5.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.5.1.1.1">GPQA-Diamond</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T3.1.1.1.1.6" style="width:78.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1.6.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.6.1.1.1">LiveCodeBench</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1.1.7" style="width:52.0pt;padding-bottom:6.45831pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1.7.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.7.1.1.1">Average</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.1.1.2.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.2.1.1.1">AM-32B</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S3.T3.1.1.2.1.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.2.1.2.1">
<span class="ltx_p" id="S3.T3.1.1.2.1.2.1.1">1</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T3.1.1.2.1.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.2.1.3.1">
<span class="ltx_p" id="S3.T3.1.1.2.1.3.1.1">72.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T3.1.1.2.1.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.2.1.4.1">
<span class="ltx_p" id="S3.T3.1.1.2.1.4.1.1">96.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T3.1.1.2.1.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.2.1.5.1">
<span class="ltx_p" id="S3.T3.1.1.2.1.5.1.1">62.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S3.T3.1.1.2.1.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.2.1.6.1">
<span class="ltx_p" id="S3.T3.1.1.2.1.6.1.1">58.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T3.1.1.2.1.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.2.1.7.1">
<span class="ltx_p" id="S3.T3.1.1.2.1.7.1.1">72.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.3.2">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_rr" id="S3.T3.1.1.3.2.1" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.3.2.1.1">
<span class="ltx_p" id="S3.T3.1.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.1.1.1.1">2</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T3.1.1.3.2.2" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.3.2.2.1">
<span class="ltx_p" id="S3.T3.1.1.3.2.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.2.1.1.1">76.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T3.1.1.3.2.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.3.2.3.1">
<span class="ltx_p" id="S3.T3.1.1.3.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.3.1.1.1">97.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T3.1.1.3.2.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.3.2.4.1">
<span class="ltx_p" id="S3.T3.1.1.3.2.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.4.1.1.1">62.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S3.T3.1.1.3.2.5" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.3.2.5.1">
<span class="ltx_p" id="S3.T3.1.1.3.2.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.5.1.1.1">60.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T3.1.1.3.2.6" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.3.2.6.1">
<span class="ltx_p" id="S3.T3.1.1.3.2.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.3.2.6.1.1.1">74.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.4.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S3.T3.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_b ltx_border_rr" id="S3.T3.1.1.4.3.2" style="width:30.4pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.4.3.2.1">
<span class="ltx_p" id="S3.T3.1.1.4.3.2.1.1">2(SFT)</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T3.1.1.4.3.3" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.4.3.3.1">
<span class="ltx_p" id="S3.T3.1.1.4.3.3.1.1">75.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T3.1.1.4.3.4" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.4.3.4.1">
<span class="ltx_p" id="S3.T3.1.1.4.3.4.1.1">97.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T3.1.1.4.3.5" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.4.3.5.1">
<span class="ltx_p" id="S3.T3.1.1.4.3.5.1.1">63.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r" id="S3.T3.1.1.4.3.6" style="width:78.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.4.3.6.1">
<span class="ltx_p" id="S3.T3.1.1.4.3.6.1.1">57.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="S3.T3.1.1.4.3.7" style="width:52.0pt;padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.4.3.7.1">
<span class="ltx_p" id="S3.T3.1.1.4.3.7.1.1">73.5</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the AM-32B model's performance across multiple rounds of reasoning, specifically comparing the initial round (Round 1) against a second round (Round 2) and a second round after supervised fine-tuning (Round 2(SFT)).  The performance metrics used are pass@1 accuracy scores, obtained for four distinct benchmarks: AIME 2024, MATH-500, GPQA-Diamond, and LiveCodeBench.  The average pass@1 across all benchmarks is also provided for each round.
> <details>
> <summary>read the caption</summary>
> Table 3: Model Performance with Average(pass@1)
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19855/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19855/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}