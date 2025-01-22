---
title: "Reasoning Language Models: A Blueprint"
summary: "Democratizing advanced reasoning in AI, this blueprint introduces a modular framework for building Reasoning Language Models (RLMs), simplifying development and enhancing accessibility."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 ETH Zurich",]
showSummary: true
date: 2025-01-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.11223 {{< /keyword >}}
{{< keyword icon="writer" >}} Maciej Besta et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.11223" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.11223" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.11223/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reasoning Language Models (RLMs) significantly improve AI's problem-solving capabilities, but their high cost, proprietary nature, and complex architectures hinder accessibility and scalability.  This creates a divide between institutions with access to advanced AI and those without. Current RLMs uniquely combine Reinforcement Learning (RL), search heuristics, and Large Language Models (LLMs), making them difficult to understand and reproduce.

To address these issues, this paper proposes a comprehensive blueprint that organizes RLM components into a modular framework.  This framework includes various reasoning structures, strategies, RL concepts, and supervision schemes.  The authors provide detailed mathematical formulations and algorithmic specifications to simplify RLM implementation, demonstrating the blueprint's versatility by showing how existing RLMs fit as special cases.  They also introduce x1, a modular implementation for rapid RLM prototyping and experimentation, and use it to provide key insights, like multi-phase training strategies.  The goal is to democratize RLM construction and lower barriers to entry, fostering innovation and mitigating the gap between "rich AI" and "poor AI".

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A comprehensive blueprint organizes RLM components into a modular framework, encompassing diverse reasoning structures and strategies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The blueprint simplifies RLM implementation with detailed mathematical formulations and algorithmic specifications. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A modular implementation (x1) is introduced for rapid RLM prototyping and experimentation, fostering innovation by lowering barriers to entry. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the accessibility and scalability challenges of reasoning language models (RLMs)**. By providing a modular framework and open-source implementation, it democratizes RLM development, potentially fostering innovation and mitigating the gap between "rich AI" and "poor AI".  **The blueprint and accompanying framework enable faster prototyping, experimentation, and comparison of different RLM designs**, thus accelerating progress in AI research.

------
#### Visual Insights



![](https://arxiv.org/html/2501.11223/x2.png)

> 🔼 The figure illustrates the historical development of Reasoning Language Models (RLMs), highlighting the convergence of three key factors: advancements in Reinforcement Learning (as exemplified by AlphaZero), progress in Large Language Models (LLMs) and Transformer architectures (such as GPT-4), and the continuous increase in the computational power and data processing capabilities of high-performance computing systems.  It shows how these three lines of research have intersected and built upon each other to create the field of RLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: The history of RLMs. This class of models has been the result of the development of three lines of works: (1) Reinforcement Learning based models such as AlphaZero [79], (2) LLM and Transformer based models such as GPT-4o [65], and (3) the continuous growth of compute power and data processing capabilities of supercomputers and high performance systems.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S4.T1.3">
<tr class="ltx_tr" id="S4.T1.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="S4.T1.3.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.3.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.2.1" style="font-size:70%;">Reasoning</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="10" id="S4.T1.3.1.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.3.1" style="font-size:70%;">Reasoning Operator</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.1.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.4.1" style="font-size:70%;">Models</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.3.1.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.5.1" style="font-size:70%;">Pipeline</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="S4.T1.3.1.6" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.2.1" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.2.1.1" style="font-size:70%;">Scheme</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.2.3" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.2.4" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="5" id="S4.T1.3.2.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.2.5.1" style="font-size:70%;">Structure</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T1.3.2.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.2.6.1" style="font-size:70%;">Traversal</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.2.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.2.7.1" style="font-size:70%;">Update</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T1.3.2.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.2.8.1" style="font-size:70%;">Evaluation</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.2.9" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.2.10" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.2.11" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.2.12" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.2.13" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.2.14" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.2.14.1" style="font-size:70%;">Remarks</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.1.1" style="font-size:70%;">Structure</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.2.1" style="font-size:70%;">Step</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.1" style="font-size:70%;">Strategy</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.4.1" style="font-size:70%;">Gen.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.5.1" style="font-size:70%;">Ref.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.6.1" style="font-size:70%;">Agg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.7.1" style="font-size:70%;">Pr.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.1" style="font-size:70%;">Res.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.9.1" style="font-size:70%;">Sel.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.10.1" style="font-size:70%;">BT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.3.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.11.1" style="font-size:70%;">Bp.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.12.1" style="font-size:70%;">Inter.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.13.1" style="font-size:70%;">Final.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.14.1" style="font-size:70%;">PM</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.15.1" style="font-size:70%;">VM</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.16.1" style="font-size:70%;">Inf.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.17.1" style="font-size:70%;">Tr.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.3.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.18.1" style="font-size:70%;">DG</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.4">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" colspan="20" id="S4.T1.3.4.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.4.1.1" style="font-size:70%;">Explicit RLMs (Section <a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#S5.SS1" title="5.1 Explicit RLMs ‣ 5 Expressing Existing Schemes ‣ Reasoning Language Models: A Blueprint"><span class="ltx_text ltx_ref_tag">5.1</span></a>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.5.1.1" style="font-size:70%;">rStar-Math </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib36" title="">36</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.5.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.5.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.5.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.5.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.5.3.2" style="font-size:70%;"> Thought + Code Block</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.5.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.5.4.2" style="font-size:70%;"> MCTS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.5.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.16.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.5.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.5.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T1.3.5.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.6.1.1" style="font-size:70%;">PRIME </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.6.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib102" title="">102</a>, <a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib26" title="">26</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.6.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.6.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.6.2.2" style="font-size:70%;"> Multiple Chains</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.3.6.3.1"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.6.3.2" style="font-size:70%;">
<span class="ltx_tabular ltx_align_top" id="S4.T1.3.6.3.2.1">
<span class="ltx_tr" id="S4.T1.3.6.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.3.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.6.3.2.1.1.1.1">F</span> Token</span></span>
<span class="ltx_tr" id="S4.T1.3.6.3.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.3.2.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.6.3.2.1.2.1.1">C</span> Thought</span></span>
</span></span><span class="ltx_text" id="S4.T1.3.6.3.3"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.6.3.4" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.6.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.6.4.2" style="font-size:70%;"> Best-of-N</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.6.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.12.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.16.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.6.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.6.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.6.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.7.1.1" style="font-size:70%;">Marco-o1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.7.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib108" title="">108</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.7.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.7.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.7.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.3.7.3.1"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.7.3.2" style="font-size:70%;">
<span class="ltx_tabular ltx_align_top" id="S4.T1.3.7.3.2.1">
<span class="ltx_tr" id="S4.T1.3.7.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.3.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.7.3.2.1.1.1.1">F</span> Token Sequence</span></span>
<span class="ltx_tr" id="S4.T1.3.7.3.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.3.2.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.7.3.2.1.2.1.1">C</span> Thought</span></span>
</span></span><span class="ltx_text" id="S4.T1.3.7.3.3"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.7.3.4" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.7.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.7.4.2" style="font-size:70%;"> MCTS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.6.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.7.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.16.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.7.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.7.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.7.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.8.1.1" style="font-size:70%;">Journey Learning (Tr.) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.8.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib69" title="">69</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.8.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.8.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.8.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.8.3.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.8.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.8.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.8.4.2" style="font-size:70%;"> Tree Search</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.6.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.8.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.9.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.10.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.11.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.8.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.12.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.16.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.17" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.8.17.1">\faBatteryHalf</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.8.17.2" style="font-size:70%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.8.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.8.20" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.8.20.1" style="font-size:70%;">*Separate Entry</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.9.1.1" style="font-size:70%;">OpenR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.9.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib93" title="">93</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.9.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.9.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.9.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.9.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.9.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.3.9.4.1"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.9.4.2" style="font-size:70%;">
<span class="ltx_tabular ltx_align_top" id="S4.T1.3.9.4.2.1">
<span class="ltx_tr" id="S4.T1.3.9.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.4.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.9.4.2.1.1.1.1">E</span> Best-of-N</span></span>
<span class="ltx_tr" id="S4.T1.3.9.4.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.4.2.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.9.4.2.1.2.1.1">E</span> Beam Search</span></span>
<span class="ltx_tr" id="S4.T1.3.9.4.2.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.4.2.1.3.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.9.4.2.1.3.1.1">E</span> MCTS</span></span>
</span></span><span class="ltx_text" id="S4.T1.3.9.4.3"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.9.4.4" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.8.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.9.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.16.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.9.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.9.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.9.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.10.1.1" style="font-size:70%;">LLaMA-Berry </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.10.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib105" title="">105</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.10.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.10.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.10.2.2" style="font-size:70%;"> Tree of Chains</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.10.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.10.3.2" style="font-size:70%;"> Solution</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.10.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.10.4.2" style="font-size:70%;"> MCTS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.6.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.10.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.13.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.16.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.10.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.10.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.10.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.11.1.1" style="font-size:70%;">ReST-MCTS* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.11.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib106" title="">106</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.11.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.11.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.11.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.11.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.11.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.11.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.11.4.2" style="font-size:70%;"> MCTS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.11.6.1">\faBatteryHalf</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.11.6.2" style="font-size:70%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.11.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.16.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.11.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.11.20" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.11.20.1" style="font-size:70%;">*Advice by critic</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.1.1" style="font-size:70%;">AlphaMath Almost Zero </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib18" title="">18</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.12.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.12.3.1" style="font-size:70%;">F</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.12.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.4.2" style="font-size:70%;"> MCTS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.12.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.15" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.12.15.1">\faBatteryHalf</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.15.2" style="font-size:70%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.16" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.12.16.1">\faBatteryHalf</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.16.2" style="font-size:70%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.12.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.12.20" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.12.20.1" style="font-size:70%;">*Single model</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.1.1" style="font-size:70%;">MCTS-DPO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib99" title="">99</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.13.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.13.3.1" style="font-size:70%;">F</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.3.2" style="font-size:70%;"> Token Sequence</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.13.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.4.2" style="font-size:70%;"> MCTS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.13.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.15" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.13.15.1">\faBatteryHalf</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.15.2" style="font-size:70%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.16" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.13.16.1">\faBatteryHalf</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.16.2" style="font-size:70%;">*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.13.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.13.20" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.13.20.1" style="font-size:70%;">*Single model</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.14.1.1" style="font-size:70%;">AlphaLLM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.14.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib89" title="">89</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.14.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.14.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.14.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.14.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.14.3.2" style="font-size:70%;"> Option</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.14.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.14.4.2" style="font-size:70%;"> MCTS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.8.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.14.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.16.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.14.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.14.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.14.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.15.1.1" style="font-size:70%;">TS-LLM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.15.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib30" title="">30</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.15.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.15.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.15.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.3.15.3.1"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.15.3.2" style="font-size:70%;">
<span class="ltx_tabular ltx_align_top" id="S4.T1.3.15.3.2.1">
<span class="ltx_tr" id="S4.T1.3.15.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.3.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.15.3.2.1.1.1.1">F</span> Token</span></span>
<span class="ltx_tr" id="S4.T1.3.15.3.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.3.2.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.15.3.2.1.2.1.1">F</span> Sentence</span></span>
</span></span><span class="ltx_text" id="S4.T1.3.15.3.3"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.15.3.4" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T1.3.15.4.1"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.15.4.2" style="font-size:70%;">
<span class="ltx_tabular ltx_align_top" id="S4.T1.3.15.4.2.1">
<span class="ltx_tr" id="S4.T1.3.15.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.4.2.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.15.4.2.1.1.1.1">E</span> MCTS</span></span>
<span class="ltx_tr" id="S4.T1.3.15.4.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.4.2.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_serif ltx_font_bold" id="S4.T1.3.15.4.2.1.2.1.1">E</span> Tree Search</span></span>
</span></span><span class="ltx_text" id="S4.T1.3.15.4.3"></span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.15.4.4" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.8.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.15.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.12.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.15.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.16.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.18.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.15.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.15.19.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.15.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.16">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" colspan="20" id="S4.T1.3.16.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.16.1.1" style="font-size:70%;">Implicit RLMs (Section <a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#S5.SS2" title="5.2 Implicit RLMs ‣ 5 Expressing Existing Schemes ‣ Reasoning Language Models: A Blueprint"><span class="ltx_text ltx_ref_tag">5.2</span></a>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.17.1.1" style="font-size:70%;">QwQ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.17.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib88" title="">88</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.17.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.17.2.1" style="font-size:70%;">I</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.17.2.2" style="font-size:70%;"> Chain*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.17.3.1" style="font-size:70%;">F</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.17.3.2" style="font-size:70%;"> Token</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.4.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.10.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.11.1">\faBatteryHalf</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.17.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.12.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.13.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.14.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.15.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.16.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.18.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.17.19.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.17.20" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.17.20.1" style="font-size:70%;">*Linearized Tree</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.18.1.1" style="font-size:70%;">Journey Learning (Inf.) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.18.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib69" title="">69</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.18.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.18.2.1" style="font-size:70%;">I</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.18.2.2" style="font-size:70%;"> Chain*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.18.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.18.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.18.4.1" style="font-size:70%;">I</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.18.4.2" style="font-size:70%;"> DFS</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.10.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.11.1">\faBatteryHalf</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.18.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.12.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.13.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.14.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.15.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.16.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.18.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.18.19.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.18.20" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.18.20.1" style="font-size:70%;">*Linearized Tree</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.19">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" colspan="20" id="S4.T1.3.19.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.19.1.1" style="font-size:70%;">Structured Prompting Schemes (Section <a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#S5.SS3" title="5.3 Structured Prompting Schemes ‣ 5 Expressing Existing Schemes ‣ Reasoning Language Models: A Blueprint"><span class="ltx_text ltx_ref_tag">5.3</span></a>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.20.1.1" style="font-size:70%;">Graph of Thoughts (GoT) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.20.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib6" title="">6</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.20.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.20.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.20.2.2" style="font-size:70%;"> Graph*</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.20.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.20.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.20.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.20.4.2" style="font-size:70%;"> Controller</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.6.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.7.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.11.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.3.20.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.12.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.15.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.16.1">\faBatteryHalf</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.18.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.20.19.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.3.20.20" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.20.20.1" style="font-size:70%;">*DAG</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.21.1.1" style="font-size:70%;">Tree of Thoughts (ToT) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.21.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib101" title="">101</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.21.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.21.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.21.2.2" style="font-size:70%;"> Tree</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.21.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.21.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.21.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.21.4.2" style="font-size:70%;"> Tree Search</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.8.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.11.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.21.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.12.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.13.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.14.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.15.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.16.1">\faBatteryHalf</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.18.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.21.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.21.19.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.21.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.22.1.1" style="font-size:70%;">Self-Consistency (SC) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.22.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib97" title="">97</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.22.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.22.2.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.22.2.2" style="font-size:70%;"> Multiple Chains</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.22.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.22.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.22.4.1" style="font-size:70%;">E</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.22.4.2" style="font-size:70%;"> Majority Voting</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.10.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.22.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.12.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.13.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.14.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.15.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.16.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.18.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.22.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.22.19.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T1.3.22.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T1.3.23.1.1" style="font-size:70%;">Chain of Thought (CoT) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.23.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.11223v1#bib.bib98" title="">98</a><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.23.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.23.2.1" style="font-size:70%;">I</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.23.2.2" style="font-size:70%;"> Chain</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.23.3.1" style="font-size:70%;">C</span><span class="ltx_text ltx_font_sansserif" id="S4.T1.3.23.3.2" style="font-size:70%;"> Thought</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.4.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.5.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.6.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.7.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.8.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.9.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.10.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.11.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.23.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.12.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.13.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.14.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.15.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.16.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.17.1">\faBatteryFull</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.18" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.18.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.23.19" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_ERROR undefined" id="S4.T1.3.23.19.1">\faTimes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="S4.T1.3.23.20" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares various Reasoning Language Models (RLMs) based on a taxonomy introduced in Section 4 of the paper.  It details each RLM's reasoning approach (structure and strategy), the types of operators used to manipulate the reasoning structure (generate, refine, aggregate, prune, restructure, select, backtrack, backpropagate, intermediate/final evaluation), the models employed (policy and/or value models), and the pipelines utilized (inference, training, data generation).  Abbreviations are used for explicit/implicit reasoning, fine/coarse-grained steps, and the level of support for each operator/pipeline.
> <details>
> <summary>read the caption</summary>
> TABLE I: Comparison of RLMs with respect to the provided taxonomy (Section 4 and Figure 5). “Reasoning”: Details of the reasoning approach, specifically what is its Structure and its Strategy? “Reasoning Operator”: Does a given scheme support operators on the reasoning structure? If yes, which classes (and specific functionalities) are supported Structure (“Gen.”: generate, “Ref.”: refine, “Agg.”: aggregate, “Pr.”: prune, “Res.”: restructure), Traversal (“Sel”: select, “BT”: backtrack), Update (“Bp.”: backpropagate), and Evaluation of “Inter.”: intermediate steps and “Final.”: final steps? “Model“: Does a given scheme use models to implement its operators and if so, which ones (“PM”: policy model, “VM”: value model)? “Pipeline”: Which pipelines are harnessed by a given scheme (“Inf.”: inference, Tr.”: training, “DG”: data generation)? When describing representations, we use the following abbreviations: “E”: explicit, “I”: implicit. “F”: fine-grained. “C”: coarse-grained. “\faBatteryFull”: full support (i.e., YES), “\faBatteryHalf”: partially [supported], “\faTimes”: no support (i.e., NO).
> </details>





### In-depth insights


#### RLM Blueprint
The "RLM Blueprint" section of this research paper proposes a modular framework for constructing reasoning language models (RLMs).  It emphasizes **modularity**, allowing researchers to combine different reasoning structures (chains, trees, graphs), strategies (MCTS, beam search), and reinforcement learning concepts.  The blueprint's strength lies in its **unifying power**, demonstrating how various existing RLMs are special cases within this overarching framework. This modularity is crucial for **democratizing RLM development**, making sophisticated reasoning capabilities accessible to researchers with fewer resources.  The detailed mathematical formulations and algorithmic specifications aim to remove the opaqueness often surrounding RLMs, **facilitating reproducibility and innovation**. The introduction of a new modular implementation, x1, further supports this goal by enabling rapid prototyping and experimentation, which will prove invaluable in fostering future research and development of more efficient and effective RLMs.

#### Modular RLMs
The concept of Modular RLMs offers a compelling vision for overcoming current limitations in reasoning language models.  By decomposing complex RLMs into smaller, independent modules, researchers can achieve **greater flexibility and understandability**.  This modularity fosters **easier experimentation and innovation**, allowing for the selective replacement or addition of components to tailor RLMs to specific applications and datasets more effectively.  **Improved scalability** is another key benefit, as modular designs can be adapted more readily for training on larger datasets or deployment on distributed computing infrastructure.  However, the design and implementation of effective interfaces between modules present significant technical challenges.  Careful attention must be given to ensuring seamless data flow and communication while maintaining modularity.  Additionally, **robust methods for training and evaluating individual modules** are crucial for the success of modular RLMs. Thoroughly testing the performance of the combined system is essential to verify its reliability and accuracy compared to monolithic systems.  The development of standardized interfaces and modular components would greatly accelerate RLM research and development, fostering broader accessibility to this powerful technology.

#### x1 Framework
The x1 framework, as described in the research paper, is a modular and extensible system for prototyping and experimenting with reasoning language models (RLMs).  **Its minimalist design facilitates rapid development and experimentation**, allowing researchers to test different RLM architectures and components without extensive overhead.  The framework's modularity allows users to easily swap out components like reasoning schemes, operators, and models, promoting flexibility and enabling the exploration of novel RLM designs.  **A key feature of x1 is its ability to support different training paradigms**, such as supervised fine-tuning and reinforcement learning, facilitating comprehensive evaluation of RLM performance under various training schemes.  Furthermore, **x1 incorporates tools for data generation and management**, streamlining the training process and allowing for effective experimentation.  The framework's focus on both theoretical understanding and practical implementation bridges the gap between complex RLM architectures and accessible experimentation, thereby democratizing the development and refinement of these advanced AI models.  The combination of modularity, support for varied training approaches, and comprehensive data management tools positions x1 as a valuable resource for advancing the field of RLM research.**

#### Multi-Phase Training
Multi-phase training for reasoning language models (RLMs) offers a structured approach to enhance model capabilities.  It typically involves distinct phases, such as **initial supervised fine-tuning** to establish a foundational understanding of reasoning patterns, followed by **reinforcement learning** to refine strategies and improve performance.  The initial phase often leverages labeled datasets, like chains of thought (CoT), providing a strong signal for the model to learn basic reasoning steps.  Subsequently, reinforcement learning refines this foundation, often employing methods like proximal policy optimization (PPO) or direct preference optimization (DPO). This phase involves the iterative generation and evaluation of reasoning sequences within a search framework like Monte Carlo Tree Search (MCTS), generating more complex and nuanced data than the first phase. The use of MCTS allows the model to explore a wider range of solution paths and to develop more sophisticated strategies through continuous self-improvement. The value of this approach lies in its ability to combine the strengths of both supervised and reinforcement learning, yielding models that are both accurate and robust.  **Clear separation of training phases** promotes model stability and enables better optimization of individual components. **Careful consideration of data distributions** used in each phase is crucial for efficient and effective training.

#### Future of RLMs
The future of Reasoning Language Models (RLMs) appears incredibly promising, driven by several key factors.  **Improved scalability and efficiency** are paramount; current RLMs' high computational costs hinder widespread adoption. Future research will likely focus on more efficient architectures and training methods, potentially leveraging advancements in hardware and algorithm design. **Enhanced reasoning capabilities** are another critical area.  While RLMs have demonstrated impressive reasoning abilities, their performance on complex, multi-step reasoning tasks remains limited.  Future developments might incorporate more sophisticated reasoning strategies, such as hierarchical reasoning or the integration of external knowledge bases.  **Addressing the accessibility gap** is crucial. The high cost and proprietary nature of many state-of-the-art RLMs limit their accessibility to researchers and developers with limited resources. Future progress hinges on creating more open-source and affordable models, fostering wider participation and innovation within the community. Finally, **new benchmarks and evaluation metrics** are needed. Existing benchmarks often lack the complexity and diversity to thoroughly evaluate the full range of RLM capabilities. The development of more comprehensive and nuanced evaluation metrics will be essential to guide future research and development.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.11223/x3.png)

> 🔼 This figure shows the relationship between different types of language models and the three key components that enable reasoning language models (RLMs): Large Language Models (LLMs), Reinforcement Learning (RL), and High-Performance Computing (HPC). The left side illustrates how LLMs, which are adept at generating human-like text but lack structured reasoning, and RL agents, which can find optimal solutions but lack world knowledge, are combined with the power of HPC to create RLMs. The right side presents a hierarchy showing how LLMs are a subset of language models, with RLMs being a more advanced type of LLM that incorporates reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: Hierarchy of language models (right) and the three pillars of RLMs (left).
> </details>



![](https://arxiv.org/html/2501.11223/x4.png)

> 🔼 Figure 4 illustrates the architecture of a Reasoning Language Model (RLM). It starts with a high-level overview showing the three main pipelines: inference, training, and data generation.  The medium-level overview zooms in on the inference and training processes, distinguishing between implicit and explicit RLMs. The bottom part provides a very detailed view of the processes, including the reasoning scheme (how the reasoning process evolves), operators, models, and various training data types (output-based, process-based, and trace-based supervision).  The figure details the flow of data and how the different components interact to achieve reasoning. Appendices C and D provide further details on the algorithms and data generation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Overview of a general RLM design and core concepts. We provide a high-level overview (the top-left part), a more detailed medium-level overview (the top-right part), and a very detailed diagram showing the inference and training pipelines (the bottom part). A detailed specification of the inference pipeline can be found in Appendix C.1 and in Algorithm 1. Pipelines for different training phases and paradigms can be found in Appendix C.2–Appendix C.4, and in Algorithms 2–7. The data generation pipeline is detailed in Appendix D.
> </details>



![](https://arxiv.org/html/2501.11223/x26.png)

> 🔼 Figure 5 presents a comprehensive blueprint for building reasoning Language Models (RLMs).  It's structured around four key component categories: Reasoning Schemes (defining the overall reasoning strategy and structure), Operators (actions that modify the reasoning process), Models (neural networks used to implement operators), and Pipelines (workflows for inference, training, and data generation).  The figure visually organizes these components, highlighting their interrelationships and providing references to detailed descriptions and algorithms found in the paper's appendices.
> <details>
> <summary>read the caption</summary>
> Figure 5: A blueprint for reasoning LMs. It consists of four main toolboxes: the reasoning scheme (the top part), operators (the bottom-left part), and models (the bottom-right part); pipelines are mentioned in the center and detailed in Appendix C.1 and in Algorithm 1 (the inference pipeline), Appendix C.2–Appendix C.4, and in Algorithms 2–7 (the training pipelines), and in Appendix D (the data generation pipeline).
> </details>



![](https://arxiv.org/html/2501.11223/x27.png)

> 🔼 The figure illustrates the x1 framework's two-phase training process. Phase 1 initializes the models (policy and value models) using supervised fine-tuning.  Phase 2 iteratively refines these models using reinforcement learning.  This involves alternating between generating many Monte Carlo Tree Search (MCTS) trees and training the models using data derived from the MCTS process.  This iterative refinement helps improve both model accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 6: An overview of the x1 framework is presented, highlighting its two-phase training process. In phase 1, the models are initialized, while in phase 2, the models are iteratively refined by alternating between constructing a sufficient number of MCTS trees and training the models on data derived from these trees.
> </details>



![](https://arxiv.org/html/2501.11223/extracted/6133729/token_model_output.png)

> 🔼 This figure displays an example of model output, highlighting the probabilities associated with individual tokens.  The color-coding helps visualize the model's confidence in its predictions: purple indicates low confidence (highest probability below 0.8), blue signifies high confidence with a potential for alternative predictions (second highest probability above 0.1), and red represents uncertainty (both conditions are met). This exemplifies how the model's certainty is reflected in its token generation process.
> <details>
> <summary>read the caption</summary>
> Figure 7: Example model output with highlighted tokens. The output has been colored in the following way: Purple if the highest probability is below 0.8 (not so certain but no contention), blue if the second highest probability is above 0.1 (very certain, but maybe another one) and red if both are true (uncertain).
> </details>



![](https://arxiv.org/html/2501.11223/extracted/6133729/token_uncertainty_plot_0.png)

> 🔼 This figure visualizes the token probability distributions generated by a language model during the reasoning process.  For each token in the model's output, it displays the probability of the two most likely tokens and the combined probability of all other less-likely tokens. This allows for a detailed analysis of the model's certainty and uncertainty in each step, revealing potential areas of confidence and ambiguity in its reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 8: Token probabilities of example model outputs We show the two highest probabilities as well as the sum of the other probabilities.
> </details>



![](https://arxiv.org/html/2501.11223/extracted/6133729/token_uncertainty_metrics_plot_0.png)

> 🔼 This figure visualizes the uncertainty of token probabilities in a model's output sequence, using four metrics: variance, entropy, VarEntropy, and the Gini coefficient.  These metrics help analyze the model's confidence in its predictions and can reveal where the model is most uncertain. The x-axis represents the position in the token sequence, and the y-axis shows the values of each metric. High values for variance, VarEntropy, and the Gini coefficient indicate high uncertainty, suggesting areas where the model may be making less informed predictions.
> <details>
> <summary>read the caption</summary>
> Figure 9: Uncertainty metrics (variance, entropy, VarEntropy, and the Gini coefficient) plotted against the output token sequence.
> </details>



![](https://arxiv.org/html/2501.11223/x28.png)

> 🔼 This figure displays the relationship between the size of a question set and the length of the 95% confidence interval for the accuracy of large language models.  The data was generated by sampling responses from a subset of 1000 questions, generating 8 answers for each question at a temperature of 1.  The confidence interval was calculated across 32 randomly sampled sets with replacement for each question set size.  The chart visually demonstrates how increasing the number of questions reduces the uncertainty in the model's accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 10: Estimated 95%-confidence interval length for different question set sizes using sampled generated answers from a subset of 1000 questions with eight generated answers per question at temperature 1. The confidence interval is calculated over the eight different pass@1 subsets of each question with 32 sets randomly sampled with replacement for each set size.
> </details>



![](https://arxiv.org/html/2501.11223/x29.png)

> 🔼 This figure illustrates the different types of reward models used in reinforcement learning for reasoning tasks, specifically in the context of Monte Carlo Tree Search (MCTS). It compares Outcome-Based Reward Models (ORMs), which only consider the final outcome, with Process-Based Reward Models (PRMs), which evaluate intermediate steps. The figure also introduces Outcome-Driven Process-Based Reward Models (O-PRMs), a hybrid approach that combines elements of both ORMs and PRMs.  Gray nodes in the diagrams represent terminal nodes (i.e., end of the reasoning process). The visual representation helps clarify the differences in how these reward models evaluate the quality of reasoning paths.  This visualization helps to understand why PRMs are usually preferred, as they provide richer feedback signals during the training process.
> <details>
> <summary>read the caption</summary>
> Figure 11: Comparison of Outcome vs. Process-Based label generation, and the introduction of Outcome-Driven Process Based Reward Models (O-PRMs). Gray nodes mark terminal nodes.
> </details>



![](https://arxiv.org/html/2501.11223/x30.png)

> 🔼 This figure illustrates the differences between reward models, V-value models, and Q-value models, specifically in scenarios with sparse rewards (only terminal states receive non-zero rewards).  The reward model only provides information at the terminal state, indicating whether the solution is correct or incorrect.  V-value models estimate a global value for each state, while Q-value models provide a more granular evaluation, estimating a value for each state-action pair. This more detailed information is especially useful for search algorithms like Monte Carlo Tree Search (MCTS) which make decisions based on the values of individual actions. Gray nodes in the figure represent terminal states.
> <details>
> <summary>read the caption</summary>
> Figure 12: Comparison of reward, v-value and q-value models in a sparse reward setting (only terminal states receive non-zero rewards). Gray nodes mark terminal nodes. The reward model should predict the rewards for transitioning from one state to another which is 0 for non-terminal states and not providing information. V-VMs and Q-VMs however, predict a global value and are therefore informative for non-terminal states.
> </details>



![](https://arxiv.org/html/2501.11223/x31.png)

> 🔼 This figure illustrates an example of a tree structure generated by the Monte Carlo Tree Search (MCTS) algorithm used in the paper's reasoning language model (RLM). Each node represents a reasoning step in the process of solving a problem, and the edges represent the transitions between steps. The tree expands by exploring multiple possible paths, guided by a policy model that predicts the likelihood of each next step and a value model that estimates the overall quality of each path.
> <details>
> <summary>read the caption</summary>
> Figure 13: Example MCTS generated tree of reasoning sequences.
> </details>



![](https://arxiv.org/html/2501.11223/x32.png)

> 🔼 This figure illustrates the two-phase training pipeline for the Reasoning Language Model (RLM). Phase 1 focuses on supervised fine-tuning using Chain-of-Thought (CoT) and Monte Carlo Tree Search (MCTS) to initialize the policy and value models.  Phase 2 uses reinforcement learning with Process-Based Reward Models to refine the models through iterative improvement based on data generated via the MCTS process. The process involves alternating between model training and MCTS simulations, each iteration enhancing model performance and data quality.  Implicit and Explicit RLMs are shown to illustrate the generalizability of the pipeline.
> <details>
> <summary>read the caption</summary>
> Figure 14: The two phases of the training pipeline.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.11223/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11223/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}