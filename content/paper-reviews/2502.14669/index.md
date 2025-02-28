---
title: "AlphaMaze: Enhancing Large Language Models' Spatial Intelligence via GRPO"
summary: "AlphaMaze enhances LLMs' spatial intelligence via GRPO, achieving 93% accuracy in maze navigation and showing emergent reasoning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Menlo Research",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14669 {{< /keyword >}}
{{< keyword icon="writer" >}} Alan Dao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14669" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14669" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14669/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) struggle with tasks needing genuine visual spatial reasoning despite being good at language tasks. Current Vision-Language Models (VLMs) are good at recognizing patterns and objects, but have problems with deeper spatial thinking and planning. It's a big step toward more flexible AI to close this gap and give LLMs strong visual thinking skills.



To address this, the paper introduces **AlphaMaze**, a new two-stage training method to give standard LLMs visual reasoning skills for maze navigation. The method uses Supervised Fine-Tuning (SFT) on tokenized mazes to teach movement commands, followed by Group Relative Policy Optimization (GRPO) with a special reward function to improve decision-making. The new **MazeBench** is introduced to evaluate maze-solving ability, while the experiments show big accuracy gains through GRPO.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A two-stage framework (SFT+GRPO) can equip LLMs with visual spatial reasoning abilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} GRPO refines LLMs' reasoning, promoting self-correction and chain-of-thought behavior. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MazeBench offers a standardized benchmark to evaluate spatial reasoning in LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel method of enhancing LLMs' spatial reasoning, opening new avenues for AI applications in robotics and navigation. The work's focus on combining SFT and GRPO could inspire more effective training strategies and promote further research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14669/extracted/6219274/figures/example_maze.png)

> 🔼 This figure shows a simple example of a maze used in the AlphaMaze research.  It is a small grid-based maze with a clear start (origin) and end (target) point.  The walls of the maze are visually depicted, and the maze is designed to illustrate the tokenized representation used by the model to understand the maze's structure.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visual of the Example Maze
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1.2">SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1.3">GRPO</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1.4">Score (%)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.2.1.1">Baseline-1.5B</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.2.1.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.2.1.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.2.1.4">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T1.1.3.2.1">Baseline-7B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.3.2.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.3.2.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.3.2.4">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T1.1.4.3.1">Baseline-1.5B (SFT)</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.4.3.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.4.3.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.4.3.4">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T1.1.5.4.1">AlphaMaze-SFT</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.5.4.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.5.4.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.5.4.4">86.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S4.T1.1.6.5.1">AlphaMaze</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.6.5.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.6.5.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.6.5.4.1">93.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the quantitative results of the maze-solving performance of different models on the MazeBench benchmark. It shows the accuracy (in percentage) achieved by three baseline models and the proposed AlphaMaze model. The baseline models include a direct prediction model and two DeepSeek-R1-Distill-Qwen models with different parameter sizes (1.5B and 7B). AlphaMaze represents the performance of the model after applying Supervised Fine-Tuning (SFT) and Group Relative Policy Optimization (GRPO).  The table highlights the impact of SFT and GRPO on improving maze-solving accuracy.
> <details>
> <summary>read the caption</summary>
> TABLE I: Maze Solving Accuracy on MazeBench
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14669/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14669/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14669/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14669/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14669/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14669/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14669/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14669/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14669/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}