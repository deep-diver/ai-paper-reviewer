---
title: "4D-Bench: Benchmarking Multi-modal Large Language Models for 4D Object Understanding"
summary: "4D-Bench: The first benchmark for assessing MLLMs in 4D object understanding, revealing weak temporal understanding and the need for advancements."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 King Abdullah University of Science and Technology",]
showSummary: true
date: 2025-03-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17827 {{< /keyword >}}
{{< keyword icon="writer" >}} Wenxuan Zhu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17827" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17827" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17827/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal Large Language Models (MLLMs) have excelled in 2D understanding, but lack standardized benchmarks for 4D objects(dynamic 3D). The absence of such benchmarks hinders the evaluation and enhancement of MLLMs in understanding how objects evolve over time and space. This poses a challenge, especially for tasks like digital twins and augmented reality where dynamic 3D assets are critical. Addressing this gap is essential for advancing interactive virtual experiences.



To address this, the paper introduces **4D-Bench**, a benchmark for evaluating MLLMs in 4D object understanding with tasks in QA and captioning. The benchmark uses diverse 4D objects with high-quality annotations, necessitating multi-view spatial-temporal reasoning. Experiments reveal MLLMs struggle with temporal understanding, and even state-of-the-art models perform worse than humans. This underscores the need for further advancements in MLLMs for 4D object understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MLLMs show weaker temporal understanding compared to appearance understanding in 4D object processing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} 4D object QA reveals MLLMs perform poorly even with simple single-object videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} 4D-Bench provides new challenges, necessitating multi-view spatial-temporal understanding. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This benchmark is vital for assessing MLLMs in 4D object understanding, **highlighting current limitations** and inspiring new approaches for improved spatial-temporal reasoning in AI models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17827/x1.png)

> 🔼 This figure illustrates the complexities of 4D object understanding by presenting a multi-view video sequence of a robot.  The robot's right hand is central to the task.  The challenge is that the hand's appearance varies significantly across different viewpoints and across time, creating ambiguity. To answer a simple question about what the hand transforms into requires the system to solve three subproblems: 1) resolve multi-view ambiguity by selecting the right viewpoint and time frame where the hand is clearly visible; 2) precisely locate the hand within those selected frames; and 3) track the hand's changes across the selected time-series to determine the final state.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example demonstrating the challenges of 4D object understanding involves multi-view spatial-temporal reasoning. Given the 4D object, the robot’s right hand seems ambiguous in some views at first and eventually disappears over time. Hence, answering the question needs to (1) address multi-view ambiguity and choose proper views and time that the right hand is visible, (2) localize the right hand, (3) and track its evolutions along the time dimension.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.2.1" style="font-size:90%;">Object Counting (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.3.1" style="font-size:90%;">Temporal Relationship (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.4.1" style="font-size:90%;">Action (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.5.1" style="font-size:90%;">Spatial Relationship (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.6.1" style="font-size:90%;">Appearance (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.7.1" style="font-size:90%;">Overall (%)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.1.2.2.1">
<span class="ltx_text" id="S4.T1.2.1.2.2.1.1" style="font-size:90%;">MiniGPT4-Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.2.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.2.1.2.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.2"><span class="ltx_text" id="S4.T1.2.1.2.2.2.1" style="font-size:90%;">22.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.3"><span class="ltx_text" id="S4.T1.2.1.2.2.3.1" style="font-size:90%;">26.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.4"><span class="ltx_text" id="S4.T1.2.1.2.2.4.1" style="font-size:90%;">22.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.5"><span class="ltx_text" id="S4.T1.2.1.2.2.5.1" style="font-size:90%;">22.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.6"><span class="ltx_text" id="S4.T1.2.1.2.2.6.1" style="font-size:90%;">22.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.7"><span class="ltx_text" id="S4.T1.2.1.2.2.7.1" style="font-size:90%;">23.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.3.3.1">
<span class="ltx_text" id="S4.T1.2.1.3.3.1.1" style="font-size:90%;">VideoChat2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a><span class="ltx_text" id="S4.T1.2.1.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.3.2"><span class="ltx_text" id="S4.T1.2.1.3.3.2.1" style="font-size:90%;">22.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.3.3"><span class="ltx_text" id="S4.T1.2.1.3.3.3.1" style="font-size:90%;">31.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.3.4"><span class="ltx_text" id="S4.T1.2.1.3.3.4.1" style="font-size:90%;">33.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.3.5"><span class="ltx_text" id="S4.T1.2.1.3.3.5.1" style="font-size:90%;">38.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.3.6"><span class="ltx_text" id="S4.T1.2.1.3.3.6.1" style="font-size:90%;">34.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.3.7"><span class="ltx_text" id="S4.T1.2.1.3.3.7.1" style="font-size:90%;">32.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.4.4.1">
<span class="ltx_text" id="S4.T1.2.1.4.4.1.1" style="font-size:90%;">InternVL2 8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T1.2.1.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.4.2"><span class="ltx_text" id="S4.T1.2.1.4.4.2.1" style="font-size:90%;">18.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.4.3"><span class="ltx_text" id="S4.T1.2.1.4.4.3.1" style="font-size:90%;">31.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.4.4"><span class="ltx_text" id="S4.T1.2.1.4.4.4.1" style="font-size:90%;">35.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.4.5"><span class="ltx_text" id="S4.T1.2.1.4.4.5.1" style="font-size:90%;">32.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.4.6"><span class="ltx_text" id="S4.T1.2.1.4.4.6.1" style="font-size:90%;">39.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.4.7"><span class="ltx_text" id="S4.T1.2.1.4.4.7.1" style="font-size:90%;">32.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.5.5.1">
<span class="ltx_text" id="S4.T1.2.1.5.5.1.1" style="font-size:90%;">LLaVA-OneVision 7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T1.2.1.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.2"><span class="ltx_text" id="S4.T1.2.1.5.5.2.1" style="font-size:90%;">42.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.3"><span class="ltx_text" id="S4.T1.2.1.5.5.3.1" style="font-size:90%;">52.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.4"><span class="ltx_text" id="S4.T1.2.1.5.5.4.1" style="font-size:90%;">42.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.5"><span class="ltx_text" id="S4.T1.2.1.5.5.5.1" style="font-size:90%;">57.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.6"><span class="ltx_text" id="S4.T1.2.1.5.5.6.1" style="font-size:90%;">74.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.7"><span class="ltx_text" id="S4.T1.2.1.5.5.7.1" style="font-size:90%;">53.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.6.6.1">
<span class="ltx_text" id="S4.T1.2.1.6.6.1.1" style="font-size:90%;">LLaVA-Video 7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a><span class="ltx_text" id="S4.T1.2.1.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.6.2"><span class="ltx_text" id="S4.T1.2.1.6.6.2.1" style="font-size:90%;">42.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.6.3"><span class="ltx_text" id="S4.T1.2.1.6.6.3.1" style="font-size:90%;">55.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.6.4"><span class="ltx_text" id="S4.T1.2.1.6.6.4.1" style="font-size:90%;">52.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.6.5"><span class="ltx_text" id="S4.T1.2.1.6.6.5.1" style="font-size:90%;">56.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.6.6.1" style="font-size:90%;">78.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.6.7"><span class="ltx_text" id="S4.T1.2.1.6.6.7.1" style="font-size:90%;">56.86</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.7.7.1">
<span class="ltx_text" id="S4.T1.2.1.7.7.1.1" style="font-size:90%;">Qwen2-VL 7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a><span class="ltx_text" id="S4.T1.2.1.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.7.2"><span class="ltx_text" id="S4.T1.2.1.7.7.2.1" style="font-size:90%;">38.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.7.3"><span class="ltx_text" id="S4.T1.2.1.7.7.3.1" style="font-size:90%;">56.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.7.4"><span class="ltx_text" id="S4.T1.2.1.7.7.4.1" style="font-size:90%;">57.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.7.5"><span class="ltx_text" id="S4.T1.2.1.7.7.5.1" style="font-size:90%;">58.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.7.6"><span class="ltx_text" id="S4.T1.2.1.7.7.6.1" style="font-size:90%;">71.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.7.7"><span class="ltx_text" id="S4.T1.2.1.7.7.7.1" style="font-size:90%;">56.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.8.8.1">
<span class="ltx_text" id="S4.T1.2.1.8.8.1.1" style="font-size:90%;">InternVL2 76B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T1.2.1.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.2"><span class="ltx_text" id="S4.T1.2.1.8.8.2.1" style="font-size:90%;">28.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.3"><span class="ltx_text" id="S4.T1.2.1.8.8.3.1" style="font-size:90%;">45.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.4"><span class="ltx_text" id="S4.T1.2.1.8.8.4.1" style="font-size:90%;">42.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.5"><span class="ltx_text" id="S4.T1.2.1.8.8.5.1" style="font-size:90%;">38.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.6"><span class="ltx_text" id="S4.T1.2.1.8.8.6.1" style="font-size:90%;">64.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.7"><span class="ltx_text" id="S4.T1.2.1.8.8.7.1" style="font-size:90%;">43.94</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.9.9.1">
<span class="ltx_text" id="S4.T1.2.1.9.9.1.1" style="font-size:90%;">LLaVA-OneVision 72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.9.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T1.2.1.9.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.9.9.2"><span class="ltx_text" id="S4.T1.2.1.9.9.2.1" style="font-size:90%;">49.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.9.9.3"><span class="ltx_text" id="S4.T1.2.1.9.9.3.1" style="font-size:90%;">58.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.9.9.4"><span class="ltx_text" id="S4.T1.2.1.9.9.4.1" style="font-size:90%;">60.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.9.9.5"><span class="ltx_text" id="S4.T1.2.1.9.9.5.1" style="font-size:90%;">61.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.9.9.6"><span class="ltx_text" id="S4.T1.2.1.9.9.6.1" style="font-size:90%;">76.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.9.9.7"><span class="ltx_text" id="S4.T1.2.1.9.9.7.1" style="font-size:90%;">61.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.10.10.1">
<span class="ltx_text" id="S4.T1.2.1.10.10.1.1" style="font-size:90%;">LLaVA-Video 72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.10.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a><span class="ltx_text" id="S4.T1.2.1.10.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.10.10.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.10.10.2.1" style="font-size:90%;">54.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.10.10.3"><span class="ltx_text" id="S4.T1.2.1.10.10.3.1" style="font-size:90%;">58.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.10.10.4"><span class="ltx_text" id="S4.T1.2.1.10.10.4.1" style="font-size:90%;">57.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.10.10.5"><span class="ltx_text" id="S4.T1.2.1.10.10.5.1" style="font-size:90%;">66.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.10.10.6"><span class="ltx_text" id="S4.T1.2.1.10.10.6.1" style="font-size:90%;">77.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.10.10.7"><span class="ltx_text" id="S4.T1.2.1.10.10.7.1" style="font-size:90%;">62.32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.11.11.1">
<span class="ltx_text" id="S4.T1.2.1.11.11.1.1" style="font-size:90%;">Qwen2-VL 72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.11.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a><span class="ltx_text" id="S4.T1.2.1.11.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.2"><span class="ltx_text" id="S4.T1.2.1.11.11.2.1" style="font-size:90%;">45.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.3"><span class="ltx_text" id="S4.T1.2.1.11.11.3.1" style="font-size:90%;">55.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.4"><span class="ltx_text" id="S4.T1.2.1.11.11.4.1" style="font-size:90%;">58.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.5"><span class="ltx_text" id="S4.T1.2.1.11.11.5.1" style="font-size:90%;">61.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.6"><span class="ltx_text" id="S4.T1.2.1.11.11.6.1" style="font-size:90%;">72.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.7"><span class="ltx_text" id="S4.T1.2.1.11.11.7.1" style="font-size:90%;">58.72</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.12.12.1">
<span class="ltx_text" id="S4.T1.2.1.12.12.1.1" style="font-size:90%;">Gemini 1.5 Flash </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.12.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S4.T1.2.1.12.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.2"><span class="ltx_text" id="S4.T1.2.1.12.12.2.1" style="font-size:90%;">26.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.3"><span class="ltx_text" id="S4.T1.2.1.12.12.3.1" style="font-size:90%;">50.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.4"><span class="ltx_text" id="S4.T1.2.1.12.12.4.1" style="font-size:90%;">53.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.5"><span class="ltx_text" id="S4.T1.2.1.12.12.5.1" style="font-size:90%;">60.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.6"><span class="ltx_text" id="S4.T1.2.1.12.12.6.1" style="font-size:90%;">66.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.7"><span class="ltx_text" id="S4.T1.2.1.12.12.7.1" style="font-size:90%;">51.80</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.13.13.1">
<span class="ltx_text" id="S4.T1.2.1.13.13.1.1" style="font-size:90%;">GPT-4o mini </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.13.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T1.2.1.13.13.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.13.13.2"><span class="ltx_text" id="S4.T1.2.1.13.13.2.1" style="font-size:90%;">40.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.13.13.3"><span class="ltx_text" id="S4.T1.2.1.13.13.3.1" style="font-size:90%;">50.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.13.13.4"><span class="ltx_text" id="S4.T1.2.1.13.13.4.1" style="font-size:90%;">50.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.13.13.5"><span class="ltx_text" id="S4.T1.2.1.13.13.5.1" style="font-size:90%;">61.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.13.13.6"><span class="ltx_text" id="S4.T1.2.1.13.13.6.1" style="font-size:90%;">72.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.13.13.7"><span class="ltx_text" id="S4.T1.2.1.13.13.7.1" style="font-size:90%;">54.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.14.14.1">
<span class="ltx_text" id="S4.T1.2.1.14.14.1.1" style="font-size:90%;">Gemini 1.5 Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.14.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S4.T1.2.1.14.14.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.14.14.2"><span class="ltx_text" id="S4.T1.2.1.14.14.2.1" style="font-size:90%;">46.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.14.14.3"><span class="ltx_text" id="S4.T1.2.1.14.14.3.1" style="font-size:90%;">58.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.14.14.4"><span class="ltx_text" id="S4.T1.2.1.14.14.4.1" style="font-size:90%;">59.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.14.14.5"><span class="ltx_text" id="S4.T1.2.1.14.14.5.1" style="font-size:90%;">64.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.14.14.6"><span class="ltx_text" id="S4.T1.2.1.14.14.6.1" style="font-size:90%;">68.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.14.14.7"><span class="ltx_text" id="S4.T1.2.1.14.14.7.1" style="font-size:90%;">59.52</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.15.15.1">
<span class="ltx_text" id="S4.T1.2.1.15.15.1.1" style="font-size:90%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.1.15.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T1.2.1.15.15.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.2"><span class="ltx_text" id="S4.T1.2.1.15.15.2.1" style="font-size:90%;">44.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.15.15.3.1" style="font-size:90%;">59.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.15.15.4.1" style="font-size:90%;">63.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.15.15.5.1" style="font-size:90%;">69.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.6"><span class="ltx_text" id="S4.T1.2.1.15.15.6.1" style="font-size:90%;">77.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.15.15.7.1" style="font-size:90%;">62.98</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.1.16.16.1"><span class="ltx_text" id="S4.T1.2.1.16.16.1.1" style="font-size:90%;">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.16.16.2"><span class="ltx_text" id="S4.T1.2.1.16.16.2.1" style="font-size:90%;">37.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.16.16.3"><span class="ltx_text" id="S4.T1.2.1.16.16.3.1" style="font-size:90%;">49.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.16.16.4"><span class="ltx_text" id="S4.T1.2.1.16.16.4.1" style="font-size:90%;">49.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.16.16.5"><span class="ltx_text" id="S4.T1.2.1.16.16.5.1" style="font-size:90%;">53.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.16.16.6"><span class="ltx_text" id="S4.T1.2.1.16.16.6.1" style="font-size:90%;">63.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.16.16.7"><span class="ltx_text" id="S4.T1.2.1.16.16.7.1" style="font-size:90%;">50.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.17.17" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.2.1.17.17.1"><span class="ltx_text" id="S4.T1.2.1.17.17.1.1" style="font-size:90%;background-color:#E6E6E6;">Human</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.17.17.2"><span class="ltx_text" id="S4.T1.2.1.17.17.2.1" style="font-size:90%;background-color:#E6E6E6;">88.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.17.17.3"><span class="ltx_text" id="S4.T1.2.1.17.17.3.1" style="font-size:90%;background-color:#E6E6E6;">89.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.17.17.4"><span class="ltx_text" id="S4.T1.2.1.17.17.4.1" style="font-size:90%;background-color:#E6E6E6;">94.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.17.17.5"><span class="ltx_text" id="S4.T1.2.1.17.17.5.1" style="font-size:90%;background-color:#E6E6E6;">91.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.17.17.6"><span class="ltx_text" id="S4.T1.2.1.17.17.6.1" style="font-size:90%;background-color:#E6E6E6;">89.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.17.17.7"><span class="ltx_text" id="S4.T1.2.1.17.17.7.1" style="font-size:90%;background-color:#E6E6E6;">91.08</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive evaluation of various Multimodal Large Language Models (MLLMs) on a novel benchmark called 4D-Bench, specifically focusing on their 4D object question answering capabilities.  The benchmark includes five subtasks assessing different aspects of 4D object understanding: Object Counting, Temporal Relationship, Action, Spatial Relationship, and Appearance. The table shows the accuracy of each MLLM on each subtask, an overall accuracy score, and average performance across all models.  Human performance is also included as a baseline for comparison, highlighting the current gap between MLLM capabilities and human-level performance in 4D object understanding.
> <details>
> <summary>read the caption</summary>
> Table 1: 4D object question answering results. The Overall column refers to average accuracy across all sub-tasks. The Average row represents the mean performance of all tested models in each category. We provide human performance as a reference.
> </details>





### In-depth insights


#### 4D Understanding
**4D understanding** involves comprehending the interplay of 3D objects and their temporal evolution, demanding abilities beyond static image or video analysis. **It necessitates grasping multi-view spatial relationships and tracking changes over time**, a challenge distinct from traditional 2D or 3D scene understanding. Models must reason about object appearances, actions, and their evolution, considering viewpoints and temporal dynamics, thus **requiring robust spatial-temporal reasoning capabilities**. This entails overcoming ambiguities, recognizing subtle motions, and predicting future states, proving a demanding task for current MLLMs as performance lags in action recognition and temporal relationship comprehension suggest a crucial need for advancements in temporal-aware visual encoders to enhance MLLMs' 4D understanding prowess.

#### 4D-Bench: New Tasks
The introduction of 4D-Bench marks a pivotal advancement in multimodal learning, extending beyond traditional 2D image and video understanding. **It creates new tasks centered around understanding 4D objects (3D objects evolving over time)**, which presents unique challenges not found in existing benchmarks. These tasks likely involve complex spatial-temporal reasoning, requiring models to analyze multi-view data and track changes over time. **The 4D object Question Answering (QA) and 4D object captioning tasks** require MLLMs to describe the changes in a shape over time. Successfully addressing these new tasks will require enhancements in MLLMs' abilities to integrate information across different modalities and effectively model temporal dynamics.

#### MLLMs Limitations
**MLLMs encounter limitations in 4D object understanding**, particularly with tasks requiring detailed temporal reasoning and counterfactual understanding.  **Weak performance in action recognition** suggests a need for more advanced, temporal-aware visual encoders.  **Object counting** poses a challenge, as the models struggle to integrate multi-view information accurately. While MLLMs demonstrate proficiency in appearance and spatial relationships, accurately capturing the evolution of objects in time and understanding motions remains a key area for future improvement. **The models struggle with counterfactual data**, lacking the world knowledge to adapt. **The current visual tokenization methods** can benefit from using video as raw input to enhance performance.

#### Human vs. MLLMs
The paper reveals a performance disparity: **humans outperform MLLMs in understanding 4D objects**. Even state-of-the-art MLLMs struggle with tasks requiring multi-view spatial-temporal reasoning, while humans demonstrate higher accuracy. MLLMs struggle with object counting, action recognition, and temporal relationships. This highlights the need for advancements in MLLM architectures and training methodologies to bridge the gap between human and machine understanding of dynamic 3D environments, especially counterfactual data. More advanced temporal-aware visual encoders can enhance MLLMs' performance. 

#### Spatial Reasoning
**Spatial reasoning** in 4D object understanding, as highlighted by the paper, goes beyond static 3D scene analysis. It necessitates the ability to discern and interpret spatial configurations across **multiple viewpoints and over time**, a challenge that traditional 3D-language benchmarks overlook. This involves understanding object relationships, transformations, and handling occlusions, demanding integration of information from various angles. The benchmark evaluates if MLLMs can grasp these intricate spatial dynamics within a 4D context. It also assesses the models' ability to infer spatial arrangements even when partial visibility presents hurdles, making spatial reasoning a crucial aspect for MLLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17827/x2.png)

> 🔼 This figure illustrates the 4D-Bench benchmark, which evaluates the abilities of Multimodal Large Language Models (MLLMs) to understand 4D objects.  It highlights the two main tasks included: 4D object question answering (QA) and 4D object captioning.  The 4D object QA task presents a question with four answer choices, testing the MLLM's reasoning ability. The 4D object captioning task requires the MLLM to generate a caption for a 4D object (dynamic 3D object), and its performance is evaluated against five human-generated captions for the same object. The visual representation shows example 4D objects displayed as multi-view videos over time, demonstrating the complexity inherent in understanding dynamic 3D scenes.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the 4D-Bench. 4D-Bench consists of two critical tasks (a) 4D object QA and (b) 4D object captioning. 4D object QA provides one question and four choices per QA to evaluate MLLMs. 4D object captioning provides five human captions per 4D object.
> </details>



![](https://arxiv.org/html/2503.17827/x3.png)

> 🔼 This figure illustrates the process of creating the 4D-Bench dataset.  It starts with 3D objects sourced from Objaverse-XL, which are then rendered into multi-view videos. These videos undergo two filtering stages: motion filtering (removing static objects) and visual quality filtering (removing poorly rendered objects). The data then passes to annotation, creating both 4D object captions (purely human-annotated) and 4D object question-answer pairs (created using a combination of human annotation and MLLMs).
> <details>
> <summary>read the caption</summary>
> Figure 3: Pipeline for constructing the 4D-Bench dataset. The pipeline includes rendering multi-view videos for 4D objects from Objaverse-XL, motion filtering, visual quality filtering, and multi-stage annotations for QA pairs and captions. Captions are purely human-annotated, while QA pairs are generated through a hybrid approach using MLLMs and human validation.
> </details>



![](https://arxiv.org/html/2503.17827/x6.png)

> 🔼 This figure presents a detailed breakdown of the data distribution within the 4D-Bench benchmark. The left panel displays the distribution of question-answer pairs across five subtasks in the 4D object question answering section of the benchmark.  It shows that a total of 751 question-answer pairs were created. The right panel shows the distribution of 4D objects across six categories in the 4D object captioning section of the benchmark, which includes 580 4D objects in total. This visualization helps to understand the composition and balance of different task types and object categories within the benchmark dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Subtask and category distributions in 4D object QA and captioning. Left: Distribution of five subtasks in the 4D object QA task, 751 question-answering pairs in total. Right: Distribution of 4D object categories in 4D object captioning task, 580 4D objects in total.
> </details>



![](https://arxiv.org/html/2503.17827/x7.png)

> 🔼 This figure showcases a sample question from the Object Counting subtask within the 4D-Bench benchmark.  The task's complexity highlights the need for multi-view spatial reasoning.  A single viewpoint (like the middle row in the image) might incorrectly suggest four presents because some are partially or fully occluded, leading to an inaccurate count. Correctly answering requires integrating information from multiple perspectives to identify all presents.
> <details>
> <summary>read the caption</summary>
> Figure 5: An example from Object Counting subtask. Answering this question requires integrating multi-view information and capturing cross-view correspondences to count the presents, necessitating multi-view reasoning abilities. If relying solely on a single view (e.g. the middle row), it would lead to wrong answers (e.g. four), since some boxes are occluded and invisible in this view.
> </details>



![](https://arxiv.org/html/2503.17827/x8.png)

> 🔼 This figure displays the impact of varying the number of viewpoints and the frequency of sampled frames on the accuracy of 4D object question answering.  The experiment uses the Gemini 1.5 Flash model. The left panel shows how accuracy changes as the number of views increases while keeping the number of frames per view constant at 6. The right panel shows the effect of altering the sampling frequency (frames per view) while maintaining a fixed number of 3 views.  The results illustrate the interplay between the richness of visual input (number of views) and the temporal detail (sampling frequency) in influencing the model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Effect of view number and temporal sampling on the 4D object QA performance. Tested on Gemini 1.5 Flash. Left: Accuracies across different numbers of views with fixed 6 frames. Right: Accuracies across different temporal frequencies with fixed 3 views.
> </details>



![](https://arxiv.org/html/2503.17827/x9.png)

> 🔼 This figure demonstrates the impact of the number of views and temporal sampling frequency on the performance of the Qwen2-VL 7B model in 4D object captioning.  The left panel shows how the GPT-Eval score changes as the number of views increases, while keeping the temporal sampling frequency constant at 6 frames. The right panel shows the effect of altering the temporal sampling frequency while using a fixed number of 3 views. The results illustrate the model's sensitivity to both the spatial and temporal information presented.
> <details>
> <summary>read the caption</summary>
> Figure 7: Effect of view number and temporal sampling on the 4D object captioning performance. Tested on Qwen2-VL 7B. Left: GPT-Eval scores across different numbers of views with fixed 6 frames. Right: GPT-Eval scores across different temporal frequencies with fixed 3 views.
> </details>



![](https://arxiv.org/html/2503.17827/x10.png)

> 🔼 This figure shows a synthetic spider with six legs, which is not a naturally occurring characteristic of spiders (they typically have eight legs).  The image is a still from a multi-view video used in the 4D Object Question Answering (QA) task of the 4D-Bench benchmark. This example tests if the models can identify and reason about counterfactual scenarios, where objects have properties or traits that contradict real-world knowledge.  By presenting an impossible feature, the researchers aim to evaluate whether the model truly understands the object or simply relies on its training data and pre-existing knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 8: A counterfactual example from 4D object QA task. A synthetic spider with six legs, illustrating a counterfactual scenario for testing model understanding, as real spiders typically have eight legs.
> </details>



![](https://arxiv.org/html/2503.17827/x11.png)

> 🔼 Figure 9 showcases a counterfactual scenario within the 4D object question answering task of the 4D-Bench benchmark.  A ball is shown rolling into a downward-facing hole and then inexplicably rolling back out. This defies the laws of physics, as a ball would typically remain trapped in the hole.  The figure highlights the benchmark's ability to test the robustness of Multimodal Large Language Models (MLLMs) by presenting situations that violate real-world expectations.
> <details>
> <summary>read the caption</summary>
> Figure 9: A counterfactual example from 4D object QA task. A ball rolling into a downward-facing hole and then rolling back out, depicting a counterfactual scenario that violates physical laws, as a ball would normally stay trapped in the hole.
> </details>



![](https://arxiv.org/html/2503.17827/x12.png)

> 🔼 This figure displays the distribution of video lengths in the 4D object captioning task dataset of the 4D-Bench benchmark.  It shows the number of videos across different lengths, measured in the number of frames.  The statistics, including mean, median, standard deviation, minimum, and maximum video length, are also provided to summarize the data.
> <details>
> <summary>read the caption</summary>
> Figure I: The frame-length distribution of multi-view videos used in the 4D object captioning task
> </details>



![](https://arxiv.org/html/2503.17827/x13.png)

> 🔼 This histogram displays the distribution of caption lengths (number of words) in the 4D object captioning dataset. It shows the frequency of captions with different word counts, providing insights into the overall length and variability of the human-generated captions used in the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure II: The length distribution of ground-truth captions used in the 4D object captioning task
> </details>



![](https://arxiv.org/html/2503.17827/x14.png)

> 🔼 This figure shows the distribution of video lengths used in the 4D object question answering task of the 4D-Bench benchmark.  It presents a histogram and kernel density estimate (KDE) plot illustrating the number of videos with varying lengths (number of frames). The mean, median, standard deviation, minimum, and maximum video lengths are also provided, giving a comprehensive view of the data distribution.
> <details>
> <summary>read the caption</summary>
> Figure III: The frame-length distribution of multi-view videos used in the 4D object question answering task
> </details>



![](https://arxiv.org/html/2503.17827/x15.png)

> 🔼 Figure IV illustrates the prompt used for the 4D object captioning task in the 4D-Bench benchmark.  The prompt instructs the evaluated multi-modal large language models (MLLMs) to generate a caption for a provided 4D object (represented as a multi-view video).  The prompt details the video content, specifies the required elements of the caption (appearance and actions), dictates the desired output format, and includes example captions to guide the MLLMs' style and level of detail. This structure ensures consistency and facilitates a more objective evaluation of the MLLMs' captioning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure IV: The prompt provided to the evaluated MLLMs in the 4D object captioning task. In this prompt, we describe the video information, caption requirement, and output format. We also provide several caption examples to guide the style of captions generated by MLLMs.
> </details>



![](https://arxiv.org/html/2503.17827/x16.png)

> 🔼 Figure V illustrates the distribution of the lengths of correct answers and incorrect options (decoys) in the 4D object question answering dataset.  It shows histograms for each, revealing the frequency of different answer lengths. This helps to assess if there are biases in the dataset towards certain lengths, which could impact the evaluation of models.
> <details>
> <summary>read the caption</summary>
> Figure V: The truncated length distribution of correct answers and decoys used in 4D object question answering dataset
> </details>



![](https://arxiv.org/html/2503.17827/x17.png)

> 🔼 Figure VI shows the prompt used in the 4D object question answering task of the 4D-Bench benchmark.  The prompt instructs the evaluated Multimodal Large Language Models (MLLMs) to analyze a multi-view video (18 frames from multiple viewpoints) and select the correct answer from four given options. The prompt emphasizes the need for accurate responses and specifies that only the letter corresponding to the chosen answer (A, B, C, or D) should be returned.
> <details>
> <summary>read the caption</summary>
> Figure VI: The prompt provided to the evaluated MLLMs in the 4D object QA task. In this prompt, we detailed the video information, questions and options, and the output format.
> </details>



![](https://arxiv.org/html/2503.17827/x18.png)

> 🔼 This figure displays the prompt template used for the GPT-Appearance metric in evaluating the quality of video captions generated by multimodal large language models (MLLMs).  The prompt instructs the evaluator (GPT-4) to assess the predicted caption based on its accuracy in describing the visual appearance and shape of the objects in the video, comparing it to a human-annotated reference caption.  A scoring rubric from 0 to 5 is provided, with detailed descriptions for each score level to guide the evaluation. Several example pairs of human and predicted captions with their corresponding scores are also given to illustrate how the scoring should be applied.
> <details>
> <summary>read the caption</summary>
> Figure VII: Prompt used in GPT-Appearance metric
> </details>



![](https://arxiv.org/html/2503.17827/x19.png)

> 🔼 This figure shows the prompt template used for evaluating the quality of video captions generated by large language models (LLMs) using the GPT-Action metric.  The prompt guides the evaluator to focus specifically on the accuracy and completeness of the action descriptions in the captions, ignoring other aspects like appearance or context.  A scoring rubric (0-5) is provided, with detailed descriptions for each score level, illustrating expected qualities like precision, recall, and handling of synonyms/paraphrases. Several examples of human-generated captions paired with predicted captions and their corresponding scores are included to help the evaluator understand the scoring criteria.
> <details>
> <summary>read the caption</summary>
> Figure VIII: Prompt used in GPT-Action metric
> </details>



![](https://arxiv.org/html/2503.17827/x20.png)

> 🔼 This figure showcases a qualitative comparison of how various multi-modal large language models (MLLMs) perform on the 4D object captioning task within the 4D-Bench benchmark.  It presents several example 4D objects (dynamic 3D objects) and displays the captions generated by different MLLMs alongside a human-generated caption for comparison.  This allows for a visual assessment of each model's ability to accurately and comprehensively describe both the visual appearance and the actions depicted in the 4D object sequences.
> <details>
> <summary>read the caption</summary>
> Figure IX: Qualitative results of different MLLMs on the 4D object captioning task of 4D-Bench
> </details>



![](https://arxiv.org/html/2503.17827/x21.png)

> 🔼 This figure presents a qualitative comparison of how different Multi-modal Large Language Models (MLLMs) perform the 4D object captioning task within the 4D-Bench benchmark.  It shows example 4D objects and the captions generated by several MLLMs, alongside a human-generated caption for each object, allowing for a visual assessment of each model's ability to understand both visual appearance and temporal aspects of dynamic 3D objects. The GPT-Appearance and GPT-Action scores, which evaluate the quality of appearance and action description, respectively, are included for each model's caption to provide a quantitative comparison.
> <details>
> <summary>read the caption</summary>
> Figure X: Qualitative results of different MLLMs on the 4D object captioning task of 4D-Bench
> </details>



![](https://arxiv.org/html/2503.17827/x22.png)

> 🔼 This figure presents a qualitative comparison of how different large multimodal language models (MLLMs) perform on the 4D object captioning task within the 4D-Bench benchmark.  It shows examples of 4D objects and captions generated by various MLLMs, including MiniGPT4-Video, VideoChat2-Mistral, Qwen2-VL 7B, and Gemini 1.5 Pro, alongside a human-generated caption for comparison.  The goal is to illustrate the strengths and weaknesses of each MLLM in terms of visual and motion understanding and the ability to generate accurate and descriptive captions for dynamic 3D objects.
> <details>
> <summary>read the caption</summary>
> Figure XI: Qualitative results of different MLLMs on the 4D object captioning task of 4D-Bench
> </details>



![](https://arxiv.org/html/2503.17827/x23.png)

> 🔼 Figure XII presents a qualitative comparison of how different Multi-modal Large Language Models (MLLMs) perform on the 4D object captioning task within the 4D-Bench benchmark.  It shows example 4D objects (dynamic 3D objects over time) and the captions generated by several MLLMs, alongside a human-generated caption for comparison.  This allows for a visual assessment of each model's ability to understand and describe both the visual appearance and the temporal evolution of the objects in the videos.
> <details>
> <summary>read the caption</summary>
> Figure XII: Qualitative results of different MLLMs on the 4D object captioning task of 4D-Bench
> </details>



![](https://arxiv.org/html/2503.17827/x24.png)

> 🔼 This figure showcases the performance of various Multimodal Large Language Models (MLLMs) on a 4D object question answering task within the 4D-Bench benchmark.  It presents a specific question and four possible answers, revealing which answer each MLLM selected. This allows for a direct comparison of the models' abilities to understand and reason about spatiotemporal information in a 4D context, highlighting strengths and weaknesses in their 4D object understanding capabilities.
> <details>
> <summary>read the caption</summary>
> Figure XIII: Qualitative results of different MLLMs on the 4D object question answering task of 4D-Bench
> </details>



![](https://arxiv.org/html/2503.17827/x25.png)

> 🔼 This figure showcases the performance of various large language models (LLMs) on a 4D object question answering task within the 4D-Bench benchmark.  The task involves a video of a pink flamingo performing an action, and the LLMs must correctly identify the sequence of actions from the given choices.  The results demonstrate the varying abilities of different LLMs to comprehend temporal dynamics and spatial reasoning in 4D object understanding.
> <details>
> <summary>read the caption</summary>
> Figure XIV: Qualitative results of different MLLMs on the 4D object question answering task of 4D-Bench
> </details>



![](https://arxiv.org/html/2503.17827/x26.png)

> 🔼 This figure showcases a qualitative comparison of how various large language models (LLMs) perform on a 4D object question answering task within the 4D-Bench benchmark.  It presents a sample question and the responses generated by different LLMs, highlighting their strengths and weaknesses in understanding temporal and spatial aspects of 4D objects (3D objects changing over time). The models' answers are contrasted with the correct answer to illustrate performance differences.
> <details>
> <summary>read the caption</summary>
> Figure XV: Qualitative results of different MLLMs on the 4D object question answering task of 4D-Bench
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.2.1" style="font-size:90%;">CIDEr</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.3.1" style="font-size:90%;">BLEU@4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.4.1" style="font-size:90%;">METEOR</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.5.1" style="font-size:90%;">ROUGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.6.1" style="font-size:90%;">BERT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.7.1" style="font-size:90%;">SBERT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.8.1" style="font-size:90%;color:#00FF00;">GPT-Appearance</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.9.1" style="font-size:90%;color:#00FF00;">GPT-Action</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.10.1" style="font-size:90%;color:#00FF00;">GPT-Eval</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.1.2.2.1">
<span class="ltx_text" id="S4.T2.2.1.2.2.1.1" style="font-size:90%;">MiniGPT4-Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.2.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T2.2.1.2.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.2"><span class="ltx_text" id="S4.T2.2.1.2.2.2.1" style="font-size:90%;">18.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.3"><span class="ltx_text" id="S4.T2.2.1.2.2.3.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.4"><span class="ltx_text" id="S4.T2.2.1.2.2.4.1" style="font-size:90%;">23.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.5"><span class="ltx_text" id="S4.T2.2.1.2.2.5.1" style="font-size:90%;">13.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.6"><span class="ltx_text" id="S4.T2.2.1.2.2.6.1" style="font-size:90%;">50.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.7"><span class="ltx_text" id="S4.T2.2.1.2.2.7.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.8"><span class="ltx_text" id="S4.T2.2.1.2.2.8.1" style="font-size:90%;">1.737/5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.9"><span class="ltx_text" id="S4.T2.2.1.2.2.9.1" style="font-size:90%;">1.351/5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2.10"><span class="ltx_text" id="S4.T2.2.1.2.2.10.1" style="font-size:90%;">1.544/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.3.3.1">
<span class="ltx_text" id="S4.T2.2.1.3.3.1.1" style="font-size:90%;">InternVL2 8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T2.2.1.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.2"><span class="ltx_text" id="S4.T2.2.1.3.3.2.1" style="font-size:90%;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.3"><span class="ltx_text" id="S4.T2.2.1.3.3.3.1" style="font-size:90%;">2.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.4"><span class="ltx_text" id="S4.T2.2.1.3.3.4.1" style="font-size:90%;">27.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.5"><span class="ltx_text" id="S4.T2.2.1.3.3.5.1" style="font-size:90%;">22.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.6"><span class="ltx_text" id="S4.T2.2.1.3.3.6.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.7"><span class="ltx_text" id="S4.T2.2.1.3.3.7.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.8"><span class="ltx_text" id="S4.T2.2.1.3.3.8.1" style="font-size:90%;">2.531/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.9"><span class="ltx_text" id="S4.T2.2.1.3.3.9.1" style="font-size:90%;">1.877/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3.10"><span class="ltx_text" id="S4.T2.2.1.3.3.10.1" style="font-size:90%;">2.204/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.4.4.1">
<span class="ltx_text" id="S4.T2.2.1.4.4.1.1" style="font-size:90%;">VideoChat2-Mistral </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S4.T2.2.1.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.2"><span class="ltx_text" id="S4.T2.2.1.4.4.2.1" style="font-size:90%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.3"><span class="ltx_text" id="S4.T2.2.1.4.4.3.1" style="font-size:90%;">6.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.4"><span class="ltx_text" id="S4.T2.2.1.4.4.4.1" style="font-size:90%;">33.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.5"><span class="ltx_text" id="S4.T2.2.1.4.4.5.1" style="font-size:90%;">33.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.6"><span class="ltx_text" id="S4.T2.2.1.4.4.6.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.7"><span class="ltx_text" id="S4.T2.2.1.4.4.7.1" style="font-size:90%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.8"><span class="ltx_text" id="S4.T2.2.1.4.4.8.1" style="font-size:90%;">2.578/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.9"><span class="ltx_text" id="S4.T2.2.1.4.4.9.1" style="font-size:90%;">1.912/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4.10"><span class="ltx_text" id="S4.T2.2.1.4.4.10.1" style="font-size:90%;">2.245/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.5.5.1">
<span class="ltx_text" id="S4.T2.2.1.5.5.1.1" style="font-size:90%;">LLaVA-OneVison 7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T2.2.1.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.2"><span class="ltx_text" id="S4.T2.2.1.5.5.2.1" style="font-size:90%;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.3"><span class="ltx_text" id="S4.T2.2.1.5.5.3.1" style="font-size:90%;">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.4"><span class="ltx_text" id="S4.T2.2.1.5.5.4.1" style="font-size:90%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.5"><span class="ltx_text" id="S4.T2.2.1.5.5.5.1" style="font-size:90%;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.6"><span class="ltx_text" id="S4.T2.2.1.5.5.6.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.7"><span class="ltx_text" id="S4.T2.2.1.5.5.7.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.8"><span class="ltx_text" id="S4.T2.2.1.5.5.8.1" style="font-size:90%;">3.166/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.9"><span class="ltx_text" id="S4.T2.2.1.5.5.9.1" style="font-size:90%;">2.479/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5.10"><span class="ltx_text" id="S4.T2.2.1.5.5.10.1" style="font-size:90%;">2.823/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.6.6.1">
<span class="ltx_text" id="S4.T2.2.1.6.6.1.1" style="font-size:90%;">LLaVA-Video 7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a><span class="ltx_text" id="S4.T2.2.1.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.2"><span class="ltx_text" id="S4.T2.2.1.6.6.2.1" style="font-size:90%;">102.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.3"><span class="ltx_text" id="S4.T2.2.1.6.6.3.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.6.6.4.1" style="font-size:90%;">41.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.5"><span class="ltx_text" id="S4.T2.2.1.6.6.5.1" style="font-size:90%;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.6"><span class="ltx_text" id="S4.T2.2.1.6.6.6.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.7"><span class="ltx_text" id="S4.T2.2.1.6.6.7.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.8"><span class="ltx_text" id="S4.T2.2.1.6.6.8.1" style="font-size:90%;">3.235/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.9"><span class="ltx_text" id="S4.T2.2.1.6.6.9.1" style="font-size:90%;">2.552/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.6.10"><span class="ltx_text" id="S4.T2.2.1.6.6.10.1" style="font-size:90%;">2.894/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.7.7.1">
<span class="ltx_text" id="S4.T2.2.1.7.7.1.1" style="font-size:90%;">Qwen2-VL 7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a><span class="ltx_text" id="S4.T2.2.1.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.2"><span class="ltx_text" id="S4.T2.2.1.7.7.2.1" style="font-size:90%;">84.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.3"><span class="ltx_text" id="S4.T2.2.1.7.7.3.1" style="font-size:90%;">10.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.4"><span class="ltx_text" id="S4.T2.2.1.7.7.4.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.5"><span class="ltx_text" id="S4.T2.2.1.7.7.5.1" style="font-size:90%;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.6"><span class="ltx_text" id="S4.T2.2.1.7.7.6.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.7"><span class="ltx_text" id="S4.T2.2.1.7.7.7.1" style="font-size:90%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.8"><span class="ltx_text" id="S4.T2.2.1.7.7.8.1" style="font-size:90%;">3.170/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.9"><span class="ltx_text" id="S4.T2.2.1.7.7.9.1" style="font-size:90%;">2.666/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.7.10"><span class="ltx_text" id="S4.T2.2.1.7.7.10.1" style="font-size:90%;">2.918/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.8.8.1">
<span class="ltx_text" id="S4.T2.2.1.8.8.1.1" style="font-size:90%;">InternVL2 76B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T2.2.1.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.2"><span class="ltx_text" id="S4.T2.2.1.8.8.2.1" style="font-size:90%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.3"><span class="ltx_text" id="S4.T2.2.1.8.8.3.1" style="font-size:90%;">5.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.4"><span class="ltx_text" id="S4.T2.2.1.8.8.4.1" style="font-size:90%;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.5"><span class="ltx_text" id="S4.T2.2.1.8.8.5.1" style="font-size:90%;">27.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.6"><span class="ltx_text" id="S4.T2.2.1.8.8.6.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.7"><span class="ltx_text" id="S4.T2.2.1.8.8.7.1" style="font-size:90%;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.8"><span class="ltx_text" id="S4.T2.2.1.8.8.8.1" style="font-size:90%;">3.099/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.9"><span class="ltx_text" id="S4.T2.2.1.8.8.9.1" style="font-size:90%;">2.637/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.8.10"><span class="ltx_text" id="S4.T2.2.1.8.8.10.1" style="font-size:90%;">2.868/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.9.9.1">
<span class="ltx_text" id="S4.T2.2.1.9.9.1.1" style="font-size:90%;">LLaVA-OneVision 72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.9.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T2.2.1.9.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.9.2.1" style="font-size:90%;">107.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.9.3.1" style="font-size:90%;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.4"><span class="ltx_text" id="S4.T2.2.1.9.9.4.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.9.5.1" style="font-size:90%;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.9.6.1" style="font-size:90%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.7"><span class="ltx_text" id="S4.T2.2.1.9.9.7.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.8"><span class="ltx_text" id="S4.T2.2.1.9.9.8.1" style="font-size:90%;">3.180/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.9"><span class="ltx_text" id="S4.T2.2.1.9.9.9.1" style="font-size:90%;">2.268/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.9.10"><span class="ltx_text" id="S4.T2.2.1.9.9.10.1" style="font-size:90%;">2.724/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.10.10.1">
<span class="ltx_text" id="S4.T2.2.1.10.10.1.1" style="font-size:90%;">LLaVA-Video 72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.10.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a><span class="ltx_text" id="S4.T2.2.1.10.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.2"><span class="ltx_text" id="S4.T2.2.1.10.10.2.1" style="font-size:90%;">106.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.3"><span class="ltx_text" id="S4.T2.2.1.10.10.3.1" style="font-size:90%;">15.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.4"><span class="ltx_text" id="S4.T2.2.1.10.10.4.1" style="font-size:90%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.5"><span class="ltx_text" id="S4.T2.2.1.10.10.5.1" style="font-size:90%;">40.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.10.10.6.1" style="font-size:90%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.7"><span class="ltx_text" id="S4.T2.2.1.10.10.7.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.8"><span class="ltx_text" id="S4.T2.2.1.10.10.8.1" style="font-size:90%;">3.138/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.9"><span class="ltx_text" id="S4.T2.2.1.10.10.9.1" style="font-size:90%;">2.471/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.10.10"><span class="ltx_text" id="S4.T2.2.1.10.10.10.1" style="font-size:90%;">2.804/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.11.11.1">
<span class="ltx_text" id="S4.T2.2.1.11.11.1.1" style="font-size:90%;">Qwen2-VL 72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.11.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a><span class="ltx_text" id="S4.T2.2.1.11.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.2"><span class="ltx_text" id="S4.T2.2.1.11.11.2.1" style="font-size:90%;">95.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.3"><span class="ltx_text" id="S4.T2.2.1.11.11.3.1" style="font-size:90%;">12.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.4"><span class="ltx_text" id="S4.T2.2.1.11.11.4.1" style="font-size:90%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.5"><span class="ltx_text" id="S4.T2.2.1.11.11.5.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.6"><span class="ltx_text" id="S4.T2.2.1.11.11.6.1" style="font-size:90%;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.7"><span class="ltx_text" id="S4.T2.2.1.11.11.7.1" style="font-size:90%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.8"><span class="ltx_text" id="S4.T2.2.1.11.11.8.1" style="font-size:90%;">3.324/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.9"><span class="ltx_text" id="S4.T2.2.1.11.11.9.1" style="font-size:90%;">2.791/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.11.10"><span class="ltx_text" id="S4.T2.2.1.11.11.10.1" style="font-size:90%;">3.057/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.12.12.1">
<span class="ltx_text" id="S4.T2.2.1.12.12.1.1" style="font-size:90%;">Gemini 1.5 Flash </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.12.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S4.T2.2.1.12.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.2"><span class="ltx_text" id="S4.T2.2.1.12.12.2.1" style="font-size:90%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.3"><span class="ltx_text" id="S4.T2.2.1.12.12.3.1" style="font-size:90%;">7.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.4"><span class="ltx_text" id="S4.T2.2.1.12.12.4.1" style="font-size:90%;">36.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.5"><span class="ltx_text" id="S4.T2.2.1.12.12.5.1" style="font-size:90%;">32.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.6"><span class="ltx_text" id="S4.T2.2.1.12.12.6.1" style="font-size:90%;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.12.12.7.1" style="font-size:90%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.8"><span class="ltx_text" id="S4.T2.2.1.12.12.8.1" style="font-size:90%;">3.246/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.9"><span class="ltx_text" id="S4.T2.2.1.12.12.9.1" style="font-size:90%;">2.931/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.12.10"><span class="ltx_text" id="S4.T2.2.1.12.12.10.1" style="font-size:90%;">3.088/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.13.13.1">
<span class="ltx_text" id="S4.T2.2.1.13.13.1.1" style="font-size:90%;">GPT-4o mini </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.13.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T2.2.1.13.13.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.2"><span class="ltx_text" id="S4.T2.2.1.13.13.2.1" style="font-size:90%;">51.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.3"><span class="ltx_text" id="S4.T2.2.1.13.13.3.1" style="font-size:90%;">2.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.4"><span class="ltx_text" id="S4.T2.2.1.13.13.4.1" style="font-size:90%;">30.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.5"><span class="ltx_text" id="S4.T2.2.1.13.13.5.1" style="font-size:90%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.6"><span class="ltx_text" id="S4.T2.2.1.13.13.6.1" style="font-size:90%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.7"><span class="ltx_text" id="S4.T2.2.1.13.13.7.1" style="font-size:90%;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.8"><span class="ltx_text" id="S4.T2.2.1.13.13.8.1" style="font-size:90%;color:#808080;">3.311/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.9"><span class="ltx_text" id="S4.T2.2.1.13.13.9.1" style="font-size:90%;color:#808080;">3.131/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.13.13.10"><span class="ltx_text" id="S4.T2.2.1.13.13.10.1" style="font-size:90%;color:#808080;">3.221/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.14.14.1">
<span class="ltx_text" id="S4.T2.2.1.14.14.1.1" style="font-size:90%;">Gemini 1.5 Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.14.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S4.T2.2.1.14.14.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.2"><span class="ltx_text" id="S4.T2.2.1.14.14.2.1" style="font-size:90%;">94.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.3"><span class="ltx_text" id="S4.T2.2.1.14.14.3.1" style="font-size:90%;">11.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.4"><span class="ltx_text" id="S4.T2.2.1.14.14.4.1" style="font-size:90%;">38.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.5"><span class="ltx_text" id="S4.T2.2.1.14.14.5.1" style="font-size:90%;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.14.14.6.1" style="font-size:90%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.7"><span class="ltx_text" id="S4.T2.2.1.14.14.7.1" style="font-size:90%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.8"><span class="ltx_text" id="S4.T2.2.1.14.14.8.1" style="font-size:90%;">3.311/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.9"><span class="ltx_text" id="S4.T2.2.1.14.14.9.1" style="font-size:90%;">2.983/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.14.14.10"><span class="ltx_text" id="S4.T2.2.1.14.14.10.1" style="font-size:90%;">3.147/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.15.15.1">
<span class="ltx_text" id="S4.T2.2.1.15.15.1.1" style="font-size:90%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.1.15.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T2.2.1.15.15.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.2"><span class="ltx_text" id="S4.T2.2.1.15.15.2.1" style="font-size:90%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.3"><span class="ltx_text" id="S4.T2.2.1.15.15.3.1" style="font-size:90%;">6.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.4"><span class="ltx_text" id="S4.T2.2.1.15.15.4.1" style="font-size:90%;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.5"><span class="ltx_text" id="S4.T2.2.1.15.15.5.1" style="font-size:90%;">32.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.6"><span class="ltx_text" id="S4.T2.2.1.15.15.6.1" style="font-size:90%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.7"><span class="ltx_text" id="S4.T2.2.1.15.15.7.1" style="font-size:90%;">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.8"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.15.15.8.1" style="font-size:90%;color:#808080;">3.507/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.9"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.15.15.9.1" style="font-size:90%;color:#808080;">3.258/5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.15.15.10"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.15.15.10.1" style="font-size:90%;color:#808080;">3.382/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.1.16.16.1"><span class="ltx_text" id="S4.T2.2.1.16.16.1.1" style="font-size:90%;">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.2"><span class="ltx_text" id="S4.T2.2.1.16.16.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.3"><span class="ltx_text" id="S4.T2.2.1.16.16.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.4"><span class="ltx_text" id="S4.T2.2.1.16.16.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.5"><span class="ltx_text" id="S4.T2.2.1.16.16.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.6"><span class="ltx_text" id="S4.T2.2.1.16.16.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.7"><span class="ltx_text" id="S4.T2.2.1.16.16.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.8"><span class="ltx_text" id="S4.T2.2.1.16.16.8.1" style="font-size:90%;">3.038/5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.9"><span class="ltx_text" id="S4.T2.2.1.16.16.9.1" style="font-size:90%;">2.522/5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.16.16.10"><span class="ltx_text" id="S4.T2.2.1.16.16.10.1" style="font-size:90%;">2.780/5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.17.17" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.1.17.17.1"><span class="ltx_text" id="S4.T2.2.1.17.17.1.1" style="font-size:90%;background-color:#E6E6E6;">Human</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.2"><span class="ltx_text" id="S4.T2.2.1.17.17.2.1" style="font-size:90%;background-color:#E6E6E6;">126.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.3"><span class="ltx_text" id="S4.T2.2.1.17.17.3.1" style="font-size:90%;background-color:#E6E6E6;">14.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.4"><span class="ltx_text" id="S4.T2.2.1.17.17.4.1" style="font-size:90%;background-color:#E6E6E6;">45.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.5"><span class="ltx_text" id="S4.T2.2.1.17.17.5.1" style="font-size:90%;background-color:#E6E6E6;">43.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.6"><span class="ltx_text" id="S4.T2.2.1.17.17.6.1" style="font-size:90%;background-color:#E6E6E6;">71.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.7"><span class="ltx_text" id="S4.T2.2.1.17.17.7.1" style="font-size:90%;background-color:#E6E6E6;">76.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.8"><span class="ltx_text" id="S4.T2.2.1.17.17.8.1" style="font-size:90%;background-color:#E6E6E6;">3.772/5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.9"><span class="ltx_text" id="S4.T2.2.1.17.17.9.1" style="font-size:90%;background-color:#E6E6E6;">3.879/5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.17.17.10"><span class="ltx_text" id="S4.T2.2.1.17.17.10.1" style="font-size:90%;background-color:#E6E6E6;">3.826/5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive evaluation of various Multimodal Large Language Models (MLLMs) on a 4D object captioning task.  The table compares the performance of several open-source and closed-source MLLMs against human performance using a variety of metrics.  These metrics include traditional n-gram based metrics (BLEU, ROUGE, METEOR, CIDEr, BERTScore, Sentence-BERT) and GPT-based metrics (GPT-Appearance, GPT-Action, GPT-Eval). The GPT metrics are highlighted because they show a stronger correlation with human judgment of caption quality.  The 'Average' row provides the average performance across all MLLMs for each metric, while the 'Human' row displays the average human performance, serving as a baseline.  GPT-4's GPT scores are presented in gray due to potential bias inherent in self-evaluating GPT models using GPT-based metrics. The table enables a detailed comparison of different MLLM capabilities in generating descriptive and accurate captions for dynamic 3D objects.
> <details>
> <summary>read the caption</summary>
> Table 2: 4D object captioning results. The Average row represents the mean performance of all tested MLLM models under each metric. The Human row represents the performance of human annotator under each metric. For each metric, we bold the best performing MLLM model. We highlight GPT metrics as they demonstrate better alignment with human preferences in evaluating caption quality, and our analysis also primarily focuses on models’ performance across these metrics. GPT-4o’s GPT metrics are marked in gray due to the potential self-evaluation bias when using GPT-based metrics to evaluate a GPT model[80]. We provide human performance as a reference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.2.1">Original Setting(%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.3.1">Frame Order(%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.4.1">w/ Time Stamp(%)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.1.2.1.1">MiniGPT4-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.1.2">23.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.1.3">17.58 <span class="ltx_text" id="S4.T3.2.1.2.1.3.1" style="color:#FF0000;">(↓5.59)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.1.4">17.18 <span class="ltx_text" id="S4.T3.2.1.2.1.4.1" style="color:#FF0000;">(↓5.99)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.3.2.1">VideoChat2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.3.2.2">32.36</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.3.2.3">33.95 <span class="ltx_text" id="S4.T3.2.1.3.2.3.1" style="color:#00FF00;">(↑1.59)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.3.2.4">23.04 <span class="ltx_text" id="S4.T3.2.1.3.2.4.1" style="color:#FF0000;">(↓9.32)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.4.3.1">InternVL2 8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.3.2">32.09</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.3.3">38.88 <span class="ltx_text" id="S4.T3.2.1.4.3.3.1" style="color:#00FF00;">(↑6.79)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.3.4">33.69 <span class="ltx_text" id="S4.T3.2.1.4.3.4.1" style="color:#00FF00;">(↑1.60)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.5.4.1">LLaVA-OneVision 7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.4.2">53.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.4.3">51.40 <span class="ltx_text" id="S4.T3.2.1.5.4.3.1" style="color:#FF0000;">(↓1.60)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.4.4">53.53 <span class="ltx_text" id="S4.T3.2.1.5.4.4.1" style="color:#00FF00;">(↑0.53)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.6.5.1">LLaVA-Video 7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.5.2">56.86</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.5.3">59.25 <span class="ltx_text" id="S4.T3.2.1.6.5.3.1" style="color:#00FF00;">(↑2.39)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.5.4">57.52 <span class="ltx_text" id="S4.T3.2.1.6.5.4.1" style="color:#00FF00;">(↑0.66)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.7.6.1">Qwen2-VL 7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.6.2">56.99</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.6.3">49.80 <span class="ltx_text" id="S4.T3.2.1.7.6.3.1" style="color:#FF0000;">(↓7.19)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.6.4">57.52 <span class="ltx_text" id="S4.T3.2.1.7.6.4.1" style="color:#00FF00;">(↑0.53)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.8.7.1">InternVL2 76B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.8.7.2">43.94</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.8.7.3">47.54 <span class="ltx_text" id="S4.T3.2.1.8.7.3.1" style="color:#00FF00;">(↑3.60)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.8.7.4">46.07 <span class="ltx_text" id="S4.T3.2.1.8.7.4.1" style="color:#00FF00;">(↑2.13)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.9.8.1">LLaVA-OneVision 72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.9.8.2">61.38</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.9.8.3">61.25 <span class="ltx_text" id="S4.T3.2.1.9.8.3.1" style="color:#FF0000;">(↓0.13)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.9.8.4">60.59 <span class="ltx_text" id="S4.T3.2.1.9.8.4.1" style="color:#FF0000;">(↓0.79)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.10.9.1">LLaVA-Video 72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.10.9.2">62.32</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.10.9.3">62.72 <span class="ltx_text" id="S4.T3.2.1.10.9.3.1" style="color:#00FF00;">(↑0.40)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.10.9.4">61.92 <span class="ltx_text" id="S4.T3.2.1.10.9.4.1" style="color:#FF0000;">(↓0.40)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.11.10.1">Qwen2-VL 72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.11.10.2">58.72</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.11.10.3">54.46 <span class="ltx_text" id="S4.T3.2.1.11.10.3.1" style="color:#FF0000;">(↓4.26)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.11.10.4">59.25 <span class="ltx_text" id="S4.T3.2.1.11.10.4.1" style="color:#00FF00;">(↑0.53)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.12.11.1">Gemini 1.5 Flash <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.12.11.2">51.80</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.12.11.3">51.80 <span class="ltx_text" id="S4.T3.2.1.12.11.3.1" style="color:#00FF00;">(↑0.00)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.12.11.4">52.86 <span class="ltx_text" id="S4.T3.2.1.12.11.4.1" style="color:#00FF00;">(↑1.06)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.13.12.1">GPT-4o mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.13.12.2">54.59</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.13.12.3">53.66 <span class="ltx_text" id="S4.T3.2.1.13.12.3.1" style="color:#FF0000;">(↓0.93)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.13.12.4">53.79 <span class="ltx_text" id="S4.T3.2.1.13.12.4.1" style="color:#FF0000;">(↓0.80)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.14.13.1">Gemini 1.5 Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.14.13.2">59.52</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.14.13.3">58.72 <span class="ltx_text" id="S4.T3.2.1.14.13.3.1" style="color:#FF0000;">(↓0.80)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.14.13.4">59.25 <span class="ltx_text" id="S4.T3.2.1.14.13.4.1" style="color:#FF0000;">(↓0.27)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.1.15.14.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17827v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.15.14.2">62.98</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.15.14.3">60.85 <span class="ltx_text" id="S4.T3.2.1.15.14.3.1" style="color:#FF0000;">(↓2.13)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.15.14.4">63.12 <span class="ltx_text" id="S4.T3.2.1.15.14.4.1" style="color:#00FF00;">(↑0.14)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.2.1.16.15.1">Average</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.1.16.15.2">50.69</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.1.16.15.3">50.13 <span class="ltx_text" id="S4.T3.2.1.16.15.3.1" style="color:#FF0000;">(↓0.56)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.1.16.15.4">49.95 <span class="ltx_text" id="S4.T3.2.1.16.15.4.1" style="color:#FF0000;">(↓0.74)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a robustness analysis of the 4D object question answering (QA) task within the 4D-Bench benchmark.  It examines how variations in experimental setup affect model performance. Specifically, it compares the original experimental setting's overall accuracy against results obtained by altering the order of viewpoint processing (viewpoint-first vs. temporal-first) and the inclusion of timestamp information in the prompts. Green upward arrows (↑) highlight improvements in overall accuracy compared to the original setting, while red downward arrows (↓) indicate decreases.
> <details>
> <summary>read the caption</summary>
> Table 3: Robustness study of 4D object QA experiment. Green arrows (↑) indicate improvement over Original Setting’s Overall accuracy, while red arrows (↓) show decline.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17827/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17827/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}