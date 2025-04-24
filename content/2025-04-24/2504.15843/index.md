---
title: "Pre-DPO: Improving Data Utilization in Direct Preference Optimization Using a Guiding Reference Model"
summary: "Pre-DPO improves data use in Direct Preference Optimization for Large Language Models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15843 {{< /keyword >}}
{{< keyword icon="writer" >}} Junshu Pan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15843" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15843" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15843/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Direct Preference Optimization (DPO)** streamlines reinforcement learning from human feedback for LLMs by optimizing human preferences directly, without needing an explicit reward model. However, initializing policy and reference models identically in DPO leads to inefficient data use and a performance ceiling. Also, Simple Preference Optimization (SimPO) lacks a reference model which reduces robustness and needs stricter conditions to avoid catastrophic forgetting. All of these issues affect the performances of LLMs. 



In response to the challenges, this paper proposes **Pre-DPO**. It enhances preference optimization by using a guiding reference model. This model provides foresight into optimal policy states achievable with preference data, adaptively weighting samples. Experiments on AlpacaEval 2.0 and Arena-Hard v0.1 show Pre-DPO consistently improves DPO and SimPO performance, without external models or extra data. The experiments shows that Pre-DPO is more effective.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Pre-DPO improves the performance of both DPO and SimPO in LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A guiding reference model enhances data utilization by adaptively weighting samples. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Pre-DPO does not rely on external models or additional data, increasing its flexibility and ease of deployment. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Pre-DPO, enhancing data utilization in preference optimization for LLMs without extra data or models. It improves existing methods and offers a flexible, deployable solution.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15843/x1.png)

> 🔼 This figure displays the results of experiments comparing the performance of three preference optimization methods: Direct Preference Optimization (DPO), Simple Preference Optimization (SimPO), and the proposed Pre-DPO method.  The x-axis represents different language models (Llama-3.2 and Qwen-2.5, both with base and instruct versions) varying in size and training data. The y-axis represents the win rate percentage on two benchmark datasets, AlpacaEval 2.0 and Arena-Hard v0.1.  The bars show that Pre-DPO consistently outperforms both DPO and SimPO across all models and scales, demonstrating that leveraging a guiding reference model significantly improves performance in preference optimization.
> <details>
> <summary>read the caption</summary>
> Figure 1: Pre-DPO further enhances the performance of DPO and SimPO by leveraging a guiding reference model, consistently across different models and scales.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.1.1.1.1" rowspan="3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.1.1.1.2" rowspan="3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.2.1">Ref.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T1.1.1.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.3.1">Llama3.2-3B-Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T1.1.1.1.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.4.1">Llama3.2-3B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T1.1.2.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.2.2.1.1">AlpacaEval 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.2.2.2.1">Arena-Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T1.1.2.2.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.2.2.3.1">AlpacaEval 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.2.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.2.2.4.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.3.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.1.1">LC (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.3.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.2.1">WR (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.3.1">Len.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.3.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.4.1">WR (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.3.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.5.1">LC (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.3.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.6.1">WR (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.3.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.7.1">Len.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.3.3.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.8.1">WR (%)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.4.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">SFT</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.4.4.2" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.4.3" style="padding-left:2.8pt;padding-right:2.8pt;">6.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.4.4" style="padding-left:2.8pt;padding-right:2.8pt;">4.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.4.5" style="padding-left:2.8pt;padding-right:2.8pt;">1012</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.4.6" style="padding-left:2.8pt;padding-right:2.8pt;">2.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.4.7" style="padding-left:2.8pt;padding-right:2.8pt;">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.4.8" style="padding-left:2.8pt;padding-right:2.8pt;">18.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.4.9" style="padding-left:2.8pt;padding-right:2.8pt;">1956</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.4.10" style="padding-left:2.8pt;padding-right:2.8pt;">18.5</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.5.5.1" style="padding-left:2.8pt;padding-right:2.8pt;">DPO</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.5.5.2" style="padding-left:2.8pt;padding-right:2.8pt;">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.5.3" style="padding-left:2.8pt;padding-right:2.8pt;">10.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.5.4" style="padding-left:2.8pt;padding-right:2.8pt;">12.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.5.5" style="padding-left:2.8pt;padding-right:2.8pt;">2042</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.5.6" style="padding-left:2.8pt;padding-right:2.8pt;">10.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.5.7" style="padding-left:2.8pt;padding-right:2.8pt;">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.5.8" style="padding-left:2.8pt;padding-right:2.8pt;">36.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.5.9" style="padding-left:2.8pt;padding-right:2.8pt;">2026</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.5.10" style="padding-left:2.8pt;padding-right:2.8pt;">30.6</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.6.6">
<td class="ltx_td ltx_align_left" id="S5.T1.1.6.6.1" style="padding-left:2.8pt;padding-right:2.8pt;">SimPO</td>
<td class="ltx_td ltx_align_left" id="S5.T1.1.6.6.2" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.6.3" style="padding-left:2.8pt;padding-right:2.8pt;">13.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.6.4" style="padding-left:2.8pt;padding-right:2.8pt;">13.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.6.5" style="padding-left:2.8pt;padding-right:2.8pt;">1950</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.6.6" style="padding-left:2.8pt;padding-right:2.8pt;">11.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.6.7" style="padding-left:2.8pt;padding-right:2.8pt;">33.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.6.8" style="padding-left:2.8pt;padding-right:2.8pt;">29.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.6.9" style="padding-left:2.8pt;padding-right:2.8pt;">1797</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.6.10" style="padding-left:2.8pt;padding-right:2.8pt;">28.1</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.7.7.1" style="padding-left:2.8pt;padding-right:2.8pt;">Pre-DPO</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.7.7.2" style="padding-left:2.8pt;padding-right:2.8pt;">DPO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.7.7.3" style="padding-left:2.8pt;padding-right:2.8pt;">12.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.7.7.4" style="padding-left:2.8pt;padding-right:2.8pt;">13.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.7.7.5" style="padding-left:2.8pt;padding-right:2.8pt;">2061</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.7.7.6" style="padding-left:2.8pt;padding-right:2.8pt;">11.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.7.7.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.7.7.7.1">39.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.7.7.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.7.7.8.1">40.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.7.7.9" style="padding-left:2.8pt;padding-right:2.8pt;">2095</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.7.7.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.7.7.10.1">34.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.8.8">
<td class="ltx_td ltx_align_left" id="S5.T1.1.8.8.1" style="padding-left:2.8pt;padding-right:2.8pt;">Pre-DPO</td>
<td class="ltx_td ltx_align_left" id="S5.T1.1.8.8.2" style="padding-left:2.8pt;padding-right:2.8pt;">SimPO</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.8.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.8.8.3.1">18.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.8.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.8.8.4.1">18.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.8.5" style="padding-left:2.8pt;padding-right:2.8pt;">2020</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.8.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.8.8.6.1">14.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.8.7" style="padding-left:2.8pt;padding-right:2.8pt;">35.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.8.8" style="padding-left:2.8pt;padding-right:2.8pt;">32.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.8.9" style="padding-left:2.8pt;padding-right:2.8pt;">1846</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.8.10" style="padding-left:2.8pt;padding-right:2.8pt;">30.0</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.9.9.1" rowspan="3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.9.9.1.1">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.9.9.2" rowspan="3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.9.9.2.1">Ref.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T1.1.9.9.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.9.9.3.1">Qwen2.5-7B-Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T1.1.9.9.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.9.9.4.1">Qwen2.5-7B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.10.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T1.1.10.10.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.10.10.1.1">AlpacaEval 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.10.10.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.10.10.2.1">Arena-Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T1.1.10.10.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.10.10.3.1">AlpacaEval 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.10.10.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.10.10.4.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.11.11.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.11.11.1.1">LC (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.11.11.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.11.11.2.1">WR (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.11.11.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.11.11.3.1">Len.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.11.11.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.11.11.4.1">WR (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.11.11.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.11.11.5.1">LC (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.11.11.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.11.11.6.1">WR (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.11.11.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.11.11.7.1">Len.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.11.11.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.11.11.8.1">WR (%)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.12.12.1" style="padding-left:2.8pt;padding-right:2.8pt;">SFT</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.12.12.2" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.12.12.3" style="padding-left:2.8pt;padding-right:2.8pt;">18.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.12.12.4" style="padding-left:2.8pt;padding-right:2.8pt;">6.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.12.12.5" style="padding-left:2.8pt;padding-right:2.8pt;">892</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.12.12.6" style="padding-left:2.8pt;padding-right:2.8pt;">9.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.12.12.7" style="padding-left:2.8pt;padding-right:2.8pt;">31.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.12.12.8" style="padding-left:2.8pt;padding-right:2.8pt;">31.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.12.12.9" style="padding-left:2.8pt;padding-right:2.8pt;">2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.12.12.10" style="padding-left:2.8pt;padding-right:2.8pt;">55.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.13.13.1" style="padding-left:2.8pt;padding-right:2.8pt;">DPO</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.13.13.2" style="padding-left:2.8pt;padding-right:2.8pt;">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.13.13.3" style="padding-left:2.8pt;padding-right:2.8pt;">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.13.13.4" style="padding-left:2.8pt;padding-right:2.8pt;">22.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.13.13.5" style="padding-left:2.8pt;padding-right:2.8pt;">1778</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.13.13.6" style="padding-left:2.8pt;padding-right:2.8pt;">33.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.13.13.7" style="padding-left:2.8pt;padding-right:2.8pt;">52.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.13.13.8" style="padding-left:2.8pt;padding-right:2.8pt;">56.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.13.13.9" style="padding-left:2.8pt;padding-right:2.8pt;">2270</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.13.13.10" style="padding-left:2.8pt;padding-right:2.8pt;">62.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.14.14">
<td class="ltx_td ltx_align_left" id="S5.T1.1.14.14.1" style="padding-left:2.8pt;padding-right:2.8pt;">SimPO</td>
<td class="ltx_td ltx_align_left" id="S5.T1.1.14.14.2" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.14.14.3" style="padding-left:2.8pt;padding-right:2.8pt;">34.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.14.14.4" style="padding-left:2.8pt;padding-right:2.8pt;">31.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.14.14.5" style="padding-left:2.8pt;padding-right:2.8pt;">1836</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.14.14.6" style="padding-left:2.8pt;padding-right:2.8pt;">38.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.14.14.7" style="padding-left:2.8pt;padding-right:2.8pt;">51.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.14.14.8" style="padding-left:2.8pt;padding-right:2.8pt;">52.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.14.14.9" style="padding-left:2.8pt;padding-right:2.8pt;">2119</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.14.14.10" style="padding-left:2.8pt;padding-right:2.8pt;">62.4</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.15.15.1" style="padding-left:2.8pt;padding-right:2.8pt;">Pre-DPO</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.15.15.2" style="padding-left:2.8pt;padding-right:2.8pt;">DPO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.15.15.3" style="padding-left:2.8pt;padding-right:2.8pt;">27.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.15.15.4" style="padding-left:2.8pt;padding-right:2.8pt;">24.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.15.15.5" style="padding-left:2.8pt;padding-right:2.8pt;">1790</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.15.15.6" style="padding-left:2.8pt;padding-right:2.8pt;">32.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.15.15.7" style="padding-left:2.8pt;padding-right:2.8pt;">53.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.15.15.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.15.15.8.1">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.15.15.9" style="padding-left:2.8pt;padding-right:2.8pt;">2322</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.15.15.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.15.15.10.1">68.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.1.16.16.1" style="padding-left:2.8pt;padding-right:2.8pt;">Pre-DPO</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.1.16.16.2" style="padding-left:2.8pt;padding-right:2.8pt;">SimPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.16.16.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.16.16.3.1">37.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.16.16.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.16.16.4.1">32.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.16.16.5" style="padding-left:2.8pt;padding-right:2.8pt;">1758</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.16.16.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.16.16.6.1">41.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.16.16.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.16.16.7.1">54.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.16.16.8" style="padding-left:2.8pt;padding-right:2.8pt;">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.16.16.9" style="padding-left:2.8pt;padding-right:2.8pt;">2121</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.16.16.10" style="padding-left:2.8pt;padding-right:2.8pt;">64.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance comparison of four different methods (SFT, DPO, SimPO, and Pre-DPO) on two benchmark datasets, AlpacaEval 2 and Arena-Hard v0.1, using four different language models.  The metrics evaluated are length-controlled win rate (LC), raw win rate (WR), and average response length (Len.). The reference model used in each method (Ref.) is specified, and it's noted that the Base model's supervised fine-tuning (SFT) was performed on the UltraChat-200k dataset, while the Instruct models used their existing SFT training. Pre-DPO's guiding reference models were derived from the DPO and SimPO methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of Pre-DPO under four different model settings on AlpacaEval 2 and Arena-Hard v0.1. LC and WR denote the length-controlled and raw win rate, respectively. Ref. denotes the reference model and Len. denotes the average response length. The SFT models for the Base settings are trained on the UltraChat-200k dataset, while the Instruct models are used as the SFT models directly for the Instruct settings. The guiding reference models are obtained from DPO and SimPO.
> </details>





### In-depth insights


#### DPO Reweighting
DPO reweighting implicitly occurs via the reference model, influencing data utilization. **The reference model acts as a data weight adjuster**, increasing the weight of aligned samples and decreasing the weight of conflicting samples. Conventional DPO's identical initialization of policy and reference models leads to uniform weighting initially, contrasting with studies showing improved learning via non-uniform weighting. **Pre-DPO addresses this limitation by using a guiding reference model,** pre-optimized to provide foresight into optimal policy states. This guiding mechanism dynamically adjusts weights, prioritizing suitable samples and de-emphasizing unsuitable ones. This adaptive approach improves data utilization and overcomes the performance ceiling imposed by static constraints in traditional DPO, leading to more efficient and targeted policy improvement.

#### Guiding Reference
The concept of a "Guiding Reference Model" (GRM) presents a novel approach to enhancing preference optimization in language models. Traditional methods often rely on a static reference model, which can limit exploration and data utilization. The GRM, however, is dynamically updated based on the training data, providing **adaptive guidance** and **foresight** into potential policy improvements. This allows the model to prioritize learning from more suitable examples, leading to more efficient and targeted policy optimization. Furthermore, the GRM serves as an **adaptive guiding mechanism** that dynamically assigns higher weights to samples more suitable for the model and lower weights to those less suitable. The suitable cases typically correspond to examples that are easier to learn, allowing the model to leverage data that aligns well with its learning trajectory efficiently. **Data reweighting** strategy improves the overall performance and robustness of the training process.

#### Pre-DPO Method
**Pre-DPO**, as described in the research paper, aims to improve data utilization in Direct Preference Optimization (DPO) by using a guiding reference model. The common practice of initializing the policy and reference models identically in DPO can lead to inefficient data utilization and impose a performance ceiling, while the lack of a reference model in Simple Preference Optimization (SimPO) reduces training robustness and necessitates stricter conditions to prevent catastrophic forgetting. It first optimizes the initial policy using a standard preference optimization method, then employs the resulting optimized policy as the guiding reference model. This guiding reference model provides foresight into the optimal policy state achievable through the training preference data, serving as a guiding mechanism that adaptively assigns higher weights to samples more suitable for the model and lower weights to those less suitable. It addresses the limitations of conventional reference models and improves the performance of both DPO and SimPO.

#### Data Utilization
**Data utilization is a critical aspect of machine learning**, especially in scenarios with limited or expensive labeled data. Efficient use of training data directly translates to better model performance, faster convergence, and reduced resource consumption. Several strategies can be adopted to improve data utilization, including **data augmentation**, **active learning**, and **transfer learning**. Data augmentation techniques artificially expand the training set by creating modified versions of existing samples, while active learning selectively chooses the most informative samples for labeling. Transfer learning leverages knowledge gained from pre-trained models to accelerate training on new tasks. In the context of preference optimization, like DPO and SimPO, data utilization becomes even more important due to the subjective nature of human preferences and the potential for inconsistent or noisy feedback. By carefully analyzing the training data and weighting examples based on their relevance and difficulty, preference optimization methods can achieve better alignment with human values and avoid overfitting to spurious correlations.

#### LLM Alignment
LLM alignment is crucial for ensuring that large language models are helpful, harmless, and honest. The process involves steering the model's behavior to align with human values and preferences, mitigating potential risks like generating biased or toxic content. This alignment is typically achieved through techniques like Reinforcement Learning from Human Feedback (**RLHF**), where models are trained to optimize for human-defined reward signals. Direct Preference Optimization (**DPO**) simplifies this process by directly optimizing for human preferences without an explicit reward model. Effective LLM alignment is paramount for the responsible development and deployment of AI systems, ensuring they contribute positively to society and avoid unintended negative consequences. Data weighting adjustment plays a key role, helping the model learns efficiently.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15843/x2.png)

> 🔼 Pre-DPO enhances existing preference optimization methods by using a guiding reference model.  Standard DPO uses the initial policy model as a constraining reference model during training, while SimPO is reference-free.  Pre-DPO improves on these by first optimizing the initial policy using either DPO or SimPO.  The resulting optimized model then serves as a *guiding* reference model. This guiding model informs a second round of DPO optimization on the initial policy model, leading to improved data utilization and a better final policy model. The figure visually illustrates this process, comparing the workflows of standard DPO, SimPO, and the proposed Pre-DPO method.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of Pre-DPO. DPO constrains training using the initial policy model as the reference, and SimPO is reference-free. Pre-DPO first obtains an optimized policy model via DPO or SimPO, resets it as a guiding reference model, and then re-optimizes the initial policy using DPO. This process improves data utilization and leads to a better optimized policy model.
> </details>



![](https://arxiv.org/html/2504.15843/x3.png)

> 🔼 This violin plot shows the distribution of the reweighting factor λ for Llama3.2-3B-Base model.  The x-axis represents the different methods (DPO and Pre-DPO with DPO as reference). The y-axis represents the value of λ. Each violin plot displays the distribution of λ values, with the width representing data density and the thick lines showing the mean and median.  The figure illustrates the differences in λ distributions between Pre-DPO and standard DPO, highlighting how Pre-DPO results in higher λ values.
> <details>
> <summary>read the caption</summary>
> (a) Llama3.2-3B-Base
> </details>



![](https://arxiv.org/html/2504.15843/x4.png)

> 🔼 This violin plot displays the distribution of the weighting factor 'λ' in the Llama3.2-3B-Instruct model during training.  The 'λ' values represent how much weight the model assigns to each training example, reflecting the model's focus. The plot compares the distribution of 'λ' obtained by the standard Direct Preference Optimization (DPO) method and the proposed Pre-DPO method.  A higher 'λ' suggests that the data sample is considered more valuable by the model. The difference in the distributions between DPO and Pre-DPO illustrates how Pre-DPO effectively leverages a guiding reference model to modify the data weighting scheme and improve training efficiency.
> <details>
> <summary>read the caption</summary>
> (b) Llama3.2-3B-Instruct
> </details>



![](https://arxiv.org/html/2504.15843/x5.png)

> 🔼 Figure 3 displays violin plots illustrating the distributions of the weighting factor lambda (λ) for both Pre-DPO and standard DPO methods.  The data used comes from the training preference dataset, with beta (β) fixed at 0.01.  Separate plots are shown for the Llama3.2-3B Base and Llama3.2-3B Instruct model settings. The plots show the distributions' means and medians, with violin widths reflecting data density, allowing for a visual comparison of the weighting factor's distribution between the two methods across different model configurations.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Comparative differences in λ𝜆\lambdaitalic_λ (when β𝛽\betaitalic_β is set to 0.01) distributions between Pre-DPO and DPO across Llama3.2-3B settings. Each subplot presents a violin plot illustrating the distribution of λ𝜆\lambdaitalic_λ values on the training preference dataset. The black horizontal line indicates the mean, while the dark gray line represents the median. The width of the violin at each point represents the data density, where thicker sections correspond to regions with higher data concentration.
> </details>



![](https://arxiv.org/html/2504.15843/x6.png)

> 🔼 Figure 4(a) displays the distribution of the 'A' values (a weighting factor in the Pre-DPO algorithm) on the training preference dataset for both the standard DPO method and the proposed Pre-DPO method.  The data is visualized as violin plots, showing the distribution's density and central tendency (mean and median).  This specific subplot shows the results for the Qwen2.5-7B-Base language model. The figure demonstrates how Pre-DPO adjusts the weights more effectively to improve learning, as shown by the difference in the distributions of 'A' values between the two methods.
> <details>
> <summary>read the caption</summary>
> (a) Qwen2.5-7B-Base
> </details>



![](https://arxiv.org/html/2504.15843/x7.png)

> 🔼 This violin plot displays the distribution of the weighting factor 'λ' for both the standard DPO method and the proposed Pre-DPO method, specifically for the Qwen2.5-7B-Instruct model. The 'λ' values, calculated with β = 0.01, represent the weights assigned to each training example during preference optimization. A higher 'λ' indicates a greater influence of the example on the model's training.  The plot visually compares the distribution of 'λ' between the two methods, highlighting the impact of Pre-DPO on data weighting and consequently, model training.
> <details>
> <summary>read the caption</summary>
> (b) Qwen2.5-7B-Instruct
> </details>



![](https://arxiv.org/html/2504.15843/x8.png)

> 🔼 This violin plot displays the distribution of the values of lambda (λ) computed on the Llama3.2-3B-Base model's training preference dataset after training with both the original DPO and the Pre-DPO methods.  The plot shows the mean and median values of λ for both methods, highlighting the differences in the distribution of λ resulting from the Pre-DPO's adaptive data reweighting mechanism.
> <details>
> <summary>read the caption</summary>
> (c) Llama3.2-3B-Base
> </details>



![](https://arxiv.org/html/2504.15843/x9.png)

> 🔼 This violin plot displays the distribution of the weighting factor 'λ' for both the standard DPO method and the proposed Pre-DPO method.  The data comes from training the Llama3.2-3B-Instruct model, with β set to 0.01.  The x-axis shows the methods (DPO and Pre-DPO), and the y-axis represents the λ values. The violin plot's shape shows the data density at various λ values, indicating the frequency of different weights assigned to the training data samples.  The black line denotes the mean, and the gray line represents the median λ value for each method.  The wider parts of the violin shape indicate higher density, while narrower parts mean fewer data points have those values of λ.
> <details>
> <summary>read the caption</summary>
> (d) Llama3.2-3B-Instruct
> </details>



![](https://arxiv.org/html/2504.15843/x10.png)

> 🔼 This violin plot displays the distribution of the weight parameter 'λ' for the Qwen2.5-7B-Base model.  The distribution shows the range of weights assigned to different data samples during training using both the standard DPO and the proposed Pre-DPO methods.  The plot helps to visualize how Pre-DPO alters the weighting of training data compared to the standard approach, offering insights into the effectiveness of Pre-DPO's data reweighting strategy.
> <details>
> <summary>read the caption</summary>
> (e) Qwen2.5-7B-Base
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.3.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.3.1.1.1">Policy Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.3.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.3.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.3.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.3.1.3.1">Ref.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.3.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.3.1.4.1">Epochs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T2.2.2.3.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.3.1.5.1">AlpacaEval 2</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.4.2.1"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.4.2.1.1">LC (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.4.2.2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.4.2.2.1">WR (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.4.2.3"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.4.2.3.1">Len.</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.5.3.1" rowspan="3"><span class="ltx_text" id="S5.T2.2.2.5.3.1.1">Llama3.2-3B-Base-SFT</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.5.3.2">DPO</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.5.3.3">SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.5.3.4">1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.5.3.5">10.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.5.3.6">12.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.2.5.3.7">2042</th>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.6.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.6.4.1">DPO</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.6.4.2">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.6.4.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.6.4.4">11.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.6.4.5">12.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.6.4.6">1976</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.1.2">Pre-DPO</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.1.1"><math alttext="\text{DPO}_{1}" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><msub id="S5.T2.1.1.1.1.m1.1.1" xref="S5.T2.1.1.1.1.m1.1.1.cmml"><mtext id="S5.T2.1.1.1.1.m1.1.1.2" xref="S5.T2.1.1.1.1.m1.1.1.2a.cmml">DPO</mtext><mn id="S5.T2.1.1.1.1.m1.1.1.3" xref="S5.T2.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><apply id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.1.1.1.1.m1.1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T2.1.1.1.1.m1.1.1.2a.cmml" xref="S5.T2.1.1.1.1.m1.1.1.2"><mtext id="S5.T2.1.1.1.1.m1.1.1.2.cmml" xref="S5.T2.1.1.1.1.m1.1.1.2">DPO</mtext></ci><cn id="S5.T2.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\text{DPO}_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">DPO start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.3">1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.4.1">12.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.5.1">13.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1.6">2061</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.7.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.2.2.7.5.1" rowspan="3"><span class="ltx_text" id="S5.T2.2.2.7.5.1.1">Llama3.2-3B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.7.5.2">DPO</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.7.5.3">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.7.5.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.7.5.5">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.7.5.6">36.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.7.5.7">2026</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.8.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.8.6.1">DPO</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.2.8.6.2">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.8.6.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.8.6.4">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.8.6.5">37.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.8.6.6">2113</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.2.2.2.2">Pre-DPO</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.2.2.2.1"><math alttext="\text{DPO}_{1}" class="ltx_Math" display="inline" id="S5.T2.2.2.2.1.m1.1"><semantics id="S5.T2.2.2.2.1.m1.1a"><msub id="S5.T2.2.2.2.1.m1.1.1" xref="S5.T2.2.2.2.1.m1.1.1.cmml"><mtext id="S5.T2.2.2.2.1.m1.1.1.2" xref="S5.T2.2.2.2.1.m1.1.1.2a.cmml">DPO</mtext><mn id="S5.T2.2.2.2.1.m1.1.1.3" xref="S5.T2.2.2.2.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.1.m1.1b"><apply id="S5.T2.2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.2.2.2.1.m1.1.1.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S5.T2.2.2.2.1.m1.1.1.2a.cmml" xref="S5.T2.2.2.2.1.m1.1.1.2"><mtext id="S5.T2.2.2.2.1.m1.1.1.2.cmml" xref="S5.T2.2.2.2.1.m1.1.1.2">DPO</mtext></ci><cn id="S5.T2.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.2.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.1.m1.1c">\text{DPO}_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.1.m1.1d">DPO start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.2.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.4.1">39.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.5.1">40.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.2.6">2095</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the impact of the guiding reference model in the Pre-DPO method.  It compares the performance of standard DPO (trained for one and two epochs), and Pre-DPO.  The goal is to isolate the effect of the guiding reference model by controlling for computational cost (Pre-DPO with one epoch has the same cost as DPO with two).  The results show the performance of each method on the AlpacaEval 2 benchmark (LC win rate, WR win rate, and average response length).  This helps determine whether the performance gains in Pre-DPO are due solely to increased training time or are attributable to the use of the guiding reference model.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation studies of the guiding reference model. DPO trained for 2 epochs has the same computational cost as Pre-DPO. DPO1subscriptDPO1\text{DPO}_{1}DPO start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT denote the guiding reference model trained with DPO for 1 epoch.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.7.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.7.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.7.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.7.1.2.1">Ref.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.7.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.7.1.3.1">Training Set</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T3.6.7.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.6.7.1.4.1">AlpacaEval 2</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.6.8.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.6.8.2.1"><span class="ltx_text ltx_font_bold" id="S5.T3.6.8.2.1.1">LC (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.6.8.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.8.2.2.1">WR (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.6.8.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.6.8.2.3.1">Len.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.1"><span class="ltx_text ltx_markedasmath" id="S5.T3.1.1.1.1">DPO</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.2">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3">A</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4">11.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.5">10.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6">1702</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2">
<td class="ltx_td ltx_align_left" id="S5.T3.2.2.2">Pre-DPO</td>
<td class="ltx_td ltx_align_left" id="S5.T3.2.2.1"><math alttext="\text{DPO}_{\text{A}}" class="ltx_Math" display="inline" id="S5.T3.2.2.1.m1.1"><semantics id="S5.T3.2.2.1.m1.1a"><msub id="S5.T3.2.2.1.m1.1.1" xref="S5.T3.2.2.1.m1.1.1.cmml"><mtext id="S5.T3.2.2.1.m1.1.1.2" xref="S5.T3.2.2.1.m1.1.1.2a.cmml">DPO</mtext><mtext id="S5.T3.2.2.1.m1.1.1.3" xref="S5.T3.2.2.1.m1.1.1.3a.cmml">A</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.1.m1.1b"><apply id="S5.T3.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.2.2.1.m1.1.1.1.cmml" xref="S5.T3.2.2.1.m1.1.1">subscript</csymbol><ci id="S5.T3.2.2.1.m1.1.1.2a.cmml" xref="S5.T3.2.2.1.m1.1.1.2"><mtext id="S5.T3.2.2.1.m1.1.1.2.cmml" xref="S5.T3.2.2.1.m1.1.1.2">DPO</mtext></ci><ci id="S5.T3.2.2.1.m1.1.1.3a.cmml" xref="S5.T3.2.2.1.m1.1.1.3"><mtext id="S5.T3.2.2.1.m1.1.1.3.cmml" mathsize="70%" xref="S5.T3.2.2.1.m1.1.1.3">A</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.1.m1.1c">\text{DPO}_{\text{A}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.1.m1.1d">DPO start_POSTSUBSCRIPT A end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.3">A</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.4.1">13.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.5.1">13.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.6">1819</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3">
<td class="ltx_td ltx_align_left" id="S5.T3.3.3.2">Pre-DPO</td>
<td class="ltx_td ltx_align_left" id="S5.T3.3.3.1"><math alttext="\text{DPO}_{\text{B}}" class="ltx_Math" display="inline" id="S5.T3.3.3.1.m1.1"><semantics id="S5.T3.3.3.1.m1.1a"><msub id="S5.T3.3.3.1.m1.1.1" xref="S5.T3.3.3.1.m1.1.1.cmml"><mtext id="S5.T3.3.3.1.m1.1.1.2" xref="S5.T3.3.3.1.m1.1.1.2a.cmml">DPO</mtext><mtext id="S5.T3.3.3.1.m1.1.1.3" xref="S5.T3.3.3.1.m1.1.1.3a.cmml">B</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.1.m1.1b"><apply id="S5.T3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.3.3.1.m1.1.1.1.cmml" xref="S5.T3.3.3.1.m1.1.1">subscript</csymbol><ci id="S5.T3.3.3.1.m1.1.1.2a.cmml" xref="S5.T3.3.3.1.m1.1.1.2"><mtext id="S5.T3.3.3.1.m1.1.1.2.cmml" xref="S5.T3.3.3.1.m1.1.1.2">DPO</mtext></ci><ci id="S5.T3.3.3.1.m1.1.1.3a.cmml" xref="S5.T3.3.3.1.m1.1.1.3"><mtext id="S5.T3.3.3.1.m1.1.1.3.cmml" mathsize="70%" xref="S5.T3.3.3.1.m1.1.1.3">B</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.1.m1.1c">\text{DPO}_{\text{B}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.1.m1.1d">DPO start_POSTSUBSCRIPT B end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3">A</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.4">12.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.5">12.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.6">1791</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.4.1"><span class="ltx_text ltx_markedasmath" id="S5.T3.4.4.1.1">DPO</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.4.2">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.3">B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4">13.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.5">12.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.6">1765</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5">
<td class="ltx_td ltx_align_left" id="S5.T3.5.5.2">Pre-DPO</td>
<td class="ltx_td ltx_align_left" id="S5.T3.5.5.1"><math alttext="\text{DPO}_{\text{B}}" class="ltx_Math" display="inline" id="S5.T3.5.5.1.m1.1"><semantics id="S5.T3.5.5.1.m1.1a"><msub id="S5.T3.5.5.1.m1.1.1" xref="S5.T3.5.5.1.m1.1.1.cmml"><mtext id="S5.T3.5.5.1.m1.1.1.2" xref="S5.T3.5.5.1.m1.1.1.2a.cmml">DPO</mtext><mtext id="S5.T3.5.5.1.m1.1.1.3" xref="S5.T3.5.5.1.m1.1.1.3a.cmml">B</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.1.m1.1b"><apply id="S5.T3.5.5.1.m1.1.1.cmml" xref="S5.T3.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.5.5.1.m1.1.1.1.cmml" xref="S5.T3.5.5.1.m1.1.1">subscript</csymbol><ci id="S5.T3.5.5.1.m1.1.1.2a.cmml" xref="S5.T3.5.5.1.m1.1.1.2"><mtext id="S5.T3.5.5.1.m1.1.1.2.cmml" xref="S5.T3.5.5.1.m1.1.1.2">DPO</mtext></ci><ci id="S5.T3.5.5.1.m1.1.1.3a.cmml" xref="S5.T3.5.5.1.m1.1.1.3"><mtext id="S5.T3.5.5.1.m1.1.1.3.cmml" mathsize="70%" xref="S5.T3.5.5.1.m1.1.1.3">B</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.1.m1.1c">\text{DPO}_{\text{B}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.1.m1.1d">DPO start_POSTSUBSCRIPT B end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.3">B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.4"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.4.1">14.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.5.1">13.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.6">1792</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.6.6.2">Pre-DPO</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.6.6.1"><math alttext="\text{DPO}_{\text{A}}" class="ltx_Math" display="inline" id="S5.T3.6.6.1.m1.1"><semantics id="S5.T3.6.6.1.m1.1a"><msub id="S5.T3.6.6.1.m1.1.1" xref="S5.T3.6.6.1.m1.1.1.cmml"><mtext id="S5.T3.6.6.1.m1.1.1.2" xref="S5.T3.6.6.1.m1.1.1.2a.cmml">DPO</mtext><mtext id="S5.T3.6.6.1.m1.1.1.3" xref="S5.T3.6.6.1.m1.1.1.3a.cmml">A</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.1.m1.1b"><apply id="S5.T3.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.6.6.1.m1.1.1.1.cmml" xref="S5.T3.6.6.1.m1.1.1">subscript</csymbol><ci id="S5.T3.6.6.1.m1.1.1.2a.cmml" xref="S5.T3.6.6.1.m1.1.1.2"><mtext id="S5.T3.6.6.1.m1.1.1.2.cmml" xref="S5.T3.6.6.1.m1.1.1.2">DPO</mtext></ci><ci id="S5.T3.6.6.1.m1.1.1.3a.cmml" xref="S5.T3.6.6.1.m1.1.1.3"><mtext id="S5.T3.6.6.1.m1.1.1.3.cmml" mathsize="70%" xref="S5.T3.6.6.1.m1.1.1.3">A</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.1.m1.1c">\text{DPO}_{\text{A}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.1.m1.1d">DPO start_POSTSUBSCRIPT A end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.3">B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.4">13.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.5">12.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.6">1708</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results for the Pre-DPO model.  It shows how performance changes when using different guiding reference models and subsets of the preference dataset. The Qwen2.5-3B-Base model was used for supervised fine-tuning, and the UltraFeedback dataset was randomly split into two equal halves (A and B) to create different preference datasets.  The results show the performance of standard DPO and Pre-DPO trained with guiding reference models trained on either dataset A or B. This demonstrates the influence of the guiding model and training data on the Pre-DPO model's performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation studies of Pre-DPO under different guiding reference models and preference datasets. The SFT model is obtained by training Qwen2.5-3B-Base on the UltraChat-200k dataset. The preference training sets A and B are created by randomly splitting the UltraFeedback dataset into two equal parts. DPOAsubscriptDPOA\text{DPO}_{\text{A}}DPO start_POSTSUBSCRIPT A end_POSTSUBSCRIPT and DPOBsubscriptDPOB\text{DPO}_{\text{B}}DPO start_POSTSUBSCRIPT B end_POSTSUBSCRIPT denote the guiding reference models trained on training sets A and B, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.18">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T4.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T4.2.2.3.1">Policy Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.2.2.4"><span class="ltx_text ltx_font_bold" id="A1.T4.2.2.4.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.2.2.5"><span class="ltx_text ltx_font_bold" id="A1.T4.2.2.5.1">Ref.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1"><math alttext="\boldsymbol{\beta}" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.m1.1a"><mi id="A1.T4.1.1.1.m1.1.1" xref="A1.T4.1.1.1.m1.1.1.cmml">𝜷</mi><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.1b"><ci id="A1.T4.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1">𝜷</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.1c">\boldsymbol{\beta}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.1d">bold_italic_β</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.2.2.2"><math alttext="\boldsymbol{\gamma}" class="ltx_Math" display="inline" id="A1.T4.2.2.2.m1.1"><semantics id="A1.T4.2.2.2.m1.1a"><mi id="A1.T4.2.2.2.m1.1.1" xref="A1.T4.2.2.2.m1.1.1.cmml">𝜸</mi><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.m1.1b"><ci id="A1.T4.2.2.2.m1.1.1.cmml" xref="A1.T4.2.2.2.m1.1.1">𝜸</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.m1.1c">\boldsymbol{\gamma}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.m1.1d">bold_italic_γ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.2.2.6"><span class="ltx_text ltx_font_bold" id="A1.T4.2.2.6.1">Learning rate</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.3.3.2">Llama3.2-3B-Base-SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.3">DPO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.4">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.5">0.005</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.3.3.1.m1.1"><semantics id="A1.T4.3.3.1.m1.1a"><mrow id="A1.T4.3.3.1.m1.1.1" xref="A1.T4.3.3.1.m1.1.1.cmml"><mn id="A1.T4.3.3.1.m1.1.1.2" xref="A1.T4.3.3.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.3.3.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.3.3.1.m1.1.1.3" xref="A1.T4.3.3.1.m1.1.1.3.cmml"><mn id="A1.T4.3.3.1.m1.1.1.3.2" xref="A1.T4.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.3.3.1.m1.1.1.3.3" xref="A1.T4.3.3.1.m1.1.1.3.3.cmml"><mo id="A1.T4.3.3.1.m1.1.1.3.3a" xref="A1.T4.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.3.3.1.m1.1.1.3.3.2" xref="A1.T4.3.3.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.1.m1.1b"><apply id="A1.T4.3.3.1.m1.1.1.cmml" xref="A1.T4.3.3.1.m1.1.1"><times id="A1.T4.3.3.1.m1.1.1.1.cmml" xref="A1.T4.3.3.1.m1.1.1.1"></times><cn id="A1.T4.3.3.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.3.3.1.m1.1.1.2">1</cn><apply id="A1.T4.3.3.1.m1.1.1.3.cmml" xref="A1.T4.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.3.3.1.m1.1.1.3.1.cmml" xref="A1.T4.3.3.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.3.3.1.m1.1.1.3.2">10</cn><apply id="A1.T4.3.3.1.m1.1.1.3.3.cmml" xref="A1.T4.3.3.1.m1.1.1.3.3"><minus id="A1.T4.3.3.1.m1.1.1.3.3.1.cmml" xref="A1.T4.3.3.1.m1.1.1.3.3"></minus><cn id="A1.T4.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.3.3.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4">
<td class="ltx_td ltx_align_left" id="A1.T4.4.4.2">Llama3.2-3B-Base-SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.3">SimPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.4">SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.5">2.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.6">1.2</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.4.4.1.m1.1"><semantics id="A1.T4.4.4.1.m1.1a"><mrow id="A1.T4.4.4.1.m1.1.1" xref="A1.T4.4.4.1.m1.1.1.cmml"><mn id="A1.T4.4.4.1.m1.1.1.2" xref="A1.T4.4.4.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.4.4.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.4.4.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.4.4.1.m1.1.1.3" xref="A1.T4.4.4.1.m1.1.1.3.cmml"><mn id="A1.T4.4.4.1.m1.1.1.3.2" xref="A1.T4.4.4.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.4.4.1.m1.1.1.3.3" xref="A1.T4.4.4.1.m1.1.1.3.3.cmml"><mo id="A1.T4.4.4.1.m1.1.1.3.3a" xref="A1.T4.4.4.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.4.4.1.m1.1.1.3.3.2" xref="A1.T4.4.4.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.1.m1.1b"><apply id="A1.T4.4.4.1.m1.1.1.cmml" xref="A1.T4.4.4.1.m1.1.1"><times id="A1.T4.4.4.1.m1.1.1.1.cmml" xref="A1.T4.4.4.1.m1.1.1.1"></times><cn id="A1.T4.4.4.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.4.4.1.m1.1.1.2">1</cn><apply id="A1.T4.4.4.1.m1.1.1.3.cmml" xref="A1.T4.4.4.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.4.4.1.m1.1.1.3.1.cmml" xref="A1.T4.4.4.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.4.4.1.m1.1.1.3.2">10</cn><apply id="A1.T4.4.4.1.m1.1.1.3.3.cmml" xref="A1.T4.4.4.1.m1.1.1.3.3"><minus id="A1.T4.4.4.1.m1.1.1.3.3.1.cmml" xref="A1.T4.4.4.1.m1.1.1.3.3"></minus><cn id="A1.T4.4.4.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.4.4.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5">
<td class="ltx_td ltx_align_left" id="A1.T4.5.5.2">Llama3.2-3B-Base-SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.3">Pre-DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.4">DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.5.5.1.m1.1"><semantics id="A1.T4.5.5.1.m1.1a"><mrow id="A1.T4.5.5.1.m1.1.1" xref="A1.T4.5.5.1.m1.1.1.cmml"><mn id="A1.T4.5.5.1.m1.1.1.2" xref="A1.T4.5.5.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.5.5.1.m1.1.1.3" xref="A1.T4.5.5.1.m1.1.1.3.cmml"><mn id="A1.T4.5.5.1.m1.1.1.3.2" xref="A1.T4.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.5.5.1.m1.1.1.3.3" xref="A1.T4.5.5.1.m1.1.1.3.3.cmml"><mo id="A1.T4.5.5.1.m1.1.1.3.3a" xref="A1.T4.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.5.5.1.m1.1.1.3.3.2" xref="A1.T4.5.5.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.1.m1.1b"><apply id="A1.T4.5.5.1.m1.1.1.cmml" xref="A1.T4.5.5.1.m1.1.1"><times id="A1.T4.5.5.1.m1.1.1.1.cmml" xref="A1.T4.5.5.1.m1.1.1.1"></times><cn id="A1.T4.5.5.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.5.5.1.m1.1.1.2">1</cn><apply id="A1.T4.5.5.1.m1.1.1.3.cmml" xref="A1.T4.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.5.5.1.m1.1.1.3.1.cmml" xref="A1.T4.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.5.5.1.m1.1.1.3.2">10</cn><apply id="A1.T4.5.5.1.m1.1.1.3.3.cmml" xref="A1.T4.5.5.1.m1.1.1.3.3"><minus id="A1.T4.5.5.1.m1.1.1.3.3.1.cmml" xref="A1.T4.5.5.1.m1.1.1.3.3"></minus><cn id="A1.T4.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.5.5.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.6.6">
<td class="ltx_td ltx_align_left" id="A1.T4.6.6.2">Llama3.2-3B-Base-SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.3">Pre-DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.4">SimPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.5">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.1"><math alttext="6\times 10^{-7}" class="ltx_Math" display="inline" id="A1.T4.6.6.1.m1.1"><semantics id="A1.T4.6.6.1.m1.1a"><mrow id="A1.T4.6.6.1.m1.1.1" xref="A1.T4.6.6.1.m1.1.1.cmml"><mn id="A1.T4.6.6.1.m1.1.1.2" xref="A1.T4.6.6.1.m1.1.1.2.cmml">6</mn><mo id="A1.T4.6.6.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.6.6.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.6.6.1.m1.1.1.3" xref="A1.T4.6.6.1.m1.1.1.3.cmml"><mn id="A1.T4.6.6.1.m1.1.1.3.2" xref="A1.T4.6.6.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.6.6.1.m1.1.1.3.3" xref="A1.T4.6.6.1.m1.1.1.3.3.cmml"><mo id="A1.T4.6.6.1.m1.1.1.3.3a" xref="A1.T4.6.6.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.6.6.1.m1.1.1.3.3.2" xref="A1.T4.6.6.1.m1.1.1.3.3.2.cmml">7</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.1.m1.1b"><apply id="A1.T4.6.6.1.m1.1.1.cmml" xref="A1.T4.6.6.1.m1.1.1"><times id="A1.T4.6.6.1.m1.1.1.1.cmml" xref="A1.T4.6.6.1.m1.1.1.1"></times><cn id="A1.T4.6.6.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.6.6.1.m1.1.1.2">6</cn><apply id="A1.T4.6.6.1.m1.1.1.3.cmml" xref="A1.T4.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.6.6.1.m1.1.1.3.1.cmml" xref="A1.T4.6.6.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.6.6.1.m1.1.1.3.2">10</cn><apply id="A1.T4.6.6.1.m1.1.1.3.3.cmml" xref="A1.T4.6.6.1.m1.1.1.3.3"><minus id="A1.T4.6.6.1.m1.1.1.3.3.1.cmml" xref="A1.T4.6.6.1.m1.1.1.3.3"></minus><cn id="A1.T4.6.6.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.6.6.1.m1.1.1.3.3.2">7</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.1.m1.1c">6\times 10^{-7}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.1.m1.1d">6 × 10 start_POSTSUPERSCRIPT - 7 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.7.7">
<td class="ltx_td ltx_align_left" id="A1.T4.7.7.2">Llama3.2-3B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.3">DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.4">SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.5">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.1"><math alttext="6\times 10^{-7}" class="ltx_Math" display="inline" id="A1.T4.7.7.1.m1.1"><semantics id="A1.T4.7.7.1.m1.1a"><mrow id="A1.T4.7.7.1.m1.1.1" xref="A1.T4.7.7.1.m1.1.1.cmml"><mn id="A1.T4.7.7.1.m1.1.1.2" xref="A1.T4.7.7.1.m1.1.1.2.cmml">6</mn><mo id="A1.T4.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.7.7.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.7.7.1.m1.1.1.3" xref="A1.T4.7.7.1.m1.1.1.3.cmml"><mn id="A1.T4.7.7.1.m1.1.1.3.2" xref="A1.T4.7.7.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.7.7.1.m1.1.1.3.3" xref="A1.T4.7.7.1.m1.1.1.3.3.cmml"><mo id="A1.T4.7.7.1.m1.1.1.3.3a" xref="A1.T4.7.7.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.7.7.1.m1.1.1.3.3.2" xref="A1.T4.7.7.1.m1.1.1.3.3.2.cmml">7</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.7.7.1.m1.1b"><apply id="A1.T4.7.7.1.m1.1.1.cmml" xref="A1.T4.7.7.1.m1.1.1"><times id="A1.T4.7.7.1.m1.1.1.1.cmml" xref="A1.T4.7.7.1.m1.1.1.1"></times><cn id="A1.T4.7.7.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.7.7.1.m1.1.1.2">6</cn><apply id="A1.T4.7.7.1.m1.1.1.3.cmml" xref="A1.T4.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.7.7.1.m1.1.1.3.1.cmml" xref="A1.T4.7.7.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.7.7.1.m1.1.1.3.2">10</cn><apply id="A1.T4.7.7.1.m1.1.1.3.3.cmml" xref="A1.T4.7.7.1.m1.1.1.3.3"><minus id="A1.T4.7.7.1.m1.1.1.3.3.1.cmml" xref="A1.T4.7.7.1.m1.1.1.3.3"></minus><cn id="A1.T4.7.7.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.7.7.1.m1.1.1.3.3.2">7</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.7.7.1.m1.1c">6\times 10^{-7}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.7.7.1.m1.1d">6 × 10 start_POSTSUPERSCRIPT - 7 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8">
<td class="ltx_td ltx_align_left" id="A1.T4.8.8.2">Llama3.2-3B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.3">SimPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.4">SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.5">2.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.6">1.0</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.8.8.1.m1.1"><semantics id="A1.T4.8.8.1.m1.1a"><mrow id="A1.T4.8.8.1.m1.1.1" xref="A1.T4.8.8.1.m1.1.1.cmml"><mn id="A1.T4.8.8.1.m1.1.1.2" xref="A1.T4.8.8.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.8.8.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.8.8.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.8.8.1.m1.1.1.3" xref="A1.T4.8.8.1.m1.1.1.3.cmml"><mn id="A1.T4.8.8.1.m1.1.1.3.2" xref="A1.T4.8.8.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.8.8.1.m1.1.1.3.3" xref="A1.T4.8.8.1.m1.1.1.3.3.cmml"><mo id="A1.T4.8.8.1.m1.1.1.3.3a" xref="A1.T4.8.8.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.8.8.1.m1.1.1.3.3.2" xref="A1.T4.8.8.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.8.8.1.m1.1b"><apply id="A1.T4.8.8.1.m1.1.1.cmml" xref="A1.T4.8.8.1.m1.1.1"><times id="A1.T4.8.8.1.m1.1.1.1.cmml" xref="A1.T4.8.8.1.m1.1.1.1"></times><cn id="A1.T4.8.8.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.8.8.1.m1.1.1.2">1</cn><apply id="A1.T4.8.8.1.m1.1.1.3.cmml" xref="A1.T4.8.8.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.8.8.1.m1.1.1.3.1.cmml" xref="A1.T4.8.8.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.8.8.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.8.8.1.m1.1.1.3.2">10</cn><apply id="A1.T4.8.8.1.m1.1.1.3.3.cmml" xref="A1.T4.8.8.1.m1.1.1.3.3"><minus id="A1.T4.8.8.1.m1.1.1.3.3.1.cmml" xref="A1.T4.8.8.1.m1.1.1.3.3"></minus><cn id="A1.T4.8.8.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.8.8.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.8.8.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.8.8.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.9.9">
<td class="ltx_td ltx_align_left" id="A1.T4.9.9.2">Llama3.2-3B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.3">Pre-DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.4">DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.5">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.9.9.1.m1.1"><semantics id="A1.T4.9.9.1.m1.1a"><mrow id="A1.T4.9.9.1.m1.1.1" xref="A1.T4.9.9.1.m1.1.1.cmml"><mn id="A1.T4.9.9.1.m1.1.1.2" xref="A1.T4.9.9.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.9.9.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.9.9.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.9.9.1.m1.1.1.3" xref="A1.T4.9.9.1.m1.1.1.3.cmml"><mn id="A1.T4.9.9.1.m1.1.1.3.2" xref="A1.T4.9.9.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.9.9.1.m1.1.1.3.3" xref="A1.T4.9.9.1.m1.1.1.3.3.cmml"><mo id="A1.T4.9.9.1.m1.1.1.3.3a" xref="A1.T4.9.9.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.9.9.1.m1.1.1.3.3.2" xref="A1.T4.9.9.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.9.9.1.m1.1b"><apply id="A1.T4.9.9.1.m1.1.1.cmml" xref="A1.T4.9.9.1.m1.1.1"><times id="A1.T4.9.9.1.m1.1.1.1.cmml" xref="A1.T4.9.9.1.m1.1.1.1"></times><cn id="A1.T4.9.9.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.9.9.1.m1.1.1.2">1</cn><apply id="A1.T4.9.9.1.m1.1.1.3.cmml" xref="A1.T4.9.9.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.9.9.1.m1.1.1.3.1.cmml" xref="A1.T4.9.9.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.9.9.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.9.9.1.m1.1.1.3.2">10</cn><apply id="A1.T4.9.9.1.m1.1.1.3.3.cmml" xref="A1.T4.9.9.1.m1.1.1.3.3"><minus id="A1.T4.9.9.1.m1.1.1.3.3.1.cmml" xref="A1.T4.9.9.1.m1.1.1.3.3"></minus><cn id="A1.T4.9.9.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.9.9.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.9.9.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.9.9.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10">
<td class="ltx_td ltx_align_left" id="A1.T4.10.10.2">Llama3.2-3B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.3">Pre-DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.4">SimPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.5">0.1</td>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.10.10.1.m1.1"><semantics id="A1.T4.10.10.1.m1.1a"><mrow id="A1.T4.10.10.1.m1.1.1" xref="A1.T4.10.10.1.m1.1.1.cmml"><mn id="A1.T4.10.10.1.m1.1.1.2" xref="A1.T4.10.10.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.10.10.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.10.10.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.10.10.1.m1.1.1.3" xref="A1.T4.10.10.1.m1.1.1.3.cmml"><mn id="A1.T4.10.10.1.m1.1.1.3.2" xref="A1.T4.10.10.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.10.10.1.m1.1.1.3.3" xref="A1.T4.10.10.1.m1.1.1.3.3.cmml"><mo id="A1.T4.10.10.1.m1.1.1.3.3a" xref="A1.T4.10.10.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.10.10.1.m1.1.1.3.3.2" xref="A1.T4.10.10.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.10.10.1.m1.1b"><apply id="A1.T4.10.10.1.m1.1.1.cmml" xref="A1.T4.10.10.1.m1.1.1"><times id="A1.T4.10.10.1.m1.1.1.1.cmml" xref="A1.T4.10.10.1.m1.1.1.1"></times><cn id="A1.T4.10.10.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.10.10.1.m1.1.1.2">1</cn><apply id="A1.T4.10.10.1.m1.1.1.3.cmml" xref="A1.T4.10.10.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.10.10.1.m1.1.1.3.1.cmml" xref="A1.T4.10.10.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.10.10.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.10.10.1.m1.1.1.3.2">10</cn><apply id="A1.T4.10.10.1.m1.1.1.3.3.cmml" xref="A1.T4.10.10.1.m1.1.1.3.3"><minus id="A1.T4.10.10.1.m1.1.1.3.3.1.cmml" xref="A1.T4.10.10.1.m1.1.1.3.3"></minus><cn id="A1.T4.10.10.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.10.10.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.10.10.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.10.10.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.11.11">
<td class="ltx_td ltx_align_left" id="A1.T4.11.11.2">Qwen2.5-7B-Base-SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.3">DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.4">SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.5">0.005</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.1"><math alttext="8\times 10^{-7}" class="ltx_Math" display="inline" id="A1.T4.11.11.1.m1.1"><semantics id="A1.T4.11.11.1.m1.1a"><mrow id="A1.T4.11.11.1.m1.1.1" xref="A1.T4.11.11.1.m1.1.1.cmml"><mn id="A1.T4.11.11.1.m1.1.1.2" xref="A1.T4.11.11.1.m1.1.1.2.cmml">8</mn><mo id="A1.T4.11.11.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.11.11.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.11.11.1.m1.1.1.3" xref="A1.T4.11.11.1.m1.1.1.3.cmml"><mn id="A1.T4.11.11.1.m1.1.1.3.2" xref="A1.T4.11.11.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.11.11.1.m1.1.1.3.3" xref="A1.T4.11.11.1.m1.1.1.3.3.cmml"><mo id="A1.T4.11.11.1.m1.1.1.3.3a" xref="A1.T4.11.11.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.11.11.1.m1.1.1.3.3.2" xref="A1.T4.11.11.1.m1.1.1.3.3.2.cmml">7</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.11.11.1.m1.1b"><apply id="A1.T4.11.11.1.m1.1.1.cmml" xref="A1.T4.11.11.1.m1.1.1"><times id="A1.T4.11.11.1.m1.1.1.1.cmml" xref="A1.T4.11.11.1.m1.1.1.1"></times><cn id="A1.T4.11.11.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.11.11.1.m1.1.1.2">8</cn><apply id="A1.T4.11.11.1.m1.1.1.3.cmml" xref="A1.T4.11.11.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.11.11.1.m1.1.1.3.1.cmml" xref="A1.T4.11.11.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.11.11.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.11.11.1.m1.1.1.3.2">10</cn><apply id="A1.T4.11.11.1.m1.1.1.3.3.cmml" xref="A1.T4.11.11.1.m1.1.1.3.3"><minus id="A1.T4.11.11.1.m1.1.1.3.3.1.cmml" xref="A1.T4.11.11.1.m1.1.1.3.3"></minus><cn id="A1.T4.11.11.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.11.11.1.m1.1.1.3.3.2">7</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.11.11.1.m1.1c">8\times 10^{-7}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.11.11.1.m1.1d">8 × 10 start_POSTSUPERSCRIPT - 7 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.12.12">
<td class="ltx_td ltx_align_left" id="A1.T4.12.12.2">Qwen2.5-7B-Base-SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.12.12.3">SimPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.12.12.4">SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.12.12.5">2.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.12.12.6">1.4</td>
<td class="ltx_td ltx_align_center" id="A1.T4.12.12.1"><math alttext="8\times 10^{-7}" class="ltx_Math" display="inline" id="A1.T4.12.12.1.m1.1"><semantics id="A1.T4.12.12.1.m1.1a"><mrow id="A1.T4.12.12.1.m1.1.1" xref="A1.T4.12.12.1.m1.1.1.cmml"><mn id="A1.T4.12.12.1.m1.1.1.2" xref="A1.T4.12.12.1.m1.1.1.2.cmml">8</mn><mo id="A1.T4.12.12.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.12.12.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.12.12.1.m1.1.1.3" xref="A1.T4.12.12.1.m1.1.1.3.cmml"><mn id="A1.T4.12.12.1.m1.1.1.3.2" xref="A1.T4.12.12.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.12.12.1.m1.1.1.3.3" xref="A1.T4.12.12.1.m1.1.1.3.3.cmml"><mo id="A1.T4.12.12.1.m1.1.1.3.3a" xref="A1.T4.12.12.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.12.12.1.m1.1.1.3.3.2" xref="A1.T4.12.12.1.m1.1.1.3.3.2.cmml">7</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.12.12.1.m1.1b"><apply id="A1.T4.12.12.1.m1.1.1.cmml" xref="A1.T4.12.12.1.m1.1.1"><times id="A1.T4.12.12.1.m1.1.1.1.cmml" xref="A1.T4.12.12.1.m1.1.1.1"></times><cn id="A1.T4.12.12.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.12.12.1.m1.1.1.2">8</cn><apply id="A1.T4.12.12.1.m1.1.1.3.cmml" xref="A1.T4.12.12.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.12.12.1.m1.1.1.3.1.cmml" xref="A1.T4.12.12.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.12.12.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.12.12.1.m1.1.1.3.2">10</cn><apply id="A1.T4.12.12.1.m1.1.1.3.3.cmml" xref="A1.T4.12.12.1.m1.1.1.3.3"><minus id="A1.T4.12.12.1.m1.1.1.3.3.1.cmml" xref="A1.T4.12.12.1.m1.1.1.3.3"></minus><cn id="A1.T4.12.12.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.12.12.1.m1.1.1.3.3.2">7</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.12.12.1.m1.1c">8\times 10^{-7}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.12.12.1.m1.1d">8 × 10 start_POSTSUPERSCRIPT - 7 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.13.13">
<td class="ltx_td ltx_align_left" id="A1.T4.13.13.2">Qwen2.5-7B-Base-SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.13.13.3">Pre-DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.13.13.4">DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.13.13.5">0.2</td>
<td class="ltx_td ltx_align_center" id="A1.T4.13.13.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.13.13.1"><math alttext="8\times 10^{-7}" class="ltx_Math" display="inline" id="A1.T4.13.13.1.m1.1"><semantics id="A1.T4.13.13.1.m1.1a"><mrow id="A1.T4.13.13.1.m1.1.1" xref="A1.T4.13.13.1.m1.1.1.cmml"><mn id="A1.T4.13.13.1.m1.1.1.2" xref="A1.T4.13.13.1.m1.1.1.2.cmml">8</mn><mo id="A1.T4.13.13.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.13.13.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.13.13.1.m1.1.1.3" xref="A1.T4.13.13.1.m1.1.1.3.cmml"><mn id="A1.T4.13.13.1.m1.1.1.3.2" xref="A1.T4.13.13.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.13.13.1.m1.1.1.3.3" xref="A1.T4.13.13.1.m1.1.1.3.3.cmml"><mo id="A1.T4.13.13.1.m1.1.1.3.3a" xref="A1.T4.13.13.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.13.13.1.m1.1.1.3.3.2" xref="A1.T4.13.13.1.m1.1.1.3.3.2.cmml">7</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.13.13.1.m1.1b"><apply id="A1.T4.13.13.1.m1.1.1.cmml" xref="A1.T4.13.13.1.m1.1.1"><times id="A1.T4.13.13.1.m1.1.1.1.cmml" xref="A1.T4.13.13.1.m1.1.1.1"></times><cn id="A1.T4.13.13.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.13.13.1.m1.1.1.2">8</cn><apply id="A1.T4.13.13.1.m1.1.1.3.cmml" xref="A1.T4.13.13.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.13.13.1.m1.1.1.3.1.cmml" xref="A1.T4.13.13.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.13.13.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.13.13.1.m1.1.1.3.2">10</cn><apply id="A1.T4.13.13.1.m1.1.1.3.3.cmml" xref="A1.T4.13.13.1.m1.1.1.3.3"><minus id="A1.T4.13.13.1.m1.1.1.3.3.1.cmml" xref="A1.T4.13.13.1.m1.1.1.3.3"></minus><cn id="A1.T4.13.13.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.13.13.1.m1.1.1.3.3.2">7</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.13.13.1.m1.1c">8\times 10^{-7}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.13.13.1.m1.1d">8 × 10 start_POSTSUPERSCRIPT - 7 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.14.14">
<td class="ltx_td ltx_align_left" id="A1.T4.14.14.2">Qwen2.5-7B-Base-SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.14.14.3">Pre-DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.14.14.4">SimPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.14.14.5">0.2</td>
<td class="ltx_td ltx_align_center" id="A1.T4.14.14.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.14.14.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.14.14.1.m1.1"><semantics id="A1.T4.14.14.1.m1.1a"><mrow id="A1.T4.14.14.1.m1.1.1" xref="A1.T4.14.14.1.m1.1.1.cmml"><mn id="A1.T4.14.14.1.m1.1.1.2" xref="A1.T4.14.14.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.14.14.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.14.14.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.14.14.1.m1.1.1.3" xref="A1.T4.14.14.1.m1.1.1.3.cmml"><mn id="A1.T4.14.14.1.m1.1.1.3.2" xref="A1.T4.14.14.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.14.14.1.m1.1.1.3.3" xref="A1.T4.14.14.1.m1.1.1.3.3.cmml"><mo id="A1.T4.14.14.1.m1.1.1.3.3a" xref="A1.T4.14.14.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.14.14.1.m1.1.1.3.3.2" xref="A1.T4.14.14.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.14.14.1.m1.1b"><apply id="A1.T4.14.14.1.m1.1.1.cmml" xref="A1.T4.14.14.1.m1.1.1"><times id="A1.T4.14.14.1.m1.1.1.1.cmml" xref="A1.T4.14.14.1.m1.1.1.1"></times><cn id="A1.T4.14.14.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.14.14.1.m1.1.1.2">1</cn><apply id="A1.T4.14.14.1.m1.1.1.3.cmml" xref="A1.T4.14.14.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.14.14.1.m1.1.1.3.1.cmml" xref="A1.T4.14.14.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.14.14.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.14.14.1.m1.1.1.3.2">10</cn><apply id="A1.T4.14.14.1.m1.1.1.3.3.cmml" xref="A1.T4.14.14.1.m1.1.1.3.3"><minus id="A1.T4.14.14.1.m1.1.1.3.3.1.cmml" xref="A1.T4.14.14.1.m1.1.1.3.3"></minus><cn id="A1.T4.14.14.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.14.14.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.14.14.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.14.14.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.15.15">
<td class="ltx_td ltx_align_left" id="A1.T4.15.15.2">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T4.15.15.3">DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.15.15.4">SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.15.15.5">0.01</td>
<td class="ltx_td ltx_align_center" id="A1.T4.15.15.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.15.15.1"><math alttext="5\times 10^{-7}" class="ltx_Math" display="inline" id="A1.T4.15.15.1.m1.1"><semantics id="A1.T4.15.15.1.m1.1a"><mrow id="A1.T4.15.15.1.m1.1.1" xref="A1.T4.15.15.1.m1.1.1.cmml"><mn id="A1.T4.15.15.1.m1.1.1.2" xref="A1.T4.15.15.1.m1.1.1.2.cmml">5</mn><mo id="A1.T4.15.15.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.15.15.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.15.15.1.m1.1.1.3" xref="A1.T4.15.15.1.m1.1.1.3.cmml"><mn id="A1.T4.15.15.1.m1.1.1.3.2" xref="A1.T4.15.15.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.15.15.1.m1.1.1.3.3" xref="A1.T4.15.15.1.m1.1.1.3.3.cmml"><mo id="A1.T4.15.15.1.m1.1.1.3.3a" xref="A1.T4.15.15.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.15.15.1.m1.1.1.3.3.2" xref="A1.T4.15.15.1.m1.1.1.3.3.2.cmml">7</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.15.15.1.m1.1b"><apply id="A1.T4.15.15.1.m1.1.1.cmml" xref="A1.T4.15.15.1.m1.1.1"><times id="A1.T4.15.15.1.m1.1.1.1.cmml" xref="A1.T4.15.15.1.m1.1.1.1"></times><cn id="A1.T4.15.15.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.15.15.1.m1.1.1.2">5</cn><apply id="A1.T4.15.15.1.m1.1.1.3.cmml" xref="A1.T4.15.15.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.15.15.1.m1.1.1.3.1.cmml" xref="A1.T4.15.15.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.15.15.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.15.15.1.m1.1.1.3.2">10</cn><apply id="A1.T4.15.15.1.m1.1.1.3.3.cmml" xref="A1.T4.15.15.1.m1.1.1.3.3"><minus id="A1.T4.15.15.1.m1.1.1.3.3.1.cmml" xref="A1.T4.15.15.1.m1.1.1.3.3"></minus><cn id="A1.T4.15.15.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.15.15.1.m1.1.1.3.3.2">7</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.15.15.1.m1.1c">5\times 10^{-7}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.15.15.1.m1.1d">5 × 10 start_POSTSUPERSCRIPT - 7 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.16.16">
<td class="ltx_td ltx_align_left" id="A1.T4.16.16.2">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T4.16.16.3">SimPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.16.16.4">SFT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.16.16.5">2.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.16.16.6">1.2</td>
<td class="ltx_td ltx_align_center" id="A1.T4.16.16.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.16.16.1.m1.1"><semantics id="A1.T4.16.16.1.m1.1a"><mrow id="A1.T4.16.16.1.m1.1.1" xref="A1.T4.16.16.1.m1.1.1.cmml"><mn id="A1.T4.16.16.1.m1.1.1.2" xref="A1.T4.16.16.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.16.16.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.16.16.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.16.16.1.m1.1.1.3" xref="A1.T4.16.16.1.m1.1.1.3.cmml"><mn id="A1.T4.16.16.1.m1.1.1.3.2" xref="A1.T4.16.16.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.16.16.1.m1.1.1.3.3" xref="A1.T4.16.16.1.m1.1.1.3.3.cmml"><mo id="A1.T4.16.16.1.m1.1.1.3.3a" xref="A1.T4.16.16.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.16.16.1.m1.1.1.3.3.2" xref="A1.T4.16.16.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.16.16.1.m1.1b"><apply id="A1.T4.16.16.1.m1.1.1.cmml" xref="A1.T4.16.16.1.m1.1.1"><times id="A1.T4.16.16.1.m1.1.1.1.cmml" xref="A1.T4.16.16.1.m1.1.1.1"></times><cn id="A1.T4.16.16.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.16.16.1.m1.1.1.2">1</cn><apply id="A1.T4.16.16.1.m1.1.1.3.cmml" xref="A1.T4.16.16.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.16.16.1.m1.1.1.3.1.cmml" xref="A1.T4.16.16.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.16.16.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.16.16.1.m1.1.1.3.2">10</cn><apply id="A1.T4.16.16.1.m1.1.1.3.3.cmml" xref="A1.T4.16.16.1.m1.1.1.3.3"><minus id="A1.T4.16.16.1.m1.1.1.3.3.1.cmml" xref="A1.T4.16.16.1.m1.1.1.3.3"></minus><cn id="A1.T4.16.16.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.16.16.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.16.16.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.16.16.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.17.17">
<td class="ltx_td ltx_align_left" id="A1.T4.17.17.2">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T4.17.17.3">Pre-DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.17.17.4">DPO</td>
<td class="ltx_td ltx_align_center" id="A1.T4.17.17.5">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T4.17.17.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.17.17.1"><math alttext="1\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T4.17.17.1.m1.1"><semantics id="A1.T4.17.17.1.m1.1a"><mrow id="A1.T4.17.17.1.m1.1.1" xref="A1.T4.17.17.1.m1.1.1.cmml"><mn id="A1.T4.17.17.1.m1.1.1.2" xref="A1.T4.17.17.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.17.17.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.17.17.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.17.17.1.m1.1.1.3" xref="A1.T4.17.17.1.m1.1.1.3.cmml"><mn id="A1.T4.17.17.1.m1.1.1.3.2" xref="A1.T4.17.17.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.17.17.1.m1.1.1.3.3" xref="A1.T4.17.17.1.m1.1.1.3.3.cmml"><mo id="A1.T4.17.17.1.m1.1.1.3.3a" xref="A1.T4.17.17.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.17.17.1.m1.1.1.3.3.2" xref="A1.T4.17.17.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.17.17.1.m1.1b"><apply id="A1.T4.17.17.1.m1.1.1.cmml" xref="A1.T4.17.17.1.m1.1.1"><times id="A1.T4.17.17.1.m1.1.1.1.cmml" xref="A1.T4.17.17.1.m1.1.1.1"></times><cn id="A1.T4.17.17.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.17.17.1.m1.1.1.2">1</cn><apply id="A1.T4.17.17.1.m1.1.1.3.cmml" xref="A1.T4.17.17.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.17.17.1.m1.1.1.3.1.cmml" xref="A1.T4.17.17.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.17.17.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.17.17.1.m1.1.1.3.2">10</cn><apply id="A1.T4.17.17.1.m1.1.1.3.3.cmml" xref="A1.T4.17.17.1.m1.1.1.3.3"><minus id="A1.T4.17.17.1.m1.1.1.3.3.1.cmml" xref="A1.T4.17.17.1.m1.1.1.3.3"></minus><cn id="A1.T4.17.17.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.17.17.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.17.17.1.m1.1c">1\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.17.17.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.18.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.18.18.2">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.18.18.3">Pre-DPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.18.18.4">SimPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.18.18.5">0.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.18.18.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.18.18.1"><math alttext="6\times 10^{-7}" class="ltx_Math" display="inline" id="A1.T4.18.18.1.m1.1"><semantics id="A1.T4.18.18.1.m1.1a"><mrow id="A1.T4.18.18.1.m1.1.1" xref="A1.T4.18.18.1.m1.1.1.cmml"><mn id="A1.T4.18.18.1.m1.1.1.2" xref="A1.T4.18.18.1.m1.1.1.2.cmml">6</mn><mo id="A1.T4.18.18.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T4.18.18.1.m1.1.1.1.cmml">×</mo><msup id="A1.T4.18.18.1.m1.1.1.3" xref="A1.T4.18.18.1.m1.1.1.3.cmml"><mn id="A1.T4.18.18.1.m1.1.1.3.2" xref="A1.T4.18.18.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T4.18.18.1.m1.1.1.3.3" xref="A1.T4.18.18.1.m1.1.1.3.3.cmml"><mo id="A1.T4.18.18.1.m1.1.1.3.3a" xref="A1.T4.18.18.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T4.18.18.1.m1.1.1.3.3.2" xref="A1.T4.18.18.1.m1.1.1.3.3.2.cmml">7</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.18.18.1.m1.1b"><apply id="A1.T4.18.18.1.m1.1.1.cmml" xref="A1.T4.18.18.1.m1.1.1"><times id="A1.T4.18.18.1.m1.1.1.1.cmml" xref="A1.T4.18.18.1.m1.1.1.1"></times><cn id="A1.T4.18.18.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.18.18.1.m1.1.1.2">6</cn><apply id="A1.T4.18.18.1.m1.1.1.3.cmml" xref="A1.T4.18.18.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T4.18.18.1.m1.1.1.3.1.cmml" xref="A1.T4.18.18.1.m1.1.1.3">superscript</csymbol><cn id="A1.T4.18.18.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T4.18.18.1.m1.1.1.3.2">10</cn><apply id="A1.T4.18.18.1.m1.1.1.3.3.cmml" xref="A1.T4.18.18.1.m1.1.1.3.3"><minus id="A1.T4.18.18.1.m1.1.1.3.3.1.cmml" xref="A1.T4.18.18.1.m1.1.1.3.3"></minus><cn id="A1.T4.18.18.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T4.18.18.1.m1.1.1.3.3.2">7</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.18.18.1.m1.1c">6\times 10^{-7}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.18.18.1.m1.1d">6 × 10 start_POSTSUPERSCRIPT - 7 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the optimal hyperparameter settings obtained through a two-stage tuning process for different model and method configurations in the experiments.  It lists the policy model (Llama-3B or Qwen-2.5), the preference optimization method (DPO or SimPO) and Pre-DPO variants, the reference model used, and the optimized hyperparameters (β, γ, and learning rate) for each configuration.  These values represent the settings that yielded the best performance on the AlpacaEval and Arena-Hard benchmarks in the experiments described in the paper. The table helps readers understand the specific settings used to achieve the reported experimental results and aids in reproducibility of those experiments.
> <details>
> <summary>read the caption</summary>
> Table 4: Optimal hyperparameters for different experiments.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15843/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15843/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}