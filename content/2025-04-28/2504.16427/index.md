---
title: "Can Large Language Models Help Multimodal Language Analysis? MMLA: A Comprehensive Benchmark"
summary: "MMLA: A multimodal benchmark for cognitive language analysis, revealing current MLLMs' limitations and providing a valuable resource for future research."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Understanding", "🏢 Tsinghua University",]
showSummary: true
date: 2025-04-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.16427 {{< /keyword >}}
{{< keyword icon="writer" >}} Hanlei Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.16427" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.16427" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.16427/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal language analysis enhances understanding of human conversations, but Multimodal Large Language Models' (MLLMs) capabilities are underexplored. Existing benchmarks focus on low-level semantics, missing cognitive-level nuances.This paper fills the gap by presenting a **comprehensive benchmark for Multimodal Language Analysis (MMLA)**, designed to evaluate MLLMs in understanding conversational semantics. 



MMLA includes over 61K multimodal utterances from staged and real-world scenarios, covering intent, emotion, dialogue act, sentiment, speaking style, and communication behavior. Experiments on LLMs and MLLMs using zero-shot inference, supervised fine-tuning, and instruction tuning reveal limitations in cognitive language understanding. **MMLA serves as a solid foundation** to explore LLMs in multimodal language analysis and provides resources to advance the field.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current MLLMs have limitations in understanding high-level cognitive semantics in multimodal language analysis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Supervised fine-tuning and instruction tuning can significantly enhance MLLMs' capabilities, but challenges remain. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Smaller-scale, well-trained MLLMs can achieve performance comparable to larger models, suggesting feasible, cost-effective solutions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces a new **MMLA benchmark** to push MLLM's limits in multimodal analysis. The code and data are publicly available, opening avenues for cognitive-level human-AI interaction research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.16427/x1.png)

> 🔼 Figure 1 provides a visual overview of the MMLA benchmark, a comprehensive evaluation benchmark for multimodal language analysis. The left-hand side showcases examples of the six core evaluation dimensions (intent, emotion, dialogue act, sentiment, speaking style, and communication behavior) and data samples from the nine datasets used in the benchmark.  The right-hand side illustrates the three evaluation methods employed: zero-shot inference (using task-specific prompts), supervised fine-tuning (training on individual supervised tasks), and instruction tuning (training on multiple tasks simultaneously).  Methods (2) and (3) both utilize LoRA (Low-Rank Adaptation) for efficient adaptation of pre-trained foundation models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the MMLA benchmark. The left side shows examples from six evaluation dimensions and nine datasets. The right side displays three methods for evaluating both LLMs and MLLMs: (1) zero-shot inference (top right), which generates predictions from task-specific prompts; (2) supervised fine-tuning (middle right), which trains on each supervised task; and (3) instruction tuning (bottom right), which trains on multiple tasks simultaneously. Both (2) and (3) utilize LoRA to efficiently adapt foundation models.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.1" style="font-size:70%;">Dimensions</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.2.1" style="font-size:70%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.3.1" style="font-size:70%;">#C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.4.1" style="font-size:70%;">#U</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.5.1" style="font-size:70%;">#Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.6.1" style="font-size:70%;">#Val</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.7.1" style="font-size:70%;">#Test</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.1.8.1"></span><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.8.2" style="font-size:70%;"> <span class="ltx_text" id="S3.T1.2.1.1.8.2.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.1.1.8.2.1.1">
<span class="ltx_tr" id="S3.T1.2.1.1.8.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.1.8.2.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Video</span></span>
<span class="ltx_tr" id="S3.T1.2.1.1.8.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.1.8.2.1.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Hours</span></span>
</span></span><span class="ltx_text" id="S3.T1.2.1.1.8.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.9.1" style="font-size:70%;">Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.10" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.1.10.1"></span><span class="ltx_text" id="S3.T1.2.1.1.10.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T1.2.1.1.10.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.1.1.10.3.1">
<span class="ltx_tr" id="S3.T1.2.1.1.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.1.10.3.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.10.3.1.1.1.1">#Video Length</span></span></span>
<span class="ltx_tr" id="S3.T1.2.1.1.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.1.10.3.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">avg. / max.</span></span>
</span></span><span class="ltx_text" id="S3.T1.2.1.1.10.4"></span><span class="ltx_text" id="S3.T1.2.1.1.10.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.11" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.2.1.1.11.1"></span><span class="ltx_text" id="S3.T1.2.1.1.11.2" style="font-size:70%;"> </span><span class="ltx_text" id="S3.T1.2.1.1.11.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.1.1.11.3.1">
<span class="ltx_tr" id="S3.T1.2.1.1.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.1.11.3.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.11.3.1.1.1.1">#Text Length</span></span></span>
<span class="ltx_tr" id="S3.T1.2.1.1.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.1.11.3.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">avg. / max.</span></span>
</span></span><span class="ltx_text" id="S3.T1.2.1.1.11.4"></span><span class="ltx_text" id="S3.T1.2.1.1.11.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.12.1" style="font-size:70%;">Language</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.1.1" style="font-size:70%;">Intent</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.2.1" style="font-size:70%;">MIntRec</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.3.1" style="font-size:70%;">20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.4.1" style="font-size:70%;">2,224</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.5.1" style="font-size:70%;">1,334</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.6.1" style="font-size:70%;">445</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.7.1" style="font-size:70%;">445</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.8.1" style="font-size:70%;">1.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.9.1" style="font-size:70%;">TV series</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.10.1" style="font-size:70%;">2.4 / 9.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.11.1" style="font-size:70%;">7.6 / 27.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.12" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.2.12.1" style="font-size:70%;">English</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.1.1" style="font-size:70%;">MIntRec2.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.2.1" style="font-size:70%;">30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.3.1" style="font-size:70%;">9,304</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.4.1" style="font-size:70%;">6,165</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.5.1" style="font-size:70%;">1,106</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.6.1" style="font-size:70%;">2,033</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.7.1" style="font-size:70%;">7.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.8.1" style="font-size:70%;">TV series</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.9.1" style="font-size:70%;">2.9 / 19.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.10.1" style="font-size:70%;">8.5 / 46.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.1.1" style="font-size:70%;"><span class="ltx_text" id="S3.T1.2.1.4.1.1.1"></span> <span class="ltx_text" id="S3.T1.2.1.4.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.1.4.1.1.2.1">
<span class="ltx_tr" id="S3.T1.2.1.4.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.4.1.1.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Dialogue</span></span>
<span class="ltx_tr" id="S3.T1.2.1.4.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.4.1.1.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Act</span></span>
</span></span> <span class="ltx_text" id="S3.T1.2.1.4.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.2.1" style="font-size:70%;">MELD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.3.1" style="font-size:70%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.4.1" style="font-size:70%;">9,989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.5.1" style="font-size:70%;">6,992</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.6.1" style="font-size:70%;">999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.7.1" style="font-size:70%;">1,998</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.8.1" style="font-size:70%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.9.1" style="font-size:70%;">TV series</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.10.1" style="font-size:70%;">3.2 / 41.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.11.1" style="font-size:70%;">8.6 / 72.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.4.12" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.12.1" style="font-size:70%;">English</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.1.1" style="font-size:70%;">IEMOCAP</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.2.1" style="font-size:70%;">12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.3.1" style="font-size:70%;">9,416</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.4.1" style="font-size:70%;">6,590</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.5.1" style="font-size:70%;">942</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.6.1" style="font-size:70%;">1,884</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.7.1" style="font-size:70%;">11.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.8.1" style="font-size:70%;">Improvised scripts</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.9.1" style="font-size:70%;">4.5 / 34.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.10.1" style="font-size:70%;">12.4 / 106.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.1.1" style="font-size:70%;">Emotion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.2.1" style="font-size:70%;">MELD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.3.1" style="font-size:70%;">7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.4.1" style="font-size:70%;">13,708</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.5.1" style="font-size:70%;">9,989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.6.1" style="font-size:70%;">1,109</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.7.1" style="font-size:70%;">2,610</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.8.1" style="font-size:70%;">12.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.9.1" style="font-size:70%;">TV series</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.10.1" style="font-size:70%;">3.2 / 305.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.11.1" style="font-size:70%;">8.7 / 72.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.6.12" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.12.1" style="font-size:70%;">English</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.1.1" style="font-size:70%;">IEMOCAP</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.2.1" style="font-size:70%;">6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.3.1" style="font-size:70%;">7,532</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.4.1" style="font-size:70%;">5,354</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.5.1" style="font-size:70%;">528</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.6.1" style="font-size:70%;">1,650</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.7.1" style="font-size:70%;">9.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.8.1" style="font-size:70%;">Improvised scripts</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.9.1" style="font-size:70%;">4.6 / 34.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.10.1" style="font-size:70%;">12.8 / 106.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.1.1" style="font-size:70%;">Sentiment</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.2.1" style="font-size:70%;">MOSI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.3.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.4.1" style="font-size:70%;">2,199</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.5.1" style="font-size:70%;">1,284</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.6.1" style="font-size:70%;">229</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.7.1" style="font-size:70%;">686</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.8.1" style="font-size:70%;">2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.9.1" style="font-size:70%;">Youtube</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.10.1" style="font-size:70%;">4.3 / 52.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.11.1" style="font-size:70%;">12.5 / 114.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.8.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.12.1" style="font-size:70%;">English</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.9">
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.1.1" style="font-size:70%;">CH-SIMS v2.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.2.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.3.1" style="font-size:70%;">4,403</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.4.1" style="font-size:70%;">2,722</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.5.1" style="font-size:70%;">647</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.6.1" style="font-size:70%;">1,034</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.7.1" style="font-size:70%;">4.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.8.1" style="font-size:70%;">TV series, films</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.9.1" style="font-size:70%;">3.6 / 42.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.10.1" style="font-size:70%;">1.8 / 7.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.11.1" style="font-size:70%;">Mandarin</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.1.1" style="font-size:70%;"><span class="ltx_text" id="S3.T1.2.1.10.1.1.1"></span> <span class="ltx_text" id="S3.T1.2.1.10.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.1.10.1.1.2.1">
<span class="ltx_tr" id="S3.T1.2.1.10.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.10.1.1.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Speaking</span></span>
<span class="ltx_tr" id="S3.T1.2.1.10.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.10.1.1.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Style</span></span>
</span></span> <span class="ltx_text" id="S3.T1.2.1.10.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.2.1" style="font-size:70%;">UR-FUNNY-v2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.3.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.4.1" style="font-size:70%;">9,586</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.5.1" style="font-size:70%;">7,612</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.6.1" style="font-size:70%;">980</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.7.1" style="font-size:70%;">994</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.8.1" style="font-size:70%;">12.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.9.1" style="font-size:70%;">TED</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.10.1" style="font-size:70%;">4.8 / 325.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.11.1" style="font-size:70%;">16.3 / 126.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.10.12" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.10.12.1" style="font-size:70%;">English</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.11">
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.1.1" style="font-size:70%;">MUStARD</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.2.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.3.1" style="font-size:70%;">690</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.4.1" style="font-size:70%;">414</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.5.1" style="font-size:70%;">138</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.6.1" style="font-size:70%;">138</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.7.1" style="font-size:70%;">1.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.8.1" style="font-size:70%;">TV series</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.9.1" style="font-size:70%;">5.2 / 20.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.11.10.1" style="font-size:70%;">13.1 / 68.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.12.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.1.1" style="font-size:70%;"><span class="ltx_text" id="S3.T1.2.1.12.1.1.1"></span> <span class="ltx_text" id="S3.T1.2.1.12.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.1.12.1.1.2.1">
<span class="ltx_tr" id="S3.T1.2.1.12.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.12.1.1.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Communication</span></span>
<span class="ltx_tr" id="S3.T1.2.1.12.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.12.1.1.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Behavior</span></span>
</span></span> <span class="ltx_text" id="S3.T1.2.1.12.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.2.1" style="font-size:70%;">Anno-MI (client)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.3.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.4.1" style="font-size:70%;">4,713</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.5.1" style="font-size:70%;">3,123</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.6.1" style="font-size:70%;">461</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.7.1" style="font-size:70%;">1,129</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.8.1" style="font-size:70%;">10.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.12.9" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.9.1" style="font-size:70%;"><span class="ltx_text" id="S3.T1.2.1.12.9.1.1"></span> <span class="ltx_text" id="S3.T1.2.1.12.9.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.1.12.9.1.2.1">
<span class="ltx_tr" id="S3.T1.2.1.12.9.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.12.9.1.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">YouTube</span></span>
<span class="ltx_tr" id="S3.T1.2.1.12.9.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.12.9.1.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">&amp; Vimeo</span></span>
</span></span> <span class="ltx_text" id="S3.T1.2.1.12.9.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.10.1" style="font-size:70%;">8.2 / 600.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.12.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.11.1" style="font-size:70%;">16.3 / 266.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.12.12" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.12.12.1" style="font-size:70%;">English</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.13">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.1.1" style="font-size:70%;">Anno-MI (threapist)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.2.1" style="font-size:70%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.3.1" style="font-size:70%;">4,773</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.4.1" style="font-size:70%;">3,161</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.5.1" style="font-size:70%;">472</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.6.1" style="font-size:70%;">1,140</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.7.1" style="font-size:70%;">12.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.8.1" style="font-size:70%;">9.1 / 1316.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.13.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.2.1.13.9.1" style="font-size:70%;">17.9 / 205.0</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a detailed breakdown of the nine datasets used in the MMLA benchmark, categorized by six core evaluation dimensions: Intent, Dialogue Act, Emotion, Sentiment, Speaking Style, and Communication Behavior.  For each dataset, the table provides the number of label classes (#C), total number of utterances (#U), the number of samples used for training, validation, and testing (#Train, #Val, #Test), the average and maximum video lengths (in hours), and the average and maximum text lengths (in words).  The language of each dataset is also specified, enabling researchers to easily understand the data distribution and characteristics across different modalities and semantic aspects.
> <details>
> <summary>read the caption</summary>
> Table 1:  Dataset statistics for each dimension in the MMLA benchmark. #C, #U, #Train, #Val, and #Test represent the number of label classes, utterances, training, validation, and testing samples, respectively. avg. and max. refer to the average and maximum lengths.
> </details>





### In-depth insights


#### MMLA: Cognitive LLM?
The idea of MMLA serving as a testing ground for cognitive LLMs is intriguing. **MMLA's focus on high-level semantics like intent and emotion moves beyond perceptual tasks**, potentially revealing the cognitive abilities (or lack thereof) in LLMs. A truly "cognitive" LLM should excel at MMLA's challenges, demonstrating nuanced understanding and reasoning about human communication. **Current LLMs, even with fine-tuning, struggle to achieve high accuracy, suggesting limitations in their cognitive capacity**. Further research using MMLA could involve exploring novel architectures or training strategies specifically designed to enhance cognitive reasoning in LLMs. Also, investigating whether LLMs can exhibit human-like biases or reasoning errors would be insightful. Ultimately, **MMLA may help chart a path towards developing LLMs that not only process language but also demonstrate genuine understanding and cognitive abilities**.

#### Fine-tune MLLMs
**Fine-tuning Multimodal Large Language Models (MLLMs)** is crucial for adapting them to specific downstream tasks. It usually involves methods like **supervised fine-tuning (SFT)**, where the model is trained on labeled data, optimizing it for tasks like image captioning, visual question answering, or multimodal sentiment analysis. Techniques such as **Low-Rank Adaptation (LoRA)** could also be leveraged to enhance training stability and mitigate computational costs by reducing the number of trainable parameters. Another important method is **instruction tuning**, which aims to improve the model's ability to follow complex instructions and generalize across diverse tasks by training it on a wide range of instruction-response pairs. However, effectively fine-tuning MLLMs poses several challenges, such as **avoiding catastrophic forgetting** of pre-trained knowledge and ensuring proper **alignment** between different modalities. Careful consideration must be given to selecting appropriate datasets and designing effective training strategies to achieve optimal performance and generalization ability. Fine-tuning helps in better non-verbal understanding and reasoning with cognitive semantics.

#### IT for Few-shot?
The hypothetical heading 'IT for Few-shot?' sparks interesting considerations. Instruction Tuning (IT) aims to improve model generalization, but its effectiveness in few-shot scenarios warrants careful examination. **While IT could prime models with broad task knowledge, enabling faster adaptation with limited examples, potential pitfalls exist.** The quality and diversity of instructions are crucial; a narrow or biased set might hinder generalization to unseen instances. **The effectiveness of IT might depend heavily on the similarity between the instruction data and the target few-shot task.** Furthermore, the model's capacity plays a vital role; smaller models might overfit instruction data, while larger ones might require extensive IT to significantly impact few-shot learning. **The design of instruction prompts is also critical; prompts should be informative and unambiguous, guiding the model towards correct predictions even with limited examples.** Therefore, IT's success in few-shot learning is not guaranteed and depends on various factors, such as instruction quality, task similarity, model capacity, and prompt design. Further investigations should explore the optimal strategies for leveraging IT in few-shot settings.

#### MMLMs vs. LLMs
**Multimodal Large Language Models (MLLMs)** aim to integrate and process information from various modalities, such as text, images, and audio, offering a potentially richer understanding of complex data. **LLMs**, on the other hand, primarily focus on textual data.  While MLLMs hold promise, challenges exist in effectively fusing diverse data types. They require sophisticated mechanisms to align modalities, handle noise, and manage computational demands. The performance gains of MLLMs over LLMs often depend on the specific task. In scenarios where non-verbal cues or visual context are crucial, MLLMs might excel.  However, for text-centric tasks requiring deep reasoning, LLMs can show comparable and sometimes superior results. This raises questions about the cost-benefit ratio of adding modalities. A key area for further research is designing MLLMs that selectively utilize multi-modal data, optimizing processing for relevance and efficiency. Moreover, benchmarks that accurately assess the ability of MLLMs to comprehend complex cognitive semantics are needed to drive development. 

#### Scale Needs Data
The notion that "scale needs data" highlights a fundamental truth in machine learning: **larger, more complex models necessitate vast quantities of data for effective training.** Without sufficient data, these models are prone to overfitting, memorizing the training data instead of learning generalizable patterns. This leads to poor performance on unseen data, negating the benefits of increased model capacity. The relationship underscores the importance of **data quality and diversity**, as simply increasing the amount of data without addressing biases or limitations can be detrimental. Moreover, **data preprocessing and augmentation techniques** become critical to maximize the information extracted from available data and improve model robustness. As models continue to scale, the challenge of acquiring and managing high-quality, representative datasets grows, driving research into **data-efficient learning methods** such as few-shot learning and self-supervised learning to mitigate the reliance on massive labeled datasets. The interplay between model scale and data availability forms a central consideration in the development of advanced AI systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.16427/x2.png)

> 🔼 This figure presents the performance ranking of various foundation models (both LLMs and MLLMs) after zero-shot inference on the MMLA benchmark.  The ranking is based on the average accuracy (ACC) across all testing datasets.  The models are listed in descending order of accuracy, showing which models performed best without any prior training or fine-tuning on the specific MMLA tasks.  This provides a baseline measurement of the models' generalization capabilities in understanding complex multimodal language.
> <details>
> <summary>read the caption</summary>
> Figure 2: Rank of foundation models after zero-shot inference.
> </details>



![](https://arxiv.org/html/2504.16427/x3.png)

> 🔼 This figure shows the ranking of various Large Language Models (LLMs) and Multimodal Large Language Models (MLLMs) after they have undergone supervised fine-tuning (SFT) and instruction tuning (IT).  The ranking is based on the average accuracy across all the datasets in the MMLA benchmark.  The figure highlights the performance differences between the models and the impact of the different training methods.
> <details>
> <summary>read the caption</summary>
> Figure 3: Rank of foundation models after SFT and IT.
> </details>



![](https://arxiv.org/html/2504.16427/x4.png)

> 🔼 Figure 4 presents a detailed comparison of zero-shot inference and supervised fine-tuning (SFT) performance, measured by accuracy (ACC), across various multimodal language analysis tasks.  Each bar in the chart is divided into two segments: the lighter bottom segment shows the accuracy achieved using only zero-shot inference, and the darker top segment represents the improvement gained after performing SFT.  The chart includes results for several different large language models (LLMs) and multimodal LLMs (MLLMs), comparing their performance across different datasets.  For context, the performance of state-of-the-art (SOTA) multimodal machine learning (MML) methods, when available for a given task, and GPT-4 are also plotted as dashed lines. This visual representation allows for a direct comparison of how much SFT enhances the models' abilities on each task and dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Fine-grained zero-shot inference and SFT performance (ACC). Within each bar, the light-colored lower segment corresponds to zero-shot inference performance, while the darker upper segment represents the additional gains from SFT. The performance of SOTA MML methods (if available) and GPT-4o are indicated with purple and green dashed lines, respectively.
> </details>



![](https://arxiv.org/html/2504.16427/x5.png)

> 🔼 Figure 5 presents a detailed analysis of the accuracy achieved by various large language models (LLMs) and multimodal large language models (MLLMs) across six different semantic dimensions.  The models were fine-tuned using an instruction-tuning method.  The figure shows the performance of these models on nine different datasets.  For context, the performance of state-of-the-art (SOTA) multimodal machine learning (MML) methods and even human performance are included as dashed lines where available for comparison.  This granular breakdown allows for a precise evaluation of model capabilities across a spectrum of complexity in multimodal understanding.
> <details>
> <summary>read the caption</summary>
> Figure 5: Fine-grained performance (ACC) of instruction-tuned MLLMs and LLMs on each dataset across six dimensions. The performance of SOTA MML methods and humans are indicated with dashed lines, if available.
> </details>



![](https://arxiv.org/html/2504.16427/x6.png)

> 🔼 This figure demonstrates how the performance of Qwen2 and its multimodal variant, Qwen2-VL, change as the model size increases.  It shows the impact of scaling model parameters on various aspects of multimodal language analysis within the MMLA benchmark.  Both zero-shot inference and performance after supervised fine-tuning (SFT) are presented, giving a comprehensive understanding of the models' scalability and the trade-offs between model size and performance across different tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scalability of Qwen2 and Qwen2-VL on the MMLA benchmark.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T2.6.1">
<tr class="ltx_tr" id="A5.T2.6.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A5.T2.6.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T2.6.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.1.2.1" style="font-size:50%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.6.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.1.3.1" style="font-size:50%;">MIntRec</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.6.1.1.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.1.4.1" style="font-size:50%;">MIntRec2.0</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.6.1.1.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.1.5.1" style="font-size:50%;">MELD</span></td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.2">
<td class="ltx_td ltx_border_r" id="A5.T2.6.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.6.1.2.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.2.2.1" style="font-size:50%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.2.3.1">
<span class="ltx_p" id="A5.T2.6.1.2.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.2.3.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.2.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.2.4.1">
<span class="ltx_p" id="A5.T2.6.1.2.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.2.4.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.2.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.2.5.1">
<span class="ltx_p" id="A5.T2.6.1.2.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.2.5.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.2.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.2.6.1">
<span class="ltx_p" id="A5.T2.6.1.2.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.2.6.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.2.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.2.7.1">
<span class="ltx_p" id="A5.T2.6.1.2.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.2.7.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.2.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.2.8.1">
<span class="ltx_p" id="A5.T2.6.1.2.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.2.8.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T2.6.1.3.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.3.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T2.6.1.3.1.1.1" style="width:3.4pt;height:12.8pt;vertical-align:-4.7pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-4.69pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T2.6.1.3.1.1.1.1">LLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.6.1.3.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.3.2.1" style="font-size:50%;">Qwen2-0.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.3.3.1">
<span class="ltx_p" id="A5.T2.6.1.3.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.3.3.1.1.1" style="font-size:50%;">18.88  15.08  26.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.3.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.3.4.1">
<span class="ltx_p" id="A5.T2.6.1.3.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.3.4.1.1.1" style="font-size:50%;">9.03  10.03  16.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.3.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.3.5.1">
<span class="ltx_p" id="A5.T2.6.1.3.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.3.5.1.1.1" style="font-size:50%;">6.79  4.08  11.33</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.3.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.3.6.1">
<span class="ltx_p" id="A5.T2.6.1.3.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.3.6.1.1.1" style="font-size:50%;">3.15  5.49  9.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.3.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.3.7.1">
<span class="ltx_p" id="A5.T2.6.1.3.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.3.7.1.1.1" style="font-size:50%;">21.03  12.89  52.20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.3.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.3.8.1">
<span class="ltx_p" id="A5.T2.6.1.3.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.3.8.1.1.1" style="font-size:50%;">11.79  19.00  37.51</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.4.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.4.1.1" style="font-size:50%;">Llama-3.2-1B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.4.2.1">
<span class="ltx_p" id="A5.T2.6.1.4.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.4.2.1.1.1" style="font-size:50%;">23.60  18.60  26.71</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.4.3.1">
<span class="ltx_p" id="A5.T2.6.1.4.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.4.3.1.1.1" style="font-size:50%;">15.08  16.06  25.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.4.4.1">
<span class="ltx_p" id="A5.T2.6.1.4.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.4.4.1.1.1" style="font-size:50%;">13.63  9.93  23.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.4.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.4.5.1">
<span class="ltx_p" id="A5.T2.6.1.4.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.4.5.1.1.1" style="font-size:50%;">9.56  12.98  22.73</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.4.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.4.6.1">
<span class="ltx_p" id="A5.T2.6.1.4.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.4.6.1.1.1" style="font-size:50%;">22.34  18.60  47.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.4.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.4.7.1">
<span class="ltx_p" id="A5.T2.6.1.4.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.4.7.1.1.1" style="font-size:50%;">18.30  23.33  25.34</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.5.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.5.1.1" style="font-size:50%;">Qwen2-1.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.5.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.5.2.1">
<span class="ltx_p" id="A5.T2.6.1.5.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.5.2.1.1.1" style="font-size:50%;">33.26  24.79  29.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.5.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.5.3.1">
<span class="ltx_p" id="A5.T2.6.1.5.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.5.3.1.1.1" style="font-size:50%;">17.29  21.16  21.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.5.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.5.4.1">
<span class="ltx_p" id="A5.T2.6.1.5.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.5.4.1.1.1" style="font-size:50%;">20.31  16.59  34.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.5.5.1">
<span class="ltx_p" id="A5.T2.6.1.5.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.5.5.1.1.1" style="font-size:50%;">15.36  18.79  28.24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.5.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.5.6.1">
<span class="ltx_p" id="A5.T2.6.1.5.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.5.6.1.1.1" style="font-size:50%;">43.56  45.35  51.16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.5.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.5.7.1">
<span class="ltx_p" id="A5.T2.6.1.5.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.5.7.1.1.1" style="font-size:50%;">30.97  33.85  32.05</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.6.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.6.1.1" style="font-size:50%;">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.6.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.6.2.1">
<span class="ltx_p" id="A5.T2.6.1.6.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.6.2.1.1.1" style="font-size:50%;">37.98  33.62  42.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.6.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.6.3.1">
<span class="ltx_p" id="A5.T2.6.1.6.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.6.3.1.1.1" style="font-size:50%;">30.99  35.60  36.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.6.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.6.4.1">
<span class="ltx_p" id="A5.T2.6.1.6.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.6.4.1.1.1" style="font-size:50%;">28.58  26.34  42.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.6.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.6.5.1">
<span class="ltx_p" id="A5.T2.6.1.6.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.6.5.1.1.1" style="font-size:50%;">23.27  26.76  34.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.6.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.6.6.1">
<span class="ltx_p" id="A5.T2.6.1.6.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.6.6.1.1.1" style="font-size:50%;">38.24  38.56  59.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.6.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.6.7.1">
<span class="ltx_p" id="A5.T2.6.1.6.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.6.7.1.1.1" style="font-size:50%;">30.60  34.59  34.35</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.7.1.1" style="font-size:50%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.7.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.7.2.1">
<span class="ltx_p" id="A5.T2.6.1.7.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.7.2.1.1.1" style="font-size:50%;">56.18</span><span class="ltx_text" id="A5.T2.6.1.7.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.7.2.1.1.3" style="font-size:50%;">56.06</span><span class="ltx_text" id="A5.T2.6.1.7.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.7.2.1.1.5" style="font-size:50%;">62.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.7.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.7.3.1">
<span class="ltx_p" id="A5.T2.6.1.7.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.7.3.1.1.1" style="font-size:50%;">50.16</span><span class="ltx_text" id="A5.T2.6.1.7.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.7.3.1.1.3" style="font-size:50%;">53.18</span><span class="ltx_text" id="A5.T2.6.1.7.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.7.3.1.1.5" style="font-size:50%;">54.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.7.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.7.4.1">
<span class="ltx_p" id="A5.T2.6.1.7.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.7.4.1.1.1" style="font-size:50%;">36.25</span><span class="ltx_text" id="A5.T2.6.1.7.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.7.4.1.1.3" style="font-size:50%;">36.08</span><span class="ltx_text" id="A5.T2.6.1.7.4.1.1.4" style="font-size:50%;">  43.31</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.7.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.7.5.1">
<span class="ltx_p" id="A5.T2.6.1.7.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.7.5.1.1.1" style="font-size:50%;">32.37</span><span class="ltx_text" id="A5.T2.6.1.7.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.7.5.1.1.3" style="font-size:50%;">35.73</span><span class="ltx_text" id="A5.T2.6.1.7.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.7.5.1.1.5" style="font-size:50%;">37.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.7.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.7.6.1">
<span class="ltx_p" id="A5.T2.6.1.7.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.7.6.1.1.1" style="font-size:50%;">55.67</span><span class="ltx_text" id="A5.T2.6.1.7.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.7.6.1.1.3" style="font-size:50%;">57.96</span><span class="ltx_text" id="A5.T2.6.1.7.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.7.6.1.1.5" style="font-size:50%;">63.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.7.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.7.7.1">
<span class="ltx_p" id="A5.T2.6.1.7.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.7.7.1.1.1" style="font-size:50%;">40.16</span><span class="ltx_text" id="A5.T2.6.1.7.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.7.7.1.1.3" style="font-size:50%;">40.87</span><span class="ltx_text" id="A5.T2.6.1.7.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.7.7.1.1.5" style="font-size:50%;">41.76</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.8.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.8.1.1" style="font-size:50%;">Llama-3-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.8.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.8.2.1">
<span class="ltx_p" id="A5.T2.6.1.8.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.8.2.1.1.1" style="font-size:50%;">49.44  48.57  55.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.8.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.8.3.1">
<span class="ltx_p" id="A5.T2.6.1.8.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.8.3.1.1.1" style="font-size:50%;">41.16  43.98  47.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.8.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.8.4.1">
<span class="ltx_p" id="A5.T2.6.1.8.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.8.4.1.1.1" style="font-size:50%;">28.92  28.50  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.8.4.1.1.2" style="font-size:50%;">43.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.8.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.8.5.1">
<span class="ltx_p" id="A5.T2.6.1.8.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.8.5.1.1.1" style="font-size:50%;">24.58  27.96  35.30</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.8.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.8.6.1">
<span class="ltx_p" id="A5.T2.6.1.8.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.8.6.1.1.1" style="font-size:50%;">38.20  41.47  59.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.8.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.8.7.1">
<span class="ltx_p" id="A5.T2.6.1.8.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.8.7.1.1.1" style="font-size:50%;">31.95  34.20  34.59</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.9.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.9.1.1" style="font-size:50%;">Llama-3.1-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.9.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.9.2.1">
<span class="ltx_p" id="A5.T2.6.1.9.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.9.2.1.1.1" style="font-size:50%;">50.56  50.53  58.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.9.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.9.3.1">
<span class="ltx_p" id="A5.T2.6.1.9.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.9.3.1.1.1" style="font-size:50%;">44.57</span><span class="ltx_text" id="A5.T2.6.1.9.3.1.1.2" style="font-size:50%;">  46.70  49.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.9.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.9.4.1">
<span class="ltx_p" id="A5.T2.6.1.9.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.9.4.1.1.1" style="font-size:50%;">34.58  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.9.4.1.1.2" style="font-size:50%;">34.96</span><span class="ltx_text" id="A5.T2.6.1.9.4.1.1.3" style="font-size:50%;">  43.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.9.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.9.5.1">
<span class="ltx_p" id="A5.T2.6.1.9.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.9.5.1.1.1" style="font-size:50%;">31.17  35.29  35.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.9.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.9.6.1">
<span class="ltx_p" id="A5.T2.6.1.9.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.9.6.1.1.1" style="font-size:50%;">39.04  40.39  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.9.6.1.1.2" style="font-size:50%;">61.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.9.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.9.7.1">
<span class="ltx_p" id="A5.T2.6.1.9.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.9.7.1.1.1" style="font-size:50%;">34.32  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.9.7.1.1.2" style="font-size:50%;">37.46</span><span class="ltx_text" id="A5.T2.6.1.9.7.1.1.3" style="font-size:50%;">  37.80</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.10.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.10.1.1" style="font-size:50%;">Internlm-2.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.10.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.10.2.1">
<span class="ltx_p" id="A5.T2.6.1.10.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.10.2.1.1.1" style="font-size:50%;">56.63</span><span class="ltx_text" id="A5.T2.6.1.10.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.10.2.1.1.3" style="font-size:50%;">51.99</span><span class="ltx_text" id="A5.T2.6.1.10.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.10.2.1.1.5" style="font-size:50%;">62.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.10.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.10.3.1">
<span class="ltx_p" id="A5.T2.6.1.10.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.10.3.1.1.1" style="font-size:50%;">43.92  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.10.3.1.1.2" style="font-size:50%;">47.92</span><span class="ltx_text" id="A5.T2.6.1.10.3.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.10.3.1.1.4" style="font-size:50%;">61.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.10.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.10.4.1">
<span class="ltx_p" id="A5.T2.6.1.10.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.10.4.1.1.1" style="font-size:50%;">37.28</span><span class="ltx_text" id="A5.T2.6.1.10.4.1.1.2" style="font-size:50%;">  34.15  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.10.4.1.1.3" style="font-size:50%;">43.54</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.10.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.10.5.1">
<span class="ltx_p" id="A5.T2.6.1.10.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.10.5.1.1.1" style="font-size:50%;">31.33</span><span class="ltx_text" id="A5.T2.6.1.10.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.10.5.1.1.3" style="font-size:50%;">35.90</span><span class="ltx_text" id="A5.T2.6.1.10.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.10.5.1.1.5" style="font-size:50%;">40.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.10.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.10.6.1">
<span class="ltx_p" id="A5.T2.6.1.10.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.10.6.1.1.1" style="font-size:50%;">56.36</span><span class="ltx_text" id="A5.T2.6.1.10.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.10.6.1.1.3" style="font-size:50%;">56.30</span><span class="ltx_text" id="A5.T2.6.1.10.6.1.1.4" style="font-size:50%;">  59.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.10.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.10.7.1">
<span class="ltx_p" id="A5.T2.6.1.10.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.10.7.1.1.1" style="font-size:50%;">37.19</span><span class="ltx_text" id="A5.T2.6.1.10.7.1.1.2" style="font-size:50%;">  37.45  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.10.7.1.1.3" style="font-size:50%;">41.18</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A5.T2.6.1.11.1" rowspan="9" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.11.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T2.6.1.11.1.1.1" style="width:3.4pt;height:17.4pt;vertical-align:-7.0pt;"><span class="ltx_transformed_inner" style="width:17.4pt;transform:translate(-6.99pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T2.6.1.11.1.1.1.1">MLLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.6.1.11.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.11.2.1" style="font-size:50%;">VideoLLaMA2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.11.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.11.3.1">
<span class="ltx_p" id="A5.T2.6.1.11.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.11.3.1.1.1" style="font-size:50%;">44.94  39.71  51.18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.11.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.11.4.1">
<span class="ltx_p" id="A5.T2.6.1.11.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.11.4.1.1.1" style="font-size:50%;">33.01  38.22  45.75</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.11.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.11.5.1">
<span class="ltx_p" id="A5.T2.6.1.11.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.11.5.1.1.1" style="font-size:50%;">27.84  24.32  39.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.11.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.11.6.1">
<span class="ltx_p" id="A5.T2.6.1.11.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.11.6.1.1.1" style="font-size:50%;">20.61  21.22  36.53</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.11.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.11.7.1">
<span class="ltx_p" id="A5.T2.6.1.11.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.11.7.1.1.1" style="font-size:50%;">55.06  53.59  57.71</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.6.1.11.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.11.8.1">
<span class="ltx_p" id="A5.T2.6.1.11.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.11.8.1.1.1" style="font-size:50%;">32.94  32.92  39.10</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.12.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.12.1.1" style="font-size:50%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.12.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.12.2.1">
<span class="ltx_p" id="A5.T2.6.1.12.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.12.2.1.1.1" style="font-size:50%;">56.40  56.22  62.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.12.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.12.3.1">
<span class="ltx_p" id="A5.T2.6.1.12.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.12.3.1.1.1" style="font-size:50%;">51.00  52.43  56.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.12.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.12.4.1">
<span class="ltx_p" id="A5.T2.6.1.12.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.12.4.1.1.1" style="font-size:50%;">35.27  34.59  44.32</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.12.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.12.5.1">
<span class="ltx_p" id="A5.T2.6.1.12.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.12.5.1.1.1" style="font-size:50%;">31.24  33.91  38.54</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.12.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.12.6.1">
<span class="ltx_p" id="A5.T2.6.1.12.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.12.6.1.1.1" style="font-size:50%;">60.31</span><span class="ltx_text" id="A5.T2.6.1.12.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.12.6.1.1.3" style="font-size:50%;">56.55</span><span class="ltx_text" id="A5.T2.6.1.12.6.1.1.4" style="font-size:50%;">  59.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.12.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.12.7.1">
<span class="ltx_p" id="A5.T2.6.1.12.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.12.7.1.1.1" style="font-size:50%;">35.91</span><span class="ltx_text" id="A5.T2.6.1.12.7.1.1.2" style="font-size:50%;">  32.62  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.12.7.1.1.3" style="font-size:50%;">47.34</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.13.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.13.1.1" style="font-size:50%;">LLaVA-Video-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.13.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.13.2.1">
<span class="ltx_p" id="A5.T2.6.1.13.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.13.2.1.1.1" style="font-size:50%;">55.06  53.75  61.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.13.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.13.3.1">
<span class="ltx_p" id="A5.T2.6.1.13.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.13.3.1.1.1" style="font-size:50%;">45.63  49.25  54.33</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.13.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.13.4.1">
<span class="ltx_p" id="A5.T2.6.1.13.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.13.4.1.1.1" style="font-size:50%;">34.33  32.93  37.79</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.13.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.13.5.1">
<span class="ltx_p" id="A5.T2.6.1.13.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.13.5.1.1.1" style="font-size:50%;">29.74  33.56  32.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.13.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.13.6.1">
<span class="ltx_p" id="A5.T2.6.1.13.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.13.6.1.1.1" style="font-size:50%;">42.38  41.14  59.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.13.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.13.7.1">
<span class="ltx_p" id="A5.T2.6.1.13.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.13.7.1.1.1" style="font-size:50%;">32.02  36.64  41.97</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.14.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.14.1.1" style="font-size:50%;">LLaVA-OV-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.14.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.14.2.1">
<span class="ltx_p" id="A5.T2.6.1.14.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.14.2.1.1.1" style="font-size:50%;">52.36  51.09  61.91</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.14.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.14.3.1">
<span class="ltx_p" id="A5.T2.6.1.14.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.14.3.1.1.1" style="font-size:50%;">43.95  47.07  54.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.14.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.14.4.1">
<span class="ltx_p" id="A5.T2.6.1.14.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.14.4.1.1.1" style="font-size:50%;">32.02  31.47  43.18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.14.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.14.5.1">
<span class="ltx_p" id="A5.T2.6.1.14.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.14.5.1.1.1" style="font-size:50%;">27.47  28.91  39.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.14.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.14.6.1">
<span class="ltx_p" id="A5.T2.6.1.14.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.14.6.1.1.1" style="font-size:50%;">34.18  30.66  60.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.14.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.14.7.1">
<span class="ltx_p" id="A5.T2.6.1.14.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.14.7.1.1.1" style="font-size:50%;">26.15  32.63  42.68</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.15.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.15.1.1" style="font-size:50%;">MiniCPM-V-2.6-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.15.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.15.2.1">
<span class="ltx_p" id="A5.T2.6.1.15.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.15.2.1.1.1" style="font-size:50%;">41.35  43.72  60.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.15.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.15.3.1">
<span class="ltx_p" id="A5.T2.6.1.15.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.15.3.1.1.1" style="font-size:50%;">37.20  35.27  54.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.15.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.15.4.1">
<span class="ltx_p" id="A5.T2.6.1.15.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.15.4.1.1.1" style="font-size:50%;">21.10  24.62  41.75</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.15.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.15.5.1">
<span class="ltx_p" id="A5.T2.6.1.15.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.15.5.1.1.1" style="font-size:50%;">21.51  19.08  36.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.15.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.15.6.1">
<span class="ltx_p" id="A5.T2.6.1.15.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.15.6.1.1.1" style="font-size:50%;">31.03  36.70  62.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.15.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.15.7.1">
<span class="ltx_p" id="A5.T2.6.1.15.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.15.7.1.1.1" style="font-size:50%;">28.64  27.00  38.88</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.16.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.16.1.1" style="font-size:50%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.16.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.16.2.1">
<span class="ltx_p" id="A5.T2.6.1.16.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.16.2.1.1.1" style="font-size:50%;">61.35  60.89  65.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.16.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.16.3.1">
<span class="ltx_p" id="A5.T2.6.1.16.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.16.3.1.1.1" style="font-size:50%;">55.47  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.16.3.1.1.2" style="font-size:50%;">60.14</span><span class="ltx_text" id="A5.T2.6.1.16.3.1.1.3" style="font-size:50%;">  57.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.16.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.16.4.1">
<span class="ltx_p" id="A5.T2.6.1.16.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.16.4.1.1.1" style="font-size:50%;">39.50  39.91  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.16.4.1.1.2" style="font-size:50%;">51.32</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.16.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.16.5.1">
<span class="ltx_p" id="A5.T2.6.1.16.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.16.5.1.1.1" style="font-size:50%;">36.25  39.84  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.16.5.1.1.2" style="font-size:50%;">42.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.16.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.16.6.1">
<span class="ltx_p" id="A5.T2.6.1.16.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.16.6.1.1.1" style="font-size:50%;">63.18</span><span class="ltx_text" id="A5.T2.6.1.16.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.16.6.1.1.3" style="font-size:50%;">60.06</span><span class="ltx_text" id="A5.T2.6.1.16.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.16.6.1.1.5" style="font-size:50%;">63.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.16.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.16.7.1">
<span class="ltx_p" id="A5.T2.6.1.16.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.16.7.1.1.1" style="font-size:50%;">41.17</span><span class="ltx_text" id="A5.T2.6.1.16.7.1.1.2" style="font-size:50%;">  37.72  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.16.7.1.1.3" style="font-size:50%;">50.21</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.17.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.17.1.1" style="font-size:50%;">LLaVA-Video-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.17.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.17.2.1">
<span class="ltx_p" id="A5.T2.6.1.17.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.17.2.1.1.1" style="font-size:50%;">62.70  62.42  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.17.2.1.1.2" style="font-size:50%;">68.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.17.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.17.3.1">
<span class="ltx_p" id="A5.T2.6.1.17.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.17.3.1.1.1" style="font-size:50%;">55.78  59.27  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.17.3.1.1.2" style="font-size:50%;">60.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.17.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.17.4.1">
<span class="ltx_p" id="A5.T2.6.1.17.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.17.4.1.1.1" style="font-size:50%;">40.88  40.28  48.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.17.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.17.5.1">
<span class="ltx_p" id="A5.T2.6.1.17.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.17.5.1.1.1" style="font-size:50%;">36.18  41.36  41.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.17.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.17.6.1">
<span class="ltx_p" id="A5.T2.6.1.17.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.17.6.1.1.1" style="font-size:50%;">40.23  37.37  62.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.17.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.17.7.1">
<span class="ltx_p" id="A5.T2.6.1.17.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.17.7.1.1.1" style="font-size:50%;">33.69  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.17.7.1.1.2" style="font-size:50%;">42.73</span><span class="ltx_text" id="A5.T2.6.1.17.7.1.1.3" style="font-size:50%;">  35.99</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.6.1.18.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.18.1.1" style="font-size:50%;">LLaVA-OV-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.18.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.18.2.1">
<span class="ltx_p" id="A5.T2.6.1.18.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.18.2.1.1.1" style="font-size:50%;">62.92</span><span class="ltx_text" id="A5.T2.6.1.18.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.18.2.1.1.3" style="font-size:50%;">62.46</span><span class="ltx_text" id="A5.T2.6.1.18.2.1.1.4" style="font-size:50%;">  67.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.18.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.18.3.1">
<span class="ltx_p" id="A5.T2.6.1.18.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.18.3.1.1.1" style="font-size:50%;">55.88</span><span class="ltx_text" id="A5.T2.6.1.18.3.1.1.2" style="font-size:50%;">  59.17  59.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.18.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.18.4.1">
<span class="ltx_p" id="A5.T2.6.1.18.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.18.4.1.1.1" style="font-size:50%;">43.78</span><span class="ltx_text" id="A5.T2.6.1.18.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.18.4.1.1.3" style="font-size:50%;">43.12</span><span class="ltx_text" id="A5.T2.6.1.18.4.1.1.4" style="font-size:50%;">  48.60</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.18.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.18.5.1">
<span class="ltx_p" id="A5.T2.6.1.18.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.18.5.1.1.1" style="font-size:50%;">38.80</span><span class="ltx_text" id="A5.T2.6.1.18.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.18.5.1.1.3" style="font-size:50%;">42.63</span><span class="ltx_text" id="A5.T2.6.1.18.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.18.5.1.1.5" style="font-size:50%;">42.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.18.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.18.6.1">
<span class="ltx_p" id="A5.T2.6.1.18.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.18.6.1.1.1" style="font-size:50%;">41.30  39.68  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.18.6.1.1.2" style="font-size:50%;">63.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.6.1.18.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.18.7.1">
<span class="ltx_p" id="A5.T2.6.1.18.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.18.7.1.1.1" style="font-size:50%;">34.59  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.18.7.1.1.2" style="font-size:50%;">40.73</span><span class="ltx_text" id="A5.T2.6.1.18.7.1.1.3" style="font-size:50%;">  41.25</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.6.1.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A5.T2.6.1.19.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.6.1.19.1.1" style="font-size:50%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.6.1.19.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.19.2.1">
<span class="ltx_p" id="A5.T2.6.1.19.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.19.2.1.1.1" style="font-size:50%;">63.37</span><span class="ltx_text" id="A5.T2.6.1.19.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.19.2.1.1.3" style="font-size:50%;">63.68</span><span class="ltx_text" id="A5.T2.6.1.19.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.19.2.1.1.5" style="font-size:50%;">69.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.6.1.19.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.19.3.1">
<span class="ltx_p" id="A5.T2.6.1.19.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.6.1.19.3.1.1.1" style="font-size:50%;">58.37</span><span class="ltx_text" id="A5.T2.6.1.19.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.19.3.1.1.3" style="font-size:50%;">61.46</span><span class="ltx_text" id="A5.T2.6.1.19.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.19.3.1.1.5" style="font-size:50%;">62.13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.6.1.19.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.19.4.1">
<span class="ltx_p" id="A5.T2.6.1.19.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.19.4.1.1.1" style="font-size:50%;">42.32</span><span class="ltx_text" id="A5.T2.6.1.19.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.19.4.1.1.3" style="font-size:50%;">43.60</span><span class="ltx_text" id="A5.T2.6.1.19.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.6.1.19.4.1.1.5" style="font-size:50%;">52.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.6.1.19.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.19.5.1">
<span class="ltx_p" id="A5.T2.6.1.19.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.6.1.19.5.1.1.1" style="font-size:50%;">37.49</span><span class="ltx_text" id="A5.T2.6.1.19.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.6.1.19.5.1.1.3" style="font-size:50%;">42.38</span><span class="ltx_text" id="A5.T2.6.1.19.5.1.1.4" style="font-size:50%;">  42.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.6.1.19.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.19.6.1">
<span class="ltx_p" id="A5.T2.6.1.19.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.19.6.1.1.1" style="font-size:50%;">51.17  52.80  61.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.6.1.19.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.6.1.19.7.1">
<span class="ltx_p" id="A5.T2.6.1.19.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.6.1.19.7.1.1.1" style="font-size:50%;">21.32  23.99  21.05</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various Large Language Models (LLMs) and Multimodal Large Language Models (MLLMs) on the MMLA benchmark using zero-shot inference.  It shows the performance of each model across nine datasets, encompassing six key dimensions of multimodal semantics: intent, emotion, dialogue act, sentiment, speaking style, and communication behavior. The results are broken down for each dataset and include accuracy (ACC), weighted F1-score (WF1), weighted precision (WP), macro F1-score (F1), recall (R), and precision (P). This allows for a detailed comparison of model performance across different modalities and semantic complexity.
> <details>
> <summary>read the caption</summary>
> Table 2:  Full experimental results on the MMLA benchmark using zero-shot inference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T2.7.1">
<tr class="ltx_tr" id="A5.T2.7.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A5.T2.7.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T2.7.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.1.2.1" style="font-size:50%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.7.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.1.3.1" style="font-size:50%;">IEMOCAP</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.7.1.1.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.1.4.1" style="font-size:50%;">MELD-DA</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.7.1.1.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.1.5.1" style="font-size:50%;">IEMOCAP-DA</span></td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.2">
<td class="ltx_td ltx_border_r" id="A5.T2.7.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.7.1.2.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.2.2.1" style="font-size:50%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.2.3.1">
<span class="ltx_p" id="A5.T2.7.1.2.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.2.3.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.2.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.2.4.1">
<span class="ltx_p" id="A5.T2.7.1.2.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.2.4.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.2.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.2.5.1">
<span class="ltx_p" id="A5.T2.7.1.2.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.2.5.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.2.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.2.6.1">
<span class="ltx_p" id="A5.T2.7.1.2.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.2.6.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.2.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.2.7.1">
<span class="ltx_p" id="A5.T2.7.1.2.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.2.7.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.2.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.2.8.1">
<span class="ltx_p" id="A5.T2.7.1.2.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.2.8.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T2.7.1.3.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.3.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T2.7.1.3.1.1.1" style="width:3.4pt;height:12.8pt;vertical-align:-4.7pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-4.69pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T2.7.1.3.1.1.1.1">LLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.7.1.3.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.3.2.1" style="font-size:50%;">Qwen2-0.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.3.3.1">
<span class="ltx_p" id="A5.T2.7.1.3.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.3.3.1.1.1" style="font-size:50%;">24.91  12.40  41.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.3.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.3.4.1">
<span class="ltx_p" id="A5.T2.7.1.3.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.3.4.1.1.1" style="font-size:50%;">9.53  16.82  30.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.3.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.3.5.1">
<span class="ltx_p" id="A5.T2.7.1.3.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.3.5.1.1.1" style="font-size:50%;">4.75  2.06  8.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.3.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.3.6.1">
<span class="ltx_p" id="A5.T2.7.1.3.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.3.6.1.1.1" style="font-size:50%;">4.31  8.87  7.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.3.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.3.7.1">
<span class="ltx_p" id="A5.T2.7.1.3.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.3.7.1.1.1" style="font-size:50%;">2.65  2.92  19.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.3.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.3.8.1">
<span class="ltx_p" id="A5.T2.7.1.3.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.3.8.1.1.1" style="font-size:50%;">4.49  13.73  9.53</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.4.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.4.1.1" style="font-size:50%;">Llama-3.2-1B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.4.2.1">
<span class="ltx_p" id="A5.T2.7.1.4.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.4.2.1.1.1" style="font-size:50%;">24.17  23.21  41.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.4.3.1">
<span class="ltx_p" id="A5.T2.7.1.4.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.4.3.1.1.1" style="font-size:50%;">19.17  21.45  35.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.4.4.1">
<span class="ltx_p" id="A5.T2.7.1.4.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.4.4.1.1.1" style="font-size:50%;">11.41  8.74  13.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.4.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.4.5.1">
<span class="ltx_p" id="A5.T2.7.1.4.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.4.5.1.1.1" style="font-size:50%;">9.86  13.01  12.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.4.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.4.6.1">
<span class="ltx_p" id="A5.T2.7.1.4.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.4.6.1.1.1" style="font-size:50%;">18.21  13.09  16.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.4.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.4.7.1">
<span class="ltx_p" id="A5.T2.7.1.4.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.4.7.1.1.1" style="font-size:50%;">10.74  18.45  12.60</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.5.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.5.1.1" style="font-size:50%;">Qwen2-1.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.5.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.5.2.1">
<span class="ltx_p" id="A5.T2.7.1.5.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.5.2.1.1.1" style="font-size:50%;">33.79  29.16  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.5.2.1.1.2" style="font-size:50%;">49.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.5.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.5.3.1">
<span class="ltx_p" id="A5.T2.7.1.5.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.5.3.1.1.1" style="font-size:50%;">24.17  26.56  41.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.5.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.5.4.1">
<span class="ltx_p" id="A5.T2.7.1.5.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.5.4.1.1.1" style="font-size:50%;">31.43  27.45  37.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.5.5.1">
<span class="ltx_p" id="A5.T2.7.1.5.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.5.5.1.1.1" style="font-size:50%;">21.87  27.10  25.37</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.5.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.5.6.1">
<span class="ltx_p" id="A5.T2.7.1.5.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.5.6.1.1.1" style="font-size:50%;">38.32  32.71  35.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.5.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.5.7.1">
<span class="ltx_p" id="A5.T2.7.1.5.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.5.7.1.1.1" style="font-size:50%;">21.93  26.21  22.16</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.6.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.6.1.1" style="font-size:50%;">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.6.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.6.2.1">
<span class="ltx_p" id="A5.T2.7.1.6.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.6.2.1.1.1" style="font-size:50%;">35.02  35.47  42.31</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.6.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.6.3.1">
<span class="ltx_p" id="A5.T2.7.1.6.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.6.3.1.1.1" style="font-size:50%;">29.34  28.98  35.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.6.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.6.4.1">
<span class="ltx_p" id="A5.T2.7.1.6.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.6.4.1.1.1" style="font-size:50%;">33.08  33.65  45.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.6.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.6.5.1">
<span class="ltx_p" id="A5.T2.7.1.6.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.6.5.1.1.1" style="font-size:50%;">25.61  34.62  28.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.6.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.6.6.1">
<span class="ltx_p" id="A5.T2.7.1.6.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.6.6.1.1.1" style="font-size:50%;">33.92  34.88  44.73</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.6.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.6.7.1">
<span class="ltx_p" id="A5.T2.7.1.6.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.6.7.1.1.1" style="font-size:50%;">21.81  31.54  23.71</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.7.1.1" style="font-size:50%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.7.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.7.2.1">
<span class="ltx_p" id="A5.T2.7.1.7.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.7.2.1.1.1" style="font-size:50%;">39.27</span><span class="ltx_text" id="A5.T2.7.1.7.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.7.2.1.1.3" style="font-size:50%;">37.35</span><span class="ltx_text" id="A5.T2.7.1.7.2.1.1.4" style="font-size:50%;">  48.95</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.7.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.7.3.1">
<span class="ltx_p" id="A5.T2.7.1.7.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.7.3.1.1.1" style="font-size:50%;">31.11  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.7.3.1.1.2" style="font-size:50%;">31.54</span><span class="ltx_text" id="A5.T2.7.1.7.3.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.7.3.1.1.4" style="font-size:50%;">41.75</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.7.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.7.4.1">
<span class="ltx_p" id="A5.T2.7.1.7.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.7.4.1.1.1" style="font-size:50%;">35.84  35.77  46.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.7.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.7.5.1">
<span class="ltx_p" id="A5.T2.7.1.7.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.7.5.1.1.1" style="font-size:50%;">29.72</span><span class="ltx_text" id="A5.T2.7.1.7.5.1.1.2" style="font-size:50%;">  35.78  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.7.5.1.1.3" style="font-size:50%;">33.05</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.7.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.7.6.1">
<span class="ltx_p" id="A5.T2.7.1.7.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.7.6.1.1.1" style="font-size:50%;">41.08  40.13  50.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.7.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.7.7.1">
<span class="ltx_p" id="A5.T2.7.1.7.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.7.7.1.1.1" style="font-size:50%;">28.92</span><span class="ltx_text" id="A5.T2.7.1.7.7.1.1.2" style="font-size:50%;">  33.65  32.85</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.8.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.8.1.1" style="font-size:50%;">Llama-3-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.8.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.8.2.1">
<span class="ltx_p" id="A5.T2.7.1.8.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.8.2.1.1.1" style="font-size:50%;">37.73  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.8.2.1.1.2" style="font-size:50%;">39.01</span><span class="ltx_text" id="A5.T2.7.1.8.2.1.1.3" style="font-size:50%;">  43.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.8.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.8.3.1">
<span class="ltx_p" id="A5.T2.7.1.8.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.8.3.1.1.1" style="font-size:50%;">32.77</span><span class="ltx_text" id="A5.T2.7.1.8.3.1.1.2" style="font-size:50%;">  31.41  36.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.8.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.8.4.1">
<span class="ltx_p" id="A5.T2.7.1.8.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.8.4.1.1.1" style="font-size:50%;">42.09</span><span class="ltx_text" id="A5.T2.7.1.8.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.8.4.1.1.3" style="font-size:50%;">40.19</span><span class="ltx_text" id="A5.T2.7.1.8.4.1.1.4" style="font-size:50%;">  44.32</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.8.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.8.5.1">
<span class="ltx_p" id="A5.T2.7.1.8.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.8.5.1.1.1" style="font-size:50%;">30.59</span><span class="ltx_text" id="A5.T2.7.1.8.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.8.5.1.1.3" style="font-size:50%;">36.56</span><span class="ltx_text" id="A5.T2.7.1.8.5.1.1.4" style="font-size:50%;">  32.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.8.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.8.6.1">
<span class="ltx_p" id="A5.T2.7.1.8.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.8.6.1.1.1" style="font-size:50%;">43.58</span><span class="ltx_text" id="A5.T2.7.1.8.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.8.6.1.1.3" style="font-size:50%;">42.09</span><span class="ltx_text" id="A5.T2.7.1.8.6.1.1.4" style="font-size:50%;">  52.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.8.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.8.7.1">
<span class="ltx_p" id="A5.T2.7.1.8.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.8.7.1.1.1" style="font-size:50%;">30.30</span><span class="ltx_text" id="A5.T2.7.1.8.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.8.7.1.1.3" style="font-size:50%;">34.17</span><span class="ltx_text" id="A5.T2.7.1.8.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.8.7.1.1.5" style="font-size:50%;">35.45</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.9.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.9.1.1" style="font-size:50%;">Llama-3.1-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.9.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.9.2.1">
<span class="ltx_p" id="A5.T2.7.1.9.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.9.2.1.1.1" style="font-size:50%;">35.82  36.93  44.32</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.9.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.9.3.1">
<span class="ltx_p" id="A5.T2.7.1.9.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.9.3.1.1.1" style="font-size:50%;">31.29</span><span class="ltx_text" id="A5.T2.7.1.9.3.1.1.2" style="font-size:50%;">  29.65  38.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.9.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.9.4.1">
<span class="ltx_p" id="A5.T2.7.1.9.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.9.4.1.1.1" style="font-size:50%;">39.34  38.96  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.9.4.1.1.2" style="font-size:50%;">47.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.9.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.9.5.1">
<span class="ltx_p" id="A5.T2.7.1.9.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.9.5.1.1.1" style="font-size:50%;">29.07  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.9.5.1.1.2" style="font-size:50%;">39.52</span><span class="ltx_text" id="A5.T2.7.1.9.5.1.1.3" style="font-size:50%;">  29.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.9.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.9.6.1">
<span class="ltx_p" id="A5.T2.7.1.9.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.9.6.1.1.1" style="font-size:50%;">40.34  40.59  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.9.6.1.1.2" style="font-size:50%;">53.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.9.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.9.7.1">
<span class="ltx_p" id="A5.T2.7.1.9.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.9.7.1.1.1" style="font-size:50%;">27.33  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.9.7.1.1.2" style="font-size:50%;">34.76</span><span class="ltx_text" id="A5.T2.7.1.9.7.1.1.3" style="font-size:50%;">  30.47</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.10.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.10.1.1" style="font-size:50%;">Internlm-2.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.10.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.10.2.1">
<span class="ltx_p" id="A5.T2.7.1.10.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.10.2.1.1.1" style="font-size:50%;">38.84</span><span class="ltx_text" id="A5.T2.7.1.10.2.1.1.2" style="font-size:50%;">  35.17  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.10.2.1.1.3" style="font-size:50%;">50.73</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.10.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.10.3.1">
<span class="ltx_p" id="A5.T2.7.1.10.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.10.3.1.1.1" style="font-size:50%;">29.87  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.10.3.1.1.2" style="font-size:50%;">32.29</span><span class="ltx_text" id="A5.T2.7.1.10.3.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.10.3.1.1.4" style="font-size:50%;">41.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.10.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.10.4.1">
<span class="ltx_p" id="A5.T2.7.1.10.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.10.4.1.1.1" style="font-size:50%;">46.30</span><span class="ltx_text" id="A5.T2.7.1.10.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.10.4.1.1.3" style="font-size:50%;">41.39</span><span class="ltx_text" id="A5.T2.7.1.10.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.10.4.1.1.5" style="font-size:50%;">46.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.10.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.10.5.1">
<span class="ltx_p" id="A5.T2.7.1.10.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.10.5.1.1.1" style="font-size:50%;">26.61  30.31  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.10.5.1.1.2" style="font-size:50%;">37.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.10.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.10.6.1">
<span class="ltx_p" id="A5.T2.7.1.10.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.10.6.1.1.1" style="font-size:50%;">44.59</span><span class="ltx_text" id="A5.T2.7.1.10.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.10.6.1.1.3" style="font-size:50%;">40.68</span><span class="ltx_text" id="A5.T2.7.1.10.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.10.6.1.1.5" style="font-size:50%;">52.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.10.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.10.7.1">
<span class="ltx_p" id="A5.T2.7.1.10.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.10.7.1.1.1" style="font-size:50%;">25.65  29.36  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.10.7.1.1.2" style="font-size:50%;">38.94</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A5.T2.7.1.11.1" rowspan="9" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.11.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T2.7.1.11.1.1.1" style="width:3.4pt;height:17.4pt;vertical-align:-7.0pt;"><span class="ltx_transformed_inner" style="width:17.4pt;transform:translate(-6.99pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T2.7.1.11.1.1.1.1">MLLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.7.1.11.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.11.2.1" style="font-size:50%;">VideoLLaMA2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.11.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.11.3.1">
<span class="ltx_p" id="A5.T2.7.1.11.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.11.3.1.1.1" style="font-size:50%;">38.29  33.38  50.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.11.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.11.4.1">
<span class="ltx_p" id="A5.T2.7.1.11.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.11.4.1.1.1" style="font-size:50%;">31.72  35.24  50.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.11.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.11.5.1">
<span class="ltx_p" id="A5.T2.7.1.11.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.11.5.1.1.1" style="font-size:50%;">40.59  38.65  39.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.11.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.11.6.1">
<span class="ltx_p" id="A5.T2.7.1.11.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.11.6.1.1.1" style="font-size:50%;">26.21  33.05  24.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.11.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.11.7.1">
<span class="ltx_p" id="A5.T2.7.1.11.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.11.7.1.1.1" style="font-size:50%;">34.50  32.14  39.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.7.1.11.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.11.8.1">
<span class="ltx_p" id="A5.T2.7.1.11.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.11.8.1.1.1" style="font-size:50%;">21.94  33.61  22.82</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.12.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.12.1.1" style="font-size:50%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.12.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.12.2.1">
<span class="ltx_p" id="A5.T2.7.1.12.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.12.2.1.1.1" style="font-size:50%;">32.24  24.16  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.12.2.1.1.2" style="font-size:50%;">58.41</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.12.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.12.3.1">
<span class="ltx_p" id="A5.T2.7.1.12.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.12.3.1.1.1" style="font-size:50%;">23.65  27.61  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.12.3.1.1.2" style="font-size:50%;">59.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.12.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.12.4.1">
<span class="ltx_p" id="A5.T2.7.1.12.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.12.4.1.1.1" style="font-size:50%;">34.78  32.42  47.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.12.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.12.5.1">
<span class="ltx_p" id="A5.T2.7.1.12.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.12.5.1.1.1" style="font-size:50%;">27.83  33.30  33.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.12.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.12.6.1">
<span class="ltx_p" id="A5.T2.7.1.12.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.12.6.1.1.1" style="font-size:50%;">38.75  32.82  38.68</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.12.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.12.7.1">
<span class="ltx_p" id="A5.T2.7.1.12.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.12.7.1.1.1" style="font-size:50%;">27.74  31.57  32.99</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.13.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.13.1.1" style="font-size:50%;">LLaVA-Video-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.13.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.13.2.1">
<span class="ltx_p" id="A5.T2.7.1.13.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.13.2.1.1.1" style="font-size:50%;">41.18  36.63  51.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.13.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.13.3.1">
<span class="ltx_p" id="A5.T2.7.1.13.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.13.3.1.1.1" style="font-size:50%;">30.20  35.50  42.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.13.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.13.4.1">
<span class="ltx_p" id="A5.T2.7.1.13.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.13.4.1.1.1" style="font-size:50%;">29.33  24.30  46.13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.13.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.13.5.1">
<span class="ltx_p" id="A5.T2.7.1.13.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.13.5.1.1.1" style="font-size:50%;">26.86  38.42  35.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.13.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.13.6.1">
<span class="ltx_p" id="A5.T2.7.1.13.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.13.6.1.1.1" style="font-size:50%;">37.00  30.57  40.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.13.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.13.7.1">
<span class="ltx_p" id="A5.T2.7.1.13.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.13.7.1.1.1" style="font-size:50%;">25.47  34.41  30.04</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.14.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.14.1.1" style="font-size:50%;">LLaVA-OV-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.14.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.14.2.1">
<span class="ltx_p" id="A5.T2.7.1.14.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.14.2.1.1.1" style="font-size:50%;">39.09  35.20  48.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.14.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.14.3.1">
<span class="ltx_p" id="A5.T2.7.1.14.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.14.3.1.1.1" style="font-size:50%;">33.19  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.14.3.1.1.2" style="font-size:50%;">40.93</span><span class="ltx_text" id="A5.T2.7.1.14.3.1.1.3" style="font-size:50%;">  47.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.14.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.14.4.1">
<span class="ltx_p" id="A5.T2.7.1.14.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.14.4.1.1.1" style="font-size:50%;">31.33  26.16  34.38</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.14.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.14.5.1">
<span class="ltx_p" id="A5.T2.7.1.14.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.14.5.1.1.1" style="font-size:50%;">26.83  32.78  29.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.14.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.14.6.1">
<span class="ltx_p" id="A5.T2.7.1.14.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.14.6.1.1.1" style="font-size:50%;">38.75  30.89  41.71</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.14.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.14.7.1">
<span class="ltx_p" id="A5.T2.7.1.14.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.14.7.1.1.1" style="font-size:50%;">26.44  29.89  37.88</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.15.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.15.1.1" style="font-size:50%;">MiniCPM-V-2.6-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.15.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.15.2.1">
<span class="ltx_p" id="A5.T2.7.1.15.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.15.2.1.1.1" style="font-size:50%;">31.94  33.12  52.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.15.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.15.3.1">
<span class="ltx_p" id="A5.T2.7.1.15.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.15.3.1.1.1" style="font-size:50%;">25.99  23.91  46.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.15.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.15.4.1">
<span class="ltx_p" id="A5.T2.7.1.15.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.15.4.1.1.1" style="font-size:50%;">27.93  24.93  42.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.15.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.15.5.1">
<span class="ltx_p" id="A5.T2.7.1.15.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.15.5.1.1.1" style="font-size:50%;">25.01  33.40  29.05</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.15.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.15.6.1">
<span class="ltx_p" id="A5.T2.7.1.15.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.15.6.1.1.1" style="font-size:50%;">33.17  31.05  38.79</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.15.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.15.7.1">
<span class="ltx_p" id="A5.T2.7.1.15.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.15.7.1.1.1" style="font-size:50%;">23.13  28.11  24.25</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.16.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.16.1.1" style="font-size:50%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.16.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.16.2.1">
<span class="ltx_p" id="A5.T2.7.1.16.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.16.2.1.1.1" style="font-size:50%;">38.29  34.03  55.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.16.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.16.3.1">
<span class="ltx_p" id="A5.T2.7.1.16.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.16.3.1.1.1" style="font-size:50%;">33.33  34.00  55.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.16.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.16.4.1">
<span class="ltx_p" id="A5.T2.7.1.16.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.16.4.1.1.1" style="font-size:50%;">38.59  34.58  53.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.16.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.16.5.1">
<span class="ltx_p" id="A5.T2.7.1.16.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.16.5.1.1.1" style="font-size:50%;">34.40  40.22  41.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.16.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.16.6.1">
<span class="ltx_p" id="A5.T2.7.1.16.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.16.6.1.1.1" style="font-size:50%;">44.32  36.16  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.16.6.1.1.2" style="font-size:50%;">55.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.16.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.16.7.1">
<span class="ltx_p" id="A5.T2.7.1.16.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.16.7.1.1.1" style="font-size:50%;">34.17  35.85  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.16.7.1.1.2" style="font-size:50%;">45.28</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.17.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.17.1.1" style="font-size:50%;">LLaVA-Video-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.17.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.17.2.1">
<span class="ltx_p" id="A5.T2.7.1.17.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.17.2.1.1.1" style="font-size:50%;">43.53</span><span class="ltx_text" id="A5.T2.7.1.17.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.17.2.1.1.3" style="font-size:50%;">41.81</span><span class="ltx_text" id="A5.T2.7.1.17.2.1.1.4" style="font-size:50%;">  48.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.17.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.17.3.1">
<span class="ltx_p" id="A5.T2.7.1.17.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.17.3.1.1.1" style="font-size:50%;">35.32</span><span class="ltx_text" id="A5.T2.7.1.17.3.1.1.2" style="font-size:50%;">  38.44  41.19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.17.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.17.4.1">
<span class="ltx_p" id="A5.T2.7.1.17.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.17.4.1.1.1" style="font-size:50%;">50.25</span><span class="ltx_text" id="A5.T2.7.1.17.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.17.4.1.1.3" style="font-size:50%;">47.22</span><span class="ltx_text" id="A5.T2.7.1.17.4.1.1.4" style="font-size:50%;">  50.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.17.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.17.5.1">
<span class="ltx_p" id="A5.T2.7.1.17.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.17.5.1.1.1" style="font-size:50%;">38.62</span><span class="ltx_text" id="A5.T2.7.1.17.5.1.1.2" style="font-size:50%;">  39.79  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.17.5.1.1.3" style="font-size:50%;">45.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.17.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.17.6.1">
<span class="ltx_p" id="A5.T2.7.1.17.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.17.6.1.1.1" style="font-size:50%;">52.87</span><span class="ltx_text" id="A5.T2.7.1.17.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.17.6.1.1.3" style="font-size:50%;">50.11</span><span class="ltx_text" id="A5.T2.7.1.17.6.1.1.4" style="font-size:50%;">  54.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.17.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.17.7.1">
<span class="ltx_p" id="A5.T2.7.1.17.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.17.7.1.1.1" style="font-size:50%;">36.84</span><span class="ltx_text" id="A5.T2.7.1.17.7.1.1.2" style="font-size:50%;">  38.05  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.17.7.1.1.3" style="font-size:50%;">42.04</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.7.1.18.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.18.1.1" style="font-size:50%;">LLaVA-OV-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.18.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.18.2.1">
<span class="ltx_p" id="A5.T2.7.1.18.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.18.2.1.1.1" style="font-size:50%;">43.46  41.59  49.79</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.18.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.18.3.1">
<span class="ltx_p" id="A5.T2.7.1.18.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.18.3.1.1.1" style="font-size:50%;">34.67  35.95  43.05</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.18.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.18.4.1">
<span class="ltx_p" id="A5.T2.7.1.18.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.18.4.1.1.1" style="font-size:50%;">48.95  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.18.4.1.1.2" style="font-size:50%;">47.10</span><span class="ltx_text" id="A5.T2.7.1.18.4.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.18.4.1.1.4" style="font-size:50%;">55.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.18.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.18.5.1">
<span class="ltx_p" id="A5.T2.7.1.18.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.18.5.1.1.1" style="font-size:50%;">37.64</span><span class="ltx_text" id="A5.T2.7.1.18.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.18.5.1.1.3" style="font-size:50%;">41.78</span><span class="ltx_text" id="A5.T2.7.1.18.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.18.5.1.1.5" style="font-size:50%;">47.71</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.18.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.18.6.1">
<span class="ltx_p" id="A5.T2.7.1.18.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.18.6.1.1.1" style="font-size:50%;">52.71  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.18.6.1.1.2" style="font-size:50%;">50.64</span><span class="ltx_text" id="A5.T2.7.1.18.6.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.18.6.1.1.4" style="font-size:50%;">55.37</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.7.1.18.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.18.7.1">
<span class="ltx_p" id="A5.T2.7.1.18.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.18.7.1.1.1" style="font-size:50%;">35.60</span><span class="ltx_text" id="A5.T2.7.1.18.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.18.7.1.1.3" style="font-size:50%;">38.68</span><span class="ltx_text" id="A5.T2.7.1.18.7.1.1.4" style="font-size:50%;">  38.01</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.7.1.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A5.T2.7.1.19.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.7.1.19.1.1" style="font-size:50%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.7.1.19.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.19.2.1">
<span class="ltx_p" id="A5.T2.7.1.19.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.19.2.1.1.1" style="font-size:50%;">45.81</span><span class="ltx_text" id="A5.T2.7.1.19.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.19.2.1.1.3" style="font-size:50%;">43.38</span><span class="ltx_text" id="A5.T2.7.1.19.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.19.2.1.1.5" style="font-size:50%;">55.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.7.1.19.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.19.3.1">
<span class="ltx_p" id="A5.T2.7.1.19.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.19.3.1.1.1" style="font-size:50%;">40.26</span><span class="ltx_text" id="A5.T2.7.1.19.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.19.3.1.1.3" style="font-size:50%;">40.77</span><span class="ltx_text" id="A5.T2.7.1.19.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.7.1.19.3.1.1.5" style="font-size:50%;">58.40</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.7.1.19.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.19.4.1">
<span class="ltx_p" id="A5.T2.7.1.19.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.7.1.19.4.1.1.1" style="font-size:50%;">49.00</span><span class="ltx_text" id="A5.T2.7.1.19.4.1.1.2" style="font-size:50%;">  46.50  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.19.4.1.1.3" style="font-size:50%;">55.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.7.1.19.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.19.5.1">
<span class="ltx_p" id="A5.T2.7.1.19.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.19.5.1.1.1" style="font-size:50%;">36.70  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.19.5.1.1.2" style="font-size:50%;">46.24</span><span class="ltx_text" id="A5.T2.7.1.19.5.1.1.3" style="font-size:50%;">  40.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.7.1.19.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.19.6.1">
<span class="ltx_p" id="A5.T2.7.1.19.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.7.1.19.6.1.1.1" style="font-size:50%;">53.56</span><span class="ltx_text" id="A5.T2.7.1.19.6.1.1.2" style="font-size:50%;">  49.99  54.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.7.1.19.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.7.1.19.7.1">
<span class="ltx_p" id="A5.T2.7.1.19.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.7.1.19.7.1.1.1" style="font-size:50%;">33.80  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.7.1.19.7.1.1.2" style="font-size:50%;">40.01</span><span class="ltx_text" id="A5.T2.7.1.19.7.1.1.3" style="font-size:50%;">  34.59</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various Large Language Models (LLMs) and Multimodal Large Language Models (MLLMs) on the MMLA benchmark using supervised fine-tuning.  It shows the performance across different datasets and six evaluation dimensions (Intent, Emotion, Dialogue Act, Sentiment, Speaking Style, and Communication Behavior) using multiple metrics (ACC, WF1, WP, F1, R, P).  The results highlight the models' capabilities and limitations in handling complex multimodal language analysis tasks after fine-tuning.
> <details>
> <summary>read the caption</summary>
> Table 3:  Full experimental results on the MMLA benchmark using supervised fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T2.8.1">
<tr class="ltx_tr" id="A5.T2.8.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A5.T2.8.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T2.8.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.1.2.1" style="font-size:50%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.8.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.1.3.1" style="font-size:50%;">MOSI</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.8.1.1.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.1.4.1" style="font-size:50%;">CH-SIMS v2.0</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.8.1.1.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.1.5.1" style="font-size:50%;">UR-FUNNY-v2</span></td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.2">
<td class="ltx_td ltx_border_r" id="A5.T2.8.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.8.1.2.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.2.2.1" style="font-size:50%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.2.3.1">
<span class="ltx_p" id="A5.T2.8.1.2.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.2.3.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.2.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.2.4.1">
<span class="ltx_p" id="A5.T2.8.1.2.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.2.4.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.2.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.2.5.1">
<span class="ltx_p" id="A5.T2.8.1.2.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.2.5.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.2.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.2.6.1">
<span class="ltx_p" id="A5.T2.8.1.2.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.2.6.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.2.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.2.7.1">
<span class="ltx_p" id="A5.T2.8.1.2.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.2.7.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.2.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.2.8.1">
<span class="ltx_p" id="A5.T2.8.1.2.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.2.8.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T2.8.1.3.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.3.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T2.8.1.3.1.1.1" style="width:3.4pt;height:12.8pt;vertical-align:-4.7pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-4.69pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T2.8.1.3.1.1.1.1">LLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.8.1.3.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.3.2.1" style="font-size:50%;">Qwen2-0.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.3.3.1">
<span class="ltx_p" id="A5.T2.8.1.3.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.3.3.1.1.1" style="font-size:50%;">61.22  67.27  74.76</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.3.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.3.4.1">
<span class="ltx_p" id="A5.T2.8.1.3.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.3.4.1.1.1" style="font-size:50%;">44.83  40.79  49.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.3.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.3.5.1">
<span class="ltx_p" id="A5.T2.8.1.3.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.3.5.1.1.1" style="font-size:50%;">27.47  25.21  68.65</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.3.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.3.6.1">
<span class="ltx_p" id="A5.T2.8.1.3.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.3.6.1.1.1" style="font-size:50%;">25.24  38.77  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.3.6.1.1.2" style="font-size:50%;">54.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.3.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.3.7.1">
<span class="ltx_p" id="A5.T2.8.1.3.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.3.7.1.1.1" style="font-size:50%;">45.27  47.11  49.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.3.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.3.8.1">
<span class="ltx_p" id="A5.T2.8.1.3.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.3.8.1.1.1" style="font-size:50%;">31.42  30.21  32.84</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.4.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.4.1.1" style="font-size:50%;">Llama-3.2-1B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.4.2.1">
<span class="ltx_p" id="A5.T2.8.1.4.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.4.2.1.1.1" style="font-size:50%;">70.99  72.57  78.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.4.3.1">
<span class="ltx_p" id="A5.T2.8.1.4.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.4.3.1.1.1" style="font-size:50%;">48.36  47.23  52.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.4.4.1">
<span class="ltx_p" id="A5.T2.8.1.4.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.4.4.1.1.1" style="font-size:50%;">65.28  61.12  58.60</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.4.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.4.5.1">
<span class="ltx_p" id="A5.T2.8.1.4.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.4.5.1.1.1" style="font-size:50%;">34.55  36.63  33.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.4.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.4.6.1">
<span class="ltx_p" id="A5.T2.8.1.4.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.4.6.1.1.1" style="font-size:50%;">55.43  55.08  55.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.4.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.4.7.1">
<span class="ltx_p" id="A5.T2.8.1.4.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.4.7.1.1.1" style="font-size:50%;">55.02  55.31  55.48</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.5.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.5.1.1" style="font-size:50%;">Qwen2-1.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.5.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.5.2.1">
<span class="ltx_p" id="A5.T2.8.1.5.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.5.2.1.1.1" style="font-size:50%;">80.17  81.50  84.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.5.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.5.3.1">
<span class="ltx_p" id="A5.T2.8.1.5.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.5.3.1.1.1" style="font-size:50%;">54.35  53.52  56.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.5.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.5.4.1">
<span class="ltx_p" id="A5.T2.8.1.5.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.5.4.1.1.1" style="font-size:50%;">65.18  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.5.4.1.1.2" style="font-size:50%;">66.94</span><span class="ltx_text" id="A5.T2.8.1.5.4.1.1.3" style="font-size:50%;">  69.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.5.5.1">
<span class="ltx_p" id="A5.T2.8.1.5.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.5.5.1.1.1" style="font-size:50%;">43.02  43.75  43.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.5.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.5.6.1">
<span class="ltx_p" id="A5.T2.8.1.5.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.5.6.1.1.1" style="font-size:50%;">62.37  61.23  63.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.5.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.5.7.1">
<span class="ltx_p" id="A5.T2.8.1.5.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.5.7.1.1.1" style="font-size:50%;">40.75  41.42  42.66</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.6.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.6.1.1" style="font-size:50%;">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.6.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.6.2.1">
<span class="ltx_p" id="A5.T2.8.1.6.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.6.2.1.1.1" style="font-size:50%;">81.20  82.52  86.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.6.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.6.3.1">
<span class="ltx_p" id="A5.T2.8.1.6.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.6.3.1.1.1" style="font-size:50%;">54.98  54.03  57.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.6.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.6.4.1">
<span class="ltx_p" id="A5.T2.8.1.6.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.6.4.1.1.1" style="font-size:50%;">66.73</span><span class="ltx_text" id="A5.T2.8.1.6.4.1.1.2" style="font-size:50%;">  65.28  64.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.6.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.6.5.1">
<span class="ltx_p" id="A5.T2.8.1.6.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.6.5.1.1.1" style="font-size:50%;">39.44  39.79  39.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.6.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.6.6.1">
<span class="ltx_p" id="A5.T2.8.1.6.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.6.6.1.1.1" style="font-size:50%;">66.80</span><span class="ltx_text" id="A5.T2.8.1.6.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.6.6.1.1.3" style="font-size:50%;">66.79</span><span class="ltx_text" id="A5.T2.8.1.6.6.1.1.4" style="font-size:50%;">  66.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.6.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.6.7.1">
<span class="ltx_p" id="A5.T2.8.1.6.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.6.7.1.1.1" style="font-size:50%;">66.78</span><span class="ltx_text" id="A5.T2.8.1.6.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.6.7.1.1.3" style="font-size:50%;">66.78</span><span class="ltx_text" id="A5.T2.8.1.6.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.6.7.1.1.5" style="font-size:50%;">66.80</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.7.1.1" style="font-size:50%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.7.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.7.2.1">
<span class="ltx_p" id="A5.T2.8.1.7.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.7.2.1.1.1" style="font-size:50%;">81.92  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.7.2.1.1.2" style="font-size:50%;">85.52</span><span class="ltx_text" id="A5.T2.8.1.7.2.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.7.2.1.1.4" style="font-size:50%;">89.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.7.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.7.3.1">
<span class="ltx_p" id="A5.T2.8.1.7.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.7.3.1.1.1" style="font-size:50%;">57.01</span><span class="ltx_text" id="A5.T2.8.1.7.3.1.1.2" style="font-size:50%;">  54.60  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.7.3.1.1.3" style="font-size:50%;">59.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.7.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.7.4.1">
<span class="ltx_p" id="A5.T2.8.1.7.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.7.4.1.1.1" style="font-size:50%;">62.48  66.30  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.7.4.1.1.2" style="font-size:50%;">74.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.7.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.7.5.1">
<span class="ltx_p" id="A5.T2.8.1.7.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.7.5.1.1.1" style="font-size:50%;">43.55</span><span class="ltx_text" id="A5.T2.8.1.7.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.7.5.1.1.3" style="font-size:50%;">46.37</span><span class="ltx_text" id="A5.T2.8.1.7.5.1.1.4" style="font-size:50%;">  46.20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.7.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.7.6.1">
<span class="ltx_p" id="A5.T2.8.1.7.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.7.6.1.1.1" style="font-size:50%;">57.95  50.23  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.7.6.1.1.2" style="font-size:50%;">69.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.7.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.7.7.1">
<span class="ltx_p" id="A5.T2.8.1.7.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.7.7.1.1.1" style="font-size:50%;">33.30  38.26  46.29</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.8.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.8.1.1" style="font-size:50%;">Llama-3-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.8.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.8.2.1">
<span class="ltx_p" id="A5.T2.8.1.8.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.8.2.1.1.1" style="font-size:50%;">81.63  82.63  86.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.8.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.8.3.1">
<span class="ltx_p" id="A5.T2.8.1.8.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.8.3.1.1.1" style="font-size:50%;">55.07  54.33  57.42</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.8.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.8.4.1">
<span class="ltx_p" id="A5.T2.8.1.8.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.8.4.1.1.1" style="font-size:50%;">60.35  64.85  70.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.8.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.8.5.1">
<span class="ltx_p" id="A5.T2.8.1.8.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.8.5.1.1.1" style="font-size:50%;">41.62  39.39  44.38</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.8.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.8.6.1">
<span class="ltx_p" id="A5.T2.8.1.8.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.8.6.1.1.1" style="font-size:50%;">63.98  66.15  68.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.8.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.8.7.1">
<span class="ltx_p" id="A5.T2.8.1.8.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.8.7.1.1.1" style="font-size:50%;">44.08  42.63  45.66</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.9.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.9.1.1" style="font-size:50%;">Llama-3.1-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.9.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.9.2.1">
<span class="ltx_p" id="A5.T2.8.1.9.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.9.2.1.1.1" style="font-size:50%;">84.26</span><span class="ltx_text" id="A5.T2.8.1.9.2.1.1.2" style="font-size:50%;">  84.72  86.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.9.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.9.3.1">
<span class="ltx_p" id="A5.T2.8.1.9.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.9.3.1.1.1" style="font-size:50%;">56.46  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.9.3.1.1.2" style="font-size:50%;">56.10</span><span class="ltx_text" id="A5.T2.8.1.9.3.1.1.3" style="font-size:50%;">  57.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.9.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.9.4.1">
<span class="ltx_p" id="A5.T2.8.1.9.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.9.4.1.1.1" style="font-size:50%;">67.41</span><span class="ltx_text" id="A5.T2.8.1.9.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.9.4.1.1.3" style="font-size:50%;">68.18</span><span class="ltx_text" id="A5.T2.8.1.9.4.1.1.4" style="font-size:50%;">  69.20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.9.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.9.5.1">
<span class="ltx_p" id="A5.T2.8.1.9.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.9.5.1.1.1" style="font-size:50%;">57.49</span><span class="ltx_text" id="A5.T2.8.1.9.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.9.5.1.1.3" style="font-size:50%;">57.75</span><span class="ltx_text" id="A5.T2.8.1.9.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.9.5.1.1.5" style="font-size:50%;">57.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.9.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.9.6.1">
<span class="ltx_p" id="A5.T2.8.1.9.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.9.6.1.1.1" style="font-size:50%;">67.10</span><span class="ltx_text" id="A5.T2.8.1.9.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.9.6.1.1.3" style="font-size:50%;">67.74</span><span class="ltx_text" id="A5.T2.8.1.9.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.9.6.1.1.5" style="font-size:50%;">68.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.9.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.9.7.1">
<span class="ltx_p" id="A5.T2.8.1.9.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.9.7.1.1.1" style="font-size:50%;">45.17  44.78  45.85</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.10.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.10.1.1" style="font-size:50%;">Internlm-2.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.10.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.10.2.1">
<span class="ltx_p" id="A5.T2.8.1.10.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.10.2.1.1.1" style="font-size:50%;">84.55</span><span class="ltx_text" id="A5.T2.8.1.10.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.10.2.1.1.3" style="font-size:50%;">86.28</span><span class="ltx_text" id="A5.T2.8.1.10.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.10.2.1.1.5" style="font-size:50%;">88.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.10.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.10.3.1">
<span class="ltx_p" id="A5.T2.8.1.10.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.10.3.1.1.1" style="font-size:50%;">57.51</span><span class="ltx_text" id="A5.T2.8.1.10.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.10.3.1.1.3" style="font-size:50%;">56.34</span><span class="ltx_text" id="A5.T2.8.1.10.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.10.3.1.1.5" style="font-size:50%;">58.86</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.10.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.10.4.1">
<span class="ltx_p" id="A5.T2.8.1.10.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.10.4.1.1.1" style="font-size:50%;">62.48  65.34  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.10.4.1.1.2" style="font-size:50%;">71.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.10.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.10.5.1">
<span class="ltx_p" id="A5.T2.8.1.10.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.10.5.1.1.1" style="font-size:50%;">42.53  44.26  44.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.10.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.10.6.1">
<span class="ltx_p" id="A5.T2.8.1.10.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.10.6.1.1.1" style="font-size:50%;">61.67  58.30  66.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.10.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.10.7.1">
<span class="ltx_p" id="A5.T2.8.1.10.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.10.7.1.1.1" style="font-size:50%;">58.13</span><span class="ltx_text" id="A5.T2.8.1.10.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.10.7.1.1.3" style="font-size:50%;">61.27</span><span class="ltx_text" id="A5.T2.8.1.10.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.10.7.1.1.5" style="font-size:50%;">66.62</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A5.T2.8.1.11.1" rowspan="9" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.11.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T2.8.1.11.1.1.1" style="width:3.4pt;height:17.4pt;vertical-align:-7.0pt;"><span class="ltx_transformed_inner" style="width:17.4pt;transform:translate(-6.99pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T2.8.1.11.1.1.1.1">MLLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.8.1.11.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.11.2.1" style="font-size:50%;">VideoLLaMA2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.11.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.11.3.1">
<span class="ltx_p" id="A5.T2.8.1.11.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.11.3.1.1.1" style="font-size:50%;">79.74  79.44  81.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.11.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.11.4.1">
<span class="ltx_p" id="A5.T2.8.1.11.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.11.4.1.1.1" style="font-size:50%;">79.47  79.88  81.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.11.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.11.5.1">
<span class="ltx_p" id="A5.T2.8.1.11.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.11.5.1.1.1" style="font-size:50%;">51.90  53.52  69.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.11.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.11.6.1">
<span class="ltx_p" id="A5.T2.8.1.11.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.11.6.1.1.1" style="font-size:50%;">30.67  30.30  39.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.11.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.11.7.1">
<span class="ltx_p" id="A5.T2.8.1.11.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.11.7.1.1.1" style="font-size:50%;">64.29  61.91  68.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.8.1.11.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.11.8.1">
<span class="ltx_p" id="A5.T2.8.1.11.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.11.8.1.1.1" style="font-size:50%;">61.77  63.94  68.55</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.12.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.12.1.1" style="font-size:50%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.12.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.12.2.1">
<span class="ltx_p" id="A5.T2.8.1.12.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.12.2.1.1.1" style="font-size:50%;">86.59  86.54  87.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.12.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.12.3.1">
<span class="ltx_p" id="A5.T2.8.1.12.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.12.3.1.1.1" style="font-size:50%;">86.53</span><span class="ltx_text" id="A5.T2.8.1.12.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.12.3.1.1.3" style="font-size:50%;">86.52</span><span class="ltx_text" id="A5.T2.8.1.12.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.12.3.1.1.5" style="font-size:50%;">87.07</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.12.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.12.4.1">
<span class="ltx_p" id="A5.T2.8.1.12.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.12.4.1.1.1" style="font-size:50%;">73.91</span><span class="ltx_text" id="A5.T2.8.1.12.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.12.4.1.1.3" style="font-size:50%;">69.30</span><span class="ltx_text" id="A5.T2.8.1.12.4.1.1.4" style="font-size:50%;">  65.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.12.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.12.5.1">
<span class="ltx_p" id="A5.T2.8.1.12.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.12.5.1.1.1" style="font-size:50%;">52.30</span><span class="ltx_text" id="A5.T2.8.1.12.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.12.5.1.1.3" style="font-size:50%;">55.87</span><span class="ltx_text" id="A5.T2.8.1.12.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.12.5.1.1.5" style="font-size:50%;">49.20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.12.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.12.6.1">
<span class="ltx_p" id="A5.T2.8.1.12.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.12.6.1.1.1" style="font-size:50%;">57.65  50.96  65.42</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.12.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.12.7.1">
<span class="ltx_p" id="A5.T2.8.1.12.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.12.7.1.1.1" style="font-size:50%;">50.70  57.13  65.57</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.13.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.13.1.1" style="font-size:50%;">LLaVA-Video-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.13.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.13.2.1">
<span class="ltx_p" id="A5.T2.8.1.13.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.13.2.1.1.1" style="font-size:50%;">84.11  84.22  85.20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.13.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.13.3.1">
<span class="ltx_p" id="A5.T2.8.1.13.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.13.3.1.1.1" style="font-size:50%;">56.16  56.13  56.76</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.13.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.13.4.1">
<span class="ltx_p" id="A5.T2.8.1.13.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.13.4.1.1.1" style="font-size:50%;">57.25  61.09  68.24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.13.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.13.5.1">
<span class="ltx_p" id="A5.T2.8.1.13.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.13.5.1.1.1" style="font-size:50%;">34.65  32.76  38.30</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.13.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.13.6.1">
<span class="ltx_p" id="A5.T2.8.1.13.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.13.6.1.1.1" style="font-size:50%;">59.46  54.68  65.38</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.13.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.13.7.1">
<span class="ltx_p" id="A5.T2.8.1.13.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.13.7.1.1.1" style="font-size:50%;">54.47  59.00  65.51</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.14.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.14.1.1" style="font-size:50%;">LLaVA-ov-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.14.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.14.2.1">
<span class="ltx_p" id="A5.T2.8.1.14.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.14.2.1.1.1" style="font-size:50%;">87.17  87.49  87.86</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.14.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.14.3.1">
<span class="ltx_p" id="A5.T2.8.1.14.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.14.3.1.1.1" style="font-size:50%;">58.32  58.10  58.58</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.14.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.14.4.1">
<span class="ltx_p" id="A5.T2.8.1.14.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.14.4.1.1.1" style="font-size:50%;">67.58  66.94  68.37</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.14.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.14.5.1">
<span class="ltx_p" id="A5.T2.8.1.14.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.14.5.1.1.1" style="font-size:50%;">38.01  38.70  38.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.14.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.14.6.1">
<span class="ltx_p" id="A5.T2.8.1.14.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.14.6.1.1.1" style="font-size:50%;">56.04  46.41  68.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.14.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.14.7.1">
<span class="ltx_p" id="A5.T2.8.1.14.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.14.7.1.1.1" style="font-size:50%;">46.09  55.44  69.03</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.15.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.15.1.1" style="font-size:50%;">MiniCPM-V-2.6-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.15.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.15.2.1">
<span class="ltx_p" id="A5.T2.8.1.15.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.15.2.1.1.1" style="font-size:50%;">79.74  82.72  86.37</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.15.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.15.3.1">
<span class="ltx_p" id="A5.T2.8.1.15.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.15.3.1.1.1" style="font-size:50%;">55.14  53.12  57.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.15.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.15.4.1">
<span class="ltx_p" id="A5.T2.8.1.15.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.15.4.1.1.1" style="font-size:50%;">60.91  62.76  64.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.15.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.15.5.1">
<span class="ltx_p" id="A5.T2.8.1.15.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.15.5.1.1.1" style="font-size:50%;">35.64  34.70  36.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.15.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.15.6.1">
<span class="ltx_p" id="A5.T2.8.1.15.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.15.6.1.1.1" style="font-size:50%;">57.55  55.67  64.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.15.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.15.7.1">
<span class="ltx_p" id="A5.T2.8.1.15.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.15.7.1.1.1" style="font-size:50%;">36.99  38.11  43.39</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.16.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.16.1.1" style="font-size:50%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.16.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.16.2.1">
<span class="ltx_p" id="A5.T2.8.1.16.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.16.2.1.1.1" style="font-size:50%;">88.05</span><span class="ltx_text" id="A5.T2.8.1.16.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.16.2.1.1.3" style="font-size:50%;">88.24</span><span class="ltx_text" id="A5.T2.8.1.16.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.16.2.1.1.5" style="font-size:50%;">88.53</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.16.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.16.3.1">
<span class="ltx_p" id="A5.T2.8.1.16.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.16.3.1.1.1" style="font-size:50%;">58.83  58.71  59.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.16.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.16.4.1">
<span class="ltx_p" id="A5.T2.8.1.16.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.16.4.1.1.1" style="font-size:50%;">72.45</span><span class="ltx_text" id="A5.T2.8.1.16.4.1.1.2" style="font-size:50%;">  68.26  66.37</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.16.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.16.5.1">
<span class="ltx_p" id="A5.T2.8.1.16.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.16.5.1.1.1" style="font-size:50%;">38.65  41.41  37.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.16.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.16.6.1">
<span class="ltx_p" id="A5.T2.8.1.16.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.16.6.1.1.1" style="font-size:50%;">68.01</span><span class="ltx_text" id="A5.T2.8.1.16.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.16.6.1.1.3" style="font-size:50%;">67.03</span><span class="ltx_text" id="A5.T2.8.1.16.6.1.1.4" style="font-size:50%;">  70.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.16.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.16.7.1">
<span class="ltx_p" id="A5.T2.8.1.16.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.16.7.1.1.1" style="font-size:50%;">66.95</span><span class="ltx_text" id="A5.T2.8.1.16.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.16.7.1.1.3" style="font-size:50%;">67.77</span><span class="ltx_text" id="A5.T2.8.1.16.7.1.1.4" style="font-size:50%;">  70.15</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.17.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.17.1.1" style="font-size:50%;">LLaVA-Video-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.17.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.17.2.1">
<span class="ltx_p" id="A5.T2.8.1.17.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.17.2.1.1.1" style="font-size:50%;">86.44  86.50  86.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.17.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.17.3.1">
<span class="ltx_p" id="A5.T2.8.1.17.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.17.3.1.1.1" style="font-size:50%;">57.66  57.62  57.73</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.17.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.17.4.1">
<span class="ltx_p" id="A5.T2.8.1.17.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.17.4.1.1.1" style="font-size:50%;">66.60  67.81  70.24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.17.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.17.5.1">
<span class="ltx_p" id="A5.T2.8.1.17.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.17.5.1.1.1" style="font-size:50%;">38.45  38.00  39.58</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.17.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.17.6.1">
<span class="ltx_p" id="A5.T2.8.1.17.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.17.6.1.1.1" style="font-size:50%;">65.19  62.73  69.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.17.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.17.7.1">
<span class="ltx_p" id="A5.T2.8.1.17.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.17.7.1.1.1" style="font-size:50%;">62.59  64.83  70.13</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.8.1.18.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.18.1.1" style="font-size:50%;">LLaVA-OV-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.18.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.18.2.1">
<span class="ltx_p" id="A5.T2.8.1.18.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.18.2.1.1.1" style="font-size:50%;">88.48</span><span class="ltx_text" id="A5.T2.8.1.18.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.18.2.1.1.3" style="font-size:50%;">88.60</span><span class="ltx_text" id="A5.T2.8.1.18.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.18.2.1.1.5" style="font-size:50%;">88.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.18.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.18.3.1">
<span class="ltx_p" id="A5.T2.8.1.18.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.18.3.1.1.1" style="font-size:50%;">59.07  58.97  59.20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.18.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.18.4.1">
<span class="ltx_p" id="A5.T2.8.1.18.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.18.4.1.1.1" style="font-size:50%;">65.34  67.89  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.18.4.1.1.2" style="font-size:50%;">71.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.18.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.18.5.1">
<span class="ltx_p" id="A5.T2.8.1.18.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.18.5.1.1.1" style="font-size:50%;">38.57  37.36  40.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.18.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.18.6.1">
<span class="ltx_p" id="A5.T2.8.1.18.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.18.6.1.1.1" style="font-size:50%;">63.68  60.13  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.18.6.1.1.2" style="font-size:50%;">70.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.8.1.18.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.18.7.1">
<span class="ltx_p" id="A5.T2.8.1.18.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.18.7.1.1.1" style="font-size:50%;">59.96  63.27  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.18.7.1.1.2" style="font-size:50%;">70.55</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.8.1.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A5.T2.8.1.19.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.8.1.19.1.1" style="font-size:50%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.8.1.19.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.19.2.1">
<span class="ltx_p" id="A5.T2.8.1.19.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.19.2.1.1.1" style="font-size:50%;">87.32  87.22  88.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.8.1.19.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.19.3.1">
<span class="ltx_p" id="A5.T2.8.1.19.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.19.3.1.1.1" style="font-size:50%;">87.20</span><span class="ltx_text" id="A5.T2.8.1.19.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.3.1.1.3" style="font-size:50%;">87.22</span><span class="ltx_text" id="A5.T2.8.1.19.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.3.1.1.5" style="font-size:50%;">88.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.8.1.19.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.19.4.1">
<span class="ltx_p" id="A5.T2.8.1.19.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.8.1.19.4.1.1.1" style="font-size:50%;">67.80  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.4.1.1.2" style="font-size:50%;">71.30</span><span class="ltx_text" id="A5.T2.8.1.19.4.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.4.1.1.4" style="font-size:50%;">79.16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.8.1.19.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.19.5.1">
<span class="ltx_p" id="A5.T2.8.1.19.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.8.1.19.5.1.1.1" style="font-size:50%;">47.40</span><span class="ltx_text" id="A5.T2.8.1.19.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.8.1.19.5.1.1.3" style="font-size:50%;">51.04</span><span class="ltx_text" id="A5.T2.8.1.19.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.5.1.1.5" style="font-size:50%;">49.76</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.8.1.19.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.19.6.1">
<span class="ltx_p" id="A5.T2.8.1.19.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.19.6.1.1.1" style="font-size:50%;">73.11</span><span class="ltx_text" id="A5.T2.8.1.19.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.6.1.1.3" style="font-size:50%;">73.11</span><span class="ltx_text" id="A5.T2.8.1.19.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.6.1.1.5" style="font-size:50%;">73.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.8.1.19.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.8.1.19.7.1">
<span class="ltx_p" id="A5.T2.8.1.19.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.8.1.19.7.1.1.1" style="font-size:50%;">73.11</span><span class="ltx_text" id="A5.T2.8.1.19.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.7.1.1.3" style="font-size:50%;">73.11</span><span class="ltx_text" id="A5.T2.8.1.19.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.8.1.19.7.1.1.5" style="font-size:50%;">73.11</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various large language models (LLMs) and multimodal large language models (MLLMs) on the MMLA benchmark using instruction tuning.  It shows the performance of each model across nine datasets and six evaluation dimensions (intent, emotion, dialogue act, sentiment, speaking style, communication behavior). The results are presented for multiple metrics, including accuracy (ACC), weighted F1-score (WF1), weighted precision (WP), macro F1-score (F1), recall (R), and precision (P), providing a detailed comparison of the models' performance on diverse multimodal language analysis tasks.
> <details>
> <summary>read the caption</summary>
> Table 4:  Full experimental results on the MMLA benchmark using instruction tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T2.9.1">
<tr class="ltx_tr" id="A5.T2.9.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A5.T2.9.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T2.9.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.1.2.1" style="font-size:50%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.9.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.1.3.1" style="font-size:50%;">MUStARD</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.9.1.1.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.1.4.1" style="font-size:50%;">Anno-MI (client)</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T2.9.1.1.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.1.5.1" style="font-size:50%;">Anno-MI (therapist)</span></td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.2">
<td class="ltx_td ltx_border_r" id="A5.T2.9.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.9.1.2.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.2.2.1" style="font-size:50%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.2.3.1">
<span class="ltx_p" id="A5.T2.9.1.2.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.2.3.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.2.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.2.4.1">
<span class="ltx_p" id="A5.T2.9.1.2.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.2.4.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.2.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.2.5.1">
<span class="ltx_p" id="A5.T2.9.1.2.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.2.5.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.2.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.2.6.1">
<span class="ltx_p" id="A5.T2.9.1.2.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.2.6.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.2.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.2.7.1">
<span class="ltx_p" id="A5.T2.9.1.2.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.2.7.1.1.1" style="font-size:50%;">ACC    WF1    WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.2.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.2.8.1">
<span class="ltx_p" id="A5.T2.9.1.2.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.2.8.1.1.1" style="font-size:50%;">F1       R       P</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T2.9.1.3.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.3.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T2.9.1.3.1.1.1" style="width:3.4pt;height:12.8pt;vertical-align:-4.7pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-4.69pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T2.9.1.3.1.1.1.1">LLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.9.1.3.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.3.2.1" style="font-size:50%;">Qwen2-0.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.3.3.1">
<span class="ltx_p" id="A5.T2.9.1.3.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.3.3.1.1.1" style="font-size:50%;">50.00  33.50  25.18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.3.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.3.4.1">
<span class="ltx_p" id="A5.T2.9.1.3.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.3.4.1.1.1" style="font-size:50%;">22.33  33.33  16.79</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.3.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.3.5.1">
<span class="ltx_p" id="A5.T2.9.1.3.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.3.5.1.1.1" style="font-size:50%;">57.04</span><span class="ltx_text" id="A5.T2.9.1.3.5.1.1.2" style="font-size:50%;">  49.22  49.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.3.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.3.6.1">
<span class="ltx_p" id="A5.T2.9.1.3.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.3.6.1.1.1" style="font-size:50%;">25.14  27.58  31.72</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.3.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.3.7.1">
<span class="ltx_p" id="A5.T2.9.1.3.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.3.7.1.1.1" style="font-size:50%;">25.70  25.55  27.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.3.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.3.8.1">
<span class="ltx_p" id="A5.T2.9.1.3.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.3.8.1.1.1" style="font-size:50%;">18.76  19.27  19.71</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.4.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.4.1.1" style="font-size:50%;">Llama-3.2-1B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.4.2.1">
<span class="ltx_p" id="A5.T2.9.1.4.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.4.2.1.1.1" style="font-size:50%;">51.45  37.61  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.4.2.1.1.2" style="font-size:50%;">62.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.4.3.1">
<span class="ltx_p" id="A5.T2.9.1.4.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.4.3.1.1.1" style="font-size:50%;">37.61  51.45  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.4.3.1.1.2" style="font-size:50%;">62.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.4.4.1">
<span class="ltx_p" id="A5.T2.9.1.4.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.4.4.1.1.1" style="font-size:50%;">28.34  30.10  45.86</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.4.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.4.5.1">
<span class="ltx_p" id="A5.T2.9.1.4.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.4.5.1.1.1" style="font-size:50%;">26.30  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.4.5.1.1.2" style="font-size:50%;">34.79</span><span class="ltx_text" id="A5.T2.9.1.4.5.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.4.5.1.1.4" style="font-size:50%;">34.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.4.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.4.6.1">
<span class="ltx_p" id="A5.T2.9.1.4.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.4.6.1.1.1" style="font-size:50%;">22.19  22.89  30.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.4.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.4.7.1">
<span class="ltx_p" id="A5.T2.9.1.4.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.4.7.1.1.1" style="font-size:50%;">16.97  16.70  21.86</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.5.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.5.1.1" style="font-size:50%;">Qwen2-1.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.5.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.5.2.1">
<span class="ltx_p" id="A5.T2.9.1.5.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.5.2.1.1.1" style="font-size:50%;">52.90  52.90  52.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.5.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.5.3.1">
<span class="ltx_p" id="A5.T2.9.1.5.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.5.3.1.1.1" style="font-size:50%;">52.90</span><span class="ltx_text" id="A5.T2.9.1.5.3.1.1.2" style="font-size:50%;">  52.90  52.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.5.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.5.4.1">
<span class="ltx_p" id="A5.T2.9.1.5.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.5.4.1.1.1" style="font-size:50%;">36.67  40.45  52.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.5.5.1">
<span class="ltx_p" id="A5.T2.9.1.5.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.5.5.1.1.1" style="font-size:50%;">25.72  28.48  30.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.5.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.5.6.1">
<span class="ltx_p" id="A5.T2.9.1.5.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.5.6.1.1.1" style="font-size:50%;">40.18  37.14  47.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.5.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.5.7.1">
<span class="ltx_p" id="A5.T2.9.1.5.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.5.7.1.1.1" style="font-size:50%;">37.73  41.17  45.99</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.6.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.6.1.1" style="font-size:50%;">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.6.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.6.2.1">
<span class="ltx_p" id="A5.T2.9.1.6.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.6.2.1.1.1" style="font-size:50%;">57.25</span><span class="ltx_text" id="A5.T2.9.1.6.2.1.1.2" style="font-size:50%;">  52.16  62.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.6.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.6.3.1">
<span class="ltx_p" id="A5.T2.9.1.6.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.6.3.1.1.1" style="font-size:50%;">52.16  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.6.3.1.1.2" style="font-size:50%;">57.25</span><span class="ltx_text" id="A5.T2.9.1.6.3.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.6.3.1.1.4" style="font-size:50%;">62.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.6.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.6.4.1">
<span class="ltx_p" id="A5.T2.9.1.6.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.6.4.1.1.1" style="font-size:50%;">43.93  46.77  52.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.6.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.6.5.1">
<span class="ltx_p" id="A5.T2.9.1.6.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.6.5.1.1.1" style="font-size:50%;">28.33  26.70  32.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.6.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.6.6.1">
<span class="ltx_p" id="A5.T2.9.1.6.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.6.6.1.1.1" style="font-size:50%;">43.60  43.35  49.07</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.6.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.6.7.1">
<span class="ltx_p" id="A5.T2.9.1.6.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.6.7.1.1.1" style="font-size:50%;">34.43  34.98  38.05</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.7.1.1" style="font-size:50%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.7.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.7.2.1">
<span class="ltx_p" id="A5.T2.9.1.7.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.7.2.1.1.1" style="font-size:50%;">57.25</span><span class="ltx_text" id="A5.T2.9.1.7.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.7.2.1.1.3" style="font-size:50%;">56.45</span><span class="ltx_text" id="A5.T2.9.1.7.2.1.1.4" style="font-size:50%;">  58.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.7.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.7.3.1">
<span class="ltx_p" id="A5.T2.9.1.7.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.7.3.1.1.1" style="font-size:50%;">37.63  38.16  39.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.7.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.7.4.1">
<span class="ltx_p" id="A5.T2.9.1.7.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.7.4.1.1.1" style="font-size:50%;">49.87  49.25  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.7.4.1.1.2" style="font-size:50%;">54.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.7.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.7.5.1">
<span class="ltx_p" id="A5.T2.9.1.7.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.7.5.1.1.1" style="font-size:50%;">30.44  32.99  34.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.7.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.7.6.1">
<span class="ltx_p" id="A5.T2.9.1.7.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.7.6.1.1.1" style="font-size:50%;">54.21</span><span class="ltx_text" id="A5.T2.9.1.7.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.7.6.1.1.3" style="font-size:50%;">52.63</span><span class="ltx_text" id="A5.T2.9.1.7.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.7.6.1.1.5" style="font-size:50%;">66.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.7.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.7.7.1">
<span class="ltx_p" id="A5.T2.9.1.7.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.7.7.1.1.1" style="font-size:50%;">42.22</span><span class="ltx_text" id="A5.T2.9.1.7.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.7.7.1.1.3" style="font-size:50%;">43.93</span><span class="ltx_text" id="A5.T2.9.1.7.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.7.7.1.1.5" style="font-size:50%;">51.52</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.8.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.8.1.1" style="font-size:50%;">Llama-3-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.8.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.8.2.1">
<span class="ltx_p" id="A5.T2.9.1.8.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.8.2.1.1.1" style="font-size:50%;">52.90  54.19  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.8.2.1.1.2" style="font-size:50%;">62.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.8.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.8.3.1">
<span class="ltx_p" id="A5.T2.9.1.8.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.8.3.1.1.1" style="font-size:50%;">36.13  35.27  41.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.8.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.8.4.1">
<span class="ltx_p" id="A5.T2.9.1.8.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.8.4.1.1.1" style="font-size:50%;">47.65  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.8.4.1.1.2" style="font-size:50%;">49.98</span><span class="ltx_text" id="A5.T2.9.1.8.4.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.8.4.1.1.4" style="font-size:50%;">52.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.8.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.8.5.1">
<span class="ltx_p" id="A5.T2.9.1.8.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.8.5.1.1.1" style="font-size:50%;">30.49</span><span class="ltx_text" id="A5.T2.9.1.8.5.1.1.2" style="font-size:50%;">  29.64  31.91</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.8.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.8.6.1">
<span class="ltx_p" id="A5.T2.9.1.8.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.8.6.1.1.1" style="font-size:50%;">35.53  28.09  48.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.8.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.8.7.1">
<span class="ltx_p" id="A5.T2.9.1.8.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.8.7.1.1.1" style="font-size:50%;">25.00  31.07  40.06</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.9.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.9.1.1" style="font-size:50%;">Llama-3.1-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.9.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.9.2.1">
<span class="ltx_p" id="A5.T2.9.1.9.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.9.2.1.1.1" style="font-size:50%;">54.35  54.72  60.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.9.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.9.3.1">
<span class="ltx_p" id="A5.T2.9.1.9.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.9.3.1.1.1" style="font-size:50%;">36.48  36.23  40.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.9.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.9.4.1">
<span class="ltx_p" id="A5.T2.9.1.9.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.9.4.1.1.1" style="font-size:50%;">32.42  34.66  52.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.9.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.9.5.1">
<span class="ltx_p" id="A5.T2.9.1.9.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.9.5.1.1.1" style="font-size:50%;">24.10  25.99  30.30</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.9.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.9.6.1">
<span class="ltx_p" id="A5.T2.9.1.9.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.9.6.1.1.1" style="font-size:50%;">57.98</span><span class="ltx_text" id="A5.T2.9.1.9.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.9.6.1.1.3" style="font-size:50%;">58.53</span><span class="ltx_text" id="A5.T2.9.1.9.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.9.6.1.1.5" style="font-size:50%;">67.16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.9.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.9.7.1">
<span class="ltx_p" id="A5.T2.9.1.9.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.9.7.1.1.1" style="font-size:50%;">47.06</span><span class="ltx_text" id="A5.T2.9.1.9.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.9.7.1.1.3" style="font-size:50%;">47.51</span><span class="ltx_text" id="A5.T2.9.1.9.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.9.7.1.1.5" style="font-size:50%;">51.74</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.10.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.10.1.1" style="font-size:50%;">Internlm-2.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.10.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.10.2.1">
<span class="ltx_p" id="A5.T2.9.1.10.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.10.2.1.1.1" style="font-size:50%;">61.59</span><span class="ltx_text" id="A5.T2.9.1.10.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.10.2.1.1.3" style="font-size:50%;">61.35</span><span class="ltx_text" id="A5.T2.9.1.10.2.1.1.4" style="font-size:50%;">  61.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.10.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.10.3.1">
<span class="ltx_p" id="A5.T2.9.1.10.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.10.3.1.1.1" style="font-size:50%;">61.35</span><span class="ltx_text" id="A5.T2.9.1.10.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.10.3.1.1.3" style="font-size:50%;">61.59</span><span class="ltx_text" id="A5.T2.9.1.10.3.1.1.4" style="font-size:50%;">  61.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.10.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.10.4.1">
<span class="ltx_p" id="A5.T2.9.1.10.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.10.4.1.1.1" style="font-size:50%;">58.99</span><span class="ltx_text" id="A5.T2.9.1.10.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.10.4.1.1.3" style="font-size:50%;">51.52</span><span class="ltx_text" id="A5.T2.9.1.10.4.1.1.4" style="font-size:50%;">  51.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.10.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.10.5.1">
<span class="ltx_p" id="A5.T2.9.1.10.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.10.5.1.1.1" style="font-size:50%;">35.99</span><span class="ltx_text" id="A5.T2.9.1.10.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.10.5.1.1.3" style="font-size:50%;">38.53</span><span class="ltx_text" id="A5.T2.9.1.10.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.10.5.1.1.5" style="font-size:50%;">41.16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.10.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.10.6.1">
<span class="ltx_p" id="A5.T2.9.1.10.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.10.6.1.1.1" style="font-size:50%;">38.86  33.63  36.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.10.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.10.7.1">
<span class="ltx_p" id="A5.T2.9.1.10.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.10.7.1.1.1" style="font-size:50%;">35.64  41.57  36.28</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A5.T2.9.1.11.1" rowspan="9" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.11.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T2.9.1.11.1.1.1" style="width:3.4pt;height:17.4pt;vertical-align:-7.0pt;"><span class="ltx_transformed_inner" style="width:17.4pt;transform:translate(-6.99pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T2.9.1.11.1.1.1.1">MLLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T2.9.1.11.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.11.2.1" style="font-size:50%;">VideoLLaMA2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.11.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.11.3.1">
<span class="ltx_p" id="A5.T2.9.1.11.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.11.3.1.1.1" style="font-size:50%;">60.87</span><span class="ltx_text" id="A5.T2.9.1.11.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.11.3.1.1.3" style="font-size:50%;">60.86</span><span class="ltx_text" id="A5.T2.9.1.11.3.1.1.4" style="font-size:50%;">  60.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.11.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.11.4.1">
<span class="ltx_p" id="A5.T2.9.1.11.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.11.4.1.1.1" style="font-size:50%;">60.86</span><span class="ltx_text" id="A5.T2.9.1.11.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.11.4.1.1.3" style="font-size:50%;">60.87</span><span class="ltx_text" id="A5.T2.9.1.11.4.1.1.4" style="font-size:50%;">  60.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.11.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.11.5.1">
<span class="ltx_p" id="A5.T2.9.1.11.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.11.5.1.1.1" style="font-size:50%;">20.29  16.67  51.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.11.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.11.6.1">
<span class="ltx_p" id="A5.T2.9.1.11.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.11.6.1.1.1" style="font-size:50%;">18.43  35.57  41.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.11.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.11.7.1">
<span class="ltx_p" id="A5.T2.9.1.11.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.11.7.1.1.1" style="font-size:50%;">35.71  35.37  40.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T2.9.1.11.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.11.8.1">
<span class="ltx_p" id="A5.T2.9.1.11.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.11.8.1.1.1" style="font-size:50%;">37.00  38.85  40.91</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.12.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.12.1.1" style="font-size:50%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.12.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.12.2.1">
<span class="ltx_p" id="A5.T2.9.1.12.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.12.2.1.1.1" style="font-size:50%;">56.52  55.93  56.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.12.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.12.3.1">
<span class="ltx_p" id="A5.T2.9.1.12.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.12.3.1.1.1" style="font-size:50%;">55.93  56.52  56.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.12.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.12.4.1">
<span class="ltx_p" id="A5.T2.9.1.12.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.12.4.1.1.1" style="font-size:50%;">31.38  30.97  54.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.12.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.12.5.1">
<span class="ltx_p" id="A5.T2.9.1.12.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.12.5.1.1.1" style="font-size:50%;">25.15  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.12.5.1.1.2" style="font-size:50%;">38.30</span><span class="ltx_text" id="A5.T2.9.1.12.5.1.1.3" style="font-size:50%;">  43.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.12.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.12.6.1">
<span class="ltx_p" id="A5.T2.9.1.12.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.12.6.1.1.1" style="font-size:50%;">49.69  46.81  55.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.12.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.12.7.1">
<span class="ltx_p" id="A5.T2.9.1.12.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.12.7.1.1.1" style="font-size:50%;">40.26  43.27  44.76</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.13.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.13.1.1" style="font-size:50%;">LLaVA-Video-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.13.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.13.2.1">
<span class="ltx_p" id="A5.T2.9.1.13.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.13.2.1.1.1" style="font-size:50%;">51.45  47.69  52.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.13.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.13.3.1">
<span class="ltx_p" id="A5.T2.9.1.13.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.13.3.1.1.1" style="font-size:50%;">47.69  51.45  52.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.13.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.13.4.1">
<span class="ltx_p" id="A5.T2.9.1.13.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.13.4.1.1.1" style="font-size:50%;">38.92  42.33  49.41</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.13.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.13.5.1">
<span class="ltx_p" id="A5.T2.9.1.13.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.13.5.1.1.1" style="font-size:50%;">34.90</span><span class="ltx_text" id="A5.T2.9.1.13.5.1.1.2" style="font-size:50%;">  36.00  37.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.13.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.13.6.1">
<span class="ltx_p" id="A5.T2.9.1.13.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.13.6.1.1.1" style="font-size:50%;">47.06  37.98  32.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.13.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.13.7.1">
<span class="ltx_p" id="A5.T2.9.1.13.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.13.7.1.1.1" style="font-size:50%;">34.18  42.12  28.99</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.14.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.14.1.1" style="font-size:50%;">LLaVA-ov-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.14.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.14.2.1">
<span class="ltx_p" id="A5.T2.9.1.14.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.14.2.1.1.1" style="font-size:50%;">57.97  51.02  68.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.14.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.14.3.1">
<span class="ltx_p" id="A5.T2.9.1.14.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.14.3.1.1.1" style="font-size:50%;">51.02  57.97  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.14.3.1.1.2" style="font-size:50%;">68.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.14.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.14.4.1">
<span class="ltx_p" id="A5.T2.9.1.14.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.14.4.1.1.1" style="font-size:50%;">16.58  10.84  46.19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.14.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.14.5.1">
<span class="ltx_p" id="A5.T2.9.1.14.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.14.5.1.1.1" style="font-size:50%;">15.24  32.56  35.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.14.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.14.6.1">
<span class="ltx_p" id="A5.T2.9.1.14.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.14.6.1.1.1" style="font-size:50%;">43.90  35.63  59.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.14.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.14.7.1">
<span class="ltx_p" id="A5.T2.9.1.14.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.14.7.1.1.1" style="font-size:50%;">31.81  40.47  43.79</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.15.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.15.1.1" style="font-size:50%;">MiniCPM-V-2.6-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.15.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.15.2.1">
<span class="ltx_p" id="A5.T2.9.1.15.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.15.2.1.1.1" style="font-size:50%;">60.87</span><span class="ltx_text" id="A5.T2.9.1.15.2.1.1.2" style="font-size:50%;">  59.71  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.15.2.1.1.3" style="font-size:50%;">69.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.15.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.15.3.1">
<span class="ltx_p" id="A5.T2.9.1.15.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.15.3.1.1.1" style="font-size:50%;">39.81  40.58  46.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.15.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.15.4.1">
<span class="ltx_p" id="A5.T2.9.1.15.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.15.4.1.1.1" style="font-size:50%;">27.64  28.56  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.15.4.1.1.2" style="font-size:50%;">55.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.15.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.15.5.1">
<span class="ltx_p" id="A5.T2.9.1.15.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.15.5.1.1.1" style="font-size:50%;">18.85  27.65  33.13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.15.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.15.6.1">
<span class="ltx_p" id="A5.T2.9.1.15.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.15.6.1.1.1" style="font-size:50%;">48.25  41.87  57.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.15.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.15.7.1">
<span class="ltx_p" id="A5.T2.9.1.15.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.15.7.1.1.1" style="font-size:50%;">37.06  42.25  45.65</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.16.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.16.1.1" style="font-size:50%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.16.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.16.2.1">
<span class="ltx_p" id="A5.T2.9.1.16.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.16.2.1.1.1" style="font-size:50%;">63.04</span><span class="ltx_text" id="A5.T2.9.1.16.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.16.2.1.1.3" style="font-size:50%;">62.33</span><span class="ltx_text" id="A5.T2.9.1.16.2.1.1.4" style="font-size:50%;">  64.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.16.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.16.3.1">
<span class="ltx_p" id="A5.T2.9.1.16.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.16.3.1.1.1" style="font-size:50%;">62.33</span><span class="ltx_text" id="A5.T2.9.1.16.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.16.3.1.1.3" style="font-size:50%;">63.04</span><span class="ltx_text" id="A5.T2.9.1.16.3.1.1.4" style="font-size:50%;">  64.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.16.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.16.4.1">
<span class="ltx_p" id="A5.T2.9.1.16.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.16.4.1.1.1" style="font-size:50%;">53.90</span><span class="ltx_text" id="A5.T2.9.1.16.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.16.4.1.1.3" style="font-size:50%;">47.65</span><span class="ltx_text" id="A5.T2.9.1.16.4.1.1.4" style="font-size:50%;">  52.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.16.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.16.5.1">
<span class="ltx_p" id="A5.T2.9.1.16.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.16.5.1.1.1" style="font-size:50%;">34.81</span><span class="ltx_text" id="A5.T2.9.1.16.5.1.1.2" style="font-size:50%;">  37.06  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.16.5.1.1.3" style="font-size:50%;">43.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.16.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.16.6.1">
<span class="ltx_p" id="A5.T2.9.1.16.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.16.6.1.1.1" style="font-size:50%;">49.43  46.40  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.16.6.1.1.2" style="font-size:50%;">62.68</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.16.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.16.7.1">
<span class="ltx_p" id="A5.T2.9.1.16.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.16.7.1.1.1" style="font-size:50%;">37.64  42.58  46.81</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.17.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.17.1.1" style="font-size:50%;">LLaVA-Video-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.17.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.17.2.1">
<span class="ltx_p" id="A5.T2.9.1.17.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.17.2.1.1.1" style="font-size:50%;">53.62  45.24  59.35</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.17.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.17.3.1">
<span class="ltx_p" id="A5.T2.9.1.17.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.17.3.1.1.1" style="font-size:50%;">45.24  53.62  59.35</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.17.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.17.4.1">
<span class="ltx_p" id="A5.T2.9.1.17.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.17.4.1.1.1" style="font-size:50%;">48.58</span><span class="ltx_text" id="A5.T2.9.1.17.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.17.4.1.1.3" style="font-size:50%;">49.00</span><span class="ltx_text" id="A5.T2.9.1.17.4.1.1.4" style="font-size:50%;">  50.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.17.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.17.5.1">
<span class="ltx_p" id="A5.T2.9.1.17.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.17.5.1.1.1" style="font-size:50%;">30.02  30.62  31.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.17.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.17.6.1">
<span class="ltx_p" id="A5.T2.9.1.17.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.17.6.1.1.1" style="font-size:50%;">61.11</span><span class="ltx_text" id="A5.T2.9.1.17.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.17.6.1.1.3" style="font-size:50%;">61.33</span><span class="ltx_text" id="A5.T2.9.1.17.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.17.6.1.1.5" style="font-size:50%;">65.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.17.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.17.7.1">
<span class="ltx_p" id="A5.T2.9.1.17.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.17.7.1.1.1" style="font-size:50%;">48.24</span><span class="ltx_text" id="A5.T2.9.1.17.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.17.7.1.1.3" style="font-size:50%;">48.59</span><span class="ltx_text" id="A5.T2.9.1.17.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.17.7.1.1.5" style="font-size:50%;">50.86</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T2.9.1.18.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.18.1.1" style="font-size:50%;">LLaVA-OV-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.18.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.18.2.1">
<span class="ltx_p" id="A5.T2.9.1.18.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.18.2.1.1.1" style="font-size:50%;">57.97  53.68  62.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.18.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.18.3.1">
<span class="ltx_p" id="A5.T2.9.1.18.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.18.3.1.1.1" style="font-size:50%;">53.68  57.97  62.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.18.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.18.4.1">
<span class="ltx_p" id="A5.T2.9.1.18.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.18.4.1.1.1" style="font-size:50%;">44.33  45.17  50.79</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.18.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.18.5.1">
<span class="ltx_p" id="A5.T2.9.1.18.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.18.5.1.1.1" style="font-size:50%;">27.10  29.59  30.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.18.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.18.6.1">
<span class="ltx_p" id="A5.T2.9.1.18.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T2.9.1.18.6.1.1.1" style="font-size:50%;">61.81</span><span class="ltx_text" id="A5.T2.9.1.18.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.18.6.1.1.3" style="font-size:50%;">60.93</span><span class="ltx_text" id="A5.T2.9.1.18.6.1.1.4" style="font-size:50%;">  62.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T2.9.1.18.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.18.7.1">
<span class="ltx_p" id="A5.T2.9.1.18.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T2.9.1.18.7.1.1.1" style="font-size:50%;">47.56</span><span class="ltx_text" id="A5.T2.9.1.18.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.18.7.1.1.3" style="font-size:50%;">47.94</span><span class="ltx_text" id="A5.T2.9.1.18.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.18.7.1.1.5" style="font-size:50%;">49.34</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T2.9.1.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A5.T2.9.1.19.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T2.9.1.19.1.1" style="font-size:50%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.9.1.19.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.19.2.1">
<span class="ltx_p" id="A5.T2.9.1.19.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.19.2.1.1.1" style="font-size:50%;">55.07  44.60  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.19.2.1.1.2" style="font-size:50%;">70.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.9.1.19.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.19.3.1">
<span class="ltx_p" id="A5.T2.9.1.19.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.19.3.1.1.1" style="font-size:50%;">44.60  55.07  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.19.3.1.1.2" style="font-size:50%;">70.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.9.1.19.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.19.4.1">
<span class="ltx_p" id="A5.T2.9.1.19.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.19.4.1.1.1" style="font-size:50%;">28.90  26.75  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.19.4.1.1.2" style="font-size:50%;">54.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.9.1.19.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.19.5.1">
<span class="ltx_p" id="A5.T2.9.1.19.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.19.5.1.1.1" style="font-size:50%;">29.63  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T2.9.1.19.5.1.1.2" style="font-size:50%;">42.76</span><span class="ltx_text" id="A5.T2.9.1.19.5.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T2.9.1.19.5.1.1.4" style="font-size:50%;">43.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.9.1.19.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.19.6.1">
<span class="ltx_p" id="A5.T2.9.1.19.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.19.6.1.1.1" style="font-size:50%;">55.05  53.62  61.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T2.9.1.19.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T2.9.1.19.7.1">
<span class="ltx_p" id="A5.T2.9.1.19.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T2.9.1.19.7.1.1.1" style="font-size:50%;">43.56  46.24  47.08</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for supervised fine-tuning (SFT) and instruction tuning (IT) on three datasets: MIntRec, MIntRec2.0, and MELD.  For each dataset and tuning method, the table shows the model used, the learning rate, warmup ratio, training batch size, number of epochs, LoRA rank, and alpha value.  These hyperparameters were used to optimize the performance of various Large Language Models (LLMs) and Multimodal Large Language Models (MLLMs) on the specified datasets.
> <details>
> <summary>read the caption</summary>
> Table 5:  Primary hyperparameters for SFT and IT on the MIntRec, MIntRec2.0, and MELD datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T3.6.1">
<tr class="ltx_tr" id="A5.T3.6.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A5.T3.6.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T3.6.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.1.2.1" style="font-size:50%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.6.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.1.3.1" style="font-size:50%;">MIntRec</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.6.1.1.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.1.4.1" style="font-size:50%;">MIntRec2.0</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.6.1.1.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.1.5.1" style="font-size:50%;">MELD</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.2">
<td class="ltx_td ltx_border_r" id="A5.T3.6.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.6.1.2.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.2.2.1" style="font-size:50%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.2.3.1">
<span class="ltx_p" id="A5.T3.6.1.2.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.2.3.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.2.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.2.4.1">
<span class="ltx_p" id="A5.T3.6.1.2.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.2.4.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.2.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.2.5.1">
<span class="ltx_p" id="A5.T3.6.1.2.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.2.5.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.2.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.2.6.1">
<span class="ltx_p" id="A5.T3.6.1.2.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.2.6.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.2.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.2.7.1">
<span class="ltx_p" id="A5.T3.6.1.2.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.2.7.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.2.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.2.8.1">
<span class="ltx_p" id="A5.T3.6.1.2.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.2.8.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T3.6.1.3.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.3.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T3.6.1.3.1.1.1" style="width:3.4pt;height:12.8pt;vertical-align:-4.7pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-4.69pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T3.6.1.3.1.1.1.1">LLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.6.1.3.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.3.2.1" style="font-size:50%;">Qwen2-0.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.3.3.1">
<span class="ltx_p" id="A5.T3.6.1.3.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.3.3.1.1.1" style="font-size:50%;">70.11  70.01  71.37</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.3.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.3.4.1">
<span class="ltx_p" id="A5.T3.6.1.3.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.3.4.1.1.1" style="font-size:50%;">66.97  66.90  68.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.3.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.3.5.1">
<span class="ltx_p" id="A5.T3.6.1.3.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.3.5.1.1.1" style="font-size:50%;">55.83  55.04  55.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.3.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.3.6.1">
<span class="ltx_p" id="A5.T3.6.1.3.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.3.6.1.1.1" style="font-size:50%;">48.08  47.03  51.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.3.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.3.7.1">
<span class="ltx_p" id="A5.T3.6.1.3.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.3.7.1.1.1" style="font-size:50%;">63.95  62.73  62.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.3.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.3.8.1">
<span class="ltx_p" id="A5.T3.6.1.3.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.3.8.1.1.1" style="font-size:50%;">45.04  43.43  47.30</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.4.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.4.1.1" style="font-size:50%;">Llama-3.2-1B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.4.2.1">
<span class="ltx_p" id="A5.T3.6.1.4.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.4.2.1.1.1" style="font-size:50%;">73.26  73.45  73.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.4.3.1">
<span class="ltx_p" id="A5.T3.6.1.4.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.4.3.1.1.1" style="font-size:50%;">71.19  71.30  71.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.4.4.1">
<span class="ltx_p" id="A5.T3.6.1.4.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.4.4.1.1.1" style="font-size:50%;">59.37  59.06  60.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.4.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.4.5.1">
<span class="ltx_p" id="A5.T3.6.1.4.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.4.5.1.1.1" style="font-size:50%;">53.49  53.17  56.33</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.4.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.4.6.1">
<span class="ltx_p" id="A5.T3.6.1.4.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.4.6.1.1.1" style="font-size:50%;">61.57  60.84  60.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.4.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.4.7.1">
<span class="ltx_p" id="A5.T3.6.1.4.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.4.7.1.1.1" style="font-size:50%;">44.91  43.99  47.90</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.5.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.5.1.1" style="font-size:50%;">Qwen2-1.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.5.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.5.2.1">
<span class="ltx_p" id="A5.T3.6.1.5.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.5.2.1.1.1" style="font-size:50%;">74.61</span><span class="ltx_text" id="A5.T3.6.1.5.2.1.1.2" style="font-size:50%;">  74.71  75.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.5.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.5.3.1">
<span class="ltx_p" id="A5.T3.6.1.5.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.5.3.1.1.1" style="font-size:50%;">72.85</span><span class="ltx_text" id="A5.T3.6.1.5.3.1.1.2" style="font-size:50%;">  72.30  74.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.5.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.5.4.1">
<span class="ltx_p" id="A5.T3.6.1.5.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.5.4.1.1.1" style="font-size:50%;">58.39  57.78  59.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.5.5.1">
<span class="ltx_p" id="A5.T3.6.1.5.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.5.5.1.1.1" style="font-size:50%;">52.74  51.82  56.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.5.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.5.6.1">
<span class="ltx_p" id="A5.T3.6.1.5.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.5.6.1.1.1" style="font-size:50%;">64.71  63.74  63.57</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.5.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.5.7.1">
<span class="ltx_p" id="A5.T3.6.1.5.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.5.7.1.1.1" style="font-size:50%;">47.16  45.96  49.89</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.6.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.6.1.1" style="font-size:50%;">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.6.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.6.2.1">
<span class="ltx_p" id="A5.T3.6.1.6.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.6.2.1.1.1" style="font-size:50%;">77.30</span><span class="ltx_text" id="A5.T3.6.1.6.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.6.2.1.1.3" style="font-size:50%;">77.17</span><span class="ltx_text" id="A5.T3.6.1.6.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.6.2.1.1.5" style="font-size:50%;">77.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.6.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.6.3.1">
<span class="ltx_p" id="A5.T3.6.1.6.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.6.3.1.1.1" style="font-size:50%;">74.40</span><span class="ltx_text" id="A5.T3.6.1.6.3.1.1.2" style="font-size:50%;">  73.04  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.6.3.1.1.3" style="font-size:50%;">77.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.6.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.6.4.1">
<span class="ltx_p" id="A5.T3.6.1.6.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.6.4.1.1.1" style="font-size:50%;">60.45  59.74  60.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.6.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.6.5.1">
<span class="ltx_p" id="A5.T3.6.1.6.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.6.5.1.1.1" style="font-size:50%;">55.28  56.52  56.07</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.6.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.6.6.1">
<span class="ltx_p" id="A5.T3.6.1.6.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.6.6.1.1.1" style="font-size:50%;">64.41  63.40  63.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.6.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.6.7.1">
<span class="ltx_p" id="A5.T3.6.1.6.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.6.7.1.1.1" style="font-size:50%;">47.59  46.17  50.20</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.7.1.1" style="font-size:50%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.7.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.7.2.1">
<span class="ltx_p" id="A5.T3.6.1.7.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.7.2.1.1.1" style="font-size:50%;">74.61</span><span class="ltx_text" id="A5.T3.6.1.7.2.1.1.2" style="font-size:50%;">  75.10  77.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.7.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.7.3.1">
<span class="ltx_p" id="A5.T3.6.1.7.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.7.3.1.1.1" style="font-size:50%;">69.90  70.26  71.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.7.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.7.4.1">
<span class="ltx_p" id="A5.T3.6.1.7.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.7.4.1.1.1" style="font-size:50%;">61.49  60.91  62.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.7.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.7.5.1">
<span class="ltx_p" id="A5.T3.6.1.7.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.7.5.1.1.1" style="font-size:50%;">53.72  54.29  56.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.7.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.7.6.1">
<span class="ltx_p" id="A5.T3.6.1.7.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.7.6.1.1.1" style="font-size:50%;">65.71</span><span class="ltx_text" id="A5.T3.6.1.7.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.7.6.1.1.3" style="font-size:50%;">65.11</span><span class="ltx_text" id="A5.T3.6.1.7.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.7.6.1.1.5" style="font-size:50%;">65.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.7.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.7.7.1">
<span class="ltx_p" id="A5.T3.6.1.7.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.7.7.1.1.1" style="font-size:50%;">50.86</span><span class="ltx_text" id="A5.T3.6.1.7.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.7.7.1.1.3" style="font-size:50%;">49.28</span><span class="ltx_text" id="A5.T3.6.1.7.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.7.7.1.1.5" style="font-size:50%;">54.90</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.8.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.8.1.1" style="font-size:50%;">Llama-3-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.8.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.8.2.1">
<span class="ltx_p" id="A5.T3.6.1.8.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.8.2.1.1.1" style="font-size:50%;">77.30</span><span class="ltx_text" id="A5.T3.6.1.8.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.8.2.1.1.3" style="font-size:50%;">77.26</span><span class="ltx_text" id="A5.T3.6.1.8.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.8.2.1.1.5" style="font-size:50%;">77.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.8.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.8.3.1">
<span class="ltx_p" id="A5.T3.6.1.8.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.8.3.1.1.1" style="font-size:50%;">74.40</span><span class="ltx_text" id="A5.T3.6.1.8.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.8.3.1.1.3" style="font-size:50%;">73.82</span><span class="ltx_text" id="A5.T3.6.1.8.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.8.3.1.1.5" style="font-size:50%;">75.95</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.8.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.8.4.1">
<span class="ltx_p" id="A5.T3.6.1.8.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.8.4.1.1.1" style="font-size:50%;">62.91</span><span class="ltx_text" id="A5.T3.6.1.8.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.8.4.1.1.3" style="font-size:50%;">62.58</span><span class="ltx_text" id="A5.T3.6.1.8.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.8.4.1.1.5" style="font-size:50%;">63.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.8.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.8.5.1">
<span class="ltx_p" id="A5.T3.6.1.8.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.8.5.1.1.1" style="font-size:50%;">57.03  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.8.5.1.1.2" style="font-size:50%;">57.38</span><span class="ltx_text" id="A5.T3.6.1.8.5.1.1.3" style="font-size:50%;">  58.91</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.8.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.8.6.1">
<span class="ltx_p" id="A5.T3.6.1.8.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.8.6.1.1.1" style="font-size:50%;">64.41  63.84  63.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.8.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.8.7.1">
<span class="ltx_p" id="A5.T3.6.1.8.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.8.7.1.1.1" style="font-size:50%;">48.45  47.50  50.29</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.9.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.9.1.1" style="font-size:50%;">Llama-3.1-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.9.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.9.2.1">
<span class="ltx_p" id="A5.T3.6.1.9.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.2.1.1.1" style="font-size:50%;">74.61</span><span class="ltx_text" id="A5.T3.6.1.9.2.1.1.2" style="font-size:50%;">  74.67  76.73</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.9.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.9.3.1">
<span class="ltx_p" id="A5.T3.6.1.9.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.9.3.1.1.1" style="font-size:50%;">71.99  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.3.1.1.2" style="font-size:50%;">73.13</span><span class="ltx_text" id="A5.T3.6.1.9.3.1.1.3" style="font-size:50%;">  73.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.9.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.9.4.1">
<span class="ltx_p" id="A5.T3.6.1.9.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.4.1.1.1" style="font-size:50%;">62.86</span><span class="ltx_text" id="A5.T3.6.1.9.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.4.1.1.3" style="font-size:50%;">62.40</span><span class="ltx_text" id="A5.T3.6.1.9.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.4.1.1.5" style="font-size:50%;">63.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.9.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.9.5.1">
<span class="ltx_p" id="A5.T3.6.1.9.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.5.1.1.1" style="font-size:50%;">57.12</span><span class="ltx_text" id="A5.T3.6.1.9.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.9.5.1.1.3" style="font-size:50%;">57.52</span><span class="ltx_text" id="A5.T3.6.1.9.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.5.1.1.5" style="font-size:50%;">58.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.9.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.9.6.1">
<span class="ltx_p" id="A5.T3.6.1.9.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.9.6.1.1.1" style="font-size:50%;">65.02  64.16  63.95</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.9.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.9.7.1">
<span class="ltx_p" id="A5.T3.6.1.9.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.7.1.1.1" style="font-size:50%;">49.40</span><span class="ltx_text" id="A5.T3.6.1.9.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.9.7.1.1.3" style="font-size:50%;">47.84</span><span class="ltx_text" id="A5.T3.6.1.9.7.1.1.4" style="font-size:50%;">  52.27</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.10.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.10.1.1" style="font-size:50%;">Internlm-2.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.10.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.10.2.1">
<span class="ltx_p" id="A5.T3.6.1.10.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.10.2.1.1.1" style="font-size:50%;">77.30</span><span class="ltx_text" id="A5.T3.6.1.10.2.1.1.2" style="font-size:50%;">  76.41  76.57</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.10.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.10.3.1">
<span class="ltx_p" id="A5.T3.6.1.10.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.10.3.1.1.1" style="font-size:50%;">72.32  72.28  74.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.10.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.10.4.1">
<span class="ltx_p" id="A5.T3.6.1.10.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.10.4.1.1.1" style="font-size:50%;">61.83  61.12  62.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.10.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.10.5.1">
<span class="ltx_p" id="A5.T3.6.1.10.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.10.5.1.1.1" style="font-size:50%;">57.14</span><span class="ltx_text" id="A5.T3.6.1.10.5.1.1.2" style="font-size:50%;">  56.87  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.10.5.1.1.3" style="font-size:50%;">60.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.10.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.10.6.1">
<span class="ltx_p" id="A5.T3.6.1.10.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.10.6.1.1.1" style="font-size:50%;">66.25</span><span class="ltx_text" id="A5.T3.6.1.10.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.10.6.1.1.3" style="font-size:50%;">65.18</span><span class="ltx_text" id="A5.T3.6.1.10.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.10.6.1.1.5" style="font-size:50%;">65.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.10.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.10.7.1">
<span class="ltx_p" id="A5.T3.6.1.10.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.10.7.1.1.1" style="font-size:50%;">48.78  46.66  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.10.7.1.1.2" style="font-size:50%;">55.56</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A5.T3.6.1.11.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.11.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T3.6.1.11.1.1.1" style="width:3.4pt;height:17.4pt;vertical-align:-7.0pt;"><span class="ltx_transformed_inner" style="width:17.4pt;transform:translate(-6.99pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T3.6.1.11.1.1.1.1">MLLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.6.1.11.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.11.2.1" style="font-size:50%;">VideoLLaMA2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.11.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.11.3.1">
<span class="ltx_p" id="A5.T3.6.1.11.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.11.3.1.1.1" style="font-size:50%;">79.33  78.82  78.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.11.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.11.4.1">
<span class="ltx_p" id="A5.T3.6.1.11.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.11.4.1.1.1" style="font-size:50%;">76.29  76.45  77.07</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.11.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.11.5.1">
<span class="ltx_p" id="A5.T3.6.1.11.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.11.5.1.1.1" style="font-size:50%;">65.03  64.64  65.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.11.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.11.6.1">
<span class="ltx_p" id="A5.T3.6.1.11.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.11.6.1.1.1" style="font-size:50%;">58.29  57.08  61.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.11.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.11.7.1">
<span class="ltx_p" id="A5.T3.6.1.11.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.11.7.1.1.1" style="font-size:50%;">63.79  63.17  62.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.6.1.11.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.11.8.1">
<span class="ltx_p" id="A5.T3.6.1.11.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.11.8.1.1.1" style="font-size:50%;">43.27  42.21  44.81</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.12.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.12.1.1" style="font-size:50%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.12.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.12.2.1">
<span class="ltx_p" id="A5.T3.6.1.12.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.12.2.1.1.1" style="font-size:50%;">80.45  80.28  80.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.12.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.12.3.1">
<span class="ltx_p" id="A5.T3.6.1.12.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.12.3.1.1.1" style="font-size:50%;">78.55  78.32  79.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.12.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.12.4.1">
<span class="ltx_p" id="A5.T3.6.1.12.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.12.4.1.1.1" style="font-size:50%;">64.19  63.51  64.86</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.12.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.12.5.1">
<span class="ltx_p" id="A5.T3.6.1.12.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.12.5.1.1.1" style="font-size:50%;">59.68  58.64  63.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.12.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.12.6.1">
<span class="ltx_p" id="A5.T3.6.1.12.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.12.6.1.1.1" style="font-size:50%;">67.09  65.41  65.75</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.12.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.12.7.1">
<span class="ltx_p" id="A5.T3.6.1.12.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.12.7.1.1.1" style="font-size:50%;">51.45</span><span class="ltx_text" id="A5.T3.6.1.12.7.1.1.2" style="font-size:50%;">  48.06  57.26</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.13.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.13.1.1" style="font-size:50%;">LLaVA-Video-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.13.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.13.2.1">
<span class="ltx_p" id="A5.T3.6.1.13.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.13.2.1.1.1" style="font-size:50%;">80.00  79.71  80.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.13.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.13.3.1">
<span class="ltx_p" id="A5.T3.6.1.13.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.13.3.1.1.1" style="font-size:50%;">77.89  77.87  79.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.13.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.13.4.1">
<span class="ltx_p" id="A5.T3.6.1.13.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.13.4.1.1.1" style="font-size:50%;">63.11  62.93  63.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.13.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.13.5.1">
<span class="ltx_p" id="A5.T3.6.1.13.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.13.5.1.1.1" style="font-size:50%;">57.19  56.49  59.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.13.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.13.6.1">
<span class="ltx_p" id="A5.T3.6.1.13.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.13.6.1.1.1" style="font-size:50%;">63.49  62.44  62.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.13.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.13.7.1">
<span class="ltx_p" id="A5.T3.6.1.13.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.13.7.1.1.1" style="font-size:50%;">40.67  38.90  46.05</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.14.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.14.1.1" style="font-size:50%;">LLaVA-OV-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.14.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.14.2.1">
<span class="ltx_p" id="A5.T3.6.1.14.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.14.2.1.1.1" style="font-size:50%;">80.00  80.02  80.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.14.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.14.3.1">
<span class="ltx_p" id="A5.T3.6.1.14.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.14.3.1.1.1" style="font-size:50%;">78.05  78.03  79.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.14.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.14.4.1">
<span class="ltx_p" id="A5.T3.6.1.14.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.14.4.1.1.1" style="font-size:50%;">63.60  63.04  63.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.14.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.14.5.1">
<span class="ltx_p" id="A5.T3.6.1.14.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.14.5.1.1.1" style="font-size:50%;">56.44  55.36  59.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.14.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.14.6.1">
<span class="ltx_p" id="A5.T3.6.1.14.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.14.6.1.1.1" style="font-size:50%;">62.72  62.90  63.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.14.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.14.7.1">
<span class="ltx_p" id="A5.T3.6.1.14.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.14.7.1.1.1" style="font-size:50%;">43.90  43.92  46.17</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.15.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.15.1.1" style="font-size:50%;">MiniCPM-V-2.6-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.15.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.15.2.1">
<span class="ltx_p" id="A5.T3.6.1.15.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.15.2.1.1.1" style="font-size:50%;">79.10  78.88  79.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.15.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.15.3.1">
<span class="ltx_p" id="A5.T3.6.1.15.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.15.3.1.1.1" style="font-size:50%;">77.44  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.15.3.1.1.2" style="font-size:50%;">79.70</span><span class="ltx_text" id="A5.T3.6.1.15.3.1.1.3" style="font-size:50%;">  76.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.15.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.15.4.1">
<span class="ltx_p" id="A5.T3.6.1.15.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.15.4.1.1.1" style="font-size:50%;">63.99  63.28  66.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.15.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.15.5.1">
<span class="ltx_p" id="A5.T3.6.1.15.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.15.5.1.1.1" style="font-size:50%;">57.43  58.05  62.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.15.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.15.6.1">
<span class="ltx_p" id="A5.T3.6.1.15.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.15.6.1.1.1" style="font-size:50%;">68.05</span><span class="ltx_text" id="A5.T3.6.1.15.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.15.6.1.1.3" style="font-size:50%;">66.26</span><span class="ltx_text" id="A5.T3.6.1.15.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.15.6.1.1.5" style="font-size:50%;">66.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.15.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.15.7.1">
<span class="ltx_p" id="A5.T3.6.1.15.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.15.7.1.1.1" style="font-size:50%;">48.83  46.85  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.15.7.1.1.2" style="font-size:50%;">58.22</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.16.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.16.1.1" style="font-size:50%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.16.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.16.2.1">
<span class="ltx_p" id="A5.T3.6.1.16.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.16.2.1.1.1" style="font-size:50%;">81.35  81.00  81.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.16.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.16.3.1">
<span class="ltx_p" id="A5.T3.6.1.16.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.16.3.1.1.1" style="font-size:50%;">75.30  73.97  78.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.16.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.16.4.1">
<span class="ltx_p" id="A5.T3.6.1.16.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.16.4.1.1.1" style="font-size:50%;">67.39</span><span class="ltx_text" id="A5.T3.6.1.16.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.16.4.1.1.3" style="font-size:50%;">66.98</span><span class="ltx_text" id="A5.T3.6.1.16.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.16.4.1.1.5" style="font-size:50%;">68.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.16.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.16.5.1">
<span class="ltx_p" id="A5.T3.6.1.16.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.16.5.1.1.1" style="font-size:50%;">63.65</span><span class="ltx_text" id="A5.T3.6.1.16.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.16.5.1.1.3" style="font-size:50%;">63.12</span><span class="ltx_text" id="A5.T3.6.1.16.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.16.5.1.1.5" style="font-size:50%;">67.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.16.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.16.6.1">
<span class="ltx_p" id="A5.T3.6.1.16.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.16.6.1.1.1" style="font-size:50%;">68.81</span><span class="ltx_text" id="A5.T3.6.1.16.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.16.6.1.1.3" style="font-size:50%;">66.68</span><span class="ltx_text" id="A5.T3.6.1.16.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.16.6.1.1.5" style="font-size:50%;">68.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.16.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.16.7.1">
<span class="ltx_p" id="A5.T3.6.1.16.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.16.7.1.1.1" style="font-size:50%;">53.43</span><span class="ltx_text" id="A5.T3.6.1.16.7.1.1.2" style="font-size:50%;">  49.27  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.16.7.1.1.3" style="font-size:50%;">61.81</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.6.1.17.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.17.1.1" style="font-size:50%;">LLaVA-Video-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.17.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.17.2.1">
<span class="ltx_p" id="A5.T3.6.1.17.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.2.1.1.1" style="font-size:50%;">82.47</span><span class="ltx_text" id="A5.T3.6.1.17.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.2.1.1.3" style="font-size:50%;">82.41</span><span class="ltx_text" id="A5.T3.6.1.17.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.2.1.1.5" style="font-size:50%;">83.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.17.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.17.3.1">
<span class="ltx_p" id="A5.T3.6.1.17.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.3.1.1.1" style="font-size:50%;">79.19</span><span class="ltx_text" id="A5.T3.6.1.17.3.1.1.2" style="font-size:50%;">  79.33  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.3.1.1.3" style="font-size:50%;">80.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.17.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.17.4.1">
<span class="ltx_p" id="A5.T3.6.1.17.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.17.4.1.1.1" style="font-size:50%;">65.81  65.82  66.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.17.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.17.5.1">
<span class="ltx_p" id="A5.T3.6.1.17.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.5.1.1.1" style="font-size:50%;">62.38</span><span class="ltx_text" id="A5.T3.6.1.17.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.5.1.1.3" style="font-size:50%;">61.70</span><span class="ltx_text" id="A5.T3.6.1.17.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.5.1.1.5" style="font-size:50%;">63.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.17.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.17.6.1">
<span class="ltx_p" id="A5.T3.6.1.17.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.17.6.1.1.1" style="font-size:50%;">60.65  61.43  64.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.6.1.17.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.17.7.1">
<span class="ltx_p" id="A5.T3.6.1.17.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.17.7.1.1.1" style="font-size:50%;">48.88  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.17.7.1.1.2" style="font-size:50%;">50.79</span><span class="ltx_text" id="A5.T3.6.1.17.7.1.1.3" style="font-size:50%;">  49.22</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.6.1.18">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A5.T3.6.1.18.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.6.1.18.1.1" style="font-size:50%;">LLaVA-OV-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.6.1.18.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.18.2.1">
<span class="ltx_p" id="A5.T3.6.1.18.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.18.2.1.1.1" style="font-size:50%;">84.04</span><span class="ltx_text" id="A5.T3.6.1.18.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.18.2.1.1.3" style="font-size:50%;">84.00</span><span class="ltx_text" id="A5.T3.6.1.18.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.18.2.1.1.5" style="font-size:50%;">84.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.6.1.18.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.18.3.1">
<span class="ltx_p" id="A5.T3.6.1.18.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.6.1.18.3.1.1.1" style="font-size:50%;">81.70</span><span class="ltx_text" id="A5.T3.6.1.18.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.18.3.1.1.3" style="font-size:50%;">81.62</span><span class="ltx_text" id="A5.T3.6.1.18.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.18.3.1.1.5" style="font-size:50%;">83.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.6.1.18.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.18.4.1">
<span class="ltx_p" id="A5.T3.6.1.18.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.6.1.18.4.1.1.1" style="font-size:50%;">66.01</span><span class="ltx_text" id="A5.T3.6.1.18.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.18.4.1.1.3" style="font-size:50%;">66.15</span><span class="ltx_text" id="A5.T3.6.1.18.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.6.1.18.4.1.1.5" style="font-size:50%;">66.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.6.1.18.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.18.5.1">
<span class="ltx_p" id="A5.T3.6.1.18.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.18.5.1.1.1" style="font-size:50%;">61.01  60.36  62.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.6.1.18.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.18.6.1">
<span class="ltx_p" id="A5.T3.6.1.18.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.18.6.1.1.1" style="font-size:50%;">61.00  61.79  65.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.6.1.18.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.6.1.18.7.1">
<span class="ltx_p" id="A5.T3.6.1.18.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.6.1.18.7.1.1.1" style="font-size:50%;">49.94  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.6.1.18.7.1.1.2" style="font-size:50%;">50.86</span><span class="ltx_text" id="A5.T3.6.1.18.7.1.1.3" style="font-size:50%;">  51.84</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for both supervised fine-tuning (SFT) and instruction tuning (IT) on three datasets: IEMOCAP, MELD-DA, and IEMOCAP-DA.  For each dataset and tuning method, the table lists the specific models used, the learning rate, warmup ratio, training batch size, number of epochs, LoRA rank, and the alpha value (α). This information provides a detailed breakdown of the training configurations employed in the experiments described in the paper.
> <details>
> <summary>read the caption</summary>
> Table 6:  Primary hyperparameters for SFT and IT on the IEMOCAP, MELD-DA, and IEMOCAP-DA datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T3.7.1">
<tr class="ltx_tr" id="A5.T3.7.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A5.T3.7.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T3.7.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.1.2.1" style="font-size:50%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.7.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.1.3.1" style="font-size:50%;">IEMOCAP</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.7.1.1.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.1.4.1" style="font-size:50%;">MELD-DA</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.7.1.1.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.1.5.1" style="font-size:50%;">IEMOCAP-DA</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.2">
<td class="ltx_td ltx_border_r" id="A5.T3.7.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.7.1.2.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.2.2.1" style="font-size:50%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.2.3.1">
<span class="ltx_p" id="A5.T3.7.1.2.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.2.3.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.2.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.2.4.1">
<span class="ltx_p" id="A5.T3.7.1.2.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.2.4.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.2.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.2.5.1">
<span class="ltx_p" id="A5.T3.7.1.2.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.2.5.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.2.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.2.6.1">
<span class="ltx_p" id="A5.T3.7.1.2.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.2.6.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.2.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.2.7.1">
<span class="ltx_p" id="A5.T3.7.1.2.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.2.7.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.2.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.2.8.1">
<span class="ltx_p" id="A5.T3.7.1.2.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.2.8.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T3.7.1.3.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.3.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T3.7.1.3.1.1.1" style="width:3.4pt;height:12.8pt;vertical-align:-4.7pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-4.69pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T3.7.1.3.1.1.1.1">LLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.7.1.3.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.3.2.1" style="font-size:50%;">Qwen2-0.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.3.3.1">
<span class="ltx_p" id="A5.T3.7.1.3.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.3.3.1.1.1" style="font-size:50%;">46.61  45.90  47.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.3.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.3.4.1">
<span class="ltx_p" id="A5.T3.7.1.3.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.3.4.1.1.1" style="font-size:50%;">43.61  43.44  46.54</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.3.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.3.5.1">
<span class="ltx_p" id="A5.T3.7.1.3.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.3.5.1.1.1" style="font-size:50%;">57.31  56.11  56.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.3.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.3.6.1">
<span class="ltx_p" id="A5.T3.7.1.3.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.3.6.1.1.1" style="font-size:50%;">48.98  47.79  53.58</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.3.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.3.7.1">
<span class="ltx_p" id="A5.T3.7.1.3.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.3.7.1.1.1" style="font-size:50%;">68.21  68.00  68.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.3.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.3.8.1">
<span class="ltx_p" id="A5.T3.7.1.3.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.3.8.1.1.1" style="font-size:50%;">65.01  61.75  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.3.8.1.1.2" style="font-size:50%;">75.87</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.4.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.4.1.1" style="font-size:50%;">Llama-3.2-1B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.4.2.1">
<span class="ltx_p" id="A5.T3.7.1.4.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.4.2.1.1.1" style="font-size:50%;">49.08  48.46  49.38</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.4.3.1">
<span class="ltx_p" id="A5.T3.7.1.4.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.4.3.1.1.1" style="font-size:50%;">45.99  46.46  47.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.4.4.1">
<span class="ltx_p" id="A5.T3.7.1.4.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.4.4.1.1.1" style="font-size:50%;">58.36  57.25  57.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.4.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.4.5.1">
<span class="ltx_p" id="A5.T3.7.1.4.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.4.5.1.1.1" style="font-size:50%;">50.09</span><span class="ltx_text" id="A5.T3.7.1.4.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.4.5.1.1.3" style="font-size:50%;">48.81</span><span class="ltx_text" id="A5.T3.7.1.4.5.1.1.4" style="font-size:50%;">  53.16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.4.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.4.6.1">
<span class="ltx_p" id="A5.T3.7.1.4.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.4.6.1.1.1" style="font-size:50%;">69.11  68.90  69.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.4.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.4.7.1">
<span class="ltx_p" id="A5.T3.7.1.4.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.4.7.1.1.1" style="font-size:50%;">63.55  62.00  66.01</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.5.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.5.1.1" style="font-size:50%;">Qwen2-1.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.5.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.5.2.1">
<span class="ltx_p" id="A5.T3.7.1.5.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.5.2.1.1.1" style="font-size:50%;">49.88  49.46  51.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.5.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.5.3.1">
<span class="ltx_p" id="A5.T3.7.1.5.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.5.3.1.1.1" style="font-size:50%;">47.61  48.31  49.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.5.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.5.4.1">
<span class="ltx_p" id="A5.T3.7.1.5.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.5.4.1.1.1" style="font-size:50%;">57.21  56.62  56.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.5.5.1">
<span class="ltx_p" id="A5.T3.7.1.5.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.5.5.1.1.1" style="font-size:50%;">49.56  47.74  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.5.5.1.1.2" style="font-size:50%;">54.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.5.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.5.6.1">
<span class="ltx_p" id="A5.T3.7.1.5.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.5.6.1.1.1" style="font-size:50%;">67.14  66.42  67.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.5.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.5.7.1">
<span class="ltx_p" id="A5.T3.7.1.5.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.5.7.1.1.1" style="font-size:50%;">58.91  60.83  58.58</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.6.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.6.1.1" style="font-size:50%;">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.6.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.6.2.1">
<span class="ltx_p" id="A5.T3.7.1.6.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.6.2.1.1.1" style="font-size:50%;">50.00  49.24  51.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.6.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.6.3.1">
<span class="ltx_p" id="A5.T3.7.1.6.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.6.3.1.1.1" style="font-size:50%;">47.28  48.28  48.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.6.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.6.4.1">
<span class="ltx_p" id="A5.T3.7.1.6.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.6.4.1.1.1" style="font-size:50%;">58.71</span><span class="ltx_text" id="A5.T3.7.1.6.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.6.4.1.1.3" style="font-size:50%;">57.36</span><span class="ltx_text" id="A5.T3.7.1.6.4.1.1.4" style="font-size:50%;">  56.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.6.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.6.5.1">
<span class="ltx_p" id="A5.T3.7.1.6.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.6.5.1.1.1" style="font-size:50%;">49.70  47.80  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.6.5.1.1.2" style="font-size:50%;">53.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.6.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.6.6.1">
<span class="ltx_p" id="A5.T3.7.1.6.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.6.6.1.1.1" style="font-size:50%;">71.39  70.95  71.31</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.6.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.6.7.1">
<span class="ltx_p" id="A5.T3.7.1.6.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.6.7.1.1.1" style="font-size:50%;">67.71  68.66  67.62</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.7.1.1" style="font-size:50%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.7.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.7.2.1">
<span class="ltx_p" id="A5.T3.7.1.7.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.7.2.1.1.1" style="font-size:50%;">52.10</span><span class="ltx_text" id="A5.T3.7.1.7.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.7.2.1.1.3" style="font-size:50%;">50.96</span><span class="ltx_text" id="A5.T3.7.1.7.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.7.2.1.1.5" style="font-size:50%;">52.20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.7.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.7.3.1">
<span class="ltx_p" id="A5.T3.7.1.7.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.7.3.1.1.1" style="font-size:50%;">48.31</span><span class="ltx_text" id="A5.T3.7.1.7.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.7.3.1.1.3" style="font-size:50%;">49.84</span><span class="ltx_text" id="A5.T3.7.1.7.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.7.3.1.1.5" style="font-size:50%;">49.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.7.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.7.4.1">
<span class="ltx_p" id="A5.T3.7.1.7.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.7.4.1.1.1" style="font-size:50%;">57.71  56.98  57.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.7.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.7.5.1">
<span class="ltx_p" id="A5.T3.7.1.7.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.7.5.1.1.1" style="font-size:50%;">49.25  46.87  53.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.7.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.7.6.1">
<span class="ltx_p" id="A5.T3.7.1.7.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.7.6.1.1.1" style="font-size:50%;">72.08  72.00  72.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.7.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.7.7.1">
<span class="ltx_p" id="A5.T3.7.1.7.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.7.7.1.1.1" style="font-size:50%;">65.16  65.36  65.69</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.8.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.8.1.1" style="font-size:50%;">Llama-3-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.8.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.8.2.1">
<span class="ltx_p" id="A5.T3.7.1.8.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.8.2.1.1.1" style="font-size:50%;">51.42  50.32  51.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.8.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.8.3.1">
<span class="ltx_p" id="A5.T3.7.1.8.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.8.3.1.1.1" style="font-size:50%;">47.92  49.18  49.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.8.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.8.4.1">
<span class="ltx_p" id="A5.T3.7.1.8.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.8.4.1.1.1" style="font-size:50%;">57.21  56.74  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.8.4.1.1.2" style="font-size:50%;">57.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.8.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.8.5.1">
<span class="ltx_p" id="A5.T3.7.1.8.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.8.5.1.1.1" style="font-size:50%;">48.63  47.05  51.35</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.8.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.8.6.1">
<span class="ltx_p" id="A5.T3.7.1.8.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.8.6.1.1.1" style="font-size:50%;">73.41</span><span class="ltx_text" id="A5.T3.7.1.8.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.8.6.1.1.3" style="font-size:50%;">73.14</span><span class="ltx_text" id="A5.T3.7.1.8.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.8.6.1.1.5" style="font-size:50%;">73.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.8.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.8.7.1">
<span class="ltx_p" id="A5.T3.7.1.8.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.8.7.1.1.1" style="font-size:50%;">71.05</span><span class="ltx_text" id="A5.T3.7.1.8.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.8.7.1.1.3" style="font-size:50%;">69.17</span><span class="ltx_text" id="A5.T3.7.1.8.7.1.1.4" style="font-size:50%;">  74.16</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.9.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.9.1.1" style="font-size:50%;">Llama-3.1-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.9.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.9.2.1">
<span class="ltx_p" id="A5.T3.7.1.9.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.9.2.1.1.1" style="font-size:50%;">52.47</span><span class="ltx_text" id="A5.T3.7.1.9.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.9.2.1.1.3" style="font-size:50%;">52.04</span><span class="ltx_text" id="A5.T3.7.1.9.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.9.2.1.1.5" style="font-size:50%;">53.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.9.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.9.3.1">
<span class="ltx_p" id="A5.T3.7.1.9.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.9.3.1.1.1" style="font-size:50%;">50.44</span><span class="ltx_text" id="A5.T3.7.1.9.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.9.3.1.1.3" style="font-size:50%;">51.00</span><span class="ltx_text" id="A5.T3.7.1.9.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.9.3.1.1.5" style="font-size:50%;">52.08</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.9.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.9.4.1">
<span class="ltx_p" id="A5.T3.7.1.9.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.9.4.1.1.1" style="font-size:50%;">56.61  55.30  55.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.9.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.9.5.1">
<span class="ltx_p" id="A5.T3.7.1.9.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.9.5.1.1.1" style="font-size:50%;">47.78  45.51  51.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.9.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.9.6.1">
<span class="ltx_p" id="A5.T3.7.1.9.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.9.6.1.1.1" style="font-size:50%;">74.31</span><span class="ltx_text" id="A5.T3.7.1.9.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.9.6.1.1.3" style="font-size:50%;">74.06</span><span class="ltx_text" id="A5.T3.7.1.9.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.9.6.1.1.5" style="font-size:50%;">74.60</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.9.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.9.7.1">
<span class="ltx_p" id="A5.T3.7.1.9.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.9.7.1.1.1" style="font-size:50%;">72.09</span><span class="ltx_text" id="A5.T3.7.1.9.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.9.7.1.1.3" style="font-size:50%;">70.46</span><span class="ltx_text" id="A5.T3.7.1.9.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.9.7.1.1.5" style="font-size:50%;">74.33</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.10.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.10.1.1" style="font-size:50%;">Internlm-2.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.10.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.10.2.1">
<span class="ltx_p" id="A5.T3.7.1.10.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.10.2.1.1.1" style="font-size:50%;">38.41  34.18  51.24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.10.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.10.3.1">
<span class="ltx_p" id="A5.T3.7.1.10.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.10.3.1.1.1" style="font-size:50%;">28.64  31.25  42.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.10.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.10.4.1">
<span class="ltx_p" id="A5.T3.7.1.10.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.10.4.1.1.1" style="font-size:50%;">58.81</span><span class="ltx_text" id="A5.T3.7.1.10.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.10.4.1.1.3" style="font-size:50%;">58.00</span><span class="ltx_text" id="A5.T3.7.1.10.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.10.4.1.1.5" style="font-size:50%;">58.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.10.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.10.5.1">
<span class="ltx_p" id="A5.T3.7.1.10.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.10.5.1.1.1" style="font-size:50%;">50.22</span><span class="ltx_text" id="A5.T3.7.1.10.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.10.5.1.1.3" style="font-size:50%;">50.22</span><span class="ltx_text" id="A5.T3.7.1.10.5.1.1.4" style="font-size:50%;">  52.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.10.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.10.6.1">
<span class="ltx_p" id="A5.T3.7.1.10.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.10.6.1.1.1" style="font-size:50%;">72.08  71.80  72.35</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.10.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.10.7.1">
<span class="ltx_p" id="A5.T3.7.1.10.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.10.7.1.1.1" style="font-size:50%;">68.57  68.65  69.44</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A5.T3.7.1.11.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.11.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T3.7.1.11.1.1.1" style="width:3.4pt;height:17.4pt;vertical-align:-7.0pt;"><span class="ltx_transformed_inner" style="width:17.4pt;transform:translate(-6.99pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T3.7.1.11.1.1.1.1">MLLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.7.1.11.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.11.2.1" style="font-size:50%;">VideoLLaMA2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.11.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.11.3.1">
<span class="ltx_p" id="A5.T3.7.1.11.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.11.3.1.1.1" style="font-size:50%;">56.84  56.93  59.16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.11.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.11.4.1">
<span class="ltx_p" id="A5.T3.7.1.11.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.11.4.1.1.1" style="font-size:50%;">47.63  47.75  49.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.11.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.11.5.1">
<span class="ltx_p" id="A5.T3.7.1.11.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.11.5.1.1.1" style="font-size:50%;">61.01  60.11  59.86</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.11.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.11.6.1">
<span class="ltx_p" id="A5.T3.7.1.11.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.11.6.1.1.1" style="font-size:50%;">47.67  46.23  50.71</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.11.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.11.7.1">
<span class="ltx_p" id="A5.T3.7.1.11.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.11.7.1.1.1" style="font-size:50%;">76.43</span><span class="ltx_text" id="A5.T3.7.1.11.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.11.7.1.1.3" style="font-size:50%;">76.28</span><span class="ltx_text" id="A5.T3.7.1.11.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.11.7.1.1.5" style="font-size:50%;">76.58</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.7.1.11.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.11.8.1">
<span class="ltx_p" id="A5.T3.7.1.11.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.11.8.1.1.1" style="font-size:50%;">68.39  66.62  70.65</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.12.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.12.1.1" style="font-size:50%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.12.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.12.2.1">
<span class="ltx_p" id="A5.T3.7.1.12.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.12.2.1.1.1" style="font-size:50%;">55.12  55.08  56.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.12.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.12.3.1">
<span class="ltx_p" id="A5.T3.7.1.12.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.12.3.1.1.1" style="font-size:50%;">45.99  45.74  47.40</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.12.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.12.4.1">
<span class="ltx_p" id="A5.T3.7.1.12.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.12.4.1.1.1" style="font-size:50%;">60.91  60.15  61.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.12.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.12.5.1">
<span class="ltx_p" id="A5.T3.7.1.12.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.12.5.1.1.1" style="font-size:50%;">49.70  49.13  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.12.5.1.1.2" style="font-size:50%;">57.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.12.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.12.6.1">
<span class="ltx_p" id="A5.T3.7.1.12.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.12.6.1.1.1" style="font-size:50%;">68.10  67.09  68.72</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.12.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.12.7.1">
<span class="ltx_p" id="A5.T3.7.1.12.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.12.7.1.1.1" style="font-size:50%;">59.85  56.91  66.75</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.13.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.13.1.1" style="font-size:50%;">LLaVA-Video-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.13.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.13.2.1">
<span class="ltx_p" id="A5.T3.7.1.13.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.13.2.1.1.1" style="font-size:50%;">58.94  59.01  60.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.13.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.13.3.1">
<span class="ltx_p" id="A5.T3.7.1.13.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.13.3.1.1.1" style="font-size:50%;">49.64  48.76  51.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.13.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.13.4.1">
<span class="ltx_p" id="A5.T3.7.1.13.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.13.4.1.1.1" style="font-size:50%;">61.01  60.09  60.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.13.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.13.5.1">
<span class="ltx_p" id="A5.T3.7.1.13.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.13.5.1.1.1" style="font-size:50%;">46.78  43.80  54.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.13.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.13.6.1">
<span class="ltx_p" id="A5.T3.7.1.13.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.13.6.1.1.1" style="font-size:50%;">72.29  71.92  73.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.13.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.13.7.1">
<span class="ltx_p" id="A5.T3.7.1.13.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.13.7.1.1.1" style="font-size:50%;">68.19  64.93  73.72</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.14.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.14.1.1" style="font-size:50%;">LLaVA-OV-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.14.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.14.2.1">
<span class="ltx_p" id="A5.T3.7.1.14.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.14.2.1.1.1" style="font-size:50%;">58.82  58.88  60.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.14.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.14.3.1">
<span class="ltx_p" id="A5.T3.7.1.14.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.14.3.1.1.1" style="font-size:50%;">49.41  49.18  50.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.14.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.14.4.1">
<span class="ltx_p" id="A5.T3.7.1.14.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.14.4.1.1.1" style="font-size:50%;">59.81  59.16  59.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.14.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.14.5.1">
<span class="ltx_p" id="A5.T3.7.1.14.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.14.5.1.1.1" style="font-size:50%;">48.63  47.51  52.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.14.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.14.6.1">
<span class="ltx_p" id="A5.T3.7.1.14.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.14.6.1.1.1" style="font-size:50%;">72.82  72.36  73.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.14.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.14.7.1">
<span class="ltx_p" id="A5.T3.7.1.14.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.14.7.1.1.1" style="font-size:50%;">68.83  66.86  72.13</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.15.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.15.1.1" style="font-size:50%;">MiniCPM-V-2.6-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.15.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.15.2.1">
<span class="ltx_p" id="A5.T3.7.1.15.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.15.2.1.1.1" style="font-size:50%;">56.47  56.64  57.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.15.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.15.3.1">
<span class="ltx_p" id="A5.T3.7.1.15.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.15.3.1.1.1" style="font-size:50%;">56.19  57.39  56.35</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.15.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.15.4.1">
<span class="ltx_p" id="A5.T3.7.1.15.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.15.4.1.1.1" style="font-size:50%;">63.01</span><span class="ltx_text" id="A5.T3.7.1.15.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.15.4.1.1.3" style="font-size:50%;">61.59</span><span class="ltx_text" id="A5.T3.7.1.15.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.15.4.1.1.5" style="font-size:50%;">62.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.15.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.15.5.1">
<span class="ltx_p" id="A5.T3.7.1.15.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.15.5.1.1.1" style="font-size:50%;">54.06</span><span class="ltx_text" id="A5.T3.7.1.15.5.1.1.2" style="font-size:50%;">  51.00  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.15.5.1.1.3" style="font-size:50%;">61.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.15.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.15.6.1">
<span class="ltx_p" id="A5.T3.7.1.15.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.15.6.1.1.1" style="font-size:50%;">74.95  74.90  75.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.15.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.15.7.1">
<span class="ltx_p" id="A5.T3.7.1.15.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.15.7.1.1.1" style="font-size:50%;">71.68  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.15.7.1.1.2" style="font-size:50%;">71.88</span><span class="ltx_text" id="A5.T3.7.1.15.7.1.1.3" style="font-size:50%;">  73.70</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.16.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.16.1.1" style="font-size:50%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.16.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.16.2.1">
<span class="ltx_p" id="A5.T3.7.1.16.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.16.2.1.1.1" style="font-size:50%;">56.97  56.50  59.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.16.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.16.3.1">
<span class="ltx_p" id="A5.T3.7.1.16.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.16.3.1.1.1" style="font-size:50%;">54.76  55.65  58.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.16.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.16.4.1">
<span class="ltx_p" id="A5.T3.7.1.16.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.16.4.1.1.1" style="font-size:50%;">58.86  55.39  59.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.16.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.16.5.1">
<span class="ltx_p" id="A5.T3.7.1.16.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.16.5.1.1.1" style="font-size:50%;">47.99  48.98  55.37</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.16.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.16.6.1">
<span class="ltx_p" id="A5.T3.7.1.16.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.16.6.1.1.1" style="font-size:50%;">73.14  72.38  74.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.16.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.16.7.1">
<span class="ltx_p" id="A5.T3.7.1.16.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.16.7.1.1.1" style="font-size:50%;">72.22</span><span class="ltx_text" id="A5.T3.7.1.16.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.16.7.1.1.3" style="font-size:50%;">70.81</span><span class="ltx_text" id="A5.T3.7.1.16.7.1.1.4" style="font-size:50%;">  75.80</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.7.1.17.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.17.1.1" style="font-size:50%;">LLaVA-Video-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.17.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.17.2.1">
<span class="ltx_p" id="A5.T3.7.1.17.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.2.1.1.1" style="font-size:50%;">60.17</span><span class="ltx_text" id="A5.T3.7.1.17.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.2.1.1.3" style="font-size:50%;">60.10</span><span class="ltx_text" id="A5.T3.7.1.17.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.2.1.1.5" style="font-size:50%;">62.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.17.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.17.3.1">
<span class="ltx_p" id="A5.T3.7.1.17.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.3.1.1.1" style="font-size:50%;">58.87</span><span class="ltx_text" id="A5.T3.7.1.17.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.3.1.1.3" style="font-size:50%;">58.26</span><span class="ltx_text" id="A5.T3.7.1.17.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.3.1.1.5" style="font-size:50%;">61.68</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.17.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.17.4.1">
<span class="ltx_p" id="A5.T3.7.1.17.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.17.4.1.1.1" style="font-size:50%;">61.11  60.59  60.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.17.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.17.5.1">
<span class="ltx_p" id="A5.T3.7.1.17.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.17.5.1.1.1" style="font-size:50%;">52.71  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.5.1.1.2" style="font-size:50%;">51.58</span><span class="ltx_text" id="A5.T3.7.1.17.5.1.1.3" style="font-size:50%;">  54.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.17.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.17.6.1">
<span class="ltx_p" id="A5.T3.7.1.17.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.6.1.1.1" style="font-size:50%;">75.53</span><span class="ltx_text" id="A5.T3.7.1.17.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.6.1.1.3" style="font-size:50%;">75.31</span><span class="ltx_text" id="A5.T3.7.1.17.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.17.6.1.1.5" style="font-size:50%;">76.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.7.1.17.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.17.7.1">
<span class="ltx_p" id="A5.T3.7.1.17.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.17.7.1.1.1" style="font-size:50%;">72.25</span><span class="ltx_text" id="A5.T3.7.1.17.7.1.1.2" style="font-size:50%;">  69.93  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.17.7.1.1.3" style="font-size:50%;">76.95</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.7.1.18">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A5.T3.7.1.18.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.7.1.18.1.1" style="font-size:50%;">LLaVA-OV-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.7.1.18.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.18.2.1">
<span class="ltx_p" id="A5.T3.7.1.18.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.18.2.1.1.1" style="font-size:50%;">61.53</span><span class="ltx_text" id="A5.T3.7.1.18.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.18.2.1.1.3" style="font-size:50%;">61.36</span><span class="ltx_text" id="A5.T3.7.1.18.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.18.2.1.1.5" style="font-size:50%;">63.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.7.1.18.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.18.3.1">
<span class="ltx_p" id="A5.T3.7.1.18.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.7.1.18.3.1.1.1" style="font-size:50%;">60.07</span><span class="ltx_text" id="A5.T3.7.1.18.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.18.3.1.1.3" style="font-size:50%;">59.52</span><span class="ltx_text" id="A5.T3.7.1.18.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.18.3.1.1.5" style="font-size:50%;">63.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.7.1.18.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.18.4.1">
<span class="ltx_p" id="A5.T3.7.1.18.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.18.4.1.1.1" style="font-size:50%;">61.26</span><span class="ltx_text" id="A5.T3.7.1.18.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.18.4.1.1.3" style="font-size:50%;">60.73</span><span class="ltx_text" id="A5.T3.7.1.18.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.18.4.1.1.5" style="font-size:50%;">61.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.7.1.18.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.18.5.1">
<span class="ltx_p" id="A5.T3.7.1.18.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.7.1.18.5.1.1.1" style="font-size:50%;">53.37</span><span class="ltx_text" id="A5.T3.7.1.18.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.7.1.18.5.1.1.3" style="font-size:50%;">52.10</span><span class="ltx_text" id="A5.T3.7.1.18.5.1.1.4" style="font-size:50%;">  56.75</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.7.1.18.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.18.6.1">
<span class="ltx_p" id="A5.T3.7.1.18.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.18.6.1.1.1" style="font-size:50%;">73.62  73.36  74.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.7.1.18.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.7.1.18.7.1">
<span class="ltx_p" id="A5.T3.7.1.18.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.7.1.18.7.1.1.1" style="font-size:50%;">71.86  69.74  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.7.1.18.7.1.1.2" style="font-size:50%;">76.10</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the hyperparameters used for training the MOSI, CH-SIMS v2.0, and UR-FUNNY-v2 datasets using two different training methods: supervised fine-tuning (SFT) and instruction tuning (IT).  For each dataset and method, it lists the model used, learning rate, warmup ratio, training batch size, number of epochs, LoRA rank, and the alpha value. This information is crucial for understanding and replicating the experimental setup and results presented in the paper.
> <details>
> <summary>read the caption</summary>
> Table 7:  Primary hyperparameters for SFT and IT on the MOSI, CH-SIMS v2.0, and UR-FUNNY-v2 datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T3.8.1">
<tr class="ltx_tr" id="A5.T3.8.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A5.T3.8.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T3.8.1.1.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.1.2.1" style="font-size:50%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.8.1.1.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.1.3.1" style="font-size:50%;">MOSI</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.8.1.1.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.1.4.1" style="font-size:50%;">CH-SIMS v2.0</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="A5.T3.8.1.1.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.1.5.1" style="font-size:50%;">UR-FUNNY-v2</span></td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.2">
<td class="ltx_td ltx_border_r" id="A5.T3.8.1.2.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.8.1.2.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.2.2.1" style="font-size:50%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.2.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.2.3.1">
<span class="ltx_p" id="A5.T3.8.1.2.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.2.3.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.2.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.2.4.1">
<span class="ltx_p" id="A5.T3.8.1.2.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.2.4.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.2.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.2.5.1">
<span class="ltx_p" id="A5.T3.8.1.2.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.2.5.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.2.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.2.6.1">
<span class="ltx_p" id="A5.T3.8.1.2.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.2.6.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.2.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.2.7.1">
<span class="ltx_p" id="A5.T3.8.1.2.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.2.7.1.1.1" style="font-size:50%;">ACC    WF1   WP</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.2.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.2.8.1">
<span class="ltx_p" id="A5.T3.8.1.2.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.2.8.1.1.1" style="font-size:50%;">F1    R   P</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A5.T3.8.1.3.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.3.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T3.8.1.3.1.1.1" style="width:3.4pt;height:12.8pt;vertical-align:-4.7pt;"><span class="ltx_transformed_inner" style="width:12.8pt;transform:translate(-4.69pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T3.8.1.3.1.1.1.1">LLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.8.1.3.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.3.2.1" style="font-size:50%;">Qwen2-0.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.3.3.1">
<span class="ltx_p" id="A5.T3.8.1.3.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.3.3.1.1.1" style="font-size:50%;">82.94  82.90  83.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.3.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.3.4.1">
<span class="ltx_p" id="A5.T3.8.1.3.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.3.4.1.1.1" style="font-size:50%;">82.91  83.01  83.40</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.3.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.3.5.1">
<span class="ltx_p" id="A5.T3.8.1.3.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.3.5.1.1.1" style="font-size:50%;">68.96  68.61  68.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.3.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.3.6.1">
<span class="ltx_p" id="A5.T3.8.1.3.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.3.6.1.1.1" style="font-size:50%;">57.73  57.63  57.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.3.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.3.7.1">
<span class="ltx_p" id="A5.T3.8.1.3.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.3.7.1.1.1" style="font-size:50%;">65.59  65.54  65.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.3.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.3.8.1">
<span class="ltx_p" id="A5.T3.8.1.3.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.3.8.1.1.1" style="font-size:50%;">65.51  65.54  65.64</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.4.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.4.1.1" style="font-size:50%;">Llama-3.2-1B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.4.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.4.2.1">
<span class="ltx_p" id="A5.T3.8.1.4.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.4.2.1.1.1" style="font-size:50%;">82.80  82.79  82.95</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.4.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.4.3.1">
<span class="ltx_p" id="A5.T3.8.1.4.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.4.3.1.1.1" style="font-size:50%;">82.79  82.83  82.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.4.4.1">
<span class="ltx_p" id="A5.T3.8.1.4.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.4.4.1.1.1" style="font-size:50%;">64.70  65.00  65.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.4.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.4.5.1">
<span class="ltx_p" id="A5.T3.8.1.4.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.4.5.1.1.1" style="font-size:50%;">54.54  54.57  54.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.4.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.4.6.1">
<span class="ltx_p" id="A5.T3.8.1.4.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.4.6.1.1.1" style="font-size:50%;">69.62  69.60  69.72</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.4.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.4.7.1">
<span class="ltx_p" id="A5.T3.8.1.4.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.4.7.1.1.1" style="font-size:50%;">69.61  69.65  69.69</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.5.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.5.1.1" style="font-size:50%;">Qwen2-1.5B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.5.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.5.2.1">
<span class="ltx_p" id="A5.T3.8.1.5.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.5.2.1.1.1" style="font-size:50%;">85.42  85.42  85.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.5.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.5.3.1">
<span class="ltx_p" id="A5.T3.8.1.5.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.5.3.1.1.1" style="font-size:50%;">85.42  85.41  85.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.5.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.5.4.1">
<span class="ltx_p" id="A5.T3.8.1.5.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.5.4.1.1.1" style="font-size:50%;">69.34  69.49  69.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.5.5.1">
<span class="ltx_p" id="A5.T3.8.1.5.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.5.5.1.1.1" style="font-size:50%;">59.36  59.39  59.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.5.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.5.6.1">
<span class="ltx_p" id="A5.T3.8.1.5.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.5.6.1.1.1" style="font-size:50%;">68.81  68.81  68.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.5.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.5.7.1">
<span class="ltx_p" id="A5.T3.8.1.5.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.5.7.1.1.1" style="font-size:50%;">68.81  68.83  68.84</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.6.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.6.1.1" style="font-size:50%;">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.6.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.6.2.1">
<span class="ltx_p" id="A5.T3.8.1.6.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.6.2.1.1.1" style="font-size:50%;">86.44  86.44  86.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.6.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.6.3.1">
<span class="ltx_p" id="A5.T3.8.1.6.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.6.3.1.1.1" style="font-size:50%;">86.44  86.43  86.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.6.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.6.4.1">
<span class="ltx_p" id="A5.T3.8.1.6.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.6.4.1.1.1" style="font-size:50%;">66.25  66.09  65.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.6.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.6.5.1">
<span class="ltx_p" id="A5.T3.8.1.6.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.6.5.1.1.1" style="font-size:50%;">55.19  55.18  55.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.6.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.6.6.1">
<span class="ltx_p" id="A5.T3.8.1.6.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.6.6.1.1.1" style="font-size:50%;">71.43  71.43  71.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.6.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.6.7.1">
<span class="ltx_p" id="A5.T3.8.1.6.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.6.7.1.1.1" style="font-size:50%;">71.43  71.44  71.44</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.7.1.1" style="font-size:50%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.7.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.7.2.1">
<span class="ltx_p" id="A5.T3.8.1.7.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.7.2.1.1.1" style="font-size:50%;">87.32</span><span class="ltx_text" id="A5.T3.8.1.7.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.7.2.1.1.3" style="font-size:50%;">87.32</span><span class="ltx_text" id="A5.T3.8.1.7.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.7.2.1.1.5" style="font-size:50%;">87.32</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.7.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.7.3.1">
<span class="ltx_p" id="A5.T3.8.1.7.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.7.3.1.1.1" style="font-size:50%;">87.32</span><span class="ltx_text" id="A5.T3.8.1.7.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.7.3.1.1.3" style="font-size:50%;">87.31</span><span class="ltx_text" id="A5.T3.8.1.7.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.7.3.1.1.5" style="font-size:50%;">87.32</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.7.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.7.4.1">
<span class="ltx_p" id="A5.T3.8.1.7.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.7.4.1.1.1" style="font-size:50%;">73.11</span><span class="ltx_text" id="A5.T3.8.1.7.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.7.4.1.1.3" style="font-size:50%;">71.71</span><span class="ltx_text" id="A5.T3.8.1.7.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.7.4.1.1.5" style="font-size:50%;">71.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.7.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.7.5.1">
<span class="ltx_p" id="A5.T3.8.1.7.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.7.5.1.1.1" style="font-size:50%;">61.41</span><span class="ltx_text" id="A5.T3.8.1.7.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.7.5.1.1.3" style="font-size:50%;">60.62</span><span class="ltx_text" id="A5.T3.8.1.7.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.7.5.1.1.5" style="font-size:50%;">64.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.7.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.7.6.1">
<span class="ltx_p" id="A5.T3.8.1.7.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.7.6.1.1.1" style="font-size:50%;">71.33  71.33  71.35</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.7.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.7.7.1">
<span class="ltx_p" id="A5.T3.8.1.7.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.7.7.1.1.1" style="font-size:50%;">71.33  71.34  71.34</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.8.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.8.1.1" style="font-size:50%;">Llama-3-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.8.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.8.2.1">
<span class="ltx_p" id="A5.T3.8.1.8.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.8.2.1.1.1" style="font-size:50%;">86.73  86.74  86.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.8.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.8.3.1">
<span class="ltx_p" id="A5.T3.8.1.8.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.8.3.1.1.1" style="font-size:50%;">86.73  86.74  86.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.8.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.8.4.1">
<span class="ltx_p" id="A5.T3.8.1.8.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.8.4.1.1.1" style="font-size:50%;">70.41</span><span class="ltx_text" id="A5.T3.8.1.8.4.1.1.2" style="font-size:50%;">  68.67  67.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.8.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.8.5.1">
<span class="ltx_p" id="A5.T3.8.1.8.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.8.5.1.1.1" style="font-size:50%;">56.22  56.31  57.73</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.8.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.8.6.1">
<span class="ltx_p" id="A5.T3.8.1.8.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.8.6.1.1.1" style="font-size:50%;">72.23</span><span class="ltx_text" id="A5.T3.8.1.8.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.8.6.1.1.3" style="font-size:50%;">72.20</span><span class="ltx_text" id="A5.T3.8.1.8.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.8.6.1.1.5" style="font-size:50%;">72.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.8.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.8.7.1">
<span class="ltx_p" id="A5.T3.8.1.8.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.8.7.1.1.1" style="font-size:50%;">72.21</span><span class="ltx_text" id="A5.T3.8.1.8.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.8.7.1.1.3" style="font-size:50%;">72.29</span><span class="ltx_text" id="A5.T3.8.1.8.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.8.7.1.1.5" style="font-size:50%;">72.41</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.9.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.9.1.1" style="font-size:50%;">Llama-3.1-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.9.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.9.2.1">
<span class="ltx_p" id="A5.T3.8.1.9.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.2.1.1.1" style="font-size:50%;">87.61</span><span class="ltx_text" id="A5.T3.8.1.9.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.2.1.1.3" style="font-size:50%;">87.61</span><span class="ltx_text" id="A5.T3.8.1.9.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.2.1.1.5" style="font-size:50%;">87.65</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.9.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.9.3.1">
<span class="ltx_p" id="A5.T3.8.1.9.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.9.3.1.1.1" style="font-size:50%;">87.61</span><span class="ltx_text" id="A5.T3.8.1.9.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.3.1.1.3" style="font-size:50%;">87.63</span><span class="ltx_text" id="A5.T3.8.1.9.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.3.1.1.5" style="font-size:50%;">87.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.9.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.9.4.1">
<span class="ltx_p" id="A5.T3.8.1.9.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.9.4.1.1.1" style="font-size:50%;">68.47  69.17  69.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.9.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.9.5.1">
<span class="ltx_p" id="A5.T3.8.1.9.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.9.5.1.1.1" style="font-size:50%;">58.90  59.21  58.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.9.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.9.6.1">
<span class="ltx_p" id="A5.T3.8.1.9.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.9.6.1.1.1" style="font-size:50%;">72.64</span><span class="ltx_text" id="A5.T3.8.1.9.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.6.1.1.3" style="font-size:50%;">72.60</span><span class="ltx_text" id="A5.T3.8.1.9.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.6.1.1.5" style="font-size:50%;">72.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.9.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.9.7.1">
<span class="ltx_p" id="A5.T3.8.1.9.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.9.7.1.1.1" style="font-size:50%;">72.61</span><span class="ltx_text" id="A5.T3.8.1.9.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.7.1.1.3" style="font-size:50%;">72.69</span><span class="ltx_text" id="A5.T3.8.1.9.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.9.7.1.1.5" style="font-size:50%;">72.80</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.10.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.10.1.1" style="font-size:50%;">Internlm-2.5-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.10.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.10.2.1">
<span class="ltx_p" id="A5.T3.8.1.10.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.10.2.1.1.1" style="font-size:50%;">84.99  84.95  85.42</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.10.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.10.3.1">
<span class="ltx_p" id="A5.T3.8.1.10.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.10.3.1.1.1" style="font-size:50%;">84.96  85.05  85.37</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.10.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.10.4.1">
<span class="ltx_p" id="A5.T3.8.1.10.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.10.4.1.1.1" style="font-size:50%;">70.21  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.10.4.1.1.2" style="font-size:50%;">70.78</span><span class="ltx_text" id="A5.T3.8.1.10.4.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.10.4.1.1.4" style="font-size:50%;">71.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.10.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.10.5.1">
<span class="ltx_p" id="A5.T3.8.1.10.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.10.5.1.1.1" style="font-size:50%;">60.44</span><span class="ltx_text" id="A5.T3.8.1.10.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.10.5.1.1.3" style="font-size:50%;">60.73</span><span class="ltx_text" id="A5.T3.8.1.10.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.10.5.1.1.5" style="font-size:50%;">60.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.10.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.10.6.1">
<span class="ltx_p" id="A5.T3.8.1.10.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.10.6.1.1.1" style="font-size:50%;">54.43  43.86  65.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.10.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.10.7.1">
<span class="ltx_p" id="A5.T3.8.1.10.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.10.7.1.1.1" style="font-size:50%;">43.51  53.82  65.18</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A5.T3.8.1.11.1" rowspan="8" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.11.1.1" style="font-size:50%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T3.8.1.11.1.1.1" style="width:3.4pt;height:17.4pt;vertical-align:-7.0pt;"><span class="ltx_transformed_inner" style="width:17.4pt;transform:translate(-6.99pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T3.8.1.11.1.1.1.1">MLLMs</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T3.8.1.11.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.11.2.1" style="font-size:50%;">VideoLLaMA2-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.11.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.11.3.1">
<span class="ltx_p" id="A5.T3.8.1.11.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.11.3.1.1.1" style="font-size:50%;">87.03  87.02  87.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.11.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.11.4.1">
<span class="ltx_p" id="A5.T3.8.1.11.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.11.4.1.1.1" style="font-size:50%;">87.02  87.06  87.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.11.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.11.5.1">
<span class="ltx_p" id="A5.T3.8.1.11.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.11.5.1.1.1" style="font-size:50%;">74.98  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.11.5.1.1.2" style="font-size:50%;">74.82</span><span class="ltx_text" id="A5.T3.8.1.11.5.1.1.3" style="font-size:50%;">  75.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.11.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.11.6.1">
<span class="ltx_p" id="A5.T3.8.1.11.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.11.6.1.1.1" style="font-size:50%;">64.46  64.24  65.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.11.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.11.7.1">
<span class="ltx_p" id="A5.T3.8.1.11.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.11.7.1.1.1" style="font-size:50%;">74.75  74.75  74.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T3.8.1.11.8" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.11.8.1">
<span class="ltx_p" id="A5.T3.8.1.11.8.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.11.8.1.1.1" style="font-size:50%;">74.75  74.76  74.76</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.12.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.12.1.1" style="font-size:50%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.12.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.12.2.1">
<span class="ltx_p" id="A5.T3.8.1.12.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.12.2.1.1.1" style="font-size:50%;">88.34  88.34  88.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.12.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.12.3.1">
<span class="ltx_p" id="A5.T3.8.1.12.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.12.3.1.1.1" style="font-size:50%;">88.34  88.33  88.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.12.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.12.4.1">
<span class="ltx_p" id="A5.T3.8.1.12.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.12.4.1.1.1" style="font-size:50%;">74.49  69.71  66.19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.12.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.12.5.1">
<span class="ltx_p" id="A5.T3.8.1.12.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.12.5.1.1.1" style="font-size:50%;">52.69  55.99  50.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.12.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.12.6.1">
<span class="ltx_p" id="A5.T3.8.1.12.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.12.6.1.1.1" style="font-size:50%;">74.04  73.99  74.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.12.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.12.7.1">
<span class="ltx_p" id="A5.T3.8.1.12.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.12.7.1.1.1" style="font-size:50%;">73.97  73.98  74.19</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.13.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.13.1.1" style="font-size:50%;">LLaVA-Video-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.13.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.13.2.1">
<span class="ltx_p" id="A5.T3.8.1.13.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.13.2.1.1.1" style="font-size:50%;">88.48</span><span class="ltx_text" id="A5.T3.8.1.13.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.13.2.1.1.3" style="font-size:50%;">88.48</span><span class="ltx_text" id="A5.T3.8.1.13.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.13.2.1.1.5" style="font-size:50%;">88.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.13.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.13.3.1">
<span class="ltx_p" id="A5.T3.8.1.13.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.13.3.1.1.1" style="font-size:50%;">88.48</span><span class="ltx_text" id="A5.T3.8.1.13.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.13.3.1.1.3" style="font-size:50%;">88.49</span><span class="ltx_text" id="A5.T3.8.1.13.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.13.3.1.1.5" style="font-size:50%;">88.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.13.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.13.4.1">
<span class="ltx_p" id="A5.T3.8.1.13.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.13.4.1.1.1" style="font-size:50%;">70.50  71.18  72.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.13.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.13.5.1">
<span class="ltx_p" id="A5.T3.8.1.13.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.13.5.1.1.1" style="font-size:50%;">60.88  61.21  60.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.13.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.13.6.1">
<span class="ltx_p" id="A5.T3.8.1.13.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.13.6.1.1.1" style="font-size:50%;">73.64  73.60  73.73</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.13.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.13.7.1">
<span class="ltx_p" id="A5.T3.8.1.13.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.13.7.1.1.1" style="font-size:50%;">73.58  73.59  73.75</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.14.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.14.1.1" style="font-size:50%;">LLaVA-OV-7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.14.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.14.2.1">
<span class="ltx_p" id="A5.T3.8.1.14.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.14.2.1.1.1" style="font-size:50%;">88.92</span><span class="ltx_text" id="A5.T3.8.1.14.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.14.2.1.1.3" style="font-size:50%;">88.92</span><span class="ltx_text" id="A5.T3.8.1.14.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.14.2.1.1.5" style="font-size:50%;">88.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.14.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.14.3.1">
<span class="ltx_p" id="A5.T3.8.1.14.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.14.3.1.1.1" style="font-size:50%;">88.92</span><span class="ltx_text" id="A5.T3.8.1.14.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.14.3.1.1.3" style="font-size:50%;">88.92</span><span class="ltx_text" id="A5.T3.8.1.14.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.14.3.1.1.5" style="font-size:50%;">88.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.14.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.14.4.1">
<span class="ltx_p" id="A5.T3.8.1.14.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.14.4.1.1.1" style="font-size:50%;">72.83  72.82  72.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.14.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.14.5.1">
<span class="ltx_p" id="A5.T3.8.1.14.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.14.5.1.1.1" style="font-size:50%;">63.20  63.17  63.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.14.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.14.6.1">
<span class="ltx_p" id="A5.T3.8.1.14.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.14.6.1.1.1" style="font-size:50%;">74.65  74.64  74.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.14.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.14.7.1">
<span class="ltx_p" id="A5.T3.8.1.14.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.14.7.1.1.1" style="font-size:50%;">74.62  74.62  74.67</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.15.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.15.1.1" style="font-size:50%;">MiniCPM-V-2.6-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.15.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.15.2.1">
<span class="ltx_p" id="A5.T3.8.1.15.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.15.2.1.1.1" style="font-size:50%;">84.26  84.10  85.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.15.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.15.3.1">
<span class="ltx_p" id="A5.T3.8.1.15.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.15.3.1.1.1" style="font-size:50%;">84.12  84.38  85.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.15.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.15.4.1">
<span class="ltx_p" id="A5.T3.8.1.15.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.15.4.1.1.1" style="font-size:50%;">76.24</span><span class="ltx_text" id="A5.T3.8.1.15.4.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.15.4.1.1.3" style="font-size:50%;">76.68</span><span class="ltx_text" id="A5.T3.8.1.15.4.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.15.4.1.1.5" style="font-size:50%;">77.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.15.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.15.5.1">
<span class="ltx_p" id="A5.T3.8.1.15.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.15.5.1.1.1" style="font-size:50%;">67.11</span><span class="ltx_text" id="A5.T3.8.1.15.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.15.5.1.1.3" style="font-size:50%;">67.44</span><span class="ltx_text" id="A5.T3.8.1.15.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.15.5.1.1.5" style="font-size:50%;">67.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.15.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.15.6.1">
<span class="ltx_p" id="A5.T3.8.1.15.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.15.6.1.1.1" style="font-size:50%;">75.45  75.26  76.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.15.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.15.7.1">
<span class="ltx_p" id="A5.T3.8.1.15.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.15.7.1.1.1" style="font-size:50%;">75.28  75.58  76.43</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.16.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.16.1.1" style="font-size:50%;">Qwen2-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.16.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.16.2.1">
<span class="ltx_p" id="A5.T3.8.1.16.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.16.2.1.1.1" style="font-size:50%;">87.03  86.98  87.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.16.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.16.3.1">
<span class="ltx_p" id="A5.T3.8.1.16.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.16.3.1.1.1" style="font-size:50%;">86.99  87.10  87.58</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.16.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.16.4.1">
<span class="ltx_p" id="A5.T3.8.1.16.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.16.4.1.1.1" style="font-size:50%;">75.56</span><span class="ltx_text" id="A5.T3.8.1.16.4.1.1.2" style="font-size:50%;">  70.95  68.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.16.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.16.5.1">
<span class="ltx_p" id="A5.T3.8.1.16.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.16.5.1.1.1" style="font-size:50%;">53.60  57.52  51.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.16.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.16.6.1">
<span class="ltx_p" id="A5.T3.8.1.16.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.16.6.1.1.1" style="font-size:50%;">76.36</span><span class="ltx_text" id="A5.T3.8.1.16.6.1.1.2" style="font-size:50%;">  75.78  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.16.6.1.1.3" style="font-size:50%;">79.54</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.16.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.16.7.1">
<span class="ltx_p" id="A5.T3.8.1.16.7.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.16.7.1.1.1" style="font-size:50%;">75.83  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.16.7.1.1.2" style="font-size:50%;">76.58</span><span class="ltx_text" id="A5.T3.8.1.16.7.1.1.3" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.16.7.1.1.4" style="font-size:50%;">79.40</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T3.8.1.17.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.17.1.1" style="font-size:50%;">LLaVA-Video-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.17.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.17.2.1">
<span class="ltx_p" id="A5.T3.8.1.17.2.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.17.2.1.1.1" style="font-size:50%;">87.76  87.76  87.76</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.17.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.17.3.1">
<span class="ltx_p" id="A5.T3.8.1.17.3.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.17.3.1.1.1" style="font-size:50%;">87.75  87.76  87.76</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.17.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.17.4.1">
<span class="ltx_p" id="A5.T3.8.1.17.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.17.4.1.1.1" style="font-size:50%;">72.74  74.54  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.17.4.1.1.2" style="font-size:50%;">77.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.17.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.17.5.1">
<span class="ltx_p" id="A5.T3.8.1.17.5.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.17.5.1.1.1" style="font-size:50%;">64.91  66.48  65.27</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.17.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.17.6.1">
<span class="ltx_p" id="A5.T3.8.1.17.6.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.17.6.1.1.1" style="font-size:50%;">76.26  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.17.6.1.1.2" style="font-size:50%;">76.21</span><span class="ltx_text" id="A5.T3.8.1.17.6.1.1.3" style="font-size:50%;">  76.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A5.T3.8.1.17.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.17.7.1">
<span class="ltx_p" id="A5.T3.8.1.17.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.17.7.1.1.1" style="font-size:50%;">76.23</span><span class="ltx_text" id="A5.T3.8.1.17.7.1.1.2" style="font-size:50%;">  76.32  76.52</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T3.8.1.18">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A5.T3.8.1.18.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="A5.T3.8.1.18.1.1" style="font-size:50%;">LLaVA-OV-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.8.1.18.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.18.2.1">
<span class="ltx_p" id="A5.T3.8.1.18.2.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.18.2.1.1.1" style="font-size:50%;">88.92</span><span class="ltx_text" id="A5.T3.8.1.18.2.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.18.2.1.1.3" style="font-size:50%;">88.92</span><span class="ltx_text" id="A5.T3.8.1.18.2.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.18.2.1.1.5" style="font-size:50%;">88.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.8.1.18.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.18.3.1">
<span class="ltx_p" id="A5.T3.8.1.18.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.18.3.1.1.1" style="font-size:50%;">88.92</span><span class="ltx_text" id="A5.T3.8.1.18.3.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.18.3.1.1.3" style="font-size:50%;">88.92</span><span class="ltx_text" id="A5.T3.8.1.18.3.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.18.3.1.1.5" style="font-size:50%;">88.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.8.1.18.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.18.4.1">
<span class="ltx_p" id="A5.T3.8.1.18.4.1.1" style="width:59.8pt;"><span class="ltx_text" id="A5.T3.8.1.18.4.1.1.1" style="font-size:50%;">72.35  74.17  77.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.8.1.18.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.18.5.1">
<span class="ltx_p" id="A5.T3.8.1.18.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A5.T3.8.1.18.5.1.1.1" style="font-size:50%;">65.03</span><span class="ltx_text" id="A5.T3.8.1.18.5.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.18.5.1.1.3" style="font-size:50%;">66.91</span><span class="ltx_text" id="A5.T3.8.1.18.5.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.18.5.1.1.5" style="font-size:50%;">65.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.8.1.18.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.18.6.1">
<span class="ltx_p" id="A5.T3.8.1.18.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.18.6.1.1.1" style="font-size:50%;">77.16</span><span class="ltx_text" id="A5.T3.8.1.18.6.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.18.6.1.1.3" style="font-size:50%;">77.10</span><span class="ltx_text" id="A5.T3.8.1.18.6.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.18.6.1.1.5" style="font-size:50%;">77.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A5.T3.8.1.18.7" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T3.8.1.18.7.1">
<span class="ltx_p" id="A5.T3.8.1.18.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T3.8.1.18.7.1.1.1" style="font-size:50%;">77.12</span><span class="ltx_text" id="A5.T3.8.1.18.7.1.1.2" style="font-size:50%;">  </span><span class="ltx_text ltx_font_bold ltx_align_center" id="A5.T3.8.1.18.7.1.1.3" style="font-size:50%;">77.24</span><span class="ltx_text" id="A5.T3.8.1.18.7.1.1.4" style="font-size:50%;">  </span><span class="ltx_text ltx_align_center ltx_framed ltx_framed_underline" id="A5.T3.8.1.18.7.1.1.5" style="font-size:50%;">77.54</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training the various large language models (LLMs) and multimodal large language models (MLLMs) on three specific datasets: MUSTARD, Anno-MI (client), and Anno-MI (therapist).  It shows the configurations for both supervised fine-tuning (SFT) and instruction tuning (IT) methods. For each model, the table lists the learning rate, warmup ratio, training batch size, number of epochs, LoRA rank, and alpha value. These hyperparameters were crucial in achieving the model performance reported in the paper.
> <details>
> <summary>read the caption</summary>
> Table 8:  Primary hyperparameters for SFT and IT on the MUStARD, Anno-MI (client), and Anno-MI (therapist) datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.16427/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16427/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}