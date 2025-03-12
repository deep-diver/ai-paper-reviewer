---
title: "EgoLife: Towards Egocentric Life Assistant"
summary: "EgoLife: Ultra-long egocentric dataset & benchmark enabling AI assistants to understand and enhance daily life. Datasets and models released!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Human-AI Interaction", "🏢 NTU S-Lab",]
showSummary: true
date: 2025-03-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.03803 {{< /keyword >}}
{{< keyword icon="writer" >}} Jingkang Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.03803" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.03803" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.03803/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current egocentric vision systems and datasets often fall short in understanding ultra-long-term behavior patterns and complex social dynamics due to limited recording durations and monographic perspectives. **The EgoLife project bridges this gap by presenting a comprehensive data collection study** where six participants lived together for one week, continuously recording their daily activities using AI glasses, along with synchronized third-person video references. This results in the EgoLife Dataset, a 300-hour dataset with intensive annotation.



**To showcase the dataset's potential, the project introduces EgoLifeQA,** a suite of long-context, life-oriented question-answering tasks designed to provide meaningful assistance in daily life. Additionally, it presents EgoBulter, an integrated system comprising EgoGPT and EgoRAG, to address the technical challenges of developing robust visual-audio models and facilitating long-context question answering. Experimental studies verify EgoBulter's mechanisms and guide future improvements.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} EgoLife dataset offers unprecedented long-term egocentric data for studying daily activities and social interactions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} EgoLifeQA benchmark introduces life-oriented question-answering tasks to advance egocentric AI. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} EgoButler, with EgoGPT and EgoRAG, tackles key challenges in egocentric AI, demonstrating effective omni-modal understanding and long-context reasoning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces EgoLife, a 300-hour egocentric dataset with multimodal annotations, addressing gaps in long-term, interpersonal AI assistance. It offers EgoLifeQA, a benchmark for life-oriented QA tasks. This work can stimulate further research in egocentric AI assistants and provide meaningful assistance in daily life. **The dataset, models, and benchmarks are released to encourage innovation in the field and enable long-context understanding.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.03803/x2.png)

> 🔼 The EgoLife project involves six participants living together for a week, documenting their daily lives using Meta Aria glasses to capture egocentric video and sensor data.  Fifteen additional cameras and two mmWave devices simultaneously record third-person views, creating a rich multimodal dataset.  The data supports development of advanced egocentric AI assistants and introduces new research tasks focused on long-term life assistance.
> <details>
> <summary>read the caption</summary>
> Figure 1:  The Overview of EgoLife Project. The EgoLife project features six participants living together for a week to prepare an Earth Day celebration. Each participant wears Meta Aria glasses [1], recording approximately 8 hours of egocentric video and signals daily. In addition, 15 cameras and 2 mmWave devices provide synchronized third-person perspective data (detailed in Figure 2). These comprehensive annotations enable the development of state-of-the-art multimodal egocentric AI assistants and introduce novel tasks to advance long-term egocentric life assistance, as illustrated in the EgoLife task board.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.27.19">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.27.19.20.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.1.1" style="font-size:207%;">Benchmark</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.2.1" style="font-size:207%;">Domain</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.3.1" style="font-size:207%;">Modality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.4.1" style="font-size:207%;">#Captions</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.5.1" style="font-size:207%;">Size (hrs)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.6.1" style="font-size:207%;">#Clips</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.7.1" style="font-size:207%;">Dur./Clip</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.8.1" style="font-size:207%;">Multiview</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.27.19.20.1.9" style="padding-left:15.0pt;padding-right:15.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.27.19.20.1.9.1">
<tr class="ltx_tr" id="S2.T1.27.19.20.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.27.19.20.1.9.1.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.9.1.1.1.1" style="font-size:207%;">Interpersonal</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.27.19.20.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.27.19.20.1.9.1.2.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.9.1.2.1.1" style="font-size:207%;">Dynamics</span></td>
</tr>
</table>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.9.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.9.1.1.2" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S2.T1.9.1.1.2.1" style="font-size:207%;">EPIC-KITCHENS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.9.1.1.2.2.1" style="font-size:207%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S2.T1.9.1.1.2.3.2" style="font-size:207%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.9.1.1.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.9.1.1.3.1" style="font-size:207%;">Kitchen</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.9.1.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="46" id="S2.T1.9.1.1.1.g1" src="x8.png" width="47"/></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.9.1.1.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.9.1.1.4.1" style="font-size:207%;">20K+</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.9.1.1.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.9.1.1.5.1" style="font-size:207%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.9.1.1.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.9.1.1.6.1" style="font-size:207%;">700</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.9.1.1.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.9.1.1.7.1" style="font-size:207%;">8.5 min</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.9.1.1.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.9.1.1.8.1" style="font-size:207%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.9.1.1.9" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.9.1.1.9.1" style="font-size:207%;color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.13.5.5">
<td class="ltx_td ltx_align_left" id="S2.T1.13.5.5.5" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S2.T1.13.5.5.5.1" style="font-size:207%;">Ego4D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.13.5.5.5.2.1" style="font-size:207%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S2.T1.13.5.5.5.3.2" style="font-size:207%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.13.5.5.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.13.5.5.6.1" style="font-size:207%;">Daily Activities</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.13.5.5.4" style="padding-left:15.0pt;padding-right:15.0pt;">
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="46" id="S2.T1.10.2.2.1.g1" src="x9.png" width="47"/><span class="ltx_text" id="S2.T1.13.5.5.4.1" style="font-size:207%;"> </span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.11.3.3.2.g2" src="x10.png" width="47"/><span class="ltx_text" id="S2.T1.13.5.5.4.2" style="font-size:207%;">
</span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.12.4.4.3.g3" src="x11.png" width="47"/><span class="ltx_text" id="S2.T1.13.5.5.4.3" style="font-size:207%;">
</span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="38" id="S2.T1.13.5.5.4.g4" src="x12.png" width="38"/>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.13.5.5.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.13.5.5.7.1" style="font-size:207%;">3.85M</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.13.5.5.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.13.5.5.8.1" style="font-size:207%;">3,670</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.13.5.5.9" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.13.5.5.9.1" style="font-size:207%;">9,645</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.13.5.5.10" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.13.5.5.10.1" style="font-size:207%;">22.8 min</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.13.5.5.11" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.13.5.5.11.1" style="font-size:207%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.13.5.5.12" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.13.5.5.12.1" style="font-size:207%;color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.17.9.9">
<td class="ltx_td ltx_align_left" id="S2.T1.17.9.9.5" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S2.T1.17.9.9.5.1" style="font-size:207%;">EgoExo4D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.17.9.9.5.2.1" style="font-size:207%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S2.T1.17.9.9.5.3.2" style="font-size:207%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.17.9.9.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.17.9.9.6.1" style="font-size:207%;">Skilled Activities</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.17.9.9.4" style="padding-left:15.0pt;padding-right:15.0pt;">
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="46" id="S2.T1.14.6.6.1.g1" src="x13.png" width="47"/><span class="ltx_text" id="S2.T1.17.9.9.4.1" style="font-size:207%;"> </span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.15.7.7.2.g2" src="x14.png" width="47"/><span class="ltx_text" id="S2.T1.17.9.9.4.2" style="font-size:207%;">
</span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.16.8.8.3.g3" src="x15.png" width="47"/><span class="ltx_text" id="S2.T1.17.9.9.4.3" style="font-size:207%;">
</span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="38" id="S2.T1.17.9.9.4.g4" src="x12.png" width="38"/>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.17.9.9.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.17.9.9.7.1" style="font-size:207%;">500K+</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.17.9.9.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.17.9.9.8.1" style="font-size:207%;">1,286</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.17.9.9.9" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.17.9.9.9.1" style="font-size:207%;">5,035</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.17.9.9.10" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.17.9.9.10.1" style="font-size:207%;">1 to 42 min</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.17.9.9.11" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.17.9.9.11.1" style="font-size:207%;color:#008080;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.17.9.9.12" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.17.9.9.12.1" style="font-size:207%;color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.20.12.12">
<td class="ltx_td ltx_align_left" id="S2.T1.20.12.12.4" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S2.T1.20.12.12.4.1" style="font-size:207%;">EgoExoLearn </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.20.12.12.4.2.1" style="font-size:207%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S2.T1.20.12.12.4.3.2" style="font-size:207%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.20.12.12.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.20.12.12.5.1" style="font-size:207%;">Task Execution</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.20.12.12.3" style="padding-left:15.0pt;padding-right:15.0pt;">
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="46" id="S2.T1.18.10.10.1.g1" src="x16.png" width="47"/><span class="ltx_text" id="S2.T1.20.12.12.3.1" style="font-size:207%;"> </span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.19.11.11.2.g2" src="x17.png" width="47"/><span class="ltx_text" id="S2.T1.20.12.12.3.2" style="font-size:207%;">
</span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.20.12.12.3.g3" src="x18.png" width="47"/>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.12.12.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.20.12.12.6.1" style="font-size:207%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.12.12.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.20.12.12.7.1" style="font-size:207%;">120</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.12.12.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.20.12.12.8.1" style="font-size:207%;">432</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.12.12.9" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.20.12.12.9.1" style="font-size:207%;">13.4 min</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.20.12.12.10" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.20.12.12.10.1" style="font-size:207%;color:#008080;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.20.12.12.11" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.20.12.12.11.1" style="font-size:207%;color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.23.15.15">
<td class="ltx_td ltx_align_left" id="S2.T1.23.15.15.4" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S2.T1.23.15.15.4.1" style="font-size:207%;">EgoPet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T1.23.15.15.4.2.1" style="font-size:207%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S2.T1.23.15.15.4.3.2" style="font-size:207%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.23.15.15.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.23.15.15.5.1" style="font-size:207%;">Animal Actions</span></td>
<td class="ltx_td ltx_align_left" id="S2.T1.23.15.15.3" style="padding-left:15.0pt;padding-right:15.0pt;">
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="46" id="S2.T1.21.13.13.1.g1" src="x19.png" width="47"/><span class="ltx_text" id="S2.T1.23.15.15.3.1" style="font-size:207%;"> </span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.22.14.14.2.g2" src="x20.png" width="47"/><span class="ltx_text" id="S2.T1.23.15.15.3.2" style="font-size:207%;">
</span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.23.15.15.3.g3" src="x21.png" width="47"/>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.23.15.15.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.23.15.15.6.1" style="font-size:207%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.23.15.15.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.23.15.15.7.1" style="font-size:207%;">84</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.23.15.15.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.23.15.15.8.1" style="font-size:207%;">6,646</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.23.15.15.9" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.23.15.15.9.1" style="font-size:207%;">45.5 sec</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.23.15.15.10" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.23.15.15.10.1" style="font-size:207%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.23.15.15.11" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.23.15.15.11.1" style="font-size:207%;color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.27.19.19">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.19.5.1" style="font-size:207%;">EgoLife</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.27.19.19.6.1" style="font-size:207%;">Daily Life</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.4" style="padding-left:15.0pt;padding-right:15.0pt;">
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="46" id="S2.T1.24.16.16.1.g1" src="x22.png" width="47"/><span class="ltx_text" id="S2.T1.27.19.19.4.1" style="font-size:207%;"> </span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.25.17.17.2.g2" src="x23.png" width="47"/><span class="ltx_text" id="S2.T1.27.19.19.4.2" style="font-size:207%;">
</span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="47" id="S2.T1.26.18.18.3.g3" src="x24.png" width="47"/><span class="ltx_text" id="S2.T1.27.19.19.4.3" style="font-size:207%;">
</span><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="38" id="S2.T1.27.19.19.4.g4" src="x12.png" width="38"/>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.27.19.19.7.1" style="font-size:207%;">400K+</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.27.19.19.8.1" style="font-size:207%;">266</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.9" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.27.19.19.9.1" style="font-size:207%;">6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.10" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.27.19.19.10.1" style="font-size:207%;">44.3 h</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.11" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.27.19.19.11.1" style="font-size:207%;color:#008080;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.27.19.19.12" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S2.T1.27.19.19.12.1" style="font-size:207%;color:#008080;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a comparative overview of several egocentric datasets, highlighting their key characteristics.  It lists each dataset's domain (e.g., kitchen activities, daily life), the type of data modalities included (video, gaze, IMU, 3D scans), the total duration of recorded footage, the number of video clips, the average duration of each clip, and whether the dataset includes multi-view perspectives and interpersonal interactions.  The table emphasizes that the EgoLife dataset is unique due to its significantly longer egocentric video recordings and the rich inclusion of interpersonal dynamics.
> <details>
> <summary>read the caption</summary>
> Table 1: Related Work for EgoLife Dataset - Overview of Egocentric Datasets. For Modality,  denotes video,  denotes gaze,  denotes IMU,  denotes 3D scans. The EgoLife dataset stands out for its ultra-long egocentric footage and rich interpersonal interactions.
> </details>





### In-depth insights


#### EgoLife dataset
The EgoLife dataset is **a new resource** aimed at advancing research in egocentric AI. It addresses limitations in existing datasets like short recording durations and monographic perspectives by providing **300 hours of egocentric, multimodal, and multiview data**. Collected from six participants in a fully instrumented living environment, the dataset captures rich interpersonal dynamics and extended activities relevant to daily life. The data includes synchronized third-person perspectives, offering an unparalleled opportunity to study social interactions and long-term behavior patterns. Key features are the intensive annotations, the detailed collection of multi-modal data and its **ultra-long duration**. Through its multimodal and multi-view perspective, the EgoLife dataset seeks to stimulate research in egocentric AI assistants by providing **a new data collection strategy and comprehensive dataset structure**.

#### EgoButler system
The EgoButler system tackles complex tasks posed by EgoLifeQA, comprising EgoGPT and EgoRAG. **EgoGPT handles clip-level omni-modal understanding through continuous video captioning using visual and audio inputs, providing context for EgoRAG**. It also aids question-answering using retrieved clues. To align with egocentric video and incorporate audio understanding, EgoIT-99K, a dataset with QA pairs from video annotations, is introduced to fine-tune EgoGPT on LLaVA-OneVision. An audio branch, like Ola, is developed, encoding audio with Whisper Large v3 and training an audio projection module on LibriSpeech. **EgoRAG addresses long-horizon, long-context scenarios, enhancing memory and query capabilities for personalized comprehension. It employs a two-stage approach: memory bank construction with video clip captions and structured storage, and content retrieval and response generation using a relevance-based scoring function and language models like EgoGPT or GPT-40**. Integration of EgoGPT and EgoRAG combines efficient video interpretation with long-context memory, enabling accurate, context-aware responses, and personalized egocentric data gathering. 

#### Egocentric future
The concept of an 'Egocentric Future' paints a picture where AI is deeply intertwined with our personal lives through wearable devices like smart glasses. **Personalized assistance** becomes paramount, with AI anticipating needs based on habits and social dynamics. **Data privacy** and ethical considerations are vital, ensuring user autonomy and trust. Imagine AI companions enhancing daily efficiency and offering context-aware support. The potential for revolutionizing education, healthcare, and personal organization is immense, but requires thoughtful development focused on safety and inclusivity. Navigating challenges of long-term video understanding and complex multimodal data are key to realizing the full potential of an egocentric future and building empathetic AI.

#### Multimodal AI
**Multimodal AI** is the capability of AI models to process and understand data from multiple modalities such as video, audio, text, and sensor data. **EgoLife** highlights the significance of robust multimodal AI, **emphasizing the integration of visual and audio data** for nuanced understanding. This project presents data and methodologies to propel research in this field, particularly for **long-term egocentric perception**.

#### Long-term assist
While the term 'Long-term Assist' isn't directly used, the paper's core revolves around it.  **EgoLife pioneers prolonged egocentric data collection**, a leap from existing datasets' limited durations. This unlocks potential for AI assistants to learn user habits, predict needs, and offer personalized support over extended periods.  Key challenges include developing robust models that understand nuanced audio-visual cues in egocentric data and handling the complexities of long-context question answering. **EgoButler, with its EgoGPT and EgoRAG components, represents a significant stride toward a practical long-term life assistant**. The dataset's richness in interpersonal dynamics also lays the groundwork for AI to assist in social interactions, fostering a more empathetic and supportive user experience, key for any 'Long-term assist' system.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.03803/x25.png)

> 🔼 This 3D model of the EgoLife house shows the placement of 15 standard cameras and two mmWave radar devices within the house.  The cameras are spread throughout the common areas to capture third-person perspectives of participant activities. The mmWave radar devices, highlighted in red, are located on the second floor for additional motion capture data. Color-coded lines represent 10-minute movement tracks for each participant, indicating their movements within the space during the study.
> <details>
> <summary>read the caption</summary>
> Figure 2: 3D reconstruction of the shared house using Aria Multi-MPS [1], showcasing the locations of 15 Exo cameras in the common area and 2 mmWave devices (highlighted in red) on the second floor. Color-coded 10-minute participant traces are also displayed.
> </details>



![](https://arxiv.org/html/2503.03803/x26.png)

> 🔼 This figure presents a visual overview of the activities undertaken by six participants over a week-long period within the EgoLife project.  Each horizontal band represents a single participant's activities, and the entire timeline spans seven days.  The timeline is divided into 20-minute intervals, with each interval color-coded and labeled with an icon to represent the type of activity (e.g., social, housekeeping, cooking, etc.).  A legend provides a complete list of the 14 activity categories used, along with the total number of times each activity occurred throughout the week. Notably, the activity categorization was automatically determined using GPT-4, which analyzed both the audio and video data associated with each 20-minute interval.
> <details>
> <summary>read the caption</summary>
> Figure 3: The Activity Timeline of the EgoLife Dataset. It visualizes the activity timeline of six participants over one week. Each block represents a 20-minute interval, color-coded and marked with icons for different activities. The legend shows 14 activity categories with their total occurrence counts. The categorization is automatically performed using GPT-4o on visual-audio captions with timestamps.
> </details>



![](https://arxiv.org/html/2503.03803/x27.png)

> 🔼 The figure illustrates the data processing pipeline for the EgoLife project.  It begins with the synchronization of data streams from Meta Aria glasses and GoPro cameras using the EgoSync codebase.  This synchronized data (video, audio, and IMU) then undergoes privacy protection via the EgoBlur module.  Next, the data is processed by EgoCaption for dense caption generation and by EgoTranscript for transcription. Finally, the processed and annotated data is fed into the EgoLifeQA system for further analysis and task completion.
> <details>
> <summary>read the caption</summary>
> Figure 4: The Overview of Data Process Pipeline. The pipeline synchronizes multi-source data (video, audio, IMU) from Aria glasses and GoPro cameras using EgoSync codebase, processes them through privacy protection (EgoBlur), dense captioning (EgoCaption), and transcription (EgoTranscript) modules, ultimately feeding into the EgoLifeQA system.
> </details>



![](https://arxiv.org/html/2503.03803/x28.png)

> 🔼 This figure showcases the five question types within the EgoLifeQA benchmark designed to assess an egocentric AI assistant's capabilities.  These question types cover entity logging (tracking objects), event recall (remembering past events), task tracking (monitoring ongoing tasks), and two human-centric problem areas: habit analysis (identifying personal habits) and relationship understanding (analyzing social interactions). Each example displays a multiple-choice question with its answer, along with timestamps linking the answer back to relevant evidence in the recorded data.  The timestamps are at least 5 minutes before the question to demonstrate the AI's ability to use long-term contextual information.  Vertical black lines mark question timestamps; colored arcs connect to relevant evidence timestamps.
> <details>
> <summary>read the caption</summary>
> Figure 5: Question Types and Examples in the EgoLifeQA Benchmark. We design five types of questions to evaluate egocentric assistants’ capabilities in entity logging, event recall, task tracking, and human-centric problems (habit analysis and relationship understanding). Each example includes a multiple-choice Q&A with supporting evidence from timestamps at least 5 minutes prior to the question. Black vertical lines indicate question timestamps, while colored curved lines connect to relevant evidence timestamps.
> </details>



![](https://arxiv.org/html/2503.03803/x29.png)

> 🔼 The figure presents a statistical overview of the EgoLifeQA dataset, showing the distribution of different question types and their temporal characteristics.  It features two visualizations: a pie chart illustrating the proportion of questions that require audio input and a bar chart depicting the daily distribution of questions across question types, with color intensity indicating the certification length (time span between the question and relevant evidence).  The dataset comprises 3000 QAs (500 per participant).
> <details>
> <summary>read the caption</summary>
> Figure 6: Statistics of EgoLifeQA. We gathered 500 long-context QAs per participant, totaling 3K QAs. The sum of QAs for each question type is reported. In the pie chart, darker segments indicate the proportion of questions requiring audio. The bar chart presents the daily count of QAs per question type, with brightness levels reflecting 4-level certification length [11] (from <<<2h to >>>24h).
> </details>



![](https://arxiv.org/html/2503.03803/x30.png)

> 🔼 EgoButler is a two-stage system. First, EgoGPT processes egocentric video clips to generate detailed visual-audio captions. Then, EgoRAG retrieves relevant information from these captions based on user queries, enabling it to answer questions requiring temporal reasoning across multiple days. The figure shows an example of how EgoButler answers a breakfast-related question by extracting keywords, retrieving evidence from past days' captions, and generating a context-aware response.
> <details>
> <summary>read the caption</summary>
> Figure 7: The EgoBulter Architecture. The system comprises (a) a Captioning Stage powered by EgoGPT for dense visual-audio understanding of egocentric clips, and (b) a Question Answering Stage utilizing EgoRAG for memory retrieval and response generation. The example demonstrates temporal reasoning across multiple days, with keyword extraction, evidence retrieval, and context-aware answer generation for a breakfast-related query.
> </details>



![](https://arxiv.org/html/2503.03803/x31.png)

> 🔼 Figure 8 demonstrates a qualitative comparison of EgoGPT and Gemini-1.5-Pro within the EgoButler framework.  The top half shows a side-by-side comparison of captions generated by each model for the same 30-second egocentric video clip. This highlights EgoGPT's superior performance in generating personalized captions that accurately reflect the content of the video, while also exhibiting fewer hallucinations (inventions of facts not present in the source video). The bottom half presents a question-answering scenario.  It illustrates how EgoRAG, a retrieval-augmented generation component, leverages temporal information from the video to correctly identify and utilize relevant time segments to answer the question accurately.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative Comparison of EgoGPT and Gemini-1.5-Pro under the EgoButler Framework. The top section compares captions from two models on a 30-second clip: EgoGPT excels in personalization and hallucinates less on the egocentric videos. The bottom section features a question that is answered by the clip, showcasing EgoRAG’s skill in pinpointing relevant time slots and key clues.
> </details>



![](https://arxiv.org/html/2503.03803/x32.png)

> 🔼 This figure provides a comprehensive overview of existing egocentric datasets.  It presents a timeline of dataset releases, highlighting the evolution of data modalities (video, RGB-D, gaze, IMU, 3D scans, touch, point clouds), annotation types (activity labels, bounding boxes, pixel-level masks, timestamps, narrations, QA pairs), and the expansion of domains captured (sports, kitchen activities, assembly, daily life, interactions). The figure also summarizes key features and statistics of each dataset, such as the number of videos, duration, and types of annotations. This visualization helps readers understand the context of the EgoLife dataset by showing its position relative to other egocentric datasets in terms of scope, complexity, and features.
> <details>
> <summary>read the caption</summary>
> Figure A1: The Overview of Egocentric Datasets. The figure summarizes the domain, modality, annotation type, release time, dataset statistics, and other aspects of datasets, providing a comprehensive view of existing egocentric datasets.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.27.19.20.1.9.1">
<tr class="ltx_tr" id="S2.T1.27.19.20.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.27.19.20.1.9.1.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.9.1.1.1.1" style="font-size:207%;">Interpersonal</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.27.19.20.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.27.19.20.1.9.1.2.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.27.19.20.1.9.1.2.1.1" style="font-size:207%;">Dynamics</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the EgoLifeQA benchmark with other related egocentric video benchmarks.  The key differentiator of EgoLifeQA is its use of ultra-long video footage (spanning a week, totaling 266 hours across six participants), which allows for the exploration of novel tasks such as habit discovery and the analysis of complex relational interactions between people over extended periods.  A 'clip' is defined as a continuous segment of video with a narrative thread. The duration per clip for EgoLife is derived from the total footage length and is not a fixed value.
> <details>
> <summary>read the caption</summary>
> Table 2: Related Work for EgoLifeQA Benchmark. The EgoLifeQA dataset is distinguished by its ultra-long video footage and certificate length, facilitating novel tasks such as habit discovery and relational interaction pattern analysis (see Figure 5 for details). Note on Dur./Clip: A clip is defined as a session with narrative continuity. For the EgoLife dataset, this value is derived from 266 hours of retained footage distributed across six participants.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T2.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T2.6.1.1.1.1" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T2.6.1.1.1.2" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.1.1.2.1">Source</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.6.1.1.1.3" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.1.1.3.1">#QAs</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.6.1.1.1.4" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.1.1.4.1">Size (hrs)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.6.1.1.1.5" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.1.1.5.1">#Clips</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.6.1.1.1.6" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.1.1.6.1">Dur./Clip</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S2.T2.6.1.1.1.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.1.1.7.1">Certificate Length <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite></span></th>
</tr>
<tr class="ltx_tr" id="S2.T2.6.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.6.1.2.2.1" style="padding-left:15.0pt;padding-right:15.0pt;">Below 2h</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.6.1.2.2.2" style="padding-left:15.0pt;padding-right:15.0pt;">Over 2h</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.6.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.6.1.3.1.1" style="padding-left:15.0pt;padding-right:15.0pt;">EgoSchema <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.6.1.3.1.2" style="padding-left:15.0pt;padding-right:15.0pt;">Ego4D</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.1.3.1.3" style="padding-left:15.0pt;padding-right:15.0pt;">5,063</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.1.3.1.4" style="padding-left:15.0pt;padding-right:15.0pt;">250</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.1.3.1.5" style="padding-left:15.0pt;padding-right:15.0pt;">5,063</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.1.3.1.6" style="padding-left:15.0pt;padding-right:15.0pt;">3 min</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.6.1.3.1.7" style="padding-left:15.0pt;padding-right:15.0pt;">5,063</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T2.6.1.3.1.8" style="padding-left:15.0pt;padding-right:15.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.1.4.2">
<td class="ltx_td ltx_align_left" id="S2.T2.6.1.4.2.1" style="padding-left:15.0pt;padding-right:15.0pt;">EgoPlan-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.6.1.4.2.2" style="padding-left:15.0pt;padding-right:15.0pt;">Ego4D &amp; EpicKitchen</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.4.2.3" style="padding-left:15.0pt;padding-right:15.0pt;">4,939</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.4.2.4" style="padding-left:15.0pt;padding-right:15.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.4.2.5" style="padding-left:15.0pt;padding-right:15.0pt;">4,939</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.4.2.6" style="padding-left:15.0pt;padding-right:15.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.4.2.7" style="padding-left:15.0pt;padding-right:15.0pt;">4,939</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T2.6.1.4.2.8" style="padding-left:15.0pt;padding-right:15.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.1.5.3">
<td class="ltx_td ltx_align_left" id="S2.T2.6.1.5.3.1" style="padding-left:15.0pt;padding-right:15.0pt;">EgoThink <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.6.1.5.3.2" style="padding-left:15.0pt;padding-right:15.0pt;">Ego4D</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.5.3.3" style="padding-left:15.0pt;padding-right:15.0pt;">700</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.5.3.4" style="padding-left:15.0pt;padding-right:15.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.5.3.5" style="padding-left:15.0pt;padding-right:15.0pt;">595</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.5.3.6" style="padding-left:15.0pt;padding-right:15.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.5.3.7" style="padding-left:15.0pt;padding-right:15.0pt;">700</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T2.6.1.5.3.8" style="padding-left:15.0pt;padding-right:15.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.1.6.4">
<td class="ltx_td ltx_align_left" id="S2.T2.6.1.6.4.1" style="padding-left:15.0pt;padding-right:15.0pt;">EgoMemoria <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.6.1.6.4.2" style="padding-left:15.0pt;padding-right:15.0pt;">Ego4D</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.6.4.3" style="padding-left:15.0pt;padding-right:15.0pt;">7,026</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.6.4.4" style="padding-left:15.0pt;padding-right:15.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.6.4.5" style="padding-left:15.0pt;padding-right:15.0pt;">629</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.6.4.6" style="padding-left:15.0pt;padding-right:15.0pt;">30 s to 1 h</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.6.4.7" style="padding-left:15.0pt;padding-right:15.0pt;">7,026</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T2.6.1.6.4.8" style="padding-left:15.0pt;padding-right:15.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.1.7.5">
<td class="ltx_td ltx_align_left" id="S2.T2.6.1.7.5.1" style="padding-left:15.0pt;padding-right:15.0pt;">HourVideo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.6.1.7.5.2" style="padding-left:15.0pt;padding-right:15.0pt;">Ego4D</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.7.5.3" style="padding-left:15.0pt;padding-right:15.0pt;">12,976</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.7.5.4" style="padding-left:15.0pt;padding-right:15.0pt;">381</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.7.5.5" style="padding-left:15.0pt;padding-right:15.0pt;">500</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.7.5.6" style="padding-left:15.0pt;padding-right:15.0pt;">20 min to 2 h</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.1.7.5.7" style="padding-left:15.0pt;padding-right:15.0pt;">12,976</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T2.6.1.7.5.8" style="padding-left:15.0pt;padding-right:15.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.1.8.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T2.6.1.8.6.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.8.6.1.1">EgoLifeQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T2.6.1.8.6.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T2.6.1.8.6.2.1">EgoLife</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.6.1.8.6.3" style="padding-left:15.0pt;padding-right:15.0pt;">6,000</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.6.1.8.6.4" style="padding-left:15.0pt;padding-right:15.0pt;">266</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.6.1.8.6.5" style="padding-left:15.0pt;padding-right:15.0pt;">6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.6.1.8.6.6" style="padding-left:15.0pt;padding-right:15.0pt;">44.3 h</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.6.1.8.6.7" style="padding-left:15.0pt;padding-right:15.0pt;">997</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.6.1.8.6.8" style="padding-left:15.0pt;padding-right:15.0pt;">2,003</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 The EgoIT-99K dataset is a curated collection of nine classic egocentric video datasets used for fine-tuning the EgoGPT model.  These datasets were selected to provide a wide range of activities, contexts, and interaction types, building upon the LLaVA-OneVision base model. The table details the composition of EgoIT-99K, specifying for each source dataset: its duration, the number of videos (including those with audio), and the types of question-answering tasks used (Video Captioning (VC), Audio-Video Captioning (AVC), Multiple Choice Questions (MCQ), Multi-Round Questions (MRC), and Image Question-Answering (IQA)).  The inclusion of diverse question types is intended to comprehensively evaluate the model's capabilities.
> <details>
> <summary>read the caption</summary>
> Table 3: Dataset Composition of EgoIT-99K. We curated 9 classic egocentric video datasets and leveraged their annotations to generate captioning and QA instruction-tuning data for fine-tuning EgoGPT, building on the LLaVA-OneVision base model [55]. #AV means the number of videos with audio used for training. QAs include multiple types - VC: Video Captioning, AVC: Audio-Video Captioning, MCQ: Multiple Choice Questions, MRC: Multi-Round Questions, IQA: Image Question-Answering.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.11.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.11.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.1.1.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.1.1.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.1.1.2.1">Duration</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.1.1.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.1.1.3.1">#Videos (#AV)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.1.1.1.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.1.1.4.1">#QA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.1.1.1.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.1.1.5.1">QA Type</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.11.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.11.1.2.1.1" style="padding-left:8.0pt;padding-right:8.0pt;">Ego4D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.1.2.1.2" style="padding-left:8.0pt;padding-right:8.0pt;">3.34h</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.1.2.1.3" style="padding-left:8.0pt;padding-right:8.0pt;">523 (458)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.1.2.1.4" style="padding-left:8.0pt;padding-right:8.0pt;">1.41K</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.11.1.2.1.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, AVC, MCQ, MRC</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.3.2.1" style="padding-left:8.0pt;padding-right:8.0pt;">Charades-Ego <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.3.2.2" style="padding-left:8.0pt;padding-right:8.0pt;">5.04h</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.3.2.3" style="padding-left:8.0pt;padding-right:8.0pt;">591 (228)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.3.2.4" style="padding-left:8.0pt;padding-right:8.0pt;">18.46K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.3.2.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, AVC, MRC</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.4.3.1" style="padding-left:8.0pt;padding-right:8.0pt;">HoloAssist <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.4.3.2" style="padding-left:8.0pt;padding-right:8.0pt;">9.17h</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.4.3.3" style="padding-left:8.0pt;padding-right:8.0pt;">121</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.4.3.4" style="padding-left:8.0pt;padding-right:8.0pt;">33.96K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.4.3.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, MCQ, MRC, IQA</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.5.4.1" style="padding-left:8.0pt;padding-right:8.0pt;">EGTEA Gaze+ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.5.4.2" style="padding-left:8.0pt;padding-right:8.0pt;">3.01h</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.5.4.3" style="padding-left:8.0pt;padding-right:8.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.5.4.4" style="padding-left:8.0pt;padding-right:8.0pt;">11.20K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.5.4.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, MCQ, MRC, IQA</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.6.5.1" style="padding-left:8.0pt;padding-right:8.0pt;">IndustReal <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.6.5.2" style="padding-left:8.0pt;padding-right:8.0pt;">2.96h</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.6.5.3" style="padding-left:8.0pt;padding-right:8.0pt;">44</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.6.5.4" style="padding-left:8.0pt;padding-right:8.0pt;">11.58K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.6.5.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, MCQ, MRC, IQA</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.7.6">
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.7.6.1" style="padding-left:8.0pt;padding-right:8.0pt;">EgoTaskQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.7.6.2" style="padding-left:8.0pt;padding-right:8.0pt;">8.72h</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.7.6.3" style="padding-left:8.0pt;padding-right:8.0pt;">172</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.7.6.4" style="padding-left:8.0pt;padding-right:8.0pt;">3.59K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.7.6.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, MCQ, MRC</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.8.7">
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.8.7.1" style="padding-left:8.0pt;padding-right:8.0pt;">EgoProceL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.8.7.2" style="padding-left:8.0pt;padding-right:8.0pt;">3.11h</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.8.7.3" style="padding-left:8.0pt;padding-right:8.0pt;">18</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.8.7.4" style="padding-left:8.0pt;padding-right:8.0pt;">5.90K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.8.7.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, MCQ, MRC, IQA</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.9.8">
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.9.8.1" style="padding-left:8.0pt;padding-right:8.0pt;">Epic-Kitchens <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.9.8.2" style="padding-left:8.0pt;padding-right:8.0pt;">4.15h</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.9.8.3" style="padding-left:8.0pt;padding-right:8.0pt;">36</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.9.8.4" style="padding-left:8.0pt;padding-right:8.0pt;">10.15K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.9.8.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, MCQ, MRC, IQA</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.10.9">
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.10.9.1" style="padding-left:8.0pt;padding-right:8.0pt;">ADL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.10.9.2" style="padding-left:8.0pt;padding-right:8.0pt;">3.66h</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.10.9.3" style="padding-left:8.0pt;padding-right:8.0pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.1.10.9.4" style="padding-left:8.0pt;padding-right:8.0pt;">3.23K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.11.1.10.9.5" style="padding-left:8.0pt;padding-right:8.0pt;">VC, MCQ, MRC, IQA</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.11.1.11.10.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.11.10.1.1">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.11.1.11.10.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.11.10.2.1">43.16h</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.11.1.11.10.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.11.10.3.1">1529 (686)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.11.1.11.10.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.1.11.10.4.1">99.48K</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T3.11.1.11.10.5" style="padding-left:8.0pt;padding-right:8.0pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the EgoGPT model's performance against other state-of-the-art video-language models on several established egocentric vision benchmarks.  The benchmarks evaluate different aspects of video understanding, including video captioning and question answering.  The results highlight EgoGPT's strengths and weaknesses relative to these other models, offering insights into its capabilities and limitations in processing egocentric video data.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance of EgoGPT. The table compares EgoGPT with state-of-the-art commercial and open-source models on existing egocentric benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.5.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.1.1" style="font-size:70%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.5.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.2.1" style="font-size:70%;">#Param</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.5.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.3.1" style="font-size:70%;">#Frames</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.4.1" style="font-size:70%;">EgoSchema</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.5.1" style="font-size:70%;">EgoPlan</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.6.1" style="font-size:70%;">EgoThink</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.1.2.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.2.1.1.1" style="font-size:70%;">GPT-4v </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.2.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a><span class="ltx_text" id="S4.T4.5.1.2.1.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.1.2.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.2.1.2.1" style="font-size:70%;">-</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.5.1.2.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.2.1.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.2.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.2.1.4.1" style="font-size:70%;">56.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.2.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.2.1.5.1" style="font-size:70%;">38.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.2.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.2.1.6.1" style="font-size:70%;">65.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.3.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.3.2.1.1" style="font-size:70%;">Gemini-1.5-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.3.2.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib95" title=""><span class="ltx_text" style="font-size:90%;">95</span></a><span class="ltx_text" id="S4.T4.5.1.3.2.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.3.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.3.2.2.1" style="font-size:70%;">-</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.3.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.3.2.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.3.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.3.2.4.1" style="font-size:70%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.3.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.3.2.5.1" style="font-size:70%;">31.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.3.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.3.2.6.1" style="font-size:70%;">62.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.4.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.4.3.1.1" style="font-size:70%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.4.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S4.T4.5.1.4.3.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.4.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.4.3.2.1" style="font-size:70%;">-</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.4.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.4.3.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.4.3.4.1" style="font-size:70%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.4.3.5.1" style="font-size:70%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.4.3.6.1" style="font-size:70%;">65.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.1.5.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.5.4.1.1" style="font-size:70%;">LLaVA-Next-Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.5.4.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib97" title=""><span class="ltx_text" style="font-size:90%;">97</span></a><span class="ltx_text" id="S4.T4.5.1.5.4.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.1.5.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.5.4.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.5.1.5.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.5.4.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.5.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.5.4.4.1" style="font-size:70%;">49.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.5.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.5.4.5.1" style="font-size:70%;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.5.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.5.4.6.1" style="font-size:70%;">40.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.6.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.6.5.1.1" style="font-size:70%;">LongVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.6.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="S4.T4.5.1.6.5.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.6.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.6.5.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.6.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.6.5.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.6.5.4.1" style="font-size:70%;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.6.5.5.1" style="font-size:70%;">29.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.6.5.6.1" style="font-size:70%;">48.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.7.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.7.6.1.1" style="font-size:70%;">IXC-2.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.7.6.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a><span class="ltx_text" id="S4.T4.5.1.7.6.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.7.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.7.6.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.7.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.7.6.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.7.6.4.1" style="font-size:70%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.7.6.5.1" style="font-size:70%;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.7.6.6.1" style="font-size:70%;">56.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.8.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.8.7.1.1" style="font-size:70%;">InternVideo2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.8.7.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib100" title=""><span class="ltx_text" style="font-size:90%;">100</span></a><span class="ltx_text" id="S4.T4.5.1.8.7.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.8.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.8.7.2.1" style="font-size:70%;">8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.8.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.8.7.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.8.7.4.1" style="font-size:70%;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.8.7.5.1" style="font-size:70%;">27.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.8.7.6.1" style="font-size:70%;">43.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.9.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.9.8.1.1" style="font-size:70%;">Qwen2-VL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.9.8.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a><span class="ltx_text" id="S4.T4.5.1.9.8.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.9.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.9.8.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.9.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.9.8.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.9.8.4.1" style="font-size:70%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.9.8.5.1" style="font-size:70%;">34.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.9.8.6.1" style="font-size:70%;">59.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.10.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.10.9.1.1" style="font-size:70%;">Oryx </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.10.9.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S4.T4.5.1.10.9.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.10.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.10.9.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.10.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.10.9.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.10.9.4.1" style="font-size:70%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.10.9.5.1" style="font-size:70%;">33.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.10.9.6.1" style="font-size:70%;">53.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.11.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.11.10.1.1" style="font-size:70%;">LLaVA-OV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.11.10.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S4.T4.5.1.11.10.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.11.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.11.10.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.11.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.11.10.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.11.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.11.10.4.1" style="font-size:70%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.11.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.11.10.5.1" style="font-size:70%;">30.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.11.10.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.11.10.6.1" style="font-size:70%;">54.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.12.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.1.12.11.1.1" style="font-size:70%;">LLaVA-Videos </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.1.12.11.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T4.5.1.12.11.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.5.1.12.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.12.11.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.12.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.12.11.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.12.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.12.11.4.1" style="font-size:70%;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.12.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.12.11.5.1" style="font-size:70%;">33.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.12.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.12.11.6.1" style="font-size:70%;">56.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.1.13.12.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.13.12.1.1" style="font-size:70%;">EgoGPT (EgoIT)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.1.13.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.13.12.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.5.1.13.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.13.12.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.13.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.13.12.4.1" style="font-size:70%;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.13.12.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.13.12.5.1" style="font-size:70%;">32.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.13.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.13.12.6.1" style="font-size:70%;">61.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.5.1.14.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.14.13.1.1" style="font-size:70%;">EgoGPT (EgoIT+EgoLifeD1)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.5.1.14.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.14.13.2.1" style="font-size:70%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.5.1.14.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.14.13.3.1" style="font-size:70%;">32</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.14.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.14.13.4.1" style="font-size:70%;">75.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.14.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.14.13.5.1" style="font-size:70%;">33.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.14.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.1.14.13.6.1" style="font-size:70%;">61.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of EgoGPT's performance against other state-of-the-art models on the EgoLifeQA benchmark.  To ensure a fair comparison, the EgoGPT model was swapped out with each competing model within the EgoButler pipeline, keeping all other parameters consistent.  The results are presented in terms of accuracy across five different question types within the EgoLifeQA benchmark: EntityLog, EventRecall, HabitInsight, RelationMap, and TaskMaster. A crucial consideration is that models providing captions for the EgoLifeQA benchmark utilized a video sampling rate of 1 frame per second (FPS). The table highlights the relative strengths and weaknesses of each model across various question types, revealing which models perform better at certain aspects of egocentric life assistance.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison of EgoGPT with state-of-the-art models on EgoLifeQA benchmarks. For a fair comparison on EgoLifeQA, EgoGPT was replaced with the corresponding models in the EgoButler pipeline to evaluate their performance under the same conditions. Models that provide captions for EgoLifeQA use 1 FPS for video sampling.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T5.5.1.1.1.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.1.1" style="font-size:70%;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.5.1.1.1.2" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.2.1" style="font-size:70%;">#Frames</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.5.1.1.1.3" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.3.1" style="font-size:70%;">Audio</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.5.1.1.1.4" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.4.1" style="font-size:70%;">Identity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T5.5.1.1.1.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.1.1.5.1" style="font-size:70%;">EgoLifeQA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.2.2">
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.2.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.2.2.1.1" style="font-size:70%;">EntityLog</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.2.2.2.1" style="font-size:70%;">EventRecall</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.2.2.3.1" style="font-size:70%;">HabitInsight</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.2.2.4.1" style="font-size:70%;">RelationMap</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.2.2.5.1" style="font-size:70%;">TaskMaster</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.2.2.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.2.2.6.1" style="font-size:70%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.3.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T5.5.1.3.3.1.1" style="font-size:70%;">Gemini-1.5-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.1.3.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib95" title=""><span class="ltx_text" style="font-size:90%;">95</span></a><span class="ltx_text" id="S4.T5.5.1.3.3.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.2.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.3.1" style="font-size:70%;color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.4.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.5.1" style="font-size:70%;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.6.1" style="font-size:70%;">37.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.7.1" style="font-size:70%;">45.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.8.1" style="font-size:70%;">30.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.9.1" style="font-size:70%;">34.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.3.3.10.1" style="font-size:70%;">36.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.4.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T5.5.1.4.4.1.1" style="font-size:70%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.1.4.4.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S4.T5.5.1.4.4.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.2.1" style="font-size:70%;">1 FPS</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.3.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.4.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.5.1" style="font-size:70%;">34.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.6.1" style="font-size:70%;">42.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.7.1" style="font-size:70%;">29.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.8.1" style="font-size:70%;">30.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.9.1" style="font-size:70%;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.4.4.10.1" style="font-size:70%;">36.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.5.5.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T5.5.1.5.5.1.1" style="font-size:70%;">LLaVA-OV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T5.5.1.5.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.03803v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S4.T5.5.1.5.5.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.2.1" style="font-size:70%;">1 FPS</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.3.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.4.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.5.1" style="font-size:70%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.6.1" style="font-size:70%;">34.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.7.1" style="font-size:70%;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.8.1" style="font-size:70%;">22.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.9.1" style="font-size:70%;">28.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.5.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.5.5.10.1" style="font-size:70%;">30.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.6.6.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.1.1" style="font-size:70%;">EgoGPT (EgoIT-99K)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.2.1" style="font-size:70%;">1 FPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.3.1" style="font-size:70%;color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.4.1" style="font-size:70%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.5.1" style="font-size:70%;">35.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.6.1" style="font-size:70%;">36.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.7.1" style="font-size:70%;">27.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.8.1" style="font-size:70%;">29.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.9.1" style="font-size:70%;">36.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.6.6.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.6.10.1" style="font-size:70%;">33.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.5.1.7.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.1.1" style="font-size:70%;">EgoGPT (EgoIT-99K+D1)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.2.1" style="font-size:70%;">1 FPS</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.3.1" style="font-size:70%;color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.4.1" style="font-size:70%;color:#008080;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.5.1" style="font-size:70%;">39.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.6.1" style="font-size:70%;">36.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.7.1" style="font-size:70%;">31.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.8.1" style="font-size:70%;">33.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.9.1" style="font-size:70%;">39.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.7.7.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T5.5.1.7.7.10.1" style="font-size:70%;">36.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table demonstrates the significant performance improvement achieved by integrating EgoRAG (Retrieval-Augmented Generation) into a video-language model for long-context question answering.  It compares the performance of EgoRAG combined with EgoGPT (a multimodal video-language model) against the performance of Gemini-1.5-Pro and EgoGPT alone, all evaluated on the task of answering questions requiring various lengths of contextual information (certification lengths).  The results show EgoRAG's substantial benefit, particularly for questions demanding ultra-long temporal context understanding (over 24 hours).  The comparison with Gemini-1.5-Pro and EgoGPT alone on shorter video segments (half-hour) highlights EgoRAG's effectiveness in handling long-context scenarios.
> <details>
> <summary>read the caption</summary>
> Table 6: Effectiveness of EgoRAG. Integrating EgoRAG significantly enhances video-language models’ performance in long-context question answering, especially for questions requiring longer certification lengths. For comparison, we evaluate Gemini-1.5-Pro and EgoGPT on a half-hour video segment, limiting their answers to this timeframe.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T6.4.4.5.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.4.4.5.1.1.1" style="font-size:70%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T6.4.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.4.4.5.1.2.1" style="font-size:70%;">Certificate Length</span></th>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="&lt;2h" class="ltx_Math" display="inline" id="S5.T6.1.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.1.m1.1a"><mrow id="S5.T6.1.1.1.1.m1.1.1" xref="S5.T6.1.1.1.1.m1.1.1.cmml"><mi id="S5.T6.1.1.1.1.m1.1.1.2" xref="S5.T6.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S5.T6.1.1.1.1.m1.1.1.1" mathsize="70%" xref="S5.T6.1.1.1.1.m1.1.1.1.cmml">&lt;</mo><mrow id="S5.T6.1.1.1.1.m1.1.1.3" xref="S5.T6.1.1.1.1.m1.1.1.3.cmml"><mn id="S5.T6.1.1.1.1.m1.1.1.3.2" mathsize="70%" xref="S5.T6.1.1.1.1.m1.1.1.3.2.cmml">2</mn><mo id="S5.T6.1.1.1.1.m1.1.1.3.1" xref="S5.T6.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S5.T6.1.1.1.1.m1.1.1.3.3" mathsize="70%" xref="S5.T6.1.1.1.1.m1.1.1.3.3.cmml">h</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.1.m1.1b"><apply id="S5.T6.1.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.1.m1.1.1"><lt id="S5.T6.1.1.1.1.m1.1.1.1.cmml" xref="S5.T6.1.1.1.1.m1.1.1.1"></lt><csymbol cd="latexml" id="S5.T6.1.1.1.1.m1.1.1.2.cmml" xref="S5.T6.1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S5.T6.1.1.1.1.m1.1.1.3.cmml" xref="S5.T6.1.1.1.1.m1.1.1.3"><times id="S5.T6.1.1.1.1.m1.1.1.3.1.cmml" xref="S5.T6.1.1.1.1.m1.1.1.3.1"></times><cn id="S5.T6.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T6.1.1.1.1.m1.1.1.3.2">2</cn><ci id="S5.T6.1.1.1.1.m1.1.1.3.3.cmml" xref="S5.T6.1.1.1.1.m1.1.1.3.3">ℎ</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.1.m1.1c">&lt;2h</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.1.m1.1d">&lt; 2 italic_h</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="2h-6h" class="ltx_Math" display="inline" id="S5.T6.2.2.2.2.m1.1"><semantics id="S5.T6.2.2.2.2.m1.1a"><mrow id="S5.T6.2.2.2.2.m1.1.1" xref="S5.T6.2.2.2.2.m1.1.1.cmml"><mrow id="S5.T6.2.2.2.2.m1.1.1.2" xref="S5.T6.2.2.2.2.m1.1.1.2.cmml"><mn id="S5.T6.2.2.2.2.m1.1.1.2.2" mathsize="70%" xref="S5.T6.2.2.2.2.m1.1.1.2.2.cmml">2</mn><mo id="S5.T6.2.2.2.2.m1.1.1.2.1" xref="S5.T6.2.2.2.2.m1.1.1.2.1.cmml">⁢</mo><mi id="S5.T6.2.2.2.2.m1.1.1.2.3" mathsize="70%" xref="S5.T6.2.2.2.2.m1.1.1.2.3.cmml">h</mi></mrow><mo id="S5.T6.2.2.2.2.m1.1.1.1" mathsize="70%" xref="S5.T6.2.2.2.2.m1.1.1.1.cmml">−</mo><mrow id="S5.T6.2.2.2.2.m1.1.1.3" xref="S5.T6.2.2.2.2.m1.1.1.3.cmml"><mn id="S5.T6.2.2.2.2.m1.1.1.3.2" mathsize="70%" xref="S5.T6.2.2.2.2.m1.1.1.3.2.cmml">6</mn><mo id="S5.T6.2.2.2.2.m1.1.1.3.1" xref="S5.T6.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S5.T6.2.2.2.2.m1.1.1.3.3" mathsize="70%" xref="S5.T6.2.2.2.2.m1.1.1.3.3.cmml">h</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.2.2.m1.1b"><apply id="S5.T6.2.2.2.2.m1.1.1.cmml" xref="S5.T6.2.2.2.2.m1.1.1"><minus id="S5.T6.2.2.2.2.m1.1.1.1.cmml" xref="S5.T6.2.2.2.2.m1.1.1.1"></minus><apply id="S5.T6.2.2.2.2.m1.1.1.2.cmml" xref="S5.T6.2.2.2.2.m1.1.1.2"><times id="S5.T6.2.2.2.2.m1.1.1.2.1.cmml" xref="S5.T6.2.2.2.2.m1.1.1.2.1"></times><cn id="S5.T6.2.2.2.2.m1.1.1.2.2.cmml" type="integer" xref="S5.T6.2.2.2.2.m1.1.1.2.2">2</cn><ci id="S5.T6.2.2.2.2.m1.1.1.2.3.cmml" xref="S5.T6.2.2.2.2.m1.1.1.2.3">ℎ</ci></apply><apply id="S5.T6.2.2.2.2.m1.1.1.3.cmml" xref="S5.T6.2.2.2.2.m1.1.1.3"><times id="S5.T6.2.2.2.2.m1.1.1.3.1.cmml" xref="S5.T6.2.2.2.2.m1.1.1.3.1"></times><cn id="S5.T6.2.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T6.2.2.2.2.m1.1.1.3.2">6</cn><ci id="S5.T6.2.2.2.2.m1.1.1.3.3.cmml" xref="S5.T6.2.2.2.2.m1.1.1.3.3">ℎ</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.2.2.m1.1c">2h-6h</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.2.2.m1.1d">2 italic_h - 6 italic_h</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="6h-24h" class="ltx_Math" display="inline" id="S5.T6.3.3.3.3.m1.1"><semantics id="S5.T6.3.3.3.3.m1.1a"><mrow id="S5.T6.3.3.3.3.m1.1.1" xref="S5.T6.3.3.3.3.m1.1.1.cmml"><mrow id="S5.T6.3.3.3.3.m1.1.1.2" xref="S5.T6.3.3.3.3.m1.1.1.2.cmml"><mn id="S5.T6.3.3.3.3.m1.1.1.2.2" mathsize="70%" xref="S5.T6.3.3.3.3.m1.1.1.2.2.cmml">6</mn><mo id="S5.T6.3.3.3.3.m1.1.1.2.1" xref="S5.T6.3.3.3.3.m1.1.1.2.1.cmml">⁢</mo><mi id="S5.T6.3.3.3.3.m1.1.1.2.3" mathsize="70%" xref="S5.T6.3.3.3.3.m1.1.1.2.3.cmml">h</mi></mrow><mo id="S5.T6.3.3.3.3.m1.1.1.1" mathsize="70%" xref="S5.T6.3.3.3.3.m1.1.1.1.cmml">−</mo><mrow id="S5.T6.3.3.3.3.m1.1.1.3" xref="S5.T6.3.3.3.3.m1.1.1.3.cmml"><mn id="S5.T6.3.3.3.3.m1.1.1.3.2" mathsize="70%" xref="S5.T6.3.3.3.3.m1.1.1.3.2.cmml">24</mn><mo id="S5.T6.3.3.3.3.m1.1.1.3.1" xref="S5.T6.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S5.T6.3.3.3.3.m1.1.1.3.3" mathsize="70%" xref="S5.T6.3.3.3.3.m1.1.1.3.3.cmml">h</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.3.3.m1.1b"><apply id="S5.T6.3.3.3.3.m1.1.1.cmml" xref="S5.T6.3.3.3.3.m1.1.1"><minus id="S5.T6.3.3.3.3.m1.1.1.1.cmml" xref="S5.T6.3.3.3.3.m1.1.1.1"></minus><apply id="S5.T6.3.3.3.3.m1.1.1.2.cmml" xref="S5.T6.3.3.3.3.m1.1.1.2"><times id="S5.T6.3.3.3.3.m1.1.1.2.1.cmml" xref="S5.T6.3.3.3.3.m1.1.1.2.1"></times><cn id="S5.T6.3.3.3.3.m1.1.1.2.2.cmml" type="integer" xref="S5.T6.3.3.3.3.m1.1.1.2.2">6</cn><ci id="S5.T6.3.3.3.3.m1.1.1.2.3.cmml" xref="S5.T6.3.3.3.3.m1.1.1.2.3">ℎ</ci></apply><apply id="S5.T6.3.3.3.3.m1.1.1.3.cmml" xref="S5.T6.3.3.3.3.m1.1.1.3"><times id="S5.T6.3.3.3.3.m1.1.1.3.1.cmml" xref="S5.T6.3.3.3.3.m1.1.1.3.1"></times><cn id="S5.T6.3.3.3.3.m1.1.1.3.2.cmml" type="integer" xref="S5.T6.3.3.3.3.m1.1.1.3.2">24</cn><ci id="S5.T6.3.3.3.3.m1.1.1.3.3.cmml" xref="S5.T6.3.3.3.3.m1.1.1.3.3">ℎ</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.3.3.m1.1c">6h-24h</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.3.3.m1.1d">6 italic_h - 24 italic_h</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="&gt;24h" class="ltx_Math" display="inline" id="S5.T6.4.4.4.4.m1.1"><semantics id="S5.T6.4.4.4.4.m1.1a"><mrow id="S5.T6.4.4.4.4.m1.1.1" xref="S5.T6.4.4.4.4.m1.1.1.cmml"><mi id="S5.T6.4.4.4.4.m1.1.1.2" xref="S5.T6.4.4.4.4.m1.1.1.2.cmml"></mi><mo id="S5.T6.4.4.4.4.m1.1.1.1" mathsize="70%" xref="S5.T6.4.4.4.4.m1.1.1.1.cmml">&gt;</mo><mrow id="S5.T6.4.4.4.4.m1.1.1.3" xref="S5.T6.4.4.4.4.m1.1.1.3.cmml"><mn id="S5.T6.4.4.4.4.m1.1.1.3.2" mathsize="70%" xref="S5.T6.4.4.4.4.m1.1.1.3.2.cmml">24</mn><mo id="S5.T6.4.4.4.4.m1.1.1.3.1" xref="S5.T6.4.4.4.4.m1.1.1.3.1.cmml">⁢</mo><mi id="S5.T6.4.4.4.4.m1.1.1.3.3" mathsize="70%" xref="S5.T6.4.4.4.4.m1.1.1.3.3.cmml">h</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.4.4.4.4.m1.1b"><apply id="S5.T6.4.4.4.4.m1.1.1.cmml" xref="S5.T6.4.4.4.4.m1.1.1"><gt id="S5.T6.4.4.4.4.m1.1.1.1.cmml" xref="S5.T6.4.4.4.4.m1.1.1.1"></gt><csymbol cd="latexml" id="S5.T6.4.4.4.4.m1.1.1.2.cmml" xref="S5.T6.4.4.4.4.m1.1.1.2">absent</csymbol><apply id="S5.T6.4.4.4.4.m1.1.1.3.cmml" xref="S5.T6.4.4.4.4.m1.1.1.3"><times id="S5.T6.4.4.4.4.m1.1.1.3.1.cmml" xref="S5.T6.4.4.4.4.m1.1.1.3.1"></times><cn id="S5.T6.4.4.4.4.m1.1.1.3.2.cmml" type="integer" xref="S5.T6.4.4.4.4.m1.1.1.3.2">24</cn><ci id="S5.T6.4.4.4.4.m1.1.1.3.3.cmml" xref="S5.T6.4.4.4.4.m1.1.1.3.3">ℎ</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.4.4.4.4.m1.1c">&gt;24h</annotation><annotation encoding="application/x-llamapun" id="S5.T6.4.4.4.4.m1.1d">&gt; 24 italic_h</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.4.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.4.4.6.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.6.1.1.1" style="font-size:70%;">Gemini-1.5-Pro</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.6.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.6.1.2.1" style="font-size:70%;">27.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.6.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.6.1.3.1" style="font-size:70%;">14.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.6.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.6.1.4.1" style="font-size:70%;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.6.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.6.1.5.1" style="font-size:70%;">18.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.4.4.7.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.7.2.1.1" style="font-size:70%;">EgoGPT</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.7.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.7.2.2.1" style="font-size:70%;">28.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.7.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.7.2.3.1" style="font-size:70%;">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.7.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.7.2.4.1" style="font-size:70%;">26.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.7.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.7.2.5.1" style="font-size:70%;">25.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T6.4.4.8.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.8.3.1.1" style="font-size:70%;">EgoGPT+EgoRAG</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.4.8.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.8.3.2.1" style="font-size:70%;">27.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.4.8.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.8.3.3.1" style="font-size:70%;">35.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.4.8.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.8.3.4.1" style="font-size:70%;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.4.4.8.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.4.4.8.3.5.1" style="font-size:70%;">35.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of caption quality on the EgoButler system's performance.  Different EgoRAG memory banks were constructed using captions generated by various EgoGPT models, including human-annotated captions as a baseline.  All response generation models used the same EgoGPT (EgoIT-99K+D1) to maintain a fair comparison. The results demonstrate the effect of caption quality on the overall performance of EgoButler.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation Study on EgoGPT. We construct different EgoRAG memory banks using generated captions from EgoGPT variants. The first three rows use captions from human annotations as a reference. All response generation models utilize EgoGPT (EgoIT-99K+D1) to ensure fair comparison. The result indicates how caption quality affects of EgoBulter performance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.03803/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.03803/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}