---
title: "Fin-R1: A Large Language Model for Financial Reasoning through Reinforcement Learning"
summary: "Fin-R1: Financial reasoning via RL."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Finance", "🏢 Shanghai University of Finance and Economics",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16252 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhaowei Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16252" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16252" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16252/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reasoning LLMs face challenges like fragmented data & black-box logic in finance, limiting real-world use. There is a need for a language model tailored for financial reasoning to address financial data, uncontrollable reasoning logic, and weak business generalization ability.



This paper introduces a financial LLM. It uses a two-stage framework: high-quality financial reasoning dataset construction and training via SFT & RL. The model demonstrates strong reasoning and decision-making for areas like compliance & robo-advisory for solving financial industry challenges.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Fin-R1 excels in financial reasoning benchmarks, outperforming larger models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The two-stage SFT and RL framework enhances financial reasoning ability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The paper introduces Fin-R1-Data, a high-quality financial reasoning dataset. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is vital for AI finance researchers. It introduces Fin-R1, which tackles key financial data challenges & offers a path to more accurate, interpretable financial AI. Its RL-driven approach and impressive benchmark results open new research avenues.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16252/extracted/6294171/Fin-R1-pipeline.png)

> 🔼 This figure illustrates the two-stage process of creating the Fin-R1 model. Stage 1 focuses on data generation, where DeepSeek-R1 is used to produce Chain-of-Thought (CoT) data, followed by a quality filtering step using Qwen2.5-72B-Instruct. Stage 2 involves model training.  First, Supervised Fine-Tuning (SFT) is performed on a base model, followed by optimization using the Group Relative Policy Optimization (GRPO) algorithm. The final Fin-R1 model is then evaluated across various tasks including financial code generation, professional knowledge questions and business knowledge questions, showcasing its capabilities in different financial applications. 
> <details>
> <summary>read the caption</summary>
> Figure 1: The pipeline for constructing Fin-R1. The diagram depicts the two-stage construction framework of Fin-R1: Data Generation (using DeepSeek-R1 for reasoning to generate CoT data, followed by quality filtering with the Qwen2.5-72B-Instruct) and Model Training (including SFT pretraining and GRPO optimization for Fin-R1). Additionally, the right side highlights the performance of Fin-R1 in financial code generation, professional knowledge, and business knowledge.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.4">
<tr class="ltx_tr" id="S2.T1.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.4.1.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.1.1.1">
<span class="ltx_p" id="S2.T1.4.1.1.1.1" style="width:96.7pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.1.1.1.1">Data Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S2.T1.4.1.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.1.2.1">
<span class="ltx_p" id="S2.T1.4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.2.1.1.1">Data Category Description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.4.1.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.1.3.1">
<span class="ltx_p" id="S2.T1.4.1.3.1.1" style="width:79.7pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.3.1.1.1">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.4.1.4" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.1.4.1">
<span class="ltx_p" id="S2.T1.4.1.4.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.1.4.1.1.1">Proportion</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.2.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.2.1.1">
<span class="ltx_p" id="S2.T1.4.2.1.1.1" style="width:96.7pt;">Financial Code</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.4.2.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.2.2.1">
<span class="ltx_p" id="S2.T1.4.2.2.1.1">Financial Quantitative Strategy Code Generation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.2.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.2.3.1">
<span class="ltx_p" id="S2.T1.4.2.3.1.1" style="width:79.7pt;">FinanceQT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.2.4" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.2.4.1">
<span class="ltx_p" id="S2.T1.4.2.4.1.1" style="width:37.0pt;">0.2%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.3.1" rowspan="3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.3.1.1">
<span class="ltx_p" id="S2.T1.4.3.1.1.1" style="width:96.7pt;"><span class="ltx_text" id="S2.T1.4.3.1.1.1.1">Financial Expertise</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.4.3.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.3.2.1">
<span class="ltx_p" id="S2.T1.4.3.2.1.1"><span class="ltx_text" id="S2.T1.4.3.2.1.1.1"></span><span class="ltx_text" id="S2.T1.4.3.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.4.3.2.1.1.2.1">
<span class="ltx_tr" id="S2.T1.4.3.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.3.2.1.1.2.1.1.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Financial Terminology</span></span>
<span class="ltx_tr" id="S2.T1.4.3.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.3.2.1.1.2.1.2.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Explanation, Q&amp;A on Financial</span></span>
<span class="ltx_tr" id="S2.T1.4.3.2.1.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.3.2.1.1.2.1.3.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Expertise, Financial Calculations</span></span>
</span></span> <span class="ltx_text" id="S2.T1.4.3.2.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.3.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.3.3.1">
<span class="ltx_p" id="S2.T1.4.3.3.1.1" style="width:79.7pt;">Finance-Instruct-500K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.3.4" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.3.4.1">
<span class="ltx_p" id="S2.T1.4.3.4.1.1" style="width:37.0pt;">18.2%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4">
<td class="ltx_td ltx_align_justify" id="S2.T1.4.4.1" style="padding-top:5.5pt;padding-bottom:5.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.4.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.4.2.1">
<span class="ltx_p" id="S2.T1.4.4.2.1.1" style="width:79.7pt;">FinanceIQ</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.4.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.4.3.1">
<span class="ltx_p" id="S2.T1.4.4.3.1.1" style="width:37.0pt;">3.4%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.5">
<td class="ltx_td ltx_align_justify" id="S2.T1.4.5.1" style="padding-top:5.5pt;padding-bottom:5.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.5.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.5.2.1">
<span class="ltx_p" id="S2.T1.4.5.2.1.1" style="width:79.7pt;">FinPEE</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.5.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.5.3.1">
<span class="ltx_p" id="S2.T1.4.5.3.1.1" style="width:37.0pt;">0.3%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.6.1" rowspan="2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.6.1.1">
<span class="ltx_p" id="S2.T1.4.6.1.1.1" style="width:96.7pt;"><span class="ltx_text" id="S2.T1.4.6.1.1.1.1"><span class="ltx_text" id="S2.T1.4.6.1.1.1.1.1"></span><span class="ltx_text" id="S2.T1.4.6.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.4.6.1.1.1.1.2.1">
<span class="ltx_tr" id="S2.T1.4.6.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.6.1.1.1.1.2.1.1.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Non-reasoning Financial</span></span>
<span class="ltx_tr" id="S2.T1.4.6.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.6.1.1.1.1.2.1.2.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Business Knowledge</span></span>
</span></span> <span class="ltx_text" id="S2.T1.4.6.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.4.6.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.6.2.1">
<span class="ltx_p" id="S2.T1.4.6.2.1.1"><span class="ltx_text" id="S2.T1.4.6.2.1.1.1"></span><span class="ltx_text" id="S2.T1.4.6.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.4.6.2.1.1.2.1">
<span class="ltx_tr" id="S2.T1.4.6.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.6.2.1.1.2.1.1.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Content Generation in Financial</span></span>
<span class="ltx_tr" id="S2.T1.4.6.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.6.2.1.1.2.1.2.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Business, Regulatory Compliance,</span></span>
<span class="ltx_tr" id="S2.T1.4.6.2.1.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.6.2.1.1.2.1.3.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Financial Knowledge, Financial</span></span>
<span class="ltx_tr" id="S2.T1.4.6.2.1.1.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.6.2.1.1.2.1.4.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Cognition, Financial Logic</span></span>
</span></span> <span class="ltx_text" id="S2.T1.4.6.2.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.6.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.6.3.1">
<span class="ltx_p" id="S2.T1.4.6.3.1.1" style="width:79.7pt;">Ant-Finance</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.6.4" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.6.4.1">
<span class="ltx_p" id="S2.T1.4.6.4.1.1" style="width:37.0pt;">2.0%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.7">
<td class="ltx_td ltx_align_justify" id="S2.T1.4.7.1" style="padding-top:5.5pt;padding-bottom:5.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.7.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.7.2.1">
<span class="ltx_p" id="S2.T1.4.7.2.1.1" style="width:79.7pt;">FinCorpus</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.7.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.7.3.1">
<span class="ltx_p" id="S2.T1.4.7.3.1.1" style="width:37.0pt;">48.4%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.4.8.1" rowspan="4" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.8.1.1">
<span class="ltx_p" id="S2.T1.4.8.1.1.1" style="width:96.7pt;"><span class="ltx_text" id="S2.T1.4.8.1.1.1.1"><span class="ltx_text" id="S2.T1.4.8.1.1.1.1.1"></span><span class="ltx_text" id="S2.T1.4.8.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.4.8.1.1.1.1.2.1">
<span class="ltx_tr" id="S2.T1.4.8.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.8.1.1.1.1.2.1.1.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Financial Reasoning</span></span>
<span class="ltx_tr" id="S2.T1.4.8.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.8.1.1.1.1.2.1.2.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Business Knowledge</span></span>
</span></span> <span class="ltx_text" id="S2.T1.4.8.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.4.8.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.8.2.1">
<span class="ltx_p" id="S2.T1.4.8.2.1.1"><span class="ltx_text" id="S2.T1.4.8.2.1.1.1"></span><span class="ltx_text" id="S2.T1.4.8.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.4.8.2.1.1.2.1">
<span class="ltx_tr" id="S2.T1.4.8.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.8.2.1.1.2.1.1.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Numerical Reasoning on Financial</span></span>
<span class="ltx_tr" id="S2.T1.4.8.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.8.2.1.1.2.1.2.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Data, Financial News Sentiment</span></span>
<span class="ltx_tr" id="S2.T1.4.8.2.1.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.8.2.1.1.2.1.3.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Classification, Financial News</span></span>
<span class="ltx_tr" id="S2.T1.4.8.2.1.1.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.8.2.1.1.2.1.4.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Classification, Financial Causal</span></span>
<span class="ltx_tr" id="S2.T1.4.8.2.1.1.2.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.4.8.2.1.1.2.1.5.1" style="padding-top:5.5pt;padding-bottom:5.5pt;">Relationship Extraction</span></span>
</span></span> <span class="ltx_text" id="S2.T1.4.8.2.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.8.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.8.3.1">
<span class="ltx_p" id="S2.T1.4.8.3.1.1" style="width:79.7pt;">FinQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.8.4" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.8.4.1">
<span class="ltx_p" id="S2.T1.4.8.4.1.1" style="width:37.0pt;">4.8%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.9">
<td class="ltx_td ltx_align_justify" id="S2.T1.4.9.1" style="padding-top:5.5pt;padding-bottom:5.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.9.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.9.2.1">
<span class="ltx_p" id="S2.T1.4.9.2.1.1" style="width:79.7pt;">ConvFinQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.9.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.9.3.1">
<span class="ltx_p" id="S2.T1.4.9.3.1.1" style="width:37.0pt;">12.3%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.10">
<td class="ltx_td ltx_align_justify" id="S2.T1.4.10.1" style="padding-top:5.5pt;padding-bottom:5.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.10.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.10.2.1">
<span class="ltx_p" id="S2.T1.4.10.2.1.1" style="width:79.7pt;">TFNS</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.4.10.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.10.3.1">
<span class="ltx_p" id="S2.T1.4.10.3.1.1" style="width:37.0pt;">4.0%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.11">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S2.T1.4.11.1" style="padding-top:5.5pt;padding-bottom:5.5pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S2.T1.4.11.2" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.11.2.1">
<span class="ltx_p" id="S2.T1.4.11.2.1.1" style="width:79.7pt;">FinCUGE</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S2.T1.4.11.3" style="padding-top:5.5pt;padding-bottom:5.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.11.3.1">
<span class="ltx_p" id="S2.T1.4.11.3.1.1" style="width:37.0pt;">6.4%</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the composition of the Fin-R1-Data dataset, breaking down the data by category (Financial Code, Financial Expertise, Non-reasoning Financial Business Knowledge, Financial Reasoning Business Knowledge) and indicating the source and proportion of each category within the dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Categories and Sources of Fin-R1-Data
> </details>





### In-depth insights


#### Fin-R1: Overview
While the document doesn't have a specific 'Fin-R1: Overview' section, it introduces Fin-R1, a **large language model tailored for financial reasoning**. It underscores the limitations of general-purpose LLMs in handling financial complexities, highlighting **issues like data fragmentation, opaque reasoning processes hindering traceability for regulatory compliance, and inadequate generalization across diverse financial scenarios**. The model is designed to tackle core challenges in financial AI applications. Fin-R1 uses a new high-quality financial reasoning dataset and has a **two-stage training framework using supervised fine-tuning and reinforcement learning** to enhance the model's performance.

#### RL for Reasoning
**Reinforcement Learning (RL)** presents a compelling approach to enhance reasoning capabilities in language models, particularly for tasks requiring sequential decision-making or complex problem-solving. Unlike supervised learning, RL allows the model to learn through **trial and error**, optimizing for a specific reward signal that reflects the desired reasoning outcome. This is particularly valuable when explicit reasoning paths are unknown or difficult to define. The **exploration-exploitation** paradigm inherent in RL enables models to discover novel and potentially more effective reasoning strategies. RL-based training can also improve a model's **robustness** to noisy or incomplete information by encouraging it to adapt its reasoning process based on feedback from the environment. However, designing effective reward functions and ensuring sample efficiency remain key challenges in applying RL to reasoning tasks. Further research could explore hybrid approaches combining RL with supervised pre-training to leverage the strengths of both paradigms and enable more sophisticated reasoning capabilities.

#### Fin-R1-Data Details
The paper introduces Fin-R1-Data, a **high-quality dataset** crucial for training the Fin-R1 financial reasoning model. Constructed from diverse sources like Ant Finance and FinPEE, it encompasses reasoning and non-reasoning financial scenarios. The authors employed DeepSeek-R1 for CoT generation, followed by rigorous filtering using Qwen2.5-72B-Instruct for quality assessment. This meticulous process ensures **data accuracy, logical coherence, and relevance** to financial tasks. Fin-R1-Data covers various domains, including **professional knowledge, business scenarios, and even financial code**, reflecting its comprehensive design. The dataset's creation addresses the challenges of fragmented financial data and the need for verifiable decision-making in AI applications, enhancing Fin-R1's performance in complex financial reasoning.

#### GRPO Algorithm
The Group Relative Policy Optimization (**GRPO**) algorithm leverages reinforcement learning to improve model output by comparing candidate outputs and prioritizing those exceeding group averages. During each training iteration, various outputs are sampled, each receiving a reward. **A group-relative advantage is calculated by normalizing rewards relative to the group's mean and standard deviation**, emphasizing superior performers. The policy update maximizes an objective function, incorporating an importance sampling ratio quantifying the likelihood of generating an output under the new versus old policy. **A clipping operator restricts update magnitudes to maintain training stability**, while Kullback-Leibler divergence penalizes deviations from a reference policy.

#### Limited Fin Data
The research acknowledges limitations stemming from **constrained training data**, specifically confined to ConvFinQA and FinQA datasets. This **narrow scope** impacts the model's generalization capability across diverse financial scenarios. Future work aims to **expand training datasets** for improved robustness. Acknowledging these data-related constraints is vital for assessing the model's applicability and guiding future research to address these limitations and **enhance real-world effectiveness**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16252/extracted/6294171/data_construct.png)

> 🔼 Figure 2 illustrates the three-stage data construction pipeline for Fin-R1-Data.  First, data distillation uses DeepSeek-R1 to generate a large dataset of question-answer pairs, along with reasoning traces. Second, answer check filters this data using an LLM (Qwen2.5-72B-Instruct) to verify the accuracy of DeepSeek-R1's answers, discarding inaccurate entries. Finally, reasoning selection employs another LLM to evaluate the quality and logical coherence of the reasoning traces, retaining only the highest-quality entries. The 'Reasoning' and 'Thinking' labels in the diagram represent the reasoning trace generated by the model and the LLM's evaluation of that trace, respectively.
> <details>
> <summary>read the caption</summary>
> Figure 2: Stage 1-The pipeline of data construction: (1) Data Distillation, (2) Answer Check, where an LLM evaluates the accuracy of responses generated by DeepSeek-R1, and (3) Reasoning Selection, where an LLM assesses and scores reasoning trajectories to ensure logical coherence and quality. 'Reasoning' represents the reasoning output, while 'Thinking' refers to the evaluation process of the judgment model.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/Data_distribution.jpg)

> 🔼 The figure illustrates the composition of the Fin-R1-Data dataset, which is divided into four main categories: Financial Code, Financial Professional Knowledge, Financial Reasoning Knowledge, and Financial Non-Reasoning Knowledge.  Each category contains various sub-categories of financial data used to train the Fin-R1 model. This breakdown shows the diverse types of financial information incorporated into the training data, encompassing both code and textual data across different levels of professional expertise and reasoning demands.  The proportions of each category within the dataset are not explicitly shown in the figure but are discussed within the paper. 
> <details>
> <summary>read the caption</summary>
> Figure 3: Composition structure of Fin-R1-Data: (1) Financial Code, (2) Financial Professional Knowledge, (3) Financial Reasoning Knowledge, and (4) Financial Non-Reasoning Knowledge.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/data_case.png)

> 🔼 This figure showcases examples of high-quality versus low-quality reasoning processes.  The examples illustrate the filtering mechanism used to curate the Fin-R1-Data dataset.  High-quality reasoning is characterized by clear, concise, and logical steps, while low-quality reasoning shows inconsistency, redundancy, or illogical jumps in the thought process. The differences highlight the criteria used to select only high-quality reasoning examples for training the Fin-R1 model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Examples of high-quality and low-quality reasoning selections filtering
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/Fin-R1-GRPO.png)

> 🔼 This figure illustrates the two-stage training process for the Fin-R1 model.  Stage 1 involves supervised fine-tuning (SFT) using a structured dataset to improve the model's financial reasoning capabilities. The input to the SFT phase is a question (x) and the output is both a chain of thought reasoning process (c) and the answer (y*). Stage 2 utilizes reinforcement learning with the Group Relative Policy Optimization (GRPO) algorithm.  Here the input is only a question (x) and the output is just the answer (y*). GRPO employs a group computation mechanism to provide two reward signals: one for ensuring the response adheres to the correct format, and another for evaluating the accuracy of the answer itself.  This two-stage approach aims to enhance both the reasoning quality and the formatting consistency of the model's outputs.
> <details>
> <summary>read the caption</summary>
> Figure 5: Stage 2-The pipeline of training construction. During the SFT phase, the base model undergoes SFT using a structured reasoning-augmented dataset, focusing on enhancing its ability to perform financial reasoning. During the RL phase, we apply GRPO algorithm, which introduces a group computation mechanism to provide two reward signals—one for format correctness and one for content accuracy.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/decimal.png)

> 🔼 The figure shows an example of a discrepancy between model output and ground truth due to a difference in the number of decimal places.  The ground truth shows 13.1%, while the model answer shows 13.12%. This highlights a challenge in evaluating model accuracy when dealing with numerical results where minor variations might be considered acceptable depending on the application context. This difference is considered a minor error.
> <details>
> <summary>read the caption</summary>
> (a) Difference in decimal places.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/unit.png)

> 🔼 The figure illustrates an example where the model's response differs from the ground truth due to variations in expression rather than numerical values.  The ground truth provides a numerical value while the model response gives an equivalent value expressed differently. For instance, the ground truth might be '46184055450.1', while the model provides '$46.18 billion', representing the same quantity but in a different format. This highlights a challenge in evaluating model accuracy when different but equivalent representations of information are involved.
> <details>
> <summary>read the caption</summary>
> (b) Difference in expression.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/data_distill_prompt.png)

> 🔼 Figure 6 demonstrates discrepancies between model-generated outputs and ground truth values in numerical responses.  Panel (a) shows a mismatch in the number of decimal places, while panel (b) illustrates a difference in how the numerical value is expressed (e.g., percentage vs. decimal).  These discrepancies highlight challenges in evaluating the accuracy of numerical answers produced by LLMs in financial contexts, as different formats expressing the same numerical quantity may be classified as incorrect.
> <details>
> <summary>read the caption</summary>
> Figure 6: The difference between the model output and the ground truth is shown. Figure 6 illustrates the difference in decimal placement, while Figure 6 shows the difference in expression.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/reasoning_selection_prompt.png)

> 🔼 This figure shows the prompt used in the data distillation phase of Fin-R1's development.  The prompt instructs the model to analyze the provided input based on a given task description and instruction, generating an output that meets the requirements. Specific instructions emphasize the importance of reasoning according to task instructions, enclosing the final answer within a \boxed{} format for easy extraction, and adding a newline character ('\n') at the beginning of each output to maintain consistency. The goal of this prompt is to generate high-quality chain-of-thought (CoT) reasoning sequences for training the financial reasoning model.
> <details>
> <summary>read the caption</summary>
> Figure 7: The prompt of data distillation that we used
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/QwenHuman.png)

> 🔼 This figure shows the prompt used for the reasoning selection stage in the data construction process.  The prompt provides a detailed rubric for evaluating the quality of the reasoning process generated by a language model.  This rubric includes seven key criteria, each scored individually (0 or 1), to provide a holistic assessment.  The criteria assess factors such as internal consistency, term overlap with the standard answer, number of reasoning steps, logical consistency, content diversity, relevance to the task domain, and alignment with task instructions. The prompt also provides clear instructions on how to format the response (using boxed{ } for easy extraction using regex) and a clear example of how the evaluation should be performed.
> <details>
> <summary>read the caption</summary>
> Figure 8: The Prompt for reasoning selection
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/GPT4oHuman.png)

> 🔼 Heatmap visualizing the correlation between the reasoning scores assigned by the Qwen2.5-72B-Instruct language model and human evaluators. Each cell in the heatmap represents the correlation between the scores given by one human evaluator and the model for a particular data point. The intensity of the color in the cell indicates the strength of the correlation, ranging from strong positive correlation (dark red) to strong negative correlation (dark blue). This visual representation helps assess the degree of agreement between human and model evaluations, providing insights into the model's ability to effectively capture the nuances of financial reasoning processes.
> <details>
> <summary>read the caption</summary>
> (a) Qwen2.5-72B-Instruct vs. Human
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/judge1.png)

> 🔼 This heatmap visualizes the correlation between GPT-4's reasoning scores and human scores for the same set of financial reasoning tasks. Each cell represents the correlation coefficient between the scores assigned by GPT-4 and a human evaluator for a specific task. A darker cell indicates a stronger positive correlation (higher agreement), while a lighter cell indicates a weaker or negative correlation (less agreement). This figure helps to assess the alignment and discrepancies between GPT-4's evaluation of reasoning quality and human judgment.
> <details>
> <summary>read the caption</summary>
> (b) GPT-4o vs. Human
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/judge2.png)

> 🔼 This figure visualizes the correlation between the reasoning scores assigned by two large language models (LLMs), Qwen-2.5-72B-Instruct and GPT-4, and human annotators.  Two heatmaps are presented. Each heatmap shows the correlation between one LLM's scores and human scores for a set of reasoning tasks. The heatmaps allow for a visual comparison of how well each LLM's assessment aligns with human judgment on reasoning quality.
> <details>
> <summary>read the caption</summary>
> Figure 9: Heatmap comparison of reasoning scores between LLMs and human annotators. Figure 9 and 9 represent the correlation between the scores of Qwen2.5-72B-Instruct and GPT-4o with human scores.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/judge3.png)

> 🔼 This figure shows the prompt used for evaluating the quality of model-generated answers.  The prompt instructs the evaluator (an LLM) to compare a model's answer to a ground truth answer and assign a score of 1 if they match in meaning and 0 otherwise.  The instructions include specific criteria for handling numerical answers with different formats or minor rounding differences. The goal is to objectively assess whether the model's answer is semantically equivalent to the reference answer.
> <details>
> <summary>read the caption</summary>
> Figure 10: The prompt for judging the model answer that we used.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/judge4.png)

> 🔼 This figure shows the prompt used in the answer checking phase during data filtering.  The prompt instructs the evaluator (an LLM) to compare a ground truth answer with a model-generated answer. It provides specific rules for determining if the answers are consistent, considering scenarios with numerical values where the format may differ but the meaning remains the same (e.g., 0.98 vs. 98%). The prompt emphasizes that the final output should be either 1 (consistent) or 0 (inconsistent), clearly formatted within \boxed{} tags for easy extraction.
> <details>
> <summary>read the caption</summary>
> Figure 11: The prompt for judging the model answer that the content comes at the end.
> </details>



![](https://arxiv.org/html/2503.16252/extracted/6294171/judge5.png)

> 🔼 This figure displays the prompt used for evaluating the model's answers.  The prompt instructs the evaluator to determine if the model's answer has the same meaning as the ground truth, considering numerical values and rounding. It emphasizes that even if the format differs, but the numerical values are the same (e.g., 0.98 vs. 98%), or if the model answer is consistent with the ground truth after rounding (e.g., 2 vs. 1.98), the answers are considered consistent. The prompt provides clear instructions and examples to ensure consistent evaluation of model answers.
> <details>
> <summary>read the caption</summary>
> Figure 12: The prompt for judging the model answer which is combined with the question.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.4.1">
<tr class="ltx_tr" id="S3.T2.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.4.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.1.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.2.1" style="font-size:144%;">Parameters</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.3.1" style="font-size:144%;">FinQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.4.1" style="font-size:144%;">ConvFinQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.5.1" style="font-size:144%;">Ant_Finance</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.6.1" style="font-size:144%;">TFNS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.7.1" style="font-size:144%;">Finance-Instruct-500K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.8.1" style="font-size:144%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.4.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.2.1.1" style="font-size:144%;">DeepSeek-R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.2.2.1" style="font-size:144%;">671B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.2.3.1" style="font-size:144%;">71.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.2.4.1" style="font-size:144%;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.5.1" style="font-size:144%;">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.2.6.1" style="font-size:144%;">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.7.1" style="font-size:144%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.2.8.1" style="font-size:144%;">78.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.3">
<td class="ltx_td ltx_align_left" id="S3.T2.4.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.3.1.1" style="font-size:144%;">Qwen-2.5-32B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.3.2.1" style="font-size:144%;">32B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.3.3.1" style="font-size:144%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.3.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.3.4.1" style="font-size:144%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.3.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.3.5.1" style="font-size:144%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.3.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.3.6.1" style="font-size:144%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.3.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.3.7.1" style="font-size:144%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.3.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.3.8.1" style="font-size:144%;">73.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.4.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.4.1.1" style="font-size:144%;">DeepSeek-R1-Distill-Qwen-32B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.4.2.1" style="font-size:144%;">32B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.4.3.1" style="font-size:144%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.4.4.1" style="font-size:144%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.4.5.1" style="font-size:144%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.4.6.1" style="font-size:144%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.4.7.1" style="font-size:144%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.4.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.4.8.1" style="font-size:144%;">72.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.5">
<td class="ltx_td ltx_align_left" id="S3.T2.4.1.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.5.1.1" style="font-size:144%;">Fin-R1-SFT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.5.2.1" style="font-size:144%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.5.3.1" style="font-size:144%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.5.4.1" style="font-size:144%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.5.5.1" style="font-size:144%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.5.6.1" style="font-size:144%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.5.7.1" style="font-size:144%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.5.8.1" style="font-size:144%;">71.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.6">
<td class="ltx_td ltx_align_left" id="S3.T2.4.1.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.6.1.1" style="font-size:144%;">Qwen-2.5-14B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.6.2.1" style="font-size:144%;">14B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.6.3.1" style="font-size:144%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.6.4.1" style="font-size:144%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.6.5.1" style="font-size:144%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.6.6.1" style="font-size:144%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.6.7.1" style="font-size:144%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.6.8.1" style="font-size:144%;">71.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.7">
<td class="ltx_td ltx_align_left" id="S3.T2.4.1.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.7.1.1" style="font-size:144%;">DeepSeek-R1-Distill-Llama-70B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.7.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.7.2.1" style="font-size:144%;">70B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.7.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.7.3.1" style="font-size:144%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.7.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.7.4.1" style="font-size:144%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.7.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.7.5.1" style="font-size:144%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.7.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.7.6.1" style="font-size:144%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.7.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.7.7.1" style="font-size:144%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.7.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.7.8.1" style="font-size:144%;">69.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.8">
<td class="ltx_td ltx_align_left" id="S3.T2.4.1.8.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.8.1.1" style="font-size:144%;">DeepSeek-R1-Distill-Qwen-14B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.8.2.1" style="font-size:144%;">14B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.8.3.1" style="font-size:144%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.8.4.1" style="font-size:144%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.8.5.1" style="font-size:144%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.8.6.1" style="font-size:144%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.8.7.1" style="font-size:144%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.8.8.1" style="font-size:144%;">66.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.9">
<td class="ltx_td ltx_align_left" id="S3.T2.4.1.9.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.9.1.1" style="font-size:144%;">Qwen-2.5-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.9.2.1" style="font-size:144%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.9.3.1" style="font-size:144%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.9.4.1" style="font-size:144%;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.9.5.1" style="font-size:144%;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.9.6.1" style="font-size:144%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.9.7.1" style="font-size:144%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.9.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.9.8.1" style="font-size:144%;">65.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.10">
<td class="ltx_td ltx_align_left" id="S3.T2.4.1.10.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.10.1.1" style="font-size:144%;">DeepSeek-R1-Distill-Qwen-7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.10.2.1" style="font-size:144%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.10.3.1" style="font-size:144%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.10.4.1" style="font-size:144%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.10.5.1" style="font-size:144%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.10.6.1" style="font-size:144%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.10.7.1" style="font-size:144%;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.10.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.10.8.1" style="font-size:144%;">58.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T2.4.1.11.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.11.1.1" style="font-size:144%;">Fin-R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.1.11.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.11.2.1" style="font-size:144%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.1.11.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.11.3.1" style="font-size:144%;">76.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.1.11.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.11.4.1" style="font-size:144%;">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.1.11.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.11.5.1" style="font-size:144%;">81.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.1.11.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.11.6.1" style="font-size:144%;">71.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.1.11.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.11.7.1" style="font-size:144%;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.1.11.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S3.T2.4.1.11.8.1" style="font-size:144%;">75.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Fin-R1's performance against various baseline models across five different financial benchmarks: FinQA, ConvFinQA, Ant-Finance, TFNS, and Finance-Instruct-500k.  For each benchmark, the table shows the average score achieved by each model, along with the number of parameters used by each model. This allows for a comparison of performance relative to model size and architecture.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation results in different financial benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T3.2">
<tr class="ltx_tr" id="A1.T3.2.1">
<td class="ltx_td ltx_border_t" id="A1.T3.2.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T3.2.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.2.1">Inaccuracy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T3.2.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.3.1">Irregularity</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.2">
<td class="ltx_td ltx_align_left" id="A1.T3.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T3.2.2.1.1">Format</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.2">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.3">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.4">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.2.5">Qwen2.5-72B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.2.3.1">OF</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.3.2">2.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.3.3">0.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.3.4">0.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.2.3.5">0.0%</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.4">
<td class="ltx_td ltx_align_left" id="A1.T3.2.4.1">CIE</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.2">2.0%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.3">2.0%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.4">0.0%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.4.5">0.0%</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.5">
<td class="ltx_td ltx_align_left" id="A1.T3.2.5.1">WQ</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.2">6.0%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.3">8.0%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.4">3.6%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.5">3.2%</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.6">
<td class="ltx_td ltx_align_left" id="A1.T3.2.6.1">CIE-WQ</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.2">4.8%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.3">9.6%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.4">1.6%</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.5">3.2%</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.7">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T3.2.7.1">ZH</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.2.7.2">5.2%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.2.7.3">1.6%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.2.7.4">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T3.2.7.5">0.0%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of GPT-4 and Qwen-2.5-72B-Instruct models in judging the accuracy of answers using five different prompt formats: the original format (OF), content at the end (CIE), original question included (WQ), original question and content at the end (CIE-WQ), and Chinese language (ZH).  The comparison focuses on two metrics: classification inaccuracy (the percentage of incorrect judgments) and format irregularity (how often the model's output doesn't follow the 0/1 format).  The results illustrate how different prompt structures affect model performance in answer evaluation tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of GPT-4o and Qwen2.5-72B-Instruct on answer judgment inaccuracy and irregularity across different prompt formats.The specific prompt formats include our used format as OF, the format where the content to be judged is at the end as CIE, the format with the original question passed in as WQ, the format with the original question passed in and the question-and-answer content placed at the end as CIE-WQ and the Chinese format as ZH.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16252/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16252/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}