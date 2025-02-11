---
title: "Exploring the Limit of Outcome Reward for Learning Mathematical Reasoning"
summary: "OREAL, a novel RL framework, achieves state-of-the-art mathematical reasoning in LLMs using only binary outcome rewards, demonstrating that a 7B model can match the performance of 32B models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06781 {{< /keyword >}}
{{< keyword icon="writer" >}} Chengqi Lyu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06781" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06781" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06781/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Mathematical reasoning in large language models (LLMs) is a challenging problem.  Existing methods often rely on complex techniques and abundant data, hindering the development of efficient and robust reasoning models.  The sparse nature of binary feedback in mathematical problems poses a significant challenge for reinforcement learning (RL) approaches. Prior research has used different approaches such as distillation, however, those methods have limitations in scalability and fundamental reasoning capability. This paper introduces OREAL, a new RL framework designed to overcome these limitations. 

OREAL uses a theoretically sound approach, leveraging the properties of best-of-N sampling to learn from positive examples and incorporating reward shaping to handle negative samples effectively.  A token-level reward model further enhances learning by focusing on important steps in the reasoning process.  Experiments show OREAL achieves state-of-the-art results on various mathematical reasoning benchmarks, surpassing previous models in terms of accuracy and efficiency. **The findings demonstrate the potential of OREAL to push the boundaries of mathematical reasoning capabilities in LLMs and its applicability to other similar tasks involving sparse rewards.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OREAL, a new reinforcement learning framework, significantly improves mathematical reasoning in large language models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Behavior cloning on positive trajectories from best-of-N sampling is sufficient to learn optimal policies in binary feedback environments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A token-level reward model effectively alleviates the difficulties caused by sparse rewards, leading to state-of-the-art performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in AI and machine learning, particularly those working on large language models and reinforcement learning.  It pushes the boundaries of mathematical reasoning capabilities in LLMs by introducing a novel RL framework that effectively leverages sparse binary feedback. This work also provides valuable theoretical insights into reward-based RL for reasoning tasks and demonstrates state-of-the-art results on various benchmark datasets. The findings and techniques presented open exciting new avenues for research in more complex reasoning problems and for creating more robust and powerful AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.06781/x1.png)

> 🔼 This bar chart compares the performance of the OREAL-32B model against several other state-of-the-art large language models on the MATH-500 benchmark dataset.  The chart displays the pass@1 accuracy (the percentage of times the model correctly answered the question on the first try) for each model.  Models are compared across multiple benchmarks including MATH-500, AIME2024, AIME2025-1, LiveMathBench, and OlympiadBench, showcasing performance across different question difficulty levels and mathematical topics.  The figure highlights that OREAL-32B significantly outperforms many existing models, achieving the best performance overall.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overall performance between OREAL-32B and some competitive baselines.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.1">
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1" style="font-size:90%;">MATH-500</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.1" style="font-size:90%;">AIME2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.1" style="font-size:90%;">AIME2025-I</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.1" style="font-size:90%;">LiveMath</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.1" style="font-size:90%;">Olympiad</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T1.1.2.1"><span class="ltx_text" id="S4.T1.1.2.1.1" style="font-size:90%;">API Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.3.1">
<span class="ltx_text" id="S4.T1.1.3.1.1" style="font-size:90%;">GPT-4o-1120 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib42" title="">42</a><span class="ltx_text" id="S4.T1.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.3.2"><span class="ltx_text" id="S4.T1.1.3.2.1" style="font-size:90%;">72.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.3.3"><span class="ltx_text" id="S4.T1.1.3.3.1" style="font-size:90%;">16.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.3.4"><span class="ltx_text" id="S4.T1.1.3.4.1" style="font-size:90%;">13.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.3.5"><span class="ltx_text" id="S4.T1.1.3.5.1" style="font-size:90%;">44.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.3.6"><span class="ltx_text" id="S4.T1.1.3.6.1" style="font-size:90%;">33.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.4.1">
<span class="ltx_text" id="S4.T1.1.4.1.1" style="font-size:90%;">Claude-3.5-Sonnet-1022 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib43" title="">43</a><span class="ltx_text" id="S4.T1.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.4.2"><span class="ltx_text" id="S4.T1.1.4.2.1" style="font-size:90%;">78.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.4.3"><span class="ltx_text" id="S4.T1.1.4.3.1" style="font-size:90%;">13.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.4.4"><span class="ltx_text" id="S4.T1.1.4.4.1" style="font-size:90%;">3.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.4.5"><span class="ltx_text" id="S4.T1.1.4.5.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.4.6"><span class="ltx_text" id="S4.T1.1.4.6.1" style="font-size:90%;">35.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.5.1">
<span class="ltx_text" id="S4.T1.1.5.1.1" style="font-size:90%;">OpenAI-o1-preview </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib10" title="">10</a><span class="ltx_text" id="S4.T1.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.5.2"><span class="ltx_text" id="S4.T1.1.5.2.1" style="font-size:90%;">85.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.5.3"><span class="ltx_text" id="S4.T1.1.5.3.1" style="font-size:90%;">44.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.5.4"><span class="ltx_text" id="S4.T1.1.5.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.5.5"><span class="ltx_text" id="S4.T1.1.5.5.1" style="font-size:90%;">71.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.5.6"><span class="ltx_text" id="S4.T1.1.5.6.1" style="font-size:90%;">43.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.6.1">
<span class="ltx_text" id="S4.T1.1.6.1.1" style="font-size:90%;">OpenAI-o1-mini </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib10" title="">10</a><span class="ltx_text" id="S4.T1.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.6.2"><span class="ltx_text" id="S4.T1.1.6.2.1" style="font-size:90%;">90.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.6.3"><span class="ltx_text" id="S4.T1.1.6.3.1" style="font-size:90%;">56.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.6.4"><span class="ltx_text" id="S4.T1.1.6.4.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.6.5"><span class="ltx_text" id="S4.T1.1.6.5.1" style="font-size:90%;">74.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.6.6"><span class="ltx_text" id="S4.T1.1.6.6.1" style="font-size:90%;">46.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T1.1.7.1"><span class="ltx_text" id="S4.T1.1.7.1.1" style="font-size:90%;">7B Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.8.1">
<span class="ltx_text" id="S4.T1.1.8.1.1" style="font-size:90%;">Qwen2.5-Instrust-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib39" title="">39</a><span class="ltx_text" id="S4.T1.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.8.2"><span class="ltx_text" id="S4.T1.1.8.2.1" style="font-size:90%;">76.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.8.3"><span class="ltx_text" id="S4.T1.1.8.3.1" style="font-size:90%;">13.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.8.4"><span class="ltx_text" id="S4.T1.1.8.4.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.8.5"><span class="ltx_text" id="S4.T1.1.8.5.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.8.6"><span class="ltx_text" id="S4.T1.1.8.6.1" style="font-size:90%;">29.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.9.1">
<span class="ltx_text" id="S4.T1.1.9.1.1" style="font-size:90%;">Qwen2.5-Math-Instrust-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib39" title="">39</a><span class="ltx_text" id="S4.T1.1.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.9.2"><span class="ltx_text" id="S4.T1.1.9.2.1" style="font-size:90%;">81.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.9.3"><span class="ltx_text" id="S4.T1.1.9.3.1" style="font-size:90%;">20.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.9.4"><span class="ltx_text" id="S4.T1.1.9.4.1" style="font-size:90%;">13.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.9.5"><span class="ltx_text" id="S4.T1.1.9.5.1" style="font-size:90%;">44.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.9.6"><span class="ltx_text" id="S4.T1.1.9.6.1" style="font-size:90%;">31.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.10.1">
<span class="ltx_text" id="S4.T1.1.10.1.1" style="font-size:90%;">rStar-Math-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib45" title="">45</a><span class="ltx_text" id="S4.T1.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.10.2"><span class="ltx_text" id="S4.T1.1.10.2.1" style="font-size:90%;">78.4*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.10.3"><span class="ltx_text" id="S4.T1.1.10.3.1" style="font-size:90%;">26.7*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.10.4"><span class="ltx_text" id="S4.T1.1.10.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.10.5"><span class="ltx_text" id="S4.T1.1.10.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.10.6"><span class="ltx_text" id="S4.T1.1.10.6.1" style="font-size:90%;">47.1*</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.11.1">
<span class="ltx_text" id="S4.T1.1.11.1.1" style="font-size:90%;">Qwen2.5-7B-SimpleRL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib44" title="">44</a><span class="ltx_text" id="S4.T1.1.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.11.2"><span class="ltx_text" id="S4.T1.1.11.2.1" style="font-size:90%;">82.4*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.11.3"><span class="ltx_text" id="S4.T1.1.11.3.1" style="font-size:90%;">26.7*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.11.4"><span class="ltx_text" id="S4.T1.1.11.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.11.5"><span class="ltx_text" id="S4.T1.1.11.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.11.6"><span class="ltx_text" id="S4.T1.1.11.6.1" style="font-size:90%;">37.6*</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.12.1">
<span class="ltx_text" id="S4.T1.1.12.1.1" style="font-size:90%;">Eurus-2-7B-PRIME </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib20" title="">20</a><span class="ltx_text" id="S4.T1.1.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.12.2"><span class="ltx_text" id="S4.T1.1.12.2.1" style="font-size:90%;">79.2*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.12.3"><span class="ltx_text" id="S4.T1.1.12.3.1" style="font-size:90%;">26.7*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.12.4"><span class="ltx_text" id="S4.T1.1.12.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.12.5"><span class="ltx_text" id="S4.T1.1.12.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.12.6"><span class="ltx_text" id="S4.T1.1.12.6.1" style="font-size:90%;">42.1*</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.13.1">
<span class="ltx_text" id="S4.T1.1.13.1.1" style="font-size:90%;">DeepSeek-R1-Distill-Qwen-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib13" title="">13</a><span class="ltx_text" id="S4.T1.1.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.13.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.13.2.1" style="font-size:90%;">92.8</span><span class="ltx_text" id="S4.T1.1.13.2.2" style="font-size:90%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.13.3">
<span class="ltx_text ltx_font_bold" id="S4.T1.1.13.3.1" style="font-size:90%;">55.5</span><span class="ltx_text" id="S4.T1.1.13.3.2" style="font-size:90%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.13.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.13.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.13.5.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.13.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.13.6.1" style="font-size:90%;">64.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.14.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.14.1.1" style="font-size:90%;">OREAL-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.14.2"><span class="ltx_text" id="S4.T1.1.14.2.1" style="font-size:90%;">91.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.14.3"><span class="ltx_text" id="S4.T1.1.14.3.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.14.4"><span class="ltx_text" id="S4.T1.1.14.4.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.14.5"><span class="ltx_text" id="S4.T1.1.14.5.1" style="font-size:90%;">62.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.14.6"><span class="ltx_text" id="S4.T1.1.14.6.1" style="font-size:90%;">59.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.15">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.15.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.15.1.1" style="font-size:90%;">OREAL-DSR1-Distill-Qwen-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.15.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.15.2.1" style="font-size:90%;">94.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.15.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.15.3.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.15.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.15.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.15.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.15.5.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.15.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.15.6.1" style="font-size:90%;">66.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.16">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T1.1.16.1"><span class="ltx_text" id="S4.T1.1.16.1.1" style="font-size:90%;">32B Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.17">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.1.17.1">
<span class="ltx_text" id="S4.T1.1.17.1.1" style="font-size:90%;">Qwen2.5-Instrust-32B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib39" title="">39</a><span class="ltx_text" id="S4.T1.1.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.17.2"><span class="ltx_text" id="S4.T1.1.17.2.1" style="font-size:90%;">80.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.17.3"><span class="ltx_text" id="S4.T1.1.17.3.1" style="font-size:90%;">20.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.17.4"><span class="ltx_text" id="S4.T1.1.17.4.1" style="font-size:90%;">13.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.17.5"><span class="ltx_text" id="S4.T1.1.17.5.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.1.17.6"><span class="ltx_text" id="S4.T1.1.17.6.1" style="font-size:90%;">40.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.18">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.18.1">
<span class="ltx_text" id="S4.T1.1.18.1.1" style="font-size:90%;">QwQ-32B-Preview </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.18.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib22" title="">22</a><span class="ltx_text" id="S4.T1.1.18.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.18.2"><span class="ltx_text" id="S4.T1.1.18.2.1" style="font-size:90%;">90.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.18.3"><span class="ltx_text" id="S4.T1.1.18.3.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.18.4"><span class="ltx_text" id="S4.T1.1.18.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.18.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.18.5.1" style="font-size:90%;">72.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.18.6"><span class="ltx_text" id="S4.T1.1.18.6.1" style="font-size:90%;">58.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.19">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.19.1">
<span class="ltx_text" id="S4.T1.1.19.1.1" style="font-size:90%;">DeepSeek-R1-Distill-Qwen-32B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.19.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib13" title="">13</a><span class="ltx_text" id="S4.T1.1.19.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.19.2"><span class="ltx_text" id="S4.T1.1.19.2.1" style="font-size:90%;">94.3*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.19.3">
<span class="ltx_text ltx_font_bold" id="S4.T1.1.19.3.1" style="font-size:90%;">72.6</span><span class="ltx_text" id="S4.T1.1.19.3.2" style="font-size:90%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.19.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.19.4.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.19.5"><span class="ltx_text" id="S4.T1.1.19.5.1" style="font-size:90%;">67.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T1.1.19.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.19.6.1" style="font-size:90%;">71.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.20">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.1.20.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.20.1.1" style="font-size:90%;">OREAL-32B</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.20.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.20.2.1" style="font-size:90%;">95.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.20.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.20.3.1" style="font-size:90%;">60.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.20.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.20.4.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.20.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.20.5.1" style="font-size:90%;">74.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.1.20.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.20.6.1" style="font-size:90%;">72.4</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive comparison of the performance of the OREAL model against various baselines across multiple benchmark datasets.  It shows pass@1 accuracy for MATH-500, AIME2024, AIME2025 Part 1, LiveMathBench, and OlympiadBench.  The table highlights OREAL's performance at both 7B and 32B parameter scales, indicating improvements over existing models.  It also includes a row for a model where DeepSeek-R1-Distill-Qwen-7B was further trained using the OREAL framework.  Note that some baseline results are directly taken from published reports, marked with an asterisk (*).  The best and second-best performing models at the 7B and 32B scales are highlighted in bold and underlined.
> <details>
> <summary>read the caption</summary>
> Table 1:  Overall evaluation results for OREAL and each baseline. “OREAL-DSR1-Distill-Qwen-7B” denotes the DeepSeek-R1-Distill-Qwen7B trained by OREAL. “AIME2025-I”, “LiveMath” and “Olympiad” represent “AIME 2025 Part1”, “LiveMathBench”, and “OlympiadBench”, respectively. For models at the parameter scale of 7B and 32B, we use Bold and Underlined to represent the best and second best performance, respectively. For part of the baseline, we directly use the results from their report, marked with *.
> </details>





### In-depth insights


#### OREAL Framework
The OREAL framework represents a novel reinforcement learning approach designed to push the boundaries of mathematical reasoning in large language models (LLMs).  **Its core innovation lies in addressing the inherent sparsity of outcome-based rewards in such tasks.** By leveraging best-of-N sampling for positive examples and theoretically-grounded reward shaping for negative ones, OREAL ensures effective policy gradient estimation, even with limited feedback.  The integration of a token-level reward model further enhances learning by providing granular credit assignment, mitigating the difficulties posed by long reasoning chains and partial correctness.  **This framework's theoretical rigor, coupled with its empirical success in achieving state-of-the-art results on benchmark datasets, highlights its potential for significantly advancing the capabilities of LLMs in mathematical problem-solving.**  Importantly, OREAL demonstrates that even relatively smaller models can achieve top performance using its approach, a significant departure from previous reliance on massive-scale, distilled models.

#### BoN Sampling
Best-of-N (BoN) sampling is a crucial technique in reinforcement learning, particularly effective when dealing with sparse reward environments.  **BoN's core idea is to run multiple trials of a policy, selecting the single best outcome from these trials.** This approach addresses the challenge of sparse rewards by focusing on successful trajectories, thereby improving data efficiency.  The paper highlights that **behavior cloning using BoN-sampled positive trajectories is sufficient for learning a near-optimal policy in such environments**, offering a theoretically grounded justification for its effectiveness.  However, the inherent bias of BoN sampling, favoring successful trajectories and under-representing failures, is addressed through reward reshaping techniques, ensuring gradient consistency and optimizing the learning process across all trajectories. **This sophisticated approach allows for effective learning even with limited positive examples.**  The authors emphasize that BoN sampling, while advantageous, needs careful consideration to counteract the imbalance in positive and negative sample distributions; this is crucial for effective RL in complex reasoning tasks.

#### Reward Shaping
Reward shaping in reinforcement learning (RL), particularly within the context of mathematical reasoning, addresses the challenge of **sparse rewards**.  In mathematical problems, the feedback is typically binary (correct/incorrect), making it difficult for an RL agent to learn effectively from its mistakes. Reward shaping modifies the raw reward signal to guide the agent's learning process by providing more informative feedback during training. This can involve assigning partial credit for intermediate steps or progress towards a solution, thereby alleviating the sparsity issue and **accelerating learning**.  **Theoretical analysis** can provide insights on how to optimally design reward shaping functions to ensure convergence to a good policy.  Effective reward shaping strategies in mathematical reasoning often require careful consideration of the problem structure and partial correctness of reasoning steps, and techniques like **token-level rewards** provide a promising avenue.

#### Token Rewards
The concept of 'Token Rewards' in the context of reinforcement learning for mathematical reasoning is **crucial** for addressing the sparsity of traditional outcome-based rewards.  By assigning rewards at the token level, the model receives more frequent feedback, guiding the learning process towards better intermediate steps and not just the final answer.  This approach is **particularly beneficial** for tasks involving long reasoning chains where partial correctness is common.  **Effective token reward design** requires careful consideration of token importance and how to balance exploration and exploitation to maximize learning efficiency.  A well-designed token reward system can significantly improve the model's ability to generate correct reasoning steps and ultimately achieve higher accuracy on complex mathematical problems.  The method allows for **finer-grained control** over the learning process, leading to more robust and generalizable solutions compared to only using final outcome rewards.

#### Future of OREAL
The future of OREAL hinges on addressing its limitations and exploring its potential.  **Extending OREAL to more complex mathematical domains** beyond MATH-500, AIME, and Olympiad problems is crucial. This involves tackling problems requiring diverse reasoning skills and potentially incorporating external knowledge sources.  **Improving the efficiency of the RL training process** is vital. The current method's computational cost is significant; hence, research into more efficient RL algorithms or approximations could greatly improve scalability. **Investigating alternative reward mechanisms** beyond binary outcome rewards is also essential.  Developing methods for assigning credit to intermediate steps in reasoning trajectories would enable finer-grained learning and potentially enhance performance.  Finally, **thorough analysis of the impact of initial policy models** is needed. The success of OREAL is partly dependent on the strength of the pre-trained language model; hence, researching ways to optimally select and enhance the initial policy will be key to future advancements.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S4.F2.fig1.1">
<tr class="ltx_tr" id="S4.F2.fig1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.F2.fig1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.F2.fig1.1.1.1.1" style="font-size:90%;">Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F2.fig1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.F2.fig1.1.1.2.1" style="font-size:90%;">MATH-500</span></td>
</tr>
<tr class="ltx_tr" id="S4.F2.fig1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.F2.fig1.1.2.1"><span class="ltx_text" id="S4.F2.fig1.1.2.1.1" style="font-size:90%;">Initial Policy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F2.fig1.1.2.2"><span class="ltx_text" id="S4.F2.fig1.1.2.2.1" style="font-size:90%;">84.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.F2.fig1.1.3">
<td class="ltx_td ltx_align_left" id="S4.F2.fig1.1.3.1"><span class="ltx_text" id="S4.F2.fig1.1.3.1.1" style="font-size:90%;">+ REINFORCE (baseline)</span></td>
<td class="ltx_td ltx_align_center" id="S4.F2.fig1.1.3.2"><span class="ltx_text" id="S4.F2.fig1.1.3.2.1" style="font-size:90%;">85.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.F2.fig1.1.4">
<td class="ltx_td ltx_align_left" id="S4.F2.fig1.1.4.1"><span class="ltx_text" id="S4.F2.fig1.1.4.1.1" style="font-size:90%;">+ Reward Shaping</span></td>
<td class="ltx_td ltx_align_center" id="S4.F2.fig1.1.4.2"><span class="ltx_text" id="S4.F2.fig1.1.4.2.1" style="font-size:90%;">86.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.F2.fig1.1.5">
<td class="ltx_td ltx_align_left" id="S4.F2.fig1.1.5.1"><span class="ltx_text" id="S4.F2.fig1.1.5.1.1" style="font-size:90%;">+ Behavior Cloning</span></td>
<td class="ltx_td ltx_align_center" id="S4.F2.fig1.1.5.2"><span class="ltx_text" id="S4.F2.fig1.1.5.2.1" style="font-size:90%;">87.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.F2.fig1.1.6">
<td class="ltx_td ltx_align_left" id="S4.F2.fig1.1.6.1"><span class="ltx_text" id="S4.F2.fig1.1.6.1.1" style="font-size:90%;">+ Importance Sampling</span></td>
<td class="ltx_td ltx_align_center" id="S4.F2.fig1.1.6.2"><span class="ltx_text" id="S4.F2.fig1.1.6.2.1" style="font-size:90%;">89.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.F2.fig1.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.F2.fig1.1.7.1"><span class="ltx_text" id="S4.F2.fig1.1.7.1.1" style="font-size:90%;">+ Skill-based Enhancement</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F2.fig1.1.7.2"><span class="ltx_text" id="S4.F2.fig1.1.7.2.1" style="font-size:90%;">91.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of various reinforcement learning (RL) components on the performance of a 7B parameter language model on the MATH-500 benchmark.  It shows the pass@1 accuracy achieved by incrementally adding different RL techniques:  Reward Shaping, Behavior Cloning, and Importance Sampling. The baseline uses REINFORCE. The results demonstrate the contribution of each component towards improving the model's mathematical reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study for 7B models performance on MATH-500 with different reinforcement learning settings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.1">
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T3.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1" style="font-size:90%;">MATH-500</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T3.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.1" style="font-size:90%;">AIME2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T3.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.1" style="font-size:90%;">AIME2025-I</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T3.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.1" style="font-size:90%;">LiveMath</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T3.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.1" style="font-size:90%;">Olympiad</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.1.2.1"><span class="ltx_text" id="S4.T3.1.2.1.1" style="font-size:90%;">OREAL-7B-SFT-wo-enhance</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.2.2"><span class="ltx_text" id="S4.T3.1.2.2.1" style="font-size:90%;">84.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.2.3"><span class="ltx_text" id="S4.T3.1.2.3.1" style="font-size:90%;">26.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.2.4"><span class="ltx_text" id="S4.T3.1.2.4.1" style="font-size:90%;">26.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.2.5"><span class="ltx_text" id="S4.T3.1.2.5.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.2.6"><span class="ltx_text" id="S4.T3.1.2.6.1" style="font-size:90%;">55.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T3.1.3.1"><span class="ltx_text" id="S4.T3.1.3.1.1" style="font-size:90%;">OREAL-7B-wo-enhance</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.3.2"><span class="ltx_text" id="S4.T3.1.3.2.1" style="font-size:90%;">89.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.3.3"><span class="ltx_text" id="S4.T3.1.3.3.1" style="font-size:90%;">36.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.3.4"><span class="ltx_text" id="S4.T3.1.3.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.3.5"><span class="ltx_text" id="S4.T3.1.3.5.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.3.6"><span class="ltx_text" id="S4.T3.1.3.6.1" style="font-size:90%;">58.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.1.4.1"><span class="ltx_text" id="S4.T3.1.4.1.1" style="font-size:90%;">OREAL-7B-SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.4.2"><span class="ltx_text" id="S4.T3.1.4.2.1" style="font-size:90%;">86.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.4.3"><span class="ltx_text" id="S4.T3.1.4.3.1" style="font-size:90%;">26.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.4.4"><span class="ltx_text" id="S4.T3.1.4.4.1" style="font-size:90%;">26.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.4.5"><span class="ltx_text" id="S4.T3.1.4.5.1" style="font-size:90%;">54.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.4.6"><span class="ltx_text" id="S4.T3.1.4.6.1" style="font-size:90%;">56.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T3.1.5.1"><span class="ltx_text" id="S4.T3.1.5.1.1" style="font-size:90%;">OREAL-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.5.2"><span class="ltx_text" id="S4.T3.1.5.2.1" style="font-size:90%;">91.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.5.3"><span class="ltx_text" id="S4.T3.1.5.3.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.5.4"><span class="ltx_text" id="S4.T3.1.5.4.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.5.5"><span class="ltx_text" id="S4.T3.1.5.5.1" style="font-size:90%;">62.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.5.6"><span class="ltx_text" id="S4.T3.1.5.6.1" style="font-size:90%;">59.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.1.6.1">
<span class="ltx_text" id="S4.T3.1.6.1.1" style="font-size:90%;">DeepSeek-R1-Distill-Qwen-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.06781v1#bib.bib13" title="">13</a><span class="ltx_text" id="S4.T3.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.6.2"><span class="ltx_text" id="S4.T3.1.6.2.1" style="font-size:90%;">92.8*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.6.3"><span class="ltx_text" id="S4.T3.1.6.3.1" style="font-size:90%;">55.5*</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.6.4"><span class="ltx_text" id="S4.T3.1.6.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.6.5"><span class="ltx_text" id="S4.T3.1.6.5.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.6.6"><span class="ltx_text" id="S4.T3.1.6.6.1" style="font-size:90%;">64.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T3.1.7.1"><span class="ltx_text" id="S4.T3.1.7.1.1" style="font-size:90%;">OREAL-DSR1-Distill-Qwen-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.7.2"><span class="ltx_text" id="S4.T3.1.7.2.1" style="font-size:90%;">94.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.7.3"><span class="ltx_text" id="S4.T3.1.7.3.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.7.4"><span class="ltx_text" id="S4.T3.1.7.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.7.5"><span class="ltx_text" id="S4.T3.1.7.5.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.1.7.6"><span class="ltx_text" id="S4.T3.1.7.6.1" style="font-size:90%;">66.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T3.1.8.1"><span class="ltx_text" id="S4.T3.1.8.1.1" style="font-size:90%;">OREAL-32B-SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.8.2"><span class="ltx_text" id="S4.T3.1.8.2.1" style="font-size:90%;">92.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.8.3"><span class="ltx_text" id="S4.T3.1.8.3.1" style="font-size:90%;">43.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.8.4"><span class="ltx_text" id="S4.T3.1.8.4.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.8.5"><span class="ltx_text" id="S4.T3.1.8.5.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.1.8.6"><span class="ltx_text" id="S4.T3.1.8.6.1" style="font-size:90%;">68.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.1.9.1"><span class="ltx_text" id="S4.T3.1.9.1.1" style="font-size:90%;">OREAL-32B</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.9.2"><span class="ltx_text" id="S4.T3.1.9.2.1" style="font-size:90%;">95.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.9.3"><span class="ltx_text" id="S4.T3.1.9.3.1" style="font-size:90%;">60.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.9.4"><span class="ltx_text" id="S4.T3.1.9.4.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.9.5"><span class="ltx_text" id="S4.T3.1.9.5.1" style="font-size:90%;">74.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.1.9.6"><span class="ltx_text" id="S4.T3.1.9.6.1" style="font-size:90%;">72.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the OREAL reinforcement learning framework when initialized with different pre-trained language models.  The models compared include those fine-tuned with supervised learning ('-SFT') and a specific model, DeepSeek-R1-Distill-Qwen-7B, along with variations where skill-based enhancement was not applied during supervised fine-tuning ('wo-enhance'). The table shows the performance metrics (pass@1 accuracy) on several benchmark datasets (MATH-500, AIME2024, AIME2025-I, LiveMath, Olympiad) for each model, highlighting the impact of the initial policy model and the skill-based enhancement technique on the overall performance of the OREAL framework.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation for the performance of OREAL on different initial policy models. Here, “-SFT” and “DeepSeek-R1-Distill-Qwen7B” denote the initial policy model. “wo-enhance” means the model which do not perform the skill-based enhancement during the SFT stage.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06781/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06781/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}