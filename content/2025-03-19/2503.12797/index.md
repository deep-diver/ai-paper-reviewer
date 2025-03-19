---
title: "DeepPerception: Advancing R1-like Cognitive Visual Perception in MLLMs for Knowledge-Intensive Visual Grounding"
summary: "DeepPerception enhances MLLMs with cognitive visual perception, achieving superior grounding through knowledge integration & reasoning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12797 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinyu Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12797" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12797" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12797/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Multimodal Large Language Models (MLLMs) struggle to integrate reasoning into visual perception, often providing direct responses without deeper analysis. To address this, the paper introduces **knowledge-intensive visual grounding (KVG)**, a new visual grounding task demanding both fine-grained perception and the integration of domain-specific knowledge. The benchmark includes 10 domains with 1.3K curated test cases, highlighting current MLLMs' limitations in cognitive visual perception.



To overcome these challenges, the paper presents a method that enhances MLLMs with cognitive visual perception capabilities. This approach utilizes (1) an automated data synthesis pipeline for generating high-quality, knowledge-aligned samples, and (2) a two-stage training framework combining supervised fine-tuning and reinforcement learning. Experimental results demonstrate significant improvements in accuracy and generalization compared to direct fine-tuning, achieving state-of-the-art performance on the new benchmark. The approach substantially advances the state-of-the-art in cognitive visual perception.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} KVG is a novel visual grounding task requiring fine-grained perception and domain knowledge integration. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DeepPerception, enhances cognitive visual perception capabilities in MLLMs through automated data synthesis and a two-stage training framework. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DeepPerception achieves state-of-the-art performance on KVG-Bench, demonstrating superior cognitive visual perception and cross-domain generalization. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to enhance MLLMs' cognitive visual perception, addressing limitations in integrating reasoning with visual analysis. It is important because it sets a new benchmark for **human-like visual perception** and opens new directions for multimodal reasoning research with broad applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12797/x2.png)

> 🔼 Figure 1 shows a comparison of DeepPerception and a baseline model's performance on a visual grounding task. Panel (a) illustrates the difference in their reasoning processes: DeepPerception uses knowledge-driven reasoning to arrive at an answer, while the baseline model provides a direct response without any cognitive steps.  Panel (b) presents quantitative results, showing that DeepPerception significantly outperforms the baseline model, demonstrating enhanced cognitive visual perception capabilities that cannot be obtained simply through zero-shot chain-of-thought prompting of the foundational model.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) DeepPerception employs knowledge-driven reasoning to derive answers, while the baseline model directly outputs predictions without cognitive processing. (b) DeepPerception demonstrates superior cognitive visual perception capabilities that cannot be elicited in the foundation model through simplistic zero-shot CoT prompting.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_tt" colspan="6" id="S4.T1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.2.1">Seen Categories</span></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_tt" colspan="6" id="S4.T1.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.3.1">Unseen categories</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.4.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.1.1">Air.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.2.1">Car</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.3.1">Rep.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.4.1">Bird</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.5.1">Food</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.6.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.7.1">Dog</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.8.1">Mol.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.9.1">Mam.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.10.1">Flwr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.2.2.11"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.11.1">Ldmk.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.2.2.12"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.12.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T1.2.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.3.3.1.1">Human Evaluation</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.4.4" style="background-color:#E9E9E9;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.1.4.4.1"><span class="ltx_text" id="S4.T1.2.1.4.4.1.1" style="background-color:#E9E9E9;">Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.2"><span class="ltx_text" id="S4.T1.2.1.4.4.2.1" style="background-color:#E9E9E9;">59.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.3"><span class="ltx_text" id="S4.T1.2.1.4.4.3.1" style="background-color:#E9E9E9;">66.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.4"><span class="ltx_text" id="S4.T1.2.1.4.4.4.1" style="background-color:#E9E9E9;">50.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.5"><span class="ltx_text" id="S4.T1.2.1.4.4.5.1" style="background-color:#E9E9E9;">44.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.4.4.6"><span class="ltx_text" id="S4.T1.2.1.4.4.6.1" style="background-color:#E9E9E9;">65.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.4.4.7"><span class="ltx_text" id="S4.T1.2.1.4.4.7.1" style="background-color:#E9E9E9;">57.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.8"><span class="ltx_text" id="S4.T1.2.1.4.4.8.1" style="background-color:#E9E9E9;">48.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.9"><span class="ltx_text" id="S4.T1.2.1.4.4.9.1" style="background-color:#E9E9E9;">45.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.10"><span class="ltx_text" id="S4.T1.2.1.4.4.10.1" style="background-color:#E9E9E9;">51.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.11"><span class="ltx_text" id="S4.T1.2.1.4.4.11.1" style="background-color:#E9E9E9;">64.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.4.4.12"><span class="ltx_text" id="S4.T1.2.1.4.4.12.1" style="background-color:#E9E9E9;">68.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.4.4.13"><span class="ltx_text" id="S4.T1.2.1.4.4.13.1" style="background-color:#E9E9E9;">55.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.4.14"><span class="ltx_text" id="S4.T1.2.1.4.4.14.1" style="background-color:#E9E9E9;">56.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.5.5" style="background-color:#E9E9E9;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.5.5.1"><span class="ltx_text" id="S4.T1.2.1.5.5.1.1" style="background-color:#E9E9E9;">Human + search</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.2"><span class="ltx_text" id="S4.T1.2.1.5.5.2.1" style="background-color:#E9E9E9;">81.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.3"><span class="ltx_text" id="S4.T1.2.1.5.5.3.1" style="background-color:#E9E9E9;">85.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.4"><span class="ltx_text" id="S4.T1.2.1.5.5.4.1" style="background-color:#E9E9E9;">68.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.5"><span class="ltx_text" id="S4.T1.2.1.5.5.5.1" style="background-color:#E9E9E9;">74.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.5.5.6"><span class="ltx_text" id="S4.T1.2.1.5.5.6.1" style="background-color:#E9E9E9;">86.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.5.5.7"><span class="ltx_text" id="S4.T1.2.1.5.5.7.1" style="background-color:#E9E9E9;">78.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.8"><span class="ltx_text" id="S4.T1.2.1.5.5.8.1" style="background-color:#E9E9E9;">78.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.9"><span class="ltx_text" id="S4.T1.2.1.5.5.9.1" style="background-color:#E9E9E9;">74.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.10"><span class="ltx_text" id="S4.T1.2.1.5.5.10.1" style="background-color:#E9E9E9;">74.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.11"><span class="ltx_text" id="S4.T1.2.1.5.5.11.1" style="background-color:#E9E9E9;">84.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.5.5.12"><span class="ltx_text" id="S4.T1.2.1.5.5.12.1" style="background-color:#E9E9E9;">86.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.5.5.13"><span class="ltx_text" id="S4.T1.2.1.5.5.13.1" style="background-color:#E9E9E9;">79.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.5.14"><span class="ltx_text" id="S4.T1.2.1.5.5.14.1" style="background-color:#E9E9E9;">78.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T1.2.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.6.1.1">70B-Scale MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.7.7" style="background-color:#E9E9E9;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.1.7.7.1"><span class="ltx_text" id="S4.T1.2.1.7.7.1.1" style="background-color:#E9E9E9;">InternVL2-76B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.2"><span class="ltx_text" id="S4.T1.2.1.7.7.2.1" style="background-color:#E9E9E9;">62.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.3"><span class="ltx_text" id="S4.T1.2.1.7.7.3.1" style="background-color:#E9E9E9;">74.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.4"><span class="ltx_text" id="S4.T1.2.1.7.7.4.1" style="background-color:#E9E9E9;">60.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.5"><span class="ltx_text" id="S4.T1.2.1.7.7.5.1" style="background-color:#E9E9E9;">41.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.7.7.6"><span class="ltx_text" id="S4.T1.2.1.7.7.6.1" style="background-color:#E9E9E9;">76.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.7.7.7"><span class="ltx_text" id="S4.T1.2.1.7.7.7.1" style="background-color:#E9E9E9;">59.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.8"><span class="ltx_text" id="S4.T1.2.1.7.7.8.1" style="background-color:#E9E9E9;">78.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.9"><span class="ltx_text" id="S4.T1.2.1.7.7.9.1" style="background-color:#E9E9E9;">51.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.10"><span class="ltx_text" id="S4.T1.2.1.7.7.10.1" style="background-color:#E9E9E9;">56.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.11"><span class="ltx_text" id="S4.T1.2.1.7.7.11.1" style="background-color:#E9E9E9;">43.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.7.7.12"><span class="ltx_text" id="S4.T1.2.1.7.7.12.1" style="background-color:#E9E9E9;">55.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.7.7.13"><span class="ltx_text" id="S4.T1.2.1.7.7.13.1" style="background-color:#E9E9E9;">57.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.7.7.14"><span class="ltx_text" id="S4.T1.2.1.7.7.14.1" style="background-color:#E9E9E9;">58.68</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.8.8" style="background-color:#E9E9E9;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.8.8.1"><span class="ltx_text" id="S4.T1.2.1.8.8.1.1" style="background-color:#E9E9E9;">Qwen2-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.2"><span class="ltx_text" id="S4.T1.2.1.8.8.2.1" style="background-color:#E9E9E9;">63.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.3"><span class="ltx_text" id="S4.T1.2.1.8.8.3.1" style="background-color:#E9E9E9;">75.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.4"><span class="ltx_text" id="S4.T1.2.1.8.8.4.1" style="background-color:#E9E9E9;">59.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.5"><span class="ltx_text" id="S4.T1.2.1.8.8.5.1" style="background-color:#E9E9E9;">40.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.8.8.6"><span class="ltx_text" id="S4.T1.2.1.8.8.6.1" style="background-color:#E9E9E9;">77.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.8.8.7"><span class="ltx_text" id="S4.T1.2.1.8.8.7.1" style="background-color:#E9E9E9;">59.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.8"><span class="ltx_text" id="S4.T1.2.1.8.8.8.1" style="background-color:#E9E9E9;">80.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.9"><span class="ltx_text" id="S4.T1.2.1.8.8.9.1" style="background-color:#E9E9E9;">42.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.10"><span class="ltx_text" id="S4.T1.2.1.8.8.10.1" style="background-color:#E9E9E9;">59.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.11"><span class="ltx_text" id="S4.T1.2.1.8.8.11.1" style="background-color:#E9E9E9;">65.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.8.8.12"><span class="ltx_text" id="S4.T1.2.1.8.8.12.1" style="background-color:#E9E9E9;">66.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.8.8.13"><span class="ltx_text" id="S4.T1.2.1.8.8.13.1" style="background-color:#E9E9E9;">62.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.8.14"><span class="ltx_text" id="S4.T1.2.1.8.8.14.1" style="background-color:#E9E9E9;">60.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T1.2.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.9.9.1.1">Specialist Grounding Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.1.10.10.1">YOLO-World <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.2">41.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.3">28.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.4">8.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.5">14.74</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.10.10.6">30.71</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.10.10.7">23.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.8">50.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.9">2.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.10">24.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.11">1.12</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.10.10.12">3.61</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.10.10.13">17.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.10.10.14">21.11</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.11.11.1">G-DINO-1.6-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.2">39.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.3">41.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.4">48.97</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.5">23.11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.11.11.6">24.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.11.11.7">33.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.8">44.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.9">40.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.10">39.29</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.11">32.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.11.11.12">27.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.11.11.13">37.68</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.11.11.14">35.25</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.12.12.1">DINO-X <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.2">43.42</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.3">49.04</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.4">42.76</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.5">28.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.12.12.6">41.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.12.12.7">38.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.8">62.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.9">35.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.10">48.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.11">31.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.12.12.12">49.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.12.12.13">45.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.12.12.14">41.69</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.13.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T1.2.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.13.13.1.1">7B-Scale MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.1.14.14.1">Shikra-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.2">20.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.3">25.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.4">15.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.5">16.33</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.14.14.6">28.57</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.14.14.7">20.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.8">51.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.9">19.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.10">25.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.11">16.85</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.14.14.12">22.89</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.14.14.13">27.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.14.14.14">23.43</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.15.15.1">CogVLM-G <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.2">46.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.3">64.42</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.4">49.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.5">34.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.15.15.6">63.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.15.15.7">48.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.8">79.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.9">31.11</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.10">54.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.11">56.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.15.15.12">66.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.15.15.13">56.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.15.15.14">51.80</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.16.16.1">DeepSeek-VL2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.2">51.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.3">60.57</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.4">53.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.5">29.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.16.16.6">63.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.16.16.7">47.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.8">62.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.9">35.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.10">50.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.11">44.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.16.16.12">39.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.16.16.13">47.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.16.16.14">47.60</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.17.17.1">InternVL2-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.2">46.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.3">52.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.4">40.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.5">26.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.17.17.6">50.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.17.17.7">40.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.8">64.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.9">34.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.10">45.54</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.11">41.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.17.17.12">25.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.17.17.13">43.57</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.17.17.14">41.77</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.18.18.1">Qwen2-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.2">48.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.3">74.04</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.4">51.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.5">33.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.18.18.6">65.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.18.18.7">50.38</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.8">76.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.9">33.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.10">54.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.11">57.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.18.18.12">59.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.1.18.18.13">55.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.18.18.14">52.40</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.1.19.19.1">Qwen2-VL-7B (SFT)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.2">53.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.3">79.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.4">53.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.5">31.87</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.19.19.6">67.86</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.19.19.7">52.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.8">84.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.9">34.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.10">54.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.11">40.45</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.19.19.12">53.01</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.1.19.19.13">56.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.19.19.14">54.12</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.20.20" style="background-color:#E4DDF3;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.2.1.20.20.1"><span class="ltx_text" id="S4.T1.2.1.20.20.1.1" style="background-color:#E4DDF3;">DeepPerception</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.2.1" style="background-color:#E4DDF3;">69.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.3.1" style="background-color:#E4DDF3;">86.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.4.1" style="background-color:#E4DDF3;">64.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.5.1" style="background-color:#E4DDF3;">41.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.1.20.20.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.6.1" style="background-color:#E4DDF3;">77.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.1.20.20.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.7.1" style="background-color:#E4DDF3;">63.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.8"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.8.1" style="background-color:#E4DDF3;">85.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.9"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.9.1" style="background-color:#E4DDF3;">40.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.10.1" style="background-color:#E4DDF3;">58.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.11"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.11.1" style="background-color:#E4DDF3;">59.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.1.20.20.12"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.12.1" style="background-color:#E4DDF3;">61.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.1.20.20.13"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.13.1" style="background-color:#E4DDF3;">60.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.20.20.14"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.20.20.14.1" style="background-color:#E4DDF3;">62.20</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of DeepPerception's performance against various baseline models on the Knowledge-Intensive Visual Grounding (KVG) task.  It shows the accuracy of each model across different categories within the KVG-Bench dataset, both for seen and unseen categories.  This allows for an assessment of DeepPerception's overall performance, its ability to generalize to new categories, and a comparison against other approaches, including both large language models and specialist grounding models.
> <details>
> <summary>read the caption</summary>
> Table 1: KVG results of DeepPerception and baseline models.
> </details>





### In-depth insights


#### Cognitive Vision
**Cognitive vision** represents a significant leap beyond traditional computer vision, aiming to imbue machines with human-like visual understanding. It's not just about recognizing objects, but also about comprehending the relationships between them, inferring context, and reasoning about visual information. This involves integrating perception with higher-level cognitive processes such as memory, knowledge, and reasoning. A key aspect is the ability to handle ambiguity and uncertainty, drawing on prior knowledge to make informed interpretations of visual scenes. Cognitive vision systems should be capable of learning and adapting, improving their understanding over time through experience. Applications range from autonomous navigation and robotics to medical image analysis and intelligent surveillance, offering more robust and reliable visual understanding compared to traditional methods. The challenge lies in effectively modeling and implementing these complex cognitive processes within artificial systems, bridging the gap between raw visual data and meaningful semantic understanding.

#### KVG Benchmark
The research introduces KVG-Bench, a novel benchmark designed to evaluate cognitive visual perception in MLLMs. KVG-Bench **emphasizes fine-grained visual discrimination and domain-specific knowledge integration**, challenging MLLMs to move beyond superficial pattern recognition. The benchmark encompasses 10 diverse domains, providing a **comprehensive evaluation** across various knowledge areas. KVG-Bench is **manually curated** with 1.3K test cases, ensuring high-quality and reliable assessment.  The **rigorous construction** and **manual validation** sets a new standard for evaluating cognitive visual perception in multimodal systems, highlighting its meaningful role for advancing research and model capabilities.

#### DeepPerception
**DeepPerception** addresses the limitation of current MLLMs that struggle to integrate reasoning into visual perception, leading to direct responses without deeper analysis. It enhances MLLMs with cognitive visual perception capabilities, consisting of an automated data synthesis pipeline for high-quality, knowledge-aligned training samples and a two-stage training framework. The approach combines supervised fine-tuning for cognitive reasoning and reinforcement learning to optimize perception-cognition synergy. This integration bridges the gap between the inherent cognitive capabilities of MLLMs and human-like visual perception, showing significant performance gains and superior cross-domain generalization compared to direct fine-tuning methods. **DeepPerception** offers a way to emulate human-like visual perception with structured knowledge integration.

#### RL for Perception
Reinforcement Learning (RL) offers a compelling framework for training perception systems, moving beyond traditional supervised learning. The core idea is to train agents to interact with an environment and learn perceptual representations that are useful for decision-making.  **This is especially valuable when ground truth labels for perception are scarce or expensive to obtain.**  RL can learn directly from raw sensory inputs (e.g., images, audio), optimizing perceptual features that maximize task performance. **The reward function in RL acts as a form of implicit supervision, guiding the learning of relevant perceptual attributes.**  For instance, an RL agent learning to navigate would develop visual features sensitive to obstacles and landmarks.  **Furthermore, RL enables learning of active perception strategies, where the agent controls its sensors to gather the most informative data.**  This contrasts with passive perception systems that simply process whatever input they receive.  Challenges in applying RL to perception include designing effective reward functions, handling partial observability, and ensuring generalization to novel environments. **Despite these challenges, RL for perception holds immense potential for creating robust, adaptable, and task-driven perceptual systems.**

#### Domain Expertise
**Domain expertise** is paramount for fine-grained visual tasks. The paper reveals that current MLLMs struggle to integrate domain knowledge into visual perception, often producing direct answers without deeper analysis. **Human experts excel** due to their ability to leverage domain knowledge to refine perceptual features. The KVG task highlights this gap, requiring both fine-grained perception and domain-specific knowledge integration. The results show a significant performance elevation in the **Open-Book Setting**, which validates the importance of the synergistic integration of expert-level knowledge and fine-grained visual comparison for advancing cognitive visual perception in MLLMs. **Data augmentation is key**. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12797/x3.png)

> 🔼 Figure 2 shows two aspects of the KVG-Bench dataset. (a) Illustrates that KVG-Bench images contain multiple entities of the same subordinate category.  The example given shows various Boeing aircraft models (777, 767, 757, 747, 737, 727, 717, 707) within a single image. This highlights the fine-grained nature of the dataset and the need for a model to distinguish between visually similar objects. (b) Demonstrates the high diversity across categories and entities in KVG-Bench. This ensures the dataset is comprehensive in terms of the range of visual concepts represented.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) KVG-Bench images contain multiple subordinate-category entities (e.g., Boeing 777, 767, 757, 747, 737, 727, 717, 707 from top to bottom in the left image); (b) KVG-Bench exhibits high diversity across categories and entities.
> </details>



![](https://arxiv.org/html/2503.12797/x4.png)

> 🔼 This figure illustrates the DeepPerception model's architecture, which consists of a data engine and a two-stage training framework. The data engine automatically synthesizes high-quality training data by leveraging existing fine-grained visual recognition datasets, addressing the scarcity of suitable data for knowledge-intensive visual grounding.  The two-stage training framework first employs supervised fine-tuning with chain-of-thought prompting to establish foundational cognitive capabilities, followed by reinforcement learning to optimize perception-cognition synergy.  The figure visually depicts the data flow and processing steps in both the data generation and model training phases.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the proposed data engine and two-stage training framework.
> </details>



![](https://arxiv.org/html/2503.12797/x5.png)

> 🔼 This figure presents a bar chart analysis comparing the performance of DeepPerception and a baseline model on a knowledge evaluation task.  The x-axis represents different domains (both known and unknown to the model), while the y-axis indicates accuracy.  The bars show that DeepPerception consistently outperforms the baseline model across all domains, particularly exhibiting a much larger improvement in domains where the model already possesses some knowledge.  The significant performance difference, especially noticeable in known domains, highlights the effectiveness of DeepPerception's structured knowledge integration in visual perception. This suggests that DeepPerception's improvements stem from cognitive processes that leverage knowledge rather than solely relying on superficial visual feature recognition.
> <details>
> <summary>read the caption</summary>
> Figure 4: Knowledge evaluation results. DeepPerception exhibits greater improvement on known entities across domains, evidencing cognitive visual perception with structured knowledge integration rather than superficial perceptual improvements.
> </details>



![](https://arxiv.org/html/2503.12797/x6.png)

> 🔼 This figure displays the KL divergence between the probability distributions of response tokens generated by stage-2 models (trained with either CoT-SFT or GRPO) and the stage-1 model.  The KL divergence is broken down into two parts: one measuring the difference in the reasoning process (CoT) and another measuring the difference in the final answers.  The results show that CoT-SFT primarily improves the reasoning aspect (higher CoT divergence), while GRPO mainly refines the perceptual precision (higher answer divergence). This suggests a synergistic relationship between the two training stages, with CoT-SFT establishing cognitive abilities and GRPO enhancing perception-cognition alignment. 
> <details>
> <summary>read the caption</summary>
> Figure 5: KL Divergence analysis between the probability distribution of response tokens from stage-2 models and the stage-1 model reveals complementary specialization: CoT-SFT focuses on knowledge-guided reasoning process (higher CoT divergence) while GRPO optimizes perceptual precision (elevated answer divergence), synergistically bridging cognitive processing and perception refinement.
> </details>



![](https://arxiv.org/html/2503.12797/x7.png)

> 🔼 This figure presents a comparative case study of DeepPerception and Qwen2-VL-7B on two distinct tasks: Knowledge-Intensive Visual Grounding (KVG) and Fine-grained Visual Recognition (FGVR). The top half showcases KVG examples, highlighting DeepPerception's superior ability to use reasoning and visual analysis to accurately identify objects, even amidst similar-looking distractors.  It contrasts this with Qwen2-VL-7B's less accurate responses. The bottom half illustrates FGVR examples. It again demonstrates DeepPerception's enhanced performance in distinguishing between closely related objects, due to its cognitive reasoning capabilities.  This contrasts with Qwen2-VL-7B which has a lower success rate in this challenging fine-grained visual categorization task.
> <details>
> <summary>read the caption</summary>
> Figure 6: Case study comparing DeepPerception and Qwen2-VL-7B on KVG-Bench (top) and FGVR (bottom).
> </details>



![](https://arxiv.org/html/2503.12797/extracted/6288805/figures/KVG_Length.png)

> 🔼 This figure displays an example of Chain-of-Thought (CoT) reasoning generated by the Qwen2-VL-72B model.  The CoT outlines the steps the model took to identify a specific bird in an image. It begins with a planning phase, which lays out the steps involved in the identification process. This is followed by a visual analysis step, detailing the visual characteristics of the target bird and other birds present in the image. A comparison phase then differentiates the target bird based on the visual features described. Finally, the CoT concludes by identifying the specific bird based on its distinguishing characteristics compared to others in the image.
> <details>
> <summary>read the caption</summary>
> Figure 7: Example of Chain-of-Thought data generated by Qwen2-VL-72B.
> </details>



![](https://arxiv.org/html/2503.12797/extracted/6288805/figures/FGVR_Length.png)

> 🔼 This figure shows a line graph illustrating the average length of responses generated by the DeepPerception model during the reinforcement learning (RL) phase of its training on the Knowledge-Intensive Visual Grounding (KVG) dataset. The x-axis represents the training step, while the y-axis indicates the average number of tokens in the model's responses. The graph reveals a trend of decreasing response length during initial training, followed by stabilization to a consistent length. This trend suggests the model learns efficient reasoning strategies during RL training, avoiding excessive or unnecessary verbosity in its responses. The consistent length may also reflect the limited complexity inherent to the KVG task which does not require prolonged or extensive deliberation for accurate perception.
> <details>
> <summary>read the caption</summary>
> Figure 8: The average response length of DeepPerception on the KVG training data during the RL process
> </details>



![](https://arxiv.org/html/2503.12797/x8.png)

> 🔼 This figure shows a line graph illustrating the average response length of the DeepPerception model during the reinforcement learning (RL) process on the Fine-grained Visual Recognition (FGVR) training dataset. The x-axis represents the training steps, while the y-axis indicates the average response length in terms of the number of tokens. The graph displays the trend of response length over the RL process, offering insights into the model's behavior and performance.
> <details>
> <summary>read the caption</summary>
> Figure 9: The average response length of DeepPerception on the FGVR training data during the RL process
> </details>



![](https://arxiv.org/html/2503.12797/x9.png)

> 🔼 This figure showcases a comparative case study between DeepPerception and Qwen2-VL-7B on the KVG-Bench dataset.  It presents several example queries and highlights how DeepPerception leverages cognitive visual perception to successfully identify and locate objects in images, while Qwen2-VL-7B struggles with accurate grounding, particularly for complex queries requiring in-depth visual analysis and domain knowledge.  Each example includes the query, the model's response (including reasoning chains if available for DeepPerception), and a visual indication (✓ or ✗) of correctness. The differences highlight DeepPerception's superior performance on knowledge-intensive visual grounding.
> <details>
> <summary>read the caption</summary>
> Figure 10: Case study comparing DeepPerception and Qwen2-VL-7B on KVG-Bench
> </details>



![](https://arxiv.org/html/2503.12797/x10.png)

> 🔼 Figure 11 presents a comparative case study showcasing DeepPerception and Qwen2-VL-7B's performance on Fine-grained Visual Recognition (FGVR) tasks.  The figure highlights several examples where each model is asked to identify specific entities within images. For each example, the visual analysis, comparison process, and conclusion drawn by each model are displayed.  This visual comparison demonstrates DeepPerception's superior ability to leverage visual clues and incorporate knowledge to arrive at precise answers, contrasting with Qwen2-VL-7B which sometimes makes less accurate or even completely incorrect identifications.
> <details>
> <summary>read the caption</summary>
> Figure 11: Case study comparing DeepPerception and Qwen2-VL-7B on FGVR
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.2.1">Dog</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.3.1">Bird</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.4.1">Air.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.5.1">Flwr.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.6.1">Pet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.7.1">Car</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.8.1">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.1.2.1.1">LLaVA 1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.2">38.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.3">35.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.4">34.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.5">51.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.6">52.25</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.1.2.1.7">46.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.8">43.24</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.3.2.1">Phi-3-Vision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.2">39.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.3">37.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.4">42.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.5">51.59</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.6">56.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.3.2.7">54.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.8">47.04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.4.3.1">Idefics2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.2">57.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.3">47.17</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.4">56.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.5">72.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.6">81.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.4.3.7">80.25</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.8">65.95</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.5.4.1">Finedefics <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.2">72.86</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.3">57.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.4">63.82</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.5">89.88</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.6">92.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.5.4.7">84.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.8">76.84</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.1.6.5.1">Qwen2VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12797v2#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.2">71.39</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.3">65.31</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.4">71.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.5">86.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.6">91.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.1.6.5.7">90.95</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.8">79.57</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.7.6" style="background-color:#E4DDF3;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.2.1.7.6.1"><span class="ltx_text" id="S4.T2.2.1.7.6.1.1" style="background-color:#E4DDF3;">DeepPerception</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.2.1" style="background-color:#E4DDF3;">78.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.3.1" style="background-color:#E4DDF3;">67.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.4.1" style="background-color:#E4DDF3;">75.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.5.1" style="background-color:#E4DDF3;">93.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.7.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.6.1" style="background-color:#E4DDF3;">93.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.1.7.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.7.1" style="background-color:#E4DDF3;">91.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.7.6.8"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.8.1" style="background-color:#E4DDF3;">83.21</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of DeepPerception against several baseline models on fine-grained visual recognition (FGVR) tasks.  It shows the accuracy achieved by each model on several FGVR datasets, providing a quantitative assessment of DeepPerception's effectiveness in this challenging visual perception domain compared to existing methods.
> <details>
> <summary>read the caption</summary>
> Table 2: FGVR results of DeepPerception and baseline models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T3.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.2.1">MMBench-V1.1<sub class="ltx_sub" id="S5.T3.2.1.1.1.2.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.2.1.1.1.2.1.1.1">test</span></sub></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.3.1">MMMU<sub class="ltx_sub" id="S5.T3.2.1.1.1.3.1.1"><span class="ltx_text ltx_font_medium" id="S5.T3.2.1.1.1.3.1.1.1">val</span></sub></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.4.1">AI2D</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.5.1">MathVision</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.2.1.2.1.1">Qwen2VL-7B<span class="ltx_note ltx_role_footnote" id="footnote1"><sup class="ltx_note_mark">1</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">1</sup><span class="ltx_tag ltx_tag_note">1</span>reproduced using <a class="ltx_ref ltx_href" href="https://github.com/open-compass/VLMEvalKit" title="">VLMEvalKit</a></span></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.1.2">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.1.3">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.1.4">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.1.5">18.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.2.1.3.2.1">DeepPerception</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.3.2.2">81.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.3.2.3">49.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.3.2.4">80.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.3.2.5">18.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of DeepPerception and Qwen2VL-7B's performance across various general-purpose multimodal benchmarks.  It allows for a direct assessment of DeepPerception's capabilities beyond the specialized knowledge-intensive visual grounding task (KVG) for which it was primarily designed.  The benchmarks likely assess a range of skills such as reasoning, knowledge retrieval, and visual understanding.  By comparing DeepPerception against Qwen2VL-7B, the table helps gauge the extent to which DeepPerception's architectural enhancements improve generalized multimodal performance, rather than just performance on a narrowly defined KVG task.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance Comparison of DeepPerception and Qwen2VL-7B on general multimodal benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.1.1">Stage</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.3.1">In Domain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.4.1">Out of Domain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.5.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T4.2.1.2.1.1" rowspan="2"><span class="ltx_text" id="S5.T4.2.1.2.1.1.1">1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.2.1.2.1.2">SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.2.1.3">52.65</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.2.1.2.1.4">56.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.2.1.5">54.12</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.1.3.2.1">CoT-SFT</th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.3.2.2">56.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.2.1.3.2.3">56.80</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.3.2.4">56.81</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T4.2.1.4.3.1" rowspan="2"><span class="ltx_text" id="S5.T4.2.1.4.3.1.1">2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.2.1.4.3.2">CoT-SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.4.3.3">56.94</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.2.1.4.3.4">56.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.4.3.5">56.96</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.2.1.5.4.1">GRPO</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.4.2.1">63.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.2.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.4.3.1">60.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.4.4.1">62.20</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the contribution of each stage in the proposed two-stage training framework for DeepPerception.  It compares the model's performance on the in-domain and out-of-domain categories of the KVG benchmark across different training stages:  (1) Supervised Fine-Tuning (SFT), (2) Chain-of-Thought Supervised Fine-Tuning (COT-SFT), and (3) Reinforcement Learning with Group Relative Policy Optimization (GRPO). The results highlight how each stage impacts the overall performance and, specifically, the model's ability to generalize across different domains.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on the effectiveness of the proposed two-stage cognitive training framework.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12797/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12797/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}