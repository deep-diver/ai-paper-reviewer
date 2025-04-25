---
title: "ToolRL: Reward is All Tool Learning Needs"
summary: "ToolRL: RL can significantly enhance tool learning in LLMs by careful reward design, improving performance and generalization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 University of Illinois Urbana-Champaign",]
showSummary: true
date: 2025-04-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13958 {{< /keyword >}}
{{< keyword icon="writer" >}} Cheng Qian et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13958" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13958" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13958/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Large Language Models (LLMs) often struggle to generalize in tool use scenarios. While Supervised Fine-Tuning (SFT) is common, it falls short in unfamiliar situations. Reinforcement Learning (RL), especially with R1-like models, shows promise in reasoning and generalization. However, designing rewards for tool use is challenging due to multiple tools, diverse parameters, and the need for fine-grained feedback that coarse-grained reward signals like answer matching can't provide.



This paper introduces **ToolRL**, a comprehensive study on reward design for tool selection and application within RL.  The study systematically explores reward strategies, analyzing their types, scales, granularity, and temporal dynamics. A principled reward design, tailored for tool use tasks is proposed and applied to train LLMs using Group Relative Policy Optimization (GRPO). Empirical results across benchmarks demonstrate that **ToolRL** enables robust, scalable, and stable training, leading to substantial improvements over base and SFT models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Longer reasoning traces aren't always better; length rewards can hinder performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Dynamic reward scaling helps models adapt from simple to complex behaviors. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Detailed reward breakdown improves stability and learning effectiveness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers RL application to TIR, presenting insights for reward design. Its generalizable framework, validated by GRPO, boosts tool use, guiding future LLM-agent research and enhancing automated solutions. It opens avenues for exploring complex reasoning and collaboration.

------
#### Visual Insights



![](https://arxiv.org/html/2504.13958/extracted/6367558/figures/introduction.png)

> 🔼 This figure uses an example to compare the performance of Supervised Fine-Tuning (SFT) and Reinforcement Learning (RL) methods in handling tool-integrated reasoning tasks.  The example involves determining the distance between two cities using a tool designed for calculating date differences. The SFT model, initialized with a distilled deep-thinking trajectory, overthinks the problem, attempting to force an inappropriate tool to work.  In contrast, the RL model, trained with the proposed Group Relative Policy Optimization (GRPO) approach, correctly identifies the tool's inadequacy and rejects it, demonstrating improved generalization and avoidance of overthinking.
> <details>
> <summary>read the caption</summary>
> Figure 1: SFT on distilled deep-thinking trajectories suffers from overthinking and limited generalization.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Overall Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.3">Non-Live AST Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.4">Non-Live Exec Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.5">Live Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.6">Multi Turn Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.7">Relevance Detection</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.8">Irrelevance Detection</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.2.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2">19.41%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.3">16.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.4">13.18%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.5">35.58%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.6">0.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.7">44.44%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.8">82.49%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.3.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2">40.21%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3">65.12%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.4">61.11%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.5">56.69%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.6">1.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.7">94.44%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.8">60.14%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.4.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.2">40.67%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.3">59.94%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4">59.84%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.5">59.31%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.6">1.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.8">71.34%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.5.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.2"><span class="ltx_text ltx_ulem_uline" id="S4.T1.1.1.5.2.1">42.95%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.3">77.65%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4">69.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5">55.73%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.6">1.88%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.8">48.40%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.6.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.2">40.93%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.3">70.54%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.4">60.79%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5">56.33%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6">1.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.7">94.44%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.8">58.63%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.7.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.2">38.32%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3">79.40%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.4">70.11%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.5">45.24%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6">0.87%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.8">18.09%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.8.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.2.1">46.20%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.3">77.96%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.4">76.98%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.5">60.73%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.6">2.25%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8">56.44%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.9.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.9.2">33.04%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.9.3">42.52%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.9.4">40.80%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.9.5">53.96%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.9.6">1.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.9.7">64.71%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.9.8">56.01%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.10.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.10.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.2">34.08%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.3">69.29%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.4">61.50%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.5">41.40%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.6">0.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.7">94.44%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.8">8.11%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.11.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.11.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.2">41.97%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.3">62.85%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.4">54.73%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.5">59.17%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.6">0.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.7">77.78%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.8">75.12%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.12.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.2">45.80%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.3">78.29%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.4">71.09%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.5">58.76%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.6">5.12%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.7">94.12%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.8">54.70%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.13.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.13.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.2">46.42%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.3">76.21%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.4">68.93%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.5">64.15%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.6">1.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.8">71.76%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.14.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.14.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.2"><span class="ltx_text ltx_ulem_uline" id="S4.T1.1.1.14.2.1">51.15%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.3">82.42%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.4">78.52%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.5">67.78%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.6">4.88%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.7">94.12%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.8">73.87%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.15.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.2.1">52.98%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.3">81.58%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.4">79.43%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.5">73.78%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.6">3.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.7">88.24%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.8">84.85%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.16.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.2">41.97%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.3">66.02%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.4">70.11%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.5">53.51%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.6">4.25%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.7">76.47%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.8">62.66%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.17">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.17.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.17.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.2">34.08%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.3">69.29%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.4">66.68%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.5">41.4%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.6">0.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.7">94.44%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.8">8.11%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.18">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.18.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.18.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.2">36.53%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.3">45.15%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.4">53.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.5">57.13%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.6">0.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.7">72.22%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.8">72.32%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.19">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.19.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.19.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.2">42.02%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.3">83.90%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.4">72.62%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.5">51.84%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.6">0.25%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.8">29.66%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.20">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.20.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.20.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.2">39.25%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.3">80.69%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.4">74.34%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.5">46.51%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.6">0.25%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.8">14.19%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.21">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.21.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.21.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.2"><span class="ltx_text ltx_ulem_uline" id="S4.T1.1.1.21.2.1">46.68%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.3">79.33%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.4">78.16%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.5">63.17%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.6">0.38%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.8">52.92%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.22">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.22.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.22.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.22.2.1">58.38%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.3">86.17%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.4">78.25%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.5">74.9%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.6">18.12%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.7">83.33%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.8">76.68%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.23.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.23.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.23.2">22.09%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.23.3">17.44%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.23.4">14.57%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.23.5">43.85%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.23.6">0.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.23.7">77.78%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.23.8">66.07%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.24">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.24.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.24.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.2">41.22%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.3">64.27%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.4">62.18%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.5">58.37%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.6">0.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.7">66.67%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.8">71.12%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.25">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.25.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.25.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.25.2.1">44.16%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.3">65.42%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.4">67.02%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.5">63.04%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.6">1.38%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.7">77.78%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.8">78.25%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.26">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.26.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.26.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.2">41.62%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.3">68.10%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.4">69.88%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.5">52.98%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.6">3.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.7">94.12%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.8">56.29%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.27">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.27.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.27.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.2">42.54%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.3">65.15%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.4">68.98%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.5">59.40%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.6">0.88%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.7">72.22%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.8">65.80%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.28">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.28.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.28.2">42.98%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.28.3">84.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.28.4">72.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.28.5">52.80%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.28.6">2.88%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.28.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.28.8">31.94%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.29">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.1.29.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.29.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.29.2"><span class="ltx_text ltx_ulem_uline" id="S4.T1.1.1.29.2.1">44.10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.29.3">74.38%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.29.4">75.18%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.29.5">56.86%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.29.6">1.37%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.29.7">94.44%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.29.8">62.23%</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the main results of evaluating various LLMs on the BFCL v3 benchmark.  It compares the performance of different models, including those trained with supervised fine-tuning (SFT), reinforcement learning (RL) using Proximal Policy Optimization (PPO), and reinforcement learning using Group Relative Policy Optimization (GRPO), both with and without cold starts (i.e., starting from untrained models). The metrics shown assess overall accuracy and performance across several sub-tasks within the benchmark, providing a comprehensive evaluation of each model's tool-integrated reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Table 1: BFCL V3 Benchmark Results (Main Result)
> </details>





### In-depth insights


#### ToolRL Design
The paper emphasizes the importance of reward design for tool use in LLMs, terming it ToolRL. It highlights that **SFT struggles with generalization** in complex tool use scenarios, while RL offers promise. A key challenge is designing rewards that effectively guide LLMs in selecting and applying tools, given the diversity of tools, parameters, and the need for fine-grained feedback. The paper explores various reward strategies, analyzing their types, scales, granularity, and temporal dynamics to devise a principled reward design. The research shows how **reward design enhances LLM tool use capabilities and generalization performance.**

#### GRPO for Tool Use
**GRPO's role is pivotal for tool use** in LLMs, offering a stable training via grouped advantage normalization. **Its flexible reward function** adapts objectives, weighting sub-tasks, and regulating tool use frequency. Extending GRPO improves LLMs' tool interaction, crucial for various scenarios. **The method tackles the limitations of SFT**, like overfitting, by leveraging RL to refine tool integration. GRPO addresses the strategic flexibility needed for optimal tool use, crucial in open-ended settings. GRPO-based reward design achieves a consistent, significant uplift in the model's performance and task generalization, marking a substantial advancement in tool use capabilities. 

#### Reward Dynamics
The temporal dynamics of rewards are critical for effective tool learning.  Specifically, reward scaling, the relative importance of different reward components over time, significantly impacts learning. An initial focus on format adherence, ensuring structural compliance, can be beneficial in early training stages.  Subsequently, shifting emphasis towards correctness, the semantic accuracy of tool calls, promotes robust generalization.  Abrupt transitions between reward scales, however, can disrupt learning. A more gradual, dynamic adjustment of reward scales, adapting to model maturity, appears to better support the learning trajectory.  Such a dynamic approach facilitates a smoother transition from simpler format objectives to the more complex goal of tool use correctness. Thus **carefully managing the temporal aspect of rewards can significantly enhance the overall performance and stability of the learning process.**

#### Granular Rewards
**Granular rewards** enable clear assessments. In our experiments, reward shaping, with fine-grained components, leads to **stable and effective learning**, aiding nuanced assessment of the model's adherence. Coarse rewards reduce such information, hindering performance. Reward granularity significantly impacts the training process, and affects model learning, and generalization. A **deeper reward decomposition leads to better outcomes**, proving significant for stable and effective policy learning. Effective reward design emphasizes fine reward decomposition over reliance on a single binary criterion.

#### Beyond SFT TIR
Beyond Supervised Fine-Tuning (SFT) for Tool-Integrated Reasoning (TIR) suggests exploring alternative training paradigms. **SFT limitations in generalization and adaptability**, especially in open-ended or multi-step settings, motivate the need for new techniques. The potential of **Reinforcement Learning (RL) to enhance agentic tool-using capabilities** should be investigated, and focus on **optimal RL design for TIR** is needed. This shift addresses the limitations of merely imitating cues without genuine deep thinking, and opens a path for LLMs to strategically use tools. RL methods offer a promising avenue for improving LLMs' ability to interact with external tools effectively.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13958/x1.png)

> 🔼 This figure shows a comparison of different model training approaches on three benchmark datasets. The left panel displays the overall accuracy of each method on the BFCL, Bamboogle, and API-Bank datasets. The right panel shows the trends of format and correctness rewards during training for each of the four models (Qwen-1.5B, Qwen-2.5B, Qwen-7B, LLaMa-3.2B) using the GRPO Cold Start method with the proposed reward design.  The results clearly demonstrate that the GRPO Cold Start approach consistently achieves the highest performance across all datasets, exhibiting a sharp increase in reward values throughout the training process. This highlights the effectiveness of the proposed reward design in improving the tool-use capabilities of LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Main results (left) and reward trends over training steps for GRPO Cold Start across four models (right). GRPO Cold Start, equipped with our proposed reward design, consistently achieves the highest performance, with reward curves showing a rapid increase during training.
> </details>



![](https://arxiv.org/html/2504.13958/extracted/6367558/figures/reward.png)

> 🔼 This figure illustrates the process of Tool-Integrated Reasoning (TIR) rollout and how the format and correctness rewards are calculated.  The TIR rollout starts with a user query and available tools. The LLM generates a reasoning trace, which may include tool calls and responses.  Each step involves a <think> segment, which shows the model's reasoning process. If a tool is used, a <tool_call> segment, containing the tool name and parameters, is generated; this is followed by an <obs> segment that provides the observation after tool execution. The LLM may also generate a <response> to directly answer the query without invoking a tool.  The final reward is the sum of the format and correctness rewards. The format reward is binary (1 if the format is correct, 0 otherwise), indicating whether the generated sequence of <think>, <tool_call>, <obs>, and <response> follows the expected structure. The correctness reward is based on a comparison between predicted and ground truth tool calls. It assesses the accuracy in three aspects: matching tool names, parameter names, and parameter contents. Each aspect produces a score, and these scores are aggregated to compute the final correctness reward.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of TIR rollout and calculation of format and correctness reward.
> </details>



![](https://arxiv.org/html/2504.13958/x2.png)

> 🔼 This figure shows the system prompt used during the rollout phase of Tool-Integrated Reasoning (TIR). The prompt instructs the large language model (LLM) on how to interact with provided tools, emphasizing the use of special tokens (<think>, <tool_call>, <response>) to structure its reasoning process. It specifies the steps for each turn, including recalling context, deciding on tool usage, and generating a response. The output format section provides details on how to structure the tool calls in JSON format. Finally, it includes some important notes to guide the LLM's behavior. This structured prompt ensures consistent and interpretable LLM outputs during the rollout and training phases.
> <details>
> <summary>read the caption</summary>
> Figure 4: The system prompt used for TIR’s rollout.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.fig1.1.1">
<tr class="ltx_tr" id="S4.T3.fig1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.fig1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.fig1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.1.2.1">Overall Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.fig1.1.1.1.3">Level 1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.fig1.1.1.1.4">Level 2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.fig1.1.1.1.5">Level 3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.fig1.1.1.2.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.2.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.2.2">30.65%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.2.3">28.32%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.2.4">35.82%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.2.5">35.11%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.3.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.3.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.3.2">53.60%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.3.3">57.14%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.3.4">50.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.3.5">44.27%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.4.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.4.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.4.2">47.07%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.4.3">52.88%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.4.4">52.24%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.4.5">26.72%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.5.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.5.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.5.2">57.12%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.5.3">60.9%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.5.4">50.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.5.5">48.85%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.6.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.6.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.6.2"><span class="ltx_text ltx_ulem_uline" id="S4.T3.fig1.1.1.6.2.1">61.31%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.6.3">64.16%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.6.4">58.21%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.6.5">54.20%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.7.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.7.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.7.2">40.54%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.7.3">44.61%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.7.4">31.34%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.7.5">32.82%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.8.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.8.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.8.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.8.2.1">63.15</span>%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.8.3">70.68%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.8.4">61.19%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.8.5">41.22%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.fig1.1.1.9.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.9.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.9.2">51.59%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.9.3">59.65%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.9.4">32.84%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.9.5">36.64%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.10.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.10.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.10.2">52.76%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.10.3">59.65%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.10.4">50.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.10.5">32.82%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.11">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.11.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.11.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.11.2">50.92%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.11.3">55.64%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.11.4">43.28%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.11.5">40.46%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.12">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.12.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.12.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.12.2"><span class="ltx_text ltx_ulem_uline" id="S4.T3.fig1.1.1.12.2.1">65.16%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.12.3">67.92%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.12.4">55.22%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.12.5">61.83%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.13.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.13.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.13.2">62.48%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.13.3">68.67%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.13.4">58.21%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.13.5">45.80%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.14">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.14.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.14.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.14.2">57.62%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.14.3">64.66%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.14.4">59.70%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.14.5">35.11%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.15">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.15.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.15.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.15.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.15.2.1">67.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.15.3">73.43%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.15.4">67.16%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.15.5">47.33%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.fig1.1.1.16.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.16.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.16.2">62.48%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.16.3">70.68%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.16.4">49.25%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.16.5">44.27%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.17">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.17.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.17.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.17.2">50.59%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.17.3">55.89%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.17.4">50.75%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.17.5">34.35%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.18">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.18.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.18.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.18.2">47.07%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.18.3">51.13%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.18.4">34.33%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.18.5">41.22%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.19">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.19.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.19.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.19.2"><span class="ltx_text ltx_ulem_uline" id="S4.T3.fig1.1.1.19.2.1">63.15%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.19.3">72.43%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.19.4">58.21%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.19.5">37.40%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.20">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.20.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.20.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.20.2">54.10%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.20.3">61.40%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.20.4">52.24%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.20.5">32.82%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.21">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.21.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.21.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.21.2">61.64%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.21.3">68.67%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.21.4">44.78%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.21.5">48.85%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.22">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.22.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.22.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.22.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.22.2.1">64.66%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.22.3">73.93%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.22.4">61.19%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.22.5">38.17%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.fig1.1.1.23.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.23.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.23.2">40.54%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.23.3">44.86%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.23.4">29.85%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig1.1.1.23.5">32.82%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.24">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.24.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.24.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.24.2">52.76%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.24.3">60.65%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.24.4">35.82%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.24.5">37.40%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.25">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.25.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.25.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.25.2">43.89%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.25.3">53.88%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.25.4">29.85%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.25.5">20.61%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.26">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.26.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.26.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.26.2">57.79%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.26.3">63.16%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.26.4">47.76%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.26.5">46.56%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.27">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.27.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.27.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.27.2"><span class="ltx_text ltx_ulem_uline" id="S4.T3.fig1.1.1.27.2.1">56.78%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.27.3">63.60%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.27.4">41.79%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.27.5">43.51%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.28">
<td class="ltx_td ltx_align_left" id="S4.T3.fig1.1.1.28.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.28.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.28.2">55.78%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.28.3">60.65%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.28.4">41.79%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig1.1.1.28.5">48.09%</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig1.1.1.29">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.fig1.1.1.29.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.29.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.fig1.1.1.29.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig1.1.1.29.2.1">59.13%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.fig1.1.1.29.3">65.66%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.fig1.1.1.29.4">52.24%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.fig1.1.1.29.5">42.75%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples where the Qwen-2.5-3B language model, fine-tuned using Group Relative Policy Optimization (GRPO) with a cold start (no pre-training), successfully identifies irrelevant tools in scenarios requiring tool-integrated reasoning.  The examples highlight the model's ability to generalize and make appropriate decisions even when faced with tools that are not suitable for solving the given problem, demonstrating robust performance in handling irrelevant tool detection.
> <details>
> <summary>read the caption</summary>
> Table 4: Cases of Qwen2.5-3B-Instruct (GRPO Cold Start) generalizing to irrelevant tool detection goals.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.fig2.1.1">
<tr class="ltx_tr" id="S4.T3.fig2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.fig2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.fig2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.1.2.1">Accuracy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.fig2.1.1.1.3">Avg Num Tool Call</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.fig2.1.1.2.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.2.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig2.1.1.2.2">20.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig2.1.1.2.3">0.61</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.3.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.3.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.3.2">24.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.3.3">0.78</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.4.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.4.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.4.2">23.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.4.3">1.25</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.5.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.5.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.5.2">36.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.5.3">1.06</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.6.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.6.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.6.2"><span class="ltx_text ltx_ulem_uline" id="S4.T3.fig2.1.1.6.2.1">38.4%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.6.3">0.96</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.7.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.7.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.7.2">23.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.7.3">2.38</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.8.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.8.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.8.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.8.2.1">44.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.8.3">1.19</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.fig2.1.1.9.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.9.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig2.1.1.9.2">52.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig2.1.1.9.3">1.77</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.10.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.10.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.10.2">54.4%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.10.3">0.86</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.11">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.11.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.11.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.11.2">49.6%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.11.3">0.92</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.12">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.12.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.12.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.12.2">43.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.12.3">1.04</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.13.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.13.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.13.2"><span class="ltx_text ltx_ulem_uline" id="S4.T3.fig2.1.1.13.2.1">56.8%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.13.3">0.99</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.14">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.14.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.14.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.14.2">40.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.14.3">1.14</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.15">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.15.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.15.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.15.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.15.2.1">60.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.15.3">1.32</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.fig2.1.1.16.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.16.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig2.1.1.16.2"><span class="ltx_text ltx_ulem_uline" id="S4.T3.fig2.1.1.16.2.1">69.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig2.1.1.16.3">1.42</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.17">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.17.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.17.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.17.2">28.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.17.3">3.71</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.18">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.18.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.18.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.18.2">30.4%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.18.3">1.06</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.19">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.19.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.19.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.19.2">45.6%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.19.3">3.54</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.20">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.20.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.20.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.20.2">29.6%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.20.3">3.70</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.21">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.21.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.21.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.21.2">48.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.21.3">1.25</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.22">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.22.1">Qwen2.5-7B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.22.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.22.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.22.2.1">72.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.22.3">1.63</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.fig2.1.1.23.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.23.1.1">Raw</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig2.1.1.23.2">34.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.fig2.1.1.23.3">1.25</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.24">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.24.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.24.1.1">SFT400</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.24.2">44.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.24.3">0.98</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.25">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.25.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.25.1.1">SFT4k</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.25.2"><span class="ltx_text ltx_ulem_uline" id="S4.T3.fig2.1.1.25.2.1">48.8%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.25.3">0.98</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.26">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.26.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.26.1.1">SFT400+PPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.26.2">39.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.26.3">1.33</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.27">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.27.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.27.1.1">SFT400+GRPO</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.27.2">45.6%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.27.3">1.00</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.28">
<td class="ltx_td ltx_align_left" id="S4.T3.fig2.1.1.28.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.28.1.1">PPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.28.2">29.6%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.fig2.1.1.28.3">1.42</td>
</tr>
<tr class="ltx_tr" id="S4.T3.fig2.1.1.29">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.fig2.1.1.29.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.29.1.1">Ours, GRPO Cold Start</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.fig2.1.1.29.2"><span class="ltx_text ltx_font_bold" id="S4.T3.fig2.1.1.29.2.1">52.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.fig2.1.1.29.3">0.89</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the BFCL V3 benchmark, focusing on the impact of incorporating a length-based reward into the training process. It compares the performance of models trained with and without the length reward, across various metrics such as overall accuracy, accuracy across different task difficulty levels, and success rates on multi-turn tasks.  The table helps assess how rewarding longer reasoning traces affects the overall efficacy and generalization capabilities of the large language model in tool-integrated reasoning.
> <details>
> <summary>read the caption</summary>
> Table 5: BFCL V3 Benchmark Results (Length)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_minipage ltx_align_middle" id="S4.T4.1" style="width:216.8pt;">
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.1">User: I would like to buy a movie ticket in San Jose at 11 o’clock in the night.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2">
<td class="ltx_td ltx_align_left" id="S4.T4.1.2.1">Tools Available:</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3">
<td class="ltx_td ltx_align_left" id="S4.T4.1.3.1"><span class="ltx_text ltx_font_typewriter" id="S4.T4.1.3.1.1">1. Movies_1_BuyMovieTickets(movie_name, number_of_tickets, ...)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.4.1">→ Buy tickets for a movie at a specific time and location.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5">
<td class="ltx_td ltx_align_left" id="S4.T4.1.5.1"><span class="ltx_text ltx_font_typewriter" id="S4.T4.1.5.1.1">2. Movies_1_FindMovies(location, ...)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6">
<td class="ltx_td ltx_align_left" id="S4.T4.1.6.1">→ Search movies by location, genre, or format.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7">
<td class="ltx_td ltx_align_left" id="S4.T4.1.7.1"><span class="ltx_text ltx_font_typewriter" id="S4.T4.1.7.1.1">3. Movies_1_GetTimesForMovie(movie_name, location, ...)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.8">
<td class="ltx_td ltx_align_left" id="S4.T4.1.8.1">→ Get showtimes for a movie on a specific date and location.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.9.1"><span class="ltx_text" id="S4.T4.1.9.1.1" style="color:#0000FF;">&lt;think&gt; The user wants to buy a movie ticket in San Jose at 11 PM. The available</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.10">
<td class="ltx_td ltx_align_left" id="S4.T4.1.10.1">tool, <span class="ltx_text ltx_font_typewriter" id="S4.T4.1.10.1.1">Movies_1_BuyMovieTickets</span>, allows us to purchase movie tickets with the</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.11">
<td class="ltx_td ltx_align_left" id="S4.T4.1.11.1">required details such as movie name, number of tickets, show date, location, show time,</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.12">
<td class="ltx_td ltx_align_left" id="S4.T4.1.12.1">and show type. We need to find the movie name and the show date. However, the user</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.13">
<td class="ltx_td ltx_align_left" id="S4.T4.1.13.1"><span class="ltx_text" id="S4.T4.1.13.1.1" style="color:#00FF00;">did not specify the movie name or the show date. We can infer the show date from the</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.14">
<td class="ltx_td ltx_align_left" id="S4.T4.1.14.1">current date, but we need to know the movie name to proceed with purchase. <span class="ltx_text" id="S4.T4.1.14.1.1" style="color:#0000FF;">&lt;/think&gt;</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.15">
<td class="ltx_td ltx_align_left" id="S4.T4.1.15.1">
<span class="ltx_text" id="S4.T4.1.15.1.1" style="color:#7030A0;">&lt;response&gt;</span> To assist in purchasing a movie ticket, <span class="ltx_text" id="S4.T4.1.15.1.2" style="color:#00FF00;">I need the name of the movie and</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.16.1"><span class="ltx_text" id="S4.T4.1.16.1.1" style="color:#00FF00;">the specific date of the show. Could you please provide this information? <span class="ltx_text" id="S4.T4.1.16.1.1.1" style="color:#7030A0;">&lt;/response&gt;</span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the BFCL V3 benchmark, focusing on the impact of reward scaling on model performance.  It compares the performance of different model sizes (Qwen-2.5 1.5B, 3B, 7B and Llama-3.2 3B) across various training scenarios: a baseline (Original), where the reward scale is not adjusted; an equal-weight scenario (Equal Max), where the maximum correctness and format reward values are equalized; a two-stage approach (Two Stage), with different weighting of rewards in the early and late stages of training; and a dynamically adjusted reward scale (Dynamic). The results illustrate how reward scaling affects model performance in terms of overall accuracy and the ability to perform other tasks such as non-live AST accuracy, non-live execution accuracy, live accuracy, multi-turn accuracy, relevance detection, and irrelevance detection.
> <details>
> <summary>read the caption</summary>
> Table 6: BFCL V3 Benchmark Results (Scale)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_minipage ltx_align_middle" id="S4.T4.2" style="width:216.8pt;">
<tr class="ltx_tr" id="S4.T4.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.2.1.1">User: What is the slope of the line which is perpendicular to the line with the</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2">
<td class="ltx_td ltx_align_left" id="S4.T4.2.2.1">equation y = 3x + 2?</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.3">
<td class="ltx_td ltx_align_left" id="S4.T4.2.3.1">Tools Available:</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.4">
<td class="ltx_td ltx_align_left" id="S4.T4.2.4.1"><span class="ltx_text ltx_font_typewriter" id="S4.T4.2.4.1.1">1. find_critical_points(function, variable, range=[0.0, 3.4])</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.5">
<td class="ltx_td ltx_align_left" id="S4.T4.2.5.1">→ Find critical points of a function with respect to a variable, optionally</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.6">
<td class="ltx_td ltx_align_left" id="S4.T4.2.6.1">within a range.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.7.1"><span class="ltx_text" id="S4.T4.2.7.1.1" style="color:#0000FF;">&lt;think&gt; The problem is asking for the slope of a line that is perpendicular</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.8">
<td class="ltx_td ltx_align_left" id="S4.T4.2.8.1">to the line with the equation y = 3x + 2. The slope of the given line is 3. The slope</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.9">
<td class="ltx_td ltx_align_left" id="S4.T4.2.9.1">of a line that is perpendicular to another line is the negative reciprocal of the</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.10">
<td class="ltx_td ltx_align_left" id="S4.T4.2.10.1">original line’s slope. So, the slope of the line perpendicular to y = 3x + 2 would be -1/3.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.11">
<td class="ltx_td ltx_align_left" id="S4.T4.2.11.1">The given tool <span class="ltx_text ltx_font_typewriter" id="S4.T4.2.11.1.1">find_critical_points</span> is <span class="ltx_text" id="S4.T4.2.11.1.2" style="color:#00FF00;">not relevant to finding the slope of a line and</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.12">
<td class="ltx_td ltx_align_left" id="S4.T4.2.12.1"><span class="ltx_text" id="S4.T4.2.12.1.1" style="color:#00FF00;">cannot be used to solve this problem. <span class="ltx_text" id="S4.T4.2.12.1.1.1" style="color:#0000FF;">&lt;/think&gt;</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.13">
<td class="ltx_td ltx_align_left" id="S4.T4.2.13.1">
<span class="ltx_text" id="S4.T4.2.13.1.1" style="color:#7030A0;">&lt;response&gt;</span> The slope of the line that is perpendicular to the line with the</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.14.1">equation y = 3x + 2 is <span class="ltx_text" id="S4.T4.2.14.1.1" style="color:#00FF00;">-1/3. <span class="ltx_text" id="S4.T4.2.14.1.1.1" style="color:#7030A0;">&lt;/response&gt;</span></span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the BFCL V3 benchmark, categorized by different levels of reward granularity (fine-grained, intermediate, and coarse).  It shows the performance of several language models across various metrics, including overall accuracy, accuracy on specific subsets of the benchmark (non-live AST, non-live execution, live, and multi-turn), and accuracy on relevance and irrelevance detection tasks.  The purpose is to demonstrate the impact of reward granularity on the model's ability to effectively use tools.
> <details>
> <summary>read the caption</summary>
> Table 7: BFCL V3 Benchmark Results (Granularity)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1">
<tr class="ltx_tr" id="S5.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.2.1">Overall Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.3">Non-Live AST Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.4">Non-Live Exec Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.5">Live Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.6">Multi Turn Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.7">Relevance Detection</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.8">Irrelevance Detection</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.2.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.1">46.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.3">77.96%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.4">76.98%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.5">60.73%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.6">2.25%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.7">100.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.8">56.44%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.3">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.3.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1.1">w/ Length Reward</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.2"><span class="ltx_text ltx_ulem_uline" id="S5.T5.1.1.3.2.1">33.23%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.3">70.58%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.4">71.36%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.5">35.63%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.6">0.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.7">94.44%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.8">4.52%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.4.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.4.1.1">Dynamic</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.2">28.51%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.3">53.23%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.4">48.23%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.5">38.07%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.6">0.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.7">55.56%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.8">25.08%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.5.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.2.1">52.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.3">81.58%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.4">79.43%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.5">73.78%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.6">3.75%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.7">88.24%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.8">84.85%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.6.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.6.1.1">w/ Length reward</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.2"><span class="ltx_text ltx_ulem_uline" id="S5.T5.1.1.6.2.1">48.89%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.3">77.83%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.4">78.61%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.5">63.56%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6">4.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.7">88.24%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.8">71.22%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.7.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.7.1.1">Dynamic</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.2">48.24%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.3">77.60%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.4">79.11%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.5">63.22%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.6">3.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.8">68.53%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.8.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.8.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.2"><span class="ltx_text ltx_ulem_uline" id="S5.T5.1.1.8.2.1">44.10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.3">74.38%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.4">75.18%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.5">56.86%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.6">1.37%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.7">94.44%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.8">62.23%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.9">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.9.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.9.1.1">w/ Length reward</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.9.2.1">44.98%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.3">78.02%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.4">77.54%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.5">56.55%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.6">1.25%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.8">63.76%</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.1.1.10.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T5.1.1.10.1.1">Dynamic</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.10.2">43.15%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.10.3">75.50%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.10.4">71.64%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.10.5">56.06%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.10.6">1.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.10.7">100.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.10.8">57.82%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 provides detailed hyperparameters used during the Group Relative Policy Optimization (GRPO) training process.  It is categorized into Data Configuration (batch sizes, prompt and response lengths), Optimization (learning rate, KL loss usage), Rollout Configuration (rollout name, GPU memory utilization, number of rollouts), and Training & Logging (save and test frequencies, total epochs). These settings are crucial for understanding the specifics of the GRPO training and allow for reproducibility of the results.
> <details>
> <summary>read the caption</summary>
> Table 8: Configuration for GRPO training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.1.1">
<tr class="ltx_tr" id="S5.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.2.1">Overall Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.3">Non-Live AST Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.4">Non-Live Exec Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.5">Live Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.6">Multi Turn Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.7">Relevance Detection</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.8">Irrelevance Detection</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.2.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.2.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.2.2.1">46.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.3">77.96%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.4">76.98%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.5">60.73%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.6">2.25%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.7">100.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.8">56.44%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.3">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.3.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.3.1.1">Equal max</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.2">39.47%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.3">78.56%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.4">75.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.5">45.45%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.6">2.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.8">16.44%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.4.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.4.1.1">Two stage</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.2">38.85%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.3">77.96%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.4">76.23%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.5">44.51%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.6">2.25%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.8">10.61%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.5">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.5.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.5.1.1">Dynamic</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.2"><span class="ltx_text ltx_ulem_uline" id="S5.T6.1.1.5.2.1">45.71%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.3">78.31%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.4">75.73%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.5">58.91%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.6">2.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.8">57.20%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.6.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.6.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.6.2"><span class="ltx_text ltx_ulem_uline" id="S5.T6.1.1.6.2.1">52.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.6.3">81.58%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.6.4">79.43%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.6.5">73.78%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.6.6">3.75%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.6.7">88.24%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.6.8">84.85%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.7.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.7.1.1">Equal max</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.2">51.76%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.3">81.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.4">79.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.5">69.79%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.6">4.25%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.8">78.07%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.8">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.8.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.8.1.1">Two stage</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.8.2">50.66%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.8.3">80.62%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.8.4">78.82%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.8.5">67.93%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.8.6">3.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.8.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.8.8">76.42%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.9">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.9.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.9.1.1">Dynamic</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.9.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.9.2.1">53.81%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.9.3">81.44%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.9.4">80.75%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.9.5">75.43%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.9.6">3.62%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.9.7">77.78%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.9.8">88.82%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.10.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.10.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.10.2"><span class="ltx_text ltx_ulem_uline" id="S5.T6.1.1.10.2.1">44.10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.10.3">74.38%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.10.4">75.18%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.10.5">56.86%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.10.6">1.37%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.10.7">94.44%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.10.8">62.23%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.11">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.11.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.11.1.1">Equal max</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.11.2">42.47%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.11.3">67.77%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.11.4">75.05%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.11.5">55.75%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.11.6">1.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.11.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.11.8">59.56%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.12">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.12.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.12.1.1">Two stage</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.12.2">41.33%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.12.3">65.54%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.12.4">72.70%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.12.5">55.22%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.12.6">0.75%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.12.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.12.8">57.59%</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T6.1.1.13.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T6.1.1.13.1.1">Dynamic</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.13.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.13.2.1">46.85%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.13.3">83.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.13.4">72.77%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.13.5">61.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.13.6">3.38%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.13.7">88.89%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.13.8">59.37%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the Proximal Policy Optimization (PPO) training phase of the study.  It is broken down into categories: Data Configuration (specifying batch sizes and length limits), Optimization (showing learning rate, mini-batch size, and whether KL loss was used), and Rollout Configuration (including the rollout name, GPU memory utilization, number of rollouts, etc.). Finally, it lists the training and logging settings (such as save and test frequencies, and the total number of epochs).
> <details>
> <summary>read the caption</summary>
> Table 9: Configuration for PPO training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T7.1.1">
<tr class="ltx_tr" id="S5.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.1.2.1">Overall Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1.3">Non-Live AST Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1.4">Non-Live Exec Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1.5">Live Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1.6">Multi Turn Acc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1.7">Relevance Detection</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1.8">Irrelevance Detection</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.1.1.2.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.2.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.2.2.1">46.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.3">77.96%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.4">76.98%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.5">60.73%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.6">2.25%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.7">100.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.8">56.44%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.3">
<td class="ltx_td ltx_align_left" id="S5.T7.1.1.3.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.3.1.1">Finegrained</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.2"><span class="ltx_text ltx_ulem_uline" id="S5.T7.1.1.3.2.1">40.71%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.3">78.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.4">75.55%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.5">48.91%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.6">2.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.8">24.84%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T7.1.1.4.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.4.1.1">Intermediate</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.2">37.65%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.3">77.94%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.4">72.46%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.5">43.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.6">1.62%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.8">12.45%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.5">
<td class="ltx_td ltx_align_left" id="S5.T7.1.1.5.1">Qwen2.5-1.5B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.5.1.1">Coarse</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.2">36.72%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.3">76.44%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.4">70.86%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.5">41.27%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.6">2.12%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.8">12.24%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.1.1.6.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.6.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.6.2"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.6.2.1">52.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.6.3">81.58%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.6.4">79.43%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.6.5">73.78%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.6.6">3.75%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.6.7">88.24%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.6.8">84.85%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T7.1.1.7.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.7.1.1">Finegrained</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.7.2"><span class="ltx_text ltx_ulem_uline" id="S5.T7.1.1.7.2.1">52.06%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.7.3">81.65%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.7.4">79.64%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.7.5">69.21%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.7.6">5.50%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.7.7">83.33%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.7.8">78.14%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.8">
<td class="ltx_td ltx_align_left" id="S5.T7.1.1.8.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.8.1.1">Intermediate</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.8.2">51.36%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.8.3">81.15%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.8.4">80.07%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.8.5">68.64%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.8.6">4.25%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.8.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.8.8">75.74%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.9">
<td class="ltx_td ltx_align_left" id="S5.T7.1.1.9.1">Qwen2.5-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.9.1.1">Coarse</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.9.2">51.40%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.9.3">79.48%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.9.4">78.54%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.9.5">68.73%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.9.6">5.62%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.9.7">88.89%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.9.8">77.80%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.1.1.10.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.10.1.1">Original</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.10.2"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.10.2.1">44.10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.10.3">74.38%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.10.4">75.18%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.10.5">56.86%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.10.6">1.37%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.10.7">94.44%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.10.8">62.23%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.11">
<td class="ltx_td ltx_align_left" id="S5.T7.1.1.11.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.11.1.1">Finegrained</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.11.2"><span class="ltx_text ltx_ulem_uline" id="S5.T7.1.1.11.2.1">39.82%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.11.3">64.71%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.11.4">70.68%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.11.5">52.20%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.11.6">0.25%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.11.7">100.00%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.11.8">56.68%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.12">
<td class="ltx_td ltx_align_left" id="S5.T7.1.1.12.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.12.1.1">Intermediate</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.12.2">38.62%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.12.3">59.83%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.12.4">71.86%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.12.5">50.56%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.12.6">0.25%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.12.7">94.44%</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.12.8">55.68%</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T7.1.1.13.1">Llama-3.2-3B-Instruct (<span class="ltx_text ltx_font_bold" id="S5.T7.1.1.13.1.1">Coarse</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.13.2">35.95%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.13.3">52.00%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.13.4">61.43%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.13.5">48.96%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.13.6">1.12%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.13.7">83.33%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.13.8">61.92%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents additional BFCL V3 benchmark results.  It shows the performance of various LLMs on the BFCL V3 benchmark across several metrics. The models were initialized with Supervised Fine-Tuning (SFT) on 4000 data points, then further trained with either Proximal Policy Optimization (PPO) or Group Relative Policy Optimization (GRPO).  The results include Overall Accuracy, Non-Live Abstract Syntax Tree (AST) Accuracy, Non-Live Execution Accuracy, Live Accuracy, Multi-Turn Accuracy, Relevance Detection Accuracy, and Irrelevance Detection Accuracy.
> <details>
> <summary>read the caption</summary>
> Table 10: BFCL V3 Benchmark Results (Additional Result)
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13958/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13958/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}