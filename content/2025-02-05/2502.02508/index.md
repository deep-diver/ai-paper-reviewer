---
title: "Satori: Reinforcement Learning with Chain-of-Action-Thought Enhances LLM Reasoning via Autoregressive Search"
summary: "Satori: A novel 7B LLM achieves state-of-the-art mathematical reasoning via autoregressive search."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 MIT",]
showSummary: true
date: 2025-02-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.02508 {{< /keyword >}}
{{< keyword icon="writer" >}} Maohao Shen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.02508" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.02508" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.02508/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current large language models (LLMs) exhibit impressive reasoning capabilities but often struggle with complex problems, particularly those requiring extensive reasoning steps.  Existing approaches often rely on external verification or extensive sampling, leading to inefficiencies. This paper tackles these limitations by introducing Satori, a novel LLM trained using a two-stage paradigm. The first stage focuses on internalizing a new reasoning format called Chain-of-Action-Thought (COAT), while the second leverages reinforcement learning to improve the model's ability to self-reflect and explore alternative solutions.

The proposed method results in a single LLM capable of autoregressive search without external guidance.  Satori surpasses state-of-the-art performance on multiple mathematical reasoning benchmarks and generalizes well to other tasks. This represents a significant advance in LLM reasoning, offering a more efficient and effective method for tackling complex problems. The researchers' commitment to open-sourcing the model and data will further accelerate research and foster community collaboration.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Satori, a 7B LLM, achieves state-of-the-art performance on mathematical reasoning benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Chain-of-Action-Thought (COAT) reasoning mechanism and two-stage training paradigm significantly enhance a single LLM's reasoning abilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Satori demonstrates strong generalization to out-of-domain tasks, showcasing the potential of internalizing search capabilities within a single LLM. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on large language models (LLMs) and reasoning.  It introduces a novel training method that significantly improves LLMs' reasoning capabilities, addressing a key challenge in the field. The open-sourcing of the model and data further accelerates research progress and fosters collaboration.  The innovative approach of using **chain-of-action-thought (COAT)** and **reinforcement learning** offers new avenues for future research on enhancing LLMs for complex reasoning tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2502.02508/x1.png)

> 🔼 This figure illustrates the two-stage training process of the Satori model.  The first stage, Format Tuning (FT), uses imitation learning on a small set of demonstration trajectories to teach the model the Chain-of-Action-Thought (COAT) reasoning format.  The second stage, Self-improvement, employs large-scale reinforcement learning to enhance the model's ability to reason using the COAT format, allowing it to learn self-reflection and self-exploration strategies. This leads to significant improvements in the model's ability to solve complex problems.
> <details>
> <summary>read the caption</summary>
> Figure 1: A High-level Overview of Satori Training Framework: Format Tuning (FT) + Self-improvement. First, Satori learns COAT reasoning format through imitation learning on small-scale demonstration trajectories. Next, Satori further leverages COAT reasoning format to self-improve via large-scale reinforcement learning.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.7">
<tr class="ltx_tr" id="S5.T1.7.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.7.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.1.1" style="font-size:80%;">Scale</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.7.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.2.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.3.1" style="font-size:80%;">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.4.1" style="font-size:80%;">MATH500</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.5.1" style="font-size:80%;">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.1.6"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.6.1" style="font-size:80%;">AMC2023</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.1.7"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.7.1" style="font-size:80%;">AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.1.8"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.8.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.7.2.1" rowspan="5"><span class="ltx_text" id="S5.T1.7.2.1.1" style="font-size:80%;">Large</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.7.2.2"><span class="ltx_text" id="S5.T1.7.2.2.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.3"><span class="ltx_text" id="S5.T1.7.2.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.4"><span class="ltx_text" id="S5.T1.7.2.4.1" style="font-size:80%;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.5"><span class="ltx_text" id="S5.T1.7.2.5.1" style="font-size:80%;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.6"><span class="ltx_text" id="S5.T1.7.2.6.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.7"><span class="ltx_text" id="S5.T1.7.2.7.1" style="font-size:80%;">9.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.8"><span class="ltx_text" id="S5.T1.7.2.8.1" style="font-size:80%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.3">
<td class="ltx_td ltx_align_left" id="S5.T1.7.3.1"><span class="ltx_text" id="S5.T1.7.3.1.1" style="font-size:80%;">o1-preview</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.2"><span class="ltx_text" id="S5.T1.7.3.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.3"><span class="ltx_text" id="S5.T1.7.3.3.1" style="font-size:80%;">85.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.4"><span class="ltx_text" id="S5.T1.7.3.4.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.5"><span class="ltx_text" id="S5.T1.7.3.5.1" style="font-size:80%;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.6"><span class="ltx_text" id="S5.T1.7.3.6.1" style="font-size:80%;">44.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.7"><span class="ltx_text" id="S5.T1.7.3.7.1" style="font-size:80%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.4">
<td class="ltx_td ltx_align_left" id="S5.T1.7.4.1"><span class="ltx_text" id="S5.T1.7.4.1.1" style="font-size:80%;">Llama-3.1-70B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.2"><span class="ltx_text" id="S5.T1.7.4.2.1" style="font-size:80%;">94.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.3"><span class="ltx_text" id="S5.T1.7.4.3.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.4"><span class="ltx_text" id="S5.T1.7.4.4.1" style="font-size:80%;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.5"><span class="ltx_text" id="S5.T1.7.4.5.1" style="font-size:80%;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.6"><span class="ltx_text" id="S5.T1.7.4.6.1" style="font-size:80%;">13.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.7"><span class="ltx_text" id="S5.T1.7.4.7.1" style="font-size:80%;">49.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.5">
<td class="ltx_td ltx_align_left" id="S5.T1.7.5.1"><span class="ltx_text" id="S5.T1.7.5.1.1" style="font-size:80%;">OpenMath2-Llama3.1-70B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.2"><span class="ltx_text" id="S5.T1.7.5.2.1" style="font-size:80%;">94.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.3"><span class="ltx_text" id="S5.T1.7.5.3.1" style="font-size:80%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.4"><span class="ltx_text" id="S5.T1.7.5.4.1" style="font-size:80%;">30.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.5"><span class="ltx_text" id="S5.T1.7.5.5.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.6"><span class="ltx_text" id="S5.T1.7.5.6.1" style="font-size:80%;">13.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.7"><span class="ltx_text" id="S5.T1.7.5.7.1" style="font-size:80%;">50.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.6">
<td class="ltx_td ltx_align_left" id="S5.T1.7.6.1"><span class="ltx_text" id="S5.T1.7.6.1.1" style="font-size:80%;">QwQ-32B-Preview</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.2"><span class="ltx_text" id="S5.T1.7.6.2.1" style="font-size:80%;">95.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.3"><span class="ltx_text" id="S5.T1.7.6.3.1" style="font-size:80%;">90.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.4"><span class="ltx_text" id="S5.T1.7.6.4.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.5"><span class="ltx_text" id="S5.T1.7.6.5.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.6"><span class="ltx_text" id="S5.T1.7.6.6.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.7"><span class="ltx_text" id="S5.T1.7.6.7.1" style="font-size:80%;">75.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T1.7.7.1" rowspan="7"><span class="ltx_text" id="S5.T1.7.7.1.1" style="font-size:80%;">Small</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.7.7.2"><span class="ltx_text" id="S5.T1.7.7.2.1" style="font-size:80%;">Llama-3.1-8b-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.3"><span class="ltx_text" id="S5.T1.7.7.3.1" style="font-size:80%;">84.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.4"><span class="ltx_text" id="S5.T1.7.7.4.1" style="font-size:80%;">51.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.5"><span class="ltx_text" id="S5.T1.7.7.5.1" style="font-size:80%;">15.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.6"><span class="ltx_text" id="S5.T1.7.7.6.1" style="font-size:80%;">22.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.7"><span class="ltx_text" id="S5.T1.7.7.7.1" style="font-size:80%;">3.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.8"><span class="ltx_text" id="S5.T1.7.7.8.1" style="font-size:80%;">35.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.8">
<td class="ltx_td ltx_align_left" id="S5.T1.7.8.1"><span class="ltx_text" id="S5.T1.7.8.1.1" style="font-size:80%;">OpenMath2-Llama3.1-8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.8.2"><span class="ltx_text" id="S5.T1.7.8.2.1" style="font-size:80%;">90.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.8.3"><span class="ltx_text" id="S5.T1.7.8.3.1" style="font-size:80%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.8.4"><span class="ltx_text" id="S5.T1.7.8.4.1" style="font-size:80%;">28.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.8.5"><span class="ltx_text" id="S5.T1.7.8.5.1" style="font-size:80%;">37.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.8.6"><span class="ltx_text" id="S5.T1.7.8.6.1" style="font-size:80%;">6.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.8.7"><span class="ltx_text" id="S5.T1.7.8.7.1" style="font-size:80%;">46.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.9">
<td class="ltx_td ltx_align_left" id="S5.T1.7.9.1"><span class="ltx_text" id="S5.T1.7.9.1.1" style="font-size:80%;">NuminaMath-7B-CoT</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.2"><span class="ltx_text" id="S5.T1.7.9.2.1" style="font-size:80%;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.3"><span class="ltx_text" id="S5.T1.7.9.3.1" style="font-size:80%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.4"><span class="ltx_text" id="S5.T1.7.9.4.1" style="font-size:80%;">15.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.5"><span class="ltx_text" id="S5.T1.7.9.5.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.6"><span class="ltx_text" id="S5.T1.7.9.6.1" style="font-size:80%;">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.7"><span class="ltx_text" id="S5.T1.7.9.7.1" style="font-size:80%;">35.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.10">
<td class="ltx_td ltx_align_left" id="S5.T1.7.10.1"><span class="ltx_text" id="S5.T1.7.10.1.1" style="font-size:80%;">Qwen-2.5-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.2"><span class="ltx_text" id="S5.T1.7.10.2.1" style="font-size:80%;">91.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.3"><span class="ltx_text" id="S5.T1.7.10.3.1" style="font-size:80%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.4"><span class="ltx_text" id="S5.T1.7.10.4.1" style="font-size:80%;">35.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.5"><span class="ltx_text" id="S5.T1.7.10.5.1" style="font-size:80%;">52.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.6"><span class="ltx_text" id="S5.T1.7.10.6.1" style="font-size:80%;">6.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.7"><span class="ltx_text" id="S5.T1.7.10.7.1" style="font-size:80%;">52.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.11">
<td class="ltx_td ltx_align_left" id="S5.T1.7.11.1"><span class="ltx_text" id="S5.T1.7.11.1.1" style="font-size:80%;">Qwen-2.5-Math-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.11.2"><span class="ltx_text" id="S5.T1.7.11.2.1" style="font-size:80%;">95.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.11.3"><span class="ltx_text" id="S5.T1.7.11.3.1" style="font-size:80%;">83.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.11.4"><span class="ltx_text" id="S5.T1.7.11.4.1" style="font-size:80%;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.11.5"><span class="ltx_text" id="S5.T1.7.11.5.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.11.6"><span class="ltx_text" id="S5.T1.7.11.6.1" style="font-size:80%;">16.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.11.7"><span class="ltx_text" id="S5.T1.7.11.7.1" style="font-size:80%;">59.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.7.12.1"><span class="ltx_text ltx_font_bold" id="S5.T1.7.12.1.1" style="font-size:80%;">Satori-Qwen-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.12.2"><span class="ltx_text" id="S5.T1.7.12.2.1" style="font-size:80%;">93.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.12.3"><span class="ltx_text" id="S5.T1.7.12.3.1" style="font-size:80%;">85.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.12.4"><span class="ltx_text" id="S5.T1.7.12.4.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.12.5"><span class="ltx_text" id="S5.T1.7.12.5.1" style="font-size:80%;">67.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.12.6"><span class="ltx_text" id="S5.T1.7.12.6.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.12.7"><span class="ltx_text" id="S5.T1.7.12.7.1" style="font-size:80%;">62.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.7.13.1"><span class="ltx_text ltx_font_bold" id="S5.T1.7.13.1.1" style="font-size:80%;">Satori-Qwen-7B (Round 2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.13.2"><span class="ltx_text" id="S5.T1.7.13.2.1" style="font-size:80%;">93.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.13.3"><span class="ltx_text" id="S5.T1.7.13.3.1" style="font-size:80%;">83.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.13.4"><span class="ltx_text" id="S5.T1.7.13.4.1" style="font-size:80%;">48.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.13.5"><span class="ltx_text" id="S5.T1.7.13.5.1" style="font-size:80%;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.13.6"><span class="ltx_text" id="S5.T1.7.13.6.1" style="font-size:80%;">23.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.13.7"><span class="ltx_text" id="S5.T1.7.13.7.1" style="font-size:80%;">64.4</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various large language models (LLMs) on five mathematical reasoning benchmarks: GSM8K, MATH500, OlympiadBench, AMC2023, and AIME2024.  The results showcase Satori-Qwen-7B's state-of-the-art performance, surpassing other models, especially Qwen-2.5-Math-7B-Instruct, which shares the same base model.  Furthermore, the table highlights the improved performance of Satori-Qwen-7B after a second round of training, demonstrating its ability to handle more challenging problems.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on Mathematic Benchmarks. Satori-Qwen-7B achieves SOTA performance across five benchmarks, and outperforms Qwen-2.5-Math-7B-Instruct which uses the same base model Qwen-2.5-Math-7B. After round-2 training, Satori-Qwen-7B (Round 2) demonstrates even stronger performance on hard tasks.
> </details>





### In-depth insights


#### LLM Reasoning
LLM reasoning is a rapidly evolving field, focusing on enhancing the ability of large language models (LLMs) to perform complex reasoning tasks.  **Current approaches often involve prompting techniques, such as Chain-of-Thought (CoT), which guide the LLM to generate intermediate reasoning steps, thereby improving accuracy**. However, these methods may still struggle with complex problems or exhibit limitations in generalizing to unseen domains.  **Reinforcement learning (RL) offers a promising avenue for improving LLM reasoning by training the model to maximize rewards associated with correct reasoning**.  This approach can internalize the search process, enabling autoregressive search capabilities within a single LLM and reducing reliance on external feedback mechanisms.  **Research is actively exploring different RL strategies, including those that encourage self-reflection and exploration of alternative solution paths**. Despite these advances, challenges remain, such as handling sparse rewards and ensuring effective generalization.  Future research directions include developing more sophisticated reward functions, designing more robust training paradigms, and investigating the interplay between different reasoning mechanisms within LLMs.

#### COAT Mechanism
The Chain-of-Action-Thought (COAT) mechanism is a novel approach to enhance Large Language Model (LLM) reasoning capabilities.  It extends the Chain-of-Thought (CoT) prompting technique by introducing **meta-action tokens** that allow the LLM to perform self-reflection, self-correction, and exploration of alternative solutions.  Instead of passively following a linear reasoning path, the LLM actively manages its reasoning process through these meta-actions.  This introduces a degree of **internal search**, overcoming limitations of prior CoT methods which rely on extensive external sampling or feedback loops. The COAT mechanism is particularly effective in addressing complex problems where iterative refinement and error correction are necessary, leading to a more robust and accurate reasoning process.  Its integration with reinforcement learning further strengthens the LLM's capacity for self-improvement and generalization to out-of-domain tasks, showcasing its potential as a powerful framework for building more advanced reasoning abilities into LLMs. **Two-stage training** — format tuning and self-improvement — further enhances COAT’s effectiveness.

#### Two-Stage Training
The paper's two-stage training approach is a key innovation, addressing limitations in directly training LLMs for complex reasoning. The **first stage**, format tuning, uses imitation learning on a small dataset of demonstration trajectories to familiarize the model with the chain-of-action-thought (COAT) reasoning format. This efficiently bootstraps the process by minimizing the initial training burden of teaching the LLM this novel reasoning structure.  The **second stage**, self-improvement, leverages reinforcement learning to significantly enhance the LLM's reasoning capabilities.  Crucially, it tackles the sparse reward challenge of long-horizon reasoning tasks by incorporating "restart and explore" techniques. This allows the model to recover from errors and explore alternative solutions, leading to better generalization and performance. This two-stage approach thus combines efficient initial training with a powerful self-improvement mechanism resulting in a robust and effective LLM reasoning system.

#### Satori's Abilities
The paper showcases Satori's impressive capabilities in mathematical reasoning and its ability to generalize to other domains.  **Satori's strength lies in its novel Chain-of-Action-Thought (COAT) reasoning mechanism, which allows for self-reflection and exploration of alternative solution strategies.** Unlike previous methods relying on external verification, Satori internalizes these search capabilities, achieving higher efficiency. The two-stage training paradigm—format tuning followed by reinforcement learning—is instrumental in enabling Satori's superior performance and generalization.  **The results demonstrate state-of-the-art performance on several mathematical benchmarks, highlighting Satori's effectiveness.** Furthermore, Satori's strong generalization to out-of-domain tasks showcases its robust reasoning capabilities beyond specialized mathematical domains.  This is a significant contribution in the field of large language models, demonstrating the potential for single-model autoregressive search to significantly enhance reasoning abilities.  **The open-sourcing of the model and data further strengthens Satori's contribution to the research community.**

#### Future of Search
The "Future of Search" in light of this research paper points towards a paradigm shift.  **Autoregressive search**, internalized within a single LLM, is presented as a more efficient and cost-effective alternative to current two-player systems.  This shift necessitates further exploration of innovative training paradigms like reinforcement learning, focusing on self-improvement and exploration of new reasoning strategies. **Meta-action tokens** and improved reward models could enhance the sophistication of autoregressive search, improving the accuracy and generalizability of LLMs reasoning abilities.  **Addressing challenges** such as sparse rewards and long horizons in reinforcement learning is crucial for this advancement.  This evolution signifies a move towards more autonomous and efficient LLMs capable of complex reasoning tasks, potentially leading to a significant advancement in search technology and problem solving across various domains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.02508/x2.png)

> 🔼 This figure compares the training data used for two language models: Satori-Qwen-7B and Qwen-2.5-Math-7B-Instruct.  It highlights that Satori-Qwen-7B, despite being a smaller model, requires substantially less supervised fine-tuning (FT) data.  The difference is visually represented on a logarithmic scale, illustrating that the majority of Satori-Qwen-7B's training relies on large-scale reinforcement learning (RL) for self-improvement, unlike Qwen-2.5-Math-7B-Instruct which uses substantially more supervised fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 2: Number of Training Samples of Satori-Qwen-7B and Qwen-2.5-Math-7B-Instruct. Satori-Qwen-7B requires significantly less supervision (small-scale FT) and relies more on self-improvement (large-scale RL).
> </details>



![](https://arxiv.org/html/2502.02508/x3.png)

> 🔼 This figure illustrates the relationship between the policy accuracy, response length (measured in the number of tokens), and RL training time compute.  The x-axis represents the RL training steps. The y-axis shows two lines: one representing policy accuracy (left y-axis) and the other representing response length (right y-axis).  The figure demonstrates that as the RL training progresses (more compute time is used), the policy accuracy increases, indicating that the model's reasoning improves. Simultaneously, the response length also increases, meaning that the model engages in longer and more complex reasoning processes to achieve better accuracy.  This supports the paper's claim that reinforcement learning enables the model (Satori) to improve its reasoning through longer and more sophisticated thought processes.
> <details>
> <summary>read the caption</summary>
> Figure 3: Policy Training Acc. & Response length v.s. RL Train-time Compute. Through RL training, Satori learns to improve its reasoning performance through longer thinking.
> </details>



![](https://arxiv.org/html/2502.02508/x4.png)

> 🔼 This figure shows the relationship between test-time response length and accuracy with problem difficulty levels.  The top panel plots the average number of tokens generated during inference (test-time response length) against problem difficulty, categorized into five levels (Level 1 to Level 5, with Level 5 being the most difficult). The bottom panel plots the corresponding test-time accuracy for each difficulty level.  The figure compares the performance of the Satori-Qwen model with that of the Satori-Qwen-FT model, highlighting how Satori-Qwen uses significantly more compute (longer response lengths) to achieve better accuracy on harder problems compared to the Satori-Qwen-FT model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Above: Test-time Response Length v.s. Problem Difficulty Level; Below: Test-time Accuracy v.s. Problem Difficulty Level. Compared to FT model (Satori-Qwen-FT), Satori-Qwen uses more test-time compute to tackle more challenging problems.
> </details>



![](https://arxiv.org/html/2502.02508/x5.png)

> 🔼 This figure compares two different methods of improving weaker language models (Llama-8B and Granite-8B): format tuning and distillation. Format tuning involves directly training the weaker models on a dataset of correctly formatted reasoning examples.  Distillation, on the other hand, involves training a stronger model (Satori-Qwen-7B) and then transferring its knowledge to the weaker models. The figure shows that distillation is a more effective method, resulting in significantly better performance on the benchmark tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Format Tuning v.s. Distillation. Distilling from a Stronger model (Satori-Qwen-7B) to weaker base models (Llama-8B and Granite-8B) are more effective than directly applying format tuning on weaker base models.
> </details>



![](https://arxiv.org/html/2502.02508/x6.png)

> 🔼 This figure shows an example of Satori's mathematical reasoning process.  Satori is given a problem and generates a step-by-step solution.  Unlike other LLMs, Satori includes self-verification steps: it checks each intermediate step to ensure correctness before proceeding to the next step. The figure visually depicts the flow of this process, highlighting Satori's self-reflection and correction of errors within its reasoning chain.
> <details>
> <summary>read the caption</summary>
> Figure 6: Math Domain Example. Satori verifies the correctness of the intermediate steps and proceeds to the next reasoning step.
> </details>



![](https://arxiv.org/html/2502.02508/x7.png)

> 🔼 This figure shows an example of Satori's reasoning process on a math problem from the AIME2024 benchmark.  The initial solution attempts to solve the problem through a complex, multi-step approach that ultimately contains errors. Satori's 'self-reflection' capability is demonstrated as it identifies those errors and proceeds to generate a second, more concise and accurate solution. This illustrates Satori's ability to self-correct and improve its reasoning through internal review.
> <details>
> <summary>read the caption</summary>
> Figure 7: Math Domain Example. Satori identifies the mistakes in the previous solution and proposes an alternative correct solution.
> </details>



![](https://arxiv.org/html/2502.02508/x8.png)

> 🔼 This figure shows an example of Satori's reasoning process on a mathematical problem from the MATH dataset.  The model initially attempts a solution, but then uses a meta-action token (reflect) to trigger a self-check.  Recognizing a flaw in the initial approach, it then explicitly starts a new, different solution path to arrive at the correct answer, demonstrating the model's self-reflection and strategy adaptation capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 8: Math Domain Example. Satori verifies the correctness of previous solution and initiates a different solution.
> </details>



![](https://arxiv.org/html/2502.02508/x9.png)

> 🔼 This figure showcases Satori's problem-solving process on a math problem.  Initially, Satori provides a solution, but then uses its self-reflection capabilities to identify areas where the solution could be improved. This leads to a second attempt where it presents a more concise and arguably more elegant method to arrive at the same correct answer. The figure highlights Satori's capacity for iterative refinement and its ability to explore alternative solution strategies, even after reaching a valid answer.
> <details>
> <summary>read the caption</summary>
> Figure 9: Math Domain Example. Satori verifies the correctness of previous solution and further explores a simpler solution.
> </details>



![](https://arxiv.org/html/2502.02508/x10.png)

> 🔼 This figure shows an example of Satori's mathematical reasoning process.  In the first stage, Satori checks the correctness of intermediate steps in its solution.  However, Satori later identifies that its initial approach was flawed.  It then uses this realization to correct its solution and propose a new, more accurate solution method.
> <details>
> <summary>read the caption</summary>
> Figure 10: Math Domain Example. 1) Satori verifies the correctness of intermediate steps in early stage. 2) Satori realizes that the pervious solution is actually erroneous and then proposes an alternative correct solution.
> </details>



![](https://arxiv.org/html/2502.02508/x11.png)

> 🔼 This figure showcases Satori's reasoning process on an out-of-domain problem from the StrategyQA benchmark.  The example demonstrates Satori's ability to identify errors in its own reasoning steps.  First, Satori provides an initial solution attempt but realizes there are flaws. It then initiates a second solution, which corrects the earlier mistakes and proceeds to a completely different, correct final answer. This highlights Satori's capacity for self-correction and exploring alternative strategies to reach a solution, even in unfamiliar domains.
> <details>
> <summary>read the caption</summary>
> Figure 11: Out-of-domain Example. 1) Satori identifies the potential mistakes in intermediate steps and initiates another solution. 2) Satori realizes that the pervious solution is still erroneous and then proposes an alternative correct solution.
> </details>



![](https://arxiv.org/html/2502.02508/x12.png)

> 🔼 This figure showcases an example from the StrategyQA dataset, demonstrating Satori's ability to identify and correct errors during complex reasoning tasks.  Initially, Satori attempts to solve the problem and recognizes some flaws mid-process.  It then proposes an alternative solution, highlighting its capacity for self-correction and refinement. The example shows multiple self-reflection processes and a change of approach to achieve the correct answer, demonstrating Satori's capabilities to tackle out-of-domain tasks that involve several logical reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 12: Out-of-domain Example. Satori identifies the potential mistakes in intermediate steps and initiates another correct solution.
> </details>



![](https://arxiv.org/html/2502.02508/x13.png)

> 🔼 This figure shows an example of Satori's reasoning process on an out-of-domain problem from the MMLUPro Economics section.  In the initial phase (1), Satori methodically checks the steps of its solution, verifying their accuracy. However, in the later phase (2), Satori identifies an error in its initial approach and proposes an alternative solution that leads to the correct answer. This highlights the model's capacity for self-correction and refinement throughout the reasoning process.
> <details>
> <summary>read the caption</summary>
> Figure 13: Out-of-domain Example. 1) Satori verifies the correctness of intermediate steps in early stage. 2) Satori realizes that the pervious solution is actually erroneous and then proposes an alternative correct solution.
> </details>



![](https://arxiv.org/html/2502.02508/x14.png)

> 🔼 This figure displays an example of Satori's reasoning process on an out-of-domain problem from the MMLUPro Economics benchmark.  The figure showcases Satori's ability to engage in multiple self-reflection processes during intermediate steps.  Instead of directly reaching a conclusion, Satori pauses at various points in its reasoning to re-evaluate its progress and identify potential errors or inefficiencies. This demonstrates its capacity for self-correction and refinement, a key aspect of its autoregressive search capability.
> <details>
> <summary>read the caption</summary>
> Figure 14: Out-of-domain Example. Satori engages in multiple self-reflection processes during intermediate reasoning steps.
> </details>



![](https://arxiv.org/html/2502.02508/x15.png)

> 🔼 This figure shows an example of Satori's reasoning process on an out-of-domain problem from the CRUXEval benchmark.  The example demonstrates two key aspects of Satori's capabilities. First, it highlights Satori's ability to verify the correctness of its intermediate reasoning steps.  The model initially checks its work, identifying that the reasoning is proceeding along a valid path. Second, and more importantly, the figure showcases Satori's ability to identify and correct errors in its own reasoning.  After successfully verifying the initial steps, Satori realizes a mistake has been made and proposes a completely different, correct solution to the problem.
> <details>
> <summary>read the caption</summary>
> Figure 15: Out-of-domain Example. 1) Satori verifies the correctness of intermediate steps in early stage. 2) Satori realizes that the pervious solution is actually erroneous and then proposes an alternative correct solution.
> </details>



![](https://arxiv.org/html/2502.02508/x16.png)

> 🔼 This figure shows an example of Satori's reasoning process on an out-of-domain problem from the TableBench dataset.  The initial solution attempts to calculate the average prominence of mountain peaks in the Democratic Republic of the Congo with elevations above 3000 meters. However, it incorrectly includes a peak with an elevation below the threshold.  Satori then identifies this error in its initial solution, corrects the mistake by excluding the erroneous peak from the calculation, and provides a revised solution reflecting the correct calculation of the average prominence.
> <details>
> <summary>read the caption</summary>
> Figure 16: Out-of-domain Example. Satori identifies the mistakes in previous solution and proposes an alternative correct solution.
> </details>



![](https://arxiv.org/html/2502.02508/x17.png)

> 🔼 This figure illustrates the process of generating high-quality demonstration trajectories for training.  It starts with a generator producing multiple reasoning attempts for a given problem. These attempts are then evaluated by a critic, which identifies errors in incorrect solutions and suggests corrections.  Correct solutions receive verification. The generator then uses this feedback to refine its incorrect attempts. This iterative refinement process (up to 'm' iterations) results in improved trajectories. Finally, a reward model selects the best trajectories to create the final synthetic training dataset, 𝒟syn.
> <details>
> <summary>read the caption</summary>
> Figure 17: Demonstration Trajectories Synthesis. First, multiple initial reasoning trajectories are sampled from the generator and sent to critic to ask for feedback. The critic model identifies the mistake for trajectories with incorrect final answers and proposes an alternative solution. For trajectories with correct final answers, the critic model provides verification of its correctness. Based on the feedback, the generator self-refines its previous trajectories, and the incorrect trajectories are sent to the critic again for additional feedback with maximum m𝑚mitalic_m iterations. At each step, those trajectories with successful refinements are preserved and finally, a reward model rates and collects high-quality demonstration trajectories to form the synthetic dataset 𝒟synsubscript𝒟syn\mathcal{D}_{\text{syn}}caligraphic_D start_POSTSUBSCRIPT syn end_POSTSUBSCRIPT.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.7">
<tr class="ltx_tr" id="S5.T2.7.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.7.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.1" style="font-size:80%;">Scale</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.7.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.2.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.3.1" style="font-size:80%;">FOLIO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.4.1" style="font-size:80%;">BGQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.5.1" style="font-size:80%;">CRUXEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.6.1" style="font-size:80%;">StrategyQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.1.7"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.7.1" style="font-size:80%;">TableBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.1.8"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.8.1" style="font-size:80%;">STEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.1.9"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.9.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.7.2.1" rowspan="3"><span class="ltx_text" id="S5.T2.7.2.1.1" style="font-size:80%;">Large</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.7.2.2"><span class="ltx_text" id="S5.T2.7.2.2.1" style="font-size:80%;">Llama-3.1-70B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.2.3"><span class="ltx_text" id="S5.T2.7.2.3.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.2.4"><span class="ltx_text" id="S5.T2.7.2.4.1" style="font-size:80%;">58.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.2.5"><span class="ltx_text" id="S5.T2.7.2.5.1" style="font-size:80%;">59.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.2.6"><span class="ltx_text" id="S5.T2.7.2.6.1" style="font-size:80%;">88.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.2.7"><span class="ltx_text" id="S5.T2.7.2.7.1" style="font-size:80%;">34.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.2.8"><span class="ltx_text" id="S5.T2.7.2.8.1" style="font-size:80%;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.2.9"><span class="ltx_text" id="S5.T2.7.2.9.1" style="font-size:80%;">61.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3">
<td class="ltx_td ltx_align_left" id="S5.T2.7.3.1"><span class="ltx_text" id="S5.T2.7.3.1.1" style="font-size:80%;">OpenMath2-Llama3.1-70B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.2"><span class="ltx_text" id="S5.T2.7.3.2.1" style="font-size:80%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3"><span class="ltx_text" id="S5.T2.7.3.3.1" style="font-size:80%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.4"><span class="ltx_text" id="S5.T2.7.3.4.1" style="font-size:80%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.5"><span class="ltx_text" id="S5.T2.7.3.5.1" style="font-size:80%;">95.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.6"><span class="ltx_text" id="S5.T2.7.3.6.1" style="font-size:80%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7"><span class="ltx_text" id="S5.T2.7.3.7.1" style="font-size:80%;">15.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.8"><span class="ltx_text" id="S5.T2.7.3.8.1" style="font-size:80%;">55.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.4">
<td class="ltx_td ltx_align_left" id="S5.T2.7.4.1"><span class="ltx_text" id="S5.T2.7.4.1.1" style="font-size:80%;">QwQ-32B-Preview</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.4.2"><span class="ltx_text" id="S5.T2.7.4.2.1" style="font-size:80%;">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.4.3"><span class="ltx_text" id="S5.T2.7.4.3.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.4.4"><span class="ltx_text" id="S5.T2.7.4.4.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.4.5"><span class="ltx_text" id="S5.T2.7.4.5.1" style="font-size:80%;">88.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.4.6"><span class="ltx_text" id="S5.T2.7.4.6.1" style="font-size:80%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.4.7"><span class="ltx_text" id="S5.T2.7.4.7.1" style="font-size:80%;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.4.8"><span class="ltx_text" id="S5.T2.7.4.8.1" style="font-size:80%;">71.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.7.5.1" rowspan="7"><span class="ltx_text" id="S5.T2.7.5.1.1" style="font-size:80%;">Small</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.7.5.2"><span class="ltx_text" id="S5.T2.7.5.2.1" style="font-size:80%;">Llama-3.1-8b-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.5.3"><span class="ltx_text" id="S5.T2.7.5.3.1" style="font-size:80%;">63.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.5.4"><span class="ltx_text" id="S5.T2.7.5.4.1" style="font-size:80%;">50.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.5.5"><span class="ltx_text" id="S5.T2.7.5.5.1" style="font-size:80%;">38.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.5.6"><span class="ltx_text" id="S5.T2.7.5.6.1" style="font-size:80%;">92.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.5.7"><span class="ltx_text" id="S5.T2.7.5.7.1" style="font-size:80%;">32.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.5.8"><span class="ltx_text" id="S5.T2.7.5.8.1" style="font-size:80%;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.5.9"><span class="ltx_text" id="S5.T2.7.5.9.1" style="font-size:80%;">53.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.6">
<td class="ltx_td ltx_align_left" id="S5.T2.7.6.1"><span class="ltx_text" id="S5.T2.7.6.1.1" style="font-size:80%;">OpenMath2-Llama3.1-8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.6.2"><span class="ltx_text" id="S5.T2.7.6.2.1" style="font-size:80%;">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.6.3"><span class="ltx_text" id="S5.T2.7.6.3.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.6.4"><span class="ltx_text" id="S5.T2.7.6.4.1" style="font-size:80%;">11.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.6.5"><span class="ltx_text" id="S5.T2.7.6.5.1" style="font-size:80%;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.6.6"><span class="ltx_text" id="S5.T2.7.6.6.1" style="font-size:80%;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.6.7"><span class="ltx_text" id="S5.T2.7.6.7.1" style="font-size:80%;">10.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.6.8"><span class="ltx_text" id="S5.T2.7.6.8.1" style="font-size:80%;">41.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.7">
<td class="ltx_td ltx_align_left" id="S5.T2.7.7.1"><span class="ltx_text" id="S5.T2.7.7.1.1" style="font-size:80%;">NuminaMath-7B-CoT</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.2"><span class="ltx_text" id="S5.T2.7.7.2.1" style="font-size:80%;">53.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.3"><span class="ltx_text" id="S5.T2.7.7.3.1" style="font-size:80%;">44.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.4"><span class="ltx_text" id="S5.T2.7.7.4.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.5"><span class="ltx_text" id="S5.T2.7.7.5.1" style="font-size:80%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.6"><span class="ltx_text" id="S5.T2.7.7.6.1" style="font-size:80%;">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.7"><span class="ltx_text" id="S5.T2.7.7.7.1" style="font-size:80%;">11.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.8"><span class="ltx_text" id="S5.T2.7.7.8.1" style="font-size:80%;">40.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.8">
<td class="ltx_td ltx_align_left" id="S5.T2.7.8.1"><span class="ltx_text" id="S5.T2.7.8.1.1" style="font-size:80%;">Qwen-2.5-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.8.2"><span class="ltx_text" id="S5.T2.7.8.2.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.8.3"><span class="ltx_text" id="S5.T2.7.8.3.1" style="font-size:80%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.8.4"><span class="ltx_text" id="S5.T2.7.8.4.1" style="font-size:80%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.8.5"><span class="ltx_text" id="S5.T2.7.8.5.1" style="font-size:80%;">91.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.8.6"><span class="ltx_text" id="S5.T2.7.8.6.1" style="font-size:80%;">43.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.8.7"><span class="ltx_text" id="S5.T2.7.8.7.1" style="font-size:80%;">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.8.8"><span class="ltx_text" id="S5.T2.7.8.8.1" style="font-size:80%;">62.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.9">
<td class="ltx_td ltx_align_left" id="S5.T2.7.9.1"><span class="ltx_text" id="S5.T2.7.9.1.1" style="font-size:80%;">Qwen-2.5-Math-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2"><span class="ltx_text" id="S5.T2.7.9.2.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.3"><span class="ltx_text" id="S5.T2.7.9.3.1" style="font-size:80%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.4"><span class="ltx_text" id="S5.T2.7.9.4.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.5"><span class="ltx_text" id="S5.T2.7.9.5.1" style="font-size:80%;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.6"><span class="ltx_text" id="S5.T2.7.9.6.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.7"><span class="ltx_text" id="S5.T2.7.9.7.1" style="font-size:80%;">45.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.8"><span class="ltx_text" id="S5.T2.7.9.8.1" style="font-size:80%;">52.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.7.10.1"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.1.1" style="font-size:80%;">Satori-Qwen-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.10.2"><span class="ltx_text" id="S5.T2.7.10.2.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.10.3"><span class="ltx_text" id="S5.T2.7.10.3.1" style="font-size:80%;">61.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.10.4"><span class="ltx_text" id="S5.T2.7.10.4.1" style="font-size:80%;">42.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.10.5"><span class="ltx_text" id="S5.T2.7.10.5.1" style="font-size:80%;">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.10.6"><span class="ltx_text" id="S5.T2.7.10.6.1" style="font-size:80%;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.10.7"><span class="ltx_text" id="S5.T2.7.10.7.1" style="font-size:80%;">56.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.10.8"><span class="ltx_text" id="S5.T2.7.10.8.1" style="font-size:80%;">60.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.7.11.1"><span class="ltx_text ltx_font_bold" id="S5.T2.7.11.1.1" style="font-size:80%;">Satori-Qwen-7B (Round 2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.11.2"><span class="ltx_text" id="S5.T2.7.11.2.1" style="font-size:80%;">72.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.11.3"><span class="ltx_text" id="S5.T2.7.11.3.1" style="font-size:80%;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.11.4"><span class="ltx_text" id="S5.T2.7.11.4.1" style="font-size:80%;">41.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.11.5"><span class="ltx_text" id="S5.T2.7.11.5.1" style="font-size:80%;">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.11.6"><span class="ltx_text" id="S5.T2.7.11.6.1" style="font-size:80%;">44.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.11.7"><span class="ltx_text" id="S5.T2.7.11.7.1" style="font-size:80%;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.11.8"><span class="ltx_text" id="S5.T2.7.11.8.1" style="font-size:80%;">60.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the Satori-Qwen-7B model on various out-of-domain benchmarks.  Despite being trained solely on mathematical datasets, Satori-Qwen-7B demonstrates strong generalization capabilities, outperforming the Qwen-2.5-Math-7B-Instruct model (which uses the same base model but with different training) across multiple benchmarks.  Furthermore, Satori-Qwen-7B's performance is comparable to or even surpasses other small-scale, general-purpose instruction-tuned LLMs, highlighting its ability to transfer knowledge gained from math reasoning to other diverse reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on Out-of-domain Benchmarks. Trained only on math datasets, Satori-Qwen-7B exhibits strong transferability across diverse out-of-domain benchmarks and outperforms Qwen-2.5-Math-7B-Instruct by a large margin. Moreover, despite not being trained in other domains, Satori-Qwen-7B achieves performance comparable to or exceeding other small-scale general instruct models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T3.7">
<tr class="ltx_tr" id="S6.T3.7.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T3.7.1.1" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.1.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T3.7.1.2" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.2.1" style="font-size:70%;">GSM8K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T3.7.1.3" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.3.1" style="font-size:70%;">MATH500</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T3.7.1.4" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.4.1" style="font-size:70%;">Olym.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T3.7.1.5" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.5.1" style="font-size:70%;">AMC2023</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T3.7.1.6" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.6.1" style="font-size:70%;">AIME2024</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T3.7.2.1" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.2.1.1" style="font-size:70%;">Qwen-2.5-Math-7B-Instruct</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T3.7.2.2" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.2.2.1" style="font-size:70%;">95.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T3.7.2.3" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.2.3.1" style="font-size:70%;">83.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T3.7.2.4" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.2.4.1" style="font-size:70%;">41.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T3.7.2.5" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.2.5.1" style="font-size:70%;">62.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T3.7.2.6" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.2.6.1" style="font-size:70%;">16.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T3.7.3.1" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.3.1.1" style="font-size:70%;">Qwen-7B-CoT (SFT+RL)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T3.7.3.2" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.3.2.1" style="font-size:70%;">93.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T3.7.3.3" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.3.3.1" style="font-size:70%;">84.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T3.7.3.4" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.3.4.1" style="font-size:70%;">42.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T3.7.3.5" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.3.5.1" style="font-size:70%;">60.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T3.7.3.6" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.3.6.1" style="font-size:70%;">10.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.4.1" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.4.1.1" style="font-size:70%;">Satori-Qwen-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.4.2" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.4.2.1" style="font-size:70%;">93.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.4.3" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.4.3.1" style="font-size:70%;">85.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.4.4" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.4.4.1" style="font-size:70%;">46.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.4.5" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.4.5.1" style="font-size:70%;">67.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.4.6" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="S6.T3.7.4.6.1" style="font-size:70%;">20.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two models: Satori-Qwen-7B, trained using the Chain-of-Action-Thought (COAT) reasoning format, and Qwen-7B-CoT, trained using the classical Chain-of-Thought (CoT) reasoning format. Both models use the same base model, Qwen-2.5-Math-7B. The table shows that Satori-Qwen-7B, trained with the COAT format, outperforms Qwen-7B-CoT, trained with the classical CoT format, across multiple mathematical reasoning benchmarks.  This highlights the advantage of the COAT reasoning format in enhancing the reasoning capabilities of LLMs.
> <details>
> <summary>read the caption</summary>
> Table 3: COAT Training v.s. CoT Training. Qwen-2.5-Math-7B trained with COAT reasoning format (Satori-Qwen-7B) outperforms the same base model but trained with classical CoT reasoning format (Qwen-7B-CoT)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T4.10">
<tr class="ltx_tr" id="S6.T4.10.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T4.10.7.1" rowspan="3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.7.1.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S6.T4.10.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.7.2.1" style="font-size:70%;">In-Domain</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.10.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.7.3.1" style="font-size:70%;">Out-of-Domain</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.10.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T4.10.8.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.8.1.1" style="font-size:70%;">MATH500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T4.10.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.8.2.1" style="font-size:70%;">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T4.10.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.8.3.1" style="font-size:70%;">MMLUProSTEM</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.10.6">
<td class="ltx_td ltx_align_center" id="S6.T4.5.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.5.1.1.1" style="font-size:70%;">T<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.5.1.1.1.m1.1"><semantics id="S6.T4.5.1.1.1.m1.1a"><mo id="S6.T4.5.1.1.1.m1.1.1" stretchy="false" xref="S6.T4.5.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.5.1.1.1.m1.1b"><ci id="S6.T4.5.1.1.1.m1.1.1.cmml" xref="S6.T4.5.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.5.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.5.1.1.1.m1.1d">→</annotation></semantics></math>F</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.6.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.6.2.2.1" style="font-size:70%;">F<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.6.2.2.1.m1.1"><semantics id="S6.T4.6.2.2.1.m1.1a"><mo id="S6.T4.6.2.2.1.m1.1.1" stretchy="false" xref="S6.T4.6.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.6.2.2.1.m1.1b"><ci id="S6.T4.6.2.2.1.m1.1.1.cmml" xref="S6.T4.6.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.6.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.6.2.2.1.m1.1d">→</annotation></semantics></math>T</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.7.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.7.3.3.1" style="font-size:70%;">T<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.7.3.3.1.m1.1"><semantics id="S6.T4.7.3.3.1.m1.1a"><mo id="S6.T4.7.3.3.1.m1.1.1" stretchy="false" xref="S6.T4.7.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.7.3.3.1.m1.1b"><ci id="S6.T4.7.3.3.1.m1.1.1.cmml" xref="S6.T4.7.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.7.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.7.3.3.1.m1.1d">→</annotation></semantics></math>F</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.8.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.8.4.4.1" style="font-size:70%;">F<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.8.4.4.1.m1.1"><semantics id="S6.T4.8.4.4.1.m1.1a"><mo id="S6.T4.8.4.4.1.m1.1.1" stretchy="false" xref="S6.T4.8.4.4.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.8.4.4.1.m1.1b"><ci id="S6.T4.8.4.4.1.m1.1.1.cmml" xref="S6.T4.8.4.4.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.8.4.4.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.8.4.4.1.m1.1d">→</annotation></semantics></math>T</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.9.5.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.9.5.5.1" style="font-size:70%;">T<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.9.5.5.1.m1.1"><semantics id="S6.T4.9.5.5.1.m1.1a"><mo id="S6.T4.9.5.5.1.m1.1.1" stretchy="false" xref="S6.T4.9.5.5.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.9.5.5.1.m1.1b"><ci id="S6.T4.9.5.5.1.m1.1.1.cmml" xref="S6.T4.9.5.5.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.9.5.5.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.9.5.5.1.m1.1d">→</annotation></semantics></math>F</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.10.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.6.6.1" style="font-size:70%;">F<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T4.10.6.6.1.m1.1"><semantics id="S6.T4.10.6.6.1.m1.1a"><mo id="S6.T4.10.6.6.1.m1.1.1" stretchy="false" xref="S6.T4.10.6.6.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T4.10.6.6.1.m1.1b"><ci id="S6.T4.10.6.6.1.m1.1.1.cmml" xref="S6.T4.10.6.6.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.10.6.6.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.10.6.6.1.m1.1d">→</annotation></semantics></math>T</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.10.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.10.9.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.9.1.1" style="font-size:70%;">Satori-Qwen-7B-FT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.9.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.9.2.1" style="font-size:70%;">79.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.9.3.1" style="font-size:70%;">20.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.9.4.1" style="font-size:70%;">65.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.9.5.1" style="font-size:70%;">34.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.9.6.1" style="font-size:70%;">59.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.10.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.9.7.1" style="font-size:70%;">40.8%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.10.10.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.10.10.1.1" style="font-size:70%;">Satori-Qwen-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.10.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.10.2.1" style="font-size:70%;">39.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.10.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.10.3.1" style="font-size:70%;">61.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.10.4.1" style="font-size:70%;">42.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.10.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.10.5.1" style="font-size:70%;">57.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.10.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.10.6.1" style="font-size:70%;">46.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.10.10.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S6.T4.10.10.7.1" style="font-size:70%;">53.5%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the self-correction capabilities of the Satori model.  It shows the percentage of times the model successfully corrected an incorrect answer to a correct one (positive self-correction, F→T) versus the percentage of times it changed a correct answer to an incorrect one (negative self-correction, T→F). Results are shown for both in-domain (MATH500 and OlympiadBench) and out-of-domain (MMLUProSTEM) tasks, highlighting the model's ability to self-correct across various problem types. The 'FT' version refers to the model after only format tuning, demonstrating the improvement gained through reinforcement learning.
> <details>
> <summary>read the caption</summary>
> Table 4: Satori’s Self-correction Capability. T→→\rightarrow→F: negative self-correction; F→→\rightarrow→T: positive self-correction.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T5.7">
<tr class="ltx_tr" id="S6.T5.7.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S6.T5.7.1.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.1.1.1" style="font-size:70%;">(In-domain)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T5.7.1.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.1.2.1" style="font-size:70%;">GSM8K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T5.7.1.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.1.3.1" style="font-size:70%;">MATH500</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T5.7.1.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.1.4.1" style="font-size:70%;">Olym.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T5.7.1.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.1.5.1" style="font-size:70%;">AMC2023</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T5.7.1.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.1.6.1" style="font-size:70%;">AIME2024</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.7.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S6.T5.7.2.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.2.1.1" style="font-size:70%;">Qwen-2.5-Math-7B-Instruct</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.2.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.2.2.1" style="font-size:70%;">95.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.2.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.2.3.1" style="font-size:70%;">83.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.2.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.2.4.1" style="font-size:70%;">41.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.2.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.2.5.1" style="font-size:70%;">62.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.2.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.2.6.1" style="font-size:70%;">16.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.7.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T5.7.3.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.3.1.1" style="font-size:70%;">Satori-Qwen-7B-FT (300K)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.3.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.3.2.1" style="font-size:70%;">92.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.3.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.3.3.1" style="font-size:70%;">78.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.3.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.3.4.1" style="font-size:70%;">40.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.3.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.3.5.1" style="font-size:70%;">65.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.3.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.3.6.1" style="font-size:70%;">16.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.7.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T5.7.4.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.4.1.1" style="font-size:70%;">Satori-Qwen-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.4.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.4.2.1" style="font-size:70%;">93.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.4.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.4.3.1" style="font-size:70%;">85.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.4.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.4.4.1" style="font-size:70%;">46.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.4.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.4.5.1" style="font-size:70%;">67.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.4.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.4.6.1" style="font-size:70%;">20.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.7.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S6.T5.7.5.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.5.1.1" style="font-size:70%;">(Out-of-domain)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.5.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.5.2.1" style="font-size:70%;">BGQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.5.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.5.3.1" style="font-size:70%;">CRUX</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.5.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.5.4.1" style="font-size:70%;">STGQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.5.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.5.5.1" style="font-size:70%;">TableBench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.5.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.5.6.1" style="font-size:70%;">STEM</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.7.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S6.T5.7.6.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.6.1.1" style="font-size:70%;">Qwen-2.5-Math-7B-Instruct</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.6.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.6.2.1" style="font-size:70%;">51.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.6.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.6.3.1" style="font-size:70%;">28.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.6.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.6.4.1" style="font-size:70%;">85.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.6.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.6.5.1" style="font-size:70%;">36.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.7.6.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.6.6.1" style="font-size:70%;">45.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S6.T5.7.7.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.7.1.1" style="font-size:70%;">Satori-Qwen-7B-FT (300K)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.7.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.7.2.1" style="font-size:70%;">50.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.7.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.7.3.1" style="font-size:70%;">29.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.7.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.7.4.1" style="font-size:70%;">74.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.7.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.7.5.1" style="font-size:70%;">35.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S6.T5.7.7.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.7.6.1" style="font-size:70%;">47.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.7.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S6.T5.7.8.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.7.8.1.1" style="font-size:70%;">Satori-Qwen-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T5.7.8.2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.8.2.1" style="font-size:70%;">61.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T5.7.8.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.8.3.1" style="font-size:70%;">42.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T5.7.8.4" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.8.4.1" style="font-size:70%;">86.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T5.7.8.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.8.5.1" style="font-size:70%;">43.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T5.7.8.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="S6.T5.7.8.6.1" style="font-size:70%;">56.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two models: Satori-Qwen, trained with a small amount of supervised fine-tuning (10K data points) followed by a large amount of reinforcement learning (300K data points); and Qwen-2.5-Math-7B, trained solely with supervised fine-tuning using a much larger dataset (300K data points).  The comparison is performed across a variety of mathematical and non-mathematical reasoning benchmarks. The results demonstrate that incorporating reinforcement learning significantly improves the model's performance, as Satori-Qwen outperforms Qwen-2.5-Math-7B across all benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 5: Large-scale FT V.S. Large-scale RL Satori-Qwen (10K FT data + 300K RL data) outperforms same base model Qwen-2.5-Math-7B trained with 300K FT data (w/o RL) across all math and out-of-domain benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T6.6">
<tr class="ltx_tr" id="A5.T6.6.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A5.T6.6.1.1" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.1.1" style="font-size:80%;">Bonus Scale</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A5.T6.6.1.2" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.2.1" style="font-size:80%;">GSM8K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A5.T6.6.1.3" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.3.1" style="font-size:80%;">MATH500</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A5.T6.6.1.4" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.4.1" style="font-size:80%;">Olym.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A5.T6.6.1.5" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.5.1" style="font-size:80%;">AMC2023</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A5.T6.6.1.6" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.6.1.6.1" style="font-size:80%;">AIME2024</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T6.6.2.1" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.6.2.1.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T6.6.2.2" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.2.2.1" style="font-size:80%;">93.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T6.6.2.3" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.2.3.1" style="font-size:80%;">84.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T6.6.2.4" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.2.4.1" style="font-size:80%;">48.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T6.6.2.5" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.2.5.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T6.6.2.6" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.2.6.1" style="font-size:80%;">16.7</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T6.6.3.1" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T6.6.3.1.1" style="font-size:80%;">0.5 (default)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T6.6.3.2" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.3.2.1" style="font-size:80%;">93.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T6.6.3.3" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.3.3.1" style="font-size:80%;">85.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T6.6.3.4" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.3.4.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T6.6.3.5" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.3.5.1" style="font-size:80%;">67.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T6.6.3.6" style="padding-left:1.3pt;padding-right:1.3pt;"><span class="ltx_text" id="A5.T6.6.3.6.1" style="font-size:80%;">20.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of the reflection bonus on the model's performance. The reflection bonus is a reward mechanism introduced to encourage the model to engage in self-reflection during the reasoning process. The study compares the model's performance with the reflection bonus set to 0.0 and 0.5 (default), across various math reasoning benchmarks, including GSM8K, MATH500, OlympiadBench, AMC2023, and AIME2024. The results show that the default value of 0.5 yields better performance, particularly on challenging benchmarks like AMC2023 and AIME2024.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation Study on Reflection Bonus.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.02508/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02508/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}