---
title: "FastKV: KV Cache Compression for Fast Long-Context Processing with Token-Selective Propagation"
summary: "FastKV: A novel KV cache compression method speeds up long-context LLM processing 2x by selectively propagating tokens and using GQA-aware compression, maintaining accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Department of Electrical and Computer Engineering, Seoul National University",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.01068 {{< /keyword >}}
{{< keyword icon="writer" >}} Dongwon Jo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.01068" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.01068" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.01068/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) are slow when handling long text sequences due to substantial key-value (KV) caches used for storing contextual information.  Existing compression methods primarily focus on memory reduction, neglecting speed improvement. This is a major problem for real-time applications requiring low latency.



The researchers introduced FastKV, a new approach designed to improve speed for long sequences.  FastKV uses a novel Token-Selective Propagation (TSP) method which only forwards important tokens to deeper layers of the network.  Combined with GQA-aware KV compression, FastKV achieves significant speedups (2x faster time-to-first-token) while maintaining accuracy comparable to the best existing methods.  **This is a significant advancement that addresses a key challenge in LLM deployment and serving.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FastKV achieves 2.00x and 1.40x improvements in time-to-first-token and throughput compared to the state-of-the-art. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} FastKV uses a Token-Selective Propagation method which significantly reduces computational cost by selectively propagating tokens in deeper LLM layers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FastKV incorporates GQA-aware compression to further enhance memory and computational efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical bottleneck in large language model (LLM) processing: the slow speed and high memory consumption of key-value (KV) caches, especially for long sequences.  The proposed method, FastKV, offers a novel solution that significantly enhances both the speed and efficiency of LLMs while maintaining high accuracy, opening new avenues for research in optimizing LLM performance.

------
#### Visual Insights



![](https://arxiv.org/html/2502.01068/x1.png)

> 🔼 This figure compares the performance of various key-value (KV) cache compression methods on the LLaMA-3.1-8B-Instruct model.  It shows a comparison of the accuracy achieved by each method against the time-to-first-token (TTFT) and the overall throughput.  This allows for a visual assessment of the trade-off between speed and accuracy for different compression strategies.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Comparison of accuracy, TTFT, throughput across different KV cache compression methods on LLaMA-3.1-8B-Instruct
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.1" style="padding:-1pt 4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.1.1.1.1.2" style="padding:-1pt 4.0pt;">Single-Doc QA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.1.1.1.1.3" style="padding:-1pt 4.0pt;">Multi-Doc QA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.1.1.1.1.4" style="padding:-1pt 4.0pt;">Summarization</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.1.1.1.1.5" style="padding:-1pt 4.0pt;">Few-shot Learning</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.1.1.1.1.6" style="padding:-1pt 4.0pt;">Coding</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.7" style="padding:-1pt 4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.2.2.1" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.2.2.1.1" style="position:relative; bottom:14.2pt;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.2" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.2.1" style="width:31.6pt;height:31.6pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:35.9pt;transform:translate(-2.15pt,-9.05pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.2.1.1">NrtvQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.3" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.3.1" style="width:28.1pt;height:28.1pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-1.42pt,-7.3pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.3.1.1">Qasper</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.4" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.4.1" style="width:25.4pt;height:25.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.0pt;transform:translate(-1.84pt,-9.26pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.4.1.1">MF-en</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.5" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.5.1" style="width:39.0pt;height:39pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:46.4pt;transform:translate(-3.69pt,-12.77pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.5.1.1">HotpotQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.6" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.6.1" style="width:42.0pt;height:42.1pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:50.6pt;transform:translate(-4.26pt,-14.23pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.6.1.1">2WikiMQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.7" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.7.1" style="width:32.2pt;height:32.2pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-2.27pt,-9.35pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.7.1.1">Musique</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.8" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.8.1" style="width:40.4pt;height:40.4pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:48.3pt;transform:translate(-3.97pt,-13.44pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.8.1.1">GovReport</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.9" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.9.1" style="width:31.9pt;height:32pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-2.23pt,-9.23pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.9.1.1">QMSum</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.10" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.10.1" style="width:38.3pt;height:38.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.3pt;transform:translate(-4.47pt,-15.7pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.10.1.1">MultiNews</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.11" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.11.1" style="width:25.1pt;height:25.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.6pt;transform:translate(-1.77pt,-9.11pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.11.1.1">TREC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.12" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.12.1" style="width:35.5pt;height:35.5pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:41.4pt;transform:translate(-2.96pt,-11.01pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.12.1.1">TriviaQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.13" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.13.1" style="width:34.3pt;height:34.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:41.7pt;transform:translate(-3.69pt,-13.73pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.13.1.1">SAMSum</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.14" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.14.1" style="width:19.5pt;height:19.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.7pt;transform:translate(-0.61pt,-6.32pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.14.1.1">LCC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.15" style="padding:-1pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.15.1" style="width:22.2pt;height:22.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:24.6pt;transform:translate(-1.18pt,-7.69pt) rotate(-45deg) ;">
<p class="ltx_p" id="S3.T1.1.1.2.2.15.1.1">RB-P</p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.2.2.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.16.1" style="position:relative; bottom:14.2pt;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S3.T1.1.1.3.3.1" style="padding:-1pt 4.0pt;">LLaMA-3.1-8B-Inustruct, KV Budget = Full</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.4.4.1" style="padding:-1pt 4.0pt;">Full KV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.2" style="padding:-1pt 4.0pt;">30.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.3" style="padding:-1pt 4.0pt;">45.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.4" style="padding:-1pt 4.0pt;">55.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.5" style="padding:-1pt 4.0pt;">56.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.6" style="padding:-1pt 4.0pt;">46.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.7" style="padding:-1pt 4.0pt;">31.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.8" style="padding:-1pt 4.0pt;">35.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.9" style="padding:-1pt 4.0pt;">25.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.10" style="padding:-1pt 4.0pt;">27.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.11" style="padding:-1pt 4.0pt;">73.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.12" style="padding:-1pt 4.0pt;">91.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.13" style="padding:-1pt 4.0pt;">43.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.14" style="padding:-1pt 4.0pt;">63.38</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.4.4.15" style="padding:-1pt 4.0pt;">56.64</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.4.4.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.16.1">48.63</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S3.T1.1.1.5.5.1" style="padding:-1pt 4.0pt;">LLaMA-3.1-8B-Instruct, KV Budget = 512</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.1" style="padding:-1pt 4.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.2" style="padding:-1pt 4.0pt;">30.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.3" style="padding:-1pt 4.0pt;">41.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.4" style="padding:-1pt 4.0pt;">53.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.5" style="padding:-1pt 4.0pt;">54.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.6" style="padding:-1pt 4.0pt;">45.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.7" style="padding:-1pt 4.0pt;">31.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.8" style="padding:-1pt 4.0pt;">27.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.9" style="padding:-1pt 4.0pt;">24.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.10" style="padding:-1pt 4.0pt;">24.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.11" style="padding:-1pt 4.0pt;">71.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.12" style="padding:-1pt 4.0pt;">91.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.13" style="padding:-1pt 4.0pt;">42.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.6.14" style="padding:-1pt 4.0pt;">61.53</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.15" style="padding:-1pt 4.0pt;">52.49</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.6.6.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.6.6.16.1">46.60</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.7.7.1" style="padding:-1pt 4.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.2" style="padding:-1pt 4.0pt;">29.07</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.3" style="padding:-1pt 4.0pt;">40.16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.4" style="padding:-1pt 4.0pt;">52.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.5" style="padding:-1pt 4.0pt;">53.90</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.6" style="padding:-1pt 4.0pt;">43.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.7" style="padding:-1pt 4.0pt;">31.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.8" style="padding:-1pt 4.0pt;">25.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.9" style="padding:-1pt 4.0pt;">24.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.10" style="padding:-1pt 4.0pt;">24.85</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.11" style="padding:-1pt 4.0pt;">69.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.12" style="padding:-1pt 4.0pt;">92.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.13" style="padding:-1pt 4.0pt;">42.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.14" style="padding:-1pt 4.0pt;">63.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.7.15" style="padding:-1pt 4.0pt;">55.32</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.7.7.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.16.1">46.20</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.8.8.1" style="padding:-1pt 4.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.2" style="padding:-1pt 4.0pt;">30.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.3" style="padding:-1pt 4.0pt;">44.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.4" style="padding:-1pt 4.0pt;">54.29</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.5" style="padding:-1pt 4.0pt;">54.71</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.6" style="padding:-1pt 4.0pt;">46.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.7" style="padding:-1pt 4.0pt;">31.58</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.8" style="padding:-1pt 4.0pt;">31.14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.9" style="padding:-1pt 4.0pt;">24.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.10" style="padding:-1pt 4.0pt;">26.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.11" style="padding:-1pt 4.0pt;">73.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.12" style="padding:-1pt 4.0pt;">91.72</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.13" style="padding:-1pt 4.0pt;">42.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.8.14" style="padding:-1pt 4.0pt;">62.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.8.8.15" style="padding:-1pt 4.0pt;">55.71</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.8.8.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.8.16.1">47.76</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.9.9.1" style="padding:-1pt 4.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.2" style="padding:-1pt 4.0pt;">18.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.3" style="padding:-1pt 4.0pt;">22.15</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.4" style="padding:-1pt 4.0pt;">37.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.5" style="padding:-1pt 4.0pt;">46.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.6" style="padding:-1pt 4.0pt;">32.56</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.7" style="padding:-1pt 4.0pt;">24.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.8" style="padding:-1pt 4.0pt;">27.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.9" style="padding:-1pt 4.0pt;">17.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.10" style="padding:-1pt 4.0pt;">23.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.11" style="padding:-1pt 4.0pt;">60.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.12" style="padding:-1pt 4.0pt;">89.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.13" style="padding:-1pt 4.0pt;">40.16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.14" style="padding:-1pt 4.0pt;">27.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.9.9.15" style="padding:-1pt 4.0pt;">31.02</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.9.9.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.9.16.1">35.64</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.10" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.10.10.1" style="background-color:#DAE8FC;padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.2" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.2.1" style="background-color:#DAE8FC;">30.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.3" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.3.1" style="background-color:#DAE8FC;">41.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.4" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.4.1" style="background-color:#DAE8FC;">55.71</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.5" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.5.1" style="background-color:#DAE8FC;">54.35</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.6" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.6.1" style="background-color:#DAE8FC;">46.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.7" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.7.1" style="background-color:#DAE8FC;">30.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.8" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.8.1" style="background-color:#DAE8FC;">26.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.9" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.9.1" style="background-color:#DAE8FC;">23.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.10" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.10.1" style="background-color:#DAE8FC;">24.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.11" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.11.1" style="background-color:#DAE8FC;">72.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.12" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.12.1" style="background-color:#DAE8FC;">92.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.13" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.13.1" style="background-color:#DAE8FC;">42.64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.14" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.14.1" style="background-color:#DAE8FC;">62.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.10.10.15" style="background-color:#DAE8FC;padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.15.1" style="background-color:#DAE8FC;">52.74</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.10.10.16" style="padding:-1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.10.10.16.1" style="background-color:#DAE8FC;">46.90<span class="ltx_text ltx_font_medium" id="S3.T1.1.1.10.10.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S3.T1.1.1.11.11.1" style="padding:-1pt 4.0pt;">LLaMA-3.1-8B-Instruct, KV Budget = 2048</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.12.12.1" style="padding:-1pt 4.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.2" style="padding:-1pt 4.0pt;">31.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.3" style="padding:-1pt 4.0pt;">44.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.4" style="padding:-1pt 4.0pt;">55.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.5" style="padding:-1pt 4.0pt;">55.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.6" style="padding:-1pt 4.0pt;">45.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.7" style="padding:-1pt 4.0pt;">30.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.8" style="padding:-1pt 4.0pt;">31.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.9" style="padding:-1pt 4.0pt;">24.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.10" style="padding:-1pt 4.0pt;">26.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.11" style="padding:-1pt 4.0pt;">71.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.12" style="padding:-1pt 4.0pt;">91.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.13" style="padding:-1pt 4.0pt;">43.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.12.12.14" style="padding:-1pt 4.0pt;">63.14</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.12.12.15" style="padding:-1pt 4.0pt;">56.04</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.12.12.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.12.12.16.1">48.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.13.13.1" style="padding:-1pt 4.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.2" style="padding:-1pt 4.0pt;">30.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.3" style="padding:-1pt 4.0pt;">45.23</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.4" style="padding:-1pt 4.0pt;">55.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.5" style="padding:-1pt 4.0pt;">55.55</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.6" style="padding:-1pt 4.0pt;">45.26</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.7" style="padding:-1pt 4.0pt;">31.14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.8" style="padding:-1pt 4.0pt;">31.28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.9" style="padding:-1pt 4.0pt;">24.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.10" style="padding:-1pt 4.0pt;">26.72</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.11" style="padding:-1pt 4.0pt;">72.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.12" style="padding:-1pt 4.0pt;">91.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.13" style="padding:-1pt 4.0pt;">42.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.13.14" style="padding:-1pt 4.0pt;">64.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.13.13.15" style="padding:-1pt 4.0pt;">59.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.13.13.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.13.16.1">48.37</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.14.14.1" style="padding:-1pt 4.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.2" style="padding:-1pt 4.0pt;">30.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.3" style="padding:-1pt 4.0pt;">44.99</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.4" style="padding:-1pt 4.0pt;">54.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.5" style="padding:-1pt 4.0pt;">55.47</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.6" style="padding:-1pt 4.0pt;">46.08</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.7" style="padding:-1pt 4.0pt;">31.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.8" style="padding:-1pt 4.0pt;">32.41</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.9" style="padding:-1pt 4.0pt;">25.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.10" style="padding:-1pt 4.0pt;">27.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.11" style="padding:-1pt 4.0pt;">72.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.12" style="padding:-1pt 4.0pt;">91.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.13" style="padding:-1pt 4.0pt;">42.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.14.14.14" style="padding:-1pt 4.0pt;">63.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.14.14.15" style="padding:-1pt 4.0pt;">56.75</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.14.14.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.14.14.16.1">48.23</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.15.15.1" style="padding:-1pt 4.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.2" style="padding:-1pt 4.0pt;">23.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.3" style="padding:-1pt 4.0pt;">41.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.4" style="padding:-1pt 4.0pt;">51.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.5" style="padding:-1pt 4.0pt;">53.97</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.6" style="padding:-1pt 4.0pt;">45.32</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.7" style="padding:-1pt 4.0pt;">29.24</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.8" style="padding:-1pt 4.0pt;">32.01</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.9" style="padding:-1pt 4.0pt;">20.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.10" style="padding:-1pt 4.0pt;">26.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.11" style="padding:-1pt 4.0pt;">70.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.12" style="padding:-1pt 4.0pt;">91.59</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.13" style="padding:-1pt 4.0pt;">42.59</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.15.14" style="padding:-1pt 4.0pt;">47.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.15.15.15" style="padding:-1pt 4.0pt;">38.91</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.15.15.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.15.15.16.1">43.90</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.16.16" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.16.16.1" style="background-color:#DAE8FC;padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.2" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.2.1" style="background-color:#DAE8FC;">30.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.3" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.3.1" style="background-color:#DAE8FC;">45.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.4" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.4.1" style="background-color:#DAE8FC;">54.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.5" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.5.1" style="background-color:#DAE8FC;">55.11</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.6" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.6.1" style="background-color:#DAE8FC;">46.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.7" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.7.1" style="background-color:#DAE8FC;">30.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.8" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.8.1" style="background-color:#DAE8FC;">31.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.9" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.9.1" style="background-color:#DAE8FC;">24.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.10" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.10.1" style="background-color:#DAE8FC;">27.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.11" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.11.1" style="background-color:#DAE8FC;">73.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.12" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.12.1" style="background-color:#DAE8FC;">91.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.13" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.13.1" style="background-color:#DAE8FC;">43.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.16.14" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.14.1" style="background-color:#DAE8FC;">63.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.16.16.15" style="background-color:#DAE8FC;padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.16.15.1" style="background-color:#DAE8FC;">55.82</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.16.16.16" style="padding:-1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.16.16.16.1" style="background-color:#DAE8FC;">48.10<span class="ltx_text ltx_font_medium" id="S3.T1.1.1.16.16.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.17.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S3.T1.1.1.17.17.1" style="padding:-1pt 4.0pt;">Mistral-Nemo-12B-Instruct, KV Budget = Full</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.18.18.1" style="padding:-1pt 4.0pt;">Full KV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.2" style="padding:-1pt 4.0pt;">26.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.3" style="padding:-1pt 4.0pt;">43.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.4" style="padding:-1pt 4.0pt;">58.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.5" style="padding:-1pt 4.0pt;">49.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.6" style="padding:-1pt 4.0pt;">45.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.7" style="padding:-1pt 4.0pt;">26.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.8" style="padding:-1pt 4.0pt;">31.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.9" style="padding:-1pt 4.0pt;">24.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.10" style="padding:-1pt 4.0pt;">26.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.11" style="padding:-1pt 4.0pt;">75.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.12" style="padding:-1pt 4.0pt;">89.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.13" style="padding:-1pt 4.0pt;">44.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.18.18.14" style="padding:-1pt 4.0pt;">68.58</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.18.18.15" style="padding:-1pt 4.0pt;">68.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.18.18.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.18.18.16.1">48.33</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.19.19">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S3.T1.1.1.19.19.1" style="padding:-1pt 4.0pt;">Mistral-Nemo-12B-Instruct, KV Budget = 512</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.20.20.1" style="padding:-1pt 4.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.2" style="padding:-1pt 4.0pt;">23.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.3" style="padding:-1pt 4.0pt;">40.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.4" style="padding:-1pt 4.0pt;">55.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.5" style="padding:-1pt 4.0pt;">47.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.6" style="padding:-1pt 4.0pt;">45.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.7" style="padding:-1pt 4.0pt;">25.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.8" style="padding:-1pt 4.0pt;">23.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.9" style="padding:-1pt 4.0pt;">22.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.10" style="padding:-1pt 4.0pt;">24.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.11" style="padding:-1pt 4.0pt;">74.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.12" style="padding:-1pt 4.0pt;">89.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.13" style="padding:-1pt 4.0pt;">43.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.20.20.14" style="padding:-1pt 4.0pt;">68.31</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.20.20.15" style="padding:-1pt 4.0pt;">62.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.20.20.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.20.20.16.1">46.07</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.21.21.1" style="padding:-1pt 4.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.2" style="padding:-1pt 4.0pt;">24.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.3" style="padding:-1pt 4.0pt;">41.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.4" style="padding:-1pt 4.0pt;">57.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.5" style="padding:-1pt 4.0pt;">47.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.6" style="padding:-1pt 4.0pt;">45.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.7" style="padding:-1pt 4.0pt;">25.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.8" style="padding:-1pt 4.0pt;">23.58</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.9" style="padding:-1pt 4.0pt;">22.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.10" style="padding:-1pt 4.0pt;">23.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.11" style="padding:-1pt 4.0pt;">74.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.12" style="padding:-1pt 4.0pt;">89.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.13" style="padding:-1pt 4.0pt;">43.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.21.21.14" style="padding:-1pt 4.0pt;">68.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.21.21.15" style="padding:-1pt 4.0pt;">64.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.21.21.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.21.21.16.1">46.52</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.22.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.22.22.1" style="padding:-1pt 4.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.2" style="padding:-1pt 4.0pt;">25.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.3" style="padding:-1pt 4.0pt;">40.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.4" style="padding:-1pt 4.0pt;">57.12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.5" style="padding:-1pt 4.0pt;">48.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.6" style="padding:-1pt 4.0pt;">46.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.7" style="padding:-1pt 4.0pt;">25.26</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.8" style="padding:-1pt 4.0pt;">26.19</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.9" style="padding:-1pt 4.0pt;">22.92</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.10" style="padding:-1pt 4.0pt;">25.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.11" style="padding:-1pt 4.0pt;">74.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.12" style="padding:-1pt 4.0pt;">89.74</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.13" style="padding:-1pt 4.0pt;">41.81</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.22.22.14" style="padding:-1pt 4.0pt;">68.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.22.22.15" style="padding:-1pt 4.0pt;">64.76</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.22.22.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.22.22.16.1">46.93</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.23.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.23.23.1" style="padding:-1pt 4.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.2" style="padding:-1pt 4.0pt;">25.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.3" style="padding:-1pt 4.0pt;">37.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.4" style="padding:-1pt 4.0pt;">53.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.5" style="padding:-1pt 4.0pt;">52.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.6" style="padding:-1pt 4.0pt;">51.26</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.7" style="padding:-1pt 4.0pt;">33.02</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.8" style="padding:-1pt 4.0pt;">26.23</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.9" style="padding:-1pt 4.0pt;">19.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.10" style="padding:-1pt 4.0pt;">23.87</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.11" style="padding:-1pt 4.0pt;">65.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.12" style="padding:-1pt 4.0pt;">84.16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.13" style="padding:-1pt 4.0pt;">40.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.23.23.14" style="padding:-1pt 4.0pt;">38.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.23.23.15" style="padding:-1pt 4.0pt;">41.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.23.23.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.23.23.16.1">42.32</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.24.24" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.24.24.1" style="background-color:#DAE8FC;padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.2" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.2.1" style="background-color:#DAE8FC;">25.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.3" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.3.1" style="background-color:#DAE8FC;">41.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.4" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.4.1" style="background-color:#DAE8FC;">56.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.5" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.5.1" style="background-color:#DAE8FC;">48.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.6" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.6.1" style="background-color:#DAE8FC;">45.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.7" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.7.1" style="background-color:#DAE8FC;">26.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.8" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.8.1" style="background-color:#DAE8FC;">23.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.9" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.9.1" style="background-color:#DAE8FC;">22.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.10" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.10.1" style="background-color:#DAE8FC;">24.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.11" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.11.1" style="background-color:#DAE8FC;">74.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.12" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.12.1" style="background-color:#DAE8FC;">89.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.13" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.13.1" style="background-color:#DAE8FC;">43.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.24.24.14" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.14.1" style="background-color:#DAE8FC;">68.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.24.24.15" style="background-color:#DAE8FC;padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.24.24.15.1" style="background-color:#DAE8FC;">63.57</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.24.24.16" style="padding:-1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.24.24.16.1" style="background-color:#DAE8FC;">46.63<span class="ltx_text ltx_font_medium" id="S3.T1.1.1.24.24.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.25.25">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="S3.T1.1.1.25.25.1" style="padding:-1pt 4.0pt;">Mistral-Nemo-12B-Instruct, KV Budget = 2048</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.26.26.1" style="padding:-1pt 4.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.2" style="padding:-1pt 4.0pt;">24.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.3" style="padding:-1pt 4.0pt;">42.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.4" style="padding:-1pt 4.0pt;">56.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.5" style="padding:-1pt 4.0pt;">49.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.6" style="padding:-1pt 4.0pt;">46.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.7" style="padding:-1pt 4.0pt;">26.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.8" style="padding:-1pt 4.0pt;">28.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.9" style="padding:-1pt 4.0pt;">23.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.10" style="padding:-1pt 4.0pt;">26.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.11" style="padding:-1pt 4.0pt;">75.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.12" style="padding:-1pt 4.0pt;">89.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.13" style="padding:-1pt 4.0pt;">44.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.26.26.14" style="padding:-1pt 4.0pt;">68.89</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.26.26.15" style="padding:-1pt 4.0pt;">68.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.26.26.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.26.26.16.1">47.85</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.27.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.27.27.1" style="padding:-1pt 4.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.2" style="padding:-1pt 4.0pt;">26.02</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.3" style="padding:-1pt 4.0pt;">43.08</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.4" style="padding:-1pt 4.0pt;">57.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.5" style="padding:-1pt 4.0pt;">48.76</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.6" style="padding:-1pt 4.0pt;">46.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.7" style="padding:-1pt 4.0pt;">26.12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.8" style="padding:-1pt 4.0pt;">27.80</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.9" style="padding:-1pt 4.0pt;">23.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.10" style="padding:-1pt 4.0pt;">25.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.11" style="padding:-1pt 4.0pt;">75.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.12" style="padding:-1pt 4.0pt;">89.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.13" style="padding:-1pt 4.0pt;">44.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.27.27.14" style="padding:-1pt 4.0pt;">68.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.27.27.15" style="padding:-1pt 4.0pt;">67.57</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.27.27.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.27.27.16.1">47.88</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.28.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.28.28.1" style="padding:-1pt 4.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.2" style="padding:-1pt 4.0pt;">26.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.3" style="padding:-1pt 4.0pt;">42.15</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.4" style="padding:-1pt 4.0pt;">57.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.5" style="padding:-1pt 4.0pt;">48.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.6" style="padding:-1pt 4.0pt;">45.85</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.7" style="padding:-1pt 4.0pt;">25.86</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.8" style="padding:-1pt 4.0pt;">30.27</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.9" style="padding:-1pt 4.0pt;">24.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.10" style="padding:-1pt 4.0pt;">26.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.11" style="padding:-1pt 4.0pt;">75.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.12" style="padding:-1pt 4.0pt;">89.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.13" style="padding:-1pt 4.0pt;">43.74</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.28.28.14" style="padding:-1pt 4.0pt;">68.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.28.28.15" style="padding:-1pt 4.0pt;">67.29</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.28.28.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.28.28.16.1">47.92</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.29.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.29.29.1" style="padding:-1pt 4.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.2" style="padding:-1pt 4.0pt;">26.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.3" style="padding:-1pt 4.0pt;">42.40</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.4" style="padding:-1pt 4.0pt;">56.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.5" style="padding:-1pt 4.0pt;">57.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.6" style="padding:-1pt 4.0pt;">53.92</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.7" style="padding:-1pt 4.0pt;">34.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.8" style="padding:-1pt 4.0pt;">30.51</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.9" style="padding:-1pt 4.0pt;">21.60</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.10" style="padding:-1pt 4.0pt;">25.96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.11" style="padding:-1pt 4.0pt;">72.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.12" style="padding:-1pt 4.0pt;">89.65</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.13" style="padding:-1pt 4.0pt;">44.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.29.29.14" style="padding:-1pt 4.0pt;">48.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.29.29.15" style="padding:-1pt 4.0pt;">48.06</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="S3.T1.1.1.29.29.16" style="padding:-1pt 4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.29.29.16.1">46.59</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.30.30" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.1.1.30.30.1" style="background-color:#DAE8FC;padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.2" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.2.1" style="background-color:#DAE8FC;">26.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.3" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.3.1" style="background-color:#DAE8FC;">43.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.4" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.4.1" style="background-color:#DAE8FC;">57.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.5" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.5.1" style="background-color:#DAE8FC;">49.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.6" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.6.1" style="background-color:#DAE8FC;">47.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.7" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.7.1" style="background-color:#DAE8FC;">26.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.8" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.8.1" style="background-color:#DAE8FC;">28.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.9" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.9.1" style="background-color:#DAE8FC;">23.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.10" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.10.1" style="background-color:#DAE8FC;">25.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.11" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.11.1" style="background-color:#DAE8FC;">75.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.12" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.12.1" style="background-color:#DAE8FC;">89.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.13" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.13.1" style="background-color:#DAE8FC;">43.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.30.30.14" style="padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.14.1" style="background-color:#DAE8FC;">68.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.30.30.15" style="background-color:#DAE8FC;padding:-1pt 4.0pt;"><span class="ltx_text" id="S3.T1.1.1.30.30.15.1" style="background-color:#DAE8FC;">67.61</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r" id="S3.T1.1.1.30.30.16" style="padding:-1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.30.30.16.1" style="background-color:#DAE8FC;">48.11<span class="ltx_text ltx_font_medium" id="S3.T1.1.1.30.30.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of FastKV against several baseline methods on the LongBench benchmark.  LongBench is a comprehensive evaluation suite for large language models, assessing capabilities across various tasks and data types. The table shows the accuracy achieved by each method on the different sub-tasks within the benchmark, including single-document question answering (Single-Doc QA), multiple-document question answering (Multi-Doc QA), summarization, and other tasks.  This allows for a direct comparison of FastKV's performance relative to the state-of-the-art techniques, demonstrating its effectiveness in maintaining accuracy while compressing key-value caches. Different KV cache budget sizes are also shown to reveal how the performance changes with different memory constraints.
> <details>
> <summary>read the caption</summary>
> Table 1: LongBench results comparison between baseline methods and FastKV.
> </details>





### In-depth insights


#### Long-Context Bottleneck
The concept of a "Long-Context Bottleneck" in large language models (LLMs) highlights the computational challenges associated with processing lengthy input sequences.  **Increased context length necessitates significantly larger key-value (KV) caches to store contextual information**, which rapidly escalates memory consumption and slows down processing. This bottleneck directly impacts efficiency, particularly during the crucial prefill stage of LLM operation, where the model prepares to generate text.  **Existing KV cache compression methods often focus on memory reduction**, but they may inadequately address latency issues, resulting in slow response times.  **The core problem lies in the trade-off between maximizing context and maintaining computational efficiency.**  An ideal solution needs to balance context preservation with speed improvements, particularly during the computationally intensive prefill stage.  Therefore, innovative compression techniques, perhaps leveraging the nature of attention mechanisms and the distribution of information within the model's layers, are critical to resolving the long-context bottleneck and enabling truly efficient long-context processing.

#### Token-Selective Prop
The concept of "Token-Selective Propagation" (TSP) presents a novel approach to optimizing long-context processing in large language models (LLMs).  The core idea revolves around the observation that attention maps in LLMs exhibit differing properties across layers. **Early layers broadly engage with tokens**, while **later layers focus more selectively on a subset of crucial tokens**. TSP leverages this by applying different strategies in different layers. In earlier layers, it retains the full context. However, in later layers, it **selectively propagates only a limited set of tokens identified as important**. This selective propagation significantly reduces the computational burden of processing information in later stages, leading to speed improvements in the prefill stage without sacrificing accuracy. **The method for selecting important tokens**, often based on aggregated attention scores, is key to TSP's effectiveness. This selective propagation, coupled with other optimization techniques such as grouped-query attention (GQA)-aware compression, allows for a balance between speed and accuracy. This is in contrast to approaches that either maintain full context, resulting in high latency, or discard information aggressively, leading to accuracy loss.

#### GQA-Aware Compress
The concept of "GQA-Aware Compression" suggests a method of compressing key-value (KV) caches within large language models (LLMs) that leverages the inherent structure of grouped-query attention (GQA).  **GQA groups multiple attention heads**, allowing for shared computation and reduced memory footprint. A GQA-aware compression technique would likely analyze attention scores within these groups, identifying less important tokens and selectively removing their corresponding KV pairs.  This approach differs from methods that operate on individual attention heads, potentially offering **greater efficiency and improved accuracy** by respecting the inherent grouping in GQA.  The compression strategy might dynamically adjust the compression ratio based on the importance of the information within each group, ensuring important contextual information is preserved while maximizing compression.  **Careful consideration of the trade-off between compression rate and accuracy** would be crucial in designing such a system.  Furthermore, the implementation should seamlessly integrate with existing GQA mechanisms within the LLM infrastructure to avoid introducing significant performance overhead.

#### Accuracy vs Speedup
A critical aspect of any model optimization is balancing accuracy and speed.  The 'Accuracy vs. Speedup' analysis would reveal the trade-offs involved in the proposed method.  **High speedup with minimal accuracy loss** is the ideal outcome, showing the method's effectiveness. However, a large speedup accompanied by significant accuracy degradation would indicate that the improvements in speed come at the cost of model performance. The analysis should detail the specific metrics used (e.g., accuracy on benchmark datasets, speedup factor on inference time), showing how these metrics vary with different compression parameters and across various model sizes.  **Visualizations** such as graphs showing accuracy vs. speedup trade-offs are key. The analysis should also account for the influence of factors such as the dataset complexity and the model architecture's characteristics on the overall 'Accuracy vs. Speedup' balance. A thorough investigation would provide key insights for deciding on the applicability and practicality of the proposed compression method.

#### Future of FastKV
The "Future of FastKV" holds exciting possibilities.  **Further optimization of the Token-Selective Propagation (TSP) method** is crucial, potentially through more sophisticated algorithms to identify and select the most critical tokens for propagation.  Exploring **adaptive TSP layer selection** based on sequence length or task complexity could significantly improve performance.  **Integration with other state-of-the-art techniques**, like advanced attention mechanisms or quantization methods, could yield synergistic gains in both speed and memory efficiency.  **Extending FastKV to diverse LLM architectures** beyond the tested models is also key.  Investigating its compatibility and effectiveness in different model sizes and modalities (e.g., vision-language models) would broaden its applicability.  Finally, **thorough benchmarking on a wider array of tasks and datasets** is needed to fully assess its robustness and generalization capabilities.  Addressing these areas will solidify FastKV's position as a leading method for accelerating long-context processing.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.01068/x2.png)

> 🔼 This figure compares the number of tokens processed per layer and per attention head during the prefill computation stage of large language models (LLMs) across various KV cache compression techniques.  The prefill stage is where the LLM processes the input prompt to prepare for generating text. The amount of key-value (KV) cache memory required is directly proportional to the number of tokens processed. This figure visually demonstrates how different methods like SnapKV, AdaKV, HeadKV, GemFilter, and FastKV (the proposed method) handle token processing and KV cache allocation during the prefill stage. The blue boxes highlight tokens selected for sharing or compression, showing the different strategies used by each method to reduce the size of the KV cache.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Comparison of the number of tokens processed in each layer/head of LLMs during prefill computation and KV caching across different KV cache compression techniques. As each token produces its corresponding KV, the KV cache size is directly proportional to the number of tokens processed. The blue background box indicates the set of sharing selected token indices.
> </details>



![](https://arxiv.org/html/2502.01068/x3.png)

> 🔼 This figure shows the proportion of total attention scores attributed to the top 2000 most important tokens in each layer of the language model.  It illustrates how the focus of attention shifts as processing progresses through the layers. The early layers have broader attention patterns, while the later layers concentrate attention on a smaller, more consistent set of important tokens. This visualization supports the Token-Selective Propagation (TSP) method used in FastKV, which leverages the increased focus of attention in deeper layers to improve efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Rate of sum of attention scores for the top 2k important tokens selected to the total attention score at each layer.
> </details>



![](https://arxiv.org/html/2502.01068/x4.png)

> 🔼 This figure shows the consistency of important tokens across different layers of LLMs.  For each layer, the top 2000 most important tokens (based on attention scores) were identified. Then, the minimum match rate was calculated between each layer's top 2000 tokens and the top 2000 tokens in subsequent layers.  The x-axis represents the normalized layer index, progressing from the initial layers to the final layers of the model. The y-axis shows the minimum match rate (percentage). The graph illustrates how the overlap of important tokens increases as the model progresses through its layers. This visualization demonstrates the rationale behind the Token-Selective Propagation (TSP) method used in the FastKV approach.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Minimum match rate between indices of 2k important tokens selected at each layer and its subsequent layers.
> </details>



![](https://arxiv.org/html/2502.01068/x5.png)

> 🔼 This figure visualizes the output logits of two different large language models (LLMs) using t-distributed Stochastic Neighbor Embedding (t-SNE). t-SNE is a dimensionality reduction technique used to visualize high-dimensional data in a lower-dimensional space (in this case, 2D).  The left panel shows the visualization for LLaMA-3.1-8B-Instruct, while the right panel shows the visualization for Mistral-Nemo-12B-Instruct. By visualizing the logits in this way, the figure helps to understand how similar or different the predictions of the two models are across different tokens in the output sequence.  The clustering of points suggests the relationships between different output tokens in the prediction space of each model.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Visualization of output logits by t-SNE for (left) LLaMA-3.1-8B-Instruct and (right) Mistral-Nemo-12B-Instruct.
> </details>



![](https://arxiv.org/html/2502.01068/x6.png)

> 🔼 This figure shows the results of the LongBench benchmark for the LLaMA-3.1-8B-Instruct model.  Different propagation strategies for tokens selected at various layers are compared.  It illustrates the impact of different token selection and propagation approaches on the model's performance across various tasks within the LongBench benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 6:  LongBench results of LLaMA-3.1-8B-insturct with propagation of tokens selected at each layer.
> </details>



![](https://arxiv.org/html/2502.01068/x7.png)

> 🔼 This figure shows the results of the LongBench benchmark and time-to-first-token (TTFT) for the LLaMA-3.1-8B-Instruct model under different KV cache budget and TSP length settings.  The line graph displays the average accuracy across various LongBench tasks as the KV budget and TSP length change. The bar graph displays the time it takes to generate the first token of a response, or TTFT, under the same varying settings.  This allows for a comparison of accuracy and speed trade-offs at different compression levels and configurations.
> <details>
> <summary>read the caption</summary>
> Figure 7:  LongBench results (line) and TTFT (bar) of LLaMA-3.1-8B-insturct across various KV budgets and TSP lengths.
> </details>



![](https://arxiv.org/html/2502.01068/x8.png)

> 🔼 This figure visualizes the performance of different key-value (KV) cache compression techniques on the Needle-in-a-Haystack benchmark using the LLaMA-3.1-8B-Instruct language model.  The results are shown with a KV budget of 512. Each heatmap represents a different method, showing the percentage of correct retrievals at varying depths within the context window.  The color intensity indicates the accuracy, with darker shades representing higher accuracy. This allows for a visual comparison of the effectiveness of various compression methods in maintaining accuracy across different depths in the context window.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Needle-in-a-Haystack results of LLaMA-3.1-8B-Instruct with 512 KV budget.
> </details>



![](https://arxiv.org/html/2502.01068/x9.png)

> 🔼 Figure 9 presents a comparison of the time-to-first-token (TTFT) and throughput performance for various key-value (KV) cache compression methods on the LLaMA-3.1-8B-Instruct language model.  Subfigure (a) shows the TTFT, which measures the latency until the first token is generated, and subfigure (b) displays the throughput, representing the number of tokens generated per second.  The results are shown for different context lengths.  A dashed line is included for the Full KV method, which represents the baseline without any compression. The figure highlights the relative performance of various methods in terms of both speed and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 9:  (a) TTFT and (b) throughput results across different methods on LLaMA-3.1-8B-Instruct. (dashed line: Full KV)
> </details>



![](https://arxiv.org/html/2502.01068/extracted/6173599/images/appendix_NIAH_LLaMA-31.png)

> 🔼 This figure visualizes the performance of different KV cache compression methods on the Needle-in-a-Haystack benchmark using the LLaMA-3.1-8B-Instruct model.  It shows heatmaps illustrating the retrieval accuracy at varying depths and context lengths. Each heatmap represents a different method (Full KV, SnapKV, AdaKV, HeadKV, GemFilter, and FastKV), and the color intensity indicates the success rate of retrieving the target document.  The results show how each compression technique impacts retrieval accuracy across different context lengths.
> <details>
> <summary>read the caption</summary>
> Figure 10:  Needle-in-a-Haystack results of LLaMA-3.1-8B-Instruct.
> </details>



![](https://arxiv.org/html/2502.01068/extracted/6173599/images/appendix_NIAH_LLaMA-32.png)

> 🔼 This figure visualizes the performance of various KV cache compression techniques on the Needle-in-a-Haystack benchmark using the LLaMA-3.2-3B-Instruct model.  It displays heatmaps showing the percentage of successful retrievals at different depths and context lengths for each method.  The heatmaps allow for a direct comparison of the effectiveness of each method in retrieving information under varying resource constraints (KV budget).  Warmer colors indicate higher retrieval success rates.
> <details>
> <summary>read the caption</summary>
> Figure 11:  Needle-in-a-Haystack results of LLaMA-3.2-3B-Instruct.
> </details>



![](https://arxiv.org/html/2502.01068/extracted/6173599/images/appendix_NIAH_Mistral-Nemo.png)

> 🔼 This figure visualizes the results of the Needle-in-a-Haystack experiment using the Mistral-Nemo-12B-Instruct model.  The heatmaps illustrate the performance of different KV cache compression techniques (Full KV, SnapKV, AdaKV, HeadKV, GemFilter, and FastKV) across various KV budget sizes (512, 1024, and 2048) and context lengths. Each heatmap shows the percentage of correctly retrieved documents at different depths within the context.  The average score for each method is also provided, indicating the overall retrieval accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 12:  Needle-in-a-Haystack results of Mistral-Nemo-12B-Instruct.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.1.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A1.T2.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T2.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Single-Doc QA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T2.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Multi-Doc QA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T2.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">Summarization</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T2.1.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Few-shot Learning</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T2.1.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">Coding</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_tt" id="A1.T2.1.1.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.2.2.1.1" style="position:relative; bottom:14.2pt;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.2.1" style="width:31.6pt;height:31.6pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:35.9pt;transform:translate(-2.15pt,-9.05pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.2.1.1">NrtvQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.3.1" style="width:28.1pt;height:28.1pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-1.42pt,-7.3pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.3.1.1">Qasper</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.4.1" style="width:25.4pt;height:25.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.0pt;transform:translate(-1.84pt,-9.26pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.4.1.1">MF-en</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.5.1" style="width:39.0pt;height:39pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:46.4pt;transform:translate(-3.69pt,-12.77pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.5.1.1">HotpotQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.6.1" style="width:42.0pt;height:42.1pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:50.6pt;transform:translate(-4.26pt,-14.23pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.6.1.1">2WikiMQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.7.1" style="width:32.2pt;height:32.2pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-2.27pt,-9.35pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.7.1.1">Musique</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.8.1" style="width:40.4pt;height:40.4pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:48.3pt;transform:translate(-3.97pt,-13.44pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.8.1.1">GovReport</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.9.1" style="width:31.9pt;height:32pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-2.23pt,-9.23pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.9.1.1">QMSum</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.2.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.10.1" style="width:38.3pt;height:38.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.3pt;transform:translate(-4.47pt,-15.7pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.10.1.1">MultiNews</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.11" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.11.1" style="width:25.1pt;height:25.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.6pt;transform:translate(-1.77pt,-9.11pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.11.1.1">TREC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.12.1" style="width:35.5pt;height:35.5pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:41.4pt;transform:translate(-2.96pt,-11.01pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.12.1.1">TriviaQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.2.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.13.1" style="width:34.3pt;height:34.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:41.7pt;transform:translate(-3.69pt,-13.73pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.13.1.1">SAMSum</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.2.2.14" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.14.1" style="width:19.5pt;height:19.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.7pt;transform:translate(-0.61pt,-6.32pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.14.1.1">LCC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.2.2.15" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.1.1.2.2.15.1" style="width:22.2pt;height:22.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:24.6pt;transform:translate(-1.18pt,-7.69pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.1.1.2.2.15.1.1">RB-P</p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.2.2.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.2.2.16.1" style="position:relative; bottom:14.2pt;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T2.1.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Instruct, KV Cache Size = Full</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Full KV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">30.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">45.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">55.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">56.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">35.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">25.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.10" style="padding-left:3.0pt;padding-right:3.0pt;">27.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.11" style="padding-left:3.0pt;padding-right:3.0pt;">73.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.13" style="padding-left:3.0pt;padding-right:3.0pt;">43.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.4.4.14" style="padding-left:3.0pt;padding-right:3.0pt;">63.38</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.4.4.15" style="padding-left:3.0pt;padding-right:3.0pt;">56.64</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T2.1.1.4.4.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.4.4.16.1">48.63</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T2.1.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Inustruct, KV Budget = 128</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">27.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">30.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">53.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">43.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">28.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.8" style="padding-left:3.0pt;padding-right:3.0pt;">22.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.10" style="padding-left:3.0pt;padding-right:3.0pt;">21.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.11" style="padding-left:3.0pt;padding-right:3.0pt;">62.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.13" style="padding-left:3.0pt;padding-right:3.0pt;">40.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.6.6.14" style="padding-left:3.0pt;padding-right:3.0pt;">58.43</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.6.6.15" style="padding-left:3.0pt;padding-right:3.0pt;">49.33</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T2.1.1.6.6.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.6.6.16.1">43.03</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">24.90</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">24.41</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">49.95</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">53.15</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">41.73</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">28.55</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">20.54</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.21</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.10" style="padding-left:3.0pt;padding-right:3.0pt;">20.28</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.11" style="padding-left:3.0pt;padding-right:3.0pt;">50.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.49</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.13" style="padding-left:3.0pt;padding-right:3.0pt;">40.71</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.7.7.14" style="padding-left:3.0pt;padding-right:3.0pt;">58.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.7.7.15" style="padding-left:3.0pt;padding-right:3.0pt;">52.40</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.7.7.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.7.7.16.1">41.33</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">29.74</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">40.34</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">53.51</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">54.83</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.35</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.7" style="padding-left:3.0pt;padding-right:3.0pt;">30.62</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">26.40</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.23</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.10" style="padding-left:3.0pt;padding-right:3.0pt;">24.58</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.11" style="padding-left:3.0pt;padding-right:3.0pt;">71.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.12" style="padding-left:3.0pt;padding-right:3.0pt;">88.51</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.13" style="padding-left:3.0pt;padding-right:3.0pt;">40.14</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.8.8.14" style="padding-left:3.0pt;padding-right:3.0pt;">60.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.8.8.15" style="padding-left:3.0pt;padding-right:3.0pt;">52.92</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.8.8.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.8.8.16.1">45.92</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">12.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">11.00</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">16.52</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">28.84</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.6" style="padding-left:3.0pt;padding-right:3.0pt;">18.82</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.7" style="padding-left:3.0pt;padding-right:3.0pt;">13.53</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.8" style="padding-left:3.0pt;padding-right:3.0pt;">19.66</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.9" style="padding-left:3.0pt;padding-right:3.0pt;">17.67</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.10" style="padding-left:3.0pt;padding-right:3.0pt;">14.34</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.11" style="padding-left:3.0pt;padding-right:3.0pt;">58.17</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.12" style="padding-left:3.0pt;padding-right:3.0pt;">78.51</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.13" style="padding-left:3.0pt;padding-right:3.0pt;">32.99</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.9.9.14" style="padding-left:3.0pt;padding-right:3.0pt;">19.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.9.9.15" style="padding-left:3.0pt;padding-right:3.0pt;">21.35</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.9.9.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.9.9.16.1">25.99</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.10.10" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.10.10.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.2.1" style="background-color:#DAE8FC;">27.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.3.1" style="background-color:#DAE8FC;">27.84</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.4.1" style="background-color:#DAE8FC;">52.32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.5.1" style="background-color:#DAE8FC;">52.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.6.1" style="background-color:#DAE8FC;">45.27</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.7.1" style="background-color:#DAE8FC;">28.35</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.8.1" style="background-color:#DAE8FC;">22.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.9.1" style="background-color:#DAE8FC;">22.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.10.1" style="background-color:#DAE8FC;">20.64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.11.1" style="background-color:#DAE8FC;">69.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.12.1" style="background-color:#DAE8FC;">91.28</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.13.1" style="background-color:#DAE8FC;">40.17</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.10.10.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.14.1" style="background-color:#DAE8FC;">59.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.10.10.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.10.10.15.1" style="background-color:#DAE8FC;">48.38</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.10.10.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.10.10.16.1" style="background-color:#DAE8FC;">42.66<span class="ltx_text ltx_font_medium" id="A1.T2.1.1.10.10.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T2.1.1.11.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Instruct, KV Budget = 512</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.1.12.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">30.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">41.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">53.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">54.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.8" style="padding-left:3.0pt;padding-right:3.0pt;">27.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.10" style="padding-left:3.0pt;padding-right:3.0pt;">24.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.11" style="padding-left:3.0pt;padding-right:3.0pt;">71.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.12.12.14" style="padding-left:3.0pt;padding-right:3.0pt;">61.53</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.12.12.15" style="padding-left:3.0pt;padding-right:3.0pt;">52.49</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T2.1.1.12.12.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.12.12.16.1">46.60</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.13.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">29.07</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">40.16</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">52.44</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">53.90</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.6" style="padding-left:3.0pt;padding-right:3.0pt;">43.05</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.10</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.8" style="padding-left:3.0pt;padding-right:3.0pt;">25.75</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.39</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.10" style="padding-left:3.0pt;padding-right:3.0pt;">24.85</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.11" style="padding-left:3.0pt;padding-right:3.0pt;">69.00</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.12" style="padding-left:3.0pt;padding-right:3.0pt;">92.34</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.05</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.13.13.14" style="padding-left:3.0pt;padding-right:3.0pt;">63.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.13.13.15" style="padding-left:3.0pt;padding-right:3.0pt;">55.32</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.13.13.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.13.13.16.1">46.20</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.14.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">30.17</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">44.03</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">54.29</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">54.71</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.10</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.58</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.8" style="padding-left:3.0pt;padding-right:3.0pt;">31.14</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.46</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.66</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.11" style="padding-left:3.0pt;padding-right:3.0pt;">73.00</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.72</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.17</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.14.14.14" style="padding-left:3.0pt;padding-right:3.0pt;">62.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.14.14.15" style="padding-left:3.0pt;padding-right:3.0pt;">55.71</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.14.14.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.14.14.16.1">47.76</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.15.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">18.52</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">22.15</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">37.73</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.5" style="padding-left:3.0pt;padding-right:3.0pt;">46.88</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.6" style="padding-left:3.0pt;padding-right:3.0pt;">32.56</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.7" style="padding-left:3.0pt;padding-right:3.0pt;">24.52</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.8" style="padding-left:3.0pt;padding-right:3.0pt;">27.05</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.9" style="padding-left:3.0pt;padding-right:3.0pt;">17.75</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.10" style="padding-left:3.0pt;padding-right:3.0pt;">23.25</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.11" style="padding-left:3.0pt;padding-right:3.0pt;">60.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.49</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.13" style="padding-left:3.0pt;padding-right:3.0pt;">40.16</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.15.15.14" style="padding-left:3.0pt;padding-right:3.0pt;">27.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.15.15.15" style="padding-left:3.0pt;padding-right:3.0pt;">31.02</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.15.15.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.15.15.16.1">35.64</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.16.16" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.16.16.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.2.1" style="background-color:#DAE8FC;">30.38</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.3.1" style="background-color:#DAE8FC;">41.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.4.1" style="background-color:#DAE8FC;">55.71</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.5.1" style="background-color:#DAE8FC;">54.35</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.6.1" style="background-color:#DAE8FC;">46.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.7.1" style="background-color:#DAE8FC;">30.89</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.8.1" style="background-color:#DAE8FC;">26.78</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.9.1" style="background-color:#DAE8FC;">23.82</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.10.1" style="background-color:#DAE8FC;">24.37</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.11.1" style="background-color:#DAE8FC;">72.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.12.1" style="background-color:#DAE8FC;">92.04</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.13.1" style="background-color:#DAE8FC;">42.64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.16.16.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.14.1" style="background-color:#DAE8FC;">62.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.16.16.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.16.16.15.1" style="background-color:#DAE8FC;">52.74</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.16.16.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.16.16.16.1" style="background-color:#DAE8FC;">46.90<span class="ltx_text ltx_font_medium" id="A1.T2.1.1.16.16.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.17.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T2.1.1.17.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Instruct, KV Budget = 1024</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.1.18.18.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">31.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">42.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.4" style="padding-left:3.0pt;padding-right:3.0pt;">53.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.5" style="padding-left:3.0pt;padding-right:3.0pt;">55.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.8" style="padding-left:3.0pt;padding-right:3.0pt;">29.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.11" style="padding-left:3.0pt;padding-right:3.0pt;">70.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.18.18.14" style="padding-left:3.0pt;padding-right:3.0pt;">62.25</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.18.18.15" style="padding-left:3.0pt;padding-right:3.0pt;">54.72</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T2.1.1.18.18.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.18.18.16.1">47.31</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.19.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">29.23</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.3" style="padding-left:3.0pt;padding-right:3.0pt;">44.09</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.4" style="padding-left:3.0pt;padding-right:3.0pt;">53.82</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.5" style="padding-left:3.0pt;padding-right:3.0pt;">54.80</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.6" style="padding-left:3.0pt;padding-right:3.0pt;">44.01</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.40</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.8" style="padding-left:3.0pt;padding-right:3.0pt;">28.86</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.73</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.04</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.11" style="padding-left:3.0pt;padding-right:3.0pt;">72.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.72</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.56</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.19.19.14" style="padding-left:3.0pt;padding-right:3.0pt;">63.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.19.19.15" style="padding-left:3.0pt;padding-right:3.0pt;">56.33</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.19.19.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.19.19.16.1">47.38</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.20.20.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.2" style="padding-left:3.0pt;padding-right:3.0pt;">30.55</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.3" style="padding-left:3.0pt;padding-right:3.0pt;">44.66</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.4" style="padding-left:3.0pt;padding-right:3.0pt;">54.69</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.5" style="padding-left:3.0pt;padding-right:3.0pt;">55.47</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.20</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.63</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.8" style="padding-left:3.0pt;padding-right:3.0pt;">32.88</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.9" style="padding-left:3.0pt;padding-right:3.0pt;">25.14</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.10" style="padding-left:3.0pt;padding-right:3.0pt;">27.10</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.11" style="padding-left:3.0pt;padding-right:3.0pt;">73.00</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.57</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.88</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.20.20.14" style="padding-left:3.0pt;padding-right:3.0pt;">63.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.20.20.15" style="padding-left:3.0pt;padding-right:3.0pt;">56.06</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.20.20.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.20.20.16.1">48.26</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.21.21.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.2" style="padding-left:3.0pt;padding-right:3.0pt;">19.34</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.3" style="padding-left:3.0pt;padding-right:3.0pt;">34.76</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.4" style="padding-left:3.0pt;padding-right:3.0pt;">46.58</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.5" style="padding-left:3.0pt;padding-right:3.0pt;">46.82</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.6" style="padding-left:3.0pt;padding-right:3.0pt;">42.83</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.7" style="padding-left:3.0pt;padding-right:3.0pt;">27.51</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.8" style="padding-left:3.0pt;padding-right:3.0pt;">29.89</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.9" style="padding-left:3.0pt;padding-right:3.0pt;">18.96</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.68</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.11" style="padding-left:3.0pt;padding-right:3.0pt;">63.00</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.12" style="padding-left:3.0pt;padding-right:3.0pt;">90.70</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.21.21.14" style="padding-left:3.0pt;padding-right:3.0pt;">38.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.21.21.15" style="padding-left:3.0pt;padding-right:3.0pt;">35.14</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.21.21.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.21.21.16.1">40.13</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.22.22" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.22.22.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.2.1" style="background-color:#DAE8FC;">30.22</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.3.1" style="background-color:#DAE8FC;">44.01</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.4.1" style="background-color:#DAE8FC;">55.04</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.5.1" style="background-color:#DAE8FC;">54.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.6.1" style="background-color:#DAE8FC;">46.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.7.1" style="background-color:#DAE8FC;">30.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.8.1" style="background-color:#DAE8FC;">29.43</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.9.1" style="background-color:#DAE8FC;">24.66</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.10.1" style="background-color:#DAE8FC;">26.19</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.11.1" style="background-color:#DAE8FC;">73.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.12.1" style="background-color:#DAE8FC;">91.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.13.1" style="background-color:#DAE8FC;">42.42</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.22.22.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.14.1" style="background-color:#DAE8FC;">62.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.22.22.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.22.22.15.1" style="background-color:#DAE8FC;">55.02</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.22.22.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.22.22.16.1" style="background-color:#DAE8FC;">47.64<span class="ltx_text ltx_font_medium" id="A1.T2.1.1.22.22.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.23.23">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T2.1.1.23.23.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.1-8B-Instruct, KV Budget = 2048</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.24.24">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.1.1.24.24.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.2" style="padding-left:3.0pt;padding-right:3.0pt;">31.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.3" style="padding-left:3.0pt;padding-right:3.0pt;">44.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.4" style="padding-left:3.0pt;padding-right:3.0pt;">55.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.5" style="padding-left:3.0pt;padding-right:3.0pt;">55.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.7" style="padding-left:3.0pt;padding-right:3.0pt;">30.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.8" style="padding-left:3.0pt;padding-right:3.0pt;">31.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.11" style="padding-left:3.0pt;padding-right:3.0pt;">71.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.13" style="padding-left:3.0pt;padding-right:3.0pt;">43.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.24.24.14" style="padding-left:3.0pt;padding-right:3.0pt;">63.14</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.1.1.24.24.15" style="padding-left:3.0pt;padding-right:3.0pt;">56.04</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T2.1.1.24.24.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.24.24.16.1">48.00</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.25.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.25.25.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.2" style="padding-left:3.0pt;padding-right:3.0pt;">30.64</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.3" style="padding-left:3.0pt;padding-right:3.0pt;">45.23</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.4" style="padding-left:3.0pt;padding-right:3.0pt;">55.46</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.5" style="padding-left:3.0pt;padding-right:3.0pt;">55.55</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.26</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.14</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.8" style="padding-left:3.0pt;padding-right:3.0pt;">31.28</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.89</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.72</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.11" style="padding-left:3.0pt;padding-right:3.0pt;">72.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.64</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.75</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.25.25.14" style="padding-left:3.0pt;padding-right:3.0pt;">64.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.25.25.15" style="padding-left:3.0pt;padding-right:3.0pt;">59.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.25.25.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.25.25.16.1">48.37</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.26.26.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.2" style="padding-left:3.0pt;padding-right:3.0pt;">30.53</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.3" style="padding-left:3.0pt;padding-right:3.0pt;">44.99</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.4" style="padding-left:3.0pt;padding-right:3.0pt;">54.98</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.5" style="padding-left:3.0pt;padding-right:3.0pt;">55.47</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.08</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.7" style="padding-left:3.0pt;padding-right:3.0pt;">31.42</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.8" style="padding-left:3.0pt;padding-right:3.0pt;">32.41</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.9" style="padding-left:3.0pt;padding-right:3.0pt;">25.05</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.10" style="padding-left:3.0pt;padding-right:3.0pt;">27.20</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.11" style="padding-left:3.0pt;padding-right:3.0pt;">72.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.57</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.84</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.26.26.14" style="padding-left:3.0pt;padding-right:3.0pt;">63.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.26.26.15" style="padding-left:3.0pt;padding-right:3.0pt;">56.75</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.26.26.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.26.26.16.1">48.23</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.27.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.1.1.27.27.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.64</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.3" style="padding-left:3.0pt;padding-right:3.0pt;">41.17</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.4" style="padding-left:3.0pt;padding-right:3.0pt;">51.39</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.5" style="padding-left:3.0pt;padding-right:3.0pt;">53.97</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.32</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.7" style="padding-left:3.0pt;padding-right:3.0pt;">29.24</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.8" style="padding-left:3.0pt;padding-right:3.0pt;">32.01</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.9" style="padding-left:3.0pt;padding-right:3.0pt;">20.50</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.91</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.11" style="padding-left:3.0pt;padding-right:3.0pt;">70.00</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.12" style="padding-left:3.0pt;padding-right:3.0pt;">91.59</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.59</td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.27.27.14" style="padding-left:3.0pt;padding-right:3.0pt;">47.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.1.1.27.27.15" style="padding-left:3.0pt;padding-right:3.0pt;">38.91</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T2.1.1.27.27.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T2.1.1.27.27.16.1">43.90</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.28.28" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T2.1.1.28.28.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.2.1" style="background-color:#DAE8FC;">30.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.3.1" style="background-color:#DAE8FC;">45.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.4.1" style="background-color:#DAE8FC;">54.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.5.1" style="background-color:#DAE8FC;">55.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.6.1" style="background-color:#DAE8FC;">46.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.7.1" style="background-color:#DAE8FC;">30.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.8.1" style="background-color:#DAE8FC;">31.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.9.1" style="background-color:#DAE8FC;">24.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.10.1" style="background-color:#DAE8FC;">27.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.11.1" style="background-color:#DAE8FC;">73.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.12.1" style="background-color:#DAE8FC;">91.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.13.1" style="background-color:#DAE8FC;">43.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.1.28.28.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.14.1" style="background-color:#DAE8FC;">63.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T2.1.1.28.28.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T2.1.1.28.28.15.1" style="background-color:#DAE8FC;">55.82</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r" id="A1.T2.1.1.28.28.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.28.28.16.1" style="background-color:#DAE8FC;">48.10<span class="ltx_text ltx_font_medium" id="A1.T2.1.1.28.28.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different key-value (KV) cache compression methods on the LLaMA-3.1-8B-Instruct model for various KV cache budget sizes (Full, 128, 512, 1024, and 2048).  It shows the accuracy scores across several LongBench tasks, including Single-Doc QA, Multi-Doc QA, Summarization, and Few-shot Learning.  The results allow comparison of the methods' effectiveness in balancing accuracy and efficiency under different levels of memory constraints.
> <details>
> <summary>read the caption</summary>
> Table 2: LongBench results of LLaMA-3.1-8B-Instruct.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A1.T3.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T3.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Single-Doc QA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T3.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Multi-Doc QA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T3.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">Summarization</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T3.1.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Few-shot Learning</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T3.1.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">Coding</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_tt" id="A1.T3.1.1.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.2.2.1.1" style="position:relative; bottom:14.2pt;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.2.1" style="width:31.6pt;height:31.6pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:35.9pt;transform:translate(-2.15pt,-9.05pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.2.1.1">NrtvQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.3.1" style="width:28.1pt;height:28.1pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-1.42pt,-7.3pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.3.1.1">Qasper</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.4.1" style="width:25.4pt;height:25.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.0pt;transform:translate(-1.84pt,-9.26pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.4.1.1">MF-en</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.5.1" style="width:39.0pt;height:39pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:46.4pt;transform:translate(-3.69pt,-12.77pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.5.1.1">HotpotQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.6.1" style="width:42.0pt;height:42.1pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:50.6pt;transform:translate(-4.26pt,-14.23pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.6.1.1">2WikiMQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.7.1" style="width:32.2pt;height:32.2pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-2.27pt,-9.35pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.7.1.1">Musique</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.8.1" style="width:40.4pt;height:40.4pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:48.3pt;transform:translate(-3.97pt,-13.44pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.8.1.1">GovReport</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.9.1" style="width:31.9pt;height:32pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-2.23pt,-9.23pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.9.1.1">QMSum</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.2.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.10.1" style="width:38.3pt;height:38.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.3pt;transform:translate(-4.47pt,-15.7pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.10.1.1">MultiNews</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.11" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.11.1" style="width:25.1pt;height:25.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.6pt;transform:translate(-1.77pt,-9.11pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.11.1.1">TREC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.12.1" style="width:35.5pt;height:35.5pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:41.4pt;transform:translate(-2.96pt,-11.01pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.12.1.1">TriviaQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.2.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.13.1" style="width:34.3pt;height:34.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:41.7pt;transform:translate(-3.69pt,-13.73pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.13.1.1">SAMSum</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.14" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.14.1" style="width:19.5pt;height:19.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.7pt;transform:translate(-0.61pt,-6.32pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.14.1.1">LCC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.2.2.15" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.1.1.2.2.15.1" style="width:22.2pt;height:22.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:24.6pt;transform:translate(-1.18pt,-7.69pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.1.1.2.2.15.1.1">RB-P</p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.2.2.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="A1.T3.1.1.2.2.16.1" style="position:relative; bottom:14.2pt;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T3.1.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.2-3B-Instruct, KV Budget = Full</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T3.1.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Full KV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">40.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">49.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">38.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">20.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">34.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.11" style="padding-left:3.0pt;padding-right:3.0pt;">71.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.12" style="padding-left:3.0pt;padding-right:3.0pt;">88.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.13" style="padding-left:3.0pt;padding-right:3.0pt;">43.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.4.4.14" style="padding-left:3.0pt;padding-right:3.0pt;">52.13</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.4.4.15" style="padding-left:3.0pt;padding-right:3.0pt;">54.16</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T3.1.1.4.4.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.4.4.16.1">44.02</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T3.1.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.2-3B-Instruct, KV Budget= 128</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T3.1.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">17.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">23.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">44.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">45.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">35.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">17.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.8" style="padding-left:3.0pt;padding-right:3.0pt;">21.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.9" style="padding-left:3.0pt;padding-right:3.0pt;">21.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.10" style="padding-left:3.0pt;padding-right:3.0pt;">20.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.11" style="padding-left:3.0pt;padding-right:3.0pt;">66.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.12" style="padding-left:3.0pt;padding-right:3.0pt;">87.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.13" style="padding-left:3.0pt;padding-right:3.0pt;">38.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.6.6.14" style="padding-left:3.0pt;padding-right:3.0pt;">48.31</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.6.6.15" style="padding-left:3.0pt;padding-right:3.0pt;">45.82</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T3.1.1.6.6.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.6.6.16.1">38.05</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">19.94</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">23.15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">44.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">45.17</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">36.51</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">18.68</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">21.86</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">21.46</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.10" style="padding-left:3.0pt;padding-right:3.0pt;">20.57</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.11" style="padding-left:3.0pt;padding-right:3.0pt;">67.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.12" style="padding-left:3.0pt;padding-right:3.0pt;">87.82</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.13" style="padding-left:3.0pt;padding-right:3.0pt;">39.26</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.14" style="padding-left:3.0pt;padding-right:3.0pt;">49.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.7.7.15" style="padding-left:3.0pt;padding-right:3.0pt;">47.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.7.7.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.7.7.16.1">38.78</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">21.59</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">32.15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">48.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.79</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;">38.28</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.7" style="padding-left:3.0pt;padding-right:3.0pt;">18.51</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">25.30</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.9" style="padding-left:3.0pt;padding-right:3.0pt;">21.94</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.10" style="padding-left:3.0pt;padding-right:3.0pt;">23.86</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.11" style="padding-left:3.0pt;padding-right:3.0pt;">69.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.12" style="padding-left:3.0pt;padding-right:3.0pt;">88.45</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.13" style="padding-left:3.0pt;padding-right:3.0pt;">38.34</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.8.14" style="padding-left:3.0pt;padding-right:3.0pt;">52.11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.8.8.15" style="padding-left:3.0pt;padding-right:3.0pt;">50.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.8.8.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.8.8.16.1">41.22</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">10.36</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">10.70</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">26.36</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">35.84</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.6" style="padding-left:3.0pt;padding-right:3.0pt;">27.75</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.7" style="padding-left:3.0pt;padding-right:3.0pt;">11.63</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.8" style="padding-left:3.0pt;padding-right:3.0pt;">19.23</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.9" style="padding-left:3.0pt;padding-right:3.0pt;">17.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.10" style="padding-left:3.0pt;padding-right:3.0pt;">13.59</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.11" style="padding-left:3.0pt;padding-right:3.0pt;">55.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.12" style="padding-left:3.0pt;padding-right:3.0pt;">71.58</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.13" style="padding-left:3.0pt;padding-right:3.0pt;">28.40</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.14" style="padding-left:3.0pt;padding-right:3.0pt;">19.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.9.9.15" style="padding-left:3.0pt;padding-right:3.0pt;">27.46</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.9.9.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.9.9.16.1">26.75</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.10.10" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.10.10.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.2.1" style="background-color:#DAE8FC;">19.95</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.3.1" style="background-color:#DAE8FC;">23.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.4.1" style="background-color:#DAE8FC;">44.34</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.5.1" style="background-color:#DAE8FC;">45.25</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.6.1" style="background-color:#DAE8FC;">34.49</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.7.1" style="background-color:#DAE8FC;">19.89</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.8.1" style="background-color:#DAE8FC;">21.34</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.9.1" style="background-color:#DAE8FC;">20.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.10.1" style="background-color:#DAE8FC;">20.02</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.11.1" style="background-color:#DAE8FC;">66.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.12.1" style="background-color:#DAE8FC;">88.05</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.13.1" style="background-color:#DAE8FC;">38.37</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.14.1" style="background-color:#DAE8FC;">48.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.10.10.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.10.10.15.1" style="background-color:#DAE8FC;">47.13</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.10.10.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.10.10.16.1" style="background-color:#DAE8FC;">38.39<span class="ltx_text ltx_font_medium" id="A1.T3.1.1.10.10.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T3.1.1.11.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.2-3B-Instruct, KV Budget = 512</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T3.1.1.12.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">21.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">32.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">49.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.6" style="padding-left:3.0pt;padding-right:3.0pt;">37.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.7" style="padding-left:3.0pt;padding-right:3.0pt;">20.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.8" style="padding-left:3.0pt;padding-right:3.0pt;">25.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.9" style="padding-left:3.0pt;padding-right:3.0pt;">22.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.10" style="padding-left:3.0pt;padding-right:3.0pt;">24.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.11" style="padding-left:3.0pt;padding-right:3.0pt;">69.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.12" style="padding-left:3.0pt;padding-right:3.0pt;">88.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.13" style="padding-left:3.0pt;padding-right:3.0pt;">41.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.12.12.14" style="padding-left:3.0pt;padding-right:3.0pt;">51.68</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.12.12.15" style="padding-left:3.0pt;padding-right:3.0pt;">51.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T3.1.1.12.12.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.12.12.16.1">41.75</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.13.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">21.30</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">32.88</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">49.92</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">47.65</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.6" style="padding-left:3.0pt;padding-right:3.0pt;">37.20</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.7" style="padding-left:3.0pt;padding-right:3.0pt;">19.72</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.8" style="padding-left:3.0pt;padding-right:3.0pt;">25.96</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.9" style="padding-left:3.0pt;padding-right:3.0pt;">22.65</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.10" style="padding-left:3.0pt;padding-right:3.0pt;">24.31</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.11" style="padding-left:3.0pt;padding-right:3.0pt;">69.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.03</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.13" style="padding-left:3.0pt;padding-right:3.0pt;">41.55</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.14" style="padding-left:3.0pt;padding-right:3.0pt;">51.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.13.13.15" style="padding-left:3.0pt;padding-right:3.0pt;">51.87</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.13.13.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.13.13.16.1">41.80</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.14.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.79</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">36.45</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.57</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.85</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">39.16</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.7" style="padding-left:3.0pt;padding-right:3.0pt;">20.44</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.8" style="padding-left:3.0pt;padding-right:3.0pt;">29.79</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.24</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.10</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.11" style="padding-left:3.0pt;padding-right:3.0pt;">70.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.66</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.13" style="padding-left:3.0pt;padding-right:3.0pt;">40.80</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.14" style="padding-left:3.0pt;padding-right:3.0pt;">53.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.14.14.15" style="padding-left:3.0pt;padding-right:3.0pt;">53.83</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.14.14.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.14.14.16.1">43.28</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.15.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">20.88</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">31.37</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">44.31</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.5" style="padding-left:3.0pt;padding-right:3.0pt;">47.60</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.6" style="padding-left:3.0pt;padding-right:3.0pt;">34.87</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.7" style="padding-left:3.0pt;padding-right:3.0pt;">23.59</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.8" style="padding-left:3.0pt;padding-right:3.0pt;">25.89</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.9" style="padding-left:3.0pt;padding-right:3.0pt;">19.82</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.10" style="padding-left:3.0pt;padding-right:3.0pt;">24.01</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.11" style="padding-left:3.0pt;padding-right:3.0pt;">55.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.12" style="padding-left:3.0pt;padding-right:3.0pt;">85.73</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.13" style="padding-left:3.0pt;padding-right:3.0pt;">35.29</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.14" style="padding-left:3.0pt;padding-right:3.0pt;">26.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.15.15.15" style="padding-left:3.0pt;padding-right:3.0pt;">32.72</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.15.15.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.15.15.16.1">36.27</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.16.16" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.16.16.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.2.1" style="background-color:#DAE8FC;">21.73</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.3.1" style="background-color:#DAE8FC;">31.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.4.1" style="background-color:#DAE8FC;">49.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.5.1" style="background-color:#DAE8FC;">47.31</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.6.1" style="background-color:#DAE8FC;">36.54</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.7.1" style="background-color:#DAE8FC;">22.14</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.8.1" style="background-color:#DAE8FC;">25.47</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.9.1" style="background-color:#DAE8FC;">22.38</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.10.1" style="background-color:#DAE8FC;">24.05</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.11.1" style="background-color:#DAE8FC;">71.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.12.1" style="background-color:#DAE8FC;">88.99</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.13.1" style="background-color:#DAE8FC;">40.91</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.14.1" style="background-color:#DAE8FC;">52.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.16.16.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.16.16.15.1" style="background-color:#DAE8FC;">52.17</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.16.16.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.16.16.16.1" style="background-color:#DAE8FC;">41.93<span class="ltx_text ltx_font_medium" id="A1.T3.1.1.16.16.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.17.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T3.1.1.17.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.2-3B-Instruct, KV Budget = 1024</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T3.1.1.18.18.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">21.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">36.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.4" style="padding-left:3.0pt;padding-right:3.0pt;">49.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.6" style="padding-left:3.0pt;padding-right:3.0pt;">38.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.7" style="padding-left:3.0pt;padding-right:3.0pt;">21.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.8" style="padding-left:3.0pt;padding-right:3.0pt;">28.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.11" style="padding-left:3.0pt;padding-right:3.0pt;">69.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.13" style="padding-left:3.0pt;padding-right:3.0pt;">41.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.18.18.14" style="padding-left:3.0pt;padding-right:3.0pt;">53.01</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.18.18.15" style="padding-left:3.0pt;padding-right:3.0pt;">53.42</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T3.1.1.18.18.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.18.18.16.1">42.75</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.19.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">21.69</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.3" style="padding-left:3.0pt;padding-right:3.0pt;">36.91</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.4" style="padding-left:3.0pt;padding-right:3.0pt;">49.76</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.10</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.6" style="padding-left:3.0pt;padding-right:3.0pt;">39.27</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.7" style="padding-left:3.0pt;padding-right:3.0pt;">21.25</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.8" style="padding-left:3.0pt;padding-right:3.0pt;">28.01</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.9" style="padding-left:3.0pt;padding-right:3.0pt;">22.78</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.66</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.11" style="padding-left:3.0pt;padding-right:3.0pt;">70.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.12" style="padding-left:3.0pt;padding-right:3.0pt;">88.96</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.62</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.14" style="padding-left:3.0pt;padding-right:3.0pt;">53.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.19.19.15" style="padding-left:3.0pt;padding-right:3.0pt;">53.35</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.19.19.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.19.19.16.1">42.96</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.20.20.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.44</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.3" style="padding-left:3.0pt;padding-right:3.0pt;">38.06</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.37</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.5" style="padding-left:3.0pt;padding-right:3.0pt;">49.14</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.6" style="padding-left:3.0pt;padding-right:3.0pt;">39.51</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.7" style="padding-left:3.0pt;padding-right:3.0pt;">20.33</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.8" style="padding-left:3.0pt;padding-right:3.0pt;">31.48</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.26</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.59</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.11" style="padding-left:3.0pt;padding-right:3.0pt;">71.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.53</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.13" style="padding-left:3.0pt;padding-right:3.0pt;">41.41</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.14" style="padding-left:3.0pt;padding-right:3.0pt;">53.84</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.20.20.15" style="padding-left:3.0pt;padding-right:3.0pt;">54.14</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.20.20.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.20.20.16.1">43.72</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.21.21.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.2" style="padding-left:3.0pt;padding-right:3.0pt;">21.34</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.3" style="padding-left:3.0pt;padding-right:3.0pt;">33.72</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.4" style="padding-left:3.0pt;padding-right:3.0pt;">48.52</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.5" style="padding-left:3.0pt;padding-right:3.0pt;">50.13</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.6" style="padding-left:3.0pt;padding-right:3.0pt;">33.75</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.7" style="padding-left:3.0pt;padding-right:3.0pt;">20.82</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.8" style="padding-left:3.0pt;padding-right:3.0pt;">28.90</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.9" style="padding-left:3.0pt;padding-right:3.0pt;">20.73</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.10" style="padding-left:3.0pt;padding-right:3.0pt;">24.73</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.11" style="padding-left:3.0pt;padding-right:3.0pt;">61.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.17</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.13" style="padding-left:3.0pt;padding-right:3.0pt;">38.44</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.14" style="padding-left:3.0pt;padding-right:3.0pt;">29.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.21.21.15" style="padding-left:3.0pt;padding-right:3.0pt;">34.05</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.21.21.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.21.21.16.1">38.26</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.22.22" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.22.22.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.2.1" style="background-color:#DAE8FC;">23.13</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.3.1" style="background-color:#DAE8FC;">35.27</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.4.1" style="background-color:#DAE8FC;">49.48</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.5.1" style="background-color:#DAE8FC;">47.93</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.6.1" style="background-color:#DAE8FC;">38.74</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.7.1" style="background-color:#DAE8FC;">21.42</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.8.1" style="background-color:#DAE8FC;">28.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.9.1" style="background-color:#DAE8FC;">22.66</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.10.1" style="background-color:#DAE8FC;">25.86</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.11.1" style="background-color:#DAE8FC;">71.50</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.12.1" style="background-color:#DAE8FC;">89.46</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.13.1" style="background-color:#DAE8FC;">41.46</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.14.1" style="background-color:#DAE8FC;">53.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.22.22.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.22.22.15.1" style="background-color:#DAE8FC;">54.37</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.22.22.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.22.22.16.1" style="background-color:#DAE8FC;">43.03<span class="ltx_text ltx_font_medium" id="A1.T3.1.1.22.22.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.23.23">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T3.1.1.23.23.1" style="padding-left:3.0pt;padding-right:3.0pt;">LLaMA-3.2-3B-Instruct, KV Budget = 2048</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.24.24">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T3.1.1.24.24.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.3" style="padding-left:3.0pt;padding-right:3.0pt;">38.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.6" style="padding-left:3.0pt;padding-right:3.0pt;">39.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.7" style="padding-left:3.0pt;padding-right:3.0pt;">20.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.8" style="padding-left:3.0pt;padding-right:3.0pt;">30.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.11" style="padding-left:3.0pt;padding-right:3.0pt;">70.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.12" style="padding-left:3.0pt;padding-right:3.0pt;">88.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.24.24.14" style="padding-left:3.0pt;padding-right:3.0pt;">52.16</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.24.24.15" style="padding-left:3.0pt;padding-right:3.0pt;">54.03</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T3.1.1.24.24.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.24.24.16.1">43.50</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.25.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.25.25.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.43</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.3" style="padding-left:3.0pt;padding-right:3.0pt;">39.28</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.26</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.61</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.6" style="padding-left:3.0pt;padding-right:3.0pt;">39.60</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.7" style="padding-left:3.0pt;padding-right:3.0pt;">20.82</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.8" style="padding-left:3.0pt;padding-right:3.0pt;">30.39</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.9" style="padding-left:3.0pt;padding-right:3.0pt;">22.94</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.65</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.11" style="padding-left:3.0pt;padding-right:3.0pt;">71.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.12" style="padding-left:3.0pt;padding-right:3.0pt;">88.89</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.57</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.14" style="padding-left:3.0pt;padding-right:3.0pt;">52.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.25.25.15" style="padding-left:3.0pt;padding-right:3.0pt;">54.60</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.25.25.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.25.25.16.1">43.67</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.26.26.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.56</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.3" style="padding-left:3.0pt;padding-right:3.0pt;">39.84</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.40</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.5" style="padding-left:3.0pt;padding-right:3.0pt;">49.15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.6" style="padding-left:3.0pt;padding-right:3.0pt;">38.95</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.7" style="padding-left:3.0pt;padding-right:3.0pt;">20.25</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.8" style="padding-left:3.0pt;padding-right:3.0pt;">32.98</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.73</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.71</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.11" style="padding-left:3.0pt;padding-right:3.0pt;">71.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.28</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.74</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.14" style="padding-left:3.0pt;padding-right:3.0pt;">53.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.26.26.15" style="padding-left:3.0pt;padding-right:3.0pt;">55.30</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.26.26.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.26.26.16.1">44.03</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.27.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T3.1.1.27.27.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.2" style="padding-left:3.0pt;padding-right:3.0pt;">17.48</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.3" style="padding-left:3.0pt;padding-right:3.0pt;">38.31</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.4" style="padding-left:3.0pt;padding-right:3.0pt;">49.93</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.5" style="padding-left:3.0pt;padding-right:3.0pt;">50.57</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.6" style="padding-left:3.0pt;padding-right:3.0pt;">40.29</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.7" style="padding-left:3.0pt;padding-right:3.0pt;">19.02</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.8" style="padding-left:3.0pt;padding-right:3.0pt;">30.95</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.9" style="padding-left:3.0pt;padding-right:3.0pt;">21.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.28</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.11" style="padding-left:3.0pt;padding-right:3.0pt;">64.50</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.12" style="padding-left:3.0pt;padding-right:3.0pt;">90.07</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.13" style="padding-left:3.0pt;padding-right:3.0pt;">40.59</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.14" style="padding-left:3.0pt;padding-right:3.0pt;">37.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.27.27.15" style="padding-left:3.0pt;padding-right:3.0pt;">38.88</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T3.1.1.27.27.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T3.1.1.27.27.16.1">40.45</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.28.28" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T3.1.1.28.28.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.2.1" style="background-color:#DAE8FC;">24.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.3.1" style="background-color:#DAE8FC;">37.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.4.1" style="background-color:#DAE8FC;">50.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.5.1" style="background-color:#DAE8FC;">47.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.6.1" style="background-color:#DAE8FC;">38.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.7.1" style="background-color:#DAE8FC;">21.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.8.1" style="background-color:#DAE8FC;">30.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.9.1" style="background-color:#DAE8FC;">23.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.10.1" style="background-color:#DAE8FC;">26.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.11.1" style="background-color:#DAE8FC;">72.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.12.1" style="background-color:#DAE8FC;">89.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.13.1" style="background-color:#DAE8FC;">41.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.28.28.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.14.1" style="background-color:#DAE8FC;">52.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T3.1.1.28.28.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T3.1.1.28.28.15.1" style="background-color:#DAE8FC;">55.52</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r" id="A1.T3.1.1.28.28.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.28.28.16.1" style="background-color:#DAE8FC;">43.71<span class="ltx_text ltx_font_medium" id="A1.T3.1.1.28.28.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive breakdown of the LongBench benchmark results specifically for the LLaMA-3.2-3B-Instruct model.  It details the performance across various sub-tasks within the benchmark, categorized by different KV budget configurations (128, 512, 1024, and Full).  The results showcase the model's performance across different question answering tasks, summarization, and few-shot learning scenarios, providing a granular view of its capabilities under varying resource constraints.
> <details>
> <summary>read the caption</summary>
> Table 3: LongBench results of LLaMA-3.2-3B-Instruct.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A1.T4.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T4.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Single-Doc QA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T4.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Multi-Doc QA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T4.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">Summarization</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A1.T4.1.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Few-shot Learning</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T4.1.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">Coding</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_tt" id="A1.T4.1.1.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.2.2.1.1" style="position:relative; bottom:14.2pt;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.2.1" style="width:31.6pt;height:31.6pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:35.9pt;transform:translate(-2.15pt,-9.05pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.2.1.1">NrtvQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.3.1" style="width:28.1pt;height:28.1pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-1.42pt,-7.3pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.3.1.1">Qasper</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.4.1" style="width:25.4pt;height:25.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.0pt;transform:translate(-1.84pt,-9.26pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.4.1.1">MF-en</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.5.1" style="width:39.0pt;height:39pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:46.4pt;transform:translate(-3.69pt,-12.77pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.5.1.1">HotpotQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.6.1" style="width:42.0pt;height:42.1pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:50.6pt;transform:translate(-4.26pt,-14.23pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.6.1.1">2WikiMQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.7.1" style="width:32.2pt;height:32.2pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-2.27pt,-9.35pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.7.1.1">Musique</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.8.1" style="width:40.4pt;height:40.4pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:48.3pt;transform:translate(-3.97pt,-13.44pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.8.1.1">GovReport</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.9.1" style="width:31.9pt;height:32pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-2.23pt,-9.23pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.9.1.1">QMSum</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.2.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.10.1" style="width:38.3pt;height:38.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.3pt;transform:translate(-4.47pt,-15.7pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.10.1.1">MultiNews</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.11" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.11.1" style="width:25.1pt;height:25.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.6pt;transform:translate(-1.77pt,-9.11pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.11.1.1">TREC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.12.1" style="width:35.5pt;height:35.5pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:41.4pt;transform:translate(-2.96pt,-11.01pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.12.1.1">TriviaQA</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.2.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.13.1" style="width:34.3pt;height:34.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:41.7pt;transform:translate(-3.69pt,-13.73pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.13.1.1">SAMSum</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2.2.14" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.14.1" style="width:19.5pt;height:19.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.7pt;transform:translate(-0.61pt,-6.32pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.14.1.1">LCC</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.2.2.15" style="padding-left:3.0pt;padding-right:3.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.2.2.15.1" style="width:22.2pt;height:22.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:24.6pt;transform:translate(-1.18pt,-7.69pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T4.1.1.2.2.15.1.1">RB-P</p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.2.2.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="A1.T4.1.1.2.2.16.1" style="position:relative; bottom:14.2pt;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T4.1.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mistral-Nemo-12B-Instruct, Budget = Full</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Full KV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">26.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">43.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">58.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">49.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">26.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">31.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.11" style="padding-left:3.0pt;padding-right:3.0pt;">75.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.13" style="padding-left:3.0pt;padding-right:3.0pt;">44.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4.4.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.58</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.4.4.15" style="padding-left:3.0pt;padding-right:3.0pt;">68.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T4.1.1.4.4.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.4.4.16.1">48.33</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T4.1.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mistral-Nemo-12B-Instruct, KV Budget = 128</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">21.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">34.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">51.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">44.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">23.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.8" style="padding-left:3.0pt;padding-right:3.0pt;">19.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.9" style="padding-left:3.0pt;padding-right:3.0pt;">20.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.10" style="padding-left:3.0pt;padding-right:3.0pt;">20.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.11" style="padding-left:3.0pt;padding-right:3.0pt;">69.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.13" style="padding-left:3.0pt;padding-right:3.0pt;">39.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6.6.14" style="padding-left:3.0pt;padding-right:3.0pt;">62.85</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.6.6.15" style="padding-left:3.0pt;padding-right:3.0pt;">53.08</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T4.1.1.6.6.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.6.6.16.1">42.85</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.29</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">36.52</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">52.50</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">47.28</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">44.73</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">21.84</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">19.15</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">20.61</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.10" style="padding-left:3.0pt;padding-right:3.0pt;">20.74</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.11" style="padding-left:3.0pt;padding-right:3.0pt;">65.50</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.12" style="padding-left:3.0pt;padding-right:3.0pt;">88.64</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.13" style="padding-left:3.0pt;padding-right:3.0pt;">39.25</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.7.7.14" style="padding-left:3.0pt;padding-right:3.0pt;">63.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.7.7.15" style="padding-left:3.0pt;padding-right:3.0pt;">54.07</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.7.7.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.7.7.16.1">42.64</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.62</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">38.76</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">52.54</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">46.49</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.97</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.7" style="padding-left:3.0pt;padding-right:3.0pt;">21.80</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">20.74</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.9" style="padding-left:3.0pt;padding-right:3.0pt;">21.37</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.10" style="padding-left:3.0pt;padding-right:3.0pt;">22.10</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.11" style="padding-left:3.0pt;padding-right:3.0pt;">73.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.42</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.13" style="padding-left:3.0pt;padding-right:3.0pt;">39.16</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.8.8.14" style="padding-left:3.0pt;padding-right:3.0pt;">64.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.8.8.15" style="padding-left:3.0pt;padding-right:3.0pt;">56.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.8.8.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.8.8.16.1">43.93</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">15.74</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">18.30</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">42.98</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">41.86</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.6" style="padding-left:3.0pt;padding-right:3.0pt;">34.20</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.7" style="padding-left:3.0pt;padding-right:3.0pt;">18.44</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.8" style="padding-left:3.0pt;padding-right:3.0pt;">21.72</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.9" style="padding-left:3.0pt;padding-right:3.0pt;">16.56</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.10" style="padding-left:3.0pt;padding-right:3.0pt;">18.81</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.11" style="padding-left:3.0pt;padding-right:3.0pt;">57.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.12" style="padding-left:3.0pt;padding-right:3.0pt;">63.02</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.13" style="padding-left:3.0pt;padding-right:3.0pt;">31.78</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.9.9.14" style="padding-left:3.0pt;padding-right:3.0pt;">25.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.9.9.15" style="padding-left:3.0pt;padding-right:3.0pt;">30.62</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.9.9.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.9.9.16.1">31.20</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.10.10" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.10.10.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.2.1" style="background-color:#DAE8FC;">22.26</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.3.1" style="background-color:#DAE8FC;">35.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.4.1" style="background-color:#DAE8FC;">53.33</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.5.1" style="background-color:#DAE8FC;">49.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.6.1" style="background-color:#DAE8FC;">45.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.7.1" style="background-color:#DAE8FC;">23.67</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.8.1" style="background-color:#DAE8FC;">19.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.9.1" style="background-color:#DAE8FC;">20.80</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.10.1" style="background-color:#DAE8FC;">20.47</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.11.1" style="background-color:#DAE8FC;">65.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.12.1" style="background-color:#DAE8FC;">90.06</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.13.1" style="background-color:#DAE8FC;">39.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.10.10.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.14.1" style="background-color:#DAE8FC;">63.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.10.10.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.10.10.15.1" style="background-color:#DAE8FC;">55.68</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.10.10.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.10.10.16.1" style="background-color:#DAE8FC;">43.13<span class="ltx_text ltx_font_medium" id="A1.T4.1.1.10.10.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T4.1.1.11.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mistral-Nemo-12B-Instruct, KV Budget = 512</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.1.12.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">40.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">55.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">47.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.7" style="padding-left:3.0pt;padding-right:3.0pt;">25.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.8" style="padding-left:3.0pt;padding-right:3.0pt;">23.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.9" style="padding-left:3.0pt;padding-right:3.0pt;">22.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.10" style="padding-left:3.0pt;padding-right:3.0pt;">24.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.11" style="padding-left:3.0pt;padding-right:3.0pt;">74.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.13" style="padding-left:3.0pt;padding-right:3.0pt;">43.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.12.12.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.31</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.12.12.15" style="padding-left:3.0pt;padding-right:3.0pt;">62.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T4.1.1.12.12.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.12.12.16.1">46.07</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.13.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">24.46</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">41.52</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">57.34</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">47.89</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.83</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.7" style="padding-left:3.0pt;padding-right:3.0pt;">25.57</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.8" style="padding-left:3.0pt;padding-right:3.0pt;">23.58</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.9" style="padding-left:3.0pt;padding-right:3.0pt;">22.11</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.10" style="padding-left:3.0pt;padding-right:3.0pt;">23.88</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.11" style="padding-left:3.0pt;padding-right:3.0pt;">74.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.52</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.13" style="padding-left:3.0pt;padding-right:3.0pt;">43.20</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.13.13.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.13.13.15" style="padding-left:3.0pt;padding-right:3.0pt;">64.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.13.13.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.13.13.16.1">46.52</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.14.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">25.88</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">40.57</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">57.12</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.11</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.11</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.7" style="padding-left:3.0pt;padding-right:3.0pt;">25.26</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.8" style="padding-left:3.0pt;padding-right:3.0pt;">26.19</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.9" style="padding-left:3.0pt;padding-right:3.0pt;">22.92</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.25</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.11" style="padding-left:3.0pt;padding-right:3.0pt;">74.50</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.74</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.13" style="padding-left:3.0pt;padding-right:3.0pt;">41.81</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.14.14.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.14.14.15" style="padding-left:3.0pt;padding-right:3.0pt;">64.76</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.14.14.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.14.14.16.1">46.93</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.15.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">25.45</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">37.64</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">53.91</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.5" style="padding-left:3.0pt;padding-right:3.0pt;">52.83</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.6" style="padding-left:3.0pt;padding-right:3.0pt;">51.26</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.7" style="padding-left:3.0pt;padding-right:3.0pt;">33.02</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.8" style="padding-left:3.0pt;padding-right:3.0pt;">26.23</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.9" style="padding-left:3.0pt;padding-right:3.0pt;">19.42</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.10" style="padding-left:3.0pt;padding-right:3.0pt;">23.87</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.11" style="padding-left:3.0pt;padding-right:3.0pt;">65.50</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.12" style="padding-left:3.0pt;padding-right:3.0pt;">84.16</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.13" style="padding-left:3.0pt;padding-right:3.0pt;">40.05</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.15.15.14" style="padding-left:3.0pt;padding-right:3.0pt;">38.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.15.15.15" style="padding-left:3.0pt;padding-right:3.0pt;">41.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.15.15.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.15.15.16.1">42.32</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.16.16" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.16.16.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.2.1" style="background-color:#DAE8FC;">25.51</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.3.1" style="background-color:#DAE8FC;">41.48</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.4.1" style="background-color:#DAE8FC;">56.76</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.5.1" style="background-color:#DAE8FC;">48.73</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.6.1" style="background-color:#DAE8FC;">45.43</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.7.1" style="background-color:#DAE8FC;">26.53</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.8.1" style="background-color:#DAE8FC;">23.42</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.9.1" style="background-color:#DAE8FC;">22.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.10.1" style="background-color:#DAE8FC;">24.02</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.11.1" style="background-color:#DAE8FC;">74.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.12.1" style="background-color:#DAE8FC;">89.42</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.13.1" style="background-color:#DAE8FC;">43.22</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.16.16.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.14.1" style="background-color:#DAE8FC;">68.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.16.16.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.16.16.15.1" style="background-color:#DAE8FC;">63.57</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.16.16.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.16.16.16.1" style="background-color:#DAE8FC;">46.63<span class="ltx_text ltx_font_medium" id="A1.T4.1.1.16.16.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.17.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T4.1.1.17.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mistral-Nemo-12B-Instruct, KV Budget = 1024</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.1.18.18.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">41.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.4" style="padding-left:3.0pt;padding-right:3.0pt;">56.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.5" style="padding-left:3.0pt;padding-right:3.0pt;">47.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.7" style="padding-left:3.0pt;padding-right:3.0pt;">25.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.8" style="padding-left:3.0pt;padding-right:3.0pt;">25.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.11" style="padding-left:3.0pt;padding-right:3.0pt;">74.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.13" style="padding-left:3.0pt;padding-right:3.0pt;">43.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.18.18.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.46</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.18.18.15" style="padding-left:3.0pt;padding-right:3.0pt;">65.84</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T4.1.1.18.18.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.18.18.16.1">46.94</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.19.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">25.33</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.3" style="padding-left:3.0pt;padding-right:3.0pt;">41.82</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.4" style="padding-left:3.0pt;padding-right:3.0pt;">57.52</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.02</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.48</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.7" style="padding-left:3.0pt;padding-right:3.0pt;">26.34</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.8" style="padding-left:3.0pt;padding-right:3.0pt;">25.68</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.12</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.26</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.11" style="padding-left:3.0pt;padding-right:3.0pt;">74.50</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.82</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.13" style="padding-left:3.0pt;padding-right:3.0pt;">44.65</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.19.19.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.19.19.15" style="padding-left:3.0pt;padding-right:3.0pt;">66.21</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.19.19.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.19.19.16.1">47.37</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.20.20.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.2" style="padding-left:3.0pt;padding-right:3.0pt;">25.94</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.3" style="padding-left:3.0pt;padding-right:3.0pt;">41.38</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.4" style="padding-left:3.0pt;padding-right:3.0pt;">56.45</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.22</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.90</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.7" style="padding-left:3.0pt;padding-right:3.0pt;">25.05</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.8" style="padding-left:3.0pt;padding-right:3.0pt;">28.67</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.72</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.72</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.11" style="padding-left:3.0pt;padding-right:3.0pt;">75.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.84</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.64</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.20.20.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.20.20.15" style="padding-left:3.0pt;padding-right:3.0pt;">66.60</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.20.20.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.20.20.16.1">47.41</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.21.21.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.2" style="padding-left:3.0pt;padding-right:3.0pt;">26.94</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.3" style="padding-left:3.0pt;padding-right:3.0pt;">40.67</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.4" style="padding-left:3.0pt;padding-right:3.0pt;">53.63</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.5" style="padding-left:3.0pt;padding-right:3.0pt;">55.82</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.6" style="padding-left:3.0pt;padding-right:3.0pt;">56.90</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.7" style="padding-left:3.0pt;padding-right:3.0pt;">38.23</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.8" style="padding-left:3.0pt;padding-right:3.0pt;">28.68</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.9" style="padding-left:3.0pt;padding-right:3.0pt;">20.76</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.34</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.11" style="padding-left:3.0pt;padding-right:3.0pt;">69.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.12" style="padding-left:3.0pt;padding-right:3.0pt;">87.32</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.13" style="padding-left:3.0pt;padding-right:3.0pt;">42.49</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.21.21.14" style="padding-left:3.0pt;padding-right:3.0pt;">44.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.21.21.15" style="padding-left:3.0pt;padding-right:3.0pt;">45.41</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.21.21.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.21.21.16.1">45.39</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.22.22" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.22.22.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.2.1" style="background-color:#DAE8FC;">26.26</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.3.1" style="background-color:#DAE8FC;">42.37</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.4.1" style="background-color:#DAE8FC;">57.71</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.5.1" style="background-color:#DAE8FC;">49.40</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.6.1" style="background-color:#DAE8FC;">46.88</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.7.1" style="background-color:#DAE8FC;">25.58</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.8.1" style="background-color:#DAE8FC;">26.17</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.9.1" style="background-color:#DAE8FC;">23.08</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.10.1" style="background-color:#DAE8FC;">25.29</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.11.1" style="background-color:#DAE8FC;">75.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.12.1" style="background-color:#DAE8FC;">89.72</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.13.1" style="background-color:#DAE8FC;">43.56</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.22.22.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.14.1" style="background-color:#DAE8FC;">68.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.22.22.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.22.15.1" style="background-color:#DAE8FC;">65.79</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.22.22.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.22.22.16.1" style="background-color:#DAE8FC;">47.52<span class="ltx_text ltx_font_medium" id="A1.T4.1.1.22.22.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.23.23">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="16" id="A1.T4.1.1.23.23.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mistral-Nemo-12B-Instruct, KV Budget = 2048</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.24.24">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.1.24.24.1" style="padding-left:3.0pt;padding-right:3.0pt;">SnapKV</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.2" style="padding-left:3.0pt;padding-right:3.0pt;">24.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.3" style="padding-left:3.0pt;padding-right:3.0pt;">42.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.4" style="padding-left:3.0pt;padding-right:3.0pt;">56.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.5" style="padding-left:3.0pt;padding-right:3.0pt;">49.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.7" style="padding-left:3.0pt;padding-right:3.0pt;">26.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.8" style="padding-left:3.0pt;padding-right:3.0pt;">28.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.11" style="padding-left:3.0pt;padding-right:3.0pt;">75.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.13" style="padding-left:3.0pt;padding-right:3.0pt;">44.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.24.24.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.89</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.1.1.24.24.15" style="padding-left:3.0pt;padding-right:3.0pt;">68.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T4.1.1.24.24.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.24.24.16.1">47.85</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.25.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.25.25.1" style="padding-left:3.0pt;padding-right:3.0pt;">AdaKV</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.2" style="padding-left:3.0pt;padding-right:3.0pt;">26.02</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.3" style="padding-left:3.0pt;padding-right:3.0pt;">43.08</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.4" style="padding-left:3.0pt;padding-right:3.0pt;">57.43</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.76</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.53</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.7" style="padding-left:3.0pt;padding-right:3.0pt;">26.12</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.8" style="padding-left:3.0pt;padding-right:3.0pt;">27.80</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.9" style="padding-left:3.0pt;padding-right:3.0pt;">23.44</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.93</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.11" style="padding-left:3.0pt;padding-right:3.0pt;">75.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.66</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.13" style="padding-left:3.0pt;padding-right:3.0pt;">44.49</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.25.25.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.25.25.15" style="padding-left:3.0pt;padding-right:3.0pt;">67.57</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.25.25.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.25.25.16.1">47.88</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.26.26.1" style="padding-left:3.0pt;padding-right:3.0pt;">HeadKV</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.2" style="padding-left:3.0pt;padding-right:3.0pt;">26.05</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.3" style="padding-left:3.0pt;padding-right:3.0pt;">42.15</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.4" style="padding-left:3.0pt;padding-right:3.0pt;">57.46</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.5" style="padding-left:3.0pt;padding-right:3.0pt;">48.49</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.6" style="padding-left:3.0pt;padding-right:3.0pt;">45.85</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.7" style="padding-left:3.0pt;padding-right:3.0pt;">25.86</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.8" style="padding-left:3.0pt;padding-right:3.0pt;">30.27</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.22</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.10" style="padding-left:3.0pt;padding-right:3.0pt;">26.17</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.11" style="padding-left:3.0pt;padding-right:3.0pt;">75.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.66</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.13" style="padding-left:3.0pt;padding-right:3.0pt;">43.74</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.26.26.14" style="padding-left:3.0pt;padding-right:3.0pt;">68.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.26.26.15" style="padding-left:3.0pt;padding-right:3.0pt;">67.29</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.26.26.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.26.26.16.1">47.92</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.27.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.27.27.1" style="padding-left:3.0pt;padding-right:3.0pt;">GemFilter</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.2" style="padding-left:3.0pt;padding-right:3.0pt;">26.42</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.3" style="padding-left:3.0pt;padding-right:3.0pt;">42.40</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.4" style="padding-left:3.0pt;padding-right:3.0pt;">56.98</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.5" style="padding-left:3.0pt;padding-right:3.0pt;">57.64</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.6" style="padding-left:3.0pt;padding-right:3.0pt;">53.92</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.7" style="padding-left:3.0pt;padding-right:3.0pt;">34.33</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.8" style="padding-left:3.0pt;padding-right:3.0pt;">30.51</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.9" style="padding-left:3.0pt;padding-right:3.0pt;">21.60</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.10" style="padding-left:3.0pt;padding-right:3.0pt;">25.96</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.11" style="padding-left:3.0pt;padding-right:3.0pt;">72.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.12" style="padding-left:3.0pt;padding-right:3.0pt;">89.65</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.13" style="padding-left:3.0pt;padding-right:3.0pt;">44.48</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.27.27.14" style="padding-left:3.0pt;padding-right:3.0pt;">48.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.1.1.27.27.15" style="padding-left:3.0pt;padding-right:3.0pt;">48.06</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T4.1.1.27.27.16" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T4.1.1.27.27.16.1">46.59</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.28.28" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T4.1.1.28.28.1" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.1.1" style="background-color:#DAE8FC;">FastKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.2.1" style="background-color:#DAE8FC;">26.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.3.1" style="background-color:#DAE8FC;">43.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.4.1" style="background-color:#DAE8FC;">57.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.5.1" style="background-color:#DAE8FC;">49.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.6.1" style="background-color:#DAE8FC;">47.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.7.1" style="background-color:#DAE8FC;">26.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.8.1" style="background-color:#DAE8FC;">28.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.9.1" style="background-color:#DAE8FC;">23.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.10.1" style="background-color:#DAE8FC;">25.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.11.1" style="background-color:#DAE8FC;">75.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.12.1" style="background-color:#DAE8FC;">89.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.13.1" style="background-color:#DAE8FC;">43.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.1.28.28.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.14.1" style="background-color:#DAE8FC;">68.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.1.1.28.28.15" style="background-color:#DAE8FC;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A1.T4.1.1.28.28.15.1" style="background-color:#DAE8FC;">67.61</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r" id="A1.T4.1.1.28.28.16" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.28.28.16.1" style="background-color:#DAE8FC;">48.11<span class="ltx_text ltx_font_medium" id="A1.T4.1.1.28.28.16.1.1" style="background-color:#DAE8FC;"></span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the detailed performance of the Mistral-Nemo-12B-Instruct large language model (LLM) on the LongBench benchmark.  LongBench is a comprehensive evaluation suite for long-context language models, assessing performance across various tasks and sequence lengths. The table shows the model's accuracy scores across different tasks (Single-Doc QA, Multi-Doc QA, Summarization, Few-shot Learning, and Coding) with varying key-value (KV) cache budgets (Full, 128, 512, 1024, and 2048). Each row represents a different KV cache compression method (SnapKV, AdaKV, HeadKV, GemFilter, and FastKV) in comparison to a Full KV baseline, showing the impact of compression techniques on accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4: LongBench results of Mistral-Nemo-12B-Instruct.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A1.T5.1.1.1.1.1" style="padding:-0.75pt 14.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="A1.T5.1.1.1.1.2" style="padding:-0.75pt 14.0pt;">Context Length</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.1.1.2.2.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.2.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.2" style="padding:-0.75pt 14.0pt;">8k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.3" style="padding:-0.75pt 14.0pt;">16k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.4" style="padding:-0.75pt 14.0pt;">32k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.5" style="padding:-0.75pt 14.0pt;">64k</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T5.1.1.2.2.6" style="padding:-0.75pt 14.0pt;">128k</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="A1.T5.1.1.3.3.1" style="padding:-0.75pt 14.0pt;">LLaMA-3.1-8B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.4">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.4.4.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.4.4.1.1" style="color:#FFFFFF;">     Full KV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.2" style="padding:-0.75pt 14.0pt;">0.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.3" style="padding:-0.75pt 14.0pt;">1.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.4" style="padding:-0.75pt 14.0pt;">3.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.5" style="padding:-0.75pt 14.0pt;">9.05</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T5.1.1.4.4.6" style="padding:-0.75pt 14.0pt;">27.94</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.5">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.5.5.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.5.5.1.1" style="color:#FFFFFF;">     SnapKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.5.5.2" style="padding:-0.75pt 14.0pt;">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.5.5.3" style="padding:-0.75pt 14.0pt;">1.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.5.5.4" style="padding:-0.75pt 14.0pt;">3.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.5.5.5" style="padding:-0.75pt 14.0pt;">9.22</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T5.1.1.5.5.6" style="padding:-0.75pt 14.0pt;">28.27</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.6">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T5.1.1.6.6.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.6.6.1.1" style="color:#FFFFFF;">     AdaKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.6.2" style="padding:-0.75pt 14.0pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.6.3" style="padding:-0.75pt 14.0pt;">1.53</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.6.4" style="padding:-0.75pt 14.0pt;">3.57</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.6.6.5" style="padding:-0.75pt 14.0pt;">9.31</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T5.1.1.6.6.6" style="padding:-0.75pt 14.0pt;">28.36</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7.7">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T5.1.1.7.7.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.7.7.1.1" style="color:#FFFFFF;">     HeadKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.7.7.2" style="padding:-0.75pt 14.0pt;">0.70</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.7.7.3" style="padding:-0.75pt 14.0pt;">1.48</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.7.7.4" style="padding:-0.75pt 14.0pt;">3.51</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.7.7.5" style="padding:-0.75pt 14.0pt;">9.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T5.1.1.7.7.6" style="padding:-0.75pt 14.0pt;">28.30</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8.8">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T5.1.1.8.8.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.8.8.1.1" style="color:#FFFFFF;">     GemFilter</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.8.2" style="padding:-0.75pt 14.0pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.8.3" style="padding:-0.75pt 14.0pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.8.4" style="padding:-0.75pt 14.0pt;">1.66</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.8.5" style="padding:-0.75pt 14.0pt;">4.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T5.1.1.8.8.6" style="padding:-0.75pt 14.0pt;">12.51</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9.9" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T5.1.1.9.9.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.9.9.1.1" style="color:#FFFFFF;background-color:#DAE8FC;">     FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.9.2" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.9.9.2.1" style="background-color:#DAE8FC;">0.41</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.9.3" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.9.9.3.1" style="background-color:#DAE8FC;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.9.4" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.9.9.4.1" style="background-color:#DAE8FC;">1.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.9.9.5" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.9.9.5.1" style="background-color:#DAE8FC;">4.66</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T5.1.1.9.9.6" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.9.9.6.1" style="background-color:#DAE8FC;">14.15</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="A1.T5.1.1.10.10.1" style="padding:-0.75pt 14.0pt;">Mistral-Nemo-12B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11.11">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.11.11.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.11.11.1.1" style="color:#FFFFFF;">     Full KV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.11.11.2" style="padding:-0.75pt 14.0pt;">0.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.11.11.3" style="padding:-0.75pt 14.0pt;">2.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.11.11.4" style="padding:-0.75pt 14.0pt;">4.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.11.11.5" style="padding:-0.75pt 14.0pt;">12.71</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T5.1.1.11.11.6" style="padding:-0.75pt 14.0pt;">37.94</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.12.12">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.12.12.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.12.12.1.1" style="color:#FFFFFF;">     SnapKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.12.2" style="padding:-0.75pt 14.0pt;">0.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.12.3" style="padding:-0.75pt 14.0pt;">2.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.12.4" style="padding:-0.75pt 14.0pt;">4.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.12.5" style="padding:-0.75pt 14.0pt;">12.80</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T5.1.1.12.12.6" style="padding:-0.75pt 14.0pt;">38.11</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.13.13">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T5.1.1.13.13.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.13.13.1.1" style="color:#FFFFFF;">     AdaKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.13.2" style="padding:-0.75pt 14.0pt;">1.05</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.13.3" style="padding:-0.75pt 14.0pt;">2.18</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.13.4" style="padding:-0.75pt 14.0pt;">5.01</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.13.13.5" style="padding:-0.75pt 14.0pt;">12.92</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T5.1.1.13.13.6" style="padding:-0.75pt 14.0pt;">38.23</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.14.14">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T5.1.1.14.14.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.14.14.1.1" style="color:#FFFFFF;">     HeadKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.14.2" style="padding:-0.75pt 14.0pt;">0.99</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.14.3" style="padding:-0.75pt 14.0pt;">2.12</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.14.4" style="padding:-0.75pt 14.0pt;">4.95</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.14.14.5" style="padding:-0.75pt 14.0pt;">12.85</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T5.1.1.14.14.6" style="padding:-0.75pt 14.0pt;">38.18</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.15.15">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T5.1.1.15.15.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.15.15.1.1" style="color:#FFFFFF;">     GemFilter</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.15.2" style="padding:-0.75pt 14.0pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.15.3" style="padding:-0.75pt 14.0pt;">1.25</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.15.4" style="padding:-0.75pt 14.0pt;">2.65</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.15.15.5" style="padding:-0.75pt 14.0pt;">6.59</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T5.1.1.15.15.6" style="padding:-0.75pt 14.0pt;">19.22</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.16.16" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_bb ltx_border_r" id="A1.T5.1.1.16.16.1" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.16.16.1.1" style="color:#FFFFFF;background-color:#DAE8FC;">     FastKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.16.16.2" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.16.16.2.1" style="background-color:#DAE8FC;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.16.16.3" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.16.16.3.1" style="background-color:#DAE8FC;">1.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.16.16.4" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.16.16.4.1" style="background-color:#DAE8FC;">2.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.16.16.5" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.16.16.5.1" style="background-color:#DAE8FC;">6.53</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r" id="A1.T5.1.1.16.16.6" style="padding:-0.75pt 14.0pt;"><span class="ltx_text" id="A1.T5.1.1.16.16.6.1" style="background-color:#DAE8FC;">19.22</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the time-to-first-token (TTFT) performance of FastKV against several baseline key-value (KV) cache compression methods.  TTFT is a measure of latency; lower values indicate faster performance.  The comparison is made across different model sizes (LLaMA-3.1-8B-Instruct and Mistral-Nemo-12B-Instruct) and varying context lengths (8k, 16k, 32k, 64k, 128k tokens). This allows for an assessment of how each method's efficiency changes under different conditions.
> <details>
> <summary>read the caption</summary>
> Table 5: TTFT (sec) comparison of baselines and FastKV.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.1.1.1.1.1" style="padding:-0.75pt 7.0pt;"><span class="ltx_text" id="A1.T6.1.1.1.1.1.1" style="color:#FFFFFF;">    Context Length</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.2" style="padding:-0.75pt 7.0pt;">8k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.3" style="padding:-0.75pt 7.0pt;">16k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.4" style="padding:-0.75pt 7.0pt;">32k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.5" style="padding:-0.75pt 7.0pt;">64k</th>
<th class="ltx_td ltx_nopad_r ltx_align_right ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.1.1.1.1.6" style="padding:-0.75pt 7.0pt;">128k</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.2.1">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.1.1.2.1.1" style="padding:-0.75pt 7.0pt;"><span class="ltx_text" id="A1.T6.1.1.2.1.1.1" style="color:#FFFFFF;">    LLaMA-3.1-8B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.2" style="padding:-0.75pt 7.0pt;">51.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.3" style="padding:-0.75pt 7.0pt;">43.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.4" style="padding:-0.75pt 7.0pt;">32.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.5" style="padding:-0.75pt 7.0pt;">21.24</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T6.1.1.2.1.6" style="padding:-0.75pt 7.0pt;">12.60</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3.2">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A1.T6.1.1.3.2.1" style="padding:-0.75pt 7.0pt;"><span class="ltx_text" id="A1.T6.1.1.3.2.1.1" style="color:#FFFFFF;">    Mistral-Nemo-12B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.1.1.3.2.2" style="padding:-0.75pt 7.0pt;">36.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.1.1.3.2.3" style="padding:-0.75pt 7.0pt;">30.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.1.1.3.2.4" style="padding:-0.75pt 7.0pt;">23.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.1.1.3.2.5" style="padding:-0.75pt 7.0pt;">16.07</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r ltx_border_t" id="A1.T6.1.1.3.2.6" style="padding:-0.75pt 7.0pt;">9.68</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the throughput, measured in tokens per second, achieved by using the full key-value (KV) cache budget at different context lengths (8k, 16k, 32k, 64k, 128k tokens). It shows how the throughput changes as the input sequence length increases for two different large language models (LLMs): LLaMA-3.1-8B-Instruct and Mistral-Nemo-12B-Instruct.
> <details>
> <summary>read the caption</summary>
> Table 6: Throughput (Tokens/sec) with full KV budget at varying context length.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T7.1.1.1.1.1" rowspan="2" style="padding:-0.75pt 25.0pt;">        <span class="ltx_text" id="A1.T7.1.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A1.T7.1.1.1.1.2" style="padding:-0.75pt 25.0pt;">        KV Budget</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.2.1" style="padding:-0.75pt 25.0pt;">        512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.2.2" style="padding:-0.75pt 25.0pt;">        1024</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T7.1.1.2.2.3" style="padding:-0.75pt 25.0pt;">        2048</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A1.T7.1.1.3.3.1" style="padding:-0.75pt 25.0pt;">        LLaMA-3.1-8B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4.4">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.4.4.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.4.4.1.1" style="color:#FFFFFF;">        SnapKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.4.4.2" style="padding:-0.75pt 25.0pt;">        48.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.4.4.3" style="padding:-0.75pt 25.0pt;">        48.62</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T7.1.1.4.4.4" style="padding:-0.75pt 25.0pt;">        48.29</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5.5">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T7.1.1.5.5.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.5.5.1.1" style="color:#FFFFFF;">        AdaKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.5.2" style="padding:-0.75pt 25.0pt;">        50.57</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.5.3" style="padding:-0.75pt 25.0pt;">        49.53</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T7.1.1.5.5.4" style="padding:-0.75pt 25.0pt;">        49.47</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6.6">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T7.1.1.6.6.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.6.6.1.1" style="color:#FFFFFF;">        HeadKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.6.2" style="padding:-0.75pt 25.0pt;">        45.64</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.6.3" style="padding:-0.75pt 25.0pt;">        39.48</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T7.1.1.6.6.4" style="padding:-0.75pt 25.0pt;">        30.78</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.7.7">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T7.1.1.7.7.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.7.7.1.1" style="color:#FFFFFF;">        GemFilter</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.7.2" style="padding:-0.75pt 25.0pt;">        63.40</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.7.3" style="padding:-0.75pt 25.0pt;">        62.32</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T7.1.1.7.7.4" style="padding:-0.75pt 25.0pt;">        60.37</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.8.8" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T7.1.1.8.8.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.8.8.1.1" style="color:#FFFFFF;background-color:#DAE8FC;">        FastKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.8.2" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.8.8.2.1" style="background-color:#DAE8FC;">        63.84</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.8.3" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.8.8.3.1" style="background-color:#DAE8FC;">        62.97</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T7.1.1.8.8.4" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.8.8.4.1" style="background-color:#DAE8FC;">        60.74</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A1.T7.1.1.9.9.1" style="padding:-0.75pt 25.0pt;">        Mistral-Nemo-12B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.10.10">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.10.10.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.10.10.1.1" style="color:#FFFFFF;">        SnapKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.10.10.2" style="padding:-0.75pt 25.0pt;">        38.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.10.10.3" style="padding:-0.75pt 25.0pt;">        38.03</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T7.1.1.10.10.4" style="padding:-0.75pt 25.0pt;">        35.44</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.11.11">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T7.1.1.11.11.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.11.11.1.1" style="color:#FFFFFF;">        AdaKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.11.2" style="padding:-0.75pt 25.0pt;">        28.53</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.11.11.3" style="padding:-0.75pt 25.0pt;">        28.34</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T7.1.1.11.11.4" style="padding:-0.75pt 25.0pt;">        27.82</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.12.12">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T7.1.1.12.12.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.12.12.1.1" style="color:#FFFFFF;">        HeadKV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.12.2" style="padding:-0.75pt 25.0pt;">        27.20</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.12.12.3" style="padding:-0.75pt 25.0pt;">        26.97</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T7.1.1.12.12.4" style="padding:-0.75pt 25.0pt;">        24.92</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.13.13">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_r" id="A1.T7.1.1.13.13.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.13.13.1.1" style="color:#FFFFFF;">        GemFilter</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.13.2" style="padding:-0.75pt 25.0pt;">        41.94</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.13.13.3" style="padding:-0.75pt 25.0pt;">        41.69</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T7.1.1.13.13.4" style="padding:-0.75pt 25.0pt;">        40.17</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.14.14" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_bb ltx_border_r" id="A1.T7.1.1.14.14.1" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.14.14.1.1" style="color:#FFFFFF;background-color:#DAE8FC;">        FastKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.14.14.2" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.14.14.2.1" style="background-color:#DAE8FC;">        42.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.14.14.3" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.14.14.3.1" style="background-color:#DAE8FC;">        41.85</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r" id="A1.T7.1.1.14.14.4" style="padding:-0.75pt 25.0pt;"><span class="ltx_text" id="A1.T7.1.1.14.14.4.1" style="background-color:#DAE8FC;">        41.49</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the throughput (measured in tokens per second) achieved by different key-value (KV) cache compression methods, including baselines and the proposed FastKV method. It shows the throughput for different KV budget sizes (512, 1024, and 2048) for the LLaMA-3.1-8B-Instruct and Mistral-Nemo-12B-Instruct language models.  The results highlight the performance differences in token generation speed among the various methods.
> <details>
> <summary>read the caption</summary>
> Table 7: Throughput (Tokens/sec) comparison of baselines and FastKV.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.01068/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01068/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}