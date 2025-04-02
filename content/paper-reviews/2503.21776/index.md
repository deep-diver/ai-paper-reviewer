---
title: "Video-R1: Reinforcing Video Reasoning in MLLMs"
summary: "Video-R1: First to explore rule-based RL for video reasoning in MLLMs, enhancing performance on key benchmarks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 CUHK MMLab",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21776 {{< /keyword >}}
{{< keyword icon="writer" >}} Kaituo Feng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21776" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21776" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21776/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Inspired by DeepSeek-R1, this paper introduces Video-R1, to explore rule-based reinforcement learning (RL) for video reasoning in multimodal large language models (MLLMs). Applying RL to video presents challenges: lack of temporal modeling and scarcity of video-reasoning data. To address the challenges, the paper introduces T-GRPO algorithm, which encourages models to utilize temporal information for reasoning. Instead of only video, it incorporates high-quality image-reasoning data.



Video-R1 constructs two datasets: Video-R1-COT and Video-R1 for SFT cold start and RL training, comprising both image and video data. Experiments show Video-R1 improves on video reasoning benchmarks like VideoMMMU, VSI-Bench, MVBench, and TempCompass. Notably, Video-R1-7B achieves 35.8% accuracy on VSI-Bench, surpassing the commercial model GPT-4o. The project releases codes, models, and data.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Video-R1 is the first systematic attempt to apply rule-based reinforcement learning to enhance video reasoning in multimodal large language models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The T-GRPO algorithm improves temporal reasoning by contrasting performance on ordered vs. shuffled video frames. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study demonstrates significant performance gains on video reasoning benchmarks, surpassing state-of-the-art models on VSI-Bench. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Video-R1, advancing video reasoning in MLLMs via rule-based RL and a novel temporal-aware training method. **It sets a new state-of-the-art on VSI-Bench**, highlighting the impact of reasoning capabilities for video tasks and stimulating further research in this field.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21776/x1.png)

> 🔼 This figure illustrates the reasoning processes of the Video-R1 model trained with two different algorithms: GRPO and the proposed T-GRPO.  The example demonstrates how a model without explicit temporal modeling (GRPO) may take shortcuts and arrive at an incorrect answer by focusing on a single frame instead of considering the temporal evolution of events in the video. In contrast, the model trained with T-GRPO shows a more thorough and accurate reasoning process by considering the temporal relationships between frames. This highlights the importance of incorporating temporal information for robust video reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Reasoning paths of Video-R1 trained by GRPO and our proposed T-GRPO on test samples. Without explicit temporal modeling, models may learn sub-optimal video reasoning patterns by taking shortcuts, therefore failing to generalize well.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.1" rowspan="2" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.2" rowspan="2" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.2.1">Frames</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.1.1.1.1.3" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.3.1">Video Reasoning Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.1.1.1.1.4" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.4.1">Video General Benchmark</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.1" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.2.2.1.1" style="font-size:90%;">VSI-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.2" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.2.2.2.1" style="font-size:90%;">VideoMMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.2.2.3" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.2.2.3.1" style="font-size:90%;">MMVU (mc)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.4" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.2.2.4.1" style="font-size:90%;">MVBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.5" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.2.2.5.1" style="font-size:90%;">TempCompass</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.6" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.2.2.6.1" style="font-size:90%;">VideoMME (wo sub)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.3" style="background-color:#EDEDED;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.3.3.1" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.3.3.1.1" style="background-color:#EDEDED;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib9" title="">9</a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.3.3.2" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.3.3.2.1" style="background-color:#EDEDED;">-</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.3" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.3.3.3.1" style="background-color:#EDEDED;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.4" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.3.3.4.1" style="background-color:#EDEDED;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.3.3.5" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.3.3.5.1" style="background-color:#EDEDED;">75.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.6" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.3.3.6.1" style="background-color:#EDEDED;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.7" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.3.3.7.1" style="background-color:#EDEDED;">-</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.8" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.3.3.8.1" style="background-color:#EDEDED;">71.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.4.4.1" style="padding:1.5pt 2.3pt;">LLaMA-VID <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib15" title="">15</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.4.4.2" style="padding:1.5pt 2.3pt;">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4.3" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4.4" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.4.4.5" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4.6" style="padding:1.5pt 2.3pt;">41.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4.7" style="padding:1.5pt 2.3pt;">45.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4.8" style="padding:1.5pt 2.3pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.5.5.1" style="padding:1.5pt 2.3pt;">VideoLLaMA2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib2" title="">2</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.5.5.2" style="padding:1.5pt 2.3pt;">-</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.3" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.4" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.5.5.5" style="padding:1.5pt 2.3pt;">44.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.6" style="padding:1.5pt 2.3pt;">54.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.7" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.5.5.8" style="padding:1.5pt 2.3pt;">47.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.6.6.1" style="padding:1.5pt 2.3pt;">LongVA-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib28" title="">28</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.6.6.2" style="padding:1.5pt 2.3pt;">-</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.3" style="padding:1.5pt 2.3pt;">29.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.4" style="padding:1.5pt 2.3pt;">23.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.6.6.5" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.6" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.7" style="padding:1.5pt 2.3pt;">56.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.6.6.8" style="padding:1.5pt 2.3pt;">52.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.7.7.1" style="padding:1.5pt 2.3pt;">VILA-1.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib16" title="">16</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.7.7.2" style="padding:1.5pt 2.3pt;">-</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.3" style="padding:1.5pt 2.3pt;">28.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.4" style="padding:1.5pt 2.3pt;">20.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.7.7.5" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.6" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.7" style="padding:1.5pt 2.3pt;">58.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.7.7.8" style="padding:1.5pt 2.3pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.8.8.1" style="padding:1.5pt 2.3pt;">VILA-1.5-40B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib16" title="">16</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.8.8.2" style="padding:1.5pt 2.3pt;">-</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.3" style="padding:1.5pt 2.3pt;">31.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.4" style="padding:1.5pt 2.3pt;">34.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.8.8.5" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.6" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.7" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.8.8.8" style="padding:1.5pt 2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.8.8.1">60.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.9.9.1" style="padding:1.5pt 2.3pt;">Video-UTR-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib26" title="">26</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.9.9.2" style="padding:1.5pt 2.3pt;">-</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.3" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.4" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.9.9.5" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.6" style="padding:1.5pt 2.3pt;">58.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.7" style="padding:1.5pt 2.3pt;">59.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.9.9.8" style="padding:1.5pt 2.3pt;">52.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.10.10.1" style="padding:1.5pt 2.3pt;">LLaVA-OneVision-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib12" title="">12</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.10.10.2" style="padding:1.5pt 2.3pt;">-</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.3" style="padding:1.5pt 2.3pt;">32.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.4" style="padding:1.5pt 2.3pt;">33.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.10.10.5" style="padding:1.5pt 2.3pt;">49.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.6" style="padding:1.5pt 2.3pt;">56.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.7" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.10.10.8" style="padding:1.5pt 2.3pt;">58.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.11.11.1" style="padding:1.5pt 2.3pt;">Kangeroo-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21776v1#bib.bib17" title="">17</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.11.11.2" style="padding:1.5pt 2.3pt;">-</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.3" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.4" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.11.11.5" style="padding:1.5pt 2.3pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.6" style="padding:1.5pt 2.3pt;">61.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.7" style="padding:1.5pt 2.3pt;">62.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.11.11.8" style="padding:1.5pt 2.3pt;">56.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.12.12.1" style="padding:1.5pt 2.3pt;">Qwen2.5-VL-7B (COT)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.12.12.2" style="padding:1.5pt 2.3pt;">16</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.12.3" style="padding:1.5pt 2.3pt;">27.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.12.4" style="padding:1.5pt 2.3pt;">47.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.12.12.5" style="padding:1.5pt 2.3pt;">59.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.12.6" style="padding:1.5pt 2.3pt;">57.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.12.7" style="padding:1.5pt 2.3pt;">72.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.12.12.8" style="padding:1.5pt 2.3pt;">53.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.13.13.1" style="padding:1.5pt 2.3pt;">Qwen2.5-VL-7B-SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.13.13.2" style="padding:1.5pt 2.3pt;">16</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.3" style="padding:1.5pt 2.3pt;">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.4" style="padding:1.5pt 2.3pt;">47.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.13.13.5" style="padding:1.5pt 2.3pt;">61.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.6" style="padding:1.5pt 2.3pt;">59.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.7" style="padding:1.5pt 2.3pt;">69.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.13.13.8" style="padding:1.5pt 2.3pt;">52.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.14.14.1" style="padding:1.5pt 2.3pt;">Qwen2.5-VL-7B (COT)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.14.14.2" style="padding:1.5pt 2.3pt;">32</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.3" style="padding:1.5pt 2.3pt;">30.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.4" style="padding:1.5pt 2.3pt;">48.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.14.14.5" style="padding:1.5pt 2.3pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.6" style="padding:1.5pt 2.3pt;">59.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.7" style="padding:1.5pt 2.3pt;">72.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.14.14.8" style="padding:1.5pt 2.3pt;">56.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.15.15.1" style="padding:1.5pt 2.3pt;">Qwen2.5-VL-7B-SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.15.15.2" style="padding:1.5pt 2.3pt;">32</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.3" style="padding:1.5pt 2.3pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.4" style="padding:1.5pt 2.3pt;">49.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.15.15.5" style="padding:1.5pt 2.3pt;">63.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.6" style="padding:1.5pt 2.3pt;">60.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.7" style="padding:1.5pt 2.3pt;">69.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.15.15.8" style="padding:1.5pt 2.3pt;">55.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.16.16" style="background-color:#F5FFFA;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.16.16.1" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.16.16.1.1" style="background-color:#F5FFFA;">Video-R1-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.16.16.2" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.16.16.2.1" style="background-color:#F5FFFA;">16</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.16.3" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.16.16.3.1" style="background-color:#F5FFFA;">34.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.16.4" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.16.16.4.1" style="background-color:#F5FFFA;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.16.16.5" style="padding:1.5pt 2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.5.1" style="background-color:#F5FFFA;">64.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.16.6" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.16.16.6.1" style="background-color:#F5FFFA;">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.16.16.7" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.16.16.7.1" style="background-color:#F5FFFA;">72.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.16.16.8" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.16.16.8.1" style="background-color:#F5FFFA;">57.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.17.17" style="background-color:#F5FFFA;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.17.17.1" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.17.17.1.1" style="background-color:#F5FFFA;">Video-R1-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.17.17.2" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.17.17.2.1" style="background-color:#F5FFFA;">32</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.17.17.3" style="padding:1.5pt 2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.17.17.3.1" style="background-color:#F5FFFA;">35.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.17.17.4" style="padding:1.5pt 2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.17.17.4.1" style="background-color:#F5FFFA;">52.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.1.1.17.17.5" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.17.17.5.1" style="background-color:#F5FFFA;">63.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.17.17.6" style="padding:1.5pt 2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.17.17.6.1" style="background-color:#F5FFFA;">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.17.17.7" style="padding:1.5pt 2.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.17.17.7.1" style="background-color:#F5FFFA;">73.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.1.1.17.17.8" style="padding:1.5pt 2.3pt;"><span class="ltx_text" id="S4.T1.1.1.17.17.8.1" style="background-color:#F5FFFA;">59.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of various models' performance across several video understanding benchmarks.  The benchmarks are categorized into video reasoning tasks (VSI-Bench, VideoMMMU, MMVU) and general video understanding tasks (MVBench, TempCompass, VideoMME). For each model, the table shows its performance (usually accuracy) on each benchmark, along with the number of video frames used during evaluation.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of different models on benchmarks.
> </details>





### In-depth insights


#### RL for MLLMs
Reinforcement Learning (RL) is emerging as a pivotal technique for enhancing Multimodal Large Language Models (MLLMs). RL offers a framework to refine the reasoning and decision-making capabilities of MLLMs through interaction with an environment and reward signals. **The DeepSeek-R1** model's success has spurred interest in leveraging RL to elicit emergent reasoning abilities.RL allows MLLMs to learn complex, multi-step reasoning strategies without explicit supervision, making it effective for tasks requiring intricate decision-making. However, applying RL to MLLMs presents challenges, including defining appropriate reward functions and addressing data scarcity. Innovations like rule-based RL aim to guide MLLMs towards desired behaviors. Furthermore, addressing the lack of temporal inductive bias is crucial for video reasoning, requiring algorithms that encourage models to utilize temporal information effectively. RL's potential to unlock complex reasoning in MLLMs is significant, paving the way for more capable and adaptable AI systems.

#### Temporal GRPO
The introduction of a "Temporal GRPO" (T-GRPO) algorithm represents a significant advancement in video reasoning for MLLMs. **Addressing the limitation of standard GRPO in temporal modeling**, T-GRPO smartly uses frame order. By contrasting performance on ordered vs. shuffled frames, T-GRPO creates a contrastive signal. This signal encourages the model to prioritize temporal patterns over shortcuts, promoting deeper reasoning. T-GRPO marks a shift towards explicit temporal awareness in video reasoning models. **This potentially improves the model's ability to understand dynamic events and causal relationships within videos**. It enhances reasoning skills by leveraging temporal data.

#### Video-R1: Datasets
Based on the research paper, **Video-R1** introduces two datasets, **Video-R1-COT-165k** for SFT cold start and **Video-R1-260k** for RL training. These datasets contain a mixture of image and video data, strategically created to address the scarcity of high-quality video reasoning data. The image data trains the model on a **range of reasoning skills**, while the video data focuses on temporal reasoning. The larger Video-R1-260k dataset comprises general open-domain videos (44%), image data covering general QA, charts, OCR, math, knowledge, and spatial reasoning (6%-14% each). COT annotations are generated using Qwen2.5-VL-72B and filtered to ensure high quality. These datasets use rule-based reward design, leveraging multiple-choice, numerical QA, OCR, and free-form QA for precise reward signals. This ensures effective RL training and generalizability of models to diverse tasks.

#### Aha Moments
The concept of "Aha Moments" within a video reasoning model like Video-R1 signifies a pivotal shift from rote memorization to genuine understanding. These moments, characterized by a departure from expected answer paths, followed by introspection and eventual convergence on a more logically sound solution, highlight the model's capacity for self-reflection. This suggests that Video-R1 doesn't merely execute pre-programmed patterns but actively engages in internal feedback loops, re-examining evidence, and adjusting conclusions accordingly. **It marks a transition from a passive learner to an active problem-solver.** This ability to identify inconsistencies and revise interpretations mid-process is crucial for handling the complexities of video data, where temporal cues and multi-step inferences often require dynamic adjustments to initial assumptions. **The emergence of such behaviors is a testament to the efficacy of the reinforcement learning approach,** which incentivizes the model to not only find correct answers but also to develop more robust and adaptable reasoning strategies. This kind of adaptability is particularly valuable in scenarios with ambiguous temporal cues or intricate inference chains, pushing the model beyond superficial pattern recognition. **The presence of "aha moments" distinguishes Video-R1 from models that rely solely on pattern-matching, indicating a deeper level of cognitive processing and a greater potential for generalization.**

#### Reasoning Scale
While the paper doesn't explicitly use the term "Reasoning Scale," it implicitly addresses this concept through its exploration of reinforcement learning (RL) to enhance video reasoning in multimodal large language models (MLLMs). The work attempts to **scale up reasoning abilities** by introducing Video-R1, aiming to elicit more complex reasoning than typically seen in existing MLLMs focused on perception. The use of the T-GRPO algorithm and curated datasets (Video-R1-COT-165k, Video-R1-260k) are efforts to provide models with **diverse data** to support a broader reasoning spectrum. Video-R1's architecture allows for the development of more intricate reasoning. The **model's ability to achieve** higher accuracy in benchmarks such as VSI-bench, videoMMMU and the like shows its capacity to handle more complex reasoning. The paper tackles the limitations of existing methods and lays a **foundation for future models**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21776/x2.png)

> 🔼 Figure 2 shows the composition of the Video-R1-260k dataset used for training the Video-R1 model.  The dataset is a mixture of image and video data, categorized into six types: General Video (everyday scenarios), General Image (general question answering), Chart (reasoning over charts and graphs), OCR (text recognition from images), Math (math problem solving from images), and Spatial (spatial reasoning tasks).  The percentage of each data type within the Video-R1-260k dataset is visually represented in a pie chart.  This diverse dataset is designed to provide the model with a wide range of reasoning tasks and challenges, spanning various complexities and modalities.
> <details>
> <summary>read the caption</summary>
> Figure 2:  The data distribution of our Video-R1-260k dataset.
> </details>



![](https://arxiv.org/html/2503.21776/x3.png)

> 🔼 This figure showcases an example of Video-R1-7B's reasoning process on the MMVU benchmark.  The model is presented with a video and a question: 'Which move motion in the video loses the system energy?' The model's response includes step-by-step reasoning. It analyzes each of three depicted movements (pool, bowling, car crash), deducing that only the car crash involves a loss of system energy due to dissipation of kinetic energy. This demonstrates the model's capability to perform temporal reasoning and integrate visual and physics-based knowledge for logical deduction.  The model revisits and confirms its answer through multiple iterations of thought, highlighting a 'self-reflection reasoning' behavior. This multi-stage reasoning process and its explanation are captured and presented in the figure.
> <details>
> <summary>read the caption</summary>
> Figure 3:  An example of Video-R1-7B’s reasoning output on MMVU Benchmark.
> </details>



![](https://arxiv.org/html/2503.21776/x4.png)

> 🔼 This figure shows an example of Video-R1-7B's reasoning process on the VSI-Bench benchmark.  The task involves a robot navigation problem where the robot needs to reach a bathroom sink from a starting point. The model generates a chain of thought to determine the correct sequence of actions (turn right, go forward, turn left, go forward)  to reach the destination, demonstrating its ability to perform spatial and logical reasoning in a video context. The model demonstrates a self-reflection reasoning behavior in the process, showing its ability to revise its initial plan, identify inconsistencies, and ultimately reach a more accurate conclusion.
> <details>
> <summary>read the caption</summary>
> Figure 4:  An example of Video-R1-7B’s reasoning output on VSI-Bench.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21776/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21776/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}