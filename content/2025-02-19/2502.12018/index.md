---
title: "Atom of Thoughts for Markov LLM Test-Time Scaling"
summary: "Atom of Thoughts (AOT) revolutionizes LLM test-time scaling by decomposing complex reasoning into independent sub-questions, drastically reducing computation while maintaining high accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12018 {{< /keyword >}}
{{< keyword icon="writer" >}} Fengwei Teng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12018" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12018" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12018/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) often struggle with complex reasoning during inference, particularly when existing test-time scaling methods accumulate excessive historical information, wasting resources and hindering effective reasoning. This paper introduces Atom of Thoughts (AOT), a novel approach that tackles this problem. 



AOT addresses the issue by decomposing complex reasoning tasks into a series of smaller, independent sub-questions—'atomic questions.' These sub-questions, similar to transitions in a Markov process, depend primarily on their current state rather than accumulated history. This method is integrated seamlessly with existing scaling methods, enhancing their performance. Experiments across various benchmarks show that AOT significantly improves reasoning capabilities and computational efficiency, achieving state-of-the-art results in several cases.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Atom of Thoughts (AOT) significantly improves the efficiency of LLM test-time scaling by reducing reliance on historical information. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} AOT's Markov process-like approach enables a more efficient allocation of computational resources during reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} AOT demonstrates consistent performance improvements across various reasoning benchmarks, both as a standalone method and as a plug-in enhancement for other test-time scaling techniques. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical limitation of existing test-time scaling methods for LLMs: the excessive use of computational resources due to accumulated historical information.  **AOT offers a novel solution by decomposing complex reasoning tasks into smaller, independent sub-questions**, leading to significant efficiency gains without sacrificing accuracy. This opens exciting avenues for research into more efficient and scalable LLM reasoning.

------
#### Visual Insights



![](https://arxiv.org/html/2502.12018/x1.png)

> 🔼 This figure compares how different test-time scaling methods utilize computational resources. Traditional methods dedicate some resources to processing past reasoning steps (historical information), which can be inefficient and potentially hinder accurate reasoning. In contrast, Atom of Thoughts (AoT) focuses all computational resources on the current reasoning step, treating each step as an independent 'atomic' question. This targeted approach aims for improved efficiency and better reasoning outcomes.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of computational resource allocation in test-time scaling methods. Traditional test-time scaling methods allocate computational resources partially to process historical information, while AoT dedicates all computational resources to reasoning directly related to the current atomic question state.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.11">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.11.6.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt ltx_border_tt" id="S4.T1.11.6.1.1" style="padding:1pt 0.0pt;">Method</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T1.11.6.1.2" style="padding:1pt 0.0pt;">MATH</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T1.11.6.1.3" style="padding:1pt 0.0pt;">GSM8K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T1.11.6.1.4" style="padding:1pt 0.0pt;">BBH</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T1.11.6.1.5" style="padding:1pt 0.0pt;">MMLU-CF</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T1.11.6.1.6" style="padding:1pt 0.0pt;">HotpotQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T1.11.6.1.7" style="padding:1pt 0.0pt;">LongBench</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T1.11.6.1.8" style="padding:1pt 0.0pt;">Avg.</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.7.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.11.7.2.1" style="padding:1pt 0.0pt;">CoT</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.11.7.2.2" style="padding:1pt 0.0pt;">78.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.11.7.2.3" style="padding:1pt 0.0pt;">90.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.11.7.2.4" style="padding:1pt 0.0pt;">78.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.11.7.2.5" style="padding:1pt 0.0pt;">69.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.11.7.2.6" style="padding:1pt 0.0pt;">67.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.11.7.2.7" style="padding:1pt 0.0pt;">57.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.11.7.2.8" style="padding:1pt 0.0pt;">73.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.7.1.1" style="padding:1pt 0.0pt;">CoT-SC (<math alttext="n" class="ltx_Math" display="inline" id="S4.T1.7.1.1.m1.1"><semantics id="S4.T1.7.1.1.m1.1a"><mi id="S4.T1.7.1.1.m1.1.1" xref="S4.T1.7.1.1.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S4.T1.7.1.1.m1.1b"><ci id="S4.T1.7.1.1.m1.1.1.cmml" xref="S4.T1.7.1.1.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.1.1.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.1.1.m1.1d">italic_n</annotation></semantics></math>=5)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.7.1.2" style="padding:1pt 0.0pt;">81.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.7.1.3" style="padding:1pt 0.0pt;">92.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.7.1.4" style="padding:1pt 0.0pt;">83.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.7.1.5" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.5.1">71.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.7.1.6" style="padding:1pt 0.0pt;">66.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.7.1.7" style="padding:1pt 0.0pt;">58.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.7.1.8" style="padding:1pt 0.0pt;">75.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.8.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.11.8.3.1" style="padding:1pt 0.0pt;">Self-Refine</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.8.3.2" style="padding:1pt 0.0pt;">78.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.8.3.3" style="padding:1pt 0.0pt;">91.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.8.3.4" style="padding:1pt 0.0pt;">80.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.8.3.5" style="padding:1pt 0.0pt;">69.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.8.3.6" style="padding:1pt 0.0pt;">68.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.8.3.7" style="padding:1pt 0.0pt;">58.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.8.3.8" style="padding:1pt 0.0pt;">74.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.9.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.11.9.4.1" style="padding:1pt 0.0pt;">Analogical Prompting</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.9.4.2" style="padding:1pt 0.0pt;">65.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.9.4.3" style="padding:1pt 0.0pt;">87.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.9.4.4" style="padding:1pt 0.0pt;">72.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.9.4.5" style="padding:1pt 0.0pt;">65.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.9.4.6" style="padding:1pt 0.0pt;">64.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.9.4.7" style="padding:1pt 0.0pt;">52.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.9.4.8" style="padding:1pt 0.0pt;">68.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.10.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.11.10.5.1" style="padding:1pt 0.0pt;">AFlow</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.11.10.5.2" style="padding:1pt 0.0pt;">83.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.11.10.5.3" style="padding:1pt 0.0pt;">93.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.11.10.5.4" style="padding:1pt 0.0pt;">76.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.11.10.5.5" style="padding:1pt 0.0pt;">69.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.11.10.5.6" style="padding:1pt 0.0pt;">73.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.11.10.5.7" style="padding:1pt 0.0pt;">61.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.11.10.5.8" style="padding:1pt 0.0pt;">76.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.8.2.1" style="padding:1pt 0.0pt;">FoT (<math alttext="n" class="ltx_Math" display="inline" id="S4.T1.8.2.1.m1.1"><semantics id="S4.T1.8.2.1.m1.1a"><mi id="S4.T1.8.2.1.m1.1.1" xref="S4.T1.8.2.1.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S4.T1.8.2.1.m1.1b"><ci id="S4.T1.8.2.1.m1.1.1.cmml" xref="S4.T1.8.2.1.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.2.1.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.2.1.m1.1d">italic_n</annotation></semantics></math>=8)</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.8.2.2" style="padding:1pt 0.0pt;">82.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.8.2.3" style="padding:1pt 0.0pt;">94.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.8.2.4" style="padding:1pt 0.0pt;">82.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.8.2.5" style="padding:1pt 0.0pt;">70.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.8.2.6" style="padding:1pt 0.0pt;">66.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.8.2.7" style="padding:1pt 0.0pt;">59.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.8.2.8" style="padding:1pt 0.0pt;">75.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.10.4.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.10.4.2.3" style="background-color:#D9D9D9;">AoT</span><span class="ltx_text" id="S4.T1.10.4.2.2" style="background-color:#D9D9D9;"> (<math alttext="d" class="ltx_Math" display="inline" id="S4.T1.9.3.1.1.m1.1"><semantics id="S4.T1.9.3.1.1.m1.1a"><mi id="S4.T1.9.3.1.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.9.3.1.1.m1.1.1.cmml">d</mi><annotation-xml encoding="MathML-Content" id="S4.T1.9.3.1.1.m1.1b"><ci id="S4.T1.9.3.1.1.m1.1.1.cmml" xref="S4.T1.9.3.1.1.m1.1.1">𝑑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.3.1.1.m1.1c">d</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.3.1.1.m1.1d">italic_d</annotation></semantics></math>=1) + FoT (<math alttext="n" class="ltx_Math" display="inline" id="S4.T1.10.4.2.2.m2.1"><semantics id="S4.T1.10.4.2.2.m2.1a"><mi id="S4.T1.10.4.2.2.m2.1.1" mathbackground="#D9D9D9" xref="S4.T1.10.4.2.2.m2.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S4.T1.10.4.2.2.m2.1b"><ci id="S4.T1.10.4.2.2.m2.1.1.cmml" xref="S4.T1.10.4.2.2.m2.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.4.2.2.m2.1c">n</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.4.2.2.m2.1d">italic_n</annotation></semantics></math>=2)</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.10.4.3" style="padding:1pt 0.0pt;"><span class="ltx_text" id="S4.T1.10.4.3.1" style="background-color:#D9D9D9;">82.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.10.4.4" style="padding:1pt 0.0pt;"><span class="ltx_text" id="S4.T1.10.4.4.1" style="background-color:#D9D9D9;">94.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.10.4.5" style="padding:1pt 0.0pt;"><span class="ltx_text" id="S4.T1.10.4.5.1" style="background-color:#D9D9D9;">82.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.10.4.6" style="padding:1pt 0.0pt;"><span class="ltx_text" id="S4.T1.10.4.6.1" style="background-color:#D9D9D9;">69.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.10.4.7" style="padding:1pt 0.0pt;"><span class="ltx_text" id="S4.T1.10.4.7.1" style="background-color:#D9D9D9;">67.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.10.4.8" style="padding:1pt 0.0pt;"><span class="ltx_text" id="S4.T1.10.4.8.1" style="background-color:#D9D9D9;">58.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.10.4.9" style="padding:1pt 0.0pt;"><span class="ltx_text" id="S4.T1.10.4.9.1" style="background-color:#D9D9D9;">75.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.11.6" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.11.11.6.1" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.11.11.6.1.1" style="background-color:#D9D9D9;">AoT</span><span class="ltx_text" id="S4.T1.11.11.6.1.2" style="background-color:#D9D9D9;"> (Ours)</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.11.6.2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.11.11.6.2.1" style="background-color:#D9D9D9;">83.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.11.6.3" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.11.11.6.3.1" style="background-color:#D9D9D9;">95.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.11.6.4" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.11.11.6.4.1" style="background-color:#D9D9D9;">86.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.11.6.5" style="padding:1pt 0.0pt;"><span class="ltx_text" id="S4.T1.11.11.6.5.1" style="background-color:#D9D9D9;">70.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.11.6.6" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.11.11.6.6.1" style="background-color:#D9D9D9;">80.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.11.6.7" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.11.11.6.7.1" style="background-color:#D9D9D9;">68.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.11.11.6.8" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.11.11.6.8.1" style="background-color:#D9D9D9;">80.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.5" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_bb ltx_border_r" id="S4.T1.11.5.1" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.11.5.1.2" style="background-color:#D9D9D9;">AoT</span><span class="ltx_text" id="S4.T1.11.5.1.1" style="background-color:#D9D9D9;"> <sup class="ltx_sup" id="S4.T1.11.5.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.11.5.1.1.1.1">∗</span></sup> (Ours)</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_bb" id="S4.T1.11.5.2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.5.2.1" style="background-color:#D9D9D9;">84.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_bb" id="S4.T1.11.5.3" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.5.3.1" style="background-color:#D9D9D9;">95.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_bb" id="S4.T1.11.5.4" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.5.4.1" style="background-color:#D9D9D9;">87.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_bb" id="S4.T1.11.5.5" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.5.5.1" style="background-color:#D9D9D9;">71.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_bb" id="S4.T1.11.5.6" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.5.6.1" style="background-color:#D9D9D9;">81.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_bb" id="S4.T1.11.5.7" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.5.7.1" style="background-color:#D9D9D9;">68.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_bb" id="S4.T1.11.5.8" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.5.8.1" style="background-color:#D9D9D9;">81.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of three versions of the Atom of Thoughts (AoT) model across six benchmark datasets.  The three AoT versions are: the base version, a version integrated with the Forest of Thoughts (FoT) method, and a computationally intensive version that uses an LLM to select the best answer from three runs. The datasets cover various reasoning tasks: mathematical reasoning (MATH, GSM8K), logical reasoning (BBH), multiple-choice questions (MMLU-CF), and multi-hop reasoning (HotpotQA, LongBench).  Performance is measured as exact match accuracy for MATH, GSM8K, BBH, and MMLU-CF, and F1 score for HotpotQA and LongBench.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance Comparison Across Tasks (%). We evaluate three variants: the base version (AoT), a version integrated with FoT (AoT (d𝑑ditalic_d=1) + FoT(n𝑛nitalic_n=2)), and a computationally intensive version (AoT ∗) that uses LLM to select the optimal answer from three runs. Results are reported as exact match accuracy for MATH, GSM8K, BBH, and MMLU-CF, and F1 scores for HotpotQA and LongBench.
> </details>





### In-depth insights


#### Markov Test-Time
A hypothetical 'Markov Test-Time' section in a research paper would likely explore the application of Markov models to enhance the efficiency and reasoning capabilities of large language models (LLMs) during inference.  This approach would focus on modeling the LLM's reasoning process as a sequence of states, where each state represents a particular stage of inference, and transitions between states follow Markovian properties (memorylessness).  **The key advantage would be the reduction of computational cost associated with traditional methods that maintain extensive reasoning histories.**  By focusing only on the current state, the Markov approach potentially reduces memory usage and speeds up processing. The core concept would involve decomposing complex reasoning tasks into simpler, independent subtasks. Each subtask would represent a state in the Markov chain, allowing for parallel processing and potentially minimizing the accumulation of irrelevant information.  **However, challenges might involve the design of effective state representations and the selection of appropriate transition probabilities to accurately reflect the LLM's reasoning process.**  The evaluation would likely involve comparisons to existing methods across various benchmarks, demonstrating the trade-offs between computational efficiency and accuracy.  Overall, a 'Markov Test-Time' approach promises significant improvements in LLM scaling, but careful design and thorough evaluation are crucial for its successful implementation.

#### Atomic Thoughts
The concept of "Atomic Thoughts" introduces a novel approach to large language model (LLM) reasoning.  It posits that complex reasoning tasks can be broken down into a sequence of independent, self-contained "atomic" sub-questions. **This decomposition, akin to a Markov process, eliminates the need to retain and process extensive historical information**, a significant advantage over traditional methods that struggle with computational cost and interference from accumulated data. By focusing on the current atomic question's state, **Atomic Thoughts improves reasoning efficiency and reduces resource waste.**  The framework's flexibility allows for seamless integration with existing test-time scaling techniques, acting as a plug-in enhancement rather than a complete replacement.  **This modular design and Markov property are key strengths, enabling efficient scaling and enhanced performance across various reasoning benchmarks.** The core innovation lies in managing the decomposition and contraction of sub-questions using dependency-based directed acyclic graphs (DAGs), ensuring that each step relies primarily on the immediately preceding state, thus realizing the Markov property.  While promising, further research is needed to address limitations in the robustness of the DAG-based decomposition and the framework's assumption of independent sub-questions. 

#### DAG Decomposition
The core idea behind "DAG Decomposition" is to **break down complex reasoning problems into smaller, more manageable subproblems**, represented as nodes in a Directed Acyclic Graph (DAG).  This decomposition leverages the inherent structure of the problem to **improve efficiency and reduce the computational burden** associated with traditional methods that rely on maintaining extensive historical information.  The DAG structure ensures that each subproblem depends only on previously solved ones, naturally leading to a more efficient, Markovian reasoning process. **This decomposition step is crucial**, as it forms the foundation for the subsequent contraction phase, enabling the iterative refinement and simplification of the original problem until a directly solvable state is reached.  The careful construction of the DAG, ensuring acyclicity and representing dependencies accurately, is critical for the overall success and efficiency of the method.  **The effectiveness of this method hinges on the ability of an LLM to correctly decompose the problem** into meaningful subproblems, which underscores the need for robust and accurate dependency identification techniques.

#### AOT Integration
The concept of AOT integration centers on the seamless incorporation of Atom of Thoughts (AOT) into existing test-time scaling methods.  **AOT's modular design allows it to function as both a standalone framework and a plug-in enhancement.** This flexibility is crucial because it allows researchers to leverage AOT's strengths (efficient decomposition and contraction of complex questions into atomic units) while simultaneously benefiting from the capabilities of established test-time scaling approaches like Chain-of-Thought or Tree of Thoughts. The integration process often involves using AOT's output (the simplified atomic questions) as input for another method, thereby optimizing resource allocation and ensuring answer equivalence. This plug-and-play functionality is a significant advantage, facilitating broader adoption and enhancing the overall reasoning capabilities of LLMs. **A successful AOT integration significantly reduces computational costs** associated with processing historical information, enabling more efficient and effective large-language model reasoning.

#### Future of AOT
The future of Atom of Thoughts (AOT) hinges on addressing its current limitations and exploring new avenues for improvement. **Improving the robustness of the DAG decomposition** is crucial, potentially through incorporating mechanisms for detecting and correcting faulty decompositions or utilizing more advanced graph representation techniques.  **Integrating AOT with other reasoning frameworks** will be essential. Seamless integration with existing test-time scaling methods like Tree of Thoughts or Chain-of-Thought would offer a significant advantage.  **Extending AOT's applicability beyond current benchmarks** to diverse problem domains such as common sense reasoning, visual reasoning, or complex scientific reasoning requires further investigation.  Finally, **exploring the use of different LLM architectures** alongside AOT presents an exciting area for future research. By incorporating more powerful LLMs, it may be possible to further enhance the reasoning abilities of the system and handle more complex tasks.  Overall, the future of AOT looks promising, promising to enhance the efficiency and effectiveness of large language models in various reasoning tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12018/x2.png)

> 🔼 Figure 2 illustrates the Atom of Thoughts (AoT) framework. The left side shows how AoT uses a Markov process, where each state represents a simplified sub-problem (atomic question) derived from the previous state through a decomposition and contraction process. This process continues until the problem is broken down into easily solvable atomic questions. The right side shows that AoT can be integrated with existing test-time scaling methods (like Chain of Thoughts and Tree of Thoughts).  Any intermediate state in AoT's Markov process can be used as a starting point for other methods, allowing for flexible combination while ensuring the final answer remains consistent. AoT is designed to be used either as a stand-alone framework or as a pre-processing module to improve the reasoning capability of other methods.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overview of AoT. The left portion illustrates our Markov process where each state Qisubscript𝑄𝑖Q_{i}italic_Q start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT represents an atomic reasoning state derived through DAG decomposition and contraction from its predecessor. The right portion demonstrates AoT’s integration capability with existing test-time scaling methods (e.g., CoT, ToT). A key feature of this integration is that any intermediate state Qisubscript𝑄𝑖Q_{i}italic_Q start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT from our Markov process can serve as an entry point (Q0subscript𝑄0Q_{0}italic_Q start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT) for other methods, enabling flexible composition while maintaining answer equivalence with the original question. This design allows AoT to function both as a standalone iterative framework and as a preprocessing module that can enhance existing approaches through structural optimization.
> </details>



![](https://arxiv.org/html/2502.12018/x3.png)

> 🔼 This figure illustrates how the performance of the Atom of Thoughts (AOT) model scales with the number of reasoning steps (depth) on the MATH dataset.  The x-axis represents the depth of the reasoning process, and the y-axis shows the model's accuracy.  The color intensity (darker blue) corresponds to the number of data points at each depth; darker shades indicate a larger number of problems solved at that depth. The graph demonstrates that while performance continues to improve with more reasoning steps, a significant portion of problems can be solved efficiently with relatively few steps, highlighting the efficiency of AOT.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance scaling with transition times on MATH dataset. Darker blue indicates larger sample sizes at shallower depths, as most problems are solved with fewer decomposition steps.
> </details>



![](https://arxiv.org/html/2502.12018/x4.png)

> 🔼 Figure 4 illustrates the computational efficiency of Atom of Thoughts (AOT) in comparison to other reasoning methods on the MATH dataset. The x-axis represents the computational cost (log scale), and the y-axis represents the accuracy. The green line shows the performance of the Forest of Thoughts (FoT) method with varying numbers of trees (2^k, where k = 0, 1, 2...). The gray trend line represents the performance of other baseline methods. The figure demonstrates that AOT, when combined with FoT, achieves slightly better accuracy than FoT alone while using significantly less computation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance comparison on MATH dataset showing computational efficiency. The green line shows FoT scaling with varying tree numbers (2k,k=0,1,2,…formulae-sequencesuperscript2𝑘𝑘012…2^{k},k=0,1,2,...2 start_POSTSUPERSCRIPT italic_k end_POSTSUPERSCRIPT , italic_k = 0 , 1 , 2 , …), while the gray trend line (representing other baseline methods) together demonstrate the trade-off between performance gains and computational costs. AoT (d𝑑ditalic_d=1) combined with FoT(n𝑛nitalic_n=2) achieves slightly better performance to standalone FoT(n𝑛nitalic_n=8) while requiring substantially less computation.
> </details>



![](https://arxiv.org/html/2502.12018/x5.png)

> 🔼 This figure displays a histogram showing the frequency distribution of solution depths across a set of questions. The x-axis represents the depth of the solution, and the y-axis represents the number of questions with that solution depth. Darker shades of orange indicate that a particular depth occurred more frequently in the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of solution depths across questions. Darker orange bars indicate depths that appear more frequently in the dataset.
> </details>



![](https://arxiv.org/html/2502.12018/x6.png)

> 🔼 This bar chart visualizes the frequency distribution of the number of subquestions generated during the decomposition phase of the Atom of Thoughts (AOT) framework,  for each question in the MATH dataset. The x-axis represents the count of subquestions, and the y-axis shows the number of questions resulting in that specific subquestion count. The darker the green color of a bar, the more frequently that particular subquestion count appears in the solutions.
> <details>
> <summary>read the caption</summary>
> Figure 6: Distribution of subquestion counts across questions. Darker green bars represent more common subquestion counts in the solutions.
> </details>



![](https://arxiv.org/html/2502.12018/x7.png)

> 🔼 This figure illustrates the relationship between the number of subquestions generated during the decomposition phase of the Atom of Thoughts (AOT) framework and the accuracy of the final answers.  The x-axis represents the number of subquestions, and the y-axis represents the accuracy. Each point represents a question from the dataset. The color intensity of the points indicates the frequency of occurrence of that particular combination of subquestion count and accuracy; darker points signify more frequent patterns in the data. This visualization helps in understanding how the complexity of question decomposition, as measured by the number of subquestions, affects the overall accuracy of the AOT framework.
> <details>
> <summary>read the caption</summary>
> Figure 7: Number of subquestions vs accuracy. Color intensity (green) reflects data density - darker points represent more frequent patterns.
> </details>



![](https://arxiv.org/html/2502.12018/x8.png)

> 🔼 Figure 8 visualizes the correlation between the depth of the solution graph (number of reasoning steps) and the accuracy of the solution.  The x-axis represents the solution depth, while the y-axis shows the accuracy. The color intensity of the data points indicates data density; darker points represent more frequently observed combinations of depth and accuracy. The figure reveals a trend of decreasing accuracy as the depth increases, suggesting that more complex reasoning processes (deeper graphs) are more prone to errors.
> <details>
> <summary>read the caption</summary>
> Figure 8: Solution depth vs accuracy. Color intensity (orange) reflects data density - darker points represent more frequent patterns.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S5.T2.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">HotpotQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">LongBench</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" colspan="2" id="S5.T2.1.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">F1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hit</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">F1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.2.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">Hit</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.1.3.3.1" rowspan="3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T2.1.3.3.1.1">CoT</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.1.3.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">QwQ</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">68.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.3.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.3.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">52.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.3.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">65.6</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.1.4.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DeepSeek-R1</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">56.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">69.9</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.1.5.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">o3-mini</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">77.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">55.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.5.5.5.1">70.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T2.1.6.6.1" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T2.1.6.6.1.1">AoT</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.1.6.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">gpt-4o-mini</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.6.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.6.6.3.1">80.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.6.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.6.6.4.1">89.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.6.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.6.6.5.1">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.6.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">69.3</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.1.7.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">o3-mini</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.7.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.7.7.2.1">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.7.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.7.7.3.1">91.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.7.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.7.7.4.1">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.7.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.7.7.5.1">72.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different reasoning models on two multi-hop question answering datasets: HotpotQA and LongBench.  For each model, it shows the F1 score (a measure of accuracy that considers both precision and recall) and the hit rate (the percentage of questions where the model produced at least one non-zero F1 score).  The comparison helps to assess the effectiveness of various reasoning models on complex questions requiring multiple reasoning steps to find the answer.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of Reasoning Model Performance on Multi-hop QA Tasks. Results show F1 scores and Hit rates (F1 > 0) for HotpotQA and LongBench across different models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.2">MATH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.3">GSM8K</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.2.1.1">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T3.3.2.1.1.1">AoT</span> (Full)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.2.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.3.2.1.2.1">83.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.2.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.3.2.1.3.1">95.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.3.2.1">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T3.3.3.2.1.1">AoT</span> w/o Decomposition</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.3.3.2.2.1">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.3.3.2.3.1">94.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.3.4.3.1">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T3.3.4.3.1.1">AoT</span> w/o DAG Structure</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.4.3.2">82.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.4.3.3">94.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of removing key components from the Atom of Thoughts (AoT) framework on its performance.  The table shows that removing the decomposition phase significantly reduces performance, while removing the DAG structure while retaining the decomposition phase leads to an even greater decrease in performance.  This demonstrates the importance of both the decomposition and DAG structure to the effectiveness of AoT.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation Study on AoT Components (%). Removing the decomposition phase causes notable performance drops, while removing the DAG structure but keeping decomposition leads to even larger degradation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12018/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12018/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}