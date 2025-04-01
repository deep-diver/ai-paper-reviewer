---
title: "LEGO-Puzzles: How Good Are MLLMs at Multi-Step Spatial Reasoning?"
summary: "MLLMs still struggle with spatial reasoning! LEGO-Puzzles benchmark reveals critical deficiencies, paving the way for AI advancement."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19990 {{< /keyword >}}
{{< keyword icon="writer" >}} Kexian Tang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19990" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19990" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19990/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-step spatial reasoning is crucial for real-world applications but current Multimodal Large Language Models (MLLMs) struggle with it. Existing evaluations are often simplistic or lack scalability, failing to address multi-step aspects. To solve this problem, the authors introduce **LEGO-Puzzles, a scalable benchmark designed to evaluate spatial understanding and sequential reasoning in MLLMs through LEGO-based tasks**. The dataset consists of 1,100 VQA samples spanning 11 tasks.



By creating this benchmark, the authors conduct a comprehensive evaluation of MLLMs. The results show that even the most powerful MLLMs struggle to follow assembly instructions with a high accuracy. **LEGO-Puzzles effectively exposes deficiencies in existing MLLMs' spatial understanding, underscoring the need for further advancements in multimodal spatial reasoning**. The framework is also designed to evaluate spatially grounded image generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LEGO-Puzzles is introduced as a new benchmark to evaluate spatial reasoning in MLLMs, offering enhanced visual richness and scalability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current MLLMs show limitations in spatial understanding and sequential reasoning, with performance lagging behind human capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The benchmark includes visual question answering and image generation tasks, revealing deficiencies in MLLMs' ability to follow instructions and maintain spatial coherence. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers aiming to enhance MLLMs' spatial reasoning for real-world tasks like robotics. **It highlights current limitations and provides a benchmark for future developments**, spurring innovation in multimodal AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19990/x1.png)

> 🔼 This figure shows the breakdown of the 1100+ visual question answering pairs in the LEGO-Puzzles benchmark dataset.  It displays the number of questions categorized into three main task types: Spatial Understanding (fundamental spatial reasoning), Single-Step Sequential Reasoning (reasoning across one step in a LEGO construction sequence), and Multi-Step Sequential Reasoning (reasoning across multiple steps). The specific tasks within each category are also listed, along with the percentage of questions belonging to each.
> <details>
> <summary>read the caption</summary>
> Figure 1: Problem Statistics in LEGO-Puzzles.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.2.3.1.1" rowspan="2" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.1.1" style="font-size:80%;">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S4.T1.2.2.3.1.2" style="background-color:#F2FFFF;padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.2.1" style="font-size:80%;background-color:#F2FFFF;">Spatial Understanding</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S4.T1.2.2.3.1.3" style="background-color:#FFF2E6;padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.3.1" style="font-size:80%;background-color:#FFF2E6;">Single-Step Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S4.T1.2.2.3.1.4" style="background-color:#F5ECE2;padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.4.1" style="font-size:80%;background-color:#F5ECE2;">Multi-Step Reasoning</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.2.2.3.1.5" rowspan="2" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.5.1" style="font-size:80%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.4.2">
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.1.1" style="font-size:80%;">Height</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.2.1" style="font-size:80%;">Adjacency</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.3.1" style="font-size:80%;">Rotation</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.4.1" style="font-size:80%;">Multiview</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.5.1" style="font-size:80%;">Next-Step</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.6.1" style="font-size:80%;">Dependency</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.7.1" style="font-size:80%;">Rotation Stat.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.8.1" style="font-size:80%;">Position</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.9.1" style="font-size:80%;">Backwards</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4.2.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.10.1" style="font-size:80%;">Ordering</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.4.2.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.2.11.1" style="font-size:80%;">Outlier</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.5.3" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S4.T1.2.2.5.3.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.2.2.5.3.1.1" style="font-size:80%;background-color:#FFFFD9;">Proprietary</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.6.4">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.6.4.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.1.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.2.1" style="font-size:80%;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.3.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.4.1" style="font-size:80%;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.5.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.6.1" style="font-size:80%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.7.1" style="font-size:80%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.8.1" style="font-size:80%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.9.1" style="font-size:80%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.10.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.11.1" style="font-size:80%;">54.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.4.12" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.12.1" style="font-size:80%;background-color:#A6A6A6;">64.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.6.4.13" style="background-color:#E6FFE6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.4.13.1" style="font-size:80%;background-color:#E6FFE6;">53.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.7.5">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.7.5.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.1.1" style="font-size:80%;">Gemini-1.5-Flash</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.2.1" style="font-size:80%;">29.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.3.1" style="font-size:80%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.4.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.5.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.6.1" style="font-size:80%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.7.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.8.1" style="font-size:80%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.9.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.10.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.11.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.7.5.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.12.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.7.5.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.7.5.13.1" style="font-size:80%;">43.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.8.6">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.8.6.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.1.1" style="font-size:80%;">Gemini-1.5-Pro</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.2.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.3.1" style="font-size:80%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.4.1" style="font-size:80%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.5" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.5.1" style="font-size:80%;background-color:#A6A6A6;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.6.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.7.1" style="font-size:80%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.8.1" style="font-size:80%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.9.1" style="font-size:80%;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.10.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.11.1" style="font-size:80%;">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.8.6.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.12.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.8.6.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.8.6.13.1" style="font-size:80%;">51.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.9.7">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.9.7.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.1.1" style="font-size:80%;">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.2.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.3" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.3.1" style="font-size:80%;background-color:#A6A6A6;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.4" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.4.1" style="font-size:80%;background-color:#A6A6A6;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.5.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.6" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.6.1" style="font-size:80%;background-color:#A6A6A6;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.7.1" style="font-size:80%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.8.1" style="font-size:80%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.9.1" style="font-size:80%;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.10.1" style="font-size:80%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.11.1" style="font-size:80%;">46.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.7.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.12.1" style="font-size:80%;">43.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.9.7.13" style="background-color:#B3FFB3;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.9.7.13.1" style="font-size:80%;background-color:#B3FFB3;">54.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.10.8">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.10.8.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.2" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.2.1" style="font-size:80%;background-color:#A6A6A6;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.3.1" style="font-size:80%;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.4.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.5.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.6.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.7" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.7.1" style="font-size:80%;background-color:#A6A6A6;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.8.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.9" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.9.1" style="font-size:80%;background-color:#A6A6A6;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.10.1" style="font-size:80%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.8.11" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.11.1" style="font-size:80%;background-color:#A6A6A6;">72.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.8.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.12.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.10.8.13" style="background-color:#00FF00;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.10.8.13.1" style="font-size:80%;background-color:#00FF00;">57.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.11.9">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.11.9.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.2.1" style="font-size:80%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.3.1" style="font-size:80%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.4.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.5.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.6.1" style="font-size:80%;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.7.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.8.1" style="font-size:80%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.9.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.10.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.9.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.11.1" style="font-size:80%;">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.9.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.12.1" style="font-size:80%;">27.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.11.9.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.11.9.13.1" style="font-size:80%;">39.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.12.10" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S4.T1.2.2.12.10.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.2.2.12.10.1.1" style="font-size:80%;background-color:#FFFFD9;">Open-source</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.13.11">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.13.11.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.1.1" style="font-size:80%;">MiniCPM-V2.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.2.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.3.1" style="font-size:80%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.4.1" style="font-size:80%;">22.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.5.1" style="font-size:80%;">44.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.6.1" style="font-size:80%;">34.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.7.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.8.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.9.1" style="font-size:80%;">29.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.10.1" style="font-size:80%;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.11.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.13.11.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.12.1" style="font-size:80%;">19.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.13.11.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.13.11.13.1" style="font-size:80%;">32.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.14.12">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.14.12.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.2.1" style="font-size:80%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.3.1" style="font-size:80%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.4.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.5.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.6.1" style="font-size:80%;">44.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.7.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.8.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.9.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.10.1" style="font-size:80%;">13.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.11.1" style="font-size:80%;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.14.12.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.12.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.14.12.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.14.12.13.1" style="font-size:80%;">36.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.15.13">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.15.13.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.1.1" style="font-size:80%;">Qwen2.5-VL-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.2.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.3.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.4.1" style="font-size:80%;">22.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.5.1" style="font-size:80%;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.6.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.7.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.8.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.9.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.10.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.15.13.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.11.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.15.13.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.12.1" style="font-size:80%;">13.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.15.13.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.15.13.13.1" style="font-size:80%;">31.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.16.14">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.16.14.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.1.1" style="font-size:80%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.2.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.3.1" style="font-size:80%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.4.1" style="font-size:80%;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.5.1" style="font-size:80%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.6.1" style="font-size:80%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.7.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.8" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.8.1" style="font-size:80%;background-color:#A6A6A6;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.9.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.10.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.16.14.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.11.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.16.14.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.12.1" style="font-size:80%;">29.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.16.14.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.16.14.13.1" style="font-size:80%;">35.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.17.15">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.17.15.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.1.1" style="font-size:80%;">VILA1.5-13B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.2.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.3.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.4.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.5.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.6.1" style="font-size:80%;">17.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.7.1" style="font-size:80%;">34.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.8.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.9.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.10.1" style="font-size:80%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.17.15.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.11.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.17.15.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.12.1" style="font-size:80%;">22.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.17.15.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.17.15.13.1" style="font-size:80%;">27.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.18.16">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.18.16.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.1.1" style="font-size:80%;">Idefics3-8B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.2.1" style="font-size:80%;">29.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.3.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.4.1" style="font-size:80%;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.5.1" style="font-size:80%;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.6.1" style="font-size:80%;">18.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.7.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.8.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.9.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.10.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.18.16.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.11.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.18.16.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.12.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.18.16.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.18.16.13.1" style="font-size:80%;">26.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.19.17">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.19.17.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.1.1" style="font-size:80%;">InternVL2.5-78B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.2.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.3.1" style="font-size:80%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.4.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.5.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.6" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.6.1" style="font-size:80%;background-color:#D9D9D9;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.7" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.7.1" style="font-size:80%;background-color:#D9D9D9;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.8.1" style="font-size:80%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.9.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.10.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.19.17.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.11.1" style="font-size:80%;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.19.17.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.12.1" style="font-size:80%;">37.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.19.17.13" style="background-color:#E6FFE6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.19.17.13.1" style="font-size:80%;background-color:#E6FFE6;">45.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.20.18">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.20.18.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.2.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.3.1" style="font-size:80%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.4" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.4.1" style="font-size:80%;background-color:#D9D9D9;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.5" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.5.1" style="font-size:80%;background-color:#D9D9D9;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.6.1" style="font-size:80%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.7" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.7.1" style="font-size:80%;background-color:#D9D9D9;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.8.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.9.1" style="font-size:80%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.10.1" style="font-size:80%;">34.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.20.18.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.11.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.20.18.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.12.1" style="font-size:80%;">31.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.20.18.13" style="background-color:#B3FFB3;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.20.18.13.1" style="font-size:80%;background-color:#B3FFB3;">46.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.21.19">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.21.19.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.1.1" style="font-size:80%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.2.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.3.1" style="font-size:80%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.4.1" style="font-size:80%;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.5.1" style="font-size:80%;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.6.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.7.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.8.1" style="font-size:80%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.9" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.9.1" style="font-size:80%;background-color:#D9D9D9;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.10" style="background-color:#A6A6A6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.10.1" style="font-size:80%;background-color:#A6A6A6;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.21.19.11" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.11.1" style="font-size:80%;background-color:#D9D9D9;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.21.19.12" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.12.1" style="font-size:80%;background-color:#D9D9D9;">43.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.21.19.13" style="background-color:#00FF00;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.21.19.13.1" style="font-size:80%;background-color:#00FF00;">46.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.22.20">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.22.20.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.1.1" style="font-size:80%;">DeepSeek-VL2-Small</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.2.1" style="font-size:80%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.3.1" style="font-size:80%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.4.1" style="font-size:80%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.5.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.6.1" style="font-size:80%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.7.1" style="font-size:80%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.8.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.9.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.10.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.22.20.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.11.1" style="font-size:80%;">3.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.22.20.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.12.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.22.20.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.22.20.13.1" style="font-size:80%;">37.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.23.21">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.23.21.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.1.1" style="font-size:80%;">DeepSeek-VL2-Tiny</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.2.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.3.1" style="font-size:80%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.4.1" style="font-size:80%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.5.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.6.1" style="font-size:80%;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.7.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.8.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.9.1" style="font-size:80%;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.10.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.23.21.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.11.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.23.21.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.12.1" style="font-size:80%;">16.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.23.21.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.23.21.13.1" style="font-size:80%;">28.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.24.22">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.24.22.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.1.1" style="font-size:80%;">Pixtral-12B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.2.1" style="font-size:80%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.3" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.3.1" style="font-size:80%;background-color:#D9D9D9;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.4.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.5.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.6.1" style="font-size:80%;">21.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.7.1" style="font-size:80%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.8.1" style="font-size:80%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.9.1" style="font-size:80%;">21.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.10.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.24.22.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.11.1" style="font-size:80%;">3.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.24.22.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.12.1" style="font-size:80%;">37.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.24.22.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.24.22.13.1" style="font-size:80%;">31.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.25.23">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.25.23.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.1.1" style="font-size:80%;">LLaVA-OneVision-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.2" style="background-color:#D9D9D9;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.2.1" style="font-size:80%;background-color:#D9D9D9;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.3.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.4.1" style="font-size:80%;">21.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.5.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.6.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.7.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.8.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.9.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.10.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.25.23.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.11.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.25.23.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.12.1" style="font-size:80%;">22.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.25.23.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.25.23.13.1" style="font-size:80%;">33.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.26.24">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.26.24.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.1.1" style="font-size:80%;">EMU3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.2.1" style="font-size:80%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.3.1" style="font-size:80%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.4.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.5.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.6.1" style="font-size:80%;">17.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.7.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.8.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.9.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.10.1" style="font-size:80%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.26.24.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.11.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.26.24.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.12.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.26.24.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.26.24.13.1" style="font-size:80%;">26.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.27.25" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S4.T1.2.2.27.25.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.2.2.27.25.1.1" style="font-size:80%;background-color:#FFFFD9;">Baseline</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.28.26">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.28.26.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.1.1" style="font-size:80%;">Random Guessing</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.2.1" style="font-size:80%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.3.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.4.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.5.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.6.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.7.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.8.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.9.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.10.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.28.26.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.11.1" style="font-size:80%;">4.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.28.26.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.12.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.2.28.26.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.28.26.13.1" style="font-size:80%;">27.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T1.2.2.2.2" style="padding:1.2pt 3.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T1.2.2.2.2.1" style="font-size:80%;"> Random (</span><math alttext="p&lt;0.05" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m2.1"><semantics id="S4.T1.2.2.2.2.m2.1a"><mrow id="S4.T1.2.2.2.2.m2.1.1" xref="S4.T1.2.2.2.2.m2.1.1.cmml"><mi id="S4.T1.2.2.2.2.m2.1.1.2" mathsize="80%" xref="S4.T1.2.2.2.2.m2.1.1.2.cmml">p</mi><mo id="S4.T1.2.2.2.2.m2.1.1.1" mathsize="80%" xref="S4.T1.2.2.2.2.m2.1.1.1.cmml">&lt;</mo><mn id="S4.T1.2.2.2.2.m2.1.1.3" mathsize="80%" xref="S4.T1.2.2.2.2.m2.1.1.3.cmml">0.05</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m2.1b"><apply id="S4.T1.2.2.2.2.m2.1.1.cmml" xref="S4.T1.2.2.2.2.m2.1.1"><lt id="S4.T1.2.2.2.2.m2.1.1.1.cmml" xref="S4.T1.2.2.2.2.m2.1.1.1"></lt><ci id="S4.T1.2.2.2.2.m2.1.1.2.cmml" xref="S4.T1.2.2.2.2.m2.1.1.2">𝑝</ci><cn id="S4.T1.2.2.2.2.m2.1.1.3.cmml" type="float" xref="S4.T1.2.2.2.2.m2.1.1.3">0.05</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m2.1c">p&lt;0.05</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m2.1d">italic_p &lt; 0.05</annotation></semantics></math><span class="ltx_text" id="S4.T1.2.2.2.2.2" style="font-size:80%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.3.1" style="font-size:80%;">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.4.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.5.1" style="font-size:80%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.6.1" style="font-size:80%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.7.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.8.1" style="font-size:80%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.9.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.10.1" style="font-size:80%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.11.1" style="font-size:80%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.2.2.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.12.1" style="font-size:80%;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.13.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_b" id="S4.T1.2.2.2.14" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.14.1" style="font-size:80%;">35.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive evaluation of 18 multimodal large language models (MLLMs) on the LEGO-Puzzles benchmark.  It breaks down the performance of each model across various spatial reasoning tasks, categorized into spatial understanding, single-step reasoning, and multi-step reasoning.  The best-performing model for each task is highlighted in dark gray, while the best-performing open-source model for each task is highlighted in light gray. The top three overall performing models are further distinguished by dark green, medium green, and light green highlighting, respectively.  The table allows for a detailed comparison of the models' strengths and weaknesses in different aspects of spatial reasoning.
> <details>
> <summary>read the caption</summary>
> Table 1: Full Evaluation Results of 18 MLLMs on LEGO-Puzzles. Dark Gray indicates the best performance for each task among all models and Light Gray indicates the best result among open-source model. We also highlight the top three models based on their overall performance, using Dark Green, Medium Green, and Light Green, respectively.
> </details>





### In-depth insights


#### LEGO for MLLM
**LEGO construction serves as an innovative framework** for evaluating spatial reasoning in Multimodal Large Language Models (MLLMs). This approach leverages the inherent structure and sequential assembly process of LEGO models to create a comprehensive benchmark. By analyzing how MLLMs interpret and execute LEGO assembly instructions, researchers can assess their ability to understand spatial relationships, reason through multi-step processes, and generate accurate visual outputs. **LEGO-based tasks offer a balance of complexity and real-world relevance**, providing a more ecologically valid assessment compared to purely synthetic datasets. The step-by-step nature of LEGO instructions enables the creation of tasks that specifically target sequential reasoning, a crucial aspect often overlooked in existing benchmarks. **This methodology also facilitates the creation of diverse and scalable datasets**, as a single LEGO model can generate numerous unique evaluation questions. Overall, employing LEGO construction as a basis for MLLM evaluation represents a promising avenue for advancing the development of more capable and reliable AI systems in spatial understanding.

#### Multi-step Limits
While the provided text doesn't explicitly contain a section titled "Multi-step Limits," we can infer potential limitations concerning multi-step spatial reasoning in MLLMs based on the observed weaknesses. The main challenge lies in **compounding errors** through sequential steps, where each inference introduces potential deviations. This is exacerbated by the models' difficulty in maintaining coherent visual memory across multiple steps, unlike language-based memory in LLMs. **Rotation perception and relative spatial relationship understanding** also pose hurdles. The tasks become harder when several steps is involved in reasoning to achieve the final output. There exists a need for improving **spatially grounded visual-memory representations** and enhancing the ability to follow long chain of dependencies. Also **lack of training data** is a significant hurdle. The models also need to be better at following prompts to generate structured outputs.

#### Visual Richness
**Visual richness** plays a vital role in spatial reasoning tasks. Datasets with simple geometric shapes(e.g., CLEVR) simplify the challenges MLLMs face in real-world scenarios. **LEGO-Puzzles** improves **visual complexity and diversity**, using real-world images to challenge MLLMs' spatial understanding and sequential reasoning. High visual richness can expose limitations of MLLMs with the ability to discern subtle cues, handle occlusions, and understand the intricacies present in realistic settings. Datasets with rich visual content present complex spatial relationships that demand advanced reasoning capabilities, enhancing evaluation of models.

#### Image Generation
The paper evaluates the image generation capabilities of various MLLMs, focusing on tasks like **rotation and multi-view synthesis**, as well as **generating subsequent steps in LEGO assembly**. A key finding is that existing MLLMs struggle to maintain both appearance consistency and instruction adherence. Open-source models exhibit limitations in sequential visual transformations, while proprietary models like Gemini-2.0-Flash demonstrate some success in appearance fidelity but struggle with fine-grained reasoning. Further investigation is needed to improve spatial understanding and reasoning-aware image generation.

#### CoT's Diminishing
The research explores the limitations of the Chain-of-Thought (CoT) prompting technique in multi-step sequential reasoning tasks, particularly within LEGO-Puzzles. The findings indicate that while CoT can offer some initial benefits, its effectiveness diminishes as the complexity (number of steps, 'k') increases. Several factors contribute to this 'CoT's Diminishing' effect. **Firstly**, the compounding of errors across multiple reasoning steps leads to inconsistencies in final predictions. **Secondly**, MLLMs might lack a robust visual memory, hindering their ability to coherently track changes. **Thirdly**, some models fail to perform genuine step-by-step reasoning in their CoT responses. These findings underscore the need for alternative prompting strategies to improve multi-step sequential reasoning in MLLMs. Future research should focus on developing methods that mitigate error accumulation, enhance visual memory, and encourage genuine step-by-step reasoning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19990/x2.png)

> 🔼 Figure 2 presents example questions from the LEGO-Puzzles benchmark, categorized by task type.  The figure showcases the visual complexity and diversity of the questions, which range from basic spatial understanding (e.g., identifying the relative heights of LEGO pieces, determining adjacency, understanding rotations and viewpoints) to single-step sequential reasoning (e.g., determining the next assembly state given instructions, identifying required pieces, assessing rotation needs) and multi-step sequential reasoning (e.g., determining the correct order of steps, identifying incorrect intermediate states).  This visual representation helps illustrate the progression of task difficulty and the range of spatial reasoning skills assessed by the LEGO-Puzzles benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 2: Task examples of LEGO-Puzzles. From left to right, the columns represent tasks in Spatial Understanding, Single-Step Sequential Reasoning, and Multi-Step Sequential Reasoning. Note: The questions above are slightly simplified for clarity and brevity.
> </details>



![](https://arxiv.org/html/2503.19990/x3.png)

> 🔼 This figure illustrates the process of creating the LEGO-Puzzles dataset.  It starts with collecting diverse LEGO building instructions. These instructions are then rendered into images with consistent formatting.  Next, question-answer pairs are generated, combining human annotation with pre-defined templates.  Finally, a three-stage quality control process is implemented to ensure accuracy, consistency and reliability of the resulting dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data curation pipeline. Our pipeline first collects a diverse set of LEGO building instructions to render and extract LEGO images in a unified format. Next, we generate question-answer pairs by using a combination of human annotation and predefined question templates. Finally, we implement three quality control strategies to ensure the accuracy, consistency, and reliability of the data.
> </details>



![](https://arxiv.org/html/2503.19990/x4.png)

> 🔼 Figure 4 shows a template used in the LEGO-Puzzles benchmark for creating question-answer pairs.  It illustrates the structure of the template, which includes three parts: instructions explaining the task to the model (in this case, determining the correct assembly point of a LEGO piece), a question presenting a specific scenario with images of the current state, the next piece, and the state after installation, and finally the ground truth answer providing the correct choice from several options given.
> <details>
> <summary>read the caption</summary>
> Figure 4: Task-specific template. Our question-answer template includes instructions, questions, and answers. Here, we provide an example from the Position task for reference.
> </details>



![](https://arxiv.org/html/2503.19990/x5.png)

> 🔼 This heatmap visualizes the pairwise correlations between different tasks within the LEGO-Puzzles benchmark.  It shows how strongly the performance on one task is related to performance on another.  The correlations are calculated using three different methods: Spearman Rank Correlation Coefficient (SRCC), Pearson Linear Correlation Coefficient (PLCC), and R-squared (R²).  Stronger correlations (closer to 1) are represented by darker colors, indicating tasks that share underlying skills or cognitive processes. Weaker correlations (closer to 0) are shown in lighter colors, implying greater independence between the tasks. This analysis helps to understand the structure of the benchmark and ensures diversity among the tasks, preventing redundancy and bias in the overall evaluation of MLLM capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Task Similarity Heatmap. The heatmap illustrates the pairwise correlation between tasks in our benchmark, measured using SRCC, PLCC, and R² scores.
> </details>



![](https://arxiv.org/html/2503.19990/x6.png)

> 🔼 This figure showcases examples where large language models (LLMs) failed to correctly answer questions from the LEGO-Puzzles benchmark.  It highlights two specific task types: 'Height', which assesses the ability to determine the relative height of LEGO pieces, and 'Ordering', which tests the capacity to arrange steps in a LEGO assembly sequence.  The figure presents the original question, the correct answer (in blue), and the incorrect answer generated by the LLM (in red).  This visually demonstrates the challenges that LLMs face in spatial reasoning, particularly when handling 2D representations of 3D objects and understanding the order of sequential steps.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization of sample failure cases in Height and Ordering. The Ground Truth answer is marked in blue, while the MLLM’s answer is marked in red. Note: The questions above are slightly simplified for clarity and brevity.
> </details>



![](https://arxiv.org/html/2503.19990/x7.png)

> 🔼 This figure showcases the qualitative results of image generation tests performed on two specific tasks within the LEGO-Puzzles benchmark: Rotation* and Multiview*.  The Rotation* task evaluates the model's ability to generate an image of a LEGO object rotated by a specified angle compared to a reference image.  The Multiview* task assesses the model's capacity to produce an image of a LEGO object viewed from a different perspective than shown in a reference image.  The figure displays example images generated by various models, highlighting differences in their ability to both accurately depict the LEGO structure and correctly follow the instructions for generating the images. Note that the image questions shown in the caption are slightly simplified versions.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative image generation results for Rotation* and Multiview* tasks. Note: The questions above are slightly simplified for clarity and brevity.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.1" rowspan="2" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.1.1" style="font-size:80%;">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="4" id="S4.T2.2.1.1.1.2" style="background-color:#F2FFFF;padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.2.1" style="font-size:80%;background-color:#F2FFFF;">Spatial Understanding</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="4" id="S4.T2.2.1.1.1.3" style="background-color:#FFF2E6;padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.3.1" style="font-size:80%;background-color:#FFF2E6;">Single-Step Reasoning</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="3" id="S4.T2.2.1.1.1.4" style="background-color:#F5ECE2;padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.4.1" style="font-size:80%;background-color:#F5ECE2;">Multi-Step Reasoning</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.5" rowspan="2" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.5.1" style="font-size:80%;">Overall</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.1.1" style="font-size:80%;">Height</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.2.1" style="font-size:80%;">Adjacency</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.3.1" style="font-size:80%;">Rotation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.4.1" style="font-size:80%;">Multiview</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.5.1" style="font-size:80%;">Next-Step</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.6.1" style="font-size:80%;">Dependency</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.7.1" style="font-size:80%;">Rotation Stat.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.8.1" style="font-size:80%;">Position</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.9.1" style="font-size:80%;">Backwards</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.10.1" style="font-size:80%;">Ordering</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T2.2.1.2.2.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.2.2.11.1" style="font-size:80%;">Outlier</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3.3" style="background-color:#FFFFD9;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" colspan="13" id="S4.T2.2.1.3.3.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.2.1.3.3.1.1" style="font-size:80%;background-color:#FFFFD9;">LEGO-Puzzles-Lite</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.4.1">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.4.1.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.1.1" style="font-size:80%;">Human proficiency</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.2.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.3.1" style="font-size:80%;">95.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.4.1" style="font-size:80%;">95.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.5.1" style="font-size:80%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.6.1" style="font-size:80%;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.7.1" style="font-size:80%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.8.1" style="font-size:80%;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.9.1" style="font-size:80%;">95.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.10.1" style="font-size:80%;">95.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.11.1" style="font-size:80%;">95.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.4.1.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.12.1" style="font-size:80%;">95.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.1.4.1.13" style="background-color:#00FF00;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.4.1.13.1" style="font-size:80%;background-color:#00FF00;">93.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5.2">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.5.2.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.1.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.2.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.3.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.4.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.5.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.6.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.7.1" style="font-size:80%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.8.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.9.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.10.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.11.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.5.2.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.12.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.1.5.2.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.5.2.13.1" style="font-size:80%;">54.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.6.3">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.6.3.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.1.1" style="font-size:80%;">Gemini-2.0-Flash</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.2.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.3.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.4.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.5.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.6.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.7.1" style="font-size:80%;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.8.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.9.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.10.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.11.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.6.3.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.12.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.1.6.3.13" style="background-color:#E6FFE6;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.6.3.13.1" style="font-size:80%;background-color:#E6FFE6;">55.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.7.4">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.7.4.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.2.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.3.1" style="font-size:80%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.4.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.5.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.6.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.7.1" style="font-size:80%;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.8.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.9.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.10.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.11.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.7.4.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.12.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.1.7.4.13" style="background-color:#B3FFB3;padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.7.4.13.1" style="font-size:80%;background-color:#B3FFB3;">59.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.8.5">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.8.5.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.1.1" style="font-size:80%;">InternVL2.5-78B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.2.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.3.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.4.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.5.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.6.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.7.1" style="font-size:80%;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.8.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.9.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.10.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.11.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.8.5.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.12.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.1.8.5.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.8.5.13.1" style="font-size:80%;">45.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.9.6">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.9.6.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.2.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.3.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.4.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.5.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.6.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.7.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.8.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.9.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.10.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.11.1" style="font-size:80%;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.9.6.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.12.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.1.9.6.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.9.6.13.1" style="font-size:80%;">44.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.10.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.2.1.10.7.1" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.1.1" style="font-size:80%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.2" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.2.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.3" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.3.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.4" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.4.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.5" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.5.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.6" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.6.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.7" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.7.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.8" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.8.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.9" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.9.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.10" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.10.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.10.7.11" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.11.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.1.10.7.12" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.12.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.2.1.10.7.13" style="padding:1.2pt 3.0pt;"><span class="ltx_text" id="S4.T2.2.1.10.7.13.1" style="font-size:80%;">48.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of top-performing large multimodal language models (MLLMs) and human experts on a subset of the LEGO-Puzzles benchmark (LEGO-Puzzles-Lite).  It shows the accuracy of each model on various subtasks within the three main categories of LEGO-Puzzles: Spatial Understanding, Single-Step Sequential Reasoning, and Multi-Step Sequential Reasoning.  The best performance in each task and the overall top three performing models are highlighted for easy comparison.  The results underscore the significant performance gap between current MLLMs and human-level spatial reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparing Top-Performing MLLMs with Human Proficiency on LEGO-Puzzles-Lite. The best results are marked in bold. The top three overall performances are highlighted in Dark Green, Medium Green, and Light Green, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.2.1.1.1.1" rowspan="2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.1.1" style="font-size:80%;">Task \MLLM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.2.1.1.1.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.2.1" style="font-size:80%;">Gemini-2.0-Flash</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.2.1.1.1.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.3.1" style="font-size:80%;">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.2.1.1.1.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.4.1" style="font-size:80%;">Emu2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.2.1.1.1.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.5.1" style="font-size:80%;">GILL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.2.1.1.1.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.6.1" style="font-size:80%;">Anole</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.1.2.2.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.1.1" style="font-size:80%;">App</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.2.1.2.2.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.2.1" style="font-size:80%;">IF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.1.2.2.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.3.1" style="font-size:80%;">App</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.2.1.2.2.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.4.1" style="font-size:80%;">IF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.1.2.2.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.5.1" style="font-size:80%;">App</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.2.1.2.2.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.6.1" style="font-size:80%;">IF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.1.2.2.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.7.1" style="font-size:80%;">App</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.2.1.2.2.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.8.1" style="font-size:80%;">IF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.1.2.2.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.9.1" style="font-size:80%;">App</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.1.2.2.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.2.2.10.1" style="font-size:80%;">IF</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.2.1.3.1.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.1.1" style="font-size:80%;">Rotation*</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.2.1" style="font-size:80%;">2.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.3.1.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.3.1" style="font-size:80%;">1.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.4.1" style="font-size:80%;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.3.1.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.5.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.6.1" style="font-size:80%;">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.3.1.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.7.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.8.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.3.1.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.9.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.10.1" style="font-size:80%;">0.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.11.1" style="font-size:80%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.4.2.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.1.1" style="font-size:80%;">Multiview*</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.2.1" style="font-size:80%;">1.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.4.2.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.3.1" style="font-size:80%;">1.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.4.1" style="font-size:80%;">2.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.4.2.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.5.1" style="font-size:80%;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.6.1" style="font-size:80%;">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.4.2.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.7.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.8.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.4.2.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.9.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.10.1" style="font-size:80%;">0.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.11.1" style="font-size:80%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.5.3.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.1.1" style="font-size:80%;">Position*</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.2.1" style="font-size:80%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.5.3.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.3.1" style="font-size:80%;">1.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.4.1" style="font-size:80%;">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.5.3.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.5.1" style="font-size:80%;">1.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.6.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.5.3.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.7.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.8.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.5.3.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.9.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.10.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.11.1" style="font-size:80%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.6.4.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.1.1" style="font-size:80%;">Dependency*</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.2.1" style="font-size:80%;">1.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.6.4.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.3.1" style="font-size:80%;">1.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.4.1" style="font-size:80%;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.6.4.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.5.1" style="font-size:80%;">0.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.6.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.6.4.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.7.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.8.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.6.4.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.9.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.10.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.11.1" style="font-size:80%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.7.5.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.1.1" style="font-size:80%;">Next-Step*</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.5.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.2.1" style="font-size:80%;">1.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.7.5.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.3.1" style="font-size:80%;">0.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.5.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.4.1" style="font-size:80%;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.7.5.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.5.1" style="font-size:80%;">0.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.5.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.6.1" style="font-size:80%;">2.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.7.5.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.7.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.5.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.8.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.7.5.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.9.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.5.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.10.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.5.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.11.1" style="font-size:80%;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S4.T3.2.1.8.6.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.1.1" style="font-size:80%;">Overall</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.8.6.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.2.1" style="font-size:80%;">2.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T3.2.1.8.6.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.3.1" style="font-size:80%;">1.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.8.6.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.4.1" style="font-size:80%;">1.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T3.2.1.8.6.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.5.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.8.6.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.6.1" style="font-size:80%;">1.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T3.2.1.8.6.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.7.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.8.6.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.8.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T3.2.1.8.6.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.9.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.8.6.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.10.1" style="font-size:80%;">0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.8.6.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.11.1" style="font-size:80%;">0.00</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a human evaluation of image generation capabilities for five different large language models (LLMs): Gemini-2.0-Flash, GPT-40, Emu2, GILL, and Anole.  The evaluation focuses on two aspects: the generated image's visual appearance and how well the image follows the given instructions.  A 0-3 scoring scale is used for both 'Appearance' and 'Instruction Following', allowing for a nuanced assessment of the models' image generation performance across various tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation on Generation. We conduct human-based evaluation to assess the “Appearance” (App) and “Instruction Following” (IF) scores of Gemini-2.0-Flash, GPT-4o, Emu2, GILL, and Anole, using a scoring scale from 0 to 3 for both dimensions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.5.5.6.1.1" rowspan="2" style="padding:1.2pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1.1.1" style="font-size:80%;">Setting</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T4.5.5.6.1.2" style="padding:1.2pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1.2.1" style="font-size:80%;">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T4.5.5.6.1.3" style="padding:1.2pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1.3.1" style="font-size:80%;">Gemini-2.0-Flash</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T4.5.5.6.1.4" style="padding:1.2pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1.4.1" style="font-size:80%;">Qwen-2.5-72B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T4.5.5.6.1.5" style="padding:1.2pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1.5.1" style="font-size:80%;">Internvl-2.5-78B</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.5.7.2.1" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.7.2.1.1" style="font-size:80%;">w/o CoT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.5.5.7.2.2" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.7.2.2.1" style="font-size:80%;">w. CoT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.5.7.2.3" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.7.2.3.1" style="font-size:80%;">w/o CoT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.5.5.7.2.4" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.7.2.4.1" style="font-size:80%;">w. CoT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.5.7.2.5" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.7.2.5.1" style="font-size:80%;">w/o CoT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.5.5.7.2.6" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.7.2.6.1" style="font-size:80%;">w. CoT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.5.7.2.7" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.7.2.7.1" style="font-size:80%;">w/o CoT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.5.7.2.8" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.7.2.8.1" style="font-size:80%;">w. CoT</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.1.1" style="padding:1.2pt 2.5pt;"><math alttext="k=1" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mrow id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T4.1.1.1.1.m1.1.1.2.cmml">k</mi><mo id="S4.T4.1.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.T4.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T4.1.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.T4.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><eq id="S4.T4.1.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1.1"></eq><ci id="S4.T4.1.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2">𝑘</ci><cn id="S4.T4.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">k=1</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">italic_k = 1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.2" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.2.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1.3" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="font-size:80%;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.4" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="font-size:80%;">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1.5" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.5.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.6" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.6.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1.7" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.7.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.8" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.8.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.9" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.1.1.1.9.1" style="font-size:80%;">55.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.2.2.2.1" style="padding:1.2pt 2.5pt;"><math alttext="k=2" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><mrow id="S4.T4.2.2.2.1.m1.1.1" xref="S4.T4.2.2.2.1.m1.1.1.cmml"><mi id="S4.T4.2.2.2.1.m1.1.1.2" mathsize="80%" xref="S4.T4.2.2.2.1.m1.1.1.2.cmml">k</mi><mo id="S4.T4.2.2.2.1.m1.1.1.1" mathsize="80%" xref="S4.T4.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.T4.2.2.2.1.m1.1.1.3" mathsize="80%" xref="S4.T4.2.2.2.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><apply id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"><eq id="S4.T4.2.2.2.1.m1.1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1.1"></eq><ci id="S4.T4.2.2.2.1.m1.1.1.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2">𝑘</ci><cn id="S4.T4.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.2.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">k=2</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">italic_k = 2</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.2" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.2.2.2.2.1" style="font-size:80%;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.2.2.3" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.2.2.2.3.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.4" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.2.2.2.4.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.2.2.5" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.2.2.2.5.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.6" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.2.2.2.6.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.2.2.7" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.2.2.2.7.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.8" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.2.2.2.8.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.9" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.2.2.2.9.1" style="font-size:80%;">20.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.3.1" style="padding:1.2pt 2.5pt;"><math alttext="k=3" class="ltx_Math" display="inline" id="S4.T4.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.1.m1.1a"><mrow id="S4.T4.3.3.3.1.m1.1.1" xref="S4.T4.3.3.3.1.m1.1.1.cmml"><mi id="S4.T4.3.3.3.1.m1.1.1.2" mathsize="80%" xref="S4.T4.3.3.3.1.m1.1.1.2.cmml">k</mi><mo id="S4.T4.3.3.3.1.m1.1.1.1" mathsize="80%" xref="S4.T4.3.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S4.T4.3.3.3.1.m1.1.1.3" mathsize="80%" xref="S4.T4.3.3.3.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.1.m1.1b"><apply id="S4.T4.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1"><eq id="S4.T4.3.3.3.1.m1.1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1.1"></eq><ci id="S4.T4.3.3.3.1.m1.1.1.2.cmml" xref="S4.T4.3.3.3.1.m1.1.1.2">𝑘</ci><cn id="S4.T4.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.3.3.3.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.1.m1.1c">k=3</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.1.m1.1d">italic_k = 3</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.2" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.3.3.3.2.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.3.3" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.3.3.3.3.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.4" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.3.3.3.4.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.3.5" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.3.3.3.5.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.6" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.3.3.3.6.1" style="font-size:80%;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.3.7" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.3.3.3.7.1" style="font-size:80%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.8" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.3.3.3.8.1" style="font-size:80%;">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.9" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.3.3.3.9.1" style="font-size:80%;">20.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.4.4.4.1" style="padding:1.2pt 2.5pt;"><math alttext="k=4" class="ltx_Math" display="inline" id="S4.T4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.1.m1.1a"><mrow id="S4.T4.4.4.4.1.m1.1.1" xref="S4.T4.4.4.4.1.m1.1.1.cmml"><mi id="S4.T4.4.4.4.1.m1.1.1.2" mathsize="80%" xref="S4.T4.4.4.4.1.m1.1.1.2.cmml">k</mi><mo id="S4.T4.4.4.4.1.m1.1.1.1" mathsize="80%" xref="S4.T4.4.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S4.T4.4.4.4.1.m1.1.1.3" mathsize="80%" xref="S4.T4.4.4.4.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.1.m1.1b"><apply id="S4.T4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1"><eq id="S4.T4.4.4.4.1.m1.1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1.1"></eq><ci id="S4.T4.4.4.4.1.m1.1.1.2.cmml" xref="S4.T4.4.4.4.1.m1.1.1.2">𝑘</ci><cn id="S4.T4.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.4.4.4.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.1.m1.1c">k=4</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.1.m1.1d">italic_k = 4</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.2" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.4.4.4.2.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.3" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.4.4.4.3.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.4" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.4.4.4.4.1" style="font-size:80%;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.5" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.4.4.4.5.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.6" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.4.4.4.6.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.7" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.4.4.4.7.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.8" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.4.4.4.8.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.9" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.4.4.4.9.1" style="font-size:80%;">5.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T4.5.5.5.1" style="padding:1.2pt 2.5pt;"><math alttext="k=5" class="ltx_Math" display="inline" id="S4.T4.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.1.m1.1a"><mrow id="S4.T4.5.5.5.1.m1.1.1" xref="S4.T4.5.5.5.1.m1.1.1.cmml"><mi id="S4.T4.5.5.5.1.m1.1.1.2" mathsize="80%" xref="S4.T4.5.5.5.1.m1.1.1.2.cmml">k</mi><mo id="S4.T4.5.5.5.1.m1.1.1.1" mathsize="80%" xref="S4.T4.5.5.5.1.m1.1.1.1.cmml">=</mo><mn id="S4.T4.5.5.5.1.m1.1.1.3" mathsize="80%" xref="S4.T4.5.5.5.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.1.m1.1b"><apply id="S4.T4.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1"><eq id="S4.T4.5.5.5.1.m1.1.1.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1.1"></eq><ci id="S4.T4.5.5.5.1.m1.1.1.2.cmml" xref="S4.T4.5.5.5.1.m1.1.1.2">𝑘</ci><cn id="S4.T4.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.5.5.5.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.1.m1.1c">k=5</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.1.m1.1d">italic_k = 5</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.5.5.2" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.5.2.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.5.5.5.3" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.5.3.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.5.5.4" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.5.4.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.5.5.5.5" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.5.5.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.5.5.6" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.5.6.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.5.5.5.7" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.5.7.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.5.5.8" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.5.8.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.5.5.9" style="padding:1.2pt 2.5pt;"><span class="ltx_text" id="S4.T4.5.5.5.9.1" style="font-size:80%;">10.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating various LLMs on the Next-k-Step task.  The Next-k-Step task is a sequential reasoning task that involves determining the correct LEGO object configuration after sequentially adding k LEGO pieces. The experiment was conducted with and without the Chain-of-Thought (CoT) prompting technique to analyze its effect on the models' performance.  The table shows the accuracy of each model for different values of k (number of steps) and with/without CoT, providing insights into the models' multi-step sequential reasoning capabilities and the effectiveness of CoT prompting in improving those capabilities.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation on Next-kkkitalic_k-Step. k𝑘kitalic_k represents the number of steps, and CoT refers to adding a “Think step by step before answering” instruction in QA pairs, similar to those in LLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T5.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.1.1">Task</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.2.1">PCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.3.1">P-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.2.2.1.1">Height</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.1.2">0.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.1.3">0.00723</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T5.2.3.2.1">Adjacency</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.3.2.2">0.98</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.3.2.3">0.00046</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Pearson Correlation Coefficients (PCC) and associated p-values, assessing the correlation between the 'Height' and 'Adjacency' tasks in the LEGO-Puzzles benchmark.  The PCC measures the strength and direction of the linear relationship between the performance scores on these two tasks, while the p-value indicates the statistical significance of this correlation.  A high PCC near 1 (or -1 for negative correlation) and a small p-value (typically below 0.05) suggest a strong and statistically significant relationship between the tasks.
> <details>
> <summary>read the caption</summary>
> Table 5: Pearson Correlation Coefficients (PCC) and P-values for Height and Adjacency Tasks
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19990/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19990/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}