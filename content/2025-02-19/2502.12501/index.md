---
title: "Crowd Comparative Reasoning: Unlocking Comprehensive Evaluations for LLM-as-a-Judge"
summary: "Crowd-based comparative evaluation significantly boosts LLM-as-a-judge accuracy by using crowd responses to expose deeper details, resulting in more reliable and efficient auto-evaluation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 City University of Hong Kong",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12501 {{< /keyword >}}
{{< keyword icon="writer" >}} Qiyuan Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12501" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12501" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12501/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current automated methods for evaluating large language models (LLMs), particularly those using LLMs as judges, suffer from limitations in their ability to provide comprehensive and nuanced evaluations.  These methods often rely on simpler approaches like majority voting or criteria expansion, which fail to capture the full depth of response quality. This leads to unreliable and inefficient evaluation outcomes, hindering progress in LLM development and deployment. 

To address this problem, the researchers propose a novel crowd-based comparative evaluation (CCE) method. CCE introduces additional crowd responses to compare with the candidate responses, allowing the LLM-as-a-judge to uncover deeper details and produce more comprehensive evaluations.  Experimental results demonstrate that CCE significantly enhances evaluation accuracy, generates higher-quality chain-of-thought (CoT) judgments, and improves the efficiency of supervised fine-tuning (SFT) through a technique called crowd rejection sampling. The findings highlight the effectiveness and practicality of CCE for improving automated LLM evaluation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Crowd-based comparative evaluation enhances LLM-as-a-judge reliability, achieving an average accuracy gain of 6.7% across five benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed method generates higher-quality chain-of-thought (CoT) judgments, facilitating more efficient supervised fine-tuning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Crowd rejection sampling, based on CCE, improves the efficiency of supervised fine-tuning by selecting high-quality training samples. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it tackles the limitations of current automated evaluation methods for large language models (LLMs)**. By introducing a novel crowd-based comparative evaluation, it improves the reliability and efficiency of LLM evaluation, paving the way for better LLM development and deployment.  This work directly addresses a significant challenge in the field and opens up new avenues of research for improving the evaluation and training of LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.12501/x1.png)

> 🔼 The figure illustrates the Crowd-based Comparative Evaluation (CCE) method.  Candidate responses (A and B) are evaluated not in isolation, but in comparison to additional crowd responses (C, D, etc.).  The judgments derived from comparing the candidate responses against the crowd responses provide richer contextual information. This information is then fed back into the LLM-as-a-Judge to produce a more comprehensive and detailed chain-of-thought (CoT) judgment for the original candidate responses.  Essentially, the crowd responses act as anchors, exposing deeper details and nuances within the candidate responses that the LLM may have otherwise missed.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of our method. By evaluating the candidate responses A/B alongside the crowd responses, the resulting crowd judgment can be used as context to enrich the evaluation of A/B responses, leading to a more comprehensive CoT judgment.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3.1">
<tr class="ltx_tr" id="S4.T1.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.2">
<span class="ltx_text" id="S4.T1.3.1.1.2.1"></span> <span class="ltx_text" id="S4.T1.3.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.3.1.1.2.2.1">
<span class="ltx_tr" id="S4.T1.3.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.3.1.1.2.2.1.1.1.1">Reward</span></span></span>
<span class="ltx_tr" id="S4.T1.3.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.2.2.1.2.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.3.1.1.2.2.1.2.1.1">Bench</span></span></span>
</span></span><span class="ltx_text" id="S4.T1.3.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.3.1.1.3.1">HelpSteer2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.4">
<span class="ltx_text" id="S4.T1.3.1.1.4.1"></span> <span class="ltx_text" id="S4.T1.3.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.3.1.1.4.2.1">
<span class="ltx_tr" id="S4.T1.3.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.4.2.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.3.1.1.4.2.1.1.1.1">MTBench</span></span></span>
<span class="ltx_tr" id="S4.T1.3.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.4.2.1.2.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.3.1.1.4.2.1.2.1.1">Human</span></span></span>
</span></span><span class="ltx_text" id="S4.T1.3.1.1.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.5">
<span class="ltx_text" id="S4.T1.3.1.1.5.1"></span> <span class="ltx_text" id="S4.T1.3.1.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.3.1.1.5.2.1">
<span class="ltx_tr" id="S4.T1.3.1.1.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.5.2.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.3.1.1.5.2.1.1.1.1">Judge</span></span></span>
<span class="ltx_tr" id="S4.T1.3.1.1.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.1.1.5.2.1.2.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.3.1.1.5.2.1.2.1.1">Bench</span></span></span>
</span></span><span class="ltx_text" id="S4.T1.3.1.1.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.6"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.3.1.1.6.1">EvalBias</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.1.7.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.2.1.1">GPT-4o</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.2.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.2.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.2.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.2.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.2.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.2.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.3.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.3.1.1">Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.2">85.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.3">66.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.4">82.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.5">66.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.6">68.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.3.7">73.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.4.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.4.1.1">LongPrompt</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.2">86.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.3">67.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.4">81.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.5">63.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.6">70.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.4.7">74.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.5.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.5.1.1">EvalPlan</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.2">88.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.3">65.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.4">81.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.5">62.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.6">74.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.5.7">74.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.6.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.6.1.1">16-Criteria</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.2">87.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.3">69.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.4">82.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.5">66.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.6">73.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.6.7">75.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.7.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.7.1.1">Maj@16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.2">87.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.3">68.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.4">82.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.5">68.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.6">75.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.7.7">76.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.8.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.8.1.1">Agg@16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.2">88.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.3">68.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.4">82.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.5">67.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.6">77.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.8.7">76.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.9" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.9.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.3.1.9.1.1" style="background-color:#E6FFE6;">CCE<span class="ltx_text ltx_font_italic" id="S4.T1.3.1.9.1.1.1">-random@16</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.2"><span class="ltx_text" id="S4.T1.3.1.9.2.1" style="background-color:#E6FFE6;">91.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.3"><span class="ltx_text" id="S4.T1.3.1.9.3.1" style="background-color:#E6FFE6;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.4"><span class="ltx_text" id="S4.T1.3.1.9.4.1" style="background-color:#E6FFE6;">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.5"><span class="ltx_text" id="S4.T1.3.1.9.5.1" style="background-color:#E6FFE6;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.6"><span class="ltx_text" id="S4.T1.3.1.9.6.1" style="background-color:#E6FFE6;">80.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.9.7"><span class="ltx_text" id="S4.T1.3.1.9.7.1" style="background-color:#E6FFE6;">78.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.10" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.10.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.3.1.10.1.1" style="background-color:#E6FFE6;">CCE<span class="ltx_text ltx_font_italic" id="S4.T1.3.1.10.1.1.1">@16</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.2.1" style="background-color:#E6FFE6;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.3.1" style="background-color:#E6FFE6;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.4.1" style="background-color:#E6FFE6;">83.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.5"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.5.1" style="background-color:#E6FFE6;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.6"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.6.1" style="background-color:#E6FFE6;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.10.7"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.7.1" style="background-color:#E6FFE6;">80.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.11.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.11.1.1">Qwen 2.5 7B-Instruct</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.11.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.11.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.11.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.11.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.11.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.11.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.12">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.12.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.12.1.1">Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.2">78.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.3">60.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.4">76.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.5">58.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.6">57.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.12.7">66.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.13" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.3.1.13.1.1" style="background-color:#E6FFE6;">CCE<span class="ltx_text ltx_font_italic" id="S4.T1.3.1.13.1.1.1">@16</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.13.2.1" style="background-color:#E6FFE6;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.13.3.1" style="background-color:#E6FFE6;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.13.4.1" style="background-color:#E6FFE6;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.5"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.13.5.1" style="background-color:#E6FFE6;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.6"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.13.6.1" style="background-color:#E6FFE6;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.13.7"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.13.7.1" style="background-color:#E6FFE6;">72.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.14.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.14.1.1">Qwen 2.5 32B-Instruct</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.14.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.14.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.14.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.14.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.14.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.14.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.15">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.15.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.15.1.1">Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.2">87.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.15.3.1">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.4">79.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.5">68.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.6">71.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.15.7">75.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.16" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.16.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.3.1.16.1.1" style="background-color:#E6FFE6;">CCE<span class="ltx_text ltx_font_italic" id="S4.T1.3.1.16.1.1.1">@16</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.16.2.1" style="background-color:#E6FFE6;">90.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.3"><span class="ltx_text" id="S4.T1.3.1.16.3.1" style="background-color:#E6FFE6;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.16.4.1" style="background-color:#E6FFE6;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.5"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.16.5.1" style="background-color:#E6FFE6;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.6"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.16.6.1" style="background-color:#E6FFE6;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.16.7"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.16.7.1" style="background-color:#E6FFE6;">79.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.17.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.1.1">Qwen 2.5 72B-Instruct</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.17.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.17.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.17.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.17.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.17.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.17.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.18">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.18.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.18.1.1">Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.18.2">85.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.18.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.18.3.1">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.18.4">79.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.18.5">68.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.18.6">68.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.18.7">74.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.19" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.19.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.3.1.19.1.1" style="background-color:#E6FFE6;">CCE<span class="ltx_text ltx_font_italic" id="S4.T1.3.1.19.1.1.1">@16</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.19.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.19.2.1" style="background-color:#E6FFE6;">93.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.19.3"><span class="ltx_text" id="S4.T1.3.1.19.3.1" style="background-color:#E6FFE6;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.19.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.19.4.1" style="background-color:#E6FFE6;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.19.5"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.19.5.1" style="background-color:#E6FFE6;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.19.6"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.19.6.1" style="background-color:#E6FFE6;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.19.7"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.19.7.1" style="background-color:#E6FFE6;">82.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.20.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.20.1.1">Llama 3.3 70B-Instruct</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.20.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.20.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.20.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.20.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.20.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.3.1.20.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.21">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.21.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.21.1.1">Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.21.2">86.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.21.3">70.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.21.4">81.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.21.5">67.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.21.6">70.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.21.7">75.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.22" style="background-color:#E6FFE6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.3.1.22.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.3.1.22.1.1" style="background-color:#E6FFE6;">CCE<span class="ltx_text ltx_font_italic" id="S4.T1.3.1.22.1.1.1">@16</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.22.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.22.2.1" style="background-color:#E6FFE6;">91.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.22.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.22.3.1" style="background-color:#E6FFE6;">71.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.22.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.22.4.1" style="background-color:#E6FFE6;">83.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.22.5"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.22.5.1" style="background-color:#E6FFE6;">69.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.22.6"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.22.6.1" style="background-color:#E6FFE6;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.1.22.7"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.22.7.1" style="background-color:#E6FFE6;">79.1</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the accuracy results of different LLM-as-a-Judge methods across five benchmark datasets.  The methods compared include the proposed Crowd-based Comparative Evaluation (CCE), majority voting (Maj@16), aggregation of multiple judgements (Agg@16), and several baseline methods (Vanilla, Long Prompt, EvalPlan, 16-Criteria).  The results show the accuracy of each method in determining which of two candidate responses is superior. CCE demonstrates consistent improvement over baseline methods, particularly outperforming the scaling strategies such as Maj@16.  The impact of using random selection instead of the CCE's more sophisticated selection process is also shown by comparing CCE with CCE-random.  Results are shown separately for different LLMs (GPT-4, Qwen 2.5-7B, Qwen 2.5-32B, Qwen 2.5-72B, and Llama 3.3-70B).
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy of LLM-as-a-Judge on pair-wise comparison benchmarks. CCE can consistently enhance the LLM-as-a-Judge’s performance across 5 benchmarks, especially considerably outperforming other scaling inference strategies, like maj@16. The highest values are bolded. Here, CCE-random refers to replacing the “Criticizing Selection+++Outcome-Removal Processing” with “Random Selection”.
> </details>





### In-depth insights


#### Crowd-based Eval
Crowd-based evaluation methods for large language models (LLMs) offer a compelling alternative to traditional human evaluation, addressing limitations in scalability and cost.  These methods leverage the wisdom of the crowd by aggregating multiple judgments from different sources. **A key advantage is the potential to uncover nuanced details and perspectives that might be missed by a single evaluator.**  However, careful consideration must be given to the design and implementation of the crowd-based system.  **Bias mitigation strategies are crucial** to prevent inaccuracies in the aggregated judgments. This includes careful selection of annotators or generating diverse synthetic responses, as well as employing techniques to identify and remove biased responses.  Furthermore, the process of aggregating and interpreting crowd judgments requires thoughtful analysis.  **Sophisticated aggregation techniques may be needed to effectively handle diverse and potentially conflicting judgments,** ultimately leading to a more robust and reliable assessment of LLM performance.

#### CoT Enhancement
The concept of 'CoT Enhancement' in the context of LLMs as judges centers on improving the quality and comprehensiveness of chain-of-thought reasoning.  The paper argues that current methods, such as majority voting and criteria expansion, are insufficient.  **Crowd-based Comparative Evaluation (CCE)** is proposed as a solution, leveraging additional crowd responses to expose deeper details within candidate responses, thereby guiding the LLM judge to produce more detailed and accurate CoT judgments.  This approach is motivated by how humans compare items, using additional context for enhanced comparison.  The effectiveness of CCE is demonstrated through improved accuracy and the generation of higher-quality CoTs suitable for tasks like judge distillation and SFT rejection sampling.  The analysis suggests that CCE's success stems from its ability to encourage more comprehensive CoT reasoning by providing richer contextual information, ultimately leading to more reliable automated evaluations.  **Criticizing Selection**, a key component of CCE, focuses on selecting judgments that offer deeper insights by highlighting weaknesses rather than strengths.  Further, the study explores the positive impact of scaling inference and its effectiveness on reducing bias, improving overall evaluation accuracy.

#### Judge Distillation
Judge distillation, in the context of LLM-as-a-judge evaluations, focuses on transferring the knowledge of a large, powerful language model (the "teacher" judge) to a smaller, more efficient model (the "student" judge).  This is crucial because using large LLMs for every evaluation is computationally expensive. The process involves training the student judge on the chain-of-thought (CoT) reasoning provided by the teacher judge, effectively distilling the complex evaluation logic into a more compact form.  **High-quality CoTs are essential for successful distillation**, as they provide rich and nuanced reasoning which the student model can learn from.  The effectiveness of judge distillation is often measured by comparing the performance of the distilled model against the original teacher model on various benchmarks, looking at factors such as accuracy and efficiency.  **The paper likely explores different methods for generating high-quality CoTs to improve distillation**, such as techniques which encourage more comprehensive comparisons between responses, potentially leading to better student judge performance and reduced computational cost.  **The resulting distilled judge model aims to maintain the evaluation quality of the larger model while offering improved efficiency and scalability.**  Further analysis might examine the impact of various factors on the distillation process, such as the size and architecture of the student model, the size of the training dataset, and the specific techniques used to generate the CoTs.

#### SFT Rejection
Supervised fine-tuning (SFT) is a crucial process in developing effective large language models (LLMs).  However, the cost and time associated with SFT can be substantial, and not all training data is equally valuable. **SFT rejection sampling** offers a solution to this problem by selectively choosing high-quality data points for inclusion in the SFT process. This selective approach improves training efficiency and model performance by avoiding the inclusion of less informative or noisy examples. The paper explores the integration of the crowd-based comparative evaluation (CCE) method with SFT rejection sampling. CCE is shown to produce higher-quality judgments, enabling a more effective selection of training data. The process improves the quality of the final SFT model and improves efficiency by reducing the amount of data that needs to be processed. **Crowd rejection sampling**, a novel approach, is introduced. This approach leverages the richness of information extracted through CCE's comprehensive analysis to enhance the filtering process.  **Experimental results** demonstrate a noticeable performance improvement in models trained using crowd rejection sampling, surpassing traditional methods in both effectiveness and efficiency.

#### CCE Limitations
The Crowd-based Comparative Evaluation (CCE) method, while showing promise in enhancing LLM-as-a-Judge evaluations, presents several limitations.  **Firstly**, the reliance on a progressive self-iteration paradigm is absent from the study. While the method inherently allows for iterative refinement, a structured approach to such iteration is not explored, limiting the potential for even greater accuracy and robustness. **Secondly**, the methodology heavily depends on the quality of crowd judgments generated by LLMs.  The selection of these judgments is not comprehensively investigated, raising concerns about potential biases inherent in the selected crowd responses and their influence on the overall evaluation.  A more thorough exploration of different LLM choices and their impact on crowd judgment quality is crucial for improving reliability.  **Finally**, while the study shows promising results in scaling inference, the inherent computational cost of generating and processing numerous crowd judgments remains a practical consideration. The scalability of CCE in real-world applications may be limited by this resource-intensive nature. Further research should focus on improving efficiency and exploring more cost-effective strategies for generating and selecting high-quality crowd responses to fully unlock the potential of CCE.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12501/x2.png)

> 🔼 This figure illustrates the Crowd-based Comparative Evaluation (CCE) process.  For a given task (x) and two candidate responses (yA and yB), the system first generates additional responses (crowd responses, yi) using an LLM. These crowd responses are then compared with the original candidate responses to create initial judgments (J). These judgments are refined (J^) through selection and processing steps that prioritize informative comparisons. Finally, the refined judgments are used as context for the LLM to produce a more comprehensive evaluation of the original candidates (yA, yB).
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipeline of our proposed crowd-based comparative evaluation. For a given instance (x,yA,yB)𝑥superscript𝑦𝐴superscript𝑦𝐵(x,y^{A},y^{B})( italic_x , italic_y start_POSTSUPERSCRIPT italic_A end_POSTSUPERSCRIPT , italic_y start_POSTSUPERSCRIPT italic_B end_POSTSUPERSCRIPT ), we first use the LLM to generate crowd responses {yi|i∈{C,D,E,…}}conditional-setsuperscript𝑦𝑖𝑖𝐶𝐷𝐸…\left\{y^{i}|i\in\{C,D,E,...\}\right\}{ italic_y start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT | italic_i ∈ { italic_C , italic_D , italic_E , … } } based on x𝑥xitalic_x. These responses are then compared with yAsuperscript𝑦𝐴y^{A}italic_y start_POSTSUPERSCRIPT italic_A end_POSTSUPERSCRIPT and yBsuperscript𝑦𝐵y^{B}italic_y start_POSTSUPERSCRIPT italic_B end_POSTSUPERSCRIPT to produce initial crowd judgments 𝒥𝒥\mathcal{J}caligraphic_J, which are subsequently refined into 𝒥^^𝒥\hat{\mathcal{J}}over^ start_ARG caligraphic_J end_ARG after selection and processing. Finally, 𝒥^^𝒥\hat{\mathcal{J}}over^ start_ARG caligraphic_J end_ARG are used as contextual input to evaluate the instance (x,yA,yB)𝑥superscript𝑦𝐴superscript𝑦𝐵(x,y^{A},y^{B})( italic_x , italic_y start_POSTSUPERSCRIPT italic_A end_POSTSUPERSCRIPT , italic_y start_POSTSUPERSCRIPT italic_B end_POSTSUPERSCRIPT ).
> </details>



![](https://arxiv.org/html/2502.12501/x3.png)

> 🔼 This figure displays the impact of increasing the number of crowd judgments on the performance of the proposed Crowd-based Comparative Evaluation (CCE) method.  The x-axis represents the number of crowd judgments included, while the y-axis shows two key metrics: accuracy of the LLM-as-a-judge and the length of the chain-of-thought (CoT) reasoning produced by the LLM. The graphs illustrate that as more crowd judgments are considered (increasing context), both the accuracy of the evaluation and the detail level of the CoT reasoning generally improve.
> <details>
> <summary>read the caption</summary>
> Figure 3: Evaluation performance under scaling crowd judgments in the context. As the number of crowd judgments grows, both accuracy and CoT length generally increase.
> </details>



![](https://arxiv.org/html/2502.12501/x4.png)

> 🔼 Figure 4 presents a comparison of Chain-of-Thought (CoT) reasoning quality between the proposed Crowd-based Comparative Evaluation (CCE) method and the standard approach (Vanilla).  It uses two key metrics: the average number of key points identified in the CoT and the coverage rate.  The key points metric reflects how many distinct aspects or details the model considered when forming its judgment. The coverage rate indicates the proportion of relevant information in the input response that the model's CoT addressed.  Across all five benchmarks used for evaluation, CCE consistently outperformed the vanilla method in both of these metrics, demonstrating that CCE generates more comprehensive and in-depth CoTs.
> <details>
> <summary>read the caption</summary>
> Figure 4: CoT Comparison. CCE’s CoT consistently yields a higher average number of key points and a higher coverage rate across all benchmarks.
> </details>



![](https://arxiv.org/html/2502.12501/x5.png)

> 🔼 This figure displays the prompt used in the Crowd-based Comparative Evaluation (CCE) method.  The prompt instructs the LLM to act as an impartial judge, evaluating two AI-generated responses. It emphasizes holistic assessment, considering various criteria like helpfulness, relevance, accuracy, and completeness.  The prompt also instructs the LLM to implicitly consider characteristics of other responses (crowd responses) as a background context, further refining its judgment. Crucially, the prompt explicitly forbids the LLM from referencing these background responses directly in its final verdict. The prompt concludes by specifying the format for the final verdict: '[[A]]' or '[[B]]', indicating which assistant performed better.
> <details>
> <summary>read the caption</summary>
> Figure 5: Prompt of Our Method.
> </details>



![](https://arxiv.org/html/2502.12501/x6.png)

> 🔼 This figure displays the prompt used in the vanilla LLM-as-a-Judge method.  Unlike the more complex prompt used in the Crowd Comparative Evaluation method (CCE), the vanilla prompt is simpler and focuses on the basic comparison of the two responses based on general criteria such as helpfulness, relevance, accuracy, depth, creativity, and level of detail.  It instructs the LLM to choose the response that better answers the user's question, emphasizing objectivity and avoiding bias based on factors such as length, style, order of presentation, or AI assistant names.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prompt of Vanilla LLM-as-a-Judge.
> </details>



![](https://arxiv.org/html/2502.12501/x7.png)

> 🔼 This figure displays the prompt used for the 16-criteria LLM-as-a-Judge evaluation method.  The prompt instructs the LLM to act as an impartial judge, evaluating two AI-generated responses based on sixteen specified criteria, which are listed explicitly in the prompt, encompassing aspects such as helpfulness, relevance, accuracy, depth, creativity, detail level, overall quality, readability, coherence, fluency, grammaticality, simplicity, adequacy, faithfulness, non-hallucination and complexity.  The LLM is directed to compare the responses, provide a short explanation, and render a final verdict indicating which response is superior, using a pre-defined format.
> <details>
> <summary>read the caption</summary>
> Figure 7: Prompt of 16-Criteria LLM-as-a-Judge.
> </details>



![](https://arxiv.org/html/2502.12501/x8.png)

> 🔼 This figure shows the prompt used for the LongPrompt LLM-as-a-Judge baseline.  The prompt instructs the LLM to act as an impartial judge, comparing two AI-generated responses to a given question. It emphasizes a detailed explanation of the comparison, aiming for a comprehensive evaluation of aspects like helpfulness, accuracy, depth, and creativity.  The LLM is explicitly instructed to provide a long explanation.  The final verdict must follow the format '[[A]]' or '[[B]]', indicating the better response.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompt of LongPrompt LLM-as-a-Judge.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1"># of Training Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.1.1.1.3.1">RewardBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.1.1.1.4.1">HelpSteer2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.5"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.1.1.1.5.1">MTBench Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.6"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.1.1.1.6.1">JudgeBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.7"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.1.1.1.7.1">EvalBias</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.8.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1.1">JudgeLM-7B</span> <cite class="ltx_cite ltx_citemacro_citep">(Zhu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12501v1#bib.bib46" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2">100,000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.2.3.1">46.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.2.4.1">60.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.5">64.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.6">32.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.7.1">42.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.2.8.1">49.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.3.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1.1">PandaLM-7B</span> <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12501v1#bib.bib37" title="">2024c</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2">300,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3">45.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.4">57.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.3.5.1">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.6">36.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.7">27.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.8">48.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.4.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1.1">Auto-J-13B</span> <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12501v1#bib.bib21" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2">4,396</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.3.1">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.4.1">65.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.5.1">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.6.1">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.7">16.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.8.1">51.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.5.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.1.1">Prometheus-7B</span> <cite class="ltx_cite ltx_citemacro_citep">(Kim et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12501v1#bib.bib15" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2">100,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3">34.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4">30.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5">52.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.6">9.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.7">11.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.8">27.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.6.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.1.1">Prometheus-2-7B</span> <cite class="ltx_cite ltx_citemacro_citep">(Kim et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12501v1#bib.bib16" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.2">300,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3">43.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.4">37.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.5">55.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.6.6.1">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.6.7.1">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.8">43.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.7.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.1.1">Llama-3.1-8B-Tuned</span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.7.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.7.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.7.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.7.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.7.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.7.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.7.8"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.8.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.8.1.1">Synthetic Judgment from Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.2">10,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.3">66.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.4">56.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5">71.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.8.6.1">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7">34.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8">57.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.9.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.9.1.1">Synthetic Judgment from Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.2">30,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.3.1">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.9.4.1">58.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.9.5.1">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.6">50.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.9.7.1">46.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8">60.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.10.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.10.1.1">Synthetic Judgment from <span class="ltx_text ltx_font_smallcaps" id="S4.T2.1.1.10.1.1.1">CCE</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.2">10,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.3">69.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.4.1">58.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.5">72.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.6.1">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.8.1">61.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.11.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.11.1.1">Synthetic Judgment from <span class="ltx_text ltx_font_smallcaps" id="S4.T2.1.1.11.1.1.1">CCE</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.2">30,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.11.3.1">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.4.1">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.5.1">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.6">50.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.7.1">50.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.11.8.1">61.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.12.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.1.1">Qwen 2.5-7B-Tuned</span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.12.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.12.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.12.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.12.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.12.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.12.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.12.8"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.13.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.13.1.1">Synthetic Judgment from Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.2">10,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.3">68.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.4">55.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.5">70.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.13.6.1">50.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.7">38.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.8">56.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.14">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.14.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.14.1.1">Synthetic Judgment from Vanilla</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.2">30,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.3">71.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.4">56.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.5">75.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.6">48.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.7">54.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.8">61.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.15">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.15.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.15.1.1">Synthetic Judgment from <span class="ltx_text ltx_font_smallcaps" id="S4.T2.1.1.15.1.1.1">CCE</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.2">10,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.3">68.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.4">56.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.5">71.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.6">49.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.7">40.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.8">57.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.16">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.16.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.16.1.1">Synthetic Judgment from <span class="ltx_text ltx_font_smallcaps" id="S4.T2.1.1.16.1.1.1">CCE</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.2">30,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.3.1">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.4.1">59.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.5.1">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.6">50.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.7.1">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.8.1">63.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.17">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.1.17.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.17.1.1">Mix Synthetic Judgment from <span class="ltx_text ltx_font_smallcaps" id="S4.T2.1.1.17.1.1.1">CCE</span>&amp;Vanilla</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.17.2">60,000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.17.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.3.1">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.17.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.4.1">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.17.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.5.1">76.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.17.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.6.1">61.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.17.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.7.1">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.17.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.8.1">66.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy results of smaller LLMs trained as judges using Chain-of-Thought (CoT) judgments generated by two different methods: Vanilla and Crowd-based Comparative Evaluation (CCE).  The accuracy is measured across five pairwise comparison benchmarks (REWARDBENCH, HELPSTEER2, MTBENCH HUMAN, JUDGEBENCH, EVALBIAS). The table shows that using CCE to generate CoT judgments leads to significantly better performance of the trained judge models compared to using Vanilla.  The highest accuracy scores for each benchmark are highlighted in bold, and the second-highest scores are underlined, demonstrating the consistent superior performance of the CCE approach.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy of Trained small LLM-as-a-Judge on pair-wise comparison benchmarks. Under the same preference pairs data, the model trained with judgments synthesized using CCE achieves more reliable evaluation results. The highest values are bolded, and the second highest is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Rejection Sampling Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T3.1.1.1.2.1">MTBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T3.1.1.1.3.1">AlpacaEval-2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T3.1.1.2.1">Llama 3.1 8B Base</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.1.1">Instructions from LIMA # 1K</span></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.3.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.3.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.4.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.4.1.1">Random Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.4.2.1">4.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3">2.89/3.29</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.5.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.5.1.1">Vanilla Rejection Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.2">4.28</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.5.3.1">2.91/3.29</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.6.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.6.1.1">Crowd Rejection Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.2.1">4.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.3.1">3.02/3.31</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.7.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.1.1">Instructions from Tulu 3 # 10K</span></td>
<td class="ltx_td" id="S4.T3.1.1.7.2"></td>
<td class="ltx_td" id="S4.T3.1.1.7.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.8.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.8.1.1">Random Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.2">7.51</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.3">12.81/12.45</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.9.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.9.1.1">Vanilla Rejection Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.9.2.1">7.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.9.3.1">19.92/17.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.10.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.10.1.1">Crowd Rejection Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.10.2.1">7.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.10.3.1">22.23/19.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T3.1.1.11.1">Qwen 2.5 7B Base</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.12.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.12.1.1">Instructions from LIMA # 1K</span></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.12.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.12.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.13.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.13.1.1">Random Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.13.2.1">8.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.13.3.1">14.52/9.40</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.14">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.14.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.14.1.1">Vanilla Rejection Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.2">7.91</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.3">14.40/9.44</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.15">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.15.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.15.1.1">Crowd Rejection Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.2.1">8.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.3.1">14.86/9.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.16">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.16.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.16.1.1">Instructions from Tulu 3 # 10K</span></td>
<td class="ltx_td" id="S4.T3.1.1.16.2"></td>
<td class="ltx_td" id="S4.T3.1.1.16.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.17">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.17.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.17.1.1">Random Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.2">8.36</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.3">21.39/13.68</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.18">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.18.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.18.1.1">Vanilla Rejection Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.18.2.1">8.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.18.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.18.3.1">22.71/16.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.1.19.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.19.1.1">Crowd Rejection Sampling</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.19.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.19.2.1">8.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.19.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.19.3.1">23.78/17.56</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the effectiveness of different response sampling methods for supervised fine-tuning (SFT) within the context of instruction-following tasks.  Three methods were compared: random sampling, vanilla rejection sampling (using a standard LLM-as-a-Judge), and crowd-based rejection sampling (using the proposed CCE method).  The table shows the performance of models fine-tuned using each sampling method, measured on two instruction-following benchmarks (MTBENCH and ALPACAEVAL-2) with different numbers of training instructions (LIMA with 1K instructions, and TULU3-SFT with 10K instructions).  The performance is assessed using two metrics, and the results demonstrate the improved generative capabilities of models trained with responses selected using the proposed CCE method.
> <details>
> <summary>read the caption</summary>
> Table 3: SFT Rejection Sampling Performance on the Instruction-Following Benchmark. The model fine-tuned with responses sampled using CCE demonstrates improved generative performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Strategy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1"># of Selection Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T4.1.1.1.3.1">RewardBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.4"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T4.1.1.1.4.1">HelpSteer2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.5"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T4.1.1.1.5.1">MTBench Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.6"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T4.1.1.1.6.1">JudgeBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.7"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T4.1.1.1.7.1">EvalBias</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.8.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.2.1.1">Random-Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.2">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.3">91.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.2.4.1">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.5">82.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.6">68.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.7">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.8">78.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.3.1.1">Praising-Selection</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2">8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.3">86.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.4">64.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.5">81.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.6">67.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.7">77.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.8">75.4</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.4.1.1">Criticizing-Selection</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.2">8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.4.3.1">91.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4">69.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.4.5.1">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.6">68.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.7">79.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.8">78.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.5.1.1">Balanced-Selection</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.2">8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.3">90.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4">68.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.5">82.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.6">67.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.7">78.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.8">77.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.6.1.1">Outcome-Removal Random-Selection</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.2">8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.3.1">91.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.6.4.1">69.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.6.5.1">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.6.6.1">69.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.6.7.1">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.6.8.1">78.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.7.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.7.1.1">Outcome-Removal Criticizing-Selection (Sota)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.2">8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.3.1">91.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.4.1">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.5.1">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.6.1">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.7.1">79.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.8"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.8.1">78.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.8.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.8.1.1">Random-Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.8.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.8.3">91.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.8.4">69.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.8.5">83.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.8.6">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.8.7">80.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.8.8">78.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.9.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.9.1.1">Praising-Selection</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.2">16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.3">87.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.4">68.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.5">82.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.6">67.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.7">77.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8">76.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.10.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.10.1.1">Criticizing-Selection</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.2">16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.3">90.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.10.4.1">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.5">83.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.6">69.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.10.7.1">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.10.8.1">79.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.11.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.11.1.1">Balanced-Selection</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.2">16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.3">90.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.4">69.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.5">82.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.6">68.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.7">79.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.8">78.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.12">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.12.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.12.1.1">Outcome-Removal Random-Selection</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.2">16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.12.3.1">91.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.12.4.1">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.12.5.1">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.12.6.1">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.7">81.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.12.8.1">79.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.1.13.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.13.1.1">Outcome-Removal Criticizing-Selection(Sota)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.13.3.1">91.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.13.4.1">70.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.13.5.1">83.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.13.6.1">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.13.7.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.8"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.13.8.1">80.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the performance of LLM-as-a-Judge models on several pairwise comparison benchmarks.  It compares the accuracy of different methods, including the proposed Crowd-based Comparative Evaluation (CCE), majority voting (Maj@16), and criteria expansion (16-Criteria). The results show that CCE consistently improves the accuracy of LLM-as-a-Judge across various benchmarks, significantly outperforming both Maj@16 and 16-Criteria.  Furthermore, it highlights that models trained using judgments generated by CCE achieve higher reliability in evaluation.
> <details>
> <summary>read the caption</summary>
> Table 4: Accuracy of LLM-as-a-Judge on pair-wise comparison benchmarks. CCE can consistently enhance the LLM-as-a-Judge’s performance during the test-time inference phase, especially considerably outperforming maj@16 and 16-Criteria; under the same preference pairs data, the model trained with judgments synthesized using CCE achieves more reliable evaluation results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T5.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.1.1" style="width:265.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1.1">Instruction</span>: Classify this tweet from the categories of positive, negative, or neutral. Tweet: I’m so thankful for all the wonderful people in my life</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.1.1">
<span class="ltx_p" id="S4.T5.1.1.2.1.1.1" style="width:265.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.2.1.1.1.1" style="color:#FF0000;">Response A</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T5.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.3.1.1">
<span class="ltx_p" id="S4.T5.1.1.3.1.1.1" style="width:265.0pt;">    The sentiment of this social media comment is positive. The use of the word "grateful" implies appreciation and thankfulness, while "amazing experiences" suggest that these experiences have been very fulfilling or enjoyable.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T5.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.1.1">
<span class="ltx_p" id="S4.T5.1.1.4.1.1.1" style="width:265.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.1.1.1.1" style="color:#32CD32;">Response B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T5.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.1.1">
<span class="ltx_p" id="S4.T5.1.1.5.1.1.1" style="width:265.0pt;">    Positive</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.1.1">
<span class="ltx_p" id="S4.T5.1.1.6.1.1.1" style="width:265.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.6.1.1.1.1">Vanilla LLM-as-a-Judge</span>:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T5.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.7.1.1">
<span class="ltx_p" id="S4.T5.1.1.7.1.1.1" style="width:265.0pt;">    Assistant A’s . . . . . . 
<span class="ltx_text" id="S4.T5.1.1.7.1.1.1.1" style="color:#000000;background-color:#FBE5D6;">It highlights specific words and phrases in the tweet, such as “thankful” and “wonderful people,” to justify the positive sentiment classification. This explanation adds depth and clarity to the response, making it more helpful and informative.</span></span>
<span class="ltx_p" id="S4.T5.1.1.7.1.1.2">Assistant B, . . . . . . the response less informative and helpful . . .</span>
<span class="ltx_p" id="S4.T5.1.1.7.1.1.3">. . . . . .</span>
<span class="ltx_p" id="S4.T5.1.1.7.1.1.4">- Final Verdict: <span class="ltx_text" id="S4.T5.1.1.7.1.1.4.1" style="color:#FF0000;">[[A]]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.1.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.1.1">
<span class="ltx_p" id="S4.T5.1.1.8.1.1.1" style="width:265.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T5.1.1.8.1.1.1.1">CCE</span>:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T5.1.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.1.1">
<span class="ltx_p" id="S4.T5.1.1.9.1.1.1" style="width:265.0pt;">    <span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T5.1.1.9.1.1.1.1">AC Judgment</span>: <span class="ltx_text ltx_ulem_uwave" id="S4.T5.1.1.9.1.1.1.2">However, Assistant A makes a mistake by referencing words not present in the tweet, such as "grateful" and "amazing experiences,"</span> . . . . . . Assistant C also classifies the tweet as positive and provides a detailed explanation . . .</span>
<span class="ltx_p" id="S4.T5.1.1.9.1.1.2">. . . . . . Assistant A . . . . .
<span class="ltx_text" id="S4.T5.1.1.9.1.1.2.1" style="color:#000000;background-color:#E2F0D9;">, but it inaccurately references words not present in the tweet, such as "grateful" and "amazing experiences." This detracts from the accuracy of the response and could potentially confuse the user.</span> . . . . . .</span>
<span class="ltx_p" id="S4.T5.1.1.9.1.1.3">Assistant B 
<span class="ltx_text" id="S4.T5.1.1.9.1.1.3.1" style="color:#000000;background-color:#E2F0D9;">is concise and correctly classifies the tweet as positive. However, it lacks any explanation or reasoning, which limits its helpfulness and depth.</span> . . . . . .</span>
<span class="ltx_p" id="S4.T5.1.1.9.1.1.4">In comparing the two, 
<span class="ltx_text" id="S4.T5.1.1.9.1.1.4.1" style="color:#000000;background-color:#E2F0D9;">Given the importance of accuracy and explanation in sentiment analysis,</span> . . . . . .</span>
<span class="ltx_p" id="S4.T5.1.1.9.1.1.5">- Final Verdict: <span class="ltx_text" id="S4.T5.1.1.9.1.1.5.1" style="color:#00FF00;">[[B]]</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a case study comparing the evaluation results of a standard LLM-as-a-Judge approach and the proposed Crowd-based Comparative Evaluation (CCE) method.  The example shows two model responses to a sentiment analysis task. The table highlights how CCE, by incorporating additional crowd responses and judgments, leads to a more nuanced and accurate evaluation compared to the standard LLM-as-a-Judge approach, which may be susceptible to noise or bias in individual judgments.  Colors are used to distinguish between unreliable and helpful aspects of each evaluation.  Limongreen highlights elements of evaluation considered useful or well-reasoned, while orange denotes unreliable or noisy aspects.
> <details>
> <summary>read the caption</summary>
> Table 5: A pairwise comparison case evaluated by different methods. Preference refers to right result and Preference refers to wrong result. We emphasize the noisy evaluation elements in  orange, while highlighting the useful elements of the evaluation in  limongreen.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.5.5">
<tr class="ltx_tr" id="A2.T6.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.5.5.6.1"><span class="ltx_text ltx_font_bold" id="A2.T6.5.5.6.1.1">Benchmarks</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.6.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A2.T6.5.5.6.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.6.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A2.T6.5.5.6.3.1">Focus</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A2.T6.1.1.1.2.1">RewardBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.1.1"><math alttext="2,985" class="ltx_Math" display="inline" id="A2.T6.1.1.1.1.m1.2"><semantics id="A2.T6.1.1.1.1.m1.2a"><mrow id="A2.T6.1.1.1.1.m1.2.3.2" xref="A2.T6.1.1.1.1.m1.2.3.1.cmml"><mn id="A2.T6.1.1.1.1.m1.1.1" xref="A2.T6.1.1.1.1.m1.1.1.cmml">2</mn><mo id="A2.T6.1.1.1.1.m1.2.3.2.1" xref="A2.T6.1.1.1.1.m1.2.3.1.cmml">,</mo><mn id="A2.T6.1.1.1.1.m1.2.2" xref="A2.T6.1.1.1.1.m1.2.2.cmml">985</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.1.m1.2b"><list id="A2.T6.1.1.1.1.m1.2.3.1.cmml" xref="A2.T6.1.1.1.1.m1.2.3.2"><cn id="A2.T6.1.1.1.1.m1.1.1.cmml" type="integer" xref="A2.T6.1.1.1.1.m1.1.1">2</cn><cn id="A2.T6.1.1.1.1.m1.2.2.cmml" type="integer" xref="A2.T6.1.1.1.1.m1.2.2">985</cn></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.1.m1.2c">2,985</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.1.m1.2d">2 , 985</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.1.3">
<span class="ltx_text" id="A2.T6.1.1.1.3.1"></span> <span class="ltx_text" id="A2.T6.1.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.1.1.1.3.2.1">
<span class="ltx_tr" id="A2.T6.1.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.1.1.1.3.2.1.1.1">It covers multiple scenarios, including</span></span>
<span class="ltx_tr" id="A2.T6.1.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.1.1.1.3.2.1.2.1">Chat, Chat-Hard, Safety, and Reasoning.</span></span>
</span></span><span class="ltx_text" id="A2.T6.1.1.1.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.2.2.2.2"><span class="ltx_text ltx_font_italic" id="A2.T6.2.2.2.2.1">HelpSteeer2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.2.2.1"><math alttext="519" class="ltx_Math" display="inline" id="A2.T6.2.2.2.1.m1.1"><semantics id="A2.T6.2.2.2.1.m1.1a"><mn id="A2.T6.2.2.2.1.m1.1.1" xref="A2.T6.2.2.2.1.m1.1.1.cmml">519</mn><annotation-xml encoding="MathML-Content" id="A2.T6.2.2.2.1.m1.1b"><cn id="A2.T6.2.2.2.1.m1.1.1.cmml" type="integer" xref="A2.T6.2.2.2.1.m1.1.1">519</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.2.2.2.1.m1.1c">519</annotation><annotation encoding="application/x-llamapun" id="A2.T6.2.2.2.1.m1.1d">519</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.2.2.3">
<span class="ltx_text" id="A2.T6.2.2.2.3.1"></span> <span class="ltx_text" id="A2.T6.2.2.2.3.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.2.2.2.3.2.1">
<span class="ltx_tr" id="A2.T6.2.2.2.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.2.2.3.2.1.1.1">It provides multiple fine-grained dimensions</span></span>
<span class="ltx_tr" id="A2.T6.2.2.2.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.2.2.3.2.1.2.1">for evaluation, like Helpfulness, Coherence,</span></span>
<span class="ltx_tr" id="A2.T6.2.2.2.3.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.2.2.2.3.2.1.3.1">Correctness, Complexity, Verbosity.</span></span>
</span></span><span class="ltx_text" id="A2.T6.2.2.2.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.3.3.3.2"><span class="ltx_text ltx_font_italic" id="A2.T6.3.3.3.2.1">MTBench Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.3.3.1"><math alttext="2,665" class="ltx_Math" display="inline" id="A2.T6.3.3.3.1.m1.2"><semantics id="A2.T6.3.3.3.1.m1.2a"><mrow id="A2.T6.3.3.3.1.m1.2.3.2" xref="A2.T6.3.3.3.1.m1.2.3.1.cmml"><mn id="A2.T6.3.3.3.1.m1.1.1" xref="A2.T6.3.3.3.1.m1.1.1.cmml">2</mn><mo id="A2.T6.3.3.3.1.m1.2.3.2.1" xref="A2.T6.3.3.3.1.m1.2.3.1.cmml">,</mo><mn id="A2.T6.3.3.3.1.m1.2.2" xref="A2.T6.3.3.3.1.m1.2.2.cmml">665</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.3.3.3.1.m1.2b"><list id="A2.T6.3.3.3.1.m1.2.3.1.cmml" xref="A2.T6.3.3.3.1.m1.2.3.2"><cn id="A2.T6.3.3.3.1.m1.1.1.cmml" type="integer" xref="A2.T6.3.3.3.1.m1.1.1">2</cn><cn id="A2.T6.3.3.3.1.m1.2.2.cmml" type="integer" xref="A2.T6.3.3.3.1.m1.2.2">665</cn></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.3.3.1.m1.2c">2,665</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.3.3.1.m1.2d">2 , 665</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.3.3.3">
<span class="ltx_text" id="A2.T6.3.3.3.3.1"></span> <span class="ltx_text" id="A2.T6.3.3.3.3.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.3.3.3.3.2.1">
<span class="ltx_tr" id="A2.T6.3.3.3.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.3.3.3.3.2.1.1.1">It provides multi-turn conversation for evaluation,</span></span>
<span class="ltx_tr" id="A2.T6.3.3.3.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.3.3.3.3.2.1.2.1">and we filter the samples whose outcome is “Tie”.</span></span>
</span></span><span class="ltx_text" id="A2.T6.3.3.3.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.4.4.4.2"><span class="ltx_text ltx_font_italic" id="A2.T6.4.4.4.2.1">JudgeBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.4.4.4.1"><math alttext="350" class="ltx_Math" display="inline" id="A2.T6.4.4.4.1.m1.1"><semantics id="A2.T6.4.4.4.1.m1.1a"><mn id="A2.T6.4.4.4.1.m1.1.1" xref="A2.T6.4.4.4.1.m1.1.1.cmml">350</mn><annotation-xml encoding="MathML-Content" id="A2.T6.4.4.4.1.m1.1b"><cn id="A2.T6.4.4.4.1.m1.1.1.cmml" type="integer" xref="A2.T6.4.4.4.1.m1.1.1">350</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.4.4.1.m1.1c">350</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.4.4.1.m1.1d">350</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.4.4.4.3">
<span class="ltx_text" id="A2.T6.4.4.4.3.1"></span> <span class="ltx_text" id="A2.T6.4.4.4.3.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.4.4.4.3.2.1">
<span class="ltx_tr" id="A2.T6.4.4.4.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.4.4.4.3.2.1.1.1">It focuses on challenging response pairs spanning</span></span>
<span class="ltx_tr" id="A2.T6.4.4.4.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.4.4.4.3.2.1.2.1">knowledge, reasoning, math, and coding</span></span>
</span></span><span class="ltx_text" id="A2.T6.4.4.4.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T6.5.5.5.2"><span class="ltx_text ltx_font_italic" id="A2.T6.5.5.5.2.1">EvalBias</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.5.5.5.1"><math alttext="1,000" class="ltx_Math" display="inline" id="A2.T6.5.5.5.1.m1.2"><semantics id="A2.T6.5.5.5.1.m1.2a"><mrow id="A2.T6.5.5.5.1.m1.2.3.2" xref="A2.T6.5.5.5.1.m1.2.3.1.cmml"><mn id="A2.T6.5.5.5.1.m1.1.1" xref="A2.T6.5.5.5.1.m1.1.1.cmml">1</mn><mo id="A2.T6.5.5.5.1.m1.2.3.2.1" xref="A2.T6.5.5.5.1.m1.2.3.1.cmml">,</mo><mn id="A2.T6.5.5.5.1.m1.2.2" xref="A2.T6.5.5.5.1.m1.2.2.cmml">000</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.5.5.5.1.m1.2b"><list id="A2.T6.5.5.5.1.m1.2.3.1.cmml" xref="A2.T6.5.5.5.1.m1.2.3.2"><cn id="A2.T6.5.5.5.1.m1.1.1.cmml" type="integer" xref="A2.T6.5.5.5.1.m1.1.1">1</cn><cn id="A2.T6.5.5.5.1.m1.2.2.cmml" type="integer" xref="A2.T6.5.5.5.1.m1.2.2">000</cn></list></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.5.5.5.1.m1.2c">1,000</annotation><annotation encoding="application/x-llamapun" id="A2.T6.5.5.5.1.m1.2d">1 , 000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.5.5.5.3">
<span class="ltx_text" id="A2.T6.5.5.5.3.1"></span> <span class="ltx_text" id="A2.T6.5.5.5.3.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T6.5.5.5.3.2.1">
<span class="ltx_tr" id="A2.T6.5.5.5.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.5.5.5.3.2.1.1.1">It tests the robustness of judges on</span></span>
<span class="ltx_tr" id="A2.T6.5.5.5.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T6.5.5.5.3.2.1.2.1">various scenarios containing evaluation biases.</span></span>
</span></span><span class="ltx_text" id="A2.T6.5.5.5.3.3"></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the five preference benchmarks used to evaluate the LLM-as-a-Judge models.  For each benchmark, it provides the number of instances (size) and a brief description of its focus, highlighting the types of scenarios or aspects it evaluates.  These benchmarks encompass diverse evaluation scenarios, including chat, reasoning, and bias detection, to provide a comprehensive assessment of LLM-as-a-Judge performance.
> <details>
> <summary>read the caption</summary>
> Table 6: The brief description of Preference Benchmarks for testing.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12501/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12501/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}