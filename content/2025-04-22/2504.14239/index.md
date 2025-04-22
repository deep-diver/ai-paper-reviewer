---
title: "InfiGUI-R1: Advancing Multimodal GUI Agents from Reactive Actors to Deliberative Reasoners"
summary: "InfiGUI-R1: GUI agents evolve from reactive to reasoning, using Actor2Reasoner framework to enhance MLLM-based interaction & planning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.14239 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuhang Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.14239" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.14239" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.14239/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current GUI agents often lack robust reasoning and planning, relying on manual templates or simple reactions, hindering their adaptability in complex environments. To solve the above issues, the paper presents **Actor2Reasoner framework**, a two-stage training approach to evolve GUI agents based on Multimodal Large Language Models (MLLMs) from Reactive Actors to Deliberative Reasoners.



The framework uses Reasoning Injection to establish basic reasoning by employing Spatial Reasoning Distillation, transferring spatial reasoning skills to MLLMs. Then it uses Deliberation Enhancement to refine agents using Reinforcement Learning with Sub-goal Guidance and Error Recovery Scenario Construction. The result, **InfiGUI-R1**, shows strong performance in both GUI grounding and trajectory tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The Actor2Reasoner framework effectively transitions GUI agents from reactive actors to deliberative reasoners. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Spatial Reasoning Distillation improves the integration of visual-spatial understanding into textual reasoning for GUI agents. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} InfiGUI-R1 achieves state-of-the-art performance in cross-platform GUI grounding and strong results in complex task execution. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel framework that advances GUI agents, addressing their limitations in reasoning and planning. The **Actor2Reasoner framework** and the **InfiGUI-R1 agent** offer a promising approach for developing more capable and robust automated systems, potentially impacting how humans interact with technology.

------
#### Visual Insights



![](https://arxiv.org/html/2504.14239/extracted/6373560/images/screenspot_pro_comparison.png)

> 🔼 The figure showcases a performance comparison of different GUI agents on the ScreenSpot-Pro benchmark.  It plots the ScreenSpot-Pro scores (a measure of performance on GUI tasks) against the model's parameter count (representing model size).  The chart visually demonstrates that InfiGUI-R1-3B, despite having a relatively small parameter count (3 billion), achieves a competitive performance compared to significantly larger models (up to 72 billion parameters). This highlights the efficiency and effectiveness of the InfiGUI-R1-3B model architecture.
> <details>
> <summary>read the caption</summary>
> Figure 1. Performance comparison of various GUI agents on the ScreenSpot-Pro benchmark. Our model, InfiGUI-R1-3B marked with a star, demonstrates competitive performance against models with larger parameter counts.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1" style="font-size:90%;">Accuracy (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.1.2.2.1"><span class="ltx_text" id="S3.T1.1.2.2.1.1" style="font-size:90%;">Mobile</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.1.2.2.2"><span class="ltx_text" id="S3.T1.1.2.2.2.1" style="font-size:90%;">Desktop</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.1.2.2.3"><span class="ltx_text" id="S3.T1.1.2.2.3.1" style="font-size:90%;">Web</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T1.1.3.3.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.2"><span class="ltx_text" id="S3.T1.1.3.3.2.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.3"><span class="ltx_text" id="S3.T1.1.3.3.3.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.4"><span class="ltx_text" id="S3.T1.1.3.3.4.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.5"><span class="ltx_text" id="S3.T1.1.3.3.5.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.6"><span class="ltx_text" id="S3.T1.1.3.3.6.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.3.3.7"><span class="ltx_text" id="S3.T1.1.3.3.7.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td" id="S3.T1.1.3.3.8"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.4" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T1.1.4.4.1"><span class="ltx_text ltx_font_italic" id="S3.T1.1.4.4.1.1" style="font-size:90%;background-color:#ECECEC;">Proprietary Models</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.5.5.1">
<span class="ltx_text" id="S3.T1.1.5.5.1.1" style="font-size:90%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.5.5.1.2.1" style="font-size:90%;">(</span>OpenAI<span class="ltx_text" id="S3.T1.1.5.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib38" title="">2024</a><span class="ltx_text" id="S3.T1.1.5.5.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5.2"><span class="ltx_text" id="S3.T1.1.5.5.2.1" style="font-size:90%;">30.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5.3"><span class="ltx_text" id="S3.T1.1.5.5.3.1" style="font-size:90%;">23.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5.4"><span class="ltx_text" id="S3.T1.1.5.5.4.1" style="font-size:90%;">20.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5.5"><span class="ltx_text" id="S3.T1.1.5.5.5.1" style="font-size:90%;">19.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5.6"><span class="ltx_text" id="S3.T1.1.5.5.6.1" style="font-size:90%;">11.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5.7"><span class="ltx_text" id="S3.T1.1.5.5.7.1" style="font-size:90%;">7.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.5.5.8.1" style="font-size:90%;background-color:#FFF2CC;">18.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.6.6.1">
<span class="ltx_text" id="S3.T1.1.6.6.1.1" style="font-size:90%;">Claude Computer Use </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.6.6.1.2.1" style="font-size:90%;">(</span>Anthropic<span class="ltx_text" id="S3.T1.1.6.6.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib5" title="">2024</a><span class="ltx_text" id="S3.T1.1.6.6.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.6.2"><span class="ltx_text" id="S3.T1.1.6.6.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.6.3"><span class="ltx_text" id="S3.T1.1.6.6.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.6.4"><span class="ltx_text" id="S3.T1.1.6.6.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.6.5"><span class="ltx_text" id="S3.T1.1.6.6.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.6.6"><span class="ltx_text" id="S3.T1.1.6.6.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.6.7"><span class="ltx_text" id="S3.T1.1.6.6.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.6.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.6.6.8.1" style="font-size:90%;background-color:#FFF2CC;">83.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.7.7.1">
<span class="ltx_text" id="S3.T1.1.7.7.1.1" style="font-size:90%;">Gemini 2.0 (Project Mariner) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.7.7.1.2.1" style="font-size:90%;">(</span>DeepMind<span class="ltx_text" id="S3.T1.1.7.7.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib12" title="">2024</a><span class="ltx_text" id="S3.T1.1.7.7.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.2"><span class="ltx_text" id="S3.T1.1.7.7.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.3"><span class="ltx_text" id="S3.T1.1.7.7.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.4"><span class="ltx_text" id="S3.T1.1.7.7.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.5"><span class="ltx_text" id="S3.T1.1.7.7.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.6"><span class="ltx_text" id="S3.T1.1.7.7.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.7"><span class="ltx_text" id="S3.T1.1.7.7.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.7.7.8.1" style="font-size:90%;background-color:#FFF2CC;">84.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8.8" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T1.1.8.8.1"><span class="ltx_text ltx_font_italic" id="S3.T1.1.8.8.1.1" style="font-size:90%;background-color:#ECECEC;">General Open-source Models</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.9.9.1">
<span class="ltx_text" id="S3.T1.1.9.9.1.1" style="font-size:90%;">Qwen2-VL-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.9.9.1.2.1" style="font-size:90%;">(</span>Wang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.9.9.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib49" title="">2024</a><span class="ltx_text" id="S3.T1.1.9.9.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.2"><span class="ltx_text" id="S3.T1.1.9.9.2.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.3"><span class="ltx_text" id="S3.T1.1.9.9.3.1" style="font-size:90%;">39.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.4"><span class="ltx_text" id="S3.T1.1.9.9.4.1" style="font-size:90%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.5"><span class="ltx_text" id="S3.T1.1.9.9.5.1" style="font-size:90%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.6"><span class="ltx_text" id="S3.T1.1.9.9.6.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.7"><span class="ltx_text" id="S3.T1.1.9.9.7.1" style="font-size:90%;">21.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.9.9.8.1" style="font-size:90%;background-color:#FFF2CC;">42.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.10.10.1">
<span class="ltx_text" id="S3.T1.1.10.10.1.1" style="font-size:90%;">Qwen2.5-VL-3B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.10.10.1.2.1" style="font-size:90%;">(</span>Bai et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.10.10.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib9" title="">2025</a><span class="ltx_text" id="S3.T1.1.10.10.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.10.2"><span class="ltx_text" id="S3.T1.1.10.10.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.10.3"><span class="ltx_text" id="S3.T1.1.10.10.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.10.4"><span class="ltx_text" id="S3.T1.1.10.10.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.10.5"><span class="ltx_text" id="S3.T1.1.10.10.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.10.6"><span class="ltx_text" id="S3.T1.1.10.10.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.10.7"><span class="ltx_text" id="S3.T1.1.10.10.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.10.10.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.10.10.8.1" style="font-size:90%;background-color:#FFF2CC;">55.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.11.11.1">
<span class="ltx_text" id="S3.T1.1.11.11.1.1" style="font-size:90%;">Qwen2.5-VL-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.11.11.1.2.1" style="font-size:90%;">(</span>Bai et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.11.11.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib9" title="">2025</a><span class="ltx_text" id="S3.T1.1.11.11.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.11.11.2"><span class="ltx_text" id="S3.T1.1.11.11.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.11.11.3"><span class="ltx_text" id="S3.T1.1.11.11.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.11.11.4"><span class="ltx_text" id="S3.T1.1.11.11.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.11.11.5"><span class="ltx_text" id="S3.T1.1.11.11.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.11.11.6"><span class="ltx_text" id="S3.T1.1.11.11.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.11.11.7"><span class="ltx_text" id="S3.T1.1.11.11.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.11.11.8" style="background-color:#FFF2CC;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.11.11.8.1" style="font-size:90%;background-color:#FFF2CC;">84.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.12.12" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T1.1.12.12.1"><span class="ltx_text ltx_font_italic" id="S3.T1.1.12.12.1.1" style="font-size:90%;background-color:#ECECEC;">GUI-specific Models</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.13.13.1">
<span class="ltx_text" id="S3.T1.1.13.13.1.1" style="font-size:90%;">CogAgent </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.13.13.1.2.1" style="font-size:90%;">(</span>Hong et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.13.13.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib16" title="">2024</a><span class="ltx_text" id="S3.T1.1.13.13.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.2"><span class="ltx_text" id="S3.T1.1.13.13.2.1" style="font-size:90%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.3"><span class="ltx_text" id="S3.T1.1.13.13.3.1" style="font-size:90%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.4"><span class="ltx_text" id="S3.T1.1.13.13.4.1" style="font-size:90%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.5"><span class="ltx_text" id="S3.T1.1.13.13.5.1" style="font-size:90%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.6"><span class="ltx_text" id="S3.T1.1.13.13.6.1" style="font-size:90%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.7"><span class="ltx_text" id="S3.T1.1.13.13.7.1" style="font-size:90%;">28.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.13.13.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.13.13.8.1" style="font-size:90%;background-color:#FFF2CC;">47.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.14.14.1">
<span class="ltx_text" id="S3.T1.1.14.14.1.1" style="font-size:90%;">SeeClick </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.14.14.1.2.1" style="font-size:90%;">(</span>Cheng et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.14.14.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib11" title="">2024</a><span class="ltx_text" id="S3.T1.1.14.14.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.14.14.2"><span class="ltx_text" id="S3.T1.1.14.14.2.1" style="font-size:90%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.14.14.3"><span class="ltx_text" id="S3.T1.1.14.14.3.1" style="font-size:90%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.14.14.4"><span class="ltx_text" id="S3.T1.1.14.14.4.1" style="font-size:90%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.14.14.5"><span class="ltx_text" id="S3.T1.1.14.14.5.1" style="font-size:90%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.14.14.6"><span class="ltx_text" id="S3.T1.1.14.14.6.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.14.14.7"><span class="ltx_text" id="S3.T1.1.14.14.7.1" style="font-size:90%;">32.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.14.14.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.14.14.8.1" style="font-size:90%;background-color:#FFF2CC;">53.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.15.15.1">
<span class="ltx_text" id="S3.T1.1.15.15.1.1" style="font-size:90%;">UGround-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.15.15.1.2.1" style="font-size:90%;">(</span>Gou et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.15.15.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib15" title="">2024</a><span class="ltx_text" id="S3.T1.1.15.15.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.15.15.2"><span class="ltx_text" id="S3.T1.1.15.15.2.1" style="font-size:90%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.15.15.3"><span class="ltx_text" id="S3.T1.1.15.15.3.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.15.15.4"><span class="ltx_text" id="S3.T1.1.15.15.4.1" style="font-size:90%;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.15.15.5"><span class="ltx_text" id="S3.T1.1.15.15.5.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.15.15.6"><span class="ltx_text" id="S3.T1.1.15.15.6.1" style="font-size:90%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.15.15.7"><span class="ltx_text" id="S3.T1.1.15.15.7.1" style="font-size:90%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.15.15.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.15.15.8.1" style="font-size:90%;background-color:#FFF2CC;">73.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.16.16.1">
<span class="ltx_text" id="S3.T1.1.16.16.1.1" style="font-size:90%;">OS-Atlas-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.16.16.1.2.1" style="font-size:90%;">(</span>Wu et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.16.16.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib52" title="">2024</a><span class="ltx_text" id="S3.T1.1.16.16.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.2"><span class="ltx_text" id="S3.T1.1.16.16.2.1" style="font-size:90%;">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.3"><span class="ltx_text" id="S3.T1.1.16.16.3.1" style="font-size:90%;">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.4"><span class="ltx_text" id="S3.T1.1.16.16.4.1" style="font-size:90%;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.5"><span class="ltx_text" id="S3.T1.1.16.16.5.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.6"><span class="ltx_text" id="S3.T1.1.16.16.6.1" style="font-size:90%;">90.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.7"><span class="ltx_text" id="S3.T1.1.16.16.7.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.16.16.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.16.16.8.1" style="font-size:90%;background-color:#FFF2CC;">82.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.17.17.1">
<span class="ltx_text" id="S3.T1.1.17.17.1.1" style="font-size:90%;">ShowUI-2B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.17.17.1.2.1" style="font-size:90%;">(</span>Lin et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.17.17.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib30" title="">2024</a><span class="ltx_text" id="S3.T1.1.17.17.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.17.17.2"><span class="ltx_text" id="S3.T1.1.17.17.2.1" style="font-size:90%;">92.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.17.17.3"><span class="ltx_text" id="S3.T1.1.17.17.3.1" style="font-size:90%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.17.17.4"><span class="ltx_text" id="S3.T1.1.17.17.4.1" style="font-size:90%;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.17.17.5"><span class="ltx_text" id="S3.T1.1.17.17.5.1" style="font-size:90%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.17.17.6"><span class="ltx_text" id="S3.T1.1.17.17.6.1" style="font-size:90%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.17.17.7"><span class="ltx_text" id="S3.T1.1.17.17.7.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.17.17.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.17.17.8.1" style="font-size:90%;background-color:#FFF2CC;">75.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.18.18.1">
<span class="ltx_text" id="S3.T1.1.18.18.1.1" style="font-size:90%;">Aguvis-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.18.18.1.2.1" style="font-size:90%;">(</span>Huang et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.18.18.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib19" title="">2024</a><span class="ltx_text" id="S3.T1.1.18.18.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.18.18.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.18.18.2.1" style="font-size:90%;">95.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.18.18.3"><span class="ltx_text" id="S3.T1.1.18.18.3.1" style="font-size:90%;">77.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.18.18.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.18.18.4.1" style="font-size:90%;">93.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.18.18.5"><span class="ltx_text" id="S3.T1.1.18.18.5.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.18.18.6"><span class="ltx_text" id="S3.T1.1.18.18.6.1" style="font-size:90%;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.18.18.7"><span class="ltx_text" id="S3.T1.1.18.18.7.1" style="font-size:90%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.18.18.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.18.18.8.1" style="font-size:90%;background-color:#FFF2CC;">84.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.19.19.1">
<span class="ltx_text" id="S3.T1.1.19.19.1.1" style="font-size:90%;">UI-R1-3B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.19.19.1.2.1" style="font-size:90%;">(</span>Lu et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.19.19.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib36" title="">2025</a><span class="ltx_text" id="S3.T1.1.19.19.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.19.19.2"><span class="ltx_text" id="S3.T1.1.19.19.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.19.19.3"><span class="ltx_text" id="S3.T1.1.19.19.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.19.19.4"><span class="ltx_text" id="S3.T1.1.19.19.4.1" style="font-size:90%;">90.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.19.19.5"><span class="ltx_text" id="S3.T1.1.19.19.5.1" style="font-size:90%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.19.19.6"><span class="ltx_text" id="S3.T1.1.19.19.6.1" style="font-size:90%;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.19.19.7"><span class="ltx_text" id="S3.T1.1.19.19.7.1" style="font-size:90%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.19.19.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.19.19.8.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.20.20.1">
<span class="ltx_text" id="S3.T1.1.20.20.1.1" style="font-size:90%;">GUI-R1-3B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.20.20.1.2.1" style="font-size:90%;">(</span>Xia and Luo<span class="ltx_text" id="S3.T1.1.20.20.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib53" title="">2025</a><span class="ltx_text" id="S3.T1.1.20.20.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.20.20.2"><span class="ltx_text" id="S3.T1.1.20.20.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.20.20.3"><span class="ltx_text" id="S3.T1.1.20.20.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.20.20.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.20.20.4.1" style="font-size:90%;">93.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.20.20.5"><span class="ltx_text" id="S3.T1.1.20.20.5.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.20.20.6"><span class="ltx_text" id="S3.T1.1.20.20.6.1" style="font-size:90%;">89.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.20.20.7"><span class="ltx_text" id="S3.T1.1.20.20.7.1" style="font-size:90%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.20.20.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.20.20.8.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.21.21.1">
<span class="ltx_text" id="S3.T1.1.21.21.1.1" style="font-size:90%;">GUI-R1-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.21.21.1.2.1" style="font-size:90%;">(</span>Xia and Luo<span class="ltx_text" id="S3.T1.1.21.21.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib53" title="">2025</a><span class="ltx_text" id="S3.T1.1.21.21.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.21.21.2"><span class="ltx_text" id="S3.T1.1.21.21.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.21.21.3"><span class="ltx_text" id="S3.T1.1.21.21.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.21.21.4"><span class="ltx_text" id="S3.T1.1.21.21.4.1" style="font-size:90%;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.21.21.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.21.21.5.1" style="font-size:90%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.21.21.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.21.21.6.1" style="font-size:90%;">91.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.21.21.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.1.21.21.7.1" style="font-size:90%;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.21.21.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.21.21.8.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.22.22.1">
<span class="ltx_text" id="S3.T1.1.22.22.1.1" style="font-size:90%;">UI-TARS-2B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.22.22.1.2.1" style="font-size:90%;">(</span>Qin et al<span class="ltx_text">.</span><span class="ltx_text" id="S3.T1.1.22.22.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib41" title="">2025</a><span class="ltx_text" id="S3.T1.1.22.22.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.22.22.2"><span class="ltx_text" id="S3.T1.1.22.22.2.1" style="font-size:90%;">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.22.22.3"><span class="ltx_text" id="S3.T1.1.22.22.3.1" style="font-size:90%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.22.22.4"><span class="ltx_text" id="S3.T1.1.22.22.4.1" style="font-size:90%;">90.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.22.22.5"><span class="ltx_text" id="S3.T1.1.22.22.5.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.22.22.6"><span class="ltx_text" id="S3.T1.1.22.22.6.1" style="font-size:90%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.22.22.7"><span class="ltx_text" id="S3.T1.1.22.22.7.1" style="font-size:90%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.22.22.8" style="background-color:#FFF2CC;"><span class="ltx_text" id="S3.T1.1.22.22.8.1" style="font-size:90%;background-color:#FFF2CC;">82.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.23.23" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T1.1.23.23.1"><span class="ltx_text ltx_font_italic" id="S3.T1.1.23.23.1.1" style="font-size:90%;background-color:#ECECEC;">Ours</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.1.24.24.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.24.24.1.1" style="font-size:90%;">InfiGUI-R1-3B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.24.24.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.24.24.2.1" style="font-size:90%;">97.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.24.24.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.24.24.3.1" style="font-size:90%;">81.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.24.24.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.24.24.4.1" style="font-size:90%;">94.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.24.24.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.24.24.5.1" style="font-size:90%;">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.24.24.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.24.24.6.1" style="font-size:90%;">91.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.24.24.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.24.24.7.1" style="font-size:90%;">77.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.24.24.8" style="background-color:#FFF2CC;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.24.24.8.1" style="font-size:90%;background-color:#FFF2CC;">87.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance of various GUI agents across different platforms (Mobile, Desktop, Web) using the ScreenSpot benchmark.  The models are categorized into proprietary models and general/GUI-specific open-source models.  For each model, the accuracy is reported separately for text-based and icon-based tasks on each platform.  Bold numbers indicate the highest accuracy achieved for each task/platform, while underlined numbers denote the second-highest accuracy. This table highlights the performance differences of various GUI agents under the same evaluation metrics, across different platforms and task types. Using raw screenshot information as input makes this benchmark more challenging and ecologically valid.
> <details>
> <summary>read the caption</summary>
> Table 1. Performances on various platforms (Mobile, Desktop, Web) on ScreenSpot. All experiments were conducted using raw screenshot information. Results marked in bold represent the best performance, and those underlined indicate the second-best performance.
> </details>





### In-depth insights


#### Actor2Reasoner
The Actor2Reasoner framework introduces a compelling methodology for **advancing GUI agents from simple reactive systems to sophisticated deliberative reasoners**. This two-stage approach directly addresses the limitations of current GUI agents that either rely on pre-designed templates or lack the depth for complex GUI tasks. The framework's focus on injecting and refining reasoning capabilities marks a significant shift, enabling agents to plan, self-correct, and adapt within dynamic GUI environments. By explicitly incorporating reasoning processes between perception and action, Actor2Reasoner allows agents to move beyond mere reaction and engage in thoughtful decision-making, a critical step toward achieving robust and effective GUI automation. The framework is divided into 2 stages, **Reasoning Injection and Deliberation Enhancement**, each with it's own methodology to improve the agent.

#### Spatial Distillation
**Spatial Distillation** aims to transfer spatial reasoning abilities from a teacher model to a student model, typically an MLLM. It involves creating trajectories with explicit reasoning steps, enabling the model to integrate GUI visual-spatial information with logical reasoning before action generation. This helps agents move beyond reactive acting to deliberate reasoning by **explicitly incorporating spatial context** into their decision-making process. By distilling the teacher model's knowledge, it guides the student model to break the direct perception-action link and understand spatial relationships more effectively, crucial for GUI tasks requiring precise element localization and manipulation.

#### Deliberation RL
**Deliberation in RL** for GUI agents signifies a strategic shift towards more sophisticated decision-making. It moves beyond simple reactive actions to embrace forward-looking planning and backward-looking reflection. Central to this is the ability to **decompose complex tasks into manageable sub-goals** and recover gracefully from errors. It necessitates designing reward functions that incentivize not only correct actions but also accurate intermediate reasoning steps. Further, it means creating specific training scenarios that foster reflective adjustment, enabling agents to learn from past mistakes and adjust their strategies accordingly. **Error recovery is critical** to this as it allows the agent to explore new possibilities for more robustness.

#### InfiGUI-R1: 3B
Analyzing 'InfiGUI-R1: 3B,' it likely refers to a specific instantiation of the InfiGUI-R1 agent architecture, utilizing a **3 billion parameter language model**. The '3B' likely denotes the **size and computational capacity** of the underlying language model, impacting the agent's reasoning and grounding abilities. A 3B model balances performance and resource constraints, enabling complex GUI tasks. It's likely a comparison point against other models with varying parameter counts. It showcases a deliberate architectural choice to achieve strong capabilities while maintaining efficiency. Experiments involving InfiGUI-R1: 3B could highlight the trade-offs in GUI agents with smaller yet potent LLMs.

#### Cross-GUI Ground
Although the exact phrase "Cross-GUI Ground" doesn't explicitly appear as a heading, the paper extensively discusses the concept of **GUI element grounding across various platforms**, which is closely related. The ability to accurately identify and interact with UI elements regardless of the underlying operating system (e.g., Android, Web, Desktop) is a central theme. The 'ScreenSpot' and 'ScreenSpot-Pro' benchmarks are used to assess this capability, and the results highlight InfiGUI-R1-3B's state-of-the-art performance in cross-platform grounding. This signifies the agent's robustness and generalizability in understanding visual elements within diverse GUI environments. The discussion emphasizes the importance of **bridging the gap between visual perception and textual reasoning** to achieve reliable GUI element grounding, reflecting the shift towards more deliberative and less reactive agents.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.14239/x1.png)

> 🔼 The Actor2Reasoner framework is a two-stage training process that enhances Multimodal Large Language Models (MLLMs) to improve GUI agent capabilities. Stage 1, Reasoning Injection, uses supervised fine-tuning (SFT) and spatial reasoning distillation to teach the MLLM to integrate visual and spatial information with logical reasoning before generating actions. This process involves identifying and resolving reasoning bottlenecks by leveraging a teacher model. This transitions the agent from a reactive actor to a basic reasoner. Stage 2, Deliberation Enhancement, utilizes reinforcement learning to refine the reasoner into a deliberative one. This involves two methods: sub-goal guidance, rewarding the MLLM for generating accurate intermediate goals, and error recovery scenario construction, which enhances the agent's ability to self-correct through creating failure-and-recovery training scenarios. The figure illustrates this two-stage process, highlighting key components and transitions.
> <details>
> <summary>read the caption</summary>
> Figure 2. Overview of the Actor2Reasoner framework, a two-stage methodology for progressively transforming a Reactive Actor into a Deliberative Reasoner. Stage 1: Reasoning Injection uses Supervised Fine-Tuning (SFT) with Spatial Reasoning Distillation—identifying reasoning bottlenecks (Pinpoint) and leveraging a teacher model (Distill)—to instill foundational cross-modal reasoning and transition the agent into a Basic Reasoner (Perception →→\rightarrow→ Reasoning →→\rightarrow→ Action). Stage 2: Deliberation Enhancement applies RL to refine planning and reflection capabilities, using Sub-goal Guidance (Reward) for forward-looking task decomposition and Error Recovery Scenario Construction (Reflect) for backward-looking self-correction, culminating in a Deliberative Reasoner.
> </details>



![](https://arxiv.org/html/2504.14239/x2.png)

> 🔼 This figure displays the reward curves obtained during the reinforcement learning phase of training the InfiGUI-R1 agent.  The x-axis represents the training steps, while the y-axis shows the reward values.  Multiple lines are plotted, illustrating the reward progression for different aspects of the task: the overall reward, the reward specifically for low-level tasks, the reward for high-level tasks, and the reward for grounding tasks. This visualization allows for an examination of how the agent's performance improves over time on these different task aspects during the reinforcement learning process. The figure helps illustrate the efficacy of the reward design in the training process.
> <details>
> <summary>read the caption</summary>
> Figure 3. Reward curves during reinforcement learning training. The plot shows the overall reward and the rewards for individual task types (Low-level, High-level, Grounding) over training steps.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.1.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1" style="font-size:90%;">CAD</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.1.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1" style="font-size:90%;">Development</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.1.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1" style="font-size:90%;">Creative</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.1.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1" style="font-size:90%;">Scientific</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.1.1.1.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.6.1" style="font-size:90%;">Office</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.1.1.1.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.7.1" style="font-size:90%;">OS</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.1.1.1.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.8.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.1.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.2.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.3.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.4.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.5.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.6.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.7.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.8.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.9.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.10.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.11.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.12.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.13.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.14.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.15.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.16.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.17.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.18.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.19.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.20.1" style="font-size:90%;">Icon</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.2.2.21.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.3" style="background-color:#ECECEC;">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="22" id="S4.T2.1.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.3.3.1.1" style="font-size:90%;background-color:#ECECEC;">Proprietary Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.4.4.1.1" style="font-size:90%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.4.4.1.2.1" style="font-size:90%;">(</span>Hurst et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.4.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib20" title="">2024</a><span class="ltx_text" id="S4.T2.1.4.4.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.2.1" style="font-size:90%;">2.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.3.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.4.1" style="font-size:90%;">1.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.5.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.7.1" style="font-size:90%;">0.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.8.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.9.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.10.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.11.1" style="font-size:90%;">2.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.12.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.13.1" style="font-size:90%;">1.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.14.1" style="font-size:90%;">1.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.15.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.16.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.17.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.18.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.19.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.20.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.21.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.4.4.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.4.4.22.1" style="font-size:90%;background-color:#FFF2CC;">0.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.5.5.1.1" style="font-size:90%;">Claude Computer Use </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.5.5.1.2.1" style="font-size:90%;">(</span>Anthropic<span class="ltx_text" id="S4.T2.1.5.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib5" title="">2024</a><span class="ltx_text" id="S4.T2.1.5.5.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.2.1" style="font-size:90%;">14.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.3.1" style="font-size:90%;">3.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.4.1" style="font-size:90%;">11.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.5.1" style="font-size:90%;">22.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.6.1" style="font-size:90%;">3.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.7.1" style="font-size:90%;">12.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.8.1" style="font-size:90%;">25.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.9.1" style="font-size:90%;">3.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.10.1" style="font-size:90%;">16.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.11.1" style="font-size:90%;">33.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.12.1" style="font-size:90%;">15.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.13.1" style="font-size:90%;">25.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.14.1" style="font-size:90%;">30.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.15.1" style="font-size:90%;">16.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.16.1" style="font-size:90%;">26.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.17.1" style="font-size:90%;">11.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.18.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.19.1" style="font-size:90%;">8.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.20.1" style="font-size:90%;">23.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.21.1" style="font-size:90%;">7.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.5.5.22.1" style="font-size:90%;background-color:#FFF2CC;">17.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.6" style="background-color:#ECECEC;">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="22" id="S4.T2.1.6.6.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.6.6.1.1" style="font-size:90%;background-color:#ECECEC;">General Open-source Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.7.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.7.7.1.1" style="font-size:90%;">Qwen2-VL-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.7.7.1.2.1" style="font-size:90%;">(</span>Wang et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.7.7.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib49" title="">2024</a><span class="ltx_text" id="S4.T2.1.7.7.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.2.1" style="font-size:90%;">0.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.3.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.4.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.5.1" style="font-size:90%;">2.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.7.1" style="font-size:90%;">1.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.8.1" style="font-size:90%;">1.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.9.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.10.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.11.1" style="font-size:90%;">6.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.12.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.13.1" style="font-size:90%;">3.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.14.1" style="font-size:90%;">3.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.15.1" style="font-size:90%;">1.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.16.1" style="font-size:90%;">3.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.17.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.18.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.19.1" style="font-size:90%;">0.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.20.1" style="font-size:90%;">2.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.21.1" style="font-size:90%;">0.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.7.7.22.1" style="font-size:90%;background-color:#FFF2CC;">1.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.8.8.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.8.8.1.1" style="font-size:90%;">Qwen2.5-VL-3B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.8.8.1.2.1" style="font-size:90%;">(</span>Bai et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.8.8.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib9" title="">2025</a><span class="ltx_text" id="S4.T2.1.8.8.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.12.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.14.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.15.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.16.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.17.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.18.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.19.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.20.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.21.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.8.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.8.8.22.1" style="font-size:90%;background-color:#FFF2CC;">23.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.9.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.9.9.1.1" style="font-size:90%;">Qwen2.5-VL-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.9.9.1.2.1" style="font-size:90%;">(</span>Bai et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.9.9.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib9" title="">2025</a><span class="ltx_text" id="S4.T2.1.9.9.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.12.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.14.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.15.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.16.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.17.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.18.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.19.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.20.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.21.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.9.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.9.9.22.1" style="font-size:90%;background-color:#FFF2CC;">29.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.10.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.10.10.1.1" style="font-size:90%;">Kimi-VL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.10.10.1.2.1" style="font-size:90%;">(</span>Team et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.10.10.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib46" title="">2025</a><span class="ltx_text" id="S4.T2.1.10.10.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.12.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.14.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.15.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.16.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.17.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.18.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.19.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.20.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.10.10.21.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.10.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.10.10.22.1" style="font-size:90%;background-color:#FFF2CC;">34.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.11.11" style="background-color:#ECECEC;">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="22" id="S4.T2.1.11.11.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.11.11.1.1" style="font-size:90%;background-color:#ECECEC;">GUI-specific Models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.12.12.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.12.12.1.1" style="font-size:90%;">SeeClick </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.12.12.1.2.1" style="font-size:90%;">(</span>Cheng et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.12.12.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib11" title="">2024</a><span class="ltx_text" id="S4.T2.1.12.12.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.2.1" style="font-size:90%;">2.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.3.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.4.1" style="font-size:90%;">1.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.5.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.7.1" style="font-size:90%;">0.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.8.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.9.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.10.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.11.1" style="font-size:90%;">3.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.12.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.13.1" style="font-size:90%;">2.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.14.1" style="font-size:90%;">1.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.15.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.16.1" style="font-size:90%;">0.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.17.1" style="font-size:90%;">2.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.18.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.19.1" style="font-size:90%;">1.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.20.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.21.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.12.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.12.12.22.1" style="font-size:90%;background-color:#FFF2CC;">1.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.13.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.13.13.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.13.13.1.1" style="font-size:90%;">CogAgent-18B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.13.13.1.2.1" style="font-size:90%;">(</span>Hong et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.13.13.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib16" title="">2024</a><span class="ltx_text" id="S4.T2.1.13.13.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.2.1" style="font-size:90%;">7.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.3.1" style="font-size:90%;">3.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.4.1" style="font-size:90%;">6.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.5.1" style="font-size:90%;">14.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.6.1" style="font-size:90%;">0.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.7.1" style="font-size:90%;">8.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.8.1" style="font-size:90%;">9.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.9.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.10.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.11.1" style="font-size:90%;">22.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.12.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.13.1" style="font-size:90%;">13.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.14.1" style="font-size:90%;">13.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.15.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.16.1" style="font-size:90%;">10.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.17.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.18.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.19.1" style="font-size:90%;">3.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.20.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.21.1" style="font-size:90%;">0.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.13.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.13.13.22.1" style="font-size:90%;background-color:#FFF2CC;">7.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.14.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.14.14.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.14.14.1.1" style="font-size:90%;">Aria-UI </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.14.14.1.2.1" style="font-size:90%;">(</span>Yang et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.14.14.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib56" title="">2024</a><span class="ltx_text" id="S4.T2.1.14.14.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.2.1" style="font-size:90%;">7.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.3.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.4.1" style="font-size:90%;">6.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.5.1" style="font-size:90%;">16.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.7.1" style="font-size:90%;">8.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.8.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.9.1" style="font-size:90%;">2.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.10.1" style="font-size:90%;">14.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.11.1" style="font-size:90%;">27.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.12.1" style="font-size:90%;">6.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.13.1" style="font-size:90%;">18.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.14.1" style="font-size:90%;">20.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.15.1" style="font-size:90%;">1.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.16.1" style="font-size:90%;">16.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.17.1" style="font-size:90%;">4.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.18.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.19.1" style="font-size:90%;">2.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.20.1" style="font-size:90%;">17.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.21.1" style="font-size:90%;">2.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.14.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.14.14.22.1" style="font-size:90%;background-color:#FFF2CC;">11.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.15.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.15.15.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.15.15.1.1" style="font-size:90%;">OS-Atlas-4B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.15.15.1.2.1" style="font-size:90%;">(</span>Wu et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.15.15.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib52" title="">2024</a><span class="ltx_text" id="S4.T2.1.15.15.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.2.1" style="font-size:90%;">2.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.3.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.4.1" style="font-size:90%;">1.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.5.1" style="font-size:90%;">7.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.7.1" style="font-size:90%;">3.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.8.1" style="font-size:90%;">3.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.9.1" style="font-size:90%;">1.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.10.1" style="font-size:90%;">2.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.11.1" style="font-size:90%;">9.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.12.1" style="font-size:90%;">5.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.13.1" style="font-size:90%;">7.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.14.1" style="font-size:90%;">5.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.15.1" style="font-size:90%;">3.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.16.1" style="font-size:90%;">4.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.17.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.18.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.19.1" style="font-size:90%;">3.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.20.1" style="font-size:90%;">5.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.21.1" style="font-size:90%;">1.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.15.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.15.15.22.1" style="font-size:90%;background-color:#FFF2CC;">3.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.16.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.16.16.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.16.16.1.1" style="font-size:90%;">OS-Atlas-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.16.16.1.2.1" style="font-size:90%;">(</span>Wu et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.16.16.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib52" title="">2024</a><span class="ltx_text" id="S4.T2.1.16.16.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.2.1" style="font-size:90%;">12.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.3.1" style="font-size:90%;">4.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.4.1" style="font-size:90%;">10.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.5.1" style="font-size:90%;">33.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.6.1" style="font-size:90%;">1.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.7.1" style="font-size:90%;">17.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.8.1" style="font-size:90%;">28.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.9.1" style="font-size:90%;">2.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.10.1" style="font-size:90%;">17.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.11.1" style="font-size:90%;">37.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.12.1" style="font-size:90%;">7.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.13.1" style="font-size:90%;">24.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.14.1" style="font-size:90%;">33.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.15.1" style="font-size:90%;">5.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.16.1" style="font-size:90%;">27.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.17.1" style="font-size:90%;">27.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.18.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.19.1" style="font-size:90%;">16.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.20.1" style="font-size:90%;">28.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.21.1" style="font-size:90%;">4.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.16.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.16.16.22.1" style="font-size:90%;background-color:#FFF2CC;">18.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.17.17">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.17.17.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.17.17.1.1" style="font-size:90%;">ShowUI-2B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.17.17.1.2.1" style="font-size:90%;">(</span>Lin et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.17.17.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib30" title="">2024</a><span class="ltx_text" id="S4.T2.1.17.17.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.2.1" style="font-size:90%;">2.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.3.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.4.1" style="font-size:90%;">1.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.5.1" style="font-size:90%;">16.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.6.1" style="font-size:90%;">1.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.7.1" style="font-size:90%;">9.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.8.1" style="font-size:90%;">9.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.9.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.10.1" style="font-size:90%;">5.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.11.1" style="font-size:90%;">13.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.12.1" style="font-size:90%;">7.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.13.1" style="font-size:90%;">10.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.14.1" style="font-size:90%;">15.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.15.1" style="font-size:90%;">7.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.16.1" style="font-size:90%;">13.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.17.1" style="font-size:90%;">10.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.18.1" style="font-size:90%;">2.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.19.1" style="font-size:90%;">6.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.20.1" style="font-size:90%;">10.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.21.1" style="font-size:90%;">2.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.17.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.17.17.22.1" style="font-size:90%;background-color:#FFF2CC;">7.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.18.18">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.18.18.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.18.18.1.1" style="font-size:90%;">UGround-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.18.18.1.2.1" style="font-size:90%;">(</span>Gou et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.18.18.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib15" title="">2024</a><span class="ltx_text" id="S4.T2.1.18.18.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.2.1" style="font-size:90%;">14.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.3.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.4.1" style="font-size:90%;">11.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.5.1" style="font-size:90%;">26.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.6.1" style="font-size:90%;">2.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.7.1" style="font-size:90%;">14.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.8.1" style="font-size:90%;">27.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.9.1" style="font-size:90%;">2.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.10.1" style="font-size:90%;">17.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.11.1" style="font-size:90%;">31.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.12.1" style="font-size:90%;">2.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.13.1" style="font-size:90%;">19.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.14.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.15.1" style="font-size:90%;">11.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.16.1" style="font-size:90%;">27.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.17.1" style="font-size:90%;">17.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.18.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.19.1" style="font-size:90%;">9.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.20.1" style="font-size:90%;">25.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.21.1" style="font-size:90%;">2.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.18.18.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.18.18.22.1" style="font-size:90%;background-color:#FFF2CC;">16.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.19.19">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.19.19.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.19.19.1.1" style="font-size:90%;">UGround-V1-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.19.19.1.2.1" style="font-size:90%;">(</span>Gou et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.19.19.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib15" title="">2024</a><span class="ltx_text" id="S4.T2.1.19.19.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.4.1" style="font-size:90%;">13.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.19.19.7.1" style="font-size:90%;">35.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.10.1" style="font-size:90%;">27.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.12.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.13.1" style="font-size:90%;">38.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.14.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.15.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.16.1" style="font-size:90%;">48.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.17.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.18.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.19.19.19.1" style="font-size:90%;">26.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.20.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.21.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.19.19.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.19.19.22.1" style="font-size:90%;background-color:#FFF2CC;">31.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.20.20">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.20.20.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.20.20.1.1" style="font-size:90%;">UI-R1-3B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.20.20.1.2.1" style="font-size:90%;">(</span>Lu et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.20.20.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib36" title="">2025</a><span class="ltx_text" id="S4.T2.1.20.20.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.2.1" style="font-size:90%;">11.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.3.1" style="font-size:90%;">6.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.5.1" style="font-size:90%;">22.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.6.1" style="font-size:90%;">4.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.8.1" style="font-size:90%;">27.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.9.1" style="font-size:90%;">3.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.11.1" style="font-size:90%;">42.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.12.1" style="font-size:90%;">11.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.14.1" style="font-size:90%;">32.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.15.1" style="font-size:90%;">11.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.16.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.17.1" style="font-size:90%;">13.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.18.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.19.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.20.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.21.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.20.20.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.20.20.22.1" style="font-size:90%;background-color:#FFF2CC;">17.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.21.21">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.21.21.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.21.21.1.1" style="font-size:90%;">GUI-R1-3B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.21.21.1.2.1" style="font-size:90%;">(</span>Xia and Luo<span class="ltx_text" id="S4.T2.1.21.21.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib53" title="">2025</a><span class="ltx_text" id="S4.T2.1.21.21.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.21.21.2.1" style="font-size:90%;">26.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.3.1" style="font-size:90%;">7.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.5.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.21.21.6.1" style="font-size:90%;">4.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.8.1" style="font-size:90%;">40.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.9.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.21.21.11.1" style="font-size:90%;">61.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.12.1" style="font-size:90%;">17.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.14.1" style="font-size:90%;">53.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.15.1" style="font-size:90%;">17.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.16.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.17.1" style="font-size:90%;">28.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.18.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.19.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.20.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.21.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.21.21.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.21.21.22.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.22.22">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.22.22.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.22.22.1.1" style="font-size:90%;">GUI-R1-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.22.22.1.2.1" style="font-size:90%;">(</span>Xia and Luo<span class="ltx_text" id="S4.T2.1.22.22.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib53" title="">2025</a><span class="ltx_text" id="S4.T2.1.22.22.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.2.1" style="font-size:90%;">23.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.3.1" style="font-size:90%;">6.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.5.1" style="font-size:90%;">49.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.22.22.6.1" style="font-size:90%;">4.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.8.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.22.22.9.1" style="font-size:90%;">8.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.11.1" style="font-size:90%;">55.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.12.1" style="font-size:90%;">11.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.14.1" style="font-size:90%;">58.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.22.22.15.1" style="font-size:90%;">26.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.16.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.22.22.17.1" style="font-size:90%;">42.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.22.22.18.1" style="font-size:90%;">16.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.19.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.20.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.21.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.22.22.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.22.22.22.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.23.23">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.23.23.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.23.23.1.1" style="font-size:90%;">UI-TARS-2B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.23.23.1.2.1" style="font-size:90%;">(</span>Qin et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.23.23.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib41" title="">2025</a><span class="ltx_text" id="S4.T2.1.23.23.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.2.1" style="font-size:90%;">17.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.3.1" style="font-size:90%;">4.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.4.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.5.1" style="font-size:90%;">47.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.6.1" style="font-size:90%;">4.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.7.1" style="font-size:90%;">26.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.8.1" style="font-size:90%;">42.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.9.1" style="font-size:90%;">6.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.10.1" style="font-size:90%;">27.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.11.1" style="font-size:90%;">56.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.12.1" style="font-size:90%;">17.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.13.1" style="font-size:90%;">39.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.14.1" style="font-size:90%;">50.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.15.1" style="font-size:90%;">17.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.16.1" style="font-size:90%;">42.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.17.1" style="font-size:90%;">21.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.18.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.19.1" style="font-size:90%;">14.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.20.1" style="font-size:90%;">39.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.21.1" style="font-size:90%;">8.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.23.23.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.23.23.22.1" style="font-size:90%;background-color:#FFF2CC;">27.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.24.24">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.24.24.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="S4.T2.1.24.24.1.1" style="font-size:90%;">UI-TARS-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.24.24.1.2.1" style="font-size:90%;">(</span>Qin et al<span class="ltx_text">.</span><span class="ltx_text" id="S4.T2.1.24.24.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.14239v1#bib.bib41" title="">2025</a><span class="ltx_text" id="S4.T2.1.24.24.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.24.24.2.1" style="font-size:90%;">20.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.24.24.3.1" style="font-size:90%;">9.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.24.24.4.1" style="font-size:90%;">18.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.5.1" style="font-size:90%;">58.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.6.1" style="font-size:90%;">12.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.7.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.8.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.9.1" style="font-size:90%;">9.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.10.1" style="font-size:90%;">32.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.11.1" style="font-size:90%;">63.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.12.1" style="font-size:90%;">31.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.13.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.24.24.14.1" style="font-size:90%;">63.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.24.24.15.1" style="font-size:90%;">20.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.24.24.16.1" style="font-size:90%;">53.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.24.24.17.1" style="font-size:90%;">30.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.18.1" style="font-size:90%;">16.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.24.24.19.1" style="font-size:90%;">24.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.24.24.20.1" style="font-size:90%;">47.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.21.1" style="font-size:90%;">16.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.24.24.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.24.24.22.1" style="font-size:90%;background-color:#FFF2CC;">35.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.25.25" style="background-color:#ECECEC;">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="22" id="S4.T2.1.25.25.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.25.25.1.1" style="font-size:90%;background-color:#ECECEC;">Ours</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.26.26">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.26.26.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.1.1" style="font-size:90%;">InfiGUI-R1-3B</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.2.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.3.1" style="font-size:90%;">14.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.4.1" style="font-size:90%;">28.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.26.26.5.1" style="font-size:90%;">51.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.6.1" style="font-size:90%;">12.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.26.26.7.1" style="font-size:90%;">32.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.26.26.8.1" style="font-size:90%;">44.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.26.26.9.1" style="font-size:90%;">7.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.26.26.10.1" style="font-size:90%;">29.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.1.26.26.11.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.12" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.26.26.12.1" style="font-size:90%;">20.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.13" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.26.26.13.1" style="font-size:90%;">41.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.14" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.14.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.15" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.15.1" style="font-size:90%;">28.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.16" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.16.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.17" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.17.1" style="font-size:90%;">43.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.18" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.26.26.18.1" style="font-size:90%;">12.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.19" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.19.1" style="font-size:90%;">29.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.20" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.20.1" style="font-size:90%;">49.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.21" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.26.26.21.1" style="font-size:90%;">14.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.26.26.22" style="background-color:#FFF2CC;padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.26.26.22.1" style="font-size:90%;background-color:#FFF2CC;">35.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed comparison of various GUI agent models across different task categories within the ScreenSpot-Pro benchmark.  The benchmark evaluates agents' ability to accurately identify and interact with GUI elements. The table specifically breaks down the performance based on two criteria: 'Text' and 'Icon' accuracy.  Text accuracy reflects the model's proficiency in identifying textual elements, while Icon accuracy reflects its skill in identifying visual icons or image elements.  The 'Average' score represents the mean performance across both criteria.  The best performing model in each category is highlighted in bold, and the second-best model is underlined. This allows for a nuanced comparison of different agents' strengths and weaknesses in various GUI interaction scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2. Performance comparison of different agent models across various task categories based on Text, Icon, and Average scores on ScreenSpot-Pro. Results marked in bold represent the best performance, and those underlined indicate the second-best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1" style="font-size:90%;">AndroidControl-Low</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1" style="font-size:90%;">AndroidControl-High</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.2.2.1.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.2.2.2.1" style="font-size:90%;">Grounding</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.2.2.3.1" style="font-size:90%;">SR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.2.2.4.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.2.2.5.1" style="font-size:90%;">Grounding</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.2.2.6.1" style="font-size:90%;">SR</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.3.3.1.1" style="font-size:90%;">Claude*</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.3.3.2.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.3.3.3.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.3.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.3.3.4.1" style="font-size:90%;background-color:#FFF2CC;">19.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.3.3.5.1" style="font-size:90%;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.3.3.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.3.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.3.3.7.1" style="font-size:90%;background-color:#FFF2CC;">12.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.4.4.1.1" style="font-size:90%;">GPT-4o</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.4.4.2.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.4.4.3.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.4.4.4.1" style="font-size:90%;background-color:#FFF2CC;">19.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.4.4.5.1" style="font-size:90%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.4.4.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.4.4.7.1" style="font-size:90%;background-color:#FFF2CC;">20.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.5.5.1.1" style="font-size:90%;">Aria-UI</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.5.5.2.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.5.5.3.1" style="font-size:90%;">87.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.5.5.4.1" style="font-size:90%;background-color:#FFF2CC;">67.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.5.5.5.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.5.5.6.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.5.5.7.1" style="font-size:90%;background-color:#FFF2CC;">10.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.6.6.1.1" style="font-size:90%;">OS-Atlas-4B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.6.6.2.1" style="font-size:90%;">91.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.6.6.3.1" style="font-size:90%;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.6.6.4.1" style="font-size:90%;background-color:#FFF2CC;">80.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.6.5.1" style="font-size:90%;">84.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.6.6.6.1" style="font-size:90%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.6.6.7.1" style="font-size:90%;background-color:#FFF2CC;">67.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.7.7.1.1" style="font-size:90%;">Aguvis-7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.7.7.2.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.7.7.3.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.7.7.4.1" style="font-size:90%;background-color:#FFF2CC;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.7.7.5.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.7.7.6.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.7.7.7.1" style="font-size:90%;background-color:#FFF2CC;">61.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.8.8.1.1" style="font-size:90%;">Aguvis-72B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.8.8.2.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.8.8.3.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.8.8.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.8.8.4.1" style="font-size:90%;background-color:#FFF2CC;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.8.8.5.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.8.8.6.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.8.8.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.8.8.7.1" style="font-size:90%;background-color:#FFF2CC;">66.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.9.9.1.1" style="font-size:90%;">UI-R1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.9.9.2.1" style="font-size:90%;">94.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.9.9.3.1" style="font-size:90%;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.9.9.4.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.9.9.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.9.9.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.9.9.7.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.10.10.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.10.10.1.1" style="font-size:90%;">GUI-R1-3B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.10.10.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.10.10.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.10.10.4.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.10.10.5.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.10.10.6.1" style="font-size:90%;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.10.10.7.1" style="font-size:90%;background-color:#FFF2CC;">46.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.11.11.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.11.11.1.1" style="font-size:90%;">GUI-R1-7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.11.11.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.11.11.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.11.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.11.11.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.11.11.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.11.11.4.1" style="font-size:90%;background-color:#FFF2CC;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.11.11.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.11.11.5.1" style="font-size:90%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.11.11.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.11.11.6.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.11.11.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.11.11.7.1" style="font-size:90%;background-color:#FFF2CC;">51.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.12.12.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.12.12.1.1" style="font-size:90%;">UI-TARS-2B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.12.12.2.1" style="font-size:90%;">98.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.12.12.3.1" style="font-size:90%;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.12.12.4.1" style="font-size:90%;background-color:#FFF2CC;">89.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.12.12.5.1" style="font-size:90%;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.12.12.6.1" style="font-size:90%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.12.12.7.1" style="font-size:90%;background-color:#FFF2CC;">68.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.13.13" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T3.1.13.13.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.1.13.13.1.1" style="font-size:90%;background-color:#ECECEC;">Ours</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.14.14.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.14.14.1.1" style="font-size:90%;">InfiGUI-R1-3B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.14.14.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.14.14.2.1" style="font-size:90%;">96.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.14.14.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.14.14.3.1" style="font-size:90%;">93.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.14.14.4" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.14.14.4.1" style="font-size:90%;background-color:#FFF2CC;">92.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.14.14.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.14.14.5.1" style="font-size:90%;">82.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.14.14.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.14.14.6.1" style="font-size:90%;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.14.14.7" style="background-color:#FFF2CC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.14.14.7.1" style="font-size:90%;background-color:#FFF2CC;">71.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various GUI agents on the AndroidControl benchmark.  The benchmark assesses agents' ability to perform complex, multi-step tasks within a realistic Android environment, thus evaluating their planning and state-tracking capabilities over extended interaction sequences. The table shows each agent's success rate (SR) on both low-level and high-level tasks.  Bold values indicate the top performance, while underlined values represent the second-best performance for each task.
> <details>
> <summary>read the caption</summary>
> Table 3. Performance comparison of different agent models on AndroidControl benchmarks. SR stands for Success Rate. Results marked in bold represent the best performance, and those underlined indicate the second-best performance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.14239/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14239/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}