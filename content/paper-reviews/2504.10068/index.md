---
title: "Mavors: Multi-granularity Video Representation for Multimodal Large Language Model"
summary: "Mavors: Multi-granularity video representation for multimodal large language model"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10068 {{< /keyword >}}
{{< keyword icon="writer" >}} Yang Shi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10068" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10068" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10068/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current MLLMs struggle with long videos, facing challenges in balancing computational efficiency and retaining fine-grained details. Existing methods like sparse sampling, low-resolution input, and token compression often lose important information, especially in videos with complex motion or varying resolutions. This leads to degraded performance in tasks requiring detailed temporal and spatial understanding. Therefore, there is a need to efficiently encode long videos while preserving critical details.



This paper introduces a framework that addresses these issues by encoding raw video content into latent representations using an Intra-chunk Vision Encoder (IVE) and an Inter-chunk Feature Aggregator (IFA). The IVE preserves spatial features, while the IFA establishes temporal coherence across video segments. It also unifies image and video understanding by treating images as single-frame videos. Experiments demonstrate that it maintains spatial fidelity and temporal continuity.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Mavors introduces a multi-granularity video representation that balances computational efficiency and fine-grained spatio-temporal pattern retention. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework uses an Intra-chunk Vision Encoder (IVE) and an Inter-chunk Feature Aggregator (IFA) to encode and aggregate video features. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show Mavors maintains spatial fidelity and temporal continuity, outperforming existing methods in spatio-temporal reasoning tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper matters because it tackles the crucial issue of **efficiently processing long videos in MLLMs** by balancing computational cost and information retention. By introducing a multi-granularity video representation, it opens new avenues for research in video understanding, especially for tasks requiring fine-grained spatio-temporal reasoning. This can **significantly impact applications** like video summarization, surveillance, and content analysis.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10068/x1.png)

> 🔼 Figure 1 compares four different video processing approaches used in long-context video understanding models. (a) shows sparse sampling, where only a few frames are selected, preserving high resolution but losing many details and temporal information. (b) depicts dense sampling with low resolution, which captures more temporal information but at the cost of significant spatial detail loss. (c) illustrates dense sampling with token compression, where key information is retained while losing finer details and resulting in hallucinations. (d) presents the Mavors approach, achieving a balance between spatial and temporal detail preservation by utilizing dense sampling with high resolution and chunk-level processing. While all methods perform similarly on the Video-MME benchmark, Mavors demonstrates improved captioning capabilities for complex scenes, as indicated by the correct (green) and incorrect (red) captions provided in the example.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Sparse sampling, which remains the high resolution but loses many details in the unsampled frames; (b) Dense sampling with low resolution, which understands the videos from a large number of frames but would confuse on the low-resolution content; (c) Dense sampling with token compression, which keeps the key tokens on the main characters but suffers from hallucinations owing to the missing of visual tokens; (d) Our Mavors, balancing the demands of resolution and number of frames. Though all these approaches could perform similarly on Video-MME, Mavors significantly improves the caption capability on complex scenes. Note that the words in red and green denote incorrect and correct details, respectively.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.3.1">MMWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.4.1">PerceptionTest</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.5.1">Video-MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.6.1">MLVU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.7.1">MVBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.8.1">EventHallusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.9.1">TempCompass</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.10.1">VinoGround</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.1.1.1.11"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.11.1">DREAM-1K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.1.2.2.1"><span class="ltx_text" id="S5.T1.2.1.2.2.1.1" style="color:#BFBFBF;">GPT-4o-20240806</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.2"><span class="ltx_text" id="S5.T1.2.1.2.2.2.1" style="color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.3"><span class="ltx_text" id="S5.T1.2.1.2.2.3.1" style="color:#BFBFBF;">62.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.4"><span class="ltx_text" id="S5.T1.2.1.2.2.4.1" style="color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.5"><span class="ltx_text" id="S5.T1.2.1.2.2.5.1" style="color:#BFBFBF;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.6"><span class="ltx_text" id="S5.T1.2.1.2.2.6.1" style="color:#BFBFBF;">64.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.7"><span class="ltx_text" id="S5.T1.2.1.2.2.7.1" style="color:#BFBFBF;">64.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.8"><span class="ltx_text" id="S5.T1.2.1.2.2.8.1" style="color:#BFBFBF;">92.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.9"><span class="ltx_text" id="S5.T1.2.1.2.2.9.1" style="color:#BFBFBF;">73.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.10"><span class="ltx_text" id="S5.T1.2.1.2.2.10.1" style="color:#BFBFBF;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.2.2.11"><span class="ltx_text" id="S5.T1.2.1.2.2.11.1" style="color:#BFBFBF;">39.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.3.3.1"><span class="ltx_text" id="S5.T1.2.1.3.3.1.1" style="color:#BFBFBF;">Gemini-1.5-Pro</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.2"><span class="ltx_text" id="S5.T1.2.1.3.3.2.1" style="color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.3"><span class="ltx_text" id="S5.T1.2.1.3.3.3.1" style="color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.4"><span class="ltx_text" id="S5.T1.2.1.3.3.4.1" style="color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.5"><span class="ltx_text" id="S5.T1.2.1.3.3.5.1" style="color:#BFBFBF;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.6"><span class="ltx_text" id="S5.T1.2.1.3.3.6.1" style="color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.7"><span class="ltx_text" id="S5.T1.2.1.3.3.7.1" style="color:#BFBFBF;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.8"><span class="ltx_text" id="S5.T1.2.1.3.3.8.1" style="color:#BFBFBF;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.9"><span class="ltx_text" id="S5.T1.2.1.3.3.9.1" style="color:#BFBFBF;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.10"><span class="ltx_text" id="S5.T1.2.1.3.3.10.1" style="color:#BFBFBF;">22.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.3.3.11"><span class="ltx_text" id="S5.T1.2.1.3.3.11.1" style="color:#BFBFBF;">36.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.1.4.4.1">LLaVA-OneVision</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.3">59.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.4">56.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.5">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.6">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.7">56.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.8">64.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.9">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.10">26.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.4.4.11">31.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.5.5.1">InternVL 2.5</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.2">8B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.3">62.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.4">65.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.5">64.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.6">67.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.7">72.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.8">64.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.9">71.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.10">24.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.5.5.11">29.7</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.6.6.1">NVILA</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.2">8B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.3">55.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.4">55.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.5">64.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.6">70.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.7">68.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.8">69.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.9">66.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.10">20.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.6.6.11">26.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.7.7.1">LLaVA-Video</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.3">60.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.4">67.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.5">63.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.6">67.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.7">58.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.8">70.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.9">65.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.10">26.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.7.7.11">33.3</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.8.8.1">Oryx-1.5</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.3">58.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.4">70.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.5">59.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.6">63.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.7">67.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.8">61.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.9">60.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.10">22.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.8.8.11">32.5</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.9.9.1">Qwen2.5-VL</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.3">61.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.4">66.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.5">65.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.6">70.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.7">69.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.8">66.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.9">71.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.10">34.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.9.9.11">32.6</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.10.10.1">VideoLLaMA3</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.3">56.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.4">72.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.5"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.10.10.5.1">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.6">73.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.7">69.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.8">63.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.9">68.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.10">31.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.10.10.11">30.5</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.11.11.1">VideoChat-Flash</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.3">57.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.4"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.11.11.4.1">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.5">65.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.6"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.11.11.6.1">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.7"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.11.11.7.1">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.8">66.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.9">70.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.10">33.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.11.11.11">29.5</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.12.12.1">Slow-fast MLLM</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.3">58.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.4">69.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.5">60.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.6">60.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.7">68.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.8">67.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.9">69.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.10">27.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.12.12.11">33.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.2.1.13.13.1"><span class="ltx_text" id="S5.T1.2.1.13.13.1.1" style="color:#BFBFBF;">Qwen2.5-VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.2"><span class="ltx_text" id="S5.T1.2.1.13.13.2.1" style="color:#BFBFBF;">72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.3"><span class="ltx_text" id="S5.T1.2.1.13.13.3.1" style="color:#BFBFBF;">73.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.4"><span class="ltx_text" id="S5.T1.2.1.13.13.4.1" style="color:#BFBFBF;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.5"><span class="ltx_text" id="S5.T1.2.1.13.13.5.1" style="color:#BFBFBF;">73.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.6"><span class="ltx_text" id="S5.T1.2.1.13.13.6.1" style="color:#BFBFBF;">76.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.7"><span class="ltx_text" id="S5.T1.2.1.13.13.7.1" style="color:#BFBFBF;">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.8"><span class="ltx_text" id="S5.T1.2.1.13.13.8.1" style="color:#BFBFBF;">76.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.9"><span class="ltx_text" id="S5.T1.2.1.13.13.9.1" style="color:#BFBFBF;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.10"><span class="ltx_text" id="S5.T1.2.1.13.13.10.1" style="color:#BFBFBF;">58.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.1.13.13.11"><span class="ltx_text" id="S5.T1.2.1.13.13.11.1" style="color:#BFBFBF;">35.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.1.14.14.1"><span class="ltx_text" id="S5.T1.2.1.14.14.1.1" style="color:#BFBFBF;">InternVL 2.5</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.2"><span class="ltx_text" id="S5.T1.2.1.14.14.2.1" style="color:#BFBFBF;">78B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.3"><span class="ltx_text" id="S5.T1.2.1.14.14.3.1" style="color:#BFBFBF;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.4"><span class="ltx_text" id="S5.T1.2.1.14.14.4.1" style="color:#BFBFBF;">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.5"><span class="ltx_text" id="S5.T1.2.1.14.14.5.1" style="color:#BFBFBF;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.6"><span class="ltx_text" id="S5.T1.2.1.14.14.6.1" style="color:#BFBFBF;">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.7"><span class="ltx_text" id="S5.T1.2.1.14.14.7.1" style="color:#BFBFBF;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.8"><span class="ltx_text" id="S5.T1.2.1.14.14.8.1" style="color:#BFBFBF;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.9"><span class="ltx_text" id="S5.T1.2.1.14.14.9.1" style="color:#BFBFBF;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.10"><span class="ltx_text" id="S5.T1.2.1.14.14.10.1" style="color:#BFBFBF;">38.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.1.14.14.11"><span class="ltx_text" id="S5.T1.2.1.14.14.11.1" style="color:#BFBFBF;">30.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.1">Mavors (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.3"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.15.15.3.1">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.4">70.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.5">65.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.6">69.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.7">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.8"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.15.15.8.1">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.9"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.15.15.9.1">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.10"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.15.15.10.1">36.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.2.1.15.15.11"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.15.15.11.1">39.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of Mavors' performance against various state-of-the-art video understanding models across multiple benchmark datasets.  It shows the scores achieved by each model on tasks such as MMWorld, PerceptionTest, Video-MME, MLVU, MVBench, EventHallusion, TempCompass, VinoGround, and DREAM-1K.  The scores reflect each model's ability to perform video question answering, temporal understanding, event reasoning, and captioning. Note that most scores are directly taken from the original publications; any reproduced scores strictly follow the official benchmark guidelines.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance on video benchmarks. Most of the scores are from their original studies. The others are reproduced following the official benchmark recommendation.
> </details>





### In-depth insights


#### Multi-Granularity
Multi-granularity representation offers a powerful approach to capturing information across diverse scales, which is particularly relevant in complex domains like video understanding. **This approach acknowledges that a single level of abstraction is insufficient** to fully characterize the content and dynamics. In video analysis, this could involve representing scenes at a coarse level (e.g., identifying the overall setting and main actors), a medium level (e.g., tracking object movements and interactions), and a fine level (e.g., recognizing subtle facial expressions or minute changes in object positions). By integrating information from these different granularities, a more holistic and nuanced understanding can be achieved. The challenge lies in effectively fusing these multi-scale features, ensuring that relevant information from each level is appropriately weighted and combined, while avoiding redundancy or conflict. **This fusion process often involves sophisticated attention mechanisms or hierarchical architectures.** A multi-granularity strategy enables MLLMs to effectively reason across vastly different levels of detail, handling tasks that demand both a broad contextual awareness and a capacity for detailed observation. **Ultimately, the success of multi-granularity depends on a well-designed framework that can seamlessly integrate and leverage information across scales, leading to more robust and accurate representations.**

#### Intra/Inter Chunks
**Intra-chunk processing focuses on capturing local context within video segments**, using methods like 3D convolutions and vision transformers to retain high-resolution spatial features. **Inter-chunk aggregation then addresses the challenge of establishing temporal coherence across these segments**, often through transformer-based models with techniques like chunk-level rotary position encodings. The goal is to effectively represent both local details and global dependencies, balancing computational efficiency with information retention. This architecture captures fine-grained details and spatio-temporal reasoning.

#### Video-LLM Mavors
While "Video-LLM Mavors" wasn't explicitly a heading, we can infer its significance based on the paper's content. It represents a novel approach to video understanding within multimodal large language models (MLLMs). The core idea is to improve how MLLMs process and interpret long-context videos, addressing limitations of existing methods like sparse sampling or token compression. The Mavors framework likely employs a multi-granularity video representation, efficiently encoding both fine-grained spatial details and temporal dynamics. Key components would include an intra-chunk vision encoder (IVE) to capture high-resolution spatial features and an inter-chunk feature aggregator (IFA) to establish temporal coherence across video segments. **The system likely uses techniques such as 3D convolutions, Vision Transformers, and transformer-based dependency modeling with chunk-level rotary position encodings to achieve this.** A crucial aspect is balancing computational efficiency with information retention, enabling Mavors to handle long videos with complex motion and varying resolutions. This suggests that Mavors aims to outperform existing methods in tasks requiring detailed spatio-temporal reasoning. **The name implies a system that guides and navigates through video content with multi-granularity awareness.** It balances demands of resolution and number of frames to improve caption capability on complex scenes.

#### C-ROPE Ablation
Ablation studies on C-ROPE are crucial to understanding its contribution to the model's performance. Replacing C-ROPE with standard RoPE reveals that C-ROPE outperforms standard RoPE, especially on video understanding tasks, showcasing C-ROPE's effectiveness in temporal modeling within the IFA architecture. These findings emphasize the importance of C-ROPE for capturing and leveraging temporal information in video data. It enhances the model's ability to differentiate intra-chunk from inter-chunk tokens. Ablating C-ROPE is vital for assessing its impact on overall video understanding capabilities.

#### Token Impacts
The exploration of **token impacts** is crucial for understanding how various strategies affect the performance of large language models, especially in multimodal contexts. **Token compression**, while offering efficiency gains, presents a trade-off with information retention, potentially leading to **hallucinations** or a lack of detail in generated captions. The analysis reveals that aggressive compression can compromise the model's ability to accurately describe complex scenes or follow intricate instructions, impacting tasks requiring fine-grained understanding. Balancing compression ratios with the preservation of essential visual and textual cues is vital for optimizing model performance across different applications, particularly where nuanced details and accurate contextualization are paramount.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10068/x2.png)

> 🔼 This figure shows the results of the Video-MME benchmark. Video-MME is a multiple-choice question answering task based on video content. It requires a good understanding of the temporal relationships between different video frames. The results show the performance of different video large language models (LLMs) in answering questions based on video content. The methods being compared include sparse sampling, dense sampling with low resolution, dense sampling with token compression, and the proposed multi-granularity video representation. Mavors outperforms other methods, showing the importance of preserving both spatial fidelity and temporal coherence.
> <details>
> <summary>read the caption</summary>
> (a) Video-MME
> </details>



![](https://arxiv.org/html/2504.10068/x3.png)

> 🔼 The figure shows the impact of the resolution of frames on the performance of two video MLLMs, namely Qwen2.5-VL-7B and Oryx-1.5-7B, across two benchmark datasets: Video-MME and DREAM-1K.  The x-axis represents the resolution of the frames, and the y-axis represents the score achieved by each model on each benchmark.  The graph indicates that higher resolution frames lead to improved performance, particularly on the DREAM-1K dataset, which involves open-ended video captioning requiring a detailed understanding of the video content.
> <details>
> <summary>read the caption</summary>
> (b) Dream1K
> </details>



![](https://arxiv.org/html/2504.10068/x4.png)

> 🔼 This figure shows the effect of the number of frames in a video on the performance of two video LLMs (Qwen2.5-VL-7B and Oryx-1.5-7B) on two video understanding benchmarks: Video-MME and DREAM-1K.  The x-axis represents the number of frames, and the y-axis represents the score on each benchmark.  The plot demonstrates that increasing the number of frames generally improves the performance on both benchmarks, particularly on DREAM-1K which involves open-ended video captioning requiring finer-grained spatiotemporal understanding. Video-MME shows less improvement with increasing frames, suggesting that understanding fine spatial details is not as critical for that specific task.
> <details>
> <summary>read the caption</summary>
> Figure 2: The impact of the number of frames (720P).
> </details>



![](https://arxiv.org/html/2504.10068/x5.png)

> 🔼 The figure shows the performance of different video understanding models on the Video-MME benchmark.  Video-MME is a multiple-choice question answering benchmark that tests the ability of models to understand long videos by answering questions about the events depicted. The figure compares Mavors to other methods, including sparse sampling, dense sampling with low-resolution, and token compression, highlighting that Mavors achieves superior performance by balancing computational efficiency and retaining fine-grained spatio-temporal details.
> <details>
> <summary>read the caption</summary>
> (a) Video-MME
> </details>



![](https://arxiv.org/html/2504.10068/x6.png)

> 🔼 The figure shows the impact of frame resolution on the performance of two video MLLMs (Qwen2.5-VL-7B and Oryx-1.5-7B) for the DREAM-1K benchmark.  DREAM-1K is an open-ended video captioning task that requires detailed descriptions of the main events.  The graph shows that as the frame resolution increases, the performance of both models significantly improves on this benchmark. This indicates that high-resolution inputs are important for accurately capturing and describing detailed events within the videos.
> <details>
> <summary>read the caption</summary>
> (b) Dream1K
> </details>



![](https://arxiv.org/html/2504.10068/x7.png)

> 🔼 This figure displays the performance of two video-based large language models (Qwen2.5-VL-7B and Oryx-1.5-7B) on two video understanding benchmarks (Video-MME and DREAM-1K) at different resolutions while maintaining a fixed number of frames (64).  The x-axis represents the resolution of the video frames, and the y-axis represents the corresponding benchmark scores. The plot visualizes how the models' performance changes with varying resolutions, illustrating the impact of resolution on the models' ability to capture spatial details. This is particularly important for tasks that require a nuanced understanding of visual details within the video.
> <details>
> <summary>read the caption</summary>
> Figure 3: The impact of the resolution of frames (64 frames).
> </details>



![](https://arxiv.org/html/2504.10068/extracted/6359558/figures/mm_training_stage_v4.png)

> 🔼 This figure presents a detailed illustration of the Mavors architecture, highlighting its core components and workflow.  Mavors processes raw video content (or images treated as single-frame videos) in a two-tier approach.  First, an Intra-chunk Vision Encoder (IVE) extracts high-resolution spatial features from localized video segments using 3D convolutions and Vision Transformers. These features are then passed to an Inter-chunk Feature Aggregator (IFA) which uses temporal transformers with chunk-level rotary position encodings (C-ROPE) to establish temporal coherence across chunks. The unified visual representation is then projected to a unified dimension (via an MLP Projector) before entering the Language Model (LLM) for final understanding. The figure also shows the preprocessing steps for both video and image inputs, including sub-image division for images, and the use of chunk-level processing for videos.
> <details>
> <summary>read the caption</summary>
> Figure 4: The architecture of Mavors.
> </details>



![](https://arxiv.org/html/2504.10068/x8.png)

> 🔼 Mavors processes images and videos with varying resolutions by dynamically resizing them to match the input resolution of the Vision Transformer (ViT) used in the model.  This maintains the original aspect ratio of the images or video frames, avoiding distortion from fixed-shape resizing. The figure illustrates the process, starting with the original image and proceeding through steps of thumbnail creation, optimal partitioning into sub-images, flattening of the sub-images into chunks, and finally duplicating the sub-images to form the final input. This dynamic resolution strategy allows Mavors to handle high-resolution images and videos efficiently while preserving spatial details and avoiding information loss.
> <details>
> <summary>read the caption</summary>
> Figure 5: The dynamic resolution strategy in Mavors.
> </details>



![](https://arxiv.org/html/2504.10068/x9.png)

> 🔼 This figure illustrates the multi-stage training process of the Mavors model. Stage 1 focuses on modality alignment, aligning the semantic spaces of the vision encoder and the LLM. Stage 1.5 enhances temporal understanding by training on various computer vision tasks. Stage 2 performs multitask instruction tuning, adapting the model to diverse multimodal tasks. Finally, Stage 3 refines the model using direct preference optimization (DPO), addressing issues like overly concise responses or inappropriate generation terminations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Training paradigm of different stages.
> </details>



![](https://arxiv.org/html/2504.10068/x10.png)

> 🔼 This figure displays the impact of varying the number of frames within each video chunk on the performance of the Mavors model across six different benchmark tasks.  The x-axis represents the different benchmark tasks (MMMU, MathVista, CapsBench, Video-MME, VinoGround, and DREAM-1K), and the y-axis shows the corresponding performance scores.  Four different settings for the number of frames (F) per chunk are compared: F=4, F=8, F=16, and F=32.  The bars visually represent the performance for each task and frame setting, allowing for a direct comparison of how the choice of F affects performance on various benchmark tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Performance with different numbers of frames in a video chunk.
> </details>



![](https://arxiv.org/html/2504.10068/x11.png)

> 🔼 This figure demonstrates the effect of different token compression ratios on the performance of the Mavors model.  The x-axis represents the compression ratio, ranging from 0% (no compression) to around 75%.  The y-axis shows the model's scores on various benchmark tasks (Video-MME, MLVU, DREAM-1K). The lines in the graph display how performance varies across different tasks under various compression levels. The graph shows that the performance on video question answering (Video-MME) is quite stable, even under high compression ratios. However, video captioning tasks (MLVU, DREAM-1K) show a more significant performance decline as the compression rate increases, suggesting that token compression may compromise the model's ability to generate detailed captions, particularly at higher compression rates.
> <details>
> <summary>read the caption</summary>
> Figure 8: Performance with different token compression ratios.
> </details>



![](https://arxiv.org/html/2504.10068/x12.png)

> 🔼 This figure shows the training loss curves for the Mavors model across its three training stages: Modality Alignment, Temporal Understanding Enhancement, and Instruction Tuning & DPO Training.  The x-axis represents the training steps, and the y-axis represents the loss value. The plot visualizes how the loss decreases over the course of training within each stage, indicating model convergence and performance improvement. Observing the loss curves provides insight into the effectiveness of each training stage in optimizing the model and suggests areas where training might be further refined.
> <details>
> <summary>read the caption</summary>
> Figure 9: The dynamic of training losses across different stages for Mavors.
> </details>



![](https://arxiv.org/html/2504.10068/x13.png)

> 🔼 Figure 10 presents a qualitative comparison of video captioning results between Qwen2.5-VL-7B and Mavors-7B on a complex scene from the DREAM-1K benchmark.  The figure highlights Mavors-7B's superior ability to capture fine-grained details and generate accurate captions, whereas Qwen2.5-VL-7B misses crucial elements and generates less detailed, and in some cases, inaccurate descriptions.  Specifically, words in red indicate errors or omissions by Qwen2.5-VL-7B, while words in green highlight details correctly captured only by Mavors-7B.
> <details>
> <summary>read the caption</summary>
> Figure 10: Comparison of generated video captions from Qwen2.5-VL-7B and Mavors-7B.
> </details>



![](https://arxiv.org/html/2504.10068/x14.png)

> 🔼 This figure shows the results of the Needle in a Haystack (NIAH) test performed on the Mavors model.  The NIAH test evaluates the model's ability to accurately identify a target frame (the 'needle') when it is inserted into various video chunks of different lengths. The x-axis represents the index of the chunk where the needle is placed, while the y-axis represents the total number of chunks in the video. The heatmap illustrates the model's accuracy; darker colors indicate higher accuracy. The test demonstrates the model's ability to maintain accuracy even as the video length increases, up to 60 chunks (or 960 frames).
> <details>
> <summary>read the caption</summary>
> Figure 11: Results of NIAH of Mavors with at most 60 video chunks.
> </details>



![](https://arxiv.org/html/2504.10068/x15.png)

> 🔼 Figure 12 presents a comparison of image captions generated by two different large language models (LLMs): Qwen2.5-VL-7B and Mavors-7B.  Two example images are shown, each with captions generated by both models.  The captions highlight Mavors-7B's superior performance in generating more detailed and accurate descriptions.  Specifically, text in red indicates errors or omissions in the Qwen2.5-VL-7B captions, while text in green highlights details that are only present in the Mavors-7B captions. This demonstrates Mavors-7B's improved ability to identify proper nouns, capture nuanced details, and understand human interactions and emotions within the images.
> <details>
> <summary>read the caption</summary>
> Figure 12: Comparison of the generated image captions from Qwen2.5-VL-7B and Mavors-7B. The text in red contains wrong content, and the text in green marks the detailed descriptions only appear in Mavors.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.3.1">MMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.4.1">MathVista</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.5.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.6.1">CapsBench</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.2.1.2.2.1"><span class="ltx_text" id="S5.T2.2.1.2.2.1.1" style="color:#BFBFBF;">GPT-4o-20240806</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.2.2"><span class="ltx_text" id="S5.T2.2.1.2.2.2.1" style="color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.2.3"><span class="ltx_text" id="S5.T2.2.1.2.2.3.1" style="color:#BFBFBF;">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.2.4"><span class="ltx_text" id="S5.T2.2.1.2.2.4.1" style="color:#BFBFBF;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.2.5"><span class="ltx_text" id="S5.T2.2.1.2.2.5.1" style="color:#BFBFBF;">84.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.2.6"><span class="ltx_text" id="S5.T2.2.1.2.2.6.1" style="color:#BFBFBF;">67.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.1.3.3.1"><span class="ltx_text" id="S5.T2.2.1.3.3.1.1" style="color:#BFBFBF;">Gemini-1.5-Pro</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.3.2"><span class="ltx_text" id="S5.T2.2.1.3.3.2.1" style="color:#BFBFBF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.3.3"><span class="ltx_text" id="S5.T2.2.1.3.3.3.1" style="color:#BFBFBF;">60.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.3.4"><span class="ltx_text" id="S5.T2.2.1.3.3.4.1" style="color:#BFBFBF;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.3.5"><span class="ltx_text" id="S5.T2.2.1.3.3.5.1" style="color:#BFBFBF;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.3.6"><span class="ltx_text" id="S5.T2.2.1.3.3.6.1" style="color:#BFBFBF;">71.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.2.1.4.4.1">CogVLM2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.4.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.4.3">42.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.4.4">38.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.4.5">73.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.4.6">50.9</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.1.5.5.1">GLM-4V</th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.5.2">9B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.5.3">46.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.5.4">52.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.5.5">71.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.5.6">61.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.1.6.6.1">LLaVA-OneVision</th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.6.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.6.3">47.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.6.4">62.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.6.5">82.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.6.6">57.4</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.1.7.7.1">InternVL 2.5</th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.7.2">8B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.7.3">56.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.7.4">64.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.7.7.5.1">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.7.6">66.5</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.1.8.8.1">Qwen2.5-VL</th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.8.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.8.3"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.3.1">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.8.4">68.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.8.5">84.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.8.6">64.9</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.2.1.9.9.1"><span class="ltx_text" id="S5.T2.2.1.9.9.1.1" style="color:#BFBFBF;">DeepSeek-VL2</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.9.2"><span class="ltx_text" id="S5.T2.2.1.9.9.2.1" style="color:#BFBFBF;">27B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.9.3"><span class="ltx_text" id="S5.T2.2.1.9.9.3.1" style="color:#BFBFBF;">54.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.9.4"><span class="ltx_text" id="S5.T2.2.1.9.9.4.1" style="color:#BFBFBF;">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.9.5"><span class="ltx_text" id="S5.T2.2.1.9.9.5.1" style="color:#BFBFBF;">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.9.6"><span class="ltx_text" id="S5.T2.2.1.9.9.6.1" style="color:#BFBFBF;">61.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.1.10.10.1"><span class="ltx_text" id="S5.T2.2.1.10.10.1.1" style="color:#BFBFBF;">Qwen2.5-VL</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.10.2"><span class="ltx_text" id="S5.T2.2.1.10.10.2.1" style="color:#BFBFBF;">72B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.10.3"><span class="ltx_text" id="S5.T2.2.1.10.10.3.1" style="color:#BFBFBF;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.10.4"><span class="ltx_text" id="S5.T2.2.1.10.10.4.1" style="color:#BFBFBF;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.10.5"><span class="ltx_text" id="S5.T2.2.1.10.10.5.1" style="color:#BFBFBF;">88.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.10.6"><span class="ltx_text" id="S5.T2.2.1.10.10.6.1" style="color:#BFBFBF;">70.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.1.11.11.1"><span class="ltx_text" id="S5.T2.2.1.11.11.1.1" style="color:#BFBFBF;">InternVL 2.5</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.11.2"><span class="ltx_text" id="S5.T2.2.1.11.11.2.1" style="color:#BFBFBF;">78B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.11.3"><span class="ltx_text" id="S5.T2.2.1.11.11.3.1" style="color:#BFBFBF;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.11.4"><span class="ltx_text" id="S5.T2.2.1.11.11.4.1" style="color:#BFBFBF;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.11.5"><span class="ltx_text" id="S5.T2.2.1.11.11.5.1" style="color:#BFBFBF;">89.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.11.6"><span class="ltx_text" id="S5.T2.2.1.11.11.6.1" style="color:#BFBFBF;">68.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T2.2.1.12.12.1">Mavors (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.1.12.12.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.1.12.12.3">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.1.12.12.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.12.12.4.1">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.1.12.12.5">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.2.1.12.12.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.12.12.6.1">75.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various models on several image understanding benchmarks.  The benchmarks evaluate different aspects of image comprehension, such as object recognition, visual reasoning, and captioning. The results show the quantitative scores achieved by each model on these benchmarks, providing a comparison of their capabilities in understanding and describing images.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance on image benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.1.1.1.1"><math alttext="L_{\text{Inter}}" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><msub id="S5.T3.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.cmml"><mi id="S5.T3.1.1.1.1.m1.1.1.2" xref="S5.T3.1.1.1.1.m1.1.1.2.cmml">L</mi><mtext class="ltx_mathvariant_bold" id="S5.T3.1.1.1.1.m1.1.1.3" xref="S5.T3.1.1.1.1.m1.1.1.3a.cmml">Inter</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T3.1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.1.1.1.1.m1.1.1.2">𝐿</ci><ci id="S5.T3.1.1.1.1.m1.1.1.3a.cmml" xref="S5.T3.1.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T3.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S5.T3.1.1.1.1.m1.1.1.3">Inter</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">L_{\text{Inter}}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">italic_L start_POSTSUBSCRIPT Inter end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.2.1">MMMU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.3.1">MathVista</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.4.1">CapsBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.5.1">Video-MME</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.6.1">VinoGround</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.7.1">DREAM-1K</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.2.1.1">0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.2">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.3">63.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.4">51.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.5">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.6">27.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.7">30.2</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.3.2.1">1</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.2">51.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.3">63.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.4">50.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.5">60.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.6">30.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.7">32.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.4.3.1">3</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.2">52.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.3">62.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.4">50.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.5">61.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.6">31.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.7">33.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.1.1.5.4.1">5</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.5.4.2">49.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.5.4.3">61.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.5.4.4">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.5.4.5">61.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.5.4.6">31.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.5.4.7">33.6</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of varying the number of Transformer layers within the Inter-chunk Feature Aggregator (IFA) module on the overall performance of the Mavors model.  Different configurations are evaluated across multiple image and video understanding benchmarks to determine the optimal number of layers for balancing performance and computational cost.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation on layers of Transformers in IFA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.1.1">RoPE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.2.1">MMMU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.3.1">MathVista</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.4.1">CapsBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.5.1">Video-MME</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.6.1">VinoGround</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.7.1">DREAM-1K</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.1.2.1.1">Standard</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.2.1.2">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.2.1.3">62.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.2.1.4">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.2.1.5">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.2.1.6">30.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.2.1.7">32.9</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.1.3.2.1">C-RoPE</th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.3.2.2">52.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.3.2.3">62.6</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.3.2.4">50.6</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.3.2.5">61.1</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.3.2.6">31.1</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.3.2.7">33.8</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.4.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S5.T4.2.1.4.3.1"></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.4.3.2">(+0.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.4.3.3">(+0.0)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.4.3.4">(-0.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.4.3.5">(+0.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.4.3.6">(+0.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.4.3.7">(+0.9)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of using Chunk-level Rotary Position Encoding (C-ROPE) in the Inter-chunk Feature Aggregator (IFA) module of the Mavors model. It compares the model's performance on various image and video understanding benchmarks when using C-ROPE against a baseline using standard Rotary Position Embedding (ROPE).  The metrics used to evaluate performance include MMMU, MathVista, CapsBench, Video-MME, VinoGround, and DREAM-1K.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on C-RoPE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.1.1">Stage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.2.1">MMMU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.3.1">CapsBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.4.1">Video-MME</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.5.1">DREAM-1K</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.1.2.1.1">Stage 1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.1.2">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.1.3">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.1.4">48.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.1.5">23.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.1.3.2.1">Stage 1.5</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.3.2.2">47.3</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.3.2.3">62.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.3.2.4">53.9</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.3.2.5">26.3</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.1.4.3.1">Stage 2</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.3.2">53.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.3.3">73.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.3.4">65.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.3.5">38.9</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.2.1.5.4.1">DPO</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.5.4.2">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.5.4.3">75.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.5.4.4">65.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.5.4.5">39.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Mavors model at different training stages on four benchmark datasets: MMMU (image understanding), CapsBench (image captioning), Video-MME (video question answering), and DREAM-1K (video captioning).  It shows the performance improvement across the training stages (Stage 1, Stage 1.5, Stage 2, and DPO), demonstrating the effectiveness of the multi-stage training paradigm.
> <details>
> <summary>read the caption</summary>
> Table 5: Results of different training stages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S0.T6.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S0.T6.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.1.1.1"><span class="ltx_text" id="S0.T6.2.1.1.1.1.1" style="font-size:144%;">Task</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.1.1.2.1">
<span class="ltx_p" id="S0.T6.2.1.1.1.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.1.1.2.1.1.1" style="font-size:144%;">Dataset</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" colspan="2" id="S0.T6.2.1.2.2.1"><span class="ltx_text" id="S0.T6.2.1.2.2.1.1" style="font-size:144%;">Stage 1 Datasets</span></th>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.3.3.1"><span class="ltx_text" id="S0.T6.2.1.3.3.1.1" style="font-size:144%;">Image Caption</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.3.3.2.1">
<span class="ltx_p" id="S0.T6.2.1.3.3.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.1" style="font-size:144%;">LAION (EN 6.7M, ZH 3.2M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib81" title=""><span class="ltx_text" style="font-size:90%;">81</span></a><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.4" style="font-size:144%;">, Conceptual Captions (7.3M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.7" style="font-size:144%;">, SBU (0.8M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.9.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.10" style="font-size:144%;">, COYO (11M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.11.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.12.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.13" style="font-size:144%;">, WuKong (2.9M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.14.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.15.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.16" style="font-size:144%;">, LAION COCO (16M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.17.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.18.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.19" style="font-size:144%;">, OMEGA Image Caption (79M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.20.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S0.T6.2.1.3.3.2.1.1.21.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.4.4.1"><span class="ltx_text" id="S0.T6.2.1.4.4.1.1" style="font-size:144%;">Video Caption</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.4.4.2.1">
<span class="ltx_p" id="S0.T6.2.1.4.4.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.1" style="font-size:144%;">InternVid-10M-FLT (1.6M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.4" style="font-size:144%;">, Panda-70M (0.9M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.7" style="font-size:144%;">, OMEGA Video Caption (4M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S0.T6.2.1.4.4.2.1.1.9.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" colspan="2" id="S0.T6.2.1.5.5.1"><span class="ltx_text" id="S0.T6.2.1.5.5.1.1" style="font-size:144%;">Stage 1.5 Datasets</span></th>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.6.6.1"><span class="ltx_text" id="S0.T6.2.1.6.6.1.1" style="font-size:144%;">Image Caption</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.6.6.2.1">
<span class="ltx_p" id="S0.T6.2.1.6.6.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.1" style="font-size:144%;">Met-meme </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib107" title=""><span class="ltx_text" style="font-size:90%;">107</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.4" style="font-size:144%;">, PD12M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.7" style="font-size:144%;">, dalle3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.9.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.10" style="font-size:144%;">, GBC10M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.11.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.12.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.13" style="font-size:144%;">, DenseFusion-1M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.14.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.15.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.16" style="font-size:144%;">, GameBunny </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.17.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.18.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.19" style="font-size:144%;">, MERMAID </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.20.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.21.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.22" style="font-size:144%;">, CC12M (1M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.23.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.24.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.25" style="font-size:144%;">, BLIP3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.26.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.27.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.28" style="font-size:144%;">, AllSeeingV2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.29.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib100" title=""><span class="ltx_text" style="font-size:90%;">100</span></a><span class="ltx_text" id="S0.T6.2.1.6.6.2.1.1.30.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.7.7.1"><span class="ltx_text" id="S0.T6.2.1.7.7.1.1" style="font-size:144%;">Video Caption</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.7.7.2.1">
<span class="ltx_p" id="S0.T6.2.1.7.7.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.1" style="font-size:144%;">ChronoMagic </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib113" title=""><span class="ltx_text" style="font-size:90%;">113</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.4" style="font-size:144%;">, VideoChatGPT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.7" style="font-size:144%;">, YouCook2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib127" title=""><span class="ltx_text" style="font-size:90%;">127</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.9.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.10" style="font-size:144%;">, CelebV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.11.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib111" title=""><span class="ltx_text" style="font-size:90%;">111</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.12.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.13" style="font-size:144%;">, SthSthV2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.14.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.15.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.16" style="font-size:144%;">, MiraData </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.17.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.18.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.19" style="font-size:144%;">, Hacs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.20.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.21.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.22" style="font-size:144%;">, OpenVid-1M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.23.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.24.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.25" style="font-size:144%;">, Kinetics_700 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.26.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.27.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.28" style="font-size:144%;">, ShareGPT4Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.29.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.30.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.31" style="font-size:144%;">, Vript </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.32.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib109" title=""><span class="ltx_text" style="font-size:90%;">109</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.33.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.34" style="font-size:144%;">, Shot2Story </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.35.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.36.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.37" style="font-size:144%;">, ShareGemini </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.38.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a><span class="ltx_text" id="S0.T6.2.1.7.7.2.1.1.39.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.8.8.1"><span class="ltx_text" id="S0.T6.2.1.8.8.1.1" style="font-size:144%;">Question Answering</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.8.8.2.1">
<span class="ltx_p" id="S0.T6.2.1.8.8.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.8.8.2.1.1.1" style="font-size:144%;">MMDU </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.8.8.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S0.T6.2.1.8.8.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.8.8.2.1.1.4" style="font-size:144%;">, MMiT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.8.8.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a><span class="ltx_text" id="S0.T6.2.1.8.8.2.1.1.6.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.9.9.1"><span class="ltx_text" id="S0.T6.2.1.9.9.1.1" style="font-size:144%;">Knowledge</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.9.9.2.1">
<span class="ltx_p" id="S0.T6.2.1.9.9.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.1" style="font-size:144%;">Wikipedia </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.4" style="font-size:144%;">, Wikimedia </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.7" style="font-size:144%;">, WIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="S0.T6.2.1.9.9.2.1.1.9.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.10.10.1"><span class="ltx_text" id="S0.T6.2.1.10.10.1.1" style="font-size:144%;">Code</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.10.10.2.1">
<span class="ltx_p" id="S0.T6.2.1.10.10.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.10.10.2.1.1.1" style="font-size:144%;">WebSight </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.10.10.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S0.T6.2.1.10.10.2.1.1.3.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.11.11.1"><span class="ltx_text" id="S0.T6.2.1.11.11.1.1" style="font-size:144%;">OCR</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.11.11.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.11.11.2.1">
<span class="ltx_p" id="S0.T6.2.1.11.11.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.1" style="font-size:144%;">LSVT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.4" style="font-size:144%;">, ArT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.7" style="font-size:144%;">, DocMatix </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S0.T6.2.1.11.11.2.1.1.9.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.12.12.1"><span class="ltx_text" id="S0.T6.2.1.12.12.1.1" style="font-size:144%;">Interleaved</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.12.12.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.12.12.2.1">
<span class="ltx_p" id="S0.T6.2.1.12.12.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.12.12.2.1.1.1" style="font-size:144%;">OBELICS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.12.12.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S0.T6.2.1.12.12.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.12.12.2.1.1.4" style="font-size:144%;">, PIN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.12.12.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib97" title=""><span class="ltx_text" style="font-size:90%;">97</span></a><span class="ltx_text" id="S0.T6.2.1.12.12.2.1.1.6.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.13.13.1"><span class="ltx_text" id="S0.T6.2.1.13.13.1.1" style="font-size:144%;">Mixed-Task Dataset</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.13.13.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.13.13.2.1">
<span class="ltx_p" id="S0.T6.2.1.13.13.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.1" style="font-size:144%;">MMInstruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.4" style="font-size:144%;">, LVD-2M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib106" title=""><span class="ltx_text" style="font-size:90%;">106</span></a><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.7" style="font-size:144%;">, MMEvol </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S0.T6.2.1.13.13.2.1.1.9.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" colspan="2" id="S0.T6.2.1.14.14.1"><span class="ltx_text" id="S0.T6.2.1.14.14.1.1" style="font-size:144%;">Stage 2 Datasets</span></th>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.15.15.1"><span class="ltx_text" id="S0.T6.2.1.15.15.1.1" style="font-size:144%;">Instruction</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.15.15.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.15.15.2.1">
<span class="ltx_p" id="S0.T6.2.1.15.15.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.1" style="font-size:144%;">Countix </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.4" style="font-size:144%;">, VideoChat </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.7" style="font-size:144%;">, Videogpt+ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.9.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.10" style="font-size:144%;">, Openmathinstruct-2 (2M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.11.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.12.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.13" style="font-size:144%;">, RepCountA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.14.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.15.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.16" style="font-size:144%;">, Vidgen-1m </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.17.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib91" title=""><span class="ltx_text" style="font-size:90%;">91</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.18.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.19" style="font-size:144%;">, CompCap </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.20.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.21.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.22" style="font-size:144%;">, Metamath </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.23.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib112" title=""><span class="ltx_text" style="font-size:90%;">112</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.24.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.25" style="font-size:144%;">, Llava-Onevision </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.26.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.27.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.28" style="font-size:144%;">, Anytext (0.3M) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.29.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.30.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.31" style="font-size:144%;">, Llava-Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.32.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.33.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.34" style="font-size:144%;">, S-MiT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.35.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.36.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.37" style="font-size:144%;">, LSMDC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.38.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.39.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.40" style="font-size:144%;">, Infinity-MM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.41.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.42.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.43" style="font-size:144%;">, Mantis </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.44.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.45.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.46" style="font-size:144%;">, ShareGPT4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.47.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.48.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.49" style="font-size:144%;">, CinePile </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.50.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.51.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.52" style="font-size:144%;">, LLaVA-Hound </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.53.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib122" title=""><span class="ltx_text" style="font-size:90%;">122</span></a><span class="ltx_text" id="S0.T6.2.1.15.15.2.1.1.54.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.16.16.1"><span class="ltx_text" id="S0.T6.2.1.16.16.1.1" style="font-size:144%;">Grounding</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.16.16.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.16.16.2.1">
<span class="ltx_p" id="S0.T6.2.1.16.16.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.16.16.2.1.1.1" style="font-size:144%;">GRIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.16.16.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S0.T6.2.1.16.16.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.16.16.2.1.1.4" style="font-size:144%;">, RefCOCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.16.16.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S0.T6.2.1.16.16.2.1.1.6.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.17.17.1"><span class="ltx_text" id="S0.T6.2.1.17.17.1.1" style="font-size:144%;">Temporal Grounding</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.17.17.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.17.17.2.1">
<span class="ltx_p" id="S0.T6.2.1.17.17.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.17.17.2.1.1.1" style="font-size:144%;">GroundedVideoLLM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.17.17.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib95" title=""><span class="ltx_text" style="font-size:90%;">95</span></a><span class="ltx_text" id="S0.T6.2.1.17.17.2.1.1.3.2" style="font-size:144%;">]</span></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" colspan="2" id="S0.T6.2.1.18.18.1"><span class="ltx_text" id="S0.T6.2.1.18.18.1.1" style="font-size:144%;">Stage 3 (DPO) Datasets</span></th>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.19.19.1"><span class="ltx_text" id="S0.T6.2.1.19.19.1.1" style="font-size:144%;">Open-ended QA</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.19.19.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.19.19.2.1">
<span class="ltx_p" id="S0.T6.2.1.19.19.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.19.19.2.1.1.1" style="font-size:144%;">Llava-Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.19.19.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a><span class="ltx_text" id="S0.T6.2.1.19.19.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.19.19.2.1.1.4" style="font-size:144%;"> (10K)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.20.20.1"><span class="ltx_text" id="S0.T6.2.1.20.20.1.1" style="font-size:144%;">Image Caption</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S0.T6.2.1.20.20.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.20.20.2.1">
<span class="ltx_p" id="S0.T6.2.1.20.20.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.20.20.2.1.1.1" style="font-size:144%;">Llava-Onevision </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.20.20.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S0.T6.2.1.20.20.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.20.20.2.1.1.4" style="font-size:144%;"> (10K), DenseFusion-1M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.20.20.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S0.T6.2.1.20.20.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.20.20.2.1.1.7" style="font-size:144%;"> (10K)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S0.T6.2.1.21.21.1"><span class="ltx_text" id="S0.T6.2.1.21.21.1.1" style="font-size:144%;">Video Caption</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S0.T6.2.1.21.21.2">
<span class="ltx_inline-block ltx_align_top" id="S0.T6.2.1.21.21.2.1">
<span class="ltx_p" id="S0.T6.2.1.21.21.2.1.1" style="width:433.6pt;"><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.1" style="font-size:144%;">WebVid </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.4" style="font-size:144%;"> (8K), Kinetics_700 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.6.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.7" style="font-size:144%;"> (8K), OOPS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.8.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10068v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.9.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S0.T6.2.1.21.21.2.1.1.10" style="font-size:144%;"> (4K)</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the datasets used for training the Mavors model across three distinct stages.  Stage 1 focuses on modality alignment, using datasets for image and video captioning, question answering, and general knowledge. Stage 1.5 emphasizes temporal understanding enhancement, incorporating additional datasets centered around computer vision tasks for images and short videos.  Finally, Stage 2 integrates instruction tuning and incorporates datasets for tasks such as instruction following, grounding, and temporal grounding.  The table also shows the datasets used in the DPO (Direct Preference Optimization) stage for fine-tuning the model further, using datasets of open-ended QA, image captioning, and video captioning tasks. Dataset sizes are also given when available.
> <details>
> <summary>read the caption</summary>
> Table 6: Summary of the training datasets of different stages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T7.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T7.2.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S2.T7.2.1.1.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T7.2.1.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T7.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T7.2.1.1.1.3.1" style="font-size:144%;">Qwen2.5VL-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T7.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T7.2.1.1.1.4.1" style="font-size:144%;">Mavors-7B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T7.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T7.2.1.2.1.1" rowspan="2"><span class="ltx_text" id="S2.T7.2.1.2.1.1.1" style="font-size:144%;">Images</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T7.2.1.2.1.2"><span class="ltx_text" id="S2.T7.2.1.2.1.2.1" style="font-size:144%;">Prefilling (ms)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.2.1.2.1.3"><span class="ltx_text" id="S2.T7.2.1.2.1.3.1" style="font-size:144%;">397</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.2.1.2.1.4"><span class="ltx_text" id="S2.T7.2.1.2.1.4.1" style="font-size:144%;">392</span></td>
</tr>
<tr class="ltx_tr" id="S2.T7.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T7.2.1.3.2.1"><span class="ltx_text" id="S2.T7.2.1.3.2.1.1" style="font-size:144%;">Decoding (token/s)</span></th>
<td class="ltx_td ltx_align_center" id="S2.T7.2.1.3.2.2"><span class="ltx_text" id="S2.T7.2.1.3.2.2.1" style="font-size:144%;">23</span></td>
<td class="ltx_td ltx_align_center" id="S2.T7.2.1.3.2.3"><span class="ltx_text" id="S2.T7.2.1.3.2.3.1" style="font-size:144%;">30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T7.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S2.T7.2.1.4.3.1" rowspan="2"><span class="ltx_text" id="S2.T7.2.1.4.3.1.1" style="font-size:144%;">Videos</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T7.2.1.4.3.2"><span class="ltx_text" id="S2.T7.2.1.4.3.2.1" style="font-size:144%;">Prefilling (ms)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.2.1.4.3.3"><span class="ltx_text" id="S2.T7.2.1.4.3.3.1" style="font-size:144%;">1,225</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.2.1.4.3.4"><span class="ltx_text" id="S2.T7.2.1.4.3.4.1" style="font-size:144%;">448</span></td>
</tr>
<tr class="ltx_tr" id="S2.T7.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S2.T7.2.1.5.4.1"><span class="ltx_text" id="S2.T7.2.1.5.4.1.1" style="font-size:144%;">Decoding (token/s)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.2.1.5.4.2"><span class="ltx_text" id="S2.T7.2.1.5.4.2.1" style="font-size:144%;">22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.2.1.5.4.3"><span class="ltx_text" id="S2.T7.2.1.5.4.3.1" style="font-size:144%;">30</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the inference efficiency of the Mavors-7B model against the Qwen2.5VL-7B model.  Efficiency is assessed based on two key metrics: Prefilling time (in milliseconds) and decoding speed (tokens per second). Lower Prefilling times indicate faster model initialization, while higher decoding speeds represent quicker text generation.  A superior model will exhibit both a lower Prefilling time and a higher decoding speed.
> <details>
> <summary>read the caption</summary>
> Table 7: Inference efficiency between Qwen2.5VL-7B and Mavors-7B. Model is better when Prefilling (ms) is lower and Decoding (token/s) is larger.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10068/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10068/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}