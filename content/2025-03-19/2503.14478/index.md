---
title: "Creation-MMBench: Assessing Context-Aware Creative Intelligence in MLLM"
summary: "Creation-MMBench: Assessing Context-Aware Creative Intelligence in MLLMs"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Zhejiang University",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14478 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinyu Fang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14478" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14478" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14478/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current MLLM benchmarks have gaps evaluating **visual-creative intelligence**. Existing benchmarks feature simple questions that fail to assess model performance in real-life creative tasks. To address this, the paper introduces Creation-MMBench to divide the intelligence into three forms and comprehensively evaluate visual creative intelligence. 



The paper proposed Creation-MMBench, a multimodal benchmark specifically designed to evaluate the creative capabilities of MLLMs in real-world, image-based tasks. **Creation-MMBench provides more creative and discriminative questions** and better evaluation of visual creative intelligence. The benchmark comprises 765 test cases spanning 51 fine-grained tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current open-source MLLMs significantly underperform proprietary models in creative tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Visual fine-tuning can negatively impact the base LLM's creative abilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Creation-MMBench offers valuable insights for advancing MLLM creativity. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This study introduces Creation-MMBench, a benchmark to evaluate creative capabilities of MLLMs, which will provide a valuable resource for researchers working on **advancing MLLM creativity and generative intelligence.** The benchmark and analysis can open new avenues for research in multimodal learning and evaluation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.14478/x2.png)

> 🔼 The figure illustrates the motivation behind the creation of Creation-MMBench.  It highlights the limitations of existing Multimodal Large Language Model (MLLM) benchmarks in assessing visual-creative intelligence. These benchmarks often lack comprehensive evaluation of visual creativity and rely on simple questions that do not reflect real-world creative tasks. In contrast, Creation-MMBench offers a more robust evaluation by incorporating four categories of tasks, more creative and discriminative questions, and a more thorough assessment of visual creative intelligence.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our Motivation for Creation-MMBench. The triarchic theory of intelligence divides intelligence into three forms. Current MLLM benchmarks have significant gaps in evaluating visual-creative intelligence compared to the other forms. Additionally, existing benchmarks feature simple questions that fail to assess model performance in real-life creative tasks. Therefore, we proposed Creation-MMBench, which includes four categories, more creative and discriminative questions, and better evaluation of visual creative intelligence.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.2.1">
<tr class="ltx_tr" id="S2.T1.2.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S2.T1.2.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.1.1" style="font-size:80%;">Benchmarks</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S2.T1.2.1.1.2" style="padding:0.8pt 1.0pt;">
<span class="ltx_text" id="S2.T1.2.1.1.2.1"></span><span class="ltx_text" id="S2.T1.2.1.1.2.2" style="font-size:80%;"> </span><span class="ltx_text" id="S2.T1.2.1.1.2.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.2.1.1.2.3.1">
<span class="ltx_tr" id="S2.T1.2.1.1.2.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.2.3.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.2.3.1.1.1.1">Num of</span></span></span>
<span class="ltx_tr" id="S2.T1.2.1.1.2.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.2.3.1.2.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.2.3.1.2.1.1">Creative</span></span></span>
<span class="ltx_tr" id="S2.T1.2.1.1.2.3.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.2.3.1.3.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.2.3.1.3.1.1">Questions</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.2.1.1.2.4"></span><span class="ltx_text" id="S2.T1.2.1.1.2.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S2.T1.2.1.1.3" style="padding:0.8pt 1.0pt;">
<span class="ltx_text" id="S2.T1.2.1.1.3.1"></span><span class="ltx_text" id="S2.T1.2.1.1.3.2" style="font-size:80%;"> </span><span class="ltx_text" id="S2.T1.2.1.1.3.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.2.1.1.3.3.1">
<span class="ltx_tr" id="S2.T1.2.1.1.3.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.3.3.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.3.3.1.1.1.1">Criteria</span></span></span>
<span class="ltx_tr" id="S2.T1.2.1.1.3.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.3.3.1.2.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.3.3.1.2.1.1">Level</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.2.1.1.3.4"></span><span class="ltx_text" id="S2.T1.2.1.1.3.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S2.T1.2.1.1.4" style="padding:0.8pt 1.0pt;">
<span class="ltx_text" id="S2.T1.2.1.1.4.1"></span><span class="ltx_text" id="S2.T1.2.1.1.4.2" style="font-size:80%;"> </span><span class="ltx_text" id="S2.T1.2.1.1.4.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.2.1.1.4.3.1">
<span class="ltx_tr" id="S2.T1.2.1.1.4.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.4.3.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.4.3.1.1.1.1">multi-images</span></span></span>
<span class="ltx_tr" id="S2.T1.2.1.1.4.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.4.3.1.2.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.4.3.1.2.1.1">task</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.2.1.1.4.4"></span><span class="ltx_text" id="S2.T1.2.1.1.4.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S2.T1.2.1.1.5" style="padding:0.8pt 1.0pt;">
<span class="ltx_text" id="S2.T1.2.1.1.5.1"></span><span class="ltx_text" id="S2.T1.2.1.1.5.2" style="font-size:80%;"> </span><span class="ltx_text" id="S2.T1.2.1.1.5.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.2.1.1.5.3.1">
<span class="ltx_tr" id="S2.T1.2.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.5.3.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.5.3.1.1.1.1">Specific Role</span></span></span>
<span class="ltx_tr" id="S2.T1.2.1.1.5.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.5.3.1.2.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.5.3.1.2.1.1">for each</span></span></span>
<span class="ltx_tr" id="S2.T1.2.1.1.5.3.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.5.3.1.3.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.5.3.1.3.1.1">Questions</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.2.1.1.5.4"></span><span class="ltx_text" id="S2.T1.2.1.1.5.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S2.T1.2.1.1.6" style="padding:0.8pt 1.0pt;">
<span class="ltx_text" id="S2.T1.2.1.1.6.1"></span><span class="ltx_text" id="S2.T1.2.1.1.6.2" style="font-size:80%;"> </span><span class="ltx_text" id="S2.T1.2.1.1.6.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.2.1.1.6.3.1">
<span class="ltx_tr" id="S2.T1.2.1.1.6.3.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.6.3.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.6.3.1.1.1.1">Visual</span></span></span>
<span class="ltx_tr" id="S2.T1.2.1.1.6.3.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.6.3.1.2.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.6.3.1.2.1.1">Factuality</span></span></span>
<span class="ltx_tr" id="S2.T1.2.1.1.6.3.1.3">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.1.6.3.1.3.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.1.6.3.1.3.1.1">Check</span></span></span>
</span></span><span class="ltx_text" id="S2.T1.2.1.1.6.4"></span><span class="ltx_text" id="S2.T1.2.1.1.6.5" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S2.T1.2.1.2.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.2.1.1" style="font-size:80%;">VisIT-Bench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.2.1.2.2" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.2.2.1" style="font-size:80%;">65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.2.1.2.3" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.2.3.1" style="font-size:80%;">benchmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.2.1.2.4" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.2.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.2.1.2.5" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.2.5.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.2.1.2.6" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.2.6.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.T1.2.1.3.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.3.1.1" style="font-size:80%;">MLLM-Bench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.3.2" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.3.2.1" style="font-size:80%;">20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.3.3" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.3.3.1" style="font-size:80%;">instance</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.3.4" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.3.4.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.3.5" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.3.5.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.3.6" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.3.6.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.T1.2.1.4.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.4.1.1" style="font-size:80%;">Touch-Stone</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.4.2" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.4.2.1" style="font-size:80%;">189</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.4.3" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.4.3.1" style="font-size:80%;">benchmark</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.4.4" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.4.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.4.5" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.4.5.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.4.6" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.4.6.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.T1.2.1.5.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.5.1.1" style="font-size:80%;">AlignMMbench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.5.2" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.5.2.1" style="font-size:80%;">353</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.5.3" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.5.3.1" style="font-size:80%;">task</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.5.4" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.5.4.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.5.5" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.5.5.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.T1.2.1.5.6" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.5.6.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.2.1.6.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.6.1.1" style="font-size:80%;">Creation-MMBench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.2.1.6.2" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.6.2.1" style="font-size:80%;">765</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.2.1.6.3" style="padding:0.8pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.1.6.3.1" style="font-size:80%;">instance</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.2.1.6.4" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.6.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.2.1.6.5" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.6.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.2.1.6.6" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="S2.T1.2.1.6.6.1" style="font-size:80%;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares Creation-MMBench to other Multimodal Large Language Model (MLLM) benchmarks that focus on evaluating creative capabilities.  It highlights key differences in the number of creative questions, whether multiple images are used per question, the level of detail in the questions (benchmark vs instance-level), whether specific roles are assigned in the questions, the importance of visual elements, the inclusion of a factuality check, and the availability of questions without visual content. This comparison helps showcase Creation-MMBench's unique features and how it improves on existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Creation-MMBench with other partial-creation MLLM benchmarks.
> </details>





### In-depth insights


#### Creative MLLM Gap
The under-explored domain of creative capabilities in Multimodal Large Language Models (MLLMs), compared to LLMs, represents a significant 'Creative MLLM Gap'. Current benchmarks inadequately assess **visual-creative intelligence**, especially in real-world, image-based tasks. **Addressing this gap is crucial**, as creativity, involving novel and appropriate solutions, is a fundamental aspect of intelligence. Existing benchmarks often feature simplistic questions, failing to challenge MLLMs in complex, real-life scenarios that demand broader cognitive abilities. The benchmarks lag significantly behind those conducted for LLMs. Assessing visual creativity requires benchmarks encompassing a range of cognitive abilities **Visual fine-tuning can negatively impact the base LLM's creative abilities**. Therefore, **dedicated benchmarks** that evaluate the integration of visual perception with creative expression are essential for advancing MLLM capabilities in this domain.

#### Real-world Vision
**Real-world vision** in MLLMs highlights the critical need for models to effectively translate visual inputs into creative outputs. This involves nuanced understanding, **factual consistency**, and the ability to generate contextually appropriate responses. **Creativity benchmarks** specifically designed help evaluate models for their real-world application. **Models face challenges** to maintain creativity while staying aligned with visual details, and the exploration of trade-offs becomes essential. Visual tuning affects creative abilities, understanding the necessity of the model.

#### Instance Criteria
**Instance-specific criteria** are pivotal for MLLM evaluation, offering granular assessment of responses tailored to each unique test case.  Unlike generic benchmarks, **defining unique criteria** ensures effective integration of visual and contextual cues. This tailored approach is vital for complex, creative tasks where a single evaluation model falls short.  By assessing both general response quality and factual consistency, these criteria enable a comprehensive and nuanced understanding of the model's proficiency. Crafting **detailed instructions** that consider the subtleties of individual tasks yields a more reliable and insightful evaluation, surpassing the limitations of one-size-fits-all metrics.  These criteria provide a robust framework for advancing multimodal generative intelligence.

#### Visual hurts LLM?
**Visual fine-tuning's impact on LLMs is complex.** While enhancing multimodal capabilities, it can **negatively affect the base LLM's creative abilities**, indicating a trade-off. The study's findings suggest that visual training, designed to improve perception, might constrain the LLM's original strength in text-based creative tasks. This implies that LLMs might **over specialize during visual instruction tuning**, losing the inherent ability to diverge in creative tasks. **Careful tuning strategies** are needed to mitigate such losses, ensuring multimodal LLMs **retain robust creativity alongside enhanced visual understanding.** Further research on LLM could be crucial

#### For Generative AI
Assessing creative intelligence in multimodal models (**MLLMs**) opens intriguing avenues for generative AI. Unlike discriminative tasks, where models identify patterns, generative AI demands **novel content creation** aligned with context and constraints. Benchmarks like Creation-MMBench, focusing on visual-creative tasks, are vital. They push MLLMs beyond recognition to **imaginative applications** like story writing or design generation. A key challenge lies in **evaluation**: assessing not just accuracy, but originality and contextual fit. This necessitates new metrics and judge models adept at subjective assessment. By tackling this, we enhance generative AI's potential for creative problem-solving and innovative expression.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.14478/x3.png)

> 🔼 The figure illustrates the brain regions associated with creativity, highlighting the frontal lobe's crucial role in functions like concentration, planning, and problem-solving, which are essential components of the creative process.  It visually represents the neural networks involved in creative thinking.
> <details>
> <summary>read the caption</summary>
> Figure 2: Brain regions related to creativity and their respective functions [11, 6].
> </details>



![](https://arxiv.org/html/2503.14478/x4.png)

> 🔼 Creation-MMBench is a multimodal benchmark for evaluating the creative capabilities of large language models (LLMs), particularly in image-based tasks.  This figure provides a visual overview of the benchmark's structure and content. It shows the four main task categories within Creation-MMBench (Literary Writing, Common Functional Writing, Professional Functional Writing, and Creative Multimodal Understanding), each containing numerous sub-tasks.  A selection of representative example tasks within each category is visually displayed, along with sample images illustrating the diverse visual content used across all tasks. The caption points out that this figure shows only a subset of the total tasks, with a complete list available in Appendix A of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of Creation-MMBench. Contains four task categories, each category consists of multiple tasks, and the types of images are diverse. Only a few representative tasks of each category are shown here. Complete list of tasks is detailed in the Appendix A.
> </details>



![](https://arxiv.org/html/2503.14478/x5.png)

> 🔼 The bar chart displays the performance of various Multimodal Large Language Models (MLLMs) on the Creation-MMBench benchmark when visual input is removed.  It compares the reward scores for each model, providing insights into their creative capabilities in a text-only setting.  Lower reward scores indicate weaker performance without visual context.
> <details>
> <summary>read the caption</summary>
> Figure 4: Evaluation Result of MLLMs w/o visual input.
> </details>



![](https://arxiv.org/html/2503.14478/x6.png)

> 🔼 The figure shows a bar chart illustrating the distribution of query lengths in the Creation-MMBench dataset. The x-axis represents the range of query lengths, categorized into bins (e.g., <50, 50-500, 500-1000, >1000). The y-axis represents the frequency or proportion of queries falling within each length range. This visualization helps to understand the length distribution characteristics of questions used in Creation-MMBench for evaluating MLLMs' creative capabilities.
> <details>
> <summary>read the caption</summary>
> (a) Distribution of query lengths.
> </details>



![](https://arxiv.org/html/2503.14478/x7.png)

> 🔼 The figure shows the diversity of roles incorporated in the Creation-MMBench benchmark's queries.  The variety of roles reflects real-world scenarios and aims to stimulate creative responses from MLLMs by requiring them to leverage diverse disciplinary knowledge and prior experience.
> <details>
> <summary>read the caption</summary>
> (b) Roles in Creation-MMBench.
> </details>



![](https://arxiv.org/html/2503.14478/x8.png)

> 🔼 This figure shows an example case from Creation-MMBench. It showcases two tasks, one focused on design and the other on creative writing. The design task presents a floor plan and asks the model to analyze the plan and provide improvement suggestions considering a family of four. The creative writing task shows an image and asks the model to write a short story based on the image. The figure illustrates the benchmark's diverse tasks and its multimodal nature.
> <details>
> <summary>read the caption</summary>
> (c) Example Case of Creation-MMBench.
> </details>



![](https://arxiv.org/html/2503.14478/x9.png)

> 🔼 Creation-MMBench is a new benchmark designed to evaluate the creative capabilities of multimodal large language models (MLLMs).  Figure 6 highlights key aspects that differentiate Creation-MMBench from other existing benchmarks.  First, the query design is more comprehensive, encompassing rich contexts to fully test creative abilities.  Second, diverse roles are included in the prompts to encourage MLLMs to draw upon their existing knowledge and expertise in various fields.  Finally, the benchmark utilizes a wide variety of images, enabling a thorough evaluation of MLLMs' multifaceted capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 6: Statistics and Cases of Creation-MMBench. Compared to other widely used MLLM benchmarks, Creation-MMBench features a more comprehensive query design to capture abundant creative contexts. Diverse roles are introduced into the queries to stimulate MLLMs’ utilization of disciplinary and prior knowledge. As an MLLM benchmark, Creation-MMBench includes a rich variety of images to thoroughly evaluate multiple capabilities of MLLMs.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/full_task_v3.png)

> 🔼 This figure compares the performance of various large language models (LLMs) on two different benchmarks: the OpenVLM Leaderboard and Creation-MMBench. The OpenVLM Leaderboard measures general objective performance, while Creation-MMBench specifically evaluates visual creativity.  The graph highlights a significant difference between the scores achieved on these two benchmarks for some open-source models.  While some models perform well on the OpenVLM Leaderboard (indicating strong general capabilities), their performance on Creation-MMBench is substantially lower, demonstrating a weakness in visual creativity. This discrepancy emphasizes that general objective metrics may not accurately reflect the visual creative capabilities of LLMs, especially for open-source models.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparing OC Score and Creation-MMBench Reward. This figure shows the model performance on the OpenVLM Leaderboard and Creation-MMBench, highlighting a significant gap between objective performance and visual creativity in some open-source models.
> </details>



![](https://arxiv.org/html/2503.14478/x10.png)

> 🔼 This figure presents a qualitative comparison of responses generated by InternVL-2.5-78B and GPT-40-1120 for a creative multimodal understanding task within the Creation-MMBench benchmark.  It highlights the differences in the models' abilities to interpret visual information and formulate coherent, creative responses. The analysis focuses on aspects like the accuracy of visual description, the clarity and coherence of the explanation, and the overall engagement level of the response.  It showcases how GPT-40-1120 produces a superior response demonstrating a better grasp of the image's key elements and a more compelling narrative.  The detailed breakdown helps illustrate the strengths and weaknesses of each model in a complex creative task.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative study Case between InternVL-2.5-78B and Reference Answer (GPT4o-1120).
> </details>



![](https://arxiv.org/html/2503.14478/x11.png)

> 🔼 Creation-MMBench is a multimodal benchmark designed to evaluate the creative capabilities of Multimodal Large Language Models (MLLMs).  This figure provides a visual overview of the benchmark's structure. It shows the four main task categories within Creation-MMBench: Literary Writing, Common Functional Writing, Professional Functional Writing, and Creative Multimodal Understanding. Each category contains multiple individual tasks, illustrating the breadth of creative abilities assessed by the benchmark. The figure highlights the diversity of tasks within each category and the benchmark as a whole.
> <details>
> <summary>read the caption</summary>
> Figure 9: Overview of Creation-MMBench Complete Task. Contains four task categories, each category consists of multiple tasks.
> </details>



![](https://arxiv.org/html/2503.14478/x12.png)

> 🔼 The figure shows a bar chart illustrating the distribution of query lengths in the Creation-MMBench dataset.  The x-axis represents different ranges of query lengths (likely categorized into bins such as 0-50 words, 50-100 words, etc.), and the y-axis shows the relative frequency or proportion of queries falling into each length category.  This visualization helps to understand the complexity and length variation of the prompts used in the benchmark.
> <details>
> <summary>read the caption</summary>
> (a) Distribution of query lengths.
> </details>



![](https://arxiv.org/html/2503.14478/x13.png)

> 🔼 The figure shows the various roles that large language models (LLMs) are tasked to assume when responding to prompts in the Creation-MMBench benchmark.  The wide variety of roles highlights the diverse contexts and situations in which the LLMs need to generate creative text.  Examples of roles include:  'media head', 'customer', 'writer', 'guide', and many others that span numerous professional and non-professional fields.  The distribution of these roles aims to test the LLMs' ability to adapt their creative responses to different perspectives and situations.
> <details>
> <summary>read the caption</summary>
> (b) Roles in Creation-MMBench.
> </details>



![](https://arxiv.org/html/2503.14478/x14.png)

> 🔼 This figure displays the results of a redundancy analysis comparing Creation-MMBench with several other widely used Multimodal Large Language Model (MLLM) benchmarks.  The analysis measures the correlation between Creation-MMBench's evaluation scores and those of other benchmarks. The heatmaps visualize the Spearman's Rank Correlation Coefficient (SRCC) and the coefficient of determination (R-squared) for all benchmark pairs.  High correlations indicate redundancy, suggesting that those benchmarks assess similar aspects of MLLM capabilities. Low correlations indicate that Creation-MMBench measures unique aspects of MLLM performance not captured by the other benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 10: Redundancy Analysis of Creation-MMBench with other widely used MLLM Benchmarks.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/data_voter.png)

> 🔼 This histogram displays the distribution of reference answer lengths across different benchmarks, including Creation-MMBench, MM-Vet, MLLM-Bench, AlignMMBench, MEGABench_core, and MEGABench_open. The x-axis represents the length of the reference answers, categorized into bins (e.g., <50, 50-1500, 1500-3000, >3000 tokens), and the y-axis shows the proportion of reference answers falling into each bin. The bars in the histogram visually compare the distribution of reference answer lengths across the different benchmarks.
> <details>
> <summary>read the caption</summary>
> (a) Distribution of reference answers lengths.
> </details>



![](https://arxiv.org/html/2503.14478/x15.png)

> 🔼 The figure shows a word cloud summarizing the instructions given to large language models (LLMs) in the Creation-MMBench benchmark.  The words represent the various tasks or types of creative text generation that the LLMs are instructed to perform, reflecting the diverse range of creative tasks in the benchmark.  The size of each word roughly corresponds to its frequency of occurrence in the instructions, indicating the relative emphasis placed on certain types of creative writing tasks.
> <details>
> <summary>read the caption</summary>
> (b) Instructions in Creation-MMBench.
> </details>



![](https://arxiv.org/html/2503.14478/x16.png)

> 🔼 This figure shows the top 15 image categories used in Creation-MMBench, a multimodal benchmark designed to evaluate the creative capabilities of Multimodal Large Language Models (MLLMs).  The categories illustrate the diverse range of visual content included in the benchmark, encompassing various genres, such as animation, people, products, architecture, events, education, art, food and beverages, nature, science and technology, news, user interfaces, interior design, history and culture, and statistical data.  This diversity is a key feature of the benchmark, enabling a comprehensive assessment of MLLMs' ability to handle varied visual inputs and generate creative outputs.
> <details>
> <summary>read the caption</summary>
> (c) Top 15 Image Categories in Creation-MMBench.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/LW_story_continue.png)

> 🔼 This figure presents supplementary statistics for Creation-MMBench, comparing it against other widely used MLLM benchmarks.  Subfigure (a) shows the distribution of reference answer lengths, highlighting that Creation-MMBench features significantly longer answers than others. Subfigure (b) displays a word cloud of the instructions used in Creation-MMBench's tasks, demonstrating the diversity and complexity of the tasks. Finally, subfigure (c) illustrates the distribution of image categories present in the dataset, emphasizing the rich and diverse visual content.
> <details>
> <summary>read the caption</summary>
> Figure 11: Other Statistics of Creation-MMBench.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/LW_daily_conversation_creation.png)

> 🔼 This figure illustrates the process of human pairwise comparison used to evaluate the responses generated by different language models.  Specifically, it shows how two model responses are presented side-by-side to human evaluators, along with detailed criteria for comparison. Evaluators are asked to determine which response is superior, or if they are equal.  The process is designed to minimize bias by randomly changing the positions of the model responses.
> <details>
> <summary>read the caption</summary>
> Figure 12: The Process of Human Pairwise Comparison.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/LW_landscape_to_poem.png)

> 🔼 Figure 13 presents a qualitative comparison of two different large language models (LLMs), GPT-40-1120 and Qwen2.5-VL-72B, on a software engineering diagram explanation task.  The figure showcases how each model interprets a swimlane diagram.  Assistant A (GPT-40-1120) accurately identifies the type of diagram, clearly explains its purpose and stages in software development, and provides a comprehensive step-by-step explanation of the credit approval process shown.  In contrast, Assistant B (Qwen2.5-VL-72B) misidentifies the diagram type, leading to inaccuracies in its explanation. The evaluation highlights Assistant A's superior performance due to its correct diagram identification and more thorough explanation.
> <details>
> <summary>read the caption</summary>
> Figure 13: Qualitative Case in Professional Functional Writing. This case comes from Software Engineering Diagram Explanation Task, Assistant A is GPT-4o-1120, assistant B is Qwen2.5-VL-72B.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/LW_historical_story_creation.png)

> 🔼 This figure showcases a qualitative comparison of two different large language models (LLMs), GPT-40-1120 (Assistant A) and InternVL-2.5-78B (Assistant B), in performing a travel itinerary planning task.  The task required generating a 2-day travel plan for art and architecture enthusiasts in Barcelona, utilizing a provided map.  The figure highlights the differences in the quality and completeness of the travel plans generated by each model.  GPT-40-1120's plan is presented as superior in organization, detail, and adherence to the user's preferences. 
> <details>
> <summary>read the caption</summary>
> Figure 14: Qualitative Case in Creative Multimodal Understanding. This case comes from Travel Itinerary Planning and Recommendations Task, Assistant A is GPT-4o-1120, assistant B is InternVL2.5-78B.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/CFW_daily_achievement_show_off.png)

> 🔼 This figure shows an example from the Creation-MMBench dataset, specifically from the 'Story continue' task within the Literary Writing category.  It displays a series of images from a children's animation, along with the task prompt, requirements, and evaluation criteria. The task requires the model to continue the story based on the provided images. The evaluation criteria assess aspects like narrative coherence, vivid descriptions, character consistency, and the introduction of new challenges.
> <details>
> <summary>read the caption</summary>
> Figure 15: Example Case of Literary Writing, from Task story continue.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/CFW_social_media_travel_content.png)

> 🔼 This figure shows an example of a creative writing task from the Creation-MMBench benchmark.  The task is to generate a daily conversation between two people based on a given image. The figure displays the image used in the task, and excerpts from two model responses, demonstrating the diversity of outputs that can be achieved.  One response is marked as significantly better, illustrating the benchmark's ability to differentiate between various levels of creative writing quality. The criteria used to assess each response are also presented.
> <details>
> <summary>read the caption</summary>
> Figure 16: Example Case of Literary Writing, from Task daily conversation creation.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/CFW_daily_affairs_inquiries.png)

> 🔼 This figure shows an example of a literary writing task from the Creation-MMBench benchmark.  The task was 'landscape to poem.'  It displays the prompt given to the large language model (LLM), including instructions and evaluation criteria, along with two example responses (Assistant A and Assistant B) from different LLMs. The evaluation criteria included subjective aspects like coherence and the use of imagery, as well as objective aspects such as adherence to the sonnet form.  The image used in the prompt is also included, to show how the generated poems should reflect the visual aspects of the image. The goal of this example is to demonstrate the capability of Creation-MMBench to evaluate the creative writing abilities of LLMs in response to visual prompts.
> <details>
> <summary>read the caption</summary>
> Figure 17: Example Case of Literary Writing, from Task landscape to poem.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/CFW_personal_event_summaries.png)

> 🔼 This figure displays an example from the Creation-MMBench benchmark dataset, specifically showcasing a task that involves generating a historical narrative based on a provided image. The image in question shows a photograph from 1944 of the Central Epidemic Prevention Office in Xishan, Kunming, Yunnan Province. The task requires the model to create a story based on this image, incorporating relevant historical context and imagining the life experiences of the people depicted.  The criteria for evaluation include historical accuracy, emotional engagement, and narrative connection to the image itself.  The response should create a compelling story that is both historically grounded and emotionally resonant.
> <details>
> <summary>read the caption</summary>
> Figure 18: Example Case of Literary Writing, from Task historical story creation.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/PFW_teaching_plan.png)

> 🔼 This figure shows an example of a response from the Common Functional Writing task in Creation-MMBench. The specific task is to write a Facebook post about a daily achievement: receiving a certificate of achievement. The figure displays the images used as input to the model, the prompt given to the model, and the generated response (Facebook post).  The response includes a description of the event, the student's reflections on their achievement, and the significance of receiving the award.
> <details>
> <summary>read the caption</summary>
> Figure 19: Example Case of Common Functional Writing, from Task daily achievement show off.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/PFW_product_marketing_strategy.png)

> 🔼 Figure 20 shows an example from the Creation-MMBench dataset, specifically from the Common Functional Writing section. It presents a Reddit post written by an LLM in response to an image prompt depicting a trip to Krakow, Poland. The goal of this task is to assess the LLM's ability to generate engaging and informative social media content based on visual input.  The figure showcases the LLM's response, along with the evaluation criteria used to assess aspects like engagement, clarity, and factual accuracy related to the image.
> <details>
> <summary>read the caption</summary>
> Figure 20: Example Case of Common Functional Writing, from Task social media travel content.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/PFW_nutritional_formulation_of_recipe.png)

> 🔼 This figure shows an example from the Common Functional Writing section of the Creation-MMBench benchmark.  It specifically illustrates a task where the model is asked to compose a Reddit post seeking help with a technical problem. The image shows a screenshot of an iPhone with several apps frozen. The associated text provides detailed criteria for evaluating the generated Reddit post, including aspects like clarity, tone, and accuracy of problem description.  It highlights the multimodal nature of the Creation-MMBench by incorporating visual information into a creative writing task.
> <details>
> <summary>read the caption</summary>
> Figure 21: Example Case of Common Functional Writing, from Task daily affairs inquiries.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/PFW_clothing_match_design.png)

> 🔼 This figure shows an example from the Creation-MMBench dataset, specifically from the 'personal event summaries' task within the Common Functional Writing category. It displays the Reddit year-end report of a user, including their top categories (Psychology, Q&As, and Memes), a significant post, and engagement metrics. The task requires generating a blog post summarizing this report, explaining a user's question about placing an object on Mars, and encouraging interaction.
> <details>
> <summary>read the caption</summary>
> Figure 22: Example Case of Common Functional Writing, from Task personal event summaries.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/CMU_advertisement_explanation.png)

> 🔼 This figure shows an example of a professional functional writing task from the Creation-MMBench benchmark.  It displays a teaching plan created by an AI model for a biology lesson on prokaryotic cells. The plan includes teaching objectives, a breakdown of lesson sections with specific content, and an estimated time allocation for each section.  The plan also demonstrates consideration of differentiated instruction for different student levels using visual materials from the textbook. This example showcases the complexity and detailed evaluation criteria involved in assessing AI's ability to generate functional and coherent text suitable for real-world applications.
> <details>
> <summary>read the caption</summary>
> Figure 23: Example Case of Professional Functional Writing, from Task teaching plan.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/CMU_document_understanding.png)

> 🔼 Figure 24 shows an example from the Creation-MMBench benchmark's 'Professional Functional Writing' task, specifically the 'Product marketing strategy' subtask.  It presents a case where a model generates a marketing strategy and promotional copy for Estee Lauder skincare products targeting the Asia-Pacific market.  The figure highlights the model's response, the evaluation criteria (both general subjective and visual factuality criteria), and the visual input (images of Estee Lauder products).  It illustrates how the benchmark evaluates both the creativity and factual accuracy of MLLM responses in a professional context.
> <details>
> <summary>read the caption</summary>
> Figure 24: Example Case of Professional Functional Writing, from Task product marketing strategy.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/CMU_snapshot_analysis.png)

> 🔼 This figure shows an example from the Creation-MMBench dataset, specifically from the 'Professional Functional Writing' task category focusing on 'nutritional formulation of recipe'.  It presents the prompt given to the model, the model's response, evaluation criteria (both general subjective and visual factuality), and the scoring of the model's response.  The prompt requires the model to analyze a recipe (shown in an image), identify its advantages and disadvantages for a marathon runner, and suggest supplementary foods to optimize the diet. The evaluation criteria assess the completeness and accuracy of the analysis, the depth of nutritional insights provided, and the alignment of the response with the dish description and nutritional needs. This demonstrates the benchmark's ability to evaluate nuanced, practical creative tasks involving multimodal reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 25: Example Case of Professional Functional Writing, from Task nutritional formulation of recipe.
> </details>



![](https://arxiv.org/html/2503.14478/extracted/6287371/figures/category_case/CMU_travel_itinerary_planning_and_recommendations.png)

> 🔼 Figure 26 presents an example from the 'Professional Functional Writing' task category, specifically focusing on 'clothing match design'.  It showcases a response from a model to a prompt requesting a clothing outfit suitable for working from home while remaining presentable for video calls. The figure highlights the model's ability to propose a well-reasoned outfit considering both comfort and professionalism, along with detailed explanations justifying the choices made.
> <details>
> <summary>read the caption</summary>
> Figure 26: Example Case of Professional Functional Writing, from Task clothing match design.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.2.1">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.1.1.1" rowspan="2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.2.1" style="font-size:80%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.3.1" style="font-size:80%;">LW</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.4.1" style="font-size:80%;">CFW</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.5.1" style="font-size:80%;">PFW</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.6.1" style="font-size:80%;">CMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.1.7" rowspan="2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.7.1" style="font-size:80%;">OC Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.1.8" rowspan="2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.8.1" style="font-size:80%;">Avg Tokens</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.1.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.2.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.2.1" style="font-size:80%;">Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.3.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.2.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.4.1" style="font-size:80%;">Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.5.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.2.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.6.1" style="font-size:80%;">Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.7.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.2.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.8.1" style="font-size:80%;">Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.9.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.2.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.2.10.1" style="font-size:80%;">Reward</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S3.T2.2.1.3.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><em class="ltx_emph ltx_font_italic" id="S3.T2.2.1.3.1.1" style="font-size:80%;background-color:#F2F2F2;">Proprietary MLLMs</em></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.1.4.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.4.1.1" style="font-size:80%;">Gemini-2.0-pro-exp</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.4.2.1" style="font-size:80%;">8.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.3.1" style="font-size:80%;">4.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.1" style="font-size:80%;">8.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.5.1" style="font-size:80%;">-1.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.4.6.1" style="font-size:80%;">8.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.7.1" style="font-size:80%;">12.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.4.8.1" style="font-size:80%;">8.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.9.1" style="font-size:80%;">3.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.4.10.1" style="font-size:80%;">8.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.4.11.1" style="font-size:80%;">-8.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.4.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.12.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.4.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.13.1" style="font-size:80%;">718</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.5.1" style="padding-top:1.6pt;padding-bottom:1.6pt;">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.5.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.5.1.2" style="font-size:80%;">GPT-4o-1120[Baseline]</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.2.1" style="font-size:80%;">8.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.3.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.4.1" style="font-size:80%;">8.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.5.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.6.1" style="font-size:80%;">8.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.7.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.8.1" style="font-size:80%;">8.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.9.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.10.1" style="font-size:80%;">9.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.11.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.5.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.12.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.5.13.1" style="font-size:80%;">497</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.6.1" style="padding-top:1.6pt;padding-bottom:1.6pt;">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.6.1.1">\hdashline</span><span class="ltx_text" id="S3.T2.2.1.6.1.2" style="font-size:80%;">Gemini-1.5-pro-002</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.2.1" style="font-size:80%;">8.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.3.1" style="font-size:80%;">-5.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.6.4.1" style="font-size:80%;">8.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.5.1" style="font-size:80%;">-6.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.6.1" style="font-size:80%;">8.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.7.1" style="font-size:80%;">-2.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.6.8.1" style="font-size:80%;">8.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.9.1" style="font-size:80%;">-4.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.10.1" style="font-size:80%;">8.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.11.1" style="font-size:80%;">-17.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.6.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.12.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.6.13.1" style="font-size:80%;">444</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.7.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.1.1" style="font-size:80%;">GPT-4.5-0227</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.7.2.1" style="font-size:80%;">8.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.7.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.3.1" style="font-size:80%;">-5.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.4.1" style="font-size:80%;">8.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.7.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.5.1" style="font-size:80%;">-4.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.6.1" style="font-size:80%;">8.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.7.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.7.1" style="font-size:80%;">-8.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.7.8.1" style="font-size:80%;">8.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.7.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.9.1" style="font-size:80%;">-5.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.7.10.1" style="font-size:80%;">9.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.7.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.7.11.1" style="font-size:80%;">-0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.7.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.12.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.7.13.1" style="font-size:80%;">394</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.8.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.2.1" style="font-size:80%;">8.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.8.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.3.1" style="font-size:80%;">-13.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.4.1" style="font-size:80%;">8.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.8.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.5.1" style="font-size:80%;">-4.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.6.1" style="font-size:80%;">8.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.8.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.7.1" style="font-size:80%;">-15.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.8.1" style="font-size:80%;">7.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.8.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.9.1" style="font-size:80%;">-16.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.10.1" style="font-size:80%;">8.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.8.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.11.1" style="font-size:80%;">-12.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.8.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.12.1" style="font-size:80%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.8.13.1" style="font-size:80%;">436</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.9.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.1.1" style="font-size:80%;">Doubao-VL</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.2.1" style="font-size:80%;">8.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.3.1" style="font-size:80%;">-14.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.4.1" style="font-size:80%;">8.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.5.1" style="font-size:80%;">-19.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.9.6.1" style="font-size:80%;">9.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.7.1" style="font-size:80%;">-3.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.8.1" style="font-size:80%;">7.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.9.1" style="font-size:80%;">-18.72</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.10.1" style="font-size:80%;">8.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.11.1" style="font-size:80%;">-25.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.9.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.12.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.9.13.1" style="font-size:80%;">516</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.10.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.1.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.2.1" style="font-size:80%;">7.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.3.1" style="font-size:80%;">-15.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.4.1" style="font-size:80%;">8.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.5.1" style="font-size:80%;">-16.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.6.1" style="font-size:80%;">7.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.7.1" style="font-size:80%;">-21.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.8.1" style="font-size:80%;">7.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.9.1" style="font-size:80%;">-11.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.10.1" style="font-size:80%;">8.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.11.1" style="font-size:80%;">-9.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.10.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.12.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.10.13.1" style="font-size:80%;">336</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.11.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.1.1" style="font-size:80%;">Moonshot-v1-32k-vision</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.2.1" style="font-size:80%;">7.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.3.1" style="font-size:80%;">-20.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.4.1" style="font-size:80%;">7.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.5.1" style="font-size:80%;">-21.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.6.1" style="font-size:80%;">8.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.7.1" style="font-size:80%;">-8.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.8.1" style="font-size:80%;">6.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.9.1" style="font-size:80%;">-26.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.10.1" style="font-size:80%;">6.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.11.1" style="font-size:80%;">-36.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.11.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.12.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.11.13.1" style="font-size:80%;">485</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.12" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S3.T2.2.1.12.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><em class="ltx_emph ltx_font_italic" id="S3.T2.2.1.12.1.1" style="font-size:80%;background-color:#F2F2F2;">Open-Source MLLMs</em></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.1.13.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.13.1.1" style="font-size:80%;">Qwen2.5-VL-72B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.13.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.2.1" style="font-size:80%;">8.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.13.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.3.1" style="font-size:80%;">-5.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.13.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.13.4.1" style="font-size:80%;">8.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.13.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.13.5.1" style="font-size:80%;">-10.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.13.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.6.1" style="font-size:80%;">8.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.13.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.7.1" style="font-size:80%;">4.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.13.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.8.1" style="font-size:80%;">7.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.13.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.9.1" style="font-size:80%;">-11.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.13.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.10.1" style="font-size:80%;">8.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.13.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.11.1" style="font-size:80%;">-11.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.1.13.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.13.12.1" style="font-size:80%;">76.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.13.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.13.1" style="font-size:80%;">553</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.14.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.1.1" style="font-size:80%;">InternVL2.5-78B-MPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.2.1" style="font-size:80%;">8.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.3.1" style="font-size:80%;">-12.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.14.4.1" style="font-size:80%;">8.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.14.5.1" style="font-size:80%;">-9.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.6.1" style="font-size:80%;">8.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.7.1" style="font-size:80%;">-5.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.8.1" style="font-size:80%;">7.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.9.1" style="font-size:80%;">-16.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.10.1" style="font-size:80%;">8.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.11.1" style="font-size:80%;">-27.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.14.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.14.12.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.14.13.1" style="font-size:80%;">461</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.15.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.1.1" style="font-size:80%;">InternVL2.5-8B-MPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.2.1" style="font-size:80%;">7.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.3.1" style="font-size:80%;">-15.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.4.1" style="font-size:80%;">8.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.5.1" style="font-size:80%;">-16.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.6.1" style="font-size:80%;">8.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.7.1" style="font-size:80%;">-3.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.8.1" style="font-size:80%;">6.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.9.1" style="font-size:80%;">-23.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.10.1" style="font-size:80%;">7.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.11.1" style="font-size:80%;">-19.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.15.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.12.1" style="font-size:80%;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.15.13.1" style="font-size:80%;">548</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.16.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.1.1" style="font-size:80%;">InternVL2.5-78B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.2.1" style="font-size:80%;">7.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.3.1" style="font-size:80%;">-16.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.4.1" style="font-size:80%;">8.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.5.1" style="font-size:80%;">-17.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.6.1" style="font-size:80%;">8.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.7.1" style="font-size:80%;">-7.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.8.1" style="font-size:80%;">7.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.9.1" style="font-size:80%;">-20.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.10.1" style="font-size:80%;">8.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.11.1" style="font-size:80%;">-28.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.16.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.12.1" style="font-size:80%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.16.13.1" style="font-size:80%;">473</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.17.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.1.1" style="font-size:80%;">Qwen2-VL-72B-instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.2.1" style="font-size:80%;">7.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.17.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.3.1" style="font-size:80%;">-22.45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.4.1" style="font-size:80%;">7.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.17.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.5.1" style="font-size:80%;">-24.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.6.1" style="font-size:80%;">8.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.17.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.7.1" style="font-size:80%;">-15.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.8.1" style="font-size:80%;">7.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.17.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.9.1" style="font-size:80%;">-26.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.10.1" style="font-size:80%;">8.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.17.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.11.1" style="font-size:80%;">-26.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.17.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.12.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.17.13.1" style="font-size:80%;">439</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.18.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.1.1" style="font-size:80%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.18.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.2.1" style="font-size:80%;">7.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.18.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.3.1" style="font-size:80%;">-25.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.18.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.4.1" style="font-size:80%;">7.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.18.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.5.1" style="font-size:80%;">-23.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.18.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.6.1" style="font-size:80%;">7.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.18.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.7.1" style="font-size:80%;">-15.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.18.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.8.1" style="font-size:80%;">6.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.18.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.9.1" style="font-size:80%;">-33.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.18.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.10.1" style="font-size:80%;">7.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.18.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.11.1" style="font-size:80%;">-30.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.18.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.12.1" style="font-size:80%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.18.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.18.13.1" style="font-size:80%;">500</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.19.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.1.1" style="font-size:80%;">Qwen2.5-VL-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.19.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.2.1" style="font-size:80%;">7.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.19.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.3.1" style="font-size:80%;">-29.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.19.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.4.1" style="font-size:80%;">7.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.19.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.5.1" style="font-size:80%;">-39.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.19.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.6.1" style="font-size:80%;">8.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.19.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.7.1" style="font-size:80%;">-21.67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.19.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.8.1" style="font-size:80%;">6.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.19.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.9.1" style="font-size:80%;">-33.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.19.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.10.1" style="font-size:80%;">7.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.19.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.11.1" style="font-size:80%;">-30.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.19.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.12.1" style="font-size:80%;">70.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.19.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.19.13.1" style="font-size:80%;">510</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.20.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.20.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.2.1" style="font-size:80%;">7.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.20.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.3.1" style="font-size:80%;">-34.77</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.20.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.4.1" style="font-size:80%;">7.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.20.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.5.1" style="font-size:80%;">-35.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.20.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.6.1" style="font-size:80%;">7.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.20.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.7.1" style="font-size:80%;">-27.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.20.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.8.1" style="font-size:80%;">6.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.20.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.9.1" style="font-size:80%;">-40.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.20.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.10.1" style="font-size:80%;">8.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.20.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.11.1" style="font-size:80%;">-36.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.20.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.12.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.20.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.20.13.1" style="font-size:80%;">389</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.21.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.1.1" style="font-size:80%;">DeepSeek-VL2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.21.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.2.1" style="font-size:80%;">7.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.21.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.3.1" style="font-size:80%;">-38.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.21.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.4.1" style="font-size:80%;">7.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.21.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.5.1" style="font-size:80%;">-33.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.21.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.6.1" style="font-size:80%;">7.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.21.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.7.1" style="font-size:80%;">-32.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.21.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.8.1" style="font-size:80%;">6.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.21.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.9.1" style="font-size:80%;">-44.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.21.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.10.1" style="font-size:80%;">7.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.21.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.11.1" style="font-size:80%;">-45.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.21.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.12.1" style="font-size:80%;">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.21.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.21.13.1" style="font-size:80%;">440</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.22.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.1.1" style="font-size:80%;">LLaVA-OneVision-72B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.22.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.2.1" style="font-size:80%;">7.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.22.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.3.1" style="font-size:80%;">-39.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.22.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.4.1" style="font-size:80%;">7.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.22.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.5.1" style="font-size:80%;">-36.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.22.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.6.1" style="font-size:80%;">7.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.22.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.7.1" style="font-size:80%;">-30.61</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.22.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.8.1" style="font-size:80%;">6.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.22.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.9.1" style="font-size:80%;">-47.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.22.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.10.1" style="font-size:80%;">7.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.22.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.11.1" style="font-size:80%;">-46.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.22.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.12.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.22.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.22.13.1" style="font-size:80%;">315</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.23.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.1.1" style="font-size:80%;">LLaVA-OneVision-7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.23.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.2.1" style="font-size:80%;">6.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.23.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.3.1" style="font-size:80%;">-43.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.23.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.4.1" style="font-size:80%;">7.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.23.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.5.1" style="font-size:80%;">-43.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.23.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.6.1" style="font-size:80%;">7.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.23.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.7.1" style="font-size:80%;">-31.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.23.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.8.1" style="font-size:80%;">6.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.23.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.9.1" style="font-size:80%;">-50.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.23.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.10.1" style="font-size:80%;">6.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.23.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.11.1" style="font-size:80%;">-56.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.1.23.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.12.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.23.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.23.13.1" style="font-size:80%;">373</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.24">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S3.T2.2.1.24.1" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.1.1" style="font-size:80%;">Qwen2-VL-7B-instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.24.2" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.2.1" style="font-size:80%;">7.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.24.3" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.3.1" style="font-size:80%;">-43.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.24.4" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.4.1" style="font-size:80%;">6.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.24.5" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.5.1" style="font-size:80%;">-55.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.24.6" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.6.1" style="font-size:80%;">7.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.24.7" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.7.1" style="font-size:80%;">-36.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.24.8" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.8.1" style="font-size:80%;">6.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.24.9" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.9.1" style="font-size:80%;">-45.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.24.10" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.10.1" style="font-size:80%;">7.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.24.11" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.11.1" style="font-size:80%;">-45.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.2.1.24.12" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.12.1" style="font-size:80%;">67.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.2.1.24.13" style="padding-top:1.6pt;padding-bottom:1.6pt;"><span class="ltx_text" id="S3.T2.2.1.24.13.1" style="font-size:80%;">456</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various Multimodal Large Language Models (MLLMs) on the Creation-MMBench benchmark.  It shows the overall performance, broken down by four task categories: Literary Writing (LW), Common Functional Writing (CFW), Professional Functional Writing (PFW), and Creative Multimodal Understanding (CMU).  Key metrics include the Visual Factuality Score (VFS), which measures the accuracy of the model's responses in relation to the provided visual input, and a Reward score, reflecting the overall quality of the model's creative output.  The table also includes the average score from the OpenVLM Leaderboard (OC Score), which provides a measure of the model's objective performance, as well as the average number of tokens generated by each model.  The token count is calculated using the tiktoken GPT-4o-1120 tokenizer.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation Result of MLLMs on Creation-MMBench. VFS stands for Visual Factuality Score. LW, CFW, PFW, and CMU stand for four categories in Creation-MMBench: Literary Writing, Common Functional Writing, Professional Functional Writing, and Creative Multimodal Understanding. OC Score represents the average score of the OpenVLM Leaderboard and mainly demonstrates the objective performance of the model. The token number is calculated with tiktoken GPT-4o-1120 tokenizer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.2.1">
<tr class="ltx_tr" id="S4.T3.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.2.1.1.1" rowspan="2" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.1" style="font-size:80%;">VLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.2.1.1.2" rowspan="2" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.2.1" style="font-size:80%;">Corresponding LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T3.2.1.1.3" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.3.1" style="font-size:80%;">Text Input w. LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T3.2.1.1.4" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.4.1" style="font-size:80%;">Text Input w. VLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.2.1.1.5" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.5.1" style="font-size:80%;">Vision+Text Input w. VLM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.1" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.2.1.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.2.2" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.2.2.1" style="font-size:80%;">Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.3" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.2.3.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.2.4" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.2.4.1" style="font-size:80%;">Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.5" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.2.5.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.6" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.2.6.1" style="font-size:80%;">Reward</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.2.1.3.1" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.3.1.1" style="font-size:80%;">GPT-4o-1120</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.2.1.3.2" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.3.2.1" style="font-size:80%;">GPT-4o-1120</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.3" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.3.1" style="font-size:80%;">8.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.3.4" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.4.1" style="font-size:80%;">6.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.5" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.5.1" style="font-size:80%;">8.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.3.6" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.6.1" style="font-size:80%;">6.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.7" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.7.1" style="font-size:80%;">8.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.8" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.3.8.1" style="font-size:80%;">0.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.1.4.1" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.4.1.1" style="font-size:80%;">Gemini-2.0-pro-exp</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.1.4.2" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.4.2.1" style="font-size:80%;">Gemini-2.0-pro-exp</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.3" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.4.3.1" style="font-size:80%;">8.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.4.4" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.4.4.1" style="font-size:80%;">4.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.5" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.4.5.1" style="font-size:80%;">8.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.4.6" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.4.6.1" style="font-size:80%;">4.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.7" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.4.7.1" style="font-size:80%;">8.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.8" style="padding:0.4pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.4.8.1" style="font-size:80%;">4.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.1.5.1" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.5.1.1" style="font-size:80%;">Qwen2.5-VL-72B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.1.5.2" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.5.2.1" style="font-size:80%;">Qwen2.5-72B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.5.3.1" style="font-size:80%;">8.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.5.4" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.5.4.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.5" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.5.5.1" style="font-size:80%;">8.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.5.6" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.5.6.1" style="font-size:80%;">-4.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.7" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.5.7.1" style="font-size:80%;">8.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.8" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.5.8.1" style="font-size:80%;">-5.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.1.6.1" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.6.1.1" style="font-size:80%;">Qwen2.5-VL-7B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.1.6.2" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.6.2.1" style="font-size:80%;">Qwen2.5-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.3" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.6.3.1" style="font-size:80%;">8.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.6.4" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.6.4.1" style="font-size:80%;">-19.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.5" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.6.5.1" style="font-size:80%;">7.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.6.6" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.6.6.1" style="font-size:80%;">-27.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.7" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.6.7.1" style="font-size:80%;">7.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.8" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.6.8.1" style="font-size:80%;">-29.80</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.1.7.1" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.7.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.1.7.2" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.7.2.1" style="font-size:80%;">Qwen2.5-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.3" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.7.3.1" style="font-size:80%;">8.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.7.4" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.7.4.1" style="font-size:80%;">-19.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.5" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.7.5.1" style="font-size:80%;">7.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.7.6" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.7.6.1" style="font-size:80%;">-36.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.7" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.7.7.1" style="font-size:80%;">7.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.8" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.7.8.1" style="font-size:80%;">-34.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T3.2.1.8.1" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.8.1.1" style="font-size:80%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T3.2.1.8.2" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.8.2.1" style="font-size:80%;">InternLM2.5-7B-Chat</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.2.1.8.3" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.8.3.1" style="font-size:80%;">7.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.2.1.8.4" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.8.4.1" style="font-size:80%;">-22.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.2.1.8.5" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.8.5.1" style="font-size:80%;">7.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.2.1.8.6" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.8.6.1" style="font-size:80%;">-28.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.2.1.8.7" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.8.7.1" style="font-size:80%;">7.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.2.1.8.8" style="padding:0.4pt 8.0pt;"><span class="ltx_text" id="S4.T3.2.1.8.8.1" style="font-size:80%;">-25.42</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the performance comparison between LLMs and VLMs on the Creation-MMBench-TO benchmark.  Creation-MMBench-TO is a text-only variant of the Creation-MMBench benchmark, where image inputs are replaced with textual descriptions. The table shows the performance of several LLMs and VLMs in terms of visual factuality scores (VFS) and reward scores.  GPT-4 was used to generate general image descriptions for all models. For proprietary models, their own text-based versions were used for a fairer comparison of performance when incorporating visual information. The results highlight how visual instruction tuning can impact the creative capabilities of VLMs.
> <details>
> <summary>read the caption</summary>
> Table 3: LLM performance on Creation-MMBench-TO and Visual Instruction Tuning Impact on VLM creation capability. The image descriptions provided by GPT-4o are general. For the proprietary models, we point to themselves as corresponding LLM and report the performance with image descriptions and questions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.4.4">
<tr class="ltx_tr" id="S4.T4.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.5.1" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.5.1.1" style="font-size:80%;">Judger</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.5.2" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.5.2.1" style="font-size:80%;">MLLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S4.T4.4.4.5.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.5.3.1" style="font-size:80%;">Dual Eval</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S4.T4.4.4.5.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.5.4.1" style="font-size:80%;">Single Eval</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T4.1.1.1.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1" style="font-size:80%;">MAE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T4.2.2.2.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.1" style="font-size:80%;">Cons.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T4.3.3.3.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.1" style="font-size:80%;">MAE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.1.m1.1b"><ci id="S4.T4.3.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T4.4.4.4.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.4.1" style="font-size:80%;">Cons.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.1.m1.1b"><ci id="S4.T4.4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.1" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.1.1" style="font-size:80%;">Gemini-2P</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.1" style="font-size:80%;">Gemini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.3.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.4" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.4.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.5.1" style="font-size:80%;">82.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.6" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.6.1" style="font-size:80%;">86.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.7.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.8" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.8.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.6.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.9.1" style="font-size:80%;">74.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.6.10" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.10.1" style="font-size:80%;">78.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.7.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.7.1.1" style="font-size:80%;">Qwen</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.7.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.7.2.1" style="font-size:80%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.7.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.1" style="font-size:80%;">91.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.7.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.7.4.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.7.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.7.5.1" style="font-size:80%;">80.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.8.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.8.1.1" style="font-size:80%;">MiniCPM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.8.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.8.2.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.8.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.8.3.1" style="font-size:80%;">86.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.8.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.8.4.1" style="font-size:80%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.8.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.8.5.1" style="font-size:80%;">81.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.1" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.1.1" style="font-size:80%;">Claude-3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.2.1" style="font-size:80%;">Gemini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.3.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.4" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.4.1" style="font-size:80%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.5.1" style="font-size:80%;">89.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.6" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.6.1" style="font-size:80%;">90.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.7.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.8" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.8.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.9.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.9.1" style="font-size:80%;">83.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.9.10" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.9.10.1" style="font-size:80%;">85.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.10.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.10.1.1" style="font-size:80%;">Qwen</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.10.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.10.2.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.10.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.10.3.1" style="font-size:80%;">92.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.10.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.10.4.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.10.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.10.5.1" style="font-size:80%;">85.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.11.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.11.1.1" style="font-size:80%;">MiniCPM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.11.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.11.2.1" style="font-size:80%;">0.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.11.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.11.3.1" style="font-size:80%;">89.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.11.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.11.4.1" style="font-size:80%;">0.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.11.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.11.5.1" style="font-size:80%;">86.87</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.12">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.4.4.12.1" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.12.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.12.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.12.2.1" style="font-size:80%;">Gemini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.12.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.12.3.1" style="font-size:80%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.4.4.12.4" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.12.4.1" style="font-size:80%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.12.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.12.5.1" style="font-size:80%;">92.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.4.4.12.6" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.12.6.1" style="font-size:80%;">92.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.12.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.12.7.1" style="font-size:80%;">0.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.4.4.12.8" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.12.8.1" style="font-size:80%;">0.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.12.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.12.9.1" style="font-size:80%;">89.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T4.4.4.12.10" rowspan="3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.12.10.1" style="font-size:80%;">88.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.13.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.13.1.1" style="font-size:80%;">Qwen</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.13.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.13.2.1" style="font-size:80%;">0.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.13.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.13.3.1" style="font-size:80%;">96.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.13.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.13.4.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.13.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.13.5.1" style="font-size:80%;">91.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.14">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.14.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.14.1.1" style="font-size:80%;">MiniCPM</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.14.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.14.2.1" style="font-size:80%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.14.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.14.3.1" style="font-size:80%;">88.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.14.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.14.4.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.14.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T4.4.4.14.5.1" style="font-size:80%;">86.27</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different evaluation strategies for assessing the creative capabilities of large language models (LLMs).  It examines the alignment between evaluation methods (using different LLMs as judges) and human preferences.  The table quantifies the alignment using Mean Absolute Error (MAE) and Consistency, which measures how closely automated evaluations match human judgments of creative quality.  The results provide insights into the effectiveness and reliability of different approaches for evaluating LLM creativity.
> <details>
> <summary>read the caption</summary>
> Table 4: The Alignment Between Different Evaluation Strategies and Human Preference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="Sx3.T5.19.19">
<tr class="ltx_tr" id="Sx3.T5.19.19.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx3.T5.19.19.20.1" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.2.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.3.1" style="font-size:80%;">Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.4.1" style="font-size:80%;">WR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.5.1" style="font-size:80%;">MB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.6.1" style="font-size:80%;">Better</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.7.1" style="font-size:80%;">Tie</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.8.1" style="font-size:80%;">Worse</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.9.1" style="font-size:80%;">MW</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.19.19.20.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.20.10.1" style="font-size:80%;">Fail</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.19.19.21" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="Sx3.T5.19.19.21.1" style="padding:0.8pt 4.0pt;"><em class="ltx_emph ltx_font_italic" id="Sx3.T5.19.19.21.1.1" style="font-size:80%;background-color:#F2F2F2;">Proprietary MLLMs</em></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx3.T5.1.1.1.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.2.1" style="font-size:80%;">Gemini-2.0-pro-exp</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.3.1" style="font-size:80%;">8.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.4.1" style="font-size:80%;">4.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.1.1.1.1.1" style="font-size:80%;">26.75</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.1.1.1.1.m1.1"><semantics id="Sx3.T5.1.1.1.1.m1.1a"><mo id="Sx3.T5.1.1.1.1.m1.1.1" mathsize="80%" xref="Sx3.T5.1.1.1.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.1.1.1.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.1.1.1.1.m1.1.1.cmml" xref="Sx3.T5.1.1.1.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.1.1.1.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.1.1.1.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.5.1" style="font-size:80%;">9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.6.1" style="font-size:80%;">400</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.7.1" style="font-size:80%;">898</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.8.1" style="font-size:80%;">163</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.9.1" style="font-size:80%;">59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.1.1.1.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.1.1.1.10.1" style="font-size:80%;">1</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.19.19.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.19.19.22.1" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx3.T5.19.19.22.1.1" style="font-size:80%;">GPT-4o-1120</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.2.1" style="font-size:80%;">8.72</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.3.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.19.19.22.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.22.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.2.2.2.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.3.1" style="font-size:80%;">8.41</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.4.1" style="font-size:80%;">-5.49</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.2.2.2.1.1" style="font-size:80%;">11.37</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.2.2.2.1.m1.1"><semantics id="Sx3.T5.2.2.2.1.m1.1a"><mo id="Sx3.T5.2.2.2.1.m1.1.1" mathsize="80%" xref="Sx3.T5.2.2.2.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.2.2.2.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.2.2.2.1.m1.1.1.cmml" xref="Sx3.T5.2.2.2.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.2.2.2.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.2.2.2.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.5.1" style="font-size:80%;">6</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.6.1" style="font-size:80%;">168</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.7.1" style="font-size:80%;">1032</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.8.1" style="font-size:80%;">300</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.9.1" style="font-size:80%;">24</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.2.2.2.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.2.2.2.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.3.3.3.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.2.1" style="font-size:80%;">GPT-4.5-0227</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.3.1" style="font-size:80%;">8.54</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.4.1" style="font-size:80%;">-5.88</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.3.3.3.1.1" style="font-size:80%;">5.36</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.3.3.3.1.m1.1"><semantics id="Sx3.T5.3.3.3.1.m1.1a"><mo id="Sx3.T5.3.3.3.1.m1.1.1" mathsize="80%" xref="Sx3.T5.3.3.3.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.3.3.3.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.3.3.3.1.m1.1.1.cmml" xref="Sx3.T5.3.3.3.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.3.3.3.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.3.3.3.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.5.1" style="font-size:80%;">7</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.6.1" style="font-size:80%;">75</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.7.1" style="font-size:80%;">1186</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.8.1" style="font-size:80%;">255</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.9.1" style="font-size:80%;">7</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.3.3.3.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.3.3.3.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.4.4.4.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.2.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.3.1" style="font-size:80%;">8.07</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.4.1" style="font-size:80%;">-13.56</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.4.4.4.1.1" style="font-size:80%;">3.79</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.4.4.4.1.m1.1"><semantics id="Sx3.T5.4.4.4.1.m1.1a"><mo id="Sx3.T5.4.4.4.1.m1.1.1" mathsize="80%" xref="Sx3.T5.4.4.4.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.4.4.4.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.4.4.4.1.m1.1.1.cmml" xref="Sx3.T5.4.4.4.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.4.4.4.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.4.4.4.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.5.1" style="font-size:80%;">5</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.6.1" style="font-size:80%;">53</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.7.1" style="font-size:80%;">1022</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.8.1" style="font-size:80%;">422</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.9.1" style="font-size:80%;">28</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.4.4.4.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.4.4.4.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.5.5.5.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.2.1" style="font-size:80%;">Doubao-VL</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.3.1" style="font-size:80%;">8.38</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.4.1" style="font-size:80%;">-14.09</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.5.5.5.1.1" style="font-size:80%;">9.22</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.5.5.5.1.m1.1"><semantics id="Sx3.T5.5.5.5.1.m1.1a"><mo id="Sx3.T5.5.5.5.1.m1.1.1" mathsize="80%" xref="Sx3.T5.5.5.5.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.5.5.5.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.5.5.5.1.m1.1.1.cmml" xref="Sx3.T5.5.5.5.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.5.5.5.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.5.5.5.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.6.1" style="font-size:80%;">137</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.7.1" style="font-size:80%;">850</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.8.1" style="font-size:80%;">500</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.9.1" style="font-size:80%;">38</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.5.5.5.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.5.5.5.10.1" style="font-size:80%;">1</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.6.6.6.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.2.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.3.1" style="font-size:80%;">7.96</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.4.1" style="font-size:80%;">-15.46</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.6.6.6.1.1" style="font-size:80%;">12.55</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.6.6.6.1.m1.1"><semantics id="Sx3.T5.6.6.6.1.m1.1a"><mo id="Sx3.T5.6.6.6.1.m1.1.1" mathsize="80%" xref="Sx3.T5.6.6.6.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.6.6.6.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.6.6.6.1.m1.1.1.cmml" xref="Sx3.T5.6.6.6.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.6.6.6.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.6.6.6.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.6.1" style="font-size:80%;">188</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.7.1" style="font-size:80%;">843</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.8.1" style="font-size:80%;">321</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.9.1" style="font-size:80%;">174</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.6.6.6.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.6.6.6.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.7.7.7.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.2.1" style="font-size:80%;">Moonshot-v1-32k-vision</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.3.1" style="font-size:80%;">7.43</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.4.1" style="font-size:80%;">-20.58</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.7.7.7.1.1" style="font-size:80%;">6.09</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.7.7.7.1.m1.1"><semantics id="Sx3.T5.7.7.7.1.m1.1a"><mo id="Sx3.T5.7.7.7.1.m1.1.1" mathsize="80%" xref="Sx3.T5.7.7.7.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.7.7.7.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.7.7.7.1.m1.1.1.cmml" xref="Sx3.T5.7.7.7.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.7.7.7.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.7.7.7.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.5.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.6.1" style="font-size:80%;">92</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.7.1" style="font-size:80%;">822</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.8.1" style="font-size:80%;">500</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.9.1" style="font-size:80%;">111</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.7.7.7.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.7.7.7.10.1" style="font-size:80%;">4</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.19.19.23" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="Sx3.T5.19.19.23.1" style="padding:0.8pt 4.0pt;"><em class="ltx_emph ltx_font_italic" id="Sx3.T5.19.19.23.1.1" style="font-size:80%;background-color:#F2F2F2;">Open-Source MLLMs</em></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx3.T5.8.8.8.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.2.1" style="font-size:80%;">Qwen2.5-VL-72B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.3.1" style="font-size:80%;">8.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.4.1" style="font-size:80%;">-5.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.8.8.8.1.1" style="font-size:80%;">13.2</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.8.8.8.1.m1.1"><semantics id="Sx3.T5.8.8.8.1.m1.1a"><mo id="Sx3.T5.8.8.8.1.m1.1.1" mathsize="80%" xref="Sx3.T5.8.8.8.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.8.8.8.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.8.8.8.1.m1.1.1.cmml" xref="Sx3.T5.8.8.8.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.8.8.8.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.8.8.8.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.5.1" style="font-size:80%;">6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.6.1" style="font-size:80%;">196</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.7.1" style="font-size:80%;">984</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.8.1" style="font-size:80%;">302</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.9.1" style="font-size:80%;">42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx3.T5.8.8.8.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.8.8.8.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.9.9.9.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.2.1" style="font-size:80%;">InternVL2.5-78B-MPO</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.3.1" style="font-size:80%;">8.06</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.4.1" style="font-size:80%;">-12.55</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.9.9.9.1.1" style="font-size:80%;">8.76</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.9.9.9.1.m1.1"><semantics id="Sx3.T5.9.9.9.1.m1.1a"><mo id="Sx3.T5.9.9.9.1.m1.1.1" mathsize="80%" xref="Sx3.T5.9.9.9.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.9.9.9.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.9.9.9.1.m1.1.1.cmml" xref="Sx3.T5.9.9.9.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.9.9.9.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.9.9.9.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.5.1" style="font-size:80%;">6</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.6.1" style="font-size:80%;">128</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.7.1" style="font-size:80%;">917</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.8.1" style="font-size:80%;">434</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.9.1" style="font-size:80%;">45</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.9.9.9.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.9.9.9.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.10.10.10.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.2.1" style="font-size:80%;">InternVL2.5-8B-MPO</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.3.1" style="font-size:80%;">7.65</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.4.1" style="font-size:80%;">-15.10</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.10.10.10.1.1" style="font-size:80%;">10.33</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.10.10.10.1.m1.1"><semantics id="Sx3.T5.10.10.10.1.m1.1a"><mo id="Sx3.T5.10.10.10.1.m1.1.1" mathsize="80%" xref="Sx3.T5.10.10.10.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.10.10.10.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.10.10.10.1.m1.1.1.cmml" xref="Sx3.T5.10.10.10.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.10.10.10.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.10.10.10.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.5.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.6.1" style="font-size:80%;">158</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.7.1" style="font-size:80%;">843</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.8.1" style="font-size:80%;">438</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.9.1" style="font-size:80%;">91</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.10.10.10.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.10.10.10.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.11.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.11.11.11.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.2.1" style="font-size:80%;">InternVL2.5-78B</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.3.1" style="font-size:80%;">7.91</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.4.1" style="font-size:80%;">-16.43</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.11.11.11.1.1" style="font-size:80%;">7.25</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.11.11.11.1.m1.1"><semantics id="Sx3.T5.11.11.11.1.m1.1a"><mo id="Sx3.T5.11.11.11.1.m1.1.1" mathsize="80%" xref="Sx3.T5.11.11.11.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.11.11.11.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.11.11.11.1.m1.1.1.cmml" xref="Sx3.T5.11.11.11.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.11.11.11.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.11.11.11.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.5.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.6.1" style="font-size:80%;">107</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.7.1" style="font-size:80%;">863</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.8.1" style="font-size:80%;">494</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.9.1" style="font-size:80%;">62</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.11.11.11.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.11.11.11.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.12.12.12.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.2.1" style="font-size:80%;">Qwen2-VL-72B-instruct</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.3.1" style="font-size:80%;">7.87</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.4.1" style="font-size:80%;">-22.45</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.12.12.12.1.1" style="font-size:80%;">4.64</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.12.12.12.1.m1.1"><semantics id="Sx3.T5.12.12.12.1.m1.1a"><mo id="Sx3.T5.12.12.12.1.m1.1.1" mathsize="80%" xref="Sx3.T5.12.12.12.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.12.12.12.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.12.12.12.1.m1.1.1.cmml" xref="Sx3.T5.12.12.12.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.12.12.12.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.12.12.12.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.5.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.6.1" style="font-size:80%;">71</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.7.1" style="font-size:80%;">764</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.8.1" style="font-size:80%;">632</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.9.1" style="font-size:80%;">63</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.12.12.12.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.12.12.12.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.13.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.13.13.13.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.2.1" style="font-size:80%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.3.1" style="font-size:80%;">7.38</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.4.1" style="font-size:80%;">-25.42</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.13.13.13.1.1" style="font-size:80%;">5.62</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.13.13.13.1.m1.1"><semantics id="Sx3.T5.13.13.13.1.m1.1a"><mo id="Sx3.T5.13.13.13.1.m1.1.1" mathsize="80%" xref="Sx3.T5.13.13.13.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.13.13.13.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.13.13.13.1.m1.1.1.cmml" xref="Sx3.T5.13.13.13.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.13.13.13.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.13.13.13.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.5.1" style="font-size:80%;">2</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.6.1" style="font-size:80%;">84</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.7.1" style="font-size:80%;">699</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.8.1" style="font-size:80%;">624</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.9.1" style="font-size:80%;">121</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.13.13.13.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.13.13.13.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.14.14.14.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.2.1" style="font-size:80%;">Qwen2.5-VL-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.3.1" style="font-size:80%;">7.55</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.4.1" style="font-size:80%;">-29.80</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.14.14.14.1.1" style="font-size:80%;">4.25</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.14.14.14.1.m1.1"><semantics id="Sx3.T5.14.14.14.1.m1.1a"><mo id="Sx3.T5.14.14.14.1.m1.1.1" mathsize="80%" xref="Sx3.T5.14.14.14.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.14.14.14.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.14.14.14.1.m1.1.1.cmml" xref="Sx3.T5.14.14.14.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.14.14.14.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.14.14.14.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.5.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.6.1" style="font-size:80%;">65</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.7.1" style="font-size:80%;">620</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.8.1" style="font-size:80%;">713</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.9.1" style="font-size:80%;">132</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.14.14.14.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.14.14.14.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.15.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.15.15.15.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.2.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.3.1" style="font-size:80%;">7.49</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.4.1" style="font-size:80%;">-34.77</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.15.15.15.1.1" style="font-size:80%;">2.29</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.15.15.15.1.m1.1"><semantics id="Sx3.T5.15.15.15.1.m1.1a"><mo id="Sx3.T5.15.15.15.1.m1.1.1" mathsize="80%" xref="Sx3.T5.15.15.15.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.15.15.15.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.15.15.15.1.m1.1.1.cmml" xref="Sx3.T5.15.15.15.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.15.15.15.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.15.15.15.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.5.1" style="font-size:80%;">2</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.6.1" style="font-size:80%;">33</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.7.1" style="font-size:80%;">545</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.8.1" style="font-size:80%;">799</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.9.1" style="font-size:80%;">151</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.15.15.15.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.15.15.15.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.16.16.16.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.2.1" style="font-size:80%;">DeepSeek-VL2</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.3.1" style="font-size:80%;">7.24</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.4.1" style="font-size:80%;">-38.52</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.16.16.16.1.1" style="font-size:80%;">1.77</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.16.16.16.1.m1.1"><semantics id="Sx3.T5.16.16.16.1.m1.1a"><mo id="Sx3.T5.16.16.16.1.m1.1.1" mathsize="80%" xref="Sx3.T5.16.16.16.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.16.16.16.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.16.16.16.1.m1.1.1.cmml" xref="Sx3.T5.16.16.16.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.16.16.16.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.16.16.16.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.5.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.6.1" style="font-size:80%;">27</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.7.1" style="font-size:80%;">504</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.8.1" style="font-size:80%;">791</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.9.1" style="font-size:80%;">207</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.16.16.16.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.16.16.16.10.1" style="font-size:80%;">1</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.17.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.17.17.17.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.2.1" style="font-size:80%;">LLaVA-OneVision-72B</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.3.1" style="font-size:80%;">7.16</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.4.1" style="font-size:80%;">-39.87</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.17.17.17.1.1" style="font-size:80%;">1.72</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.17.17.17.1.m1.1"><semantics id="Sx3.T5.17.17.17.1.m1.1a"><mo id="Sx3.T5.17.17.17.1.m1.1.1" mathsize="80%" xref="Sx3.T5.17.17.17.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.17.17.17.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.17.17.17.1.m1.1.1.cmml" xref="Sx3.T5.17.17.17.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.17.17.17.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.17.17.17.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.5.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.6.1" style="font-size:80%;">26</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.7.1" style="font-size:80%;">448</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.8.1" style="font-size:80%;">842</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.9.1" style="font-size:80%;">194</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.17.17.17.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.17.17.17.10.1" style="font-size:80%;">20</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.18.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx3.T5.18.18.18.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.2.1" style="font-size:80%;">LLaVA-OneVision-7B</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.3.1" style="font-size:80%;">6.75</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.4.1" style="font-size:80%;">-43.49</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.18.18.18.1.1" style="font-size:80%;">1.96</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.18.18.18.1.m1.1"><semantics id="Sx3.T5.18.18.18.1.m1.1a"><mo id="Sx3.T5.18.18.18.1.m1.1.1" mathsize="80%" xref="Sx3.T5.18.18.18.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.18.18.18.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.18.18.18.1.m1.1.1.cmml" xref="Sx3.T5.18.18.18.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.18.18.18.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.18.18.18.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.5.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.6.1" style="font-size:80%;">29</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.7.1" style="font-size:80%;">411</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.8.1" style="font-size:80%;">816</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.9.1" style="font-size:80%;">273</span></td>
<td class="ltx_td ltx_align_center" id="Sx3.T5.18.18.18.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.18.18.18.10.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="Sx3.T5.19.19.19">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="Sx3.T5.19.19.19.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.2.1" style="font-size:80%;">Qwen2-VL-7B-instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.3.1" style="font-size:80%;">7.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.4.1" style="font-size:80%;">-43.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="Sx3.T5.19.19.19.1.1" style="font-size:80%;">1.57</span><math alttext="\%" class="ltx_Math" display="inline" id="Sx3.T5.19.19.19.1.m1.1"><semantics id="Sx3.T5.19.19.19.1.m1.1a"><mo id="Sx3.T5.19.19.19.1.m1.1.1" mathsize="80%" xref="Sx3.T5.19.19.19.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="Sx3.T5.19.19.19.1.m1.1b"><csymbol cd="latexml" id="Sx3.T5.19.19.19.1.m1.1.1.cmml" xref="Sx3.T5.19.19.19.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="Sx3.T5.19.19.19.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="Sx3.T5.19.19.19.1.m1.1d">%</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.5.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.6.1" style="font-size:80%;">24</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.7.1" style="font-size:80%;">402</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.8" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.8.1" style="font-size:80%;">845</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.9" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.9.1" style="font-size:80%;">259</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx3.T5.19.19.19.10" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="Sx3.T5.19.19.19.10.1" style="font-size:80%;">0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the win rates of various Multimodal Large Language Models (MLLMs) on the Creation-MMBench benchmark.  The win rate is calculated by comparing the model's responses to those of a baseline model (GPT-40-1120), using human judges to determine which response is superior.  The table also breaks down the win rate into categories: 'Much Better', 'Better', 'Tie', 'Worse', and 'Much Worse', indicating the relative quality of the model's performance.  This allows for a nuanced understanding of each MLLM's creative capabilities beyond just a simple win/loss metric.
> <details>
> <summary>read the caption</summary>
> Table 5: Win Rate Result of MLLMs on Creation-MMBench. WR, MB, MW stands for Win Rate, Much Better and Much Worse
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx5.T6.2.1">
<tr class="ltx_tr" id="Sx5.T6.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx5.T6.2.1.1.1" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx5.T6.2.1.1.1.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="Sx5.T6.2.1.1.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx5.T6.2.1.1.2.1" style="font-size:80%;">Generic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="Sx5.T6.2.1.1.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx5.T6.2.1.1.3.1" style="font-size:80%;">Query-Specific</span></td>
</tr>
<tr class="ltx_tr" id="Sx5.T6.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T6.2.1.2.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx5.T6.2.1.2.1.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T6.2.1.2.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx5.T6.2.1.2.2.1" style="font-size:80%;">Reward</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T6.2.1.2.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx5.T6.2.1.2.3.1" style="font-size:80%;">VFS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T6.2.1.2.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="Sx5.T6.2.1.2.4.1" style="font-size:80%;">Reward</span></td>
</tr>
<tr class="ltx_tr" id="Sx5.T6.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx5.T6.2.1.3.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.3.1.1" style="font-size:80%;">GPT-4o-1120</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T6.2.1.3.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.3.2.1" style="font-size:80%;">8.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T6.2.1.3.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.3.3.1" style="font-size:80%;">6.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T6.2.1.3.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.3.4.1" style="font-size:80%;">8.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T6.2.1.3.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.3.5.1" style="font-size:80%;">3.33</span></td>
</tr>
<tr class="ltx_tr" id="Sx5.T6.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx5.T6.2.1.4.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.4.1.1" style="font-size:80%;">Qwen2.5-72B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="Sx5.T6.2.1.4.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.4.2.1" style="font-size:80%;">8.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T6.2.1.4.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.4.3.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="Sx5.T6.2.1.4.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.4.4.1" style="font-size:80%;">8.82</span></td>
<td class="ltx_td ltx_align_center" id="Sx5.T6.2.1.4.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.4.5.1" style="font-size:80%;">4.80</span></td>
</tr>
<tr class="ltx_tr" id="Sx5.T6.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="Sx5.T6.2.1.5.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.5.1.1" style="font-size:80%;">InternLM2.5-7B-Chat</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx5.T6.2.1.5.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.5.2.1" style="font-size:80%;">7.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="Sx5.T6.2.1.5.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.5.3.1" style="font-size:80%;">-22.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx5.T6.2.1.5.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.5.4.1" style="font-size:80%;">8.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="Sx5.T6.2.1.5.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="Sx5.T6.2.1.5.5.1" style="font-size:80%;">-15.29</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Large Language Model (LLM) performance on the Creation-MMBench-TO benchmark using two different types of image descriptions: generic and query-specific.  Generic descriptions provide general overviews of images, while query-specific descriptions are tailored to the specific questions asked. The table shows the Visual Factuality Score (VFS) and Reward values for each LLM and description type, enabling a direct comparison of model performance under different visual input conditions.  This allows for an assessment of how well the models integrate visual information based on the level of specificity within the description.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison on Generic Descriptions and Query-Specific Descriptions on Creation-MMBench-TO.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="Sx6.T7.4.4">
<tr class="ltx_tr" id="Sx6.T7.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.5.1" rowspan="2" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.5.1.1" style="font-size:80%;">Judging Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.5.2" rowspan="2" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.5.2.1" style="font-size:80%;">Judging Model/Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.5.3" rowspan="2" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.5.3.1" style="font-size:80%;">MLLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="Sx6.T7.4.4.5.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.5.4.1" style="font-size:80%;">Dual Evaluation</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="Sx6.T7.4.4.5.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.5.5.1" style="font-size:80%;">Non-Dual Evaluation</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="Sx6.T7.1.1.1.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.1.1.1.1.1" style="font-size:80%;">MAE<math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx6.T7.1.1.1.1.1.m1.1"><semantics id="Sx6.T7.1.1.1.1.1.m1.1a"><mo id="Sx6.T7.1.1.1.1.1.m1.1.1" stretchy="false" xref="Sx6.T7.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx6.T7.1.1.1.1.1.m1.1b"><ci id="Sx6.T7.1.1.1.1.1.m1.1.1.cmml" xref="Sx6.T7.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx6.T7.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx6.T7.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="Sx6.T7.2.2.2.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.2.2.2.2.1" style="font-size:80%;">Consistency<math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx6.T7.2.2.2.2.1.m1.1"><semantics id="Sx6.T7.2.2.2.2.1.m1.1a"><mo id="Sx6.T7.2.2.2.2.1.m1.1.1" stretchy="false" xref="Sx6.T7.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx6.T7.2.2.2.2.1.m1.1b"><ci id="Sx6.T7.2.2.2.2.1.m1.1.1.cmml" xref="Sx6.T7.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx6.T7.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx6.T7.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="Sx6.T7.3.3.3.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.3.3.3.3.1" style="font-size:80%;">MAE<math alttext="\downarrow" class="ltx_Math" display="inline" id="Sx6.T7.3.3.3.3.1.m1.1"><semantics id="Sx6.T7.3.3.3.3.1.m1.1a"><mo id="Sx6.T7.3.3.3.3.1.m1.1.1" stretchy="false" xref="Sx6.T7.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="Sx6.T7.3.3.3.3.1.m1.1b"><ci id="Sx6.T7.3.3.3.3.1.m1.1.1.cmml" xref="Sx6.T7.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx6.T7.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="Sx6.T7.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="Sx6.T7.4.4.4.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.4.4.1" style="font-size:80%;">Consistency<math alttext="\uparrow" class="ltx_Math" display="inline" id="Sx6.T7.4.4.4.4.1.m1.1"><semantics id="Sx6.T7.4.4.4.4.1.m1.1a"><mo id="Sx6.T7.4.4.4.4.1.m1.1.1" stretchy="false" xref="Sx6.T7.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="Sx6.T7.4.4.4.4.1.m1.1b"><ci id="Sx6.T7.4.4.4.4.1.m1.1.1.cmml" xref="Sx6.T7.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="Sx6.T7.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="Sx6.T7.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.1" rowspan="12" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.1.1" style="font-size:80%;">LLM-as-a-judge</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.2" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.2.1" style="font-size:80%;">Gemini-2.0-Pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.3.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.4.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.5" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.5.1" style="font-size:80%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.6" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.6.1" style="font-size:80%;">83.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.7" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.7.1" style="font-size:80%;">84.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.8" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.8.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.9" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.9.1" style="font-size:80%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.6.10" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.10.1" style="font-size:80%;">77.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.6.11" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.6.11.1" style="font-size:80%;">79.21</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.7.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.7.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.7.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.7.2.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.7.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.7.3.1" style="font-size:80%;">84.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.7.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.7.4.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.7.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.7.5.1" style="font-size:80%;">78.22</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.8.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.8.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.8.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.8.2.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.8.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.8.3.1" style="font-size:80%;">85.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.8.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.8.4.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.8.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.8.5.1" style="font-size:80%;">82.18</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.3.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.4.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.5.1" style="font-size:80%;">83.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.6.1" style="font-size:80%;">86.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.7.1" style="font-size:80%;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.8.1" style="font-size:80%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.9.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.9.1" style="font-size:80%;">74.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.9.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.9.10.1" style="font-size:80%;">77.38</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.10.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.10.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.10.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.10.2.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.10.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.10.3.1" style="font-size:80%;">85.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.10.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.10.4.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.10.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.10.5.1" style="font-size:80%;">76.47</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.11.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.11.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.11.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.11.2.1" style="font-size:80%;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.11.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.11.3.1" style="font-size:80%;">90.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.11.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.11.4.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.11.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.11.5.1" style="font-size:80%;">81.37</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.1.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.3.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.4.1" style="font-size:80%;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.5.1" style="font-size:80%;">89.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.6.1" style="font-size:80%;">91.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.7.1" style="font-size:80%;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.8.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.12.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.9.1" style="font-size:80%;">78.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.12.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.12.10.1" style="font-size:80%;">81.97</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.13.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.13.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.13.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.13.2.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.13.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.13.3.1" style="font-size:80%;">94.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.13.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.13.4.1" style="font-size:80%;">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.13.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.13.5.1" style="font-size:80%;">82.35</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.14.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.14.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.14.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.14.2.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.14.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.14.3.1" style="font-size:80%;">92.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.14.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.14.4.1" style="font-size:80%;">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.14.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.14.5.1" style="font-size:80%;">85.29</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.15">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.3.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.4.1" style="font-size:80%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.5.1" style="font-size:80%;">93.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.6.1" style="font-size:80%;">91.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.7.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.8.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.15.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.9.1" style="font-size:80%;">90.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.15.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.15.10.1" style="font-size:80%;">87.54</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.16.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.16.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.16.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.16.2.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.16.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.16.3.1" style="font-size:80%;">92.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.16.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.16.4.1" style="font-size:80%;">0.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.16.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.16.5.1" style="font-size:80%;">87.25</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.17.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.17.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.17.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.17.2.1" style="font-size:80%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.17.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.17.3.1" style="font-size:80%;">89.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.17.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.17.4.1" style="font-size:80%;">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.17.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.17.5.1" style="font-size:80%;">85.29</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.18">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.1" rowspan="12" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.1.1" style="font-size:80%;">MLLM-as-a-judge</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.2" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.2.1" style="font-size:80%;">Gemini-2.0-Pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.3.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.4.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.5" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.5.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.6" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.6.1" style="font-size:80%;">82.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.7" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.7.1" style="font-size:80%;">86.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.8" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.8.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.9" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.9.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.18.10" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.10.1" style="font-size:80%;">74.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.18.11" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.18.11.1" style="font-size:80%;">78.67</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.19.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.19.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.19.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.19.2.1" style="font-size:80%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.19.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.19.3.1" style="font-size:80%;">91.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.19.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.19.4.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.19.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.19.5.1" style="font-size:80%;">80.00</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.20.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.20.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.20.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.20.2.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.20.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.20.3.1" style="font-size:80%;">86.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.20.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.20.4.1" style="font-size:80%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.20.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.20.5.1" style="font-size:80%;">81.19</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.21">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.3.1" style="font-size:80%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.4.1" style="font-size:80%;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.5.1" style="font-size:80%;">84.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.6.1" style="font-size:80%;">89.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.7.1" style="font-size:80%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.8.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.21.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.9.1" style="font-size:80%;">76.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.21.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.21.10.1" style="font-size:80%;">80.33</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.22.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.22.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.22.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.22.2.1" style="font-size:80%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.22.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.22.3.1" style="font-size:80%;">93.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.22.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.22.4.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.22.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.22.5.1" style="font-size:80%;">82.35</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.23.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.23.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.23.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.23.2.1" style="font-size:80%;">0.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.23.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.23.3.1" style="font-size:80%;">91.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.23.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.23.4.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.23.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.23.5.1" style="font-size:80%;">82.35</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.24">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.1.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.3.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.4.1" style="font-size:80%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.5.1" style="font-size:80%;">89.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.6.1" style="font-size:80%;">90.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.7.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.8.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.24.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.9.1" style="font-size:80%;">83.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.24.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.24.10.1" style="font-size:80%;">85.23</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.25.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.25.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.25.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.25.2.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.25.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.25.3.1" style="font-size:80%;">92.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.25.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.25.4.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.25.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.25.5.1" style="font-size:80%;">85.00</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.26.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.26.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.26.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.26.2.1" style="font-size:80%;">0.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.26.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.26.3.1" style="font-size:80%;">89.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.26.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.26.4.1" style="font-size:80%;">0.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.26.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.26.5.1" style="font-size:80%;">86.87</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.27">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.27.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.27.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.27.3.1" style="font-size:80%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.27.4.1" style="font-size:80%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.27.5.1" style="font-size:80%;">92.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.27.6.1" style="font-size:80%;">92.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.27.7.1" style="font-size:80%;">0.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.27.8.1" style="font-size:80%;">0.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.27.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.27.9.1" style="font-size:80%;">89.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.27.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="Sx6.T7.4.4.27.10.1" style="font-size:80%;">88.85</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.28.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.28.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.28.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.28.2.1" style="font-size:80%;">0.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.28.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.28.3.1" style="font-size:80%;">96.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.28.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.28.4.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.28.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.28.5.1" style="font-size:80%;">91.18</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.29.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.29.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.29.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.29.2.1" style="font-size:80%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.29.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.29.3.1" style="font-size:80%;">88.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.29.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.29.4.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.29.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.29.5.1" style="font-size:80%;">86.27</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.30">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.1" rowspan="12" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.1.1" style="font-size:80%;">Human-as-a-judge</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.2" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.2.1" style="font-size:80%;">H1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.3.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.4.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.5" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.5.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.6" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.6.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.7" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.7.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.8" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.8.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.9" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.9.1" style="font-size:80%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.30.10" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.10.1" style="font-size:80%;">84.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.30.11" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.30.11.1" style="font-size:80%;">87.21</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.31.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.31.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.31.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.31.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.31.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.31.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.31.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.31.4.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.31.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.31.5.1" style="font-size:80%;">90.20</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.32.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.32.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.32.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.32.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.32.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.32.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.32.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.32.4.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.32.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.32.5.1" style="font-size:80%;">87.25</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.33">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.1.1" style="font-size:80%;">H2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.4.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.5.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.6.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.7.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.8.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.33.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.9.1" style="font-size:80%;">74.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.33.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.33.10.1" style="font-size:80%;">78.69</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.34.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.34.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.34.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.34.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.34.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.34.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.34.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.34.4.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.34.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.34.5.1" style="font-size:80%;">82.35</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.35.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.35.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.35.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.35.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.35.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.35.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.35.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.35.4.1" style="font-size:80%;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.35.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.35.5.1" style="font-size:80%;">79.41</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.36">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.1.1" style="font-size:80%;">H3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.4.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.5.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.6.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.7.1" style="font-size:80%;">0.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.8.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.36.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.9.1" style="font-size:80%;">76.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx6.T7.4.4.36.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.36.10.1" style="font-size:80%;">82.30</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.37.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.37.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.37.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.37.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.37.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.37.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.37.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.37.4.1" style="font-size:80%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.37.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.37.5.1" style="font-size:80%;">80.39</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.38.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.38.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.38.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.38.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.38.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.38.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.38.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.38.4.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.38.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.38.5.1" style="font-size:80%;">90.20</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.39">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.1" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.1.1" style="font-size:80%;">H4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.2.1" style="font-size:80%;">Gemini-1.5-pro-002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.4" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.4.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.5.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.6" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.6.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.7" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.7.1" style="font-size:80%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.8" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.8.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx6.T7.4.4.39.9" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.9.1" style="font-size:80%;">87.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="Sx6.T7.4.4.39.10" rowspan="3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.39.10.1" style="font-size:80%;">87.87</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.40.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.40.1.1" style="font-size:80%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.40.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.40.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.40.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.40.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.40.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.40.4.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx6.T7.4.4.40.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.40.5.1" style="font-size:80%;">89.22</span></td>
</tr>
<tr class="ltx_tr" id="Sx6.T7.4.4.41">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="Sx6.T7.4.4.41.1" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.41.1.1" style="font-size:80%;">MiniCPM-o-2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="Sx6.T7.4.4.41.2" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.41.2.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="Sx6.T7.4.4.41.3" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.41.3.1" style="font-size:80%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="Sx6.T7.4.4.41.4" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.41.4.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="Sx6.T7.4.4.41.5" style="padding:0.8pt 10.0pt;"><span class="ltx_text" id="Sx6.T7.4.4.41.5.1" style="font-size:80%;">87.25</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive analysis of the alignment between model-generated evaluations and human judgments.  It compares the Mean Absolute Error (MAE) and the percentage of consistent judgments between different model-based evaluation strategies and human evaluations.  Specifically, it shows the results of using various LLMs as judges for comparing responses, examining the level of agreement between these machine-based assessments and human preferences.  It also provides the degree of consistency in human judgments themselves to serve as a baseline for comparison. The results help to establish the reliability and validity of the proposed MLLM-as-a-judge approach within the Creation-MMBench evaluation framework.
> <details>
> <summary>read the caption</summary>
> Table 7: The Results of Model-Human Alignment and Human-Human Alignment.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14478/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14478/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}