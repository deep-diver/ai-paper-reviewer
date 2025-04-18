---
title: "DeepSeek vs. o3-mini: How Well can Reasoning LLMs Evaluate MT and Summarization?"
summary: "Reasoning LLMs: Do they enhance MT & summarization evaluation? It depends on the model!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Machine Translation", "🏢 University of Mannheim",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.08120 {{< /keyword >}}
{{< keyword icon="writer" >}} Daniil Larionov et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.08120" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.08120" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.08120/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reasoning-enabled large language models (LLMs) have shown promise in complex tasks, yet their effectiveness in evaluating natural language generation (NLG) remains unclear. This study systematically compares reasoning-based LLMs (DeepSeek-R1 and OpenAI 03) with non-reasoning counterparts in machine translation (MT) and text summarization (TS) evaluation tasks. The team evaluated eight models across architectures, using WMT23 and SummEval benchmarks, to understand the benefits of reasoning. 



The paper uncovers that the advantages of reasoning capabilities depend heavily on the model and task. OpenAI 03-mini models improved with reasoning intensity, DeepSeek-R1 generally underperformed its non-reasoning variant. Distillation maintained performance in medium-sized models but degraded in smaller ones. The research provides insight on when to use reasoning LLMs for NLG evaluation and offers practical guidelines.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The effectiveness of reasoning in LLMs for NLG evaluation is highly architecture-dependent. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Distilling reasoning capabilities in smaller LLMs for NLG evaluation leads to a substantial performance drop. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Summarization and machine translation evaluation may require distinct reasoning strategies. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers assessing reasoning LLMs for NLG evaluation, revealing architecture-specific performance. It highlights the **critical role of architecture and implementation**, paving the way for targeted reasoning-enhanced evaluation approaches and addressing limitations in current NLG metrics. Offers **new avenues for enhancing evaluation quality**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.08120/x1.png)

> 🔼 The figure illustrates the machine translation evaluation process using reasoning LLMs.  An original text is first translated by a machine translation model. Then, a GEMBA-MQM prompt (including instructions, error categories, and few-shot examples) is fed to a reasoning LLM (such as DeepSeek R1 or 03-mini), along with the machine-generated translation and the original text. The reasoning LLM then evaluates the translation quality by analyzing the translation and generating a response that includes identified errors, assigned error categories, and an overall quality assessment. This response represents the model's reasoning trace in evaluating machine translation quality.
> <details>
> <summary>read the caption</summary>
> Figure 1: Machine Translation evaluation process with Reasoning LLMs
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3.1">
<tr class="ltx_tr" id="S4.T1.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.3.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.1.1">Model Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.3.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.2.1">Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T1.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.3.1">SummEval</span></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.3.1.1.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.5.1">Eval4NLP</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.2.1.1">Coherence</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.2.2.1">Consistency</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.2.3.1">Relevance</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.2.4.1">Fluency</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.2.5">Avg.</td>
<td class="ltx_td" id="S4.T1.3.1.2.6"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T1.3.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.3.1.1">DeepSeek, Qwen, LLaMa</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.4.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.4.1.1">DeepSeek R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.4.2">yes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.4.3" style="background-color:#99D6B8;"><span class="ltx_text" id="S4.T1.3.1.4.3.1" style="background-color:#99D6B8;">0.381</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.4.4" style="background-color:#57BB8A;"><span class="ltx_text" id="S4.T1.3.1.4.4.1" style="background-color:#57BB8A;">0.565</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.4.5" style="background-color:#B5E1CB;"><span class="ltx_text" id="S4.T1.3.1.4.5.1" style="background-color:#B5E1CB;">0.303</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.4.6" style="background-color:#E9F6F0;"><span class="ltx_text" id="S4.T1.3.1.4.6.1" style="background-color:#E9F6F0;">0.157</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.4.7" style="background-color:#A4DABF;"><span class="ltx_text" id="S4.T1.3.1.4.7.1" style="background-color:#A4DABF;">0.351</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.4.8"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.1.4.9" style="background-color:#FFE089;"><span class="ltx_text" id="S4.T1.3.1.4.9.1" style="background-color:#FFE089;">0.583</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.5.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.5.1.1">DeepSeek V3</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.5.2">no</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.3" style="background-color:#7CCAA4;"><span class="ltx_text" id="S4.T1.3.1.5.3.1" style="background-color:#7CCAA4;">0.462</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.4" style="background-color:#ABDDC5;"><span class="ltx_text" id="S4.T1.3.1.5.4.1" style="background-color:#ABDDC5;">0.331</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.5" style="background-color:#82CDA8;"><span class="ltx_text" id="S4.T1.3.1.5.5.1" style="background-color:#82CDA8;">0.446</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.6" style="background-color:#A2DABE;"><span class="ltx_text" id="S4.T1.3.1.5.6.1" style="background-color:#A2DABE;">0.356</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.7" style="background-color:#93D3B4;"><span class="ltx_text" id="S4.T1.3.1.5.7.1" style="background-color:#93D3B4;">0.399</span></td>
<td class="ltx_td" id="S4.T1.3.1.5.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.9" style="background-color:#FFD96F;"><span class="ltx_text" id="S4.T1.3.1.5.9.1" style="background-color:#FFD96F;">0.630</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.6.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.6.1.1">R1 LLaMa 70B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.6.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.3" style="background-color:#99D6B8;"><span class="ltx_text" id="S4.T1.3.1.6.3.1" style="background-color:#99D6B8;">0.380</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.4" style="background-color:#D0ECDE;"><span class="ltx_text" id="S4.T1.3.1.6.4.1" style="background-color:#D0ECDE;">0.228</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.5" style="background-color:#AEDFC7;"><span class="ltx_text" id="S4.T1.3.1.6.5.1" style="background-color:#AEDFC7;">0.322</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.6" style="background-color:#ABDDC5;"><span class="ltx_text" id="S4.T1.3.1.6.6.1" style="background-color:#ABDDC5;">0.330</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.7" style="background-color:#B1E0C9;"><span class="ltx_text" id="S4.T1.3.1.6.7.1" style="background-color:#B1E0C9;">0.315</span></td>
<td class="ltx_td" id="S4.T1.3.1.6.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.9" style="background-color:#FFE498;"><span class="ltx_text" id="S4.T1.3.1.6.9.1" style="background-color:#FFE498;">0.556</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.7.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.7.1.1">LLaMa 3.3 70B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.7.2">no</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.3" style="background-color:#73C79E;"><span class="ltx_text" id="S4.T1.3.1.7.3.1" style="background-color:#73C79E;">0.487</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.4" style="background-color:#B8E3CE;"><span class="ltx_text" id="S4.T1.3.1.7.4.1" style="background-color:#B8E3CE;">0.293</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.5" style="background-color:#85CEAA;"><span class="ltx_text" id="S4.T1.3.1.7.5.1" style="background-color:#85CEAA;">0.437</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.6" style="background-color:#BCE4D0;"><span class="ltx_text" id="S4.T1.3.1.7.6.1" style="background-color:#BCE4D0;">0.284</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.7" style="background-color:#9BD7B9;"><span class="ltx_text" id="S4.T1.3.1.7.7.1" style="background-color:#9BD7B9;">0.375</span></td>
<td class="ltx_td" id="S4.T1.3.1.7.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.9" style="background-color:#FFDA72;"><span class="ltx_text" id="S4.T1.3.1.7.9.1" style="background-color:#FFDA72;">0.624</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.8.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.8.1.1">R1 Qwen 32B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.8.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.3" style="background-color:#B8E3CE;"><span class="ltx_text" id="S4.T1.3.1.8.3.1" style="background-color:#B8E3CE;">0.293</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.4" style="background-color:#60BF91;"><span class="ltx_text" id="S4.T1.3.1.8.4.1" style="background-color:#60BF91;">0.540</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.5" style="background-color:#B4E1CB;"><span class="ltx_text" id="S4.T1.3.1.8.5.1" style="background-color:#B4E1CB;">0.304</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.6" style="background-color:#BDE4D1;"><span class="ltx_text" id="S4.T1.3.1.8.6.1" style="background-color:#BDE4D1;">0.281</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.7" style="background-color:#A2DABF;"><span class="ltx_text" id="S4.T1.3.1.8.7.1" style="background-color:#A2DABF;">0.355</span></td>
<td class="ltx_td" id="S4.T1.3.1.8.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.9" style="background-color:#FFE394;"><span class="ltx_text" id="S4.T1.3.1.8.9.1" style="background-color:#FFE394;">0.564</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.9.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.9.1.1">Qwen2.5 32B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.9.2">no</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.3" style="background-color:#9CD7BA;"><span class="ltx_text" id="S4.T1.3.1.9.3.1" style="background-color:#9CD7BA;">0.372</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.4" style="background-color:#81CCA7;"><span class="ltx_text" id="S4.T1.3.1.9.4.1" style="background-color:#81CCA7;">0.449</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.5" style="background-color:#91D3B2;"><span class="ltx_text" id="S4.T1.3.1.9.5.1" style="background-color:#91D3B2;">0.404</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.6" style="background-color:#A5DBC0;"><span class="ltx_text" id="S4.T1.3.1.9.6.1" style="background-color:#A5DBC0;">0.348</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.7" style="background-color:#95D4B5;"><span class="ltx_text" id="S4.T1.3.1.9.7.1" style="background-color:#95D4B5;">0.393</span></td>
<td class="ltx_td" id="S4.T1.3.1.9.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.9" style="background-color:#FFDA75;"><span class="ltx_text" id="S4.T1.3.1.9.9.1" style="background-color:#FFDA75;">0.619</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.10.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.1.1">R1 LLaMa 8B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.10.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.3" style="background-color:#E5F5ED;"><span class="ltx_text" id="S4.T1.3.1.10.3.1" style="background-color:#E5F5ED;">0.169</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.4" style="background-color:#C7E9D8;"><span class="ltx_text" id="S4.T1.3.1.10.4.1" style="background-color:#C7E9D8;">0.251</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.5" style="background-color:#F3FBF7;"><span class="ltx_text" id="S4.T1.3.1.10.5.1" style="background-color:#F3FBF7;">0.128</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.6" style="background-color:#ECF8F2;"><span class="ltx_text" id="S4.T1.3.1.10.6.1" style="background-color:#ECF8F2;">0.148</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.7" style="background-color:#E3F4EC;"><span class="ltx_text" id="S4.T1.3.1.10.7.1" style="background-color:#E3F4EC;">0.174</span></td>
<td class="ltx_td" id="S4.T1.3.1.10.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.9">0.368</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.11">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.11.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.11.1.1">LLaMa 3.1 8B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.11.2">no</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.3" style="background-color:#EEF9F4;"><span class="ltx_text" id="S4.T1.3.1.11.3.1" style="background-color:#EEF9F4;">0.142</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.4" style="background-color:#B2E0C9;"><span class="ltx_text" id="S4.T1.3.1.11.4.1" style="background-color:#B2E0C9;">0.312</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.5" style="background-color:#9FD9BC;"><span class="ltx_text" id="S4.T1.3.1.11.5.1" style="background-color:#9FD9BC;">0.364</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.6">0.094</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.7" style="background-color:#D0ECDE;"><span class="ltx_text" id="S4.T1.3.1.11.7.1" style="background-color:#D0ECDE;">0.228</span></td>
<td class="ltx_td" id="S4.T1.3.1.11.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.11.9" style="background-color:#FFEEBE;"><span class="ltx_text" id="S4.T1.3.1.11.9.1" style="background-color:#FFEEBE;">0.488</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.12">
<td class="ltx_td ltx_align_center" colspan="9" id="S4.T1.3.1.12.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.12.1.1">OpenAI</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.13">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.13.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.13.1.1">OpenAI o3-mini-high</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.13.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.3" style="background-color:#75C79F;"><span class="ltx_text" id="S4.T1.3.1.13.3.1" style="background-color:#75C79F;">0.482</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.4" style="background-color:#CBEADB;"><span class="ltx_text" id="S4.T1.3.1.13.4.1" style="background-color:#CBEADB;">0.242</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.5" style="background-color:#B2E0CA;"><span class="ltx_text" id="S4.T1.3.1.13.5.1" style="background-color:#B2E0CA;">0.311</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.6" style="background-color:#B2E0C9;"><span class="ltx_text" id="S4.T1.3.1.13.6.1" style="background-color:#B2E0C9;">0.311</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.7" style="background-color:#A9DCC3;"><span class="ltx_text" id="S4.T1.3.1.13.7.1" style="background-color:#A9DCC3;">0.337</span></td>
<td class="ltx_td" id="S4.T1.3.1.13.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.9" style="background-color:#FFD767;"><span class="ltx_text" id="S4.T1.3.1.13.9.1" style="background-color:#FFD767;">0.644</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.14">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.14.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.14.1.1">OpenAI o3-mini-low</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.14.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.3" style="background-color:#76C8A0;"><span class="ltx_text" id="S4.T1.3.1.14.3.1" style="background-color:#76C8A0;">0.478</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.4" style="background-color:#CDEBDC;"><span class="ltx_text" id="S4.T1.3.1.14.4.1" style="background-color:#CDEBDC;">0.237</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.5" style="background-color:#B1E0C9;"><span class="ltx_text" id="S4.T1.3.1.14.5.1" style="background-color:#B1E0C9;">0.315</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.6" style="background-color:#B1E0C9;"><span class="ltx_text" id="S4.T1.3.1.14.6.1" style="background-color:#B1E0C9;">0.313</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.7" style="background-color:#A9DDC3;"><span class="ltx_text" id="S4.T1.3.1.14.7.1" style="background-color:#A9DDC3;">0.335</span></td>
<td class="ltx_td" id="S4.T1.3.1.14.8"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.14.9" style="background-color:#FFD666;"><span class="ltx_text" id="S4.T1.3.1.14.9.1" style="background-color:#FFD666;">0.645</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.3.1.15.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.15.1.1">OpenAI GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.3.1.15.2">no</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.15.3" style="background-color:#AEDFC7;"><span class="ltx_text" id="S4.T1.3.1.15.3.1" style="background-color:#AEDFC7;">0.321</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.15.4" style="background-color:#88CFAC;"><span class="ltx_text" id="S4.T1.3.1.15.4.1" style="background-color:#88CFAC;">0.430</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.15.5" style="background-color:#9DD8BB;"><span class="ltx_text" id="S4.T1.3.1.15.5.1" style="background-color:#9DD8BB;">0.370</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.15.6" style="background-color:#C3E7D6;"><span class="ltx_text" id="S4.T1.3.1.15.6.1" style="background-color:#C3E7D6;">0.263</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.15.7" style="background-color:#A6DBC1;"><span class="ltx_text" id="S4.T1.3.1.15.7.1" style="background-color:#A6DBC1;">0.346</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.3.1.15.8"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.15.9" style="background-color:#FFD86D;"><span class="ltx_text" id="S4.T1.3.1.15.9.1" style="background-color:#FFD86D;">0.634</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive comparison of various Large Language Models (LLMs) in terms of their performance on summarization evaluation tasks.  Specifically, it shows the Kendall's tau correlation between the models' scores and human judgments for four aspects of summarization quality (coherence, consistency, relevance, and fluency) across two datasets: SummEval and Eval4NLP.  The models are categorized into three groups: state-of-the-art reasoning LLMs, distilled versions of reasoning LLMs, and related non-reasoning LLMs. This allows for an analysis of the impact of reasoning capabilities and the effects of model distillation on summarization evaluation.
> <details>
> <summary>read the caption</summary>
> Table 1: The segment-level Kendall’s τ𝜏\tauitalic_τ of summarization evaluation with different models on SummEval and Eval4NLP datasets.
> </details>





### In-depth insights


#### Reasoning vs NLG
The intersection of reasoning and Natural Language Generation (NLG) presents intriguing challenges and opportunities. Reasoning-enabled LLMs have shown promise in complex tasks, but their effectiveness in NLG evaluation requires careful examination. **Reasoning models don't always outperform conventional ones; efficacy depends on architecture and implementation.** The type of reasoning needed may also vary across NLG tasks such as summarization and translation. Architectures like OpenAI's o3-mini show reasoning can enhance evaluation, but it needs alignment with NLG requirements. **Effective distillation of reasoning capabilities is challenging, demanding sufficient model capacity.** Therefore, rather than just incorporating reasoning, specifically tailoring it to NLG evaluation nuances is crucial. **The key takeaway is that reasoning must be carefully integrated and aligned with the specific demands of the NLG task, rather than being a universally beneficial add-on.**

#### Distillation Efficacy
**Distillation efficacy** in reasoning LLMs for NLG evaluation reveals nuanced trade-offs. While R1 Qwen 32B reasonably preserves performance compared to the original DeepSeek-R1, the smaller R1 LLaMa 8B faces substantial degradation in summarization. This highlights that effectively distilling reasoning for evaluation requires sufficient model capacity. Smaller models may lack the ability to capture nuances for adequate evaluation. The trade-off between model size and evaluation quality needs consideration for practical applications where resource constraints are significant. Further research on distillation techniques tailored for reasoning-intensive evaluation tasks is essential to balance performance and efficiency.

#### OpenAI > DS R1
Analyzing 'OpenAI > DS R1' involves comparing OpenAI models (likely the 03-mini series) against DeepSeek-R1, two prominent reasoning-enabled LLMs. Key areas for thoughtful analysis include: **relative performance** on various tasks (NLG evaluation, math, logic), identifying **architectural strengths and weaknesses** contributing to observed differences. Furthermore, analyzing their **training methodologies** (e.g. RL, COT), **scaling behavior**, and **reasoning styles** is critical. Do OpenAI models demonstrate more consistent gains from reasoning, or does DeepSeek-R1 excel in specific niches? Ultimately, understanding *why* these models diverge informs future LLM design.

#### Limited R1's RL
**Limited R1's RL** likely points to constraints or shortcomings of the DeepSeek-R1 model, specifically in its reinforcement learning (RL) implementation. If R1's RL capabilities are *limited*, it suggests potential areas of weakness such as data, compute, reward functions, and the optimization process. It could mean that the **RL training data lacks diversity or is insufficient** to cover the breadth of the intended task distribution, causing poor generalization. Limitations could stem from the **RL algorithms themselves** - suboptimal exploration, reward shaping leading to unintended policies, or difficulties in scaling RL to the model's size. R1's architecture, while impressive in its scale, might not fully leverage the benefits of RL, indicating a **mismatch between the RL strategy and the model's underlying architecture**. The **design and tuning of reward functions** is critical: If the rewards do not accurately reflect the desired evaluation behavior, RL will guide the model in the wrong direction. It could also highlight a need for better **exploration of alternative RL techniques** that are more sample-efficient or robust to noisy rewards.

#### Prompt Tuning ↑
Although "Prompt Tuning ↑" isn't explicitly in the provided text, we can discuss the concept. It's a technique to adapt pre-trained language models (**PLMs**) to specific tasks. Instead of fine-tuning all model parameters, prompt tuning **optimizes a small set of task-specific prompts**. This approach offers efficiency by reducing computational costs and memory usage. It is particularly relevant when dealing with large language models (**LLMs**), where full fine-tuning is prohibitive. The goal is to guide the LLM toward desired outputs. Effective prompt tuning requires careful design of the prompt structure and initialization strategies to achieve performance competitive with full fine-tuning. **Challenges include prompt optimization, transferability across tasks, and sensitivity to prompt design.**


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1">
<tr class="ltx_tr" id="S4.T2.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.3.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.1">Model Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.3.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.2.1">Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.3.1">Segment-level</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.4.1">System-level</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.2.1.1">en-de</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.2.2.1">he-en</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.2.3.1">zh-en</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.2.4.1">Acc.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T2.3.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.3.1.1">DeepSeek, Qwen, LLaMa</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.1.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.4.1.1">DeepSeek R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.1.4.2">yes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.3" style="background-color:#A8DCC2;"><span class="ltx_text" id="S4.T2.3.1.4.3.1" style="background-color:#A8DCC2;">0.364</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.4" style="background-color:#95D4B5;"><span class="ltx_text" id="S4.T2.3.1.4.4.1" style="background-color:#95D4B5;">0.398</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.5" style="background-color:#88CFAC;"><span class="ltx_text" id="S4.T2.3.1.4.5.1" style="background-color:#88CFAC;">0.441</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.6" style="background-color:#FFDB78;"><span class="ltx_text" id="S4.T2.3.1.4.6.1" style="background-color:#FFDB78;">0.908</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.5">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.5.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.5.1.1">DeepSeek V3</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.5.2">no</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.3" style="background-color:#79C9A2;"><span class="ltx_text" id="S4.T2.3.1.5.3.1" style="background-color:#79C9A2;">0.490</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4" style="background-color:#96D5B6;"><span class="ltx_text" id="S4.T2.3.1.5.4.1" style="background-color:#96D5B6;">0.394</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.5" style="background-color:#74C89F;"><span class="ltx_text" id="S4.T2.3.1.5.5.1" style="background-color:#74C89F;">0.512</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.6" style="background-color:#FFDB7A;"><span class="ltx_text" id="S4.T2.3.1.5.6.1" style="background-color:#FFDB7A;">0.904</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.6">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.6.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.1.1">R1 LLaMa 70B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.6.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3" style="background-color:#90D1B1;"><span class="ltx_text" id="S4.T2.3.1.6.3.1" style="background-color:#90D1B1;">0.421</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.4" style="background-color:#A5DBC0;"><span class="ltx_text" id="S4.T2.3.1.6.4.1" style="background-color:#A5DBC0;">0.365</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5" style="background-color:#86CEAB;"><span class="ltx_text" id="S4.T2.3.1.6.5.1" style="background-color:#86CEAB;">0.451</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6" style="background-color:#FFD86D;"><span class="ltx_text" id="S4.T2.3.1.6.6.1" style="background-color:#FFD86D;">0.932</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.7">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.7.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.1.1">LLaMa 3.3 70B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.7.2">no</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.3" style="background-color:#60BF91;"><span class="ltx_text" id="S4.T2.3.1.7.3.1" style="background-color:#60BF91;">0.590</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.4" style="background-color:#90D1B1;"><span class="ltx_text" id="S4.T2.3.1.7.4.1" style="background-color:#90D1B1;">0.420</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.5" style="background-color:#6EC599;"><span class="ltx_text" id="S4.T2.3.1.7.5.1" style="background-color:#6EC599;">0.522</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.6" style="background-color:#FFDA72;"><span class="ltx_text" id="S4.T2.3.1.7.6.1" style="background-color:#FFDA72;">0.924</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.8">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.8.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.1.1">R1 Qwen 32B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.8.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.3" style="background-color:#9BD7B9;"><span class="ltx_text" id="S4.T2.3.1.8.3.1" style="background-color:#9BD7B9;">0.388</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.4" style="background-color:#AEDFC7;"><span class="ltx_text" id="S4.T2.3.1.8.4.1" style="background-color:#AEDFC7;">0.338</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.5" style="background-color:#81CCA7;"><span class="ltx_text" id="S4.T2.3.1.8.5.1" style="background-color:#81CCA7;">0.465</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.6" style="background-color:#FFDB78;"><span class="ltx_text" id="S4.T2.3.1.8.6.1" style="background-color:#FFDB78;">0.920</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.9">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.9.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.9.1.1">Qwen2.5 32B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.9.2">no</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.3" style="background-color:#6FC599;"><span class="ltx_text" id="S4.T2.3.1.9.3.1" style="background-color:#6FC599;">0.521</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.4" style="background-color:#98D6B8;"><span class="ltx_text" id="S4.T2.3.1.9.4.1" style="background-color:#98D6B8;">0.390</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.5" style="background-color:#70C69A;"><span class="ltx_text" id="S4.T2.3.1.9.5.1" style="background-color:#70C69A;">0.519</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.6" style="background-color:#FFD666;"><span class="ltx_text" id="S4.T2.3.1.9.6.1" style="background-color:#FFD666;">0.944</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.10">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.10.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.10.1.1">R1 LLaMa 8B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.10.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.3" style="background-color:#A0D9BC;"><span class="ltx_text" id="S4.T2.3.1.10.3.1" style="background-color:#A0D9BC;">0.310</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.4" style="background-color:#B2E1C9;"><span class="ltx_text" id="S4.T2.3.1.10.4.1" style="background-color:#B2E1C9;">0.325</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.5" style="background-color:#8FD1B0;"><span class="ltx_text" id="S4.T2.3.1.10.5.1" style="background-color:#8FD1B0;">0.410</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.6" style="background-color:#FFDC7C;"><span class="ltx_text" id="S4.T2.3.1.10.6.1" style="background-color:#FFDC7C;">0.915</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.11">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.11.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.11.1.1">LLaMa 3.1 8B</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.11.2">no</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.3" style="background-color:#7DCBA5;"><span class="ltx_text" id="S4.T2.3.1.11.3.1" style="background-color:#7DCBA5;">0.476</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.4" style="background-color:#AEDFC7;"><span class="ltx_text" id="S4.T2.3.1.11.4.1" style="background-color:#AEDFC7;">0.335</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.5" style="background-color:#90D1B1;"><span class="ltx_text" id="S4.T2.3.1.11.5.1" style="background-color:#90D1B1;">0.421</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.11.6" style="background-color:#FFDC7D;"><span class="ltx_text" id="S4.T2.3.1.11.6.1" style="background-color:#FFDC7D;">0.916</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.12">
<td class="ltx_td ltx_align_center" colspan="6" id="S4.T2.3.1.12.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.12.1.1">OpenAI</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.1.13.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.13.1.1">OpenAI o3-mini-high</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.1.13.2">yes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.13.3" style="background-color:#62C093;"><span class="ltx_text" id="S4.T2.3.1.13.3.1" style="background-color:#62C093;">0.577</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.13.4" style="background-color:#90D1B1;"><span class="ltx_text" id="S4.T2.3.1.13.4.1" style="background-color:#90D1B1;">0.421</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.13.5" style="background-color:#62C093;"><span class="ltx_text" id="S4.T2.3.1.13.5.1" style="background-color:#62C093;">0.568</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.13.6" style="background-color:#FFDB78;"><span class="ltx_text" id="S4.T2.3.1.13.6.1" style="background-color:#FFDB78;">0.920</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.14">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.14.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.14.1.1">OpenAI o3-mini-medium</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.14.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.14.3" style="background-color:#71C69B;"><span class="ltx_text" id="S4.T2.3.1.14.3.1" style="background-color:#71C69B;">0.517</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.14.4" style="background-color:#93D3B4;"><span class="ltx_text" id="S4.T2.3.1.14.4.1" style="background-color:#93D3B4;">0.404</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.14.5" style="background-color:#76C8A0;"><span class="ltx_text" id="S4.T2.3.1.14.5.1" style="background-color:#76C8A0;">0.505</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.14.6" style="background-color:#FFD96F;"><span class="ltx_text" id="S4.T2.3.1.14.6.1" style="background-color:#FFD96F;">0.928</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.15">
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.15.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.15.1.1">OpenAI o3-mini-low</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.1.15.2">yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.15.3" style="background-color:#7FCBA6;"><span class="ltx_text" id="S4.T2.3.1.15.3.1" style="background-color:#7FCBA6;">0.471</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.15.4" style="background-color:#91D2B2;"><span class="ltx_text" id="S4.T2.3.1.15.4.1" style="background-color:#91D2B2;">0.413</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.15.5" style="background-color:#7BC9A3;"><span class="ltx_text" id="S4.T2.3.1.15.5.1" style="background-color:#7BC9A3;">0.491</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.15.6" style="background-color:#FFD96F;"><span class="ltx_text" id="S4.T2.3.1.15.6.1" style="background-color:#FFD96F;">0.928</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.3.1.16.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.16.1.1">OpenAI GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.3.1.16.2">no</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.16.3" style="background-color:#93D3B4;"><span class="ltx_text" id="S4.T2.3.1.16.3.1" style="background-color:#93D3B4;">0.410</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.16.4" style="background-color:#8AD0AD;"><span class="ltx_text" id="S4.T2.3.1.16.4.1" style="background-color:#8AD0AD;">0.435</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.16.5" style="background-color:#7CC9A3;"><span class="ltx_text" id="S4.T2.3.1.16.5.1" style="background-color:#7CC9A3;">0.487</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.16.6" style="background-color:#FFD96F;"><span class="ltx_text" id="S4.T2.3.1.16.6.1" style="background-color:#FFD96F;">0.928</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of machine translation (MT) evaluation using different language models on the WMT23 dataset.  It shows two key metrics: segment-level Pearson's correlation (ρ), indicating the strength of the linear relationship between model scores and human judgments at the segment level, and system-level pairwise accuracy, showing how often the model correctly ranks different translation systems.  The table compares various models, including state-of-the-art reasoning LLMs and their non-reasoning counterparts, allowing for an assessment of the impact of reasoning capabilities on MT evaluation quality.
> <details>
> <summary>read the caption</summary>
> Table 2: The segment-level Pearson’s ρ𝜌\rhoitalic_ρ and system-level pairwise accuracy of MT evaluation with different models on WMT23.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.4.4">
<tr class="ltx_tr" id="S5.T3.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.4.4.5.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.4.5.2"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.2.1">Error</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.4.5.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.3.1">LLM Score</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.4.6.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.6.1.1">DeepSeek R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.6.2">-0.0154</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.6.3">0.0199</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.7">
<td class="ltx_td ltx_align_left" id="S5.T3.4.4.7.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.7.1.1">R1 LLaMa 70B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.2">-0.0429</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3">-0.2083</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.2.1">R1 Qwen 32B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.1.1">-0.0039<sup class="ltx_sup" id="S5.T3.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.1.1.1.1.1.1">‡</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.1.3">-0.1508</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.8">
<td class="ltx_td ltx_align_left" id="S5.T3.4.4.8.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.8.1.1">o3-mini-high</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.8.2">-0.1183</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.8.3">-0.4742</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.9">
<td class="ltx_td ltx_align_left" id="S5.T3.4.4.9.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.9.1.1">o3-mini-medium</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.2">-0.1104</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.3">-0.4148</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.10">
<td class="ltx_td ltx_align_left" id="S5.T3.4.4.10.1"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.1.1">o3-mini-low</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.10.2">-0.0919</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.10.3">-0.3466</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S5.T3.4.4.4.3">
<sup class="ltx_sup" id="S5.T3.4.4.4.3.1"><span class="ltx_text ltx_font_italic" id="S5.T3.4.4.4.3.1.1">‡</span></sup>Not statistically significant (<math alttext="p&gt;0.05" class="ltx_Math" display="inline" id="S5.T3.3.3.3.2.m2.1"><semantics id="S5.T3.3.3.3.2.m2.1a"><mrow id="S5.T3.3.3.3.2.m2.1.1" xref="S5.T3.3.3.3.2.m2.1.1.cmml"><mi id="S5.T3.3.3.3.2.m2.1.1.2" xref="S5.T3.3.3.3.2.m2.1.1.2.cmml">p</mi><mo id="S5.T3.3.3.3.2.m2.1.1.1" xref="S5.T3.3.3.3.2.m2.1.1.1.cmml">&gt;</mo><mn id="S5.T3.3.3.3.2.m2.1.1.3" xref="S5.T3.3.3.3.2.m2.1.1.3.cmml">0.05</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.2.m2.1b"><apply id="S5.T3.3.3.3.2.m2.1.1.cmml" xref="S5.T3.3.3.3.2.m2.1.1"><gt id="S5.T3.3.3.3.2.m2.1.1.1.cmml" xref="S5.T3.3.3.3.2.m2.1.1.1"></gt><ci id="S5.T3.3.3.3.2.m2.1.1.2.cmml" xref="S5.T3.3.3.3.2.m2.1.1.2">𝑝</ci><cn id="S5.T3.3.3.3.2.m2.1.1.3.cmml" type="float" xref="S5.T3.3.3.3.2.m2.1.1.3">0.05</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.2.m2.1c">p&gt;0.05</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.2.m2.1d">italic_p &gt; 0.05</annotation></semantics></math>). All other correlations significant at <math alttext="p&lt;0.001" class="ltx_Math" display="inline" id="S5.T3.4.4.4.3.m3.1"><semantics id="S5.T3.4.4.4.3.m3.1a"><mrow id="S5.T3.4.4.4.3.m3.1.1" xref="S5.T3.4.4.4.3.m3.1.1.cmml"><mi id="S5.T3.4.4.4.3.m3.1.1.2" xref="S5.T3.4.4.4.3.m3.1.1.2.cmml">p</mi><mo id="S5.T3.4.4.4.3.m3.1.1.1" xref="S5.T3.4.4.4.3.m3.1.1.1.cmml">&lt;</mo><mn id="S5.T3.4.4.4.3.m3.1.1.3" xref="S5.T3.4.4.4.3.m3.1.1.3.cmml">0.001</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.3.m3.1b"><apply id="S5.T3.4.4.4.3.m3.1.1.cmml" xref="S5.T3.4.4.4.3.m3.1.1"><lt id="S5.T3.4.4.4.3.m3.1.1.1.cmml" xref="S5.T3.4.4.4.3.m3.1.1.1"></lt><ci id="S5.T3.4.4.4.3.m3.1.1.2.cmml" xref="S5.T3.4.4.4.3.m3.1.1.2">𝑝</ci><cn id="S5.T3.4.4.4.3.m3.1.1.3.cmml" type="float" xref="S5.T3.4.4.4.3.m3.1.1.3">0.001</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.3.m3.1c">p&lt;0.001</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.3.m3.1d">italic_p &lt; 0.001</annotation></semantics></math>.</td>
<td class="ltx_td ltx_border_tt" id="S5.T3.4.4.4.4"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents Pearson correlation coefficients, illustrating the relationship between the number of reasoning tokens utilized by different models and two key evaluation metrics: evaluation error and LLM-assigned scores.  Evaluation error signifies the absolute discrepancy between the model's evaluation score and the corresponding human-assigned ground truth score. The LLM-assigned score represents the evaluation score generated directly by the LLM itself.  A strong negative correlation between reasoning token count and evaluation error would indicate that models utilizing more reasoning tokens tend to produce evaluations that align more closely with human judgments.  Conversely, a strong positive or negative correlation between reasoning token count and LLM-assigned scores would provide insights into the relationship between the amount of reasoning employed by the model and the resulting scores it assigns.
> <details>
> <summary>read the caption</summary>
> Table 3: Pearson correlations between reasoning token count and evaluation metrics. Error represents the absolute difference between model-predicted and ground truth scores.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.08120/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08120/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}