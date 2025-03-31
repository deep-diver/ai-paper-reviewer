---
title: "Exploring Data Scaling Trends and Effects in Reinforcement Learning from Human Feedback"
summary: "This paper enhances Reinforcement Learning from Human Feedback (RLHF) by tackling reward hacking and response diversity issues through improved data construction methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 ByteDance Seed",]
showSummary: true
date: 2025-03-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.22230 {{< /keyword >}}
{{< keyword icon="writer" >}} Wei Shen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.22230" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.22230" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.22230/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent RLHF research focuses on algorithmic advancements, with less attention to prompt-data construction and scalability. Addressing this gap, the paper explores data-driven bottlenecks that hinder RLHF performance scaling, focusing on reward hacking and decreasing response diversity. They introduce a hybrid reward system combining reasoning task verifiers (RTV) and a generative reward model (GenRM) to mitigate reward hacking. This approach not only exhibits enhanced resistance to reward hacking but also enables accurate assessment of responses against clearly defined ground-truth solutions.



To ensure response diversity and enhance learning effectiveness, the paper proposes a novel prompt-selection method named Pre-PPO, explicitly identifying training prompts that are inherently challenging and thus less prone to reward hacking. Prioritizing mathematical and coding tasks during the early phases of RLHF training significantly boosts performance, given that these tasks encode fine-grained response distinctions and possess clearly defined ground truths. Experiments across two model sizes validate the effectiveness and scalability of the proposed methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A hybrid reward system (RTV + GenRM) enhances resistance to reward hacking. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Prioritizing challenging prompts (Pre-PPO) improves response diversity and overall RLHF performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Early-stage focus on mathematical and coding tasks boosts performance due to fine-grained response distinctions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is crucial for **improving RLHF, ensuring LLMs align with human values** while being resistant to reward hacking. It provides practical methodologies for data construction, benefiting researchers working on LLM alignment and safety.

------
#### Visual Insights



![](https://arxiv.org/html/2503.22230/x1.png)

> 🔼 This figure illustrates the RLHF training framework, which involves two main stages. The first stage is Reward Model Training, where three reward models are trained: the Bradley-Terry (BT) model (trained on pairwise comparisons of human preferences), the Generative Reward Model (GenRM) (assigns reward scores based on ground truth or BT model's best-of-N selections), and Reasoning Task Verifiers (RTV) (specialized validators for specific tasks, such as code execution for programming tasks). The second stage is Reinforcement Learning Optimization, where the language model is iteratively optimized using PPO, guided by GenRM and RTV.  Pre-PPO prompt selection is employed to identify the most challenging prompts, leading to robust performance and alignment enhancements.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the RLHF Training Framework. Our proposed pipeline consists of two sequential phases: (1) Reward Model Training, where we construct three complementary reward models—namely, the Bradley-Terry (BT) model, the Generative Reward Model (GenRM), and Reasoning Task Verifiers (RTV). Specifically, the BT model is trained on pairwise comparisons to capture human preferences, while the GenRM assigns explicit reward scores aligned with these preferences using either ground-truth solutions (for reasoning tasks) or the best-of-N selections identified by the BT model (for general tasks). The RTV component implements specialized validators tailored to specific task requirements, such as code-execution sandboxes for evaluating programming tasks; and (2) Reinforcement Learning Optimization, in which the language model is iteratively optimized using PPO under guidance from both GenRM and RTV. This stage leverages carefully selected training prompts identified through our Pre-PPO prompt-selection method and employs strategic optimization techniques to robustly enhance model performance and alignment.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.2.1">Logical</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.3.1">IF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.4.1">STEM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.5.1">Coding</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.6.1">NLP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.7.1">Knowledge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.8.1">CU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.9.1">OOD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.10.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T1.1.1.2.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.2.1">Reasoning</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.1.1.2.1.3"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.1.1.2.1.4"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.1.1.2.1.5"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.1.1.2.1.6"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.1.1.2.1.7"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.1.1.2.1.8"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.1.1.2.1.9"></th>
<td class="ltx_td" id="S4.T1.1.1.2.1.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.1.1.3.2.1">Initial-Run (V1.0)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.2">27.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.3">34.8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.4">49.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.5">51.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.6">24.7</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.7">37.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.8">40.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.9">39.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.2.10">37.7</th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.4.3.1">Baseline-Small (V1.0)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.2">26.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.3">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.4">48.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.5">50.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.6">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.7">36.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.8">40.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.9">40.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.10">37.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.5.4.1">Data Scale-Small (V1.0)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.2">28.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.3">36.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.4">50.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.5">53.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.6">24.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.7">36.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.8">39.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.9">43.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.10">38.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.6.5.1">Improvement</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.5.2.1">+2.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.3">+1.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.5.4.1">+1.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.5.5.1">+2.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.6">-0.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.7">+0.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.8">-0.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.9"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.5.9.1">+3.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.10"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.5.10.1">+1.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.7.6.1">Baseline-Large (V1.0)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.2">37.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.3">46.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.4">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.5">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.6">45.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.7">46.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.8">58.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.9">54.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.6.10">49.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.8.7.1">Data Scale-Large (V1.0)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.2">39.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.3">46.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.4">56.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.5">58.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.6">44.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.7">47.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.8">59.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.9">55.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.10">50.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.9.8.1">Improvement</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.8.2.1">+2.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.3">-0.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.4">+0.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.8.5.1">+3.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.6">-0.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.7">+1.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.8">+1.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.9"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.8.9.1">+1.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.10"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.8.10.1">+1.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.10.9.1">Baseline-Small (V2.0)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.2">17.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.3">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.4">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.5">41.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.6">21.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.7">28.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.8">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.9">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10.9.10">23.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.11.10.1">Data Scale-Small (V2.0)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.2">19.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.3">27.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.4">29.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.5">42.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.6">21.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.7">28.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.8">20.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.9">21.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.10.10">25.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.12.11.1">Improvement</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.11.2.1">+2.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.3">+0.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.11.4.1">+3.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.11.5.1">+1.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.6">+0.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.7">+0.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.11.8.1">+0.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.9">+0.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11.10"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.11.10.1">+1.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.13.12.1">Baseline-Large (V2.0)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.2">29.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.3">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.4">28.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.5">48.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.6">29.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.7">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.8">36.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.9">35.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.13.12.10">34.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.14.13.1">Data Scale-Large (V2.0)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.2">31.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.3">36.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.4">31.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.5">50.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.6">32.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.7">45.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.8">36.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.9">37.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.13.10">35.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.15.14.1">Improvement</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.14.2.1">+1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.3">+0.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.14.4.1">+3.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.14.5.1">+2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.14.6.1">+2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.7">-0.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.8">-0.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.9"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.14.9.1">+2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.14.10"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.14.10.1">+1.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of two RLHF methods: the proposed 'Data Scale' method (combining Pre-PPO and prioritizing math/coding tasks) and a baseline PPO-based RLHF method.  The comparison is done using two evaluation datasets (V1.0 and V2.0) across eight different abilities: logical reasoning, instruction-following, STEM tasks, coding, natural language processing, knowledge, contextual understanding, and out-of-distribution generalization.  Statistically significant improvements by the Data Scale method are highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 1: We present a performance comparison between our proposed method, termed ’Data Scale’ (combining Pre-PPO and prioritizing mathematical and coding tasks first) and a baseline method (PPO-based RLHF) on evaluation datasets V1.0 and V2.0. Results are reported across various abilities, including logical reasoning, instruction-following (IF), STEM tasks, coding, natural language processing (NLP), knowledge, contextual understanding (CU), and out-of-distribution generalization (OOD). Results highlighted in bold indicate statistically significant improvements.
> </details>





### In-depth insights


#### RLHF Data Scaling
While algorithmic advancements in RLHF are crucial, the significance of **RLHF data construction and scaling** is often understated. Data-driven bottlenecks, specifically **reward hacking and diminishing response diversity**, hinder performance scaling. Addressing reward hacking requires hybrid reward systems like combining reasoners and generative models which shows resistance. Furthermore, preemptive prompt selection, such as identifying inherently challenging prompts (Pre-PPO) for training, can ensure diversity and enhance learning effectiveness. Prioritizing tasks, like **mathematics and coding**, that encode fine-grained distinctions is a strategy to enhance RLHF performance.

#### Hybrid Reward Model
A hybrid reward model seems like a promising approach in reinforcement learning, particularly when dealing with complex tasks or environments. It involves **combining multiple reward signals or models** to provide a more comprehensive and nuanced assessment of an agent's behavior. This could involve integrating intrinsic and extrinsic rewards, shaping rewards, or even learning from demonstrations. One potential benefit is **increased robustness to reward hacking**, where agents exploit loopholes in a single reward function. The key challenge lies in **effectively balancing and weighting these different reward components**, ensuring that they align with the desired objectives and don't lead to unintended consequences. Careful design and experimentation are crucial for realizing the full potential of a hybrid reward model. By leveraging the strengths of diverse reward signals, hybrid reward model can improve learning efficiency, stability, and generalization capabilities, **Ultimately achieving superior policy performance**.

#### Pre-PPO Strategy
The **Pre-PPO strategy** represents a critical component of enhancing Reinforcement Learning from Human Feedback (RLHF) performance. It involves selecting training prompts based on their reward model scores before PPO, aiming to address the **reward hacking** phenomenon where models generate syntactically correct but semantically flawed responses. The initial experiment revealed that simply increasing the number of prompts doesn't improve RLHF performance. Analysis of reward scores of new prompts indicated a high proportion of scores, but **manual inspection** uncovered reward hacking behavior. The core idea is to utilize prompts with lower reward model scores, posing greater learning challenges and reducing susceptibility to reward hacking. These are then combined with the original dataset to retrain the RL model. Recognizing differing score distributions across task domains, the strategy involves normalizing these scores within each domain before selection.

#### Coding Task Focus
The paper underscores a strategic emphasis on coding tasks within RLHF, noting their resistance to reward hacking due to grounded evaluation metrics like code execution sandboxes. **Prioritizing these tasks early accelerates fine-grained distinction learning, boosting overall performance**. Unlike tasks reliant on subjective human feedback, coding's objective validation creates a stable learning signal. The 'Data Scale' method further enhances coding performance, demonstrating the value of carefully curated data and robust evaluation. **Early exposure to coding's inherent structure equips the model to discern subtle patterns**, impacting mathematical reasoning. This focus combats overfitting and ensures more resilient skill acquisition, enabling sustained improvements throughout training. By strategically balancing diverse task types, the RLHF model achieves superior coding prowess and foundational knowledge that benefits the broader skill set.

#### Response Diversity
**Response diversity is a critical aspect of language model performance**, particularly in RLHF. The paper acknowledges a decline in entropy during training, indicating a loss of variety in generated outputs, which can limit the model's ability to handle diverse tasks and contexts. While RLHF effectively aligns models, it risks over-optimization towards specific reward signals, sacrificing the breadth of possible responses. **The challenge is to balance alignment with creativity and adaptability.** The authors observe that different reward models (RTV, GenRM) influence response diversity differently, highlighting the need for careful reward design. Prioritizing tasks that inherently encourage diverse responses, such as creative writing, and mitigating reward hacking are potential strategies to maintain diversity without compromising alignment. A lack of diversity constrains the model and may lead to less useful outputs, with the model learning coarse differences in response only.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/train_all.png)

> 🔼 This figure displays the overall test scores obtained during the initial RLHF training experiment.  Two datasets were used: an original dataset of one million prompts and a newly collected dataset of six million prompts, combined for a total of seven million prompts.  Despite the substantial increase in data size, the results show that RLHF training did not lead to improved performance as measured by the overall test score. In fact, the model achieved its peak performance around training step 3500, after which the performance gradually decreased. This suggests that simply increasing the amount of training data may not guarantee improved performance in RLHF, implying the importance of data quality over quantity.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall test scores from the initial run using an expanded dataset combining newly collected data (six million prompts) with the original dataset (one million prompts). Despite increasing dataset size substantially, RLHF did not yield improvements in performance. Additionally, the best performance was observed at around the 3,500-step mark, after which test scores gradually declined.
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/QRM.png)

> 🔼 This figure shows the distribution of reward scores obtained from a newly collected dataset of prompts. The x-axis displays the percentage of prompts, while the y-axis represents the reward score, ranging from 0 to 1. A score of 0.5 indicates that the model's output is comparable to the reference output. The figure reveals that approximately 90% of the prompts received scores exceeding 0.5 for both small and large language models, seemingly outperforming the reference outputs. However, a closer manual inspection uncovered that a significant number of high-scoring outputs exhibited reward hacking behaviors and were qualitatively inferior to the initially selected best outputs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution of reward scores for newly collected prompts. The x-axis shows the percentage of prompts. The y-axis represents the reward score range from 0 to 1, with 0.5 indicating parity with the reference. Approximately 90% of prompts received scores above 0.5 for both small-size and large-size models, suggesting apparent superiority over reference outputs. However, manual inspection revealed that many high-scoring outputs exhibited reward hacking behavior and were qualitatively inferior to the original best-selected outcomes.
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/FRAC.png)

> 🔼 This figure shows the proportion of math and coding prompts used during each training step of the Reinforcement Learning from Human Feedback (RLHF) process.  It visually represents how the focus on math and coding tasks changes over the course of training, illustrating the strategy of prioritizing these task types early in the training pipeline before incorporating other kinds of prompts. The x-axis represents the training step, and the y-axis represents the fraction of prompts dedicated to either math or coding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: The distribution of prompts across both math and coding task during the training phases
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/AblationStudy.png)

> 🔼 This ablation study uses a small-sized language model to evaluate the individual contributions of three different RLHF training strategies: 1) Pre-PPO prompt selection, which prioritizes more challenging prompts, 2) Early Training Emphasis, which focuses on mathematical and coding tasks in the initial training phase, and 3) a combination of both Pre-PPO and Early Training Emphasis.  The graph likely shows the overall performance of the model across various tasks as a function of training steps, allowing comparison of the performance achieved using each strategy against the baseline (no additional strategies). This visualization helps determine the effectiveness and potential synergy between the proposed strategies in improving RLHF performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablation study on small-size model. We do the ablation study to demonstrate the effectiveness of each strategy. Early Training Emphasis refers to early training emphasis on mathematical and coding tasks
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/codemath_first.png)

> 🔼 This figure displays the results of an ablation study that demonstrates the impact of prioritizing mathematical and coding tasks during the early stages of Reinforcement Learning from Human Feedback (RLHF) training.  Two line graphs show the performance of a model trained with this early emphasis strategy versus a baseline model across different training steps, with performance measured in terms of test scores on coding and STEM tasks. The graph clearly shows that the model that prioritizes these tasks outperforms the baseline, achieving comparable results much faster. In particular, the model that prioritizes coding and math tasks significantly surpasses the baseline model in coding performance within 1000 training steps.
> <details>
> <summary>read the caption</summary>
> Figure 6: Early emphasis on mathematical and coding tasks significantly improves RLHF performance in both coding and STEM areas on Testset-V1.0. Notably, the coding performance with this approach surpasses the baseline within just 1000 training steps.
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/RM_CMP.png)

> 🔼 This figure displays the reward hacking susceptibility and performance trends observed during Reinforcement Learning from Human Feedback (RLHF) training for three different reward models: Reasoning Task Verifiers (RTV), Generative Reward Model (GenRM), and Bradley-Terry Reward Model (BT).  It illustrates how each model's performance and resistance to reward hacking changes over the course of RLHF training.  This allows for a comparison of the effectiveness and robustness of the various reward models in guiding the model's learning process and avoiding reward hacking behavior.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of Reward Hacking Susceptibility and Performance Trends for RTV, GenRM, and BT Reward Models During RLHF Training
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/datascale_preppo.png)

> 🔼 This figure displays the results of an experiment investigating the effect of increasing the amount of training data on the performance of the RLHF model using the Pre-PPO prompt selection strategy. The x-axis represents the percentage of newly collected prompts added to the original dataset (10%, 20%, and 50%), while the y-axis shows the overall RLHF performance.  The results show a counter-intuitive trend: increasing the size of the training dataset, even with the Pre-PPO strategy, does not improve performance.  Instead, it leads to a decrease in performance.  This suggests that the quality of the training prompts is more important than the sheer quantity.  In other words, simply adding more data may not improve the performance, and it may even hurt the performance if the additional data are low quality. This highlights the scarcity of high-quality training prompts in real-world scenarios and the need for carefully curated datasets.
> <details>
> <summary>read the caption</summary>
> Figure 8: Impact of data scaling on Pre-PPO strategy performance. The graph shows the overall RLHF performance as the percentage of newly collected training data increases from 10% to 20% and 50%. Counter-intuitively, increasing the amount of training data leads to a noticeable degradation in performance, suggesting that high-quality training prompts are scarce in real-world settings and that simply scaling data quantity does not guarantee improvement.
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/Pre-PPO-BOOST.png)

> 🔼 Figure 9 presents a comparison of the performance of coding and mathematical tasks between the baseline RLHF approach and the proposed 'Data Scale' method.  The graph shows that the 'Data Scale' method, which combines Pre-PPO prompt selection and early emphasis on mathematical and coding tasks, leads to significantly improved performance on both task types compared to the baseline.  Specifically, the 'Data Scale' method demonstrates faster and more substantial gains in performance over the training steps.
> <details>
> <summary>read the caption</summary>
> Figure 9: Data Scale method boost both math and code performance.
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/QRM_Score.png)

> 🔼 This figure shows the relationship between reward model scores and the diversity of model responses.  It compares the performance of two versions of the Generative Reward Model (GenRM): one trained with ground truth and one without. The x-axis represents the maximum edit distance among five model responses for a given prompt. A higher edit distance indicates less diversity in the responses. The y-axis displays the average normalized reward model score for each edit distance bin. The figure demonstrates that the GenRM trained with ground truth is more sensitive to fine-grained response variations (lower edit distances) and assigns higher scores when responses show higher diversity. In contrast, the GenRM without ground truth shows a less pronounced relationship between diversity and score, reflecting a lower sensitivity to finer distinctions between responses.
> <details>
> <summary>read the caption</summary>
> Figure 10: Comparison of Reward Model Scores across Different Edit Distance Bins for GenRM with and without Ground Truth.
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/Score_Diff.png)

> 🔼 This figure compares the differences in reward scores assigned by three different reward models (GenRM with ground truth, GenRM without ground truth, and RTV) across various levels of response diversity.  The x-axis represents bins of maximum edit distances between responses, indicating the granularity of response differences (smaller distances mean finer-grained distinctions). The y-axis shows the normalized score differences within each bin.  The figure aims to illustrate how each reward model's sensitivity to fine-grained response variations differs and whether that impacts the effectiveness of RLHF.
> <details>
> <summary>read the caption</summary>
> Figure 11: Comparison of Score Difference across Different Edit Distance Bins for GenRM with and without Ground Truth, and RTV.
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/entropy.png)

> 🔼 This figure illustrates the change in response entropy throughout the reinforcement learning from human feedback (RLHF) training process.  Response entropy is a measure of the diversity of the model's generated responses. A higher entropy indicates greater response diversity, while a lower entropy suggests less diversity, with the model tending to produce more similar responses. The x-axis represents the training steps, and the y-axis shows the response entropy at each step.  The plot reveals how the diversity of the model's responses changes over the course of RLHF training.  This is a key metric to assess whether the training process is successfully improving the model's ability to generate a wide range of responses or is narrowing its output over time.
> <details>
> <summary>read the caption</summary>
> (a) Response entropy change during the RLHF training process
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/Entropy_Creation.png)

> 🔼 Figure 12(b) displays the change in response entropy during RLHF training for models using GenRM without ground truth.  It compares the entropy of responses generated by the baseline RLHF model and the model trained using the improved method (DataScale). The x-axis represents training steps, while the y-axis represents the mean entropy across various responses. The plot visually demonstrates the impact of the proposed methods on maintaining response diversity throughout the training process.
> <details>
> <summary>read the caption</summary>
> (b) The comparison of response entropy change during the RLHF training process
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/Entropy_Math.png)

> 🔼 This figure compares the response entropy change during RLHF training between the baseline method and the proposed method. The response entropy is calculated separately for three different types of reward models: GenRM with ground truth, GenRM without ground truth, and RTV. The figure helps to analyze the impact of the proposed method on the response diversity of the model during training and how this method affects different types of reward models differently.
> <details>
> <summary>read the caption</summary>
> (c) The comparison of response entropy change during the RLHF training process
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/Entropy_RTV.png)

> 🔼 Figure 12(d) displays the change in response entropy over the course of RLHF training, specifically focusing on the performance of the RTV reward model. The graph visually represents how the diversity of model responses evolves as training progresses. It allows for a comparison between the baseline model's response diversity and the response diversity achieved by the model using the improved strategy. This comparison helps in evaluating the effectiveness of the proposed techniques in maintaining response diversity throughout the RLHF training process. The x-axis of the graph represents the training steps, while the y-axis corresponds to the mean response entropy.
> <details>
> <summary>read the caption</summary>
> (d) The comparison of response entropy change during the RLHF training process
> </details>



![](https://arxiv.org/html/2503.22230/extracted/6317381/seed/img/Big_Dist.png)

> 🔼 Figure 12 presents a detailed analysis of how response diversity changes during the Reinforcement Learning from Human Feedback (RLHF) training process.  It visualizes the entropy of model responses across various task categories, offering insights into the impact of different reward models and training strategies. Subfigures (a) to (d) show the change in response entropy over training steps for tasks supervised by distinct reward methods: Generative Reward Model (GenRM) with ground truth, GenRM without ground truth, and Reasoning Task Verifiers (RTV). These subfigures provide a granular view of how response diversity evolves under different reward mechanisms and highlight the effects of the proposed data selection and prioritization strategies on response diversity across different task types. The figure illustrates a decline in overall response diversity during RLHF training but highlights the importance of careful data curation and strategic training to maintain diversity.
> <details>
> <summary>read the caption</summary>
> Figure 12: The comparison of response entropy change during the RLHF training process
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.2">Knowledge</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.3">STEM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.4">IF</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.5">Creation</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.6">Coding</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.7">Overall</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.1">Baseline-Large</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.2">63.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.3">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.4">46.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.5">52.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.6">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.7">67.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.1">Data Scale-Large</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.2">66.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.3">80.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.4">48.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.5">54.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.6">53.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.7">71.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.3.1">Improvement</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.2">+1.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.4.3.3.1">+6.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.4">+1.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.4.3.5.1">+5.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.6">+4.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.4.3.7.1">+4.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.5.4.1">p-value</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.4.2">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.4.3">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.4.4">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.4.5">0.39</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.4.6">0.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.4.7">0.12</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a human evaluation comparing the performance of two RLHF methods: the proposed method (Pre-PPO with prioritized math and coding tasks) and a baseline PPO method.  Evaluations were conducted across six abilities: Knowledge, STEM, Instruction-Following (IF), Creation, Coding, and an overall assessment.  Statistically significant improvements (p<0.05) from the proposed method are highlighted in bold.  All scores represent aggregated results from human raters.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison based on comprehensive human evaluations between our proposed method (combining Pre-PPO and prioritizing mathematical and coding tasks first) and the baseline method (PPO-based RLHF). Results are shown across multiple abilities, including Knowledge, STEM, Instruction-Following (IF), Creation, Coding, and Overall performance. Improvements highlighted in bold indicate statistically significant differences (p < 0.05). All metrics represent aggregated scores from human assessments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Logical</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1">IF</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.4.1">STEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.5.1">Coding</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.6.1">NLP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.7.1">Knowledge</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.8.1">CU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.9.1">OOD</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.10.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.1.1.2.2.1"></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.2.1">Reasoning</span></td>
<td class="ltx_td" id="S4.T3.1.1.2.2.3"></td>
<td class="ltx_td" id="S4.T3.1.1.2.2.4"></td>
<td class="ltx_td" id="S4.T3.1.1.2.2.5"></td>
<td class="ltx_td" id="S4.T3.1.1.2.2.6"></td>
<td class="ltx_td" id="S4.T3.1.1.2.2.7"></td>
<td class="ltx_td" id="S4.T3.1.1.2.2.8"></td>
<td class="ltx_td" id="S4.T3.1.1.2.2.9"></td>
<td class="ltx_td" id="S4.T3.1.1.2.2.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.3.3.1">Baseline-Large (V2.0)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.2">29.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.3">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.4">28.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.5">48.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.6">29.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.7">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.8">36.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.9">35.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3.10">34.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.4.4.1">Pre-PPO-Large (V2.0)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.2">31.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.3">35.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.4">30.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.5">49.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.6">32.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.7">45.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.8">36.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.9">37.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.10">35.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.5.5.1">Improvement</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.2.1">+1.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.3">-0.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.4.1">+2.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.5.1">+1.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.6.1">+1.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.7">+1.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.8">-0.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.9"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.9.1">+2.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5.10"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.10.1">+1.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.6.6.1">Data Scale-Large (V2.0)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.2">31.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.3">36.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.4">31.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.5">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.6">32.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.7">45.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.8">36.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.9">37.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.6.10">35.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.1.7.7.1">Improvement on Pre-PPO</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.2">-0.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.3">+0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.7.4.1">+1.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.7.5.1">+1.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.6">+0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.7">-0.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.8">+0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.9"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.7.9.1">-0.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.7.7.10">+0.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the individual contributions of two proposed strategies to the performance scaling of Reinforcement Learning from Human Feedback (RLHF) in large language models. The strategies are Pre-PPO, a prompt selection method, and an early training emphasis on mathematical and coding tasks. The table compares the performance across different evaluation metrics (Logical Reasoning, IF, STEM, Coding, NLP, Knowledge, CU, OOD, and Overall) of three different model configurations: the baseline model (no additional techniques), the model with Pre-PPO only, the model with early training emphasis only, and the model incorporating both Pre-PPO and early training emphasis. This allows for isolating and quantifying the effect of each strategy on various aspects of the model’s capabilities and their synergistic effect when combined.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation Study: Performance Scaling of Pre-PPO and Early Training Emphasis in Large Language Models
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.22230/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22230/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}