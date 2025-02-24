---
title: "StructFlowBench: A Structured Flow Benchmark for Multi-turn Instruction Following"
summary: "Current LLM evaluation benchmarks often overlook the structural dependencies in multi-turn dialogues, treating them as simple concatenations of single-turn interactions. This approach neglects user in..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Dialogue Systems", "🏢 School of Artificial Intelligence, Jilin University",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14494 {{< /keyword >}}
{{< keyword icon="writer" >}} Jinnan Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14494" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14494" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14494/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing LLM evaluation focuses on constraint satisfaction, overlooking structural dependency between dialogue turns. This results in a failure to model complex real-world scenarios and methodological biases, which impacts the coherence and analytical depth of dialogue systems. 



To address these limitations, this paper introduces **StructFlowBench**, a multi-turn benchmark with structural flow modeling, including 6 inter-turn relationships. The study systematically evaluates 13 LLMs to reveal deficiencies in understanding dialogue structures, offering insights for improving multi-turn instruction following.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces StructFlowBench, a new benchmark for multi-turn instruction following with structural flow modeling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Defines a structural flow framework comprising six fundamental inter-turn relationships. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reveals significant deficiencies in current models' comprehension of multi-turn dialogue structures through systematic evaluations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel benchmark, StructFlowBench**, which incorporates a multi-turn structural flow framework for instruction-following tasks. The benchmark addresses the critical gap in current evaluation methods by emphasizing the structural dependency between dialogue turns, moving beyond simple constraint satisfaction. It encourages researchers to develop more contextually aware and structurally coherent dialogue systems. The systematic evaluation of various LLMs provides valuable insights for optimizing dialogue systems and advancing research in human-AI interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14494/x1.png)

> 🔼 This figure presents a taxonomy of six fundamental inter-turn relationships in multi-turn dialogues.  These relationships are: Follow-up, Refinement, Recall, Summary, Expansion, and Unrelatedness. Each relationship is visually represented, showing how subsequent turns in a conversation relate to previous turns. The taxonomy provides a framework for analyzing existing dialogues and generating new dialogues with specified structural flows, allowing for more nuanced and controlled evaluation of multi-turn instruction following capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: The Structural Flow Taxonomy includes six fundamental structures, each used to describe the inter-turn relationships in multi-turn dialogues. It can be applied to analyze any dialogue and generate specific structural flows.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.2.1.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.1.1">Benchmark</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.2.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.2.1">#Dialogues</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.1.1.2.1.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.3.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.3.1.1.1">Avg. #Turns</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.1.1.2.1.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.4.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.4.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.4.1.1.1">#Constraint Types</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.1.1.2.1.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.5.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.5.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.5.1.1.1">Fine-grained Constraint</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.1.1.2.1.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.6.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.6.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.6.1.1.1">Multi-turn Assessment</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.1.1.2.1.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.7.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.7.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.7.1.1.1">Structural Information</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.3.2.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.3.2.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">541</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.2.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.3.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.3.1.1" style="width:42.7pt;">1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.2.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.4.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.4.1.1" style="width:56.9pt;">4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.2.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.5.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.2.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.6.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.6.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.2.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.7.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.7.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.4.3.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">CELLO</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.4.3.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">523</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.3.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.3.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.3.1.1" style="width:42.7pt;">1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.3.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.4.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.4.1.1" style="width:56.9pt;">4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.3.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.5.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.3.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.6.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.6.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.3.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.7.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.7.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.5.4.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">FollowBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.5.4.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">820</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.4.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.3.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.3.1.1" style="width:42.7pt;">1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.4.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.4.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.4.1.1" style="width:56.9pt;">6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.4.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.5.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.4.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.6.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.6.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.4.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.7.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.7.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.6.5.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">InfoBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.6.5.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">500</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.5.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.3.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.3.1.1" style="width:42.7pt;">1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.5.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.4.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.4.1.1" style="width:56.9pt;">5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.5.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.5.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.5.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.6.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.6.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.5.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.7.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.7.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.7.6.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">CFBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.7.6.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">1000</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.7.6.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.3.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.3.1.1" style="width:42.7pt;">1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.7.6.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.4.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.4.1.1" style="width:56.9pt;">10</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.7.6.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.5.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.7.6.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.6.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.6.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.7.6.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.7.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.7.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.8.7.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">ComplexBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.8.7.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">1150</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.7.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.3.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.3.1.1" style="width:42.7pt;">1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.7.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.4.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.4.1.1" style="width:56.9pt;">19</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.7.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.5.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.7.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.6.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.6.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.7.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.7.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.7.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.9.8.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">MT-Bench-101</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.9.8.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">1388</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.8.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.3.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.3.1.1" style="width:42.7pt;">3.03</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.8.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.4.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.4.1.1" style="width:56.9pt;">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.8.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.5.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.5.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.8.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.6.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.6.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.8.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.7.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.7.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.10.9.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Multi-if</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.10.9.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">4501</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.9.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.3.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.3.1.1" style="width:42.7pt;">3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.9.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.4.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.4.1.1" style="width:56.9pt;">24</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.9.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.5.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.9.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.6.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.6.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.9.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.9.7.1">
<span class="ltx_p" id="S3.T1.1.1.10.9.7.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">MT-Eval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.1.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">168</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.4.1">
<span class="ltx_p" id="S3.T1.1.1.1.4.1.1" style="width:42.7pt;">6.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.5.1">
<span class="ltx_p" id="S3.T1.1.1.1.5.1.1" style="width:56.9pt;">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.6.1">
<span class="ltx_p" id="S3.T1.1.1.1.6.1.1" style="width:62.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.7.1">
<span class="ltx_p" id="S3.T1.1.1.1.7.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1" style="width:62.6pt;"><math alttext="\triangle" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.1.1.1.1.1.1.m1.1.1.cmml">△</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.m1.1.1">△</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.m1.1c">\triangle</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.m1.1d">△</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.1.1.11.10.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.10.1.1">StructFlowBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.1.1.11.10.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">155</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.11.10.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.3.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.3.1.1" style="width:42.7pt;">4.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.11.10.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.4.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.4.1.1" style="width:56.9pt;">13</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.11.10.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.5.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.11.10.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.6.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.6.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.11.10.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.10.7.1">
<span class="ltx_p" id="S3.T1.1.1.11.10.7.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares StructFlowBench against other multi-turn dialogue and instruction following benchmarks.  It highlights key differences in the number of dialogues, average turns per dialogue, the number of constraint types used for evaluation, whether fine-grained constraints were included in the evaluation, whether the benchmark assesses multi-turn dialogue capabilities, and whether structural information was considered in the evaluation. The symbol '△△' indicates that some constraints might be partially satisfied.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparisons between StructFlowbench and other related benchmark datasets. △△\triangle△ represents partially satisfied.
> </details>





### In-depth insights


#### StructFlowBench
**StructFlowBench**, a novel instruction-following benchmark, introduces a multi-turn structural flow framework. It addresses limitations in existing benchmarks that overlook the crucial structural dependency between dialogue turns. By defining six fundamental inter-turn relationships (**Follow-up, Refinement, Recall, Summary, Expansion, Unrelatedness**), it introduces novel structural constraints for model evaluation. It has a **Dual-constraint evaluation system**, combining intra-turn instruction constraints with newly proposed structural constraints, to ensure logical coherence across turns. This enables a comprehensive assessment of LLMs' multi-turn dialogue capabilities and comprehension of multi-turn dialogue structures and user intent.

#### Dual-Constraint Eval
While the research paper doesn't have an explicit section titled 'Dual-Constraint Eval', the concept is woven into the study of multi-turn instruction following. It implies a methodology where LLMs are evaluated based on satisfying **two distinct sets of constraints simultaneously**: intra-turn and inter-turn. **Intra-turn constraints**, cover aspects within a single dialogue turn such as content accuracy or style. The innovation lies in also assessing LLMs against **inter-turn, or structural constraints** across multiple turns, ensuring logical coherence or intent carryover. This duality enhances the assessment, preventing models from acing individual responses but failing in conversation-level coherence, thereby creating a higher standard for multi-turn dialogue systems.

#### 6-Flow Taxonomy
The research introduces a novel structural flow taxonomy, comprising six fundamental inter-turn relationships: **Follow-up, Refinement, Recall, Summary, Expansion, and Unrelatedness**. This taxonomy is pivotal for **understanding and analyzing the structural dynamics of multi-turn dialogues**, a capability often overlooked in existing LLM evaluations. By categorizing how dialogue turns relate to each other, the taxonomy enables a more nuanced assessment of an LLM's ability to maintain coherence, track user intent, and generate contextually appropriate responses across multiple turns. The significance of each relationship is highlighted; for instance, **'Refinement'** indicates an LLM's capacity to adapt to user corrections, while **'Recall'** demonstrates its memory of previous interactions. The taxonomy also serves as a basis for controlled dialogue generation, allowing researchers to create datasets with predefined structural patterns, which are crucial for training and evaluating LLMs in more realistic and complex conversational scenarios.

#### Dataset Analysis
A comprehensive dataset analysis would be pivotal in understanding the **benchmark's robustness**. It should detail the dataset's size, distribution across different structural flows, and the diversity of topics covered. Analyzing the **constraint types** and their prevalence would reveal the benchmark's focus. Moreover, examining the dialogue turn lengths and the complexity of the language used could provide insights into the **challenge posed to LLMs**. Understanding data generation and augmentation is important to assess potential biases. Finally, studying real-world scenario mapping is important in gauging the benchmark's applicability.

#### Model Weakness
**Current LLMs struggle with complex, multi-turn dialogues**, exhibiting instability in maintaining context and coherence. Mid-tier models often falter in **Instruction Satisfaction Rate and Weighted Constraint Satisfaction Rate**, indicating difficulty in complex constraint management. **Refinement tasks pose a significant challenge**, revealing a need for improved dynamic response adaptation. **Format consistency remains a key limitation**, suggesting further advancements are required in generating structured outputs. These weaknesses highlight the importance of StructFlowBench in identifying and addressing areas for improvement in multi-turn instruction-following models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14494/x2.png)

> 🔼 The figure illustrates the three-stage pipeline for constructing the StructFlowBench dataset.  First, parameters such as the task type, topic, user type, and structural flow template are defined. Second, a two-step dialogue generation process creates the dialogue data. This begins with generating intermediate dialogue plans (summarized prompts) from the structural flow templates, followed by generating complete dialogues from these plans using GPT-4. Finally, the generated dialogues undergo constraint extraction.  Intra-turn constraints are extracted automatically using GPT-4, while the structural constraints are added based on the predefined structural flow information.
> <details>
> <summary>read the caption</summary>
> Figure 2: The construction pipeline of StructFlowBench. First, tasks, topics, user types, and structural flow templates are defined. Then, dialogue data is generated in two steps: intermediate dialogue plans (i.e., the summarized prompts) are created from the structural flow, followed by generating complete dialogues from these plans. Finally, intra-turn constraints are extracted by GPT-4o, and structural constraints are added based on the structural flow information.
> </details>



![](https://arxiv.org/html/2502.14494/x3.png)

> 🔼 This heatmap visualizes a comparative analysis of five multi-turn dialogue datasets across three key aspects: logical coherence, goal clarity, and transition naturalness.  Each dataset's performance is rated on a scale of 1 to 5 for each aspect, with 5 representing the highest score.  Additionally, a 'Confusion Factor' is calculated to indicate the proportion of dialogues in each dataset that scored 4 or higher, suggesting a higher likelihood of being mistaken for real human interactions.  This provides a comprehensive overview of the suitability of each dataset for evaluating complex conversational scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 3: The comprehensive complex scenario evaluation heatmap of five multi-turn dialogue datasets.
> </details>



![](https://arxiv.org/html/2502.14494/x4.png)

> 🔼 Figure 4 presents a comparative analysis of the performance of various LLMs across two different categorization schemes. Panel (a) shows the models' performance across various intra-turn constraints, such as content, style, format, keyword, and inverse constraints.  Each axis represents a constraint type, and the distance from the center indicates the model's proficiency in that constraint. Panel (b) displays the models' performance across seven different task categories, including fact-based questions, open-ended questions, practical writing, creative writing, professional writing, casual chat, and task-oriented role-playing.  This allows for a comprehensive view of the strengths and weaknesses of each model across both constraint types and task types.
> <details>
> <summary>read the caption</summary>
> Figure 4: The radar chart of intra-turn-constraint-categorized performance (a) and task-categorized performance (b).
> </details>



![](https://arxiv.org/html/2502.14494/x5.png)

> 🔼 This template guides the generation of intermediate dialogue plans.  It structures the process by first requiring understanding of background knowledge and a dialogue structure template.  Then, it specifies setting a user purpose (topic and type) and defining the overall user goal.  Finally, it details generating summarized user prompts for each turn in the dialogue, ensuring they align naturally with the overall dialogue structure and user goals. The output format is specified to ensure consistency and usability.
> <details>
> <summary>read the caption</summary>
> Figure 5: Intermediate Dialogue Plan Generation Template
> </details>



![](https://arxiv.org/html/2502.14494/x6.png)

> 🔼 This figure displays the prompt template used to generate complete dialogues from the intermediate dialogue plans.  The prompt instructs the model to expand the summarized user prompts into realistic and detailed user prompts, incorporating various constraints from the 'Constraint Guideline.' These constraints ensure the expanded prompts align with the summarized prompts, reflecting genuine user inquiries and adhering to specified user characteristics.  The output should follow a JSON format.  The template includes sections for background information and specific instructions to guide the model's response generation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Complete Dialogue Generation Prompt Template
> </details>



![](https://arxiv.org/html/2502.14494/x7.png)

> 🔼 This figure details the prompt template used for extracting constraints from a multi-turn dialogue.  The prompt instructs an LLM to identify and categorize atomic constraint expressions from a given user prompt.  It defines atomic constraint expressions as the smallest units describing task requirements within instructions.  The prompt provides examples and a guideline specifying the types and definitions of atomic constraints (e.g., Inverse Constraint, Keyword/Element Constraint, Style Constraint).  The output format is JSON, structured to categorize each extracted constraint by type, content (expressed as a question), and an explanation justifying the type classification.
> <details>
> <summary>read the caption</summary>
> Figure 7: Constraint Extraction Prompt Template
> </details>



![](https://arxiv.org/html/2502.14494/x8.png)

> 🔼 Figure 8 presents the prompt template utilized for the GPT-40 evaluation in the StructFlowBench. This template guides the GPT-40 model in assessing the alignment of an LLM response with the corresponding user prompt and its specified constraints.  It provides GPT-40 with the conversation history, the user's prompt, the LLM's response, and a checklist of constraints to verify. The output from GPT-40 consists of a 'yes' or 'no' judgment for each constraint, accompanied by a detailed explanation justifying the decision.
> <details>
> <summary>read the caption</summary>
> Figure 8: GPT-4o Evaluation Prompt Template
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.1.1.1.1.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1">Model Name</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.2.1">follow-up</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.3.1">refinement</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.4.1">expansion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.5.1">summary</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.1.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.6.1">recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.7.1">CSR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.8.1">ISR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.9.1">WCSR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.10.1">DRFR</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.2.1.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Deepseek-v3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.2.1">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.3.1">0.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.4.1">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.5.1">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.1.1.2.1.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.6.1">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.7.1">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.8.1">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.9.1">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.1.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.2.1.10.1">0.98</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.3.2.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Gemini-1.5-Pro</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.3.2.5.1">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.3.2.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.4.3.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.4.3.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.5.4.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Claude-3.5-Sonnet</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.5.4.3.1">0.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.1.1.5.4.5.1">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.5.4.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.96</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.6.5.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">GLM-4-9B-Chat</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.6.5.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.86</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.93</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.95</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.7.6.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Qwen2.5-14B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.7.6.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.8.7.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.8.7.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.7.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.9.8.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Deepseek-R1-Distill-Qwen-7B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.86</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.9.8.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.82</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.10.9.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">DeepSeek-R1-Distill-Llama-8B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.82</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.10.9.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.86</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.87</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.11.10.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Llama-3.1-Instruct-8B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.11.10.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.86</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.12.11.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.12.11.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.88</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.13.12.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Yi-6B-Chat</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.12.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.12.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.12.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.12.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.1.1.13.12.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.12.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.86</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.12.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.12.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.12.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.86</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.1.1.14.13.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Mistral-7B-Instruct-v0.3</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.1.1.14.13.6" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13.7" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13.8" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13.9" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13.10" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">0.78</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of thirteen large language models (LLMs) on the StructFlowBench benchmark.  The left half shows each model's performance across five fundamental structural constraints (Follow-up, Refinement, Expansion, Summary, Recall) within multi-turn dialogues. The right half displays the models' overall performance using four key metrics: Constraint Satisfaction Rate (CSR), Instruction Satisfaction Rate (ISR), Weighted Constraint Satisfaction Rate (WCSR), and Decomposed Requirements Following Ratio (DRFR).  These metrics assess the models' ability to understand and correctly follow both individual constraints and the overall structure of the multi-turn instructions.
> <details>
> <summary>read the caption</summary>
> Table 2: StructFlowBench rated by GPT-4o. The left side displays the performance of various models on the five basic structural constraints, while the right side presents their performance on the four key metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.1">Category</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.2.1">#Dialogues</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T3.1.2.1.1">Fact-based Questions</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T3.1.2.1.2">25</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.3.2.1">Open-ended Questions</td>
<td class="ltx_td ltx_align_right" id="A1.T3.1.3.2.2">20</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.4.3.1">Practical Writing</td>
<td class="ltx_td ltx_align_right" id="A1.T3.1.4.3.2">26</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.5.4.1">Creative Writing</td>
<td class="ltx_td ltx_align_right" id="A1.T3.1.5.4.2">21</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.6.5.1">Professional Writing</td>
<td class="ltx_td ltx_align_right" id="A1.T3.1.6.5.2">21</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.7.6.1">Casual Chat</td>
<td class="ltx_td ltx_align_right" id="A1.T3.1.7.6.2">15</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.8.7.1">Task-oriented Role Play</td>
<td class="ltx_td ltx_align_right" id="A1.T3.1.8.7.2">17</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.9.8.1">Mixture</td>
<td class="ltx_td ltx_align_right" id="A1.T3.1.9.8.2">10</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.1.10.9.1">Total</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="A1.T3.1.10.9.2">155</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the distribution of tasks within the StructFlowBench dataset.  It shows the number of dialogues included for each of the nine task types used in the benchmark. These tasks cover various NLP domains, ensuring a comprehensive evaluation of different instruction-following capabilities.
> <details>
> <summary>read the caption</summary>
> Table 3: Task distribution of StructFlowBench dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.1.1">Follow-up</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.2.1">Refinement</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.3.1">Expansion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.4.1">Summary</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.5.1">Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.6.1">C1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.7.1">C2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.8.1">C3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.9.1">C4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.10.1">C5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.11"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.11.1">C6</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.12"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.12.1">C7</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.1.13"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.13.1">C8</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.1">95</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.2">32</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.3">156</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.4">63</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T4.1.1.2.1.5">118</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.6">505</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.7">153</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.8">140</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.9">105</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.10">175</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.11">98</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.12">83</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T4.1.1.2.1.13">52</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the distribution of constraints within the StructFlowBench dataset.  It breaks down the number of instances for each of the five structural constraints (Follow-up, Refinement, Expansion, Summary, Recall) and the eight intra-turn constraint types (Content, Keyword/Element, Style, Basic Format, Quantity Format, Template Format, Situation, and Inverse). This shows the frequency of different constraint types used in creating the multi-turn dialogues within the benchmark dataset.
> <details>
> <summary>read the caption</summary>
> Table 4: The constraints distribution of StructFlowBench. Follow-up, Refinement, Expansion, Summary, Recall denote the structural constraints. The designations C1 - C8 denote the Constraint types of Content Constraint, Keyword/Element Constraint, Style Constraint, Basic Format Constraint, Quantity Format Constraint, Template Format Constraint, Situation Constraint, Inverse Constraint
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.1.1">Model Name</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.2.1">
<span class="ltx_p" id="A3.T5.1.1.1.1.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.2.1.1.1">Inverse Constraint</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.3.1">
<span class="ltx_p" id="A3.T5.1.1.1.1.3.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.3.1.1.1">Keyword/Element Constraint</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.4.1">
<span class="ltx_p" id="A3.T5.1.1.1.1.4.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.4.1.1.1">Style Constraint</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.5.1">
<span class="ltx_p" id="A3.T5.1.1.1.1.5.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.5.1.1.1">Situation Constraint</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1.1.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.6.1">
<span class="ltx_p" id="A3.T5.1.1.1.1.6.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.6.1.1.1">Basic Format Constraint</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1.1.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.7.1">
<span class="ltx_p" id="A3.T5.1.1.1.1.7.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.7.1.1.1">Quantity Format Constraint</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1.1.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.8.1">
<span class="ltx_p" id="A3.T5.1.1.1.1.8.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.8.1.1.1">Template Format Constraint</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1.1.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.1.1.9.1">
<span class="ltx_p" id="A3.T5.1.1.1.1.9.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.9.1.1.1">Content Constraint</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T5.1.1.2.1.1">Deepseek-v3</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T5.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.2.1.2.1">
<span class="ltx_p" id="A3.T5.1.1.2.1.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.2.1.2.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T5.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.2.1.3.1">
<span class="ltx_p" id="A3.T5.1.1.2.1.3.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.2.1.3.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T5.1.1.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.2.1.4.1">
<span class="ltx_p" id="A3.T5.1.1.2.1.4.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.2.1.4.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T5.1.1.2.1.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.2.1.5.1">
<span class="ltx_p" id="A3.T5.1.1.2.1.5.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.2.1.5.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T5.1.1.2.1.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.2.1.6.1">
<span class="ltx_p" id="A3.T5.1.1.2.1.6.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.2.1.6.1.1.1">0.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T5.1.1.2.1.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.2.1.7.1">
<span class="ltx_p" id="A3.T5.1.1.2.1.7.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.2.1.7.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T5.1.1.2.1.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.2.1.8.1">
<span class="ltx_p" id="A3.T5.1.1.2.1.8.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.2.1.8.1.1.1">0.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T5.1.1.2.1.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.2.1.9.1">
<span class="ltx_p" id="A3.T5.1.1.2.1.9.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.2.1.9.1.1.1">1.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.3.2.1">Gemini-1.5-Pro</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.3.2.2.1">
<span class="ltx_p" id="A3.T5.1.1.3.2.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.3.2.2.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.3.2.3.1">
<span class="ltx_p" id="A3.T5.1.1.3.2.3.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.3.2.4.1">
<span class="ltx_p" id="A3.T5.1.1.3.2.4.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.3.2.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.3.2.5.1">
<span class="ltx_p" id="A3.T5.1.1.3.2.5.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.3.2.5.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.3.2.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.3.2.6.1">
<span class="ltx_p" id="A3.T5.1.1.3.2.6.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.3.2.6.1.1.1">0.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.3.2.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.3.2.7.1">
<span class="ltx_p" id="A3.T5.1.1.3.2.7.1.1" style="width:85.4pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.3.2.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.3.2.8.1">
<span class="ltx_p" id="A3.T5.1.1.3.2.8.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.3.2.8.1.1.1">0.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.3.2.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.3.2.9.1">
<span class="ltx_p" id="A3.T5.1.1.3.2.9.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.4.3.1">GPT-4o</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.4.3.2.1">
<span class="ltx_p" id="A3.T5.1.1.4.3.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.4.3.2.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.4.3.3.1">
<span class="ltx_p" id="A3.T5.1.1.4.3.3.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.4.3.3.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.4.3.4.1">
<span class="ltx_p" id="A3.T5.1.1.4.3.4.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.4.3.4.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.4.3.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.4.3.5.1">
<span class="ltx_p" id="A3.T5.1.1.4.3.5.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.4.3.5.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.4.3.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.4.3.6.1">
<span class="ltx_p" id="A3.T5.1.1.4.3.6.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.4.3.6.1.1.1">0.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.4.3.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.4.3.7.1">
<span class="ltx_p" id="A3.T5.1.1.4.3.7.1.1" style="width:85.4pt;">0.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.4.3.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.4.3.8.1">
<span class="ltx_p" id="A3.T5.1.1.4.3.8.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.4.3.8.1.1.1">0.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.4.3.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.4.3.9.1">
<span class="ltx_p" id="A3.T5.1.1.4.3.9.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.4.3.9.1.1.1">1.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.5.4.1">Claude-3.5-Sonnet</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.5.4.2.1">
<span class="ltx_p" id="A3.T5.1.1.5.4.2.1.1" style="width:71.1pt;">0.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.5.4.3.1">
<span class="ltx_p" id="A3.T5.1.1.5.4.3.1.1" style="width:71.1pt;">0.97</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.5.4.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.5.4.4.1">
<span class="ltx_p" id="A3.T5.1.1.5.4.4.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.5.4.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.5.4.5.1">
<span class="ltx_p" id="A3.T5.1.1.5.4.5.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T5.1.1.5.4.5.1.1.1">1.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.5.4.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.5.4.6.1">
<span class="ltx_p" id="A3.T5.1.1.5.4.6.1.1" style="width:99.6pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.5.4.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.5.4.7.1">
<span class="ltx_p" id="A3.T5.1.1.5.4.7.1.1" style="width:85.4pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.5.4.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.5.4.8.1">
<span class="ltx_p" id="A3.T5.1.1.5.4.8.1.1" style="width:85.4pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.5.4.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.5.4.9.1">
<span class="ltx_p" id="A3.T5.1.1.5.4.9.1.1" style="width:71.1pt;">0.97</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.6.5.1">GLM-4-9B-Chat</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.6.5.2.1">
<span class="ltx_p" id="A3.T5.1.1.6.5.2.1.1" style="width:71.1pt;">0.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.6.5.3.1">
<span class="ltx_p" id="A3.T5.1.1.6.5.3.1.1" style="width:71.1pt;">0.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.6.5.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.6.5.4.1">
<span class="ltx_p" id="A3.T5.1.1.6.5.4.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.6.5.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.6.5.5.1">
<span class="ltx_p" id="A3.T5.1.1.6.5.5.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.6.5.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.6.5.6.1">
<span class="ltx_p" id="A3.T5.1.1.6.5.6.1.1" style="width:99.6pt;">0.97</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.6.5.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.6.5.7.1">
<span class="ltx_p" id="A3.T5.1.1.6.5.7.1.1" style="width:85.4pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.6.5.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.6.5.8.1">
<span class="ltx_p" id="A3.T5.1.1.6.5.8.1.1" style="width:85.4pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.6.5.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.6.5.9.1">
<span class="ltx_p" id="A3.T5.1.1.6.5.9.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.7.6.1">Qwen2.5-14B-Instruct</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.7.6.2.1">
<span class="ltx_p" id="A3.T5.1.1.7.6.2.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.7.6.3.1">
<span class="ltx_p" id="A3.T5.1.1.7.6.3.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.7.6.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.7.6.4.1">
<span class="ltx_p" id="A3.T5.1.1.7.6.4.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.7.6.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.7.6.5.1">
<span class="ltx_p" id="A3.T5.1.1.7.6.5.1.1" style="width:71.1pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.7.6.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.7.6.6.1">
<span class="ltx_p" id="A3.T5.1.1.7.6.6.1.1" style="width:99.6pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.7.6.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.7.6.7.1">
<span class="ltx_p" id="A3.T5.1.1.7.6.7.1.1" style="width:85.4pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.7.6.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.7.6.8.1">
<span class="ltx_p" id="A3.T5.1.1.7.6.8.1.1" style="width:85.4pt;">0.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.7.6.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.7.6.9.1">
<span class="ltx_p" id="A3.T5.1.1.7.6.9.1.1" style="width:71.1pt;">0.97</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.8.7.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.8.7.2.1">
<span class="ltx_p" id="A3.T5.1.1.8.7.2.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.8.7.3.1">
<span class="ltx_p" id="A3.T5.1.1.8.7.3.1.1" style="width:71.1pt;">0.97</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.8.7.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.8.7.4.1">
<span class="ltx_p" id="A3.T5.1.1.8.7.4.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.8.7.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.8.7.5.1">
<span class="ltx_p" id="A3.T5.1.1.8.7.5.1.1" style="width:71.1pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.8.7.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.8.7.6.1">
<span class="ltx_p" id="A3.T5.1.1.8.7.6.1.1" style="width:99.6pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.8.7.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.8.7.7.1">
<span class="ltx_p" id="A3.T5.1.1.8.7.7.1.1" style="width:85.4pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.8.7.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.8.7.8.1">
<span class="ltx_p" id="A3.T5.1.1.8.7.8.1.1" style="width:85.4pt;">0.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.8.7.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.8.7.9.1">
<span class="ltx_p" id="A3.T5.1.1.8.7.9.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.9.8.1">Deepseek-R1-Distill-Qwen-7B</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.9.8.2.1">
<span class="ltx_p" id="A3.T5.1.1.9.8.2.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.9.8.3.1">
<span class="ltx_p" id="A3.T5.1.1.9.8.3.1.1" style="width:71.1pt;">0.89</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.9.8.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.9.8.4.1">
<span class="ltx_p" id="A3.T5.1.1.9.8.4.1.1" style="width:71.1pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.9.8.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.9.8.5.1">
<span class="ltx_p" id="A3.T5.1.1.9.8.5.1.1" style="width:71.1pt;">0.84</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.9.8.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.9.8.6.1">
<span class="ltx_p" id="A3.T5.1.1.9.8.6.1.1" style="width:99.6pt;">0.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.9.8.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.9.8.7.1">
<span class="ltx_p" id="A3.T5.1.1.9.8.7.1.1" style="width:85.4pt;">0.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.9.8.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.9.8.8.1">
<span class="ltx_p" id="A3.T5.1.1.9.8.8.1.1" style="width:85.4pt;">0.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.9.8.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.9.8.9.1">
<span class="ltx_p" id="A3.T5.1.1.9.8.9.1.1" style="width:71.1pt;">0.83</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.10.9.1">DeepSeek-R1-Distill-Llama-8B</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.10.9.2.1">
<span class="ltx_p" id="A3.T5.1.1.10.9.2.1.1" style="width:71.1pt;">0.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.10.9.3.1">
<span class="ltx_p" id="A3.T5.1.1.10.9.3.1.1" style="width:71.1pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.10.9.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.10.9.4.1">
<span class="ltx_p" id="A3.T5.1.1.10.9.4.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.10.9.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.10.9.5.1">
<span class="ltx_p" id="A3.T5.1.1.10.9.5.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.10.9.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.10.9.6.1">
<span class="ltx_p" id="A3.T5.1.1.10.9.6.1.1" style="width:99.6pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.10.9.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.10.9.7.1">
<span class="ltx_p" id="A3.T5.1.1.10.9.7.1.1" style="width:85.4pt;">0.84</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.10.9.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.10.9.8.1">
<span class="ltx_p" id="A3.T5.1.1.10.9.8.1.1" style="width:85.4pt;">0.84</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.10.9.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.10.9.9.1">
<span class="ltx_p" id="A3.T5.1.1.10.9.9.1.1" style="width:71.1pt;">0.88</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.11.10.1">Llama-3.1-Instruct-8B</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.11.10.2.1">
<span class="ltx_p" id="A3.T5.1.1.11.10.2.1.1" style="width:71.1pt;">0.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.11.10.3.1">
<span class="ltx_p" id="A3.T5.1.1.11.10.3.1.1" style="width:71.1pt;">0.87</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.11.10.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.11.10.4.1">
<span class="ltx_p" id="A3.T5.1.1.11.10.4.1.1" style="width:71.1pt;">0.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.11.10.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.11.10.5.1">
<span class="ltx_p" id="A3.T5.1.1.11.10.5.1.1" style="width:71.1pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.11.10.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.11.10.6.1">
<span class="ltx_p" id="A3.T5.1.1.11.10.6.1.1" style="width:99.6pt;">0.73</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.11.10.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.11.10.7.1">
<span class="ltx_p" id="A3.T5.1.1.11.10.7.1.1" style="width:85.4pt;">0.79</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.11.10.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.11.10.8.1">
<span class="ltx_p" id="A3.T5.1.1.11.10.8.1.1" style="width:85.4pt;">0.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.11.10.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.11.10.9.1">
<span class="ltx_p" id="A3.T5.1.1.11.10.9.1.1" style="width:71.1pt;">0.88</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.12.11.1">Phi-3.5-mini-instruct</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.12.11.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.12.11.2.1">
<span class="ltx_p" id="A3.T5.1.1.12.11.2.1.1" style="width:71.1pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.12.11.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.12.11.3.1">
<span class="ltx_p" id="A3.T5.1.1.12.11.3.1.1" style="width:71.1pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.12.11.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.12.11.4.1">
<span class="ltx_p" id="A3.T5.1.1.12.11.4.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.12.11.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.12.11.5.1">
<span class="ltx_p" id="A3.T5.1.1.12.11.5.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.12.11.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.12.11.6.1">
<span class="ltx_p" id="A3.T5.1.1.12.11.6.1.1" style="width:99.6pt;">0.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.12.11.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.12.11.7.1">
<span class="ltx_p" id="A3.T5.1.1.12.11.7.1.1" style="width:85.4pt;">0.81</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.12.11.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.12.11.8.1">
<span class="ltx_p" id="A3.T5.1.1.12.11.8.1.1" style="width:85.4pt;">0.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.12.11.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.12.11.9.1">
<span class="ltx_p" id="A3.T5.1.1.12.11.9.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.1.13.12.1">Yi-6B-Chat</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.13.12.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.13.12.2.1">
<span class="ltx_p" id="A3.T5.1.1.13.12.2.1.1" style="width:71.1pt;">0.83</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.13.12.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.13.12.3.1">
<span class="ltx_p" id="A3.T5.1.1.13.12.3.1.1" style="width:71.1pt;">0.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.13.12.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.13.12.4.1">
<span class="ltx_p" id="A3.T5.1.1.13.12.4.1.1" style="width:71.1pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.13.12.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.13.12.5.1">
<span class="ltx_p" id="A3.T5.1.1.13.12.5.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.13.12.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.13.12.6.1">
<span class="ltx_p" id="A3.T5.1.1.13.12.6.1.1" style="width:99.6pt;">0.87</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.13.12.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.13.12.7.1">
<span class="ltx_p" id="A3.T5.1.1.13.12.7.1.1" style="width:85.4pt;">0.65</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.13.12.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.13.12.8.1">
<span class="ltx_p" id="A3.T5.1.1.13.12.8.1.1" style="width:85.4pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T5.1.1.13.12.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.13.12.9.1">
<span class="ltx_p" id="A3.T5.1.1.13.12.9.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T5.1.1.14.13.1">Mistral-7B-Instruct-v0.3</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T5.1.1.14.13.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.14.13.2.1">
<span class="ltx_p" id="A3.T5.1.1.14.13.2.1.1" style="width:71.1pt;">0.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T5.1.1.14.13.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.14.13.3.1">
<span class="ltx_p" id="A3.T5.1.1.14.13.3.1.1" style="width:71.1pt;">0.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T5.1.1.14.13.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.14.13.4.1">
<span class="ltx_p" id="A3.T5.1.1.14.13.4.1.1" style="width:71.1pt;">0.84</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T5.1.1.14.13.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.14.13.5.1">
<span class="ltx_p" id="A3.T5.1.1.14.13.5.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T5.1.1.14.13.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.14.13.6.1">
<span class="ltx_p" id="A3.T5.1.1.14.13.6.1.1" style="width:99.6pt;">0.65</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T5.1.1.14.13.7">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.14.13.7.1">
<span class="ltx_p" id="A3.T5.1.1.14.13.7.1.1" style="width:85.4pt;">0.59</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T5.1.1.14.13.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.14.13.8.1">
<span class="ltx_p" id="A3.T5.1.1.14.13.8.1.1" style="width:85.4pt;">0.56</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T5.1.1.14.13.9">
<span class="ltx_inline-block ltx_align_top" id="A3.T5.1.1.14.13.9.1">
<span class="ltx_p" id="A3.T5.1.1.14.13.9.1.1" style="width:71.1pt;">0.8</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of various Large Language Models (LLMs) on the intra-turn constraints within the StructFlowBench benchmark.  It shows how well each model satisfied eight different types of intra-turn constraints: Content, Keyword/Element, Style, Basic Format, Quantity Format, Template Format, Situation, and Inverse. The performance is likely quantified numerically, potentially with a score or percentage reflecting the success rate of each LLM on each constraint type.
> <details>
> <summary>read the caption</summary>
> Table 5: The intra-turn constraints performance of various models on StructFlowBench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.1.1">Model Name</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.1.2.1">
<span class="ltx_p" id="A3.T6.1.1.1.1.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.2.1.1.1">Fact-based Questions</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.1.3.1">
<span class="ltx_p" id="A3.T6.1.1.1.1.3.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.3.1.1.1">Open-ended Questions</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.1.4.1">
<span class="ltx_p" id="A3.T6.1.1.1.1.4.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.4.1.1.1">Professional Writing</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.1.5.1">
<span class="ltx_p" id="A3.T6.1.1.1.1.5.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.5.1.1.1">Practical Writing</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.1.6.1">
<span class="ltx_p" id="A3.T6.1.1.1.1.6.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.6.1.1.1">Creative Writing</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.7.1">Casual Chat</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.1.8.1">
<span class="ltx_p" id="A3.T6.1.1.1.1.8.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.8.1.1.1">Task-oriented Role-playing</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.9.1">Mixture</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.2.1.1">Deepseek-v3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T6.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.2.1.2.1">
<span class="ltx_p" id="A3.T6.1.1.2.1.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.2.1.2.1.1.1">0.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T6.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.2.1.3.1">
<span class="ltx_p" id="A3.T6.1.1.2.1.3.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T6.1.1.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.2.1.4.1">
<span class="ltx_p" id="A3.T6.1.1.2.1.4.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.2.1.4.1.1.1">0.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T6.1.1.2.1.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.2.1.5.1">
<span class="ltx_p" id="A3.T6.1.1.2.1.5.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.2.1.5.1.1.1">0.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T6.1.1.2.1.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.2.1.6.1">
<span class="ltx_p" id="A3.T6.1.1.2.1.6.1.1" style="width:71.1pt;">0.97</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.1.7"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.2.1.7.1">0.98</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T6.1.1.2.1.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.2.1.8.1">
<span class="ltx_p" id="A3.T6.1.1.2.1.8.1.1" style="width:85.4pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.1.9">0.97</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.3.2.1">Gemini-1.5-Pro</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.3.2.2.1">
<span class="ltx_p" id="A3.T6.1.1.3.2.2.1.1" style="width:71.1pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.3.2.3.1">
<span class="ltx_p" id="A3.T6.1.1.3.2.3.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.3.2.3.1.1.1">0.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.3.2.4.1">
<span class="ltx_p" id="A3.T6.1.1.3.2.4.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.3.2.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.3.2.5.1">
<span class="ltx_p" id="A3.T6.1.1.3.2.5.1.1" style="width:71.1pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.3.2.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.3.2.6.1">
<span class="ltx_p" id="A3.T6.1.1.3.2.6.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.3.2.6.1.1.1">0.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.3.2.7">0.96</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.3.2.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.3.2.8.1">
<span class="ltx_p" id="A3.T6.1.1.3.2.8.1.1" style="width:85.4pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.3.2.9">0.97</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.4.3.1">GPT-4o</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.4.3.2.1">
<span class="ltx_p" id="A3.T6.1.1.4.3.2.1.1" style="width:71.1pt;">0.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.4.3.3.1">
<span class="ltx_p" id="A3.T6.1.1.4.3.3.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.4.3.4.1">
<span class="ltx_p" id="A3.T6.1.1.4.3.4.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.4.3.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.4.3.5.1">
<span class="ltx_p" id="A3.T6.1.1.4.3.5.1.1" style="width:71.1pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.4.3.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.4.3.6.1">
<span class="ltx_p" id="A3.T6.1.1.4.3.6.1.1" style="width:71.1pt;">0.97</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.3.7">0.94</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.4.3.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.4.3.8.1">
<span class="ltx_p" id="A3.T6.1.1.4.3.8.1.1" style="width:85.4pt;">0.92</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.3.9"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.4.3.9.1">0.98</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.5.4.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.5.4.2.1">
<span class="ltx_p" id="A3.T6.1.1.5.4.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.5.4.2.1.1.1">0.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.5.4.3.1">
<span class="ltx_p" id="A3.T6.1.1.5.4.3.1.1" style="width:71.1pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.5.4.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.5.4.4.1">
<span class="ltx_p" id="A3.T6.1.1.5.4.4.1.1" style="width:71.1pt;">0.97</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.5.4.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.5.4.5.1">
<span class="ltx_p" id="A3.T6.1.1.5.4.5.1.1" style="width:71.1pt;">0.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.5.4.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.5.4.6.1">
<span class="ltx_p" id="A3.T6.1.1.5.4.6.1.1" style="width:71.1pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.4.7">0.92</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.5.4.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.5.4.8.1">
<span class="ltx_p" id="A3.T6.1.1.5.4.8.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A3.T6.1.1.5.4.8.1.1.1">0.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.4.9">0.95</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.6.5.1">GLM-4-9B-Chat</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.6.5.2.1">
<span class="ltx_p" id="A3.T6.1.1.6.5.2.1.1" style="width:71.1pt;">0.89</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.6.5.3.1">
<span class="ltx_p" id="A3.T6.1.1.6.5.3.1.1" style="width:71.1pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.6.5.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.6.5.4.1">
<span class="ltx_p" id="A3.T6.1.1.6.5.4.1.1" style="width:71.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.6.5.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.6.5.5.1">
<span class="ltx_p" id="A3.T6.1.1.6.5.5.1.1" style="width:71.1pt;">0.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.6.5.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.6.5.6.1">
<span class="ltx_p" id="A3.T6.1.1.6.5.6.1.1" style="width:71.1pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.5.7">0.95</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.6.5.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.6.5.8.1">
<span class="ltx_p" id="A3.T6.1.1.6.5.8.1.1" style="width:85.4pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.5.9">0.97</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.7.6.1">Qwen2.5-14B-Instruct</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.7.6.2.1">
<span class="ltx_p" id="A3.T6.1.1.7.6.2.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.7.6.3.1">
<span class="ltx_p" id="A3.T6.1.1.7.6.3.1.1" style="width:71.1pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.7.6.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.7.6.4.1">
<span class="ltx_p" id="A3.T6.1.1.7.6.4.1.1" style="width:71.1pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.7.6.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.7.6.5.1">
<span class="ltx_p" id="A3.T6.1.1.7.6.5.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.7.6.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.7.6.6.1">
<span class="ltx_p" id="A3.T6.1.1.7.6.6.1.1" style="width:71.1pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.6.7">0.91</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.7.6.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.7.6.8.1">
<span class="ltx_p" id="A3.T6.1.1.7.6.8.1.1" style="width:85.4pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.6.9">0.93</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.8.7.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.8.7.2.1">
<span class="ltx_p" id="A3.T6.1.1.8.7.2.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.8.7.3.1">
<span class="ltx_p" id="A3.T6.1.1.8.7.3.1.1" style="width:71.1pt;">0.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.8.7.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.8.7.4.1">
<span class="ltx_p" id="A3.T6.1.1.8.7.4.1.1" style="width:71.1pt;">0.89</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.8.7.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.8.7.5.1">
<span class="ltx_p" id="A3.T6.1.1.8.7.5.1.1" style="width:71.1pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.8.7.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.8.7.6.1">
<span class="ltx_p" id="A3.T6.1.1.8.7.6.1.1" style="width:71.1pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.8.7.7">0.93</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.8.7.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.8.7.8.1">
<span class="ltx_p" id="A3.T6.1.1.8.7.8.1.1" style="width:85.4pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.8.7.9">0.95</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.9.8.1">Deepseek-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.9.8.2.1">
<span class="ltx_p" id="A3.T6.1.1.9.8.2.1.1" style="width:71.1pt;">0.77</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.9.8.3.1">
<span class="ltx_p" id="A3.T6.1.1.9.8.3.1.1" style="width:71.1pt;">0.85</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.9.8.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.9.8.4.1">
<span class="ltx_p" id="A3.T6.1.1.9.8.4.1.1" style="width:71.1pt;">0.86</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.9.8.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.9.8.5.1">
<span class="ltx_p" id="A3.T6.1.1.9.8.5.1.1" style="width:71.1pt;">0.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.9.8.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.9.8.6.1">
<span class="ltx_p" id="A3.T6.1.1.9.8.6.1.1" style="width:71.1pt;">0.74</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.9.8.7">0.79</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.9.8.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.9.8.8.1">
<span class="ltx_p" id="A3.T6.1.1.9.8.8.1.1" style="width:85.4pt;">0.8</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.9.8.9">0.77</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.10.9">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.10.9.1">DeepSeek-R1-Distill-Llama-8B</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.10.9.2.1">
<span class="ltx_p" id="A3.T6.1.1.10.9.2.1.1" style="width:71.1pt;">0.79</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.10.9.3.1">
<span class="ltx_p" id="A3.T6.1.1.10.9.3.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.10.9.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.10.9.4.1">
<span class="ltx_p" id="A3.T6.1.1.10.9.4.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.10.9.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.10.9.5.1">
<span class="ltx_p" id="A3.T6.1.1.10.9.5.1.1" style="width:71.1pt;">0.87</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.10.9.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.10.9.6.1">
<span class="ltx_p" id="A3.T6.1.1.10.9.6.1.1" style="width:71.1pt;">0.86</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.10.9.7">0.88</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.10.9.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.10.9.8.1">
<span class="ltx_p" id="A3.T6.1.1.10.9.8.1.1" style="width:85.4pt;">0.86</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.10.9.9">0.83</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.11.10">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.11.10.1">Llama-3.1-Instruct-8B</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.11.10.2.1">
<span class="ltx_p" id="A3.T6.1.1.11.10.2.1.1" style="width:71.1pt;">0.81</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.11.10.3.1">
<span class="ltx_p" id="A3.T6.1.1.11.10.3.1.1" style="width:71.1pt;">0.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.11.10.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.11.10.4.1">
<span class="ltx_p" id="A3.T6.1.1.11.10.4.1.1" style="width:71.1pt;">0.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.11.10.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.11.10.5.1">
<span class="ltx_p" id="A3.T6.1.1.11.10.5.1.1" style="width:71.1pt;">0.83</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.11.10.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.11.10.6.1">
<span class="ltx_p" id="A3.T6.1.1.11.10.6.1.1" style="width:71.1pt;">0.84</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.11.10.7">0.76</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.11.10.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.11.10.8.1">
<span class="ltx_p" id="A3.T6.1.1.11.10.8.1.1" style="width:85.4pt;">0.88</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.11.10.9">0.88</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.12.11">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.12.11.1">Phi-3.5-mini-instruct</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.12.11.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.12.11.2.1">
<span class="ltx_p" id="A3.T6.1.1.12.11.2.1.1" style="width:71.1pt;">0.86</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.12.11.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.12.11.3.1">
<span class="ltx_p" id="A3.T6.1.1.12.11.3.1.1" style="width:71.1pt;">0.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.12.11.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.12.11.4.1">
<span class="ltx_p" id="A3.T6.1.1.12.11.4.1.1" style="width:71.1pt;">0.86</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.12.11.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.12.11.5.1">
<span class="ltx_p" id="A3.T6.1.1.12.11.5.1.1" style="width:71.1pt;">0.84</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.12.11.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.12.11.6.1">
<span class="ltx_p" id="A3.T6.1.1.12.11.6.1.1" style="width:71.1pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.12.11.7">0.86</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.12.11.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.12.11.8.1">
<span class="ltx_p" id="A3.T6.1.1.12.11.8.1.1" style="width:85.4pt;">0.86</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.12.11.9">0.86</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.13.12">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.13.12.1">Yi-6B-Chat</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.13.12.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.13.12.2.1">
<span class="ltx_p" id="A3.T6.1.1.13.12.2.1.1" style="width:71.1pt;">0.84</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.13.12.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.13.12.3.1">
<span class="ltx_p" id="A3.T6.1.1.13.12.3.1.1" style="width:71.1pt;">0.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.13.12.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.13.12.4.1">
<span class="ltx_p" id="A3.T6.1.1.13.12.4.1.1" style="width:71.1pt;">0.87</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.13.12.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.13.12.5.1">
<span class="ltx_p" id="A3.T6.1.1.13.12.5.1.1" style="width:71.1pt;">0.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.13.12.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.13.12.6.1">
<span class="ltx_p" id="A3.T6.1.1.13.12.6.1.1" style="width:71.1pt;">0.82</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.13.12.7">0.77</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.1.13.12.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.13.12.8.1">
<span class="ltx_p" id="A3.T6.1.1.13.12.8.1.1" style="width:85.4pt;">0.86</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.13.12.9">0.8</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.1.1.14.13.1">Mistral-7B-Instruct-v0.3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T6.1.1.14.13.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.14.13.2.1">
<span class="ltx_p" id="A3.T6.1.1.14.13.2.1.1" style="width:71.1pt;">0.71</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T6.1.1.14.13.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.14.13.3.1">
<span class="ltx_p" id="A3.T6.1.1.14.13.3.1.1" style="width:71.1pt;">0.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T6.1.1.14.13.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.14.13.4.1">
<span class="ltx_p" id="A3.T6.1.1.14.13.4.1.1" style="width:71.1pt;">0.72</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T6.1.1.14.13.5">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.14.13.5.1">
<span class="ltx_p" id="A3.T6.1.1.14.13.5.1.1" style="width:71.1pt;">0.76</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T6.1.1.14.13.6">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.14.13.6.1">
<span class="ltx_p" id="A3.T6.1.1.14.13.6.1.1" style="width:71.1pt;">0.75</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.14.13.7">0.73</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T6.1.1.14.13.8">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.14.13.8.1">
<span class="ltx_p" id="A3.T6.1.1.14.13.8.1.1" style="width:85.4pt;">0.79</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.14.13.9">0.78</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of thirteen different large language models (LLMs) on various tasks within the StructFlowBench benchmark.  It shows how well each model performs on specific tasks such as fact-based questions, open-ended questions, creative writing, professional writing, casual chat, task-oriented role-playing, and a mixed task.  The results offer insights into the strengths and weaknesses of each LLM across different types of dialogue tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Task-categorized performance of various models on StructFlowBench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T7.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A5.T7.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.1.1.1.1">
<span class="ltx_p" id="A5.T7.1.1.1.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.1.1.1.1.1.1.1">User purpose</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A5.T7.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.1.1.2.1">
<span class="ltx_p" id="A5.T7.1.1.1.2.1.1" style="width:346.9pt;">The user aims to develop a financial plan for a fictional character by interacting with the assistant as a financial advisor.The user wants to learn about different music genres and styles to enhance their personal music knowledge and broaden their music listening experience.</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T7.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T7.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.2.1.1.1">
<span class="ltx_p" id="A5.T7.1.2.1.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.1.2.1.1.1.1.1">Structure</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T7.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.2.1.2.1">
<span class="ltx_p" id="A5.T7.1.2.1.2.1.1" style="width:346.9pt;">"source": "c1","target": "c2","relation": "follow-up"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.3.2">
<td class="ltx_td ltx_align_top" id="A5.T7.1.3.2.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.3.2.2.1">
<span class="ltx_p" id="A5.T7.1.3.2.2.1.1" style="width:346.9pt;">"source": "c1","target": "c3","relation": "recall"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.4.3">
<td class="ltx_td ltx_align_top" id="A5.T7.1.4.3.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.4.3.2.1">
<span class="ltx_p" id="A5.T7.1.4.3.2.1.1" style="width:346.9pt;">"source": "c3","target": "c4","relation": "unrelatedness"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.5.4">
<td class="ltx_td ltx_align_top" id="A5.T7.1.5.4.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.5.4.2.1">
<span class="ltx_p" id="A5.T7.1.5.4.2.1.1" style="width:346.9pt;">"source": "c4","target": "c5","relation": "refinement"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T7.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.6.5.1.1">
<span class="ltx_p" id="A5.T7.1.6.5.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.1.6.5.1.1.1.1">Summarized Prompts</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T7.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.6.5.2.1">
<span class="ltx_p" id="A5.T7.1.6.5.2.1.1" style="width:346.9pt;">"c1" : "The user asks the assistant, role-playing as a financial advisor, to provide a general strategy for a young professional who wants to start saving for retirement."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.7.6">
<td class="ltx_td ltx_align_top" id="A5.T7.1.7.6.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.7.6.2.1">
<span class="ltx_p" id="A5.T7.1.7.6.2.1.1" style="width:346.9pt;">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.8.7">
<td class="ltx_td ltx_align_top" id="A5.T7.1.8.7.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.8.7.2.1">
<span class="ltx_p" id="A5.T7.1.8.7.2.1.1" style="width:346.9pt;">"c5": "The user modify the detail level in last round’s prompt to request a deeper dive into the unique instruments used in each genre for better understanding of their sounds."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T7.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.9.8.1.1">
<span class="ltx_p" id="A5.T7.1.9.8.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.1.9.8.1.1.1.1">Complete Dialogue</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T7.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.9.8.2.1">
<span class="ltx_p" id="A5.T7.1.9.8.2.1.1" style="width:346.9pt;">"name": "c1",</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.10.9">
<td class="ltx_td ltx_align_top" id="A5.T7.1.10.9.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.10.9.2.1">
<span class="ltx_p" id="A5.T7.1.10.9.2.1.1" style="width:346.9pt;">"user prompt": "Imagine I am a young professional entering the workforce. As my financial advisor, could you…",</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.11.10">
<td class="ltx_td ltx_align_top" id="A5.T7.1.11.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.11.10.2.1">
<span class="ltx_p" id="A5.T7.1.11.10.2.1.1" style="width:346.9pt;">"assistant answer": "Certainly! Here’s a comprehensive strategy for…"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.12.11">
<td class="ltx_td ltx_align_top" id="A5.T7.1.12.11.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.12.11.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.12.11.2.1">
<span class="ltx_p" id="A5.T7.1.12.11.2.1.1" style="width:346.9pt;">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.13.12">
<td class="ltx_td ltx_align_top" id="A5.T7.1.13.12.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.13.12.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.13.12.2.1">
<span class="ltx_p" id="A5.T7.1.13.12.2.1.1" style="width:346.9pt;">"name": "c5",</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.14.13">
<td class="ltx_td ltx_align_top" id="A5.T7.1.14.13.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.14.13.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.14.13.2.1">
<span class="ltx_p" id="A5.T7.1.14.13.2.1.1" style="width:346.9pt;">"user prompt": "In order to delve deeper into the musical intricacies … Please format the response as a table and …"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.15.14">
<td class="ltx_td ltx_align_top" id="A5.T7.1.15.14.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.15.14.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.15.14.2.1">
<span class="ltx_p" id="A5.T7.1.15.14.2.1.1" style="width:346.9pt;">"assistant answer": "Certainly! Here is a detailed examination of the unique instruments associated with each genre in a table format:…"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T7.1.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.16.15.1.1">
<span class="ltx_p" id="A5.T7.1.16.15.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.1.16.15.1.1.1.1">Check Lists</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T7.1.16.15.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.16.15.2.1">
<span class="ltx_p" id="A5.T7.1.16.15.2.1.1" style="width:346.9pt;">"name":"c1"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.17.16">
<td class="ltx_td ltx_align_top" id="A5.T7.1.17.16.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.17.16.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.17.16.2.1">
<span class="ltx_p" id="A5.T7.1.17.16.2.1.1" style="width:346.9pt;">"Situation Constraint":"Is the response given from the perspective of a financial advisor?"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.18.17">
<td class="ltx_td ltx_align_top" id="A5.T7.1.18.17.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.18.17.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.18.17.2.1">
<span class="ltx_p" id="A5.T7.1.18.17.2.1.1" style="width:346.9pt;">"Keyword/Element Constraint":"Does the response include specific keywords such as… ?"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.19.18">
<td class="ltx_td ltx_align_top" id="A5.T7.1.19.18.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.19.18.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.19.18.2.1">
<span class="ltx_p" id="A5.T7.1.19.18.2.1.1" style="width:346.9pt;">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.20.19">
<td class="ltx_td ltx_align_top" id="A5.T7.1.20.19.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.20.19.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.20.19.2.1">
<span class="ltx_p" id="A5.T7.1.20.19.2.1.1" style="width:346.9pt;">"name":"c5"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.21.20">
<td class="ltx_td ltx_align_top" id="A5.T7.1.21.20.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T7.1.21.20.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.21.20.2.1">
<span class="ltx_p" id="A5.T7.1.21.20.2.1.1" style="width:346.9pt;">"Basic Format Constraint":"Is the response formatted as a table?"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.1.22.21">
<td class="ltx_td ltx_align_top ltx_border_bb" id="A5.T7.1.22.21.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T7.1.22.21.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.1.22.21.2.1">
<span class="ltx_p" id="A5.T7.1.22.21.2.1.1" style="width:346.9pt;">"Refinement Constraint":"Is the c5 conversation a refinement of c4 conversation?"</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a sample entry from the StructFlowBench dataset, illustrating the structure of a single dialogue.  It shows the user's overall goal, the planned structure of the dialogue turns with their relationships (follow-up, recall, unrelatedness, refinement), summarized prompts for each turn, the complete dialogue exchange, and finally, a list of constraints (situation, keyword/element, basic format, refinement) that apply to specific turns within the dialogue.  This provides a detailed view of how a single data point in the benchmark is constructed and the types of constraints used for evaluation.
> <details>
> <summary>read the caption</summary>
> Table 7: An example of synthetic data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A6.T8.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T8.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T8.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_border_tt" id="A6.T8.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A6.T8.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.1.1.3.1">
<span class="ltx_p" id="A6.T8.1.1.1.3.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="A6.T8.1.1.1.3.1.1.1">Model Link</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.2.2.1">GPT</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.2.2.2">GPT-4o</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.2.2.3.1">
<span class="ltx_p" id="A6.T8.1.2.2.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://platform.openai.com/docs/models#gpt-4o" title="">https://platform.openai.com/docs/models#gpt-4o</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.3.3.1">Claude</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.3.3.2">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.3.3.3.1">
<span class="ltx_p" id="A6.T8.1.3.3.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://docs.anthropic.com/en/docs/about-claude/models" title="">https://docs.anthropic.com/en/docs/about-claude/models</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.4.4.1">Gemini</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.4.4.2">Gemini-1.5-Pro</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.4.4.3.1">
<span class="ltx_p" id="A6.T8.1.4.4.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://ai.google.dev/gemini-api/docs/models/gemini?hl=en#gemini-1.5-pro" title="">https://ai.google.dev/gemini-api/docs/models/gemini?hl=en#gemini-1.5-pro</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.5.5.1" rowspan="3"><span class="ltx_text" id="A6.T8.1.5.5.1.1">Deepseek</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.5.5.2">DeepSeek-v3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.5.5.3.1">
<span class="ltx_p" id="A6.T8.1.5.5.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-V3" title="">https://huggingface.co/deepseek-ai/DeepSeek-V3</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.6.6">
<td class="ltx_td ltx_align_left" id="A6.T8.1.6.6.1">DeepSeek-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A6.T8.1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.6.6.2.1">
<span class="ltx_p" id="A6.T8.1.6.6.2.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-7B" title="">https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-7B</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.7.7">
<td class="ltx_td ltx_align_left" id="A6.T8.1.7.7.1">DeepSeek-R1-Distill-Llama-8B</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A6.T8.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.7.7.2.1">
<span class="ltx_p" id="A6.T8.1.7.7.2.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Llama-8B" title="">https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Llama-8B</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.8.8.1" rowspan="2"><span class="ltx_text" id="A6.T8.1.8.8.1.1">Qwen</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.8.8.2">Qwen2.5-14B-Instruct</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.8.8.3.1">
<span class="ltx_p" id="A6.T8.1.8.8.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-14B-Instruct" title="">https://huggingface.co/Qwen/Qwen2.5-14B-Instruct</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.9.9">
<td class="ltx_td ltx_align_left" id="A6.T8.1.9.9.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A6.T8.1.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.9.9.2.1">
<span class="ltx_p" id="A6.T8.1.9.9.2.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-7B-Instruct" title="">https://huggingface.co/Qwen/Qwen2.5-7B-Instruct</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.10.10.1">GLM</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.10.10.2">GLM-4-9B-Chat</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.10.10.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.10.10.3.1">
<span class="ltx_p" id="A6.T8.1.10.10.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/THUDM/glm-4-9b-chat" title="">https://huggingface.co/THUDM/glm-4-9b-chat</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.11.11.1">Yi</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.11.11.2">Yi-6B-Chat</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.11.11.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.11.11.3.1">
<span class="ltx_p" id="A6.T8.1.11.11.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/01-ai/Yi-6B-Chat" title="">https://huggingface.co/01-ai/Yi-6B-Chat</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.12.12.1">LLAMA</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.12.12.2">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.12.12.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.12.12.3.1">
<span class="ltx_p" id="A6.T8.1.12.12.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct" title="">https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.13.13.1">Mistral</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T8.1.13.13.2">Mistral-7B-Instruct-v0.3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T8.1.13.13.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.13.13.3.1">
<span class="ltx_p" id="A6.T8.1.13.13.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.3" title="">https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.3</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T8.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T8.1.14.14.1">Phi</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T8.1.14.14.2">Phi-3.5-mini-instruct</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A6.T8.1.14.14.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T8.1.14.14.3.1">
<span class="ltx_p" id="A6.T8.1.14.14.3.1.1" style="width:227.6pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/microsoft/Phi-3.5-mini-instruct" title="">https://huggingface.co/microsoft/Phi-3.5-mini-instruct</a></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table provides links to the model cards or repositories of the 13 large language models (LLMs) evaluated in the StructFlowBench study.  For each model, its name, a shortened version of its name used in the paper, and a link to its online resource are listed.  This allows readers to access the specific versions of the LLMs used in the benchmark for further study or reproducibility.
> <details>
> <summary>read the caption</summary>
> Table 8: Model Links.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14494/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14494/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}