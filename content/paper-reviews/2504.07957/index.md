---
title: "MM-IFEngine: Towards Multimodal Instruction Following"
summary: "MM-IFEngine enhances MLLM instruction-following using diverse data generation and a hybrid evaluation approach."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Fudan University",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07957 {{< /keyword >}}
{{< keyword icon="writer" >}} Shengyuan Ding et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07957" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07957" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07957/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing multimodal instruction following (IF) benchmarks have limitations such as scarce training data, simple instructions, and imprecise evaluation strategies. These benchmarks lack the **diversity required for real-world applications**, leading to saturated results and restricting the progress of current Multimodal Large Language Models (MLLMs) in IF.



To address these issues, this paper introduces the **MM-IFEngine**, an effective pipeline for generating high-quality image-instruction pairs. The pipeline yields large-scale training data (MM-IFInstruct-23k) and includes both compose-level and perception-level constraints, with a comprehensive evaluation pipeline. The approach is empirically validated, demonstrating significant performance gains on both the introduced **MM-IFEval** and existing benchmarks through fine-tuning MLLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MM-IFEngine, an effective pipeline to generate high-quality image-instruction pairs to train MLLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MM-IFEval, a benchmark with diverse constraints and comprehensive evaluation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Fine-tuning MLLMs on MM-IFInstruct-23k and MM-IFDPO-23k improves performance on instruction-following benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new **MM-IFEngine** to train Multimodal Large Language Models. This new method results in notable gains on various IF benchmarks, and provides researchers with novel benchmark to evaluate IF.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07957/x2.png)

> 🔼 Figure 1 illustrates the limitations of existing multimodal instruction following (IF) benchmarks (a), showcasing the lack of constraint diversity and complexity, and the insufficiency of current evaluation strategies.  In contrast, it introduces the MM-IFEval benchmark (b), a significant improvement over existing benchmarks. MM-IFEval features a broad range of constraints, including compose-level constraints (affecting model output formats and keywords) and perception-level constraints (requiring reasoning about image details).  Finally, it presents the MM-IFEngine (c), a system for creating a large, diverse training dataset suitable for various training methods (supervised fine-tuning and direct preference optimization) to improve multimodal instruction following capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1:  (a) Limitations of existing Multimodal Instruction Following (IF) benchmarks. (b) Overview of the MM-IFEval benchmark, which significantly surpasses existing benchmarks in terms of constraint diversity, quantity, and instruction complexity. Our benchmark consists of Compose-Level (C-Level) problems that impose constraints on model outputs (e.g., format requirements, keyword limits) and Perception-Level (P-Level) problems that require reasoning about specific visual elements in images. (c) Our MM-IFEngine generates a large-scale, diverse training dataset suitable for both Supervised Fine-Tuning (SFT) and Direct Preference Optimization (DPO).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.18.1">
<tr class="ltx_tr" id="S4.T1.18.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.18.1.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.18.1.1.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.1.2.1" style="font-size:90%;">Parameter</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.18.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.18.1.1.3.1" style="font-size:90%;">MM-IFEval</span><sup class="ltx_sup" id="S4.T1.18.1.1.3.2"><span class="ltx_text" id="S4.T1.18.1.1.3.2.1" style="font-size:90%;">M</span></sup><span class="ltx_text" id="S4.T1.18.1.1.3.3" style="font-size:90%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.18.1.1.4" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.1.4.1" style="font-size:90%;">MIA<sup class="ltx_sup" id="S4.T1.18.1.1.4.1.1">M</sup></span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.18.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.18.1.1.5.1" style="font-size:90%;">IFEval</span><sup class="ltx_sup" id="S4.T1.18.1.1.5.2"><span class="ltx_text" id="S4.T1.18.1.1.5.2.1" style="font-size:90%;">T</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.18.1.1.6" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.1.6.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.2.1.1">
<span class="ltx_p" id="S4.T1.18.1.2.1.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.2.1.1.1.1" style="font-size:90%;">C</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.2.2.1">
<span class="ltx_p" id="S4.T1.18.1.2.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.2.2.1.1.1" style="font-size:90%;">P</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.2.3.1">
<span class="ltx_p" id="S4.T1.18.1.2.3.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.2.3.1.1.1" style="font-size:90%;">Avg.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.2.4.1">
<span class="ltx_p" id="S4.T1.18.1.2.4.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.2.4.1.1.1" style="font-size:90%;">Prompt.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.2.5.1">
<span class="ltx_p" id="S4.T1.18.1.2.5.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.2.5.1.1.1" style="font-size:90%;">Inst.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.2.6.1">
<span class="ltx_p" id="S4.T1.18.1.2.6.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.2.6.1.1.1" style="font-size:90%;">Avg.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.18.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.18.1.3.1.1" style="font-size:90%;">LLaVA-NeXT-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.18.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T1.18.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.18.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.3.2.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.3.3.1">
<span class="ltx_p" id="S4.T1.18.1.3.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.3.3.1.1.1" style="font-size:90%;">36.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.3.4.1">
<span class="ltx_p" id="S4.T1.18.1.3.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.3.4.1.1.1" style="font-size:90%;">16.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.18.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.3.5.1">
<span class="ltx_p" id="S4.T1.18.1.3.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.3.5.1.1.1" style="font-size:90%;">31.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.18.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.3.6.1" style="font-size:90%;">73.2</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.3.7.1">
<span class="ltx_p" id="S4.T1.18.1.3.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.3.7.1.1.1" style="font-size:90%;">32.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.3.8.1">
<span class="ltx_p" id="S4.T1.18.1.3.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.3.8.1.1.1" style="font-size:90%;">43.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.18.1.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.3.9.1">
<span class="ltx_p" id="S4.T1.18.1.3.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.3.9.1.1.1" style="font-size:90%;">37.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.18.1.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.3.10.1" style="font-size:90%;">47.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.18.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.18.1.4.1.1" style="font-size:90%;">LLaVA-OneVision-Qwen2-7B-OV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.18.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S4.T1.18.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.4.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.4.3.1">
<span class="ltx_p" id="S4.T1.18.1.4.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.4.3.1.1.1" style="font-size:90%;">37.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.4.4.1">
<span class="ltx_p" id="S4.T1.18.1.4.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.4.4.1.1.1" style="font-size:90%;">24.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.4.5.1">
<span class="ltx_p" id="S4.T1.18.1.4.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.4.5.1.1.1" style="font-size:90%;">34.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.4.6.1" style="font-size:90%;">84.5</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.4.7.1">
<span class="ltx_p" id="S4.T1.18.1.4.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.4.7.1.1.1" style="font-size:90%;">43.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.4.8.1">
<span class="ltx_p" id="S4.T1.18.1.4.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.4.8.1.1.1" style="font-size:90%;">54.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.4.9.1">
<span class="ltx_p" id="S4.T1.18.1.4.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.4.9.1.1.1" style="font-size:90%;">49.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.1.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.4.10.1" style="font-size:90%;">55.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.18.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.18.1.5.1.1" style="font-size:90%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.18.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S4.T1.18.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.5.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.5.3.1">
<span class="ltx_p" id="S4.T1.18.1.5.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.5.3.1.1.1" style="font-size:90%;">45.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.5.4.1">
<span class="ltx_p" id="S4.T1.18.1.5.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.5.4.1.1.1" style="font-size:90%;">32.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.5.5.1">
<span class="ltx_p" id="S4.T1.18.1.5.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.5.5.1.1.1" style="font-size:90%;">41.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.5.6.1" style="font-size:90%;">86.2</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.5.7.1">
<span class="ltx_p" id="S4.T1.18.1.5.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.5.7.1.1.1" style="font-size:90%;">44.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.5.8.1">
<span class="ltx_p" id="S4.T1.18.1.5.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.5.8.1.1.1" style="font-size:90%;">57.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.5.9.1">
<span class="ltx_p" id="S4.T1.18.1.5.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.5.9.1.1.1" style="font-size:90%;">50.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.1.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.5.10.1" style="font-size:90%;">59.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.18.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.18.1.6.1.1" style="font-size:90%;">InternVL2.5-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.18.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.18.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.6.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.6.3.1">
<span class="ltx_p" id="S4.T1.18.1.6.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.6.3.1.1.1" style="font-size:90%;">49.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.6.4.1">
<span class="ltx_p" id="S4.T1.18.1.6.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.6.4.1.1.1" style="font-size:90%;">36.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.6.5.1">
<span class="ltx_p" id="S4.T1.18.1.6.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.6.5.1.1.1" style="font-size:90%;">46.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.6.6.1" style="font-size:90%;">88.5</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.6.7.1">
<span class="ltx_p" id="S4.T1.18.1.6.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.6.7.1.1.1" style="font-size:90%;">52.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.6.8.1">
<span class="ltx_p" id="S4.T1.18.1.6.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.6.8.1.1.1" style="font-size:90%;">62.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.6.9.1">
<span class="ltx_p" id="S4.T1.18.1.6.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.6.9.1.1.1" style="font-size:90%;">57.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.1.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.6.10.1" style="font-size:90%;">64.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.18.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.18.1.7.1.1" style="font-size:90%;">LLaVA-NeXT-Llama3-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.18.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T1.18.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.18.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.7.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.7.3.1">
<span class="ltx_p" id="S4.T1.18.1.7.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.7.3.1.1.1" style="font-size:90%;">45.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.7.4.1">
<span class="ltx_p" id="S4.T1.18.1.7.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.7.4.1.1.1" style="font-size:90%;">21.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.18.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.7.5.1">
<span class="ltx_p" id="S4.T1.18.1.7.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.7.5.1.1.1" style="font-size:90%;">39.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.18.1.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.7.6.1" style="font-size:90%;">83.3</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.7.7.1">
<span class="ltx_p" id="S4.T1.18.1.7.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.7.7.1.1.1" style="font-size:90%;">45.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.7.8.1">
<span class="ltx_p" id="S4.T1.18.1.7.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.7.8.1.1.1" style="font-size:90%;">56.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.18.1.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.7.9.1">
<span class="ltx_p" id="S4.T1.18.1.7.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.7.9.1.1.1" style="font-size:90%;">50.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.18.1.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.7.10.1" style="font-size:90%;">57.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.8" style="background-color:#DAEFF9;">
<td class="ltx_td ltx_align_left" id="S4.T1.18.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.8.1.1" style="font-size:90%;background-color:#DAEFF9;">w. MM-IFInstruct-23k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.8.2.1" style="font-size:90%;background-color:#DAEFF9;">-</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.8.3.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.8.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.8.3.1.1.1" style="font-size:90%;">59.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.8.4.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.8.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.8.4.1.1.1" style="font-size:90%;">19.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.8.5.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.8.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.8.5.1.1.1" style="font-size:90%;">49.2 </span><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.18.1.8.5.1.1.2" style="font-size:80%;color:#00B04F;">+9.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.8.6.1" style="font-size:90%;background-color:#DAEFF9;">86.5 <span class="ltx_text ltx_font_bold" id="S4.T1.18.1.8.6.1.1" style="font-size:89%;color:#00B04F;">+3.2</span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.8.7.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.8.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.8.7.1.1.1" style="font-size:90%;">50.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.8.8.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.8.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.8.8.1.1.1" style="font-size:90%;">61.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.8.9.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.8.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.8.9.1.1.1" style="font-size:90%;">56.3 </span><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.18.1.8.9.1.1.2" style="font-size:80%;color:#00B04F;">+5.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.1.8.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.8.10.1" style="font-size:90%;background-color:#DAEFF9;">64.0 <span class="ltx_text ltx_font_bold" id="S4.T1.18.1.8.10.1.1" style="font-size:89%;color:#00B04F;">+6.1</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.9" style="background-color:#FFE3C4;">
<td class="ltx_td ltx_align_left" id="S4.T1.18.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.9.1.1" style="font-size:90%;background-color:#FFE3C4;">w. MM-IFDPO-23k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.9.2.1" style="font-size:90%;background-color:#FFE3C4;">-</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.9.3.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.9.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.9.3.1.1.1" style="font-size:90%;">58.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.9.4.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.9.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.9.4.1.1.1" style="font-size:90%;">21.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.9.5.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.9.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.9.5.1.1.1" style="font-size:90%;">49.3 </span><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.18.1.9.5.1.1.2" style="font-size:80%;color:#00B04F;">+9.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.9.6.1" style="font-size:90%;background-color:#FFE3C4;">90.0 <span class="ltx_text ltx_font_bold" id="S4.T1.18.1.9.6.1.1" style="font-size:89%;color:#00B04F;">+6.7</span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.9.7.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.9.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.9.7.1.1.1" style="font-size:90%;">64.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.9.8.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.9.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.9.8.1.1.1" style="font-size:90%;">73.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.9.9.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.9.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.9.9.1.1.1" style="font-size:90%;">69.1 </span><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.18.1.9.9.1.1.2" style="font-size:80%;color:#00B04F;">+18.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.1.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.18.1.9.10.1" style="font-size:90%;background-color:#FFE3C4;">69.5<span class="ltx_text ltx_font_medium" id="S4.T1.18.1.9.10.1.1"> </span><span class="ltx_text" id="S4.T1.18.1.9.10.1.2" style="font-size:89%;color:#00B04F;">+11.6</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.18.1.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T1.18.1.10.1.1" style="font-size:90%;">Qwen2-VL-7B-Instruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.18.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T1.18.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.18.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.10.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.10.3.1">
<span class="ltx_p" id="S4.T1.18.1.10.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.10.3.1.1.1" style="font-size:90%;">42.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.10.4.1">
<span class="ltx_p" id="S4.T1.18.1.10.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.10.4.1.1.1" style="font-size:90%;">40.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.18.1.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.10.5.1">
<span class="ltx_p" id="S4.T1.18.1.10.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.10.5.1.1.1" style="font-size:90%;">42.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.18.1.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.10.6.1" style="font-size:90%;">80.5</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.10.7.1">
<span class="ltx_p" id="S4.T1.18.1.10.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.10.7.1.1.1" style="font-size:90%;">42.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.1.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.10.8.1">
<span class="ltx_p" id="S4.T1.18.1.10.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.10.8.1.1.1" style="font-size:90%;">52.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.18.1.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.10.9.1">
<span class="ltx_p" id="S4.T1.18.1.10.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.10.9.1.1.1" style="font-size:90%;">47.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.18.1.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.10.10.1" style="font-size:90%;">56.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.11" style="background-color:#DAEFF9;">
<td class="ltx_td ltx_align_left" id="S4.T1.18.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.11.1.1" style="font-size:90%;background-color:#DAEFF9;">w. MM-IFInstruct-23k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.11.2.1" style="font-size:90%;background-color:#DAEFF9;">-</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.11.3.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.11.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.11.3.1.1.1" style="font-size:90%;">57.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.11.4.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.11.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.11.4.1.1.1" style="font-size:90%;">38.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.11.5.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.11.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.11.5.1.1.1" style="font-size:90%;">52.3 </span><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.18.1.11.5.1.1.2" style="font-size:80%;color:#00B04F;">+10.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.1.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.11.6.1" style="font-size:90%;background-color:#DAEFF9;">87.7 <span class="ltx_text ltx_font_bold" id="S4.T1.18.1.11.6.1.1" style="font-size:89%;color:#00B04F;">+7.2</span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.11.7.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.11.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.11.7.1.1.1" style="font-size:90%;">46.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.18.1.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.11.8.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.11.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.11.8.1.1.1" style="font-size:90%;">58.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.18.1.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.11.9.1" style="background-color:#DAEFF9;">
<span class="ltx_p" id="S4.T1.18.1.11.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.11.9.1.1.1" style="font-size:90%;">52.6 </span><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.18.1.11.9.1.1.2" style="font-size:80%;color:#00B04F;">+5.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.1.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.11.10.1" style="font-size:90%;background-color:#DAEFF9;">64.2 <span class="ltx_text ltx_font_bold" id="S4.T1.18.1.11.10.1.1" style="font-size:89%;color:#00B04F;">+7.6</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.1.12" style="background-color:#FFE3C4;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.18.1.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.12.1.1" style="font-size:90%;background-color:#FFE3C4;">w. MM-IFDPO-23k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.18.1.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.12.2.1" style="font-size:90%;background-color:#FFE3C4;">-</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.18.1.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.12.3.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.12.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.12.3.1.1.1" style="font-size:90%;">55.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.18.1.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.12.4.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.12.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.12.4.1.1.1" style="font-size:90%;">43.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T1.18.1.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.12.5.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.12.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.12.5.1.1.1" style="font-size:90%;">52.2 </span><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.18.1.12.5.1.1.2" style="font-size:80%;color:#00B04F;">+10.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.18.1.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T1.18.1.12.6.1" style="font-size:90%;background-color:#FFE3C4;">88.1 <span class="ltx_text ltx_font_bold" id="S4.T1.18.1.12.6.1.1" style="font-size:89%;color:#00B04F;">+7.6</span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.18.1.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.12.7.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.12.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.12.7.1.1.1" style="font-size:90%;">55.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.18.1.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.12.8.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.12.8.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T1.18.1.12.8.1.1.1" style="font-size:90%;">64.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T1.18.1.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.1.12.9.1" style="background-color:#FFE3C4;">
<span class="ltx_p" id="S4.T1.18.1.12.9.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T1.18.1.12.9.1.1.1" style="font-size:90%;">59.7 </span><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.18.1.12.9.1.1.2" style="font-size:80%;color:#00B04F;">+12.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.18.1.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.18.1.12.10.1" style="font-size:90%;background-color:#FFE3C4;">66.7<span class="ltx_text ltx_font_medium" id="S4.T1.18.1.12.10.1.1"> </span><span class="ltx_text" id="S4.T1.18.1.12.10.1.2" style="font-size:89%;color:#00B04F;">+10.1</span></span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of different large language models' performance on three instruction-following benchmarks: MM-IFEval (a new benchmark proposed in this paper), MIA-Bench, and IFEval.  MM-IFEval is further broken down into compose-level and perception-level tasks, reflecting different aspects of instruction understanding. IFEval's results are shown as prompt-level and instruction-level accuracy. The final column averages the performance across all three benchmarks for easier comparison. The 'M' and 'T' symbols indicate whether a benchmark involves multimodal or text-only instructions respectively.
> <details>
> <summary>read the caption</summary>
> Table 1: Main results on Instruction Following benchmarks, including our proposed MM-IFEval, MIA-Bench [34], and IFEval [55]. The symbol M refers to multimodal benchmarks, and T denotes text-only benchmarks. We report both compose-level (“C”) and perception-level (“P”) for MM-IFEval, prompt-level accuracy (“Prompt.”) and Inst-level accuracy (“Inst.”) for IFEval, and the averaged results across all three benchmarks in the rightmost column.
> </details>





### In-depth insights


#### IF Benchmark Gap
The IF benchmark gap highlights the **limitations of existing multimodal instruction following benchmarks**. Current benchmarks often feature **simple, atomic instructions** and **weak correlation with visual content**, resulting in a lack of diversity needed for real-world applications. This leads to **performance saturation**, where models achieve high scores without truly mastering complex instruction following. Moreover, the reliance on **LLM-as-a-judge evaluation** introduces imprecision, particularly for instructions requiring **exact output constraints** like word counts. Addressing this benchmark gap necessitates creating more **challenging datasets with diverse constraints**, encompassing both compositional and perceptual aspects. Additionally, developing more **precise evaluation strategies**, combining rule-based verification with judge models, is crucial for accurately assessing a model's ability to follow intricate instructions and generate outputs that meet specific criteria. Bridging this gap is essential for advancing MLLMs and their real-world applicability. The problem is the **existing MLLM are not good enough**.

#### MM-IFEngine Data
While 'MM-IFEngine Data' isn't a direct heading, the paper heavily emphasizes the **MM-IFEngine** and its generated datasets. The core idea revolves around creating **high-quality, diverse image-instruction pairs**. This data is then used to train and evaluate MLLMs for instruction following. The engine likely produces both **MM-IFInstruct-23k (for SFT)** and **MM-IFDPO-23k (for DPO)**, catering to different training paradigms. A key aspect is **data diversity**, sourced from varied image types and constraint categories. The MM-IFEngine's data generation is further refined via a carefully crafted workflow, incorporating image filtering, task generation and diverse constraint integration using LLMs. All datasets are then validated using a suite of verification metrics, and post-processing steps to ensure data is of the highest quality are implemented. The creation of these structured datasets is likely the paper's key contribution, addressing the scarcity of good IF training resources.

#### Hybrid MM-IFEval
**Hybrid MM-IFEval** suggests a novel approach to multimodal instruction following (IF) evaluation, likely combining diverse methods to overcome limitations of existing benchmarks. A hybrid strategy could integrate **rule-based verification** for objective constraints (e.g., word counts) with **judge model assessment** for subjective aspects (tone, style). This approach enhances both **accuracy and robustness** by leveraging the strengths of each method. The evaluation may test both **compose-level constraints** (related to text) and **perception-level constraints** (tied to images), ensuring comprehensive assessment of MLLMs' IF capabilities.

#### MM-IF Data++
While 'MM-IF Data++' isn't explicitly mentioned, it evokes a vision of expanding and enriching multimodal instruction-following datasets. This implies **augmentation techniques**, like incorporating more diverse data sources, **synthetic data generation**, and **curation strategies** to address biases and improve model generalization. '++' suggests iterative enhancements, focusing on **data quality**, complexity, and relevance to real-world scenarios. The goal is to provide more robust training sets, enabling MLLMs to understand nuanced instructions, handle ambiguity, and generate accurate, context-aware responses.

#### Future IF Focus
The idea of "Future IF Focus", though not explicitly outlined, suggests intriguing directions for multimodal research. It implies a shift toward more **complex constraints**, moving beyond basic fact retrieval to tasks requiring nuanced understanding and precise execution. This encompasses integrating **perceptual and compositional constraints**, pushing models to reason about both visual elements and structural requirements. A future focus could involve **dynamic IF**, where instructions evolve based on the model's intermediate outputs, creating iterative reasoning processes. Furthermore, focusing on **real-world applicability** is critical, where IF tasks mirror practical scenarios with diverse inputs and expectations. The evaluation methodologies must also evolve, encompassing metrics that capture both accuracy and alignment with human preferences. Finally, to unleash the full potential, the upcoming multimodal studies should **prioritize creating large, diverse training datasets** and benchmarks that encourage continued progress in this challenging domain. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07957/x3.png)

> 🔼 The MM-IFEngine pipeline consists of three main stages: image filtering (selecting high-quality images), task generation (creating diverse instructions using GPT-40 for images without existing QA pairs, and refining existing annotations), and constraint integration (combining 6 main categories and 32 subcategories of constraints with tasks to ensure compatibility).  The pipeline generates the MM-IFInstruct-23k and MM-IFDPO-23k datasets for supervised fine-tuning (SFT) and direct preference optimization (DPO), respectively, and the MM-IFEval benchmark.  MM-IFEval uses three evaluation metrics: rule-based verification, direct judgment, and comparative judgment using a judge model, to provide comprehensive and accurate assessment of the model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall pipeline of MM-IFEngine. Part (a) demonstrates the three-stage workflow of our engine: (1) Image filter; (2) Task generation using GPT-4o for images without QA pairs and instruct refinement for existing annotations; and (3) Constraints integration incorporating 6 main categories and 32 subcategories, ensuring compatibility between constraints and tasks. MM-IFEngine is employed to generate SFT and DPO training datasets and MM-IFEval benchmark, as shown in part (b) and (c). MM-IFEval implements three evaluation metrics combining rule-based verification functions and a judge model to ensure accurate assessment.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/category_v3.png)

> 🔼 The figure shows a histogram illustrating the distribution of the number of constraints applied per instruction in the MM-IFInstruct-23k dataset.  The x-axis represents the number of constraints, ranging from 3 to 12. The y-axis shows the frequency or proportion of instructions with that specific number of constraints. The dataset demonstrates a diverse range of instruction complexity, as indicated by the spread of the data across the different constraint numbers, rather than a concentration at a particular value. This variation in complexity is a key feature of the MM-IFInstruct-23k dataset, which is designed to enhance the training of multimodal large language models in various instruction following scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 3: Constraint Quantity Distribution in MM-IFInstruct-23k. Our MM-IFInstruct-23k exhibits systematic variation in constraint complexity, with each sample containing 3-12 constraints per instruction.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/taxonomy.png)

> 🔼 The figure shows a breakdown of the constraint categories used in the MM-IFEval benchmark's compose-level problems.  It illustrates a hierarchical structure, starting with six main constraint categories, each further divided into multiple subcategories (32 in total). This multi-level taxonomy provides a comprehensive and granular way to evaluate the ability of multimodal instruction-following models.  The visualization helps understand the variety and complexity of constraints considered in the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 4: Constraint Category Distribution in Compose-Level Problems of MM-IFEval. This part comprises six primary constraint categories with 32 subcategories, forming a multi-level taxonomy for instruction-following evaluation.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/vision_v2.png)

> 🔼 This figure provides a detailed breakdown of the 32 constraint subcategories used in the MM-IFEval benchmark, organized into six main categories.  Each category represents a different type of constraint applied to the generated instructions and model outputs, encompassing aspects such as text length, formatting, language, logical structure, keywords, and action requirements. The visualization helps clarify the diversity and complexity of constraints within the benchmark, highlighting its enhanced evaluation capabilities compared to previous work.
> <details>
> <summary>read the caption</summary>
> Figure 5: Demonstration of constraints categories. We designed 6 main categories for all the constraints used, with a total of 32 subcategories
> </details>



![](https://arxiv.org/html/2504.07957/x4.png)

> 🔼 MM-IFEval's perception-level challenges encompass 100 diverse vision-based instruction-following tasks.  These tasks are systematically categorized into 13 distinct classes based on the image content's characteristics and the complexity of the instructions.  The figure visualizes the distribution of these 100 tasks across those 13 categories, offering insights into the benchmark's diversity and difficulty.
> <details>
> <summary>read the caption</summary>
> Figure 6: Image Source Distribution in perception-level problems.Perception-level problems in MM-IFEval presents a systematic categorization of 100 challenging vision-based instruction-following tasks, organized into 13 distinct classes according to image content characteristics and task complexity.
> </details>



![](https://arxiv.org/html/2504.07957/x5.png)

> 🔼 This figure shows a sample question from the MM-IFEval benchmark dataset's compose-level category, which focuses on generating text responses that adhere to various constraints. The prompt image depicts a dog exhibiting aggressive behavior. The task is to describe the possible causes of the dog's behavior within several constraints.  These constraints cover audience (dog lovers), tense (present and past), tone (reassuring and empathetic), paragraph count (3), word usage ('sorry'), highlighting specific terms, summarization, and perspective (second-person). This comprehensive example illustrates the complexity and variety of constraints within the MM-IFEval benchmark, moving beyond simple instructions found in previous datasets.
> <details>
> <summary>read the caption</summary>
> Figure 7: A compose-level problem example from the MM-IFEval benchmark in the general image category.
> </details>



![](https://arxiv.org/html/2504.07957/x6.png)

> 🔼 This figure shows a compose-level problem from the MM-IFEval benchmark dataset, focusing on chart image analysis. The task requires the model to identify the region with the highest apple production from a given chart and provide reasons for this high yield, while applying several constraints. The constraints include specifying the unit of measurement for the answer, writing from the perspective of a Mexican agricultural expert, limiting the number of sentences per paragraph, and using a specific formatting style for the analysis. This exemplifies the benchmark's complexity and diversity in evaluating multimodal instruction following.
> <details>
> <summary>read the caption</summary>
> Figure 8: A compose-level problem example from the MM-IFEval benchmark in the chart image category.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/t_web.png)

> 🔼 This figure shows a geometry problem from the MM-IFEval benchmark's compose-level questions.  The problem presents a diagram of a triangle with several midpoints marked, and asks the model to calculate the area of a specific region within the triangle using geometric principles, applying a series of constraints to guide the response generation. The constraints include audience (a liberal arts student), response length, structure (number of paragraphs and sentences), vocabulary restrictions (avoiding certain terms), tone, and overall clarity in the explanation.
> <details>
> <summary>read the caption</summary>
> Figure 9: A compose-level problem example from the MM-IFEval benchmark in the geometry image category.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/v_web.png)

> 🔼 This figure showcases a compose-level problem from the MM-IFEval benchmark, specifically focusing on website images.  The image itself is a screenshot of a webpage, likely featuring a blog post or online article. The task, presented as an instruction to the model, requires a detailed answer to a question about the webpage's content or functionality, subject to multiple constraints. These constraints might involve aspects such as word count, format (e.g., a numbered list), specific keywords to include or exclude, tone, and overall structure of the response. This example illustrates the complexity and diversity of the MM-IFEval benchmark, which assesses the model's ability to interpret not only text but also visual information to generate accurate and constrained responses.
> <details>
> <summary>read the caption</summary>
> Figure 10: A compose-level problem example from the MM-IFEval benchmark in the website image category.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/v_diagram.png)

> 🔼 This perception-level problem from the MM-IFEval benchmark tests a model's ability to extract information from a dynamic web page.  The image shows a portion of a cryptocurrency exchange website displaying real-time pricing data for various cryptocurrencies (Bitcoin, Ethereum, Tether, etc.). The associated question requires the model to perform a calculation based on the provided exchange rates. Specifically, it asks the model to compute the total value of a hypothetical investment in two cryptocurrencies given their purchase prices and the current exchange rates displayed on the webpage, rounding to the nearest whole number.
> <details>
> <summary>read the caption</summary>
> Figure 11: A perception-level problem example from the MM-IFEval benchmark in the web category.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/v_poster.png)

> 🔼 This figure presents a perception-level problem from the MM-IFEval benchmark, focusing on diagram interpretation. The task requires identifying the flowchart node reached after the first encountered 'Yes' condition, starting from the 'Start' node. This tests the model's ability to understand and follow instructions within a visual context, going beyond simple image recognition to require logical reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 12: A perception-level problem example from the MM-IFEval benchmark in the diagram category.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/v_difference.png)

> 🔼 This figure presents a perception-level problem from the MM-IFEval benchmark, specifically focusing on the poster image category.  The task requires the model to interpret a visual representation of the alphabet (using white dots and lines) and identify a specific letter based on the number of dots. The image's visual complexity and the need for accurate letter recognition assess the model's ability to perform image-based reasoning and instruction following.
> <details>
> <summary>read the caption</summary>
> Figure 13: A perception-level problem example from the MM-IFEval benchmark in the poster category.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/p_instruction_generation_prompt.png)

> 🔼 This figure shows a perception-level problem from the MM-IFEval benchmark, specifically designed to test the model's ability to identify differences between images.  The image shows two scenes of a camping trip, with subtle variations between them.  The instruction prompts the model to identify which of two people (Sam or Tom) found more differences between the scenes. This assesses visual perception, comparison skills, and precise answer generation.
> <details>
> <summary>read the caption</summary>
> Figure 14: A perception-level problem example from the MM-IFEval benchmark in the finding difference category.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/p_constraint_integration_prompt.png)

> 🔼 This figure shows the prompt template used by the MM-IFEngine pipeline for generating image-based instructions. The prompt instructs a large language model (LLM) to create concise and appropriate instructions for a given image.  It guides the LLM to avoid overly detailed or specific instructions, offering examples and suggesting a structured output format.  The prompt ensures the generated instructions are relevant and suitable for the image's content while maintaining a balance between general applicability and tailored specificity.
> <details>
> <summary>read the caption</summary>
> Figure 15: Prompt template for image generation instructions using a large language model in MM-IFEngine.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/cc3m.png)

> 🔼 This figure displays the prompt template utilized within the MM-IFEngine pipeline to incorporate constraints into image instructions.  The prompt instructs an expert-level large language model to expand an initial instruction by adding as many appropriate constraints as possible.  It emphasizes maintaining thematic consistency with the original instruction, ensuring relevance and conciseness, and avoiding conflicts between constraints or with the original instruction.  The prompt provides examples to illustrate acceptable constraint addition and offers a structured format for the model's output.
> <details>
> <summary>read the caption</summary>
> Figure 16: prompt template for integrating constraints in MM-IFEngine.
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/allava.png)

> 🔼 This figure shows a poem generated by the MM-IFEngine pipeline, trained on the CC3M dataset.  The poem, titled 'Answer', depicts the hustle and bustle of city life, incorporating details from a provided image. The MM-IFEngine pipeline is designed to create high-quality image-instruction pairs for multimodal instruction following. This example highlights the pipeline's capacity to generate creative text formats (here, a poem) while adhering to specific constraints. The constraints applied are indicated in the caption and include structural elements (stanza length, number of lines, and use of parentheses), stylistic aspects (use of bold for nouns and present tense), and narrative structure (beginning and ending lines).
> <details>
> <summary>read the caption</summary>
> Figure 17: A sample constructed by MM-IFEngine pipeline from cc3m dataset
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/diversity.png)

> 🔼 This figure shows an example of image-text pair generated by MM-IFEngine from the ALLAVA dataset. The image contains a picture of several cookies and muffins on a plate. The generated text is a response to the instruction 'What treat can be baked in an oven?', which is tailored for a general adult audience with minimal baking experience, providing clear and simple explanations. The text also follows various constraints, such as writing style, sentence structure, and keywords.
> <details>
> <summary>read the caption</summary>
> Figure 18: A sample constructed by MM-IFEngine pipeline from Allava dataset
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/DPO.png)

> 🔼 This figure shows an example of a geometry problem generated by the MM-IFEngine pipeline from the geo170k dataset.  It showcases a complex geometry problem involving angles within a circle and the application of geometric principles to find a specific angle. The problem includes a diagram and a detailed instruction, demonstrating the pipeline's ability to create challenging and diverse problems for multimodal instruction following.
> <details>
> <summary>read the caption</summary>
> Figure 19: A sample constructed by MM-IFEngine pipeline from geo170k dataset
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/p_prompt_to_choose_f_and_p.png)

> 🔼 Figure 20 showcases a pair of image-instruction examples used in Direct Preference Optimization (DPO).  The 'chosen' example represents a high-quality image-instruction pair generated by the MM-IFEngine pipeline. The 'rejected' example is derived from the same image and initial instruction but with approximately 33% of the original constraints removed. This demonstrates how the MM-IFEngine produces negative samples for DPO training by systematically altering the constraints applied to the image-instruction pairs. The comparison highlights the importance of carefully crafted constraints in producing effective training data.
> <details>
> <summary>read the caption</summary>
> Figure 20: A DPO training set sample, where the rejected data is obtained by removing 33% of the constraints
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/p_compare_judge_prompt.png)

> 🔼 This figure shows the prompt template used for automatically selecting the appropriate verification function and extracting the necessary parameters for rule-based evaluation in the MM-IFEval benchmark. The prompt guides a large language model (LLM) to select the best function from a list of candidates and extract the required parameters based on the constraint. This automation streamlines the evaluation process and improves efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 21: Prompt template for automated verification function selection and paramater extraction
> </details>



![](https://arxiv.org/html/2504.07957/extracted/6352110/figs/Appendix/p_direct_judge_prompt.png)

> 🔼 This prompt template instructs the LLM to act as a judge, comparing two model outputs: one generated with a specific constraint and another without.  The judge must determine if the constrained response meaningfully differs from the unconstrained one, indicating whether the constraint was effectively applied. A simple 'True' or 'False' response is required.
> <details>
> <summary>read the caption</summary>
> Figure 22: Prompt template for Compare Judge Method
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.3">
<tr class="ltx_tr" id="S4.T2.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.3.3.4.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.4.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.3.3.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.4.2.1" style="font-size:90%;">General</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.3.3.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.4.3.1" style="font-size:90%;">Document</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.3.3.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.4.4.1" style="font-size:90%;">Chat</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.3.3.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.4.5.1" style="font-size:90%;">Hallusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.4.6" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.4.6.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1.1" style="font-size:90%;">MMMU</span><math alttext="{}_{\text{val}}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><msub id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1a" xref="S4.T2.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T2.1.1.1.1.m1.1.1.1" mathsize="90%" xref="S4.T2.1.1.1.1.m1.1.1.1a.cmml">val</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><ci id="S4.T2.1.1.1.1.m1.1.1.1a.cmml" xref="S4.T2.1.1.1.1.m1.1.1.1"><mtext id="S4.T2.1.1.1.1.m1.1.1.1.cmml" mathsize="63%" xref="S4.T2.1.1.1.1.m1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">{}_{\text{val}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">start_FLOATSUBSCRIPT val end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.2.2.2.2.1" style="font-size:90%;">MMBench</span><math alttext="{}_{\text{dev}}" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><msub id="S4.T2.2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.2.m1.1.1.cmml"><mi id="S4.T2.2.2.2.2.m1.1.1a" xref="S4.T2.2.2.2.2.m1.1.1.cmml"></mi><mtext id="S4.T2.2.2.2.2.m1.1.1.1" mathsize="90%" xref="S4.T2.2.2.2.2.m1.1.1.1a.cmml">dev</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><apply id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1"><ci id="S4.T2.2.2.2.2.m1.1.1.1a.cmml" xref="S4.T2.2.2.2.2.m1.1.1.1"><mtext id="S4.T2.2.2.2.2.m1.1.1.1.cmml" mathsize="63%" xref="S4.T2.2.2.2.2.m1.1.1.1">dev</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">{}_{\text{dev}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">start_FLOATSUBSCRIPT dev end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.4.1" style="font-size:90%;">MMStar</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.3.3.3.3.1" style="font-size:90%;">MMT-Bench</span><math alttext="{}_{\text{val}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><msub id="S4.T2.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.cmml"><mi id="S4.T2.3.3.3.3.m1.1.1a" xref="S4.T2.3.3.3.3.m1.1.1.cmml"></mi><mtext id="S4.T2.3.3.3.3.m1.1.1.1" mathsize="90%" xref="S4.T2.3.3.3.3.m1.1.1.1a.cmml">val</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><apply id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1"><ci id="S4.T2.3.3.3.3.m1.1.1.1a.cmml" xref="S4.T2.3.3.3.3.m1.1.1.1"><mtext id="S4.T2.3.3.3.3.m1.1.1.1.cmml" mathsize="63%" xref="S4.T2.3.3.3.3.m1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">{}_{\text{val}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">start_FLOATSUBSCRIPT val end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.5.1" style="font-size:90%;">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.6.1" style="font-size:90%;">OCRBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.7.1" style="font-size:90%;">MMVet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.8.1" style="font-size:90%;">POPE</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.3.3.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.3.3.5.1.1" style="font-size:90%;">LLaVA-NeXT-Llama3-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.3.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S4.T2.3.3.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.2.1" style="font-size:90%;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.3.1" style="font-size:90%;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.4.1" style="font-size:90%;">43.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.5.1" style="font-size:90%;">53.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.6.1" style="font-size:90%;">73.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.7.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.8.1" style="font-size:90%;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.9.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.5.10.1" style="font-size:90%;">58.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.6" style="background-color:#DAEFF9;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.3.3.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.1.1" style="font-size:90%;background-color:#DAEFF9;">w. MM-IFInstruct-23k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.2.1" style="font-size:90%;background-color:#DAEFF9;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.3.1" style="font-size:90%;background-color:#DAEFF9;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.4.1" style="font-size:90%;background-color:#DAEFF9;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.5.1" style="font-size:90%;background-color:#DAEFF9;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.6.1" style="font-size:90%;background-color:#DAEFF9;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.7.1" style="font-size:90%;background-color:#DAEFF9;">55.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.8.1" style="font-size:90%;background-color:#DAEFF9;">46.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.9.1" style="font-size:90%;background-color:#DAEFF9;">88.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.6.10.1" style="font-size:90%;background-color:#DAEFF9;">59.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.7" style="background-color:#FFE3C4;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.3.3.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.1.1" style="font-size:90%;background-color:#FFE3C4;">w. MM-IFDPO-23k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.2.1" style="font-size:90%;background-color:#FFE3C4;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.3.1" style="font-size:90%;background-color:#FFE3C4;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.4.1" style="font-size:90%;background-color:#FFE3C4;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.5.1" style="font-size:90%;background-color:#FFE3C4;">53.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.6.1" style="font-size:90%;background-color:#FFE3C4;">72.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.7.1" style="font-size:90%;background-color:#FFE3C4;">56.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.8.1" style="font-size:90%;background-color:#FFE3C4;">43.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.9.1" style="font-size:90%;background-color:#FFE3C4;">86.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.7.10.1" style="font-size:90%;background-color:#FFE3C4;">59.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.3.3.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.3.3.8.1.1" style="font-size:90%;">Qwen2-VL-7B-Instruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.3.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T2.3.3.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.2.1" style="font-size:90%;">53.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.3.1" style="font-size:90%;">81.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.4.1" style="font-size:90%;">60.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.5.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.6.1" style="font-size:90%;">82.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.8.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.7.1" style="font-size:90%;">86.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.8.1" style="font-size:90%;">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.9.1" style="font-size:90%;">86.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.8.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.8.10.1" style="font-size:90%;">72.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.9" style="background-color:#DAEFF9;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.3.3.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.1.1" style="font-size:90%;background-color:#DAEFF9;">w. MM-IFInstruct-23k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.2.1" style="font-size:90%;background-color:#DAEFF9;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.3.1" style="font-size:90%;background-color:#DAEFF9;">79.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.4.1" style="font-size:90%;background-color:#DAEFF9;">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.5.1" style="font-size:90%;background-color:#DAEFF9;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.6.1" style="font-size:90%;background-color:#DAEFF9;">81.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.7.1" style="font-size:90%;background-color:#DAEFF9;">81.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.8.1" style="font-size:90%;background-color:#DAEFF9;">61.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.9.1" style="font-size:90%;background-color:#DAEFF9;">89.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.9.10.1" style="font-size:90%;background-color:#DAEFF9;">70.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.10" style="background-color:#FFE3C4;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.3.3.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.1.1" style="font-size:90%;background-color:#FFE3C4;">w. MM-IFDPO-23k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.2.1" style="font-size:90%;background-color:#FFE3C4;">54.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.3.1" style="font-size:90%;background-color:#FFE3C4;">81.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.4.1" style="font-size:90%;background-color:#FFE3C4;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.3.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.5.1" style="font-size:90%;background-color:#FFE3C4;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.6.1" style="font-size:90%;background-color:#FFE3C4;">83.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.3.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.7.1" style="font-size:90%;background-color:#FFE3C4;">86.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.3.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.8.1" style="font-size:90%;background-color:#FFE3C4;">66.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.3.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.9.1" style="font-size:90%;background-color:#FFE3C4;">85.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.3.3.10.10.1" style="font-size:90%;background-color:#FFE3C4;">72.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance of fine-tuned language models on various Visual Question Answering (VQA) benchmarks.  These benchmarks assess different aspects of visual understanding and reasoning, categorized into general knowledge, document understanding, chat, and hallucination tasks. The table shows that fine-tuning models using the MM-IFDPO-23k dataset leads to comparable performance across all benchmark categories, suggesting the effectiveness of the training data in enhancing VQA capabilities without sacrificing performance on other tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Main results on VQA benchmarks, including general knowledge (MMMU [49], MMBench [24], MMStar [5], MMT-Bench [47]), document understanding (AI2D [15], OCRBench [25]), Chat (MMVet [48]) and Hallusion (POPE [19]). Fine-tuning models on MM-IFDPO-23k achieve comparable performance across these benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.12.1">
<tr class="ltx_tr" id="S5.T3.12.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.12.1.1.1"><span class="ltx_text" id="S5.T3.12.1.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.12.1.1.2"><span class="ltx_text" id="S5.T3.12.1.1.2.1" style="font-size:90%;">Param</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.12.1.1.3"><span class="ltx_text" id="S5.T3.12.1.1.3.1" style="font-size:90%;">C-Level</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.12.1.1.4"><span class="ltx_text" id="S5.T3.12.1.1.4.1" style="font-size:90%;">P-Level</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.12.1.1.5"><span class="ltx_text" id="S5.T3.12.1.1.5.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S5.T3.12.1.2.1"><span class="ltx_text ltx_font_italic" id="S5.T3.12.1.2.1.1" style="font-size:90%;">Proprietary MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.12.1.3.1">
<span class="ltx_text" id="S5.T3.12.1.3.1.1" style="font-size:90%;">Claude-3.5V-Sonnet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S5.T3.12.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.3.2"><span class="ltx_text" id="S5.T3.12.1.3.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.3.3"><span class="ltx_text" id="S5.T3.12.1.3.3.1" style="font-size:90%;">67.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.3.4"><span class="ltx_text ltx_font_bold" id="S5.T3.12.1.3.4.1" style="font-size:90%;">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.3.5"><span class="ltx_text" id="S5.T3.12.1.3.5.1" style="font-size:90%;">61.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.4">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.4.1">
<span class="ltx_text" id="S5.T3.12.1.4.1.1" style="font-size:90%;">GPT-4o-mini </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S5.T3.12.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.4.2"><span class="ltx_text" id="S5.T3.12.1.4.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.4.3"><span class="ltx_text" id="S5.T3.12.1.4.3.1" style="font-size:90%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.4.4"><span class="ltx_text" id="S5.T3.12.1.4.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.4.5"><span class="ltx_text" id="S5.T3.12.1.4.5.1" style="font-size:90%;">62.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.5">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.5.1">
<span class="ltx_text" id="S5.T3.12.1.5.1.1" style="font-size:90%;">GPT-4o (20240806) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S5.T3.12.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.5.2"><span class="ltx_text" id="S5.T3.12.1.5.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.5.3"><span class="ltx_text ltx_font_bold" id="S5.T3.12.1.5.3.1" style="font-size:90%;">71.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.5.4"><span class="ltx_text ltx_font_bold" id="S5.T3.12.1.5.4.1" style="font-size:90%;">44.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.5.5"><span class="ltx_text ltx_font_bold" id="S5.T3.12.1.5.5.1" style="font-size:90%;">64.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S5.T3.12.1.6.1"><span class="ltx_text ltx_font_italic" id="S5.T3.12.1.6.1.1" style="font-size:90%;">Open-Source MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.12.1.7.1">
<span class="ltx_text" id="S5.T3.12.1.7.1.1" style="font-size:90%;">LLaVA-NeXT-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S5.T3.12.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.7.2"><span class="ltx_text" id="S5.T3.12.1.7.2.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.7.3"><span class="ltx_text" id="S5.T3.12.1.7.3.1" style="font-size:90%;">36.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.7.4"><span class="ltx_text" id="S5.T3.12.1.7.4.1" style="font-size:90%;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.7.5"><span class="ltx_text" id="S5.T3.12.1.7.5.1" style="font-size:90%;">31.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.8">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.8.1">
<span class="ltx_text" id="S5.T3.12.1.8.1.1" style="font-size:90%;">LLaVA-OneVision-Qwen2-7b-OV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S5.T3.12.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.8.2"><span class="ltx_text" id="S5.T3.12.1.8.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.8.3"><span class="ltx_text" id="S5.T3.12.1.8.3.1" style="font-size:90%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.8.4"><span class="ltx_text" id="S5.T3.12.1.8.4.1" style="font-size:90%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.8.5"><span class="ltx_text" id="S5.T3.12.1.8.5.1" style="font-size:90%;">34.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.9">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.9.1">
<span class="ltx_text" id="S5.T3.12.1.9.1.1" style="font-size:90%;">MiniCPM-V-2.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S5.T3.12.1.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.9.2"><span class="ltx_text" id="S5.T3.12.1.9.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.9.3"><span class="ltx_text" id="S5.T3.12.1.9.3.1" style="font-size:90%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.9.4"><span class="ltx_text" id="S5.T3.12.1.9.4.1" style="font-size:90%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.9.5"><span class="ltx_text" id="S5.T3.12.1.9.5.1" style="font-size:90%;">37.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.10">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.10.1">
<span class="ltx_text" id="S5.T3.12.1.10.1.1" style="font-size:90%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S5.T3.12.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.10.2"><span class="ltx_text" id="S5.T3.12.1.10.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.10.3"><span class="ltx_text" id="S5.T3.12.1.10.3.1" style="font-size:90%;">45.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.10.4"><span class="ltx_text" id="S5.T3.12.1.10.4.1" style="font-size:90%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.10.5"><span class="ltx_text" id="S5.T3.12.1.10.5.1" style="font-size:90%;">41.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.11">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.11.1">
<span class="ltx_text" id="S5.T3.12.1.11.1.1" style="font-size:90%;">InternVL2-40B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S5.T3.12.1.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.11.2"><span class="ltx_text" id="S5.T3.12.1.11.2.1" style="font-size:90%;">40B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.11.3"><span class="ltx_text" id="S5.T3.12.1.11.3.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.11.4"><span class="ltx_text" id="S5.T3.12.1.11.4.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.11.5"><span class="ltx_text" id="S5.T3.12.1.11.5.1" style="font-size:90%;">45.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.12">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.12.1">
<span class="ltx_text" id="S5.T3.12.1.12.1.1" style="font-size:90%;">InternVL2.5-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S5.T3.12.1.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.12.2"><span class="ltx_text" id="S5.T3.12.1.12.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.12.3"><span class="ltx_text" id="S5.T3.12.1.12.3.1" style="font-size:90%;">49.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.12.4"><span class="ltx_text" id="S5.T3.12.1.12.4.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.12.5"><span class="ltx_text" id="S5.T3.12.1.12.5.1" style="font-size:90%;">46.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.13">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.13.1">
<span class="ltx_text" id="S5.T3.12.1.13.1.1" style="font-size:90%;">InternVL2.5-26B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S5.T3.12.1.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.13.2"><span class="ltx_text" id="S5.T3.12.1.13.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.13.3"><span class="ltx_text" id="S5.T3.12.1.13.3.1" style="font-size:90%;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.13.4"><span class="ltx_text" id="S5.T3.12.1.13.4.1" style="font-size:90%;">32.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.13.5"><span class="ltx_text" id="S5.T3.12.1.13.5.1" style="font-size:90%;">48.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.14">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.14.1">
<span class="ltx_text" id="S5.T3.12.1.14.1.1" style="font-size:90%;">Qwen2-VL-72B-Instruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S5.T3.12.1.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.14.2"><span class="ltx_text" id="S5.T3.12.1.14.2.1" style="font-size:90%;">72B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.14.3"><span class="ltx_text" id="S5.T3.12.1.14.3.1" style="font-size:90%;">53.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.14.4"><span class="ltx_text ltx_font_bold" id="S5.T3.12.1.14.4.1" style="font-size:90%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.14.5"><span class="ltx_text" id="S5.T3.12.1.14.5.1" style="font-size:90%;">50.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.12.1.15.1">
<span class="ltx_text" id="S5.T3.12.1.15.1.1" style="font-size:90%;">LLaVA-NeXT-Llama3-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S5.T3.12.1.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.15.2"><span class="ltx_text" id="S5.T3.12.1.15.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.15.3"><span class="ltx_text" id="S5.T3.12.1.15.3.1" style="font-size:90%;">45.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.15.4"><span class="ltx_text" id="S5.T3.12.1.15.4.1" style="font-size:90%;">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.15.5"><span class="ltx_text" id="S5.T3.12.1.15.5.1" style="font-size:90%;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.16" style="background-color:#FFE3C4;">
<td class="ltx_td ltx_align_left" id="S5.T3.12.1.16.1"><span class="ltx_text" id="S5.T3.12.1.16.1.1" style="font-size:90%;background-color:#FFE3C4;">+ MM-IFDPO-23k</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.16.2"><span class="ltx_text" id="S5.T3.12.1.16.2.1" style="font-size:90%;background-color:#FFE3C4;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.16.3"><span class="ltx_text ltx_font_bold" id="S5.T3.12.1.16.3.1" style="font-size:90%;background-color:#FFE3C4;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.16.4"><span class="ltx_text" id="S5.T3.12.1.16.4.1" style="font-size:90%;background-color:#FFE3C4;">21.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.1.16.5"><span class="ltx_text" id="S5.T3.12.1.16.5.1" style="font-size:90%;background-color:#FFE3C4;">49.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.12.1.17.1">
<span class="ltx_text" id="S5.T3.12.1.17.1.1" style="font-size:90%;">Qwen2-VL-7B-Instruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.12.1.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07957v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S5.T3.12.1.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.17.2"><span class="ltx_text" id="S5.T3.12.1.17.2.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.17.3"><span class="ltx_text" id="S5.T3.12.1.17.3.1" style="font-size:90%;">42.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.17.4"><span class="ltx_text" id="S5.T3.12.1.17.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.12.1.17.5"><span class="ltx_text" id="S5.T3.12.1.17.5.1" style="font-size:90%;">42.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.1.18" style="background-color:#FFE3C4;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.12.1.18.1"><span class="ltx_text" id="S5.T3.12.1.18.1.1" style="font-size:90%;background-color:#FFE3C4;">+ MM-IFDPO-23k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.12.1.18.2"><span class="ltx_text" id="S5.T3.12.1.18.2.1" style="font-size:90%;background-color:#FFE3C4;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.12.1.18.3"><span class="ltx_text" id="S5.T3.12.1.18.3.1" style="font-size:90%;background-color:#FFE3C4;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.12.1.18.4"><span class="ltx_text ltx_font_bold" id="S5.T3.12.1.18.4.1" style="font-size:90%;background-color:#FFE3C4;">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.12.1.18.5"><span class="ltx_text ltx_font_bold" id="S5.T3.12.1.18.5.1" style="font-size:90%;background-color:#FFE3C4;">52.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comprehensive evaluation of various Multimodal Large Language Models (MLLMs) on the MM-IFEval benchmark.  The table shows the performance of each model on both compose-level (C-Level) and perception-level (P-Level) problems within MM-IFEval.  'Accuracy' represents the percentage of correctly answered questions.  The results are broken down into performance on easier problems and harder problems to give a more nuanced understanding of the models' capabilities. The best-performing model in each category is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation of various MLLMs on MM-IFEval. We report the accuracy of easy and difficult problems and the average accuracy across all problems. The C-Level and P-Level refer to the compose-level and perception-level problems, respectively. The best performance in each section is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.7.1">
<tr class="ltx_tr" id="S5.T4.7.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.7.1.1.1"><span class="ltx_text" id="S5.T4.7.1.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.1.2"><span class="ltx_text" id="S5.T4.7.1.1.2.1" style="font-size:90%;">MM-IFEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.1.3"><span class="ltx_text" id="S5.T4.7.1.1.3.1" style="font-size:90%;">MIA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.7.1.1.4"><span class="ltx_text" id="S5.T4.7.1.1.4.1" style="font-size:90%;">IFEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.1.5"><span class="ltx_text" id="S5.T4.7.1.1.5.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.7.1.2.1"><span class="ltx_text" id="S5.T4.7.1.2.1.1" style="font-size:90%;">Qwen2-VL-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.2.2"><span class="ltx_text" id="S5.T4.7.1.2.2.1" style="font-size:90%;">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.2.3"><span class="ltx_text" id="S5.T4.7.1.2.3.1" style="font-size:90%;">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.7.1.2.4"><span class="ltx_text" id="S5.T4.7.1.2.4.1" style="font-size:90%;">47.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.2.5"><span class="ltx_text" id="S5.T4.7.1.2.5.1" style="font-size:90%;">56.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.1.3.1"><span class="ltx_text" id="S5.T4.7.1.3.1.1" style="font-size:90%;">+ DPO (-33% cons)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.3.2"><span class="ltx_text" id="S5.T4.7.1.3.2.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.3.3"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.3.3.1" style="font-size:90%;">88.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.3.4"><span class="ltx_text" id="S5.T4.7.1.3.4.1" style="font-size:90%;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.3.5"><span class="ltx_text" id="S5.T4.7.1.3.5.1" style="font-size:90%;">65.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.1.4.1"><span class="ltx_text" id="S5.T4.7.1.4.1.1" style="font-size:90%;">+ DPO (-66% cons)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.4.2"><span class="ltx_text" id="S5.T4.7.1.4.2.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.4.3"><span class="ltx_text" id="S5.T4.7.1.4.3.1" style="font-size:90%;">88.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.4.4"><span class="ltx_text" id="S5.T4.7.1.4.4.1" style="font-size:90%;">58.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.4.5"><span class="ltx_text" id="S5.T4.7.1.4.5.1" style="font-size:90%;">65.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.1.5.1"><span class="ltx_text" id="S5.T4.7.1.5.1.1" style="font-size:90%;">+ DPO (-100% cons)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.2"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.5.2.1" style="font-size:90%;">52.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.3"><span class="ltx_text" id="S5.T4.7.1.5.3.1" style="font-size:90%;">88.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.5.4"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.5.4.1" style="font-size:90%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.5.5"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.5.5.1" style="font-size:90%;">66.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.1.6.1"><span class="ltx_text" id="S5.T4.7.1.6.1.1" style="font-size:90%;">+ DPO (w/o img)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.2"><span class="ltx_text" id="S5.T4.7.1.6.2.1" style="font-size:90%;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.3"><span class="ltx_text" id="S5.T4.7.1.6.3.1" style="font-size:90%;">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.6.4"><span class="ltx_text" id="S5.T4.7.1.6.4.1" style="font-size:90%;">54.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.6.5"><span class="ltx_text" id="S5.T4.7.1.6.5.1" style="font-size:90%;">63.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.7.1.7.1"><span class="ltx_text" id="S5.T4.7.1.7.1.1" style="font-size:90%;">LLaVA-NeXT-Llama3-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.7.2"><span class="ltx_text" id="S5.T4.7.1.7.2.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.7.3"><span class="ltx_text" id="S5.T4.7.1.7.3.1" style="font-size:90%;">83.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.7.1.7.4"><span class="ltx_text" id="S5.T4.7.1.7.4.1" style="font-size:90%;">50.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.1.7.5"><span class="ltx_text" id="S5.T4.7.1.7.5.1" style="font-size:90%;">57.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.1.8.1"><span class="ltx_text" id="S5.T4.7.1.8.1.1" style="font-size:90%;">+ DPO (-33% cons)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.8.2"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.8.2.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.8.3"><span class="ltx_text" id="S5.T4.7.1.8.3.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.8.4"><span class="ltx_text" id="S5.T4.7.1.8.4.1" style="font-size:90%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.8.5"><span class="ltx_text" id="S5.T4.7.1.8.5.1" style="font-size:90%;">67.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.1.9.1"><span class="ltx_text" id="S5.T4.7.1.9.1.1" style="font-size:90%;">+ DPO (-66% cons)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.9.2"><span class="ltx_text" id="S5.T4.7.1.9.2.1" style="font-size:90%;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.9.3"><span class="ltx_text" id="S5.T4.7.1.9.3.1" style="font-size:90%;">86.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.9.4"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.9.4.1" style="font-size:90%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.9.5"><span class="ltx_text" id="S5.T4.7.1.9.5.1" style="font-size:90%;">68.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.1.10.1"><span class="ltx_text" id="S5.T4.7.1.10.1.1" style="font-size:90%;">+ DPO (-100% cons)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.10.2"><span class="ltx_text" id="S5.T4.7.1.10.2.1" style="font-size:90%;">49.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.10.3"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.10.3.1" style="font-size:90%;">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.7.1.10.4"><span class="ltx_text" id="S5.T4.7.1.10.4.1" style="font-size:90%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.1.10.5"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.10.5.1" style="font-size:90%;">69.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T4.7.1.11.1"><span class="ltx_text" id="S5.T4.7.1.11.1.1" style="font-size:90%;">+ DPO (w/o img)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.11.2"><span class="ltx_text" id="S5.T4.7.1.11.2.1" style="font-size:90%;">44.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.11.3"><span class="ltx_text" id="S5.T4.7.1.11.3.1" style="font-size:90%;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.7.1.11.4"><span class="ltx_text" id="S5.T4.7.1.11.4.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.1.11.5"><span class="ltx_text" id="S5.T4.7.1.11.5.1" style="font-size:90%;">65.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of various negative sampling strategies within the Direct Preference Optimization (DPO) training framework on instruction-following performance.  It compares four different DPO setups: one baseline and three variants. The variants systematically reduce the number of constraints used during negative sample generation (by 33%, 66%, and 100%), while the final variant removes image input entirely. Performance is evaluated across three instruction-following benchmarks (MM-IFEval, MIA, and IFEval), and an average score across these benchmarks is reported.
> <details>
> <summary>read the caption</summary>
> Table 4:  Ablation studies across different DPO settings, including randomly deleting constraints (second row to fourth row) or prompting MLLMs without images (bottom row) to generate negative responses. Avg. refers to the average score of three IF benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T5.2">
<tr class="ltx_tr" id="A5.T5.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T5.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.1.1.1">
<span class="ltx_p" id="A5.T5.2.1.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.1.1.1.1.1" style="font-size:50%;">Main Class</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.1.2.1">
<span class="ltx_p" id="A5.T5.2.1.2.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.1.2.1.1.1" style="font-size:50%;">Subclass</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.1.3.1">
<span class="ltx_p" id="A5.T5.2.1.3.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.1.3.1.1.1" style="font-size:50%;">Evaluation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.1.4.1">
<span class="ltx_p" id="A5.T5.2.1.4.1.1" style="width:93.9pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.1.4.1.1.1" style="font-size:50%;">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.1.5.1">
<span class="ltx_p" id="A5.T5.2.1.5.1.1" style="width:93.9pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.1.5.1.1.1" style="font-size:50%;">Example</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T5.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.2.1.1">
<span class="ltx_p" id="A5.T5.2.2.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.2.1.1.1.1" style="font-size:50%;">A. Rhetoric &amp; Logic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.2.2.1">
<span class="ltx_p" id="A5.T5.2.2.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.2.2.1.1.1" style="font-size:50%;">A.1 Rhetoric requirements</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.2.3.1">
<span class="ltx_p" id="A5.T5.2.2.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.2.3.1.1.1" style="font-size:50%;">Compare Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.2.4.1">
<span class="ltx_p" id="A5.T5.2.2.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.2.4.1.1.1" style="font-size:50%;">Constraint that requires the response to use a specific rhetorical technique.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.2.5.1">
<span class="ltx_p" id="A5.T5.2.2.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.2.5.1.1.1" style="font-size:50%;">“Your output should include a metaphor.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.3.1.1">
<span class="ltx_p" id="A5.T5.2.3.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.3.2.1">
<span class="ltx_p" id="A5.T5.2.3.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.3.2.1.1.1" style="font-size:50%;">A.2 Logical relation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.3.3.1">
<span class="ltx_p" id="A5.T5.2.3.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.3.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.3.4.1">
<span class="ltx_p" id="A5.T5.2.3.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.3.4.1.1.1" style="font-size:50%;">Constraint that ensures logical cohesion within the response by requiring specific logical connectors or structures.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.3.5.1">
<span class="ltx_p" id="A5.T5.2.3.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.3.5.1.1.1" style="font-size:50%;">“Each paragraph must contain at least one cause-and-effect relationship.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T5.2.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.4.1.1">
<span class="ltx_p" id="A5.T5.2.4.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.4.1.1.1.1" style="font-size:50%;">B. Format limit</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.4.2.1">
<span class="ltx_p" id="A5.T5.2.4.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.4.2.1.1.1" style="font-size:50%;">B.1 Natural language</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.4.3.1">
<span class="ltx_p" id="A5.T5.2.4.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.4.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.4.4.1">
<span class="ltx_p" id="A5.T5.2.4.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.4.4.1.1.1" style="font-size:50%;">Constraint specifying which natural language(s) should be used in the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.4.5.1">
<span class="ltx_p" id="A5.T5.2.4.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.4.5.1.1.1" style="font-size:50%;">“Please answer in Spanish.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.5.1.1">
<span class="ltx_p" id="A5.T5.2.5.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.5.2.1">
<span class="ltx_p" id="A5.T5.2.5.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.5.2.1.1.1" style="font-size:50%;">B.2 Part of speech</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.5.3.1">
<span class="ltx_p" id="A5.T5.2.5.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.5.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.5.4.1">
<span class="ltx_p" id="A5.T5.2.5.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.5.4.1.1.1" style="font-size:50%;">Constraint that requires the response to use a specific part of speech.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.5.5.1">
<span class="ltx_p" id="A5.T5.2.5.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.5.5.1.1.1" style="font-size:50%;">“Use at least three adjectives in your response.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.6.1.1">
<span class="ltx_p" id="A5.T5.2.6.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.6.2.1">
<span class="ltx_p" id="A5.T5.2.6.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.6.2.1.1.1" style="font-size:50%;">B.3 Sentence structure</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.6.3.1">
<span class="ltx_p" id="A5.T5.2.6.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.6.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.6.4.1">
<span class="ltx_p" id="A5.T5.2.6.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.6.4.1.1.1" style="font-size:50%;">Constraint that specifies special sentence structures to be used in the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.6.5.1">
<span class="ltx_p" id="A5.T5.2.6.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.6.5.1.1.1" style="font-size:50%;">“Write each sentence so it includes a parenthetical phrase.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.7.1.1">
<span class="ltx_p" id="A5.T5.2.7.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.7.2.1">
<span class="ltx_p" id="A5.T5.2.7.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.7.2.1.1.1" style="font-size:50%;">B.4 Tense requirements</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.7.3.1">
<span class="ltx_p" id="A5.T5.2.7.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.7.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.7.4.1">
<span class="ltx_p" id="A5.T5.2.7.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.7.4.1.1.1" style="font-size:50%;">Constraint that specifies the use of multiple tenses within the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.7.5.1">
<span class="ltx_p" id="A5.T5.2.7.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.7.5.1.1.1" style="font-size:50%;">“In past tense totally.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.8.1.1">
<span class="ltx_p" id="A5.T5.2.8.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.8.2.1">
<span class="ltx_p" id="A5.T5.2.8.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.8.2.1.1.1" style="font-size:50%;">B.5 Punctuation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.8.3.1">
<span class="ltx_p" id="A5.T5.2.8.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.8.3.1.1.1" style="font-size:50%;">Rule-base</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.8.4.1">
<span class="ltx_p" id="A5.T5.2.8.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.8.4.1.1.1" style="font-size:50%;">Constraint specifying unconventional yet feasible punctuation usage in the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.8.5.1">
<span class="ltx_p" id="A5.T5.2.8.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.8.5.1.1.1" style="font-size:50%;">“Replace all periods with semicolons.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.9.1.1">
<span class="ltx_p" id="A5.T5.2.9.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.9.2.1">
<span class="ltx_p" id="A5.T5.2.9.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.9.2.1.1.1" style="font-size:50%;">B.6 Highlight</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.9.3.1">
<span class="ltx_p" id="A5.T5.2.9.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.9.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.9.4.1">
<span class="ltx_p" id="A5.T5.2.9.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.9.4.1.1.1" style="font-size:50%;">Constraint that specifies a unique but manageable method for highlighting text.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.9.5.1">
<span class="ltx_p" id="A5.T5.2.9.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.9.5.1.1.1" style="font-size:50%;">“Use **bold** for every noun.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.10.1.1">
<span class="ltx_p" id="A5.T5.2.10.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.10.2.1">
<span class="ltx_p" id="A5.T5.2.10.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.10.2.1.1.1" style="font-size:50%;">B.7 Title requirements</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.10.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.10.3.1">
<span class="ltx_p" id="A5.T5.2.10.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.10.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.10.4.1">
<span class="ltx_p" id="A5.T5.2.10.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.10.4.1.1.1" style="font-size:50%;">Constraint that specifies how titles should be added to the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.10.5.1">
<span class="ltx_p" id="A5.T5.2.10.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.10.5.1.1.1" style="font-size:50%;">“Provide a concise title that summarizes the main idea.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.11.1.1">
<span class="ltx_p" id="A5.T5.2.11.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.11.2.1">
<span class="ltx_p" id="A5.T5.2.11.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.11.2.1.1.1" style="font-size:50%;">B.8 Style requirements</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.11.3.1">
<span class="ltx_p" id="A5.T5.2.11.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.11.3.1.1.1" style="font-size:50%;">Compare Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.11.4.1">
<span class="ltx_p" id="A5.T5.2.11.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.11.4.1.1.1" style="font-size:50%;">Constraint that specifies an unconventional or distinctive writing style for the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.11.5.1">
<span class="ltx_p" id="A5.T5.2.11.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.11.5.1.1.1" style="font-size:50%;">“Write the answer in the form of a brief detective story.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.12.1.1">
<span class="ltx_p" id="A5.T5.2.12.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.12.2.1">
<span class="ltx_p" id="A5.T5.2.12.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.12.2.1.1.1" style="font-size:50%;">B.9 Case requirements</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.12.3.1">
<span class="ltx_p" id="A5.T5.2.12.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.12.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.12.4.1">
<span class="ltx_p" id="A5.T5.2.12.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.12.4.1.1.1" style="font-size:50%;">Constraint specifying an unusual yet readable approach to letter case in the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.12.5.1">
<span class="ltx_p" id="A5.T5.2.12.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.12.5.1.1.1" style="font-size:50%;">“Write all nouns in UPPERCASE and all adjectives in lowercase.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.13.1.1">
<span class="ltx_p" id="A5.T5.2.13.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.13.2.1">
<span class="ltx_p" id="A5.T5.2.13.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.13.2.1.1.1" style="font-size:50%;">B.10 Unstrict format</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.13.3.1">
<span class="ltx_p" id="A5.T5.2.13.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.13.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.13.4.1">
<span class="ltx_p" id="A5.T5.2.13.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.13.4.1.1.1" style="font-size:50%;">Constraint specifying a unique format for the output while keeping it approachable.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.13.5.1">
<span class="ltx_p" id="A5.T5.2.13.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.13.5.1.1.1" style="font-size:50%;">“Format your response as a short play script with speaker labels.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.14.1.1">
<span class="ltx_p" id="A5.T5.2.14.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.14.2.1">
<span class="ltx_p" id="A5.T5.2.14.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.14.2.1.1.1" style="font-size:50%;">B.11 Strict format</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.14.3.1">
<span class="ltx_p" id="A5.T5.2.14.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.14.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.14.4.1">
<span class="ltx_p" id="A5.T5.2.14.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.14.4.1.1.1" style="font-size:50%;">Constraint that requires the response to follow a strictly defined format.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.14.5.1">
<span class="ltx_p" id="A5.T5.2.14.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.14.5.1.1.1" style="font-size:50%;">“Please provide the output as well-formed XML with custom tags.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.15.1.1">
<span class="ltx_p" id="A5.T5.2.15.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.15.2.1">
<span class="ltx_p" id="A5.T5.2.15.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.15.2.1.1.1" style="font-size:50%;">B.12 Number and List</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.15.3.1">
<span class="ltx_p" id="A5.T5.2.15.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.15.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.15.4.1">
<span class="ltx_p" id="A5.T5.2.15.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.15.4.1.1.1" style="font-size:50%;">Constraint for using numbered or bulleted lists in the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.15.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.15.5.1">
<span class="ltx_p" id="A5.T5.2.15.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.15.5.1.1.1" style="font-size:50%;">“Present all key points as a numbered list with bulleted sub-lists.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.16.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.16.1.1">
<span class="ltx_p" id="A5.T5.2.16.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.16.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.16.2.1">
<span class="ltx_p" id="A5.T5.2.16.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.16.2.1.1.1" style="font-size:50%;">B.13 Wrap up</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.16.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.16.3.1">
<span class="ltx_p" id="A5.T5.2.16.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.16.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.16.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.16.4.1">
<span class="ltx_p" id="A5.T5.2.16.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.16.4.1.1.1" style="font-size:50%;">Constraint that requires a concise, well-structured summary or conclusion.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.16.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.16.5.1">
<span class="ltx_p" id="A5.T5.2.16.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.16.5.1.1.1" style="font-size:50%;">“Provide a final paragraph summarizing the key arguments.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.17.1.1">
<span class="ltx_p" id="A5.T5.2.17.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.17.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.17.2.1">
<span class="ltx_p" id="A5.T5.2.17.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.17.2.1.1.1" style="font-size:50%;">B.14 First letter</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.17.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.17.3.1">
<span class="ltx_p" id="A5.T5.2.17.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.17.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.17.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.17.4.1">
<span class="ltx_p" id="A5.T5.2.17.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.17.4.1.1.1" style="font-size:50%;">Constraint specifying a pattern for the first letters of sentences or paragraphs.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.17.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.17.5.1">
<span class="ltx_p" id="A5.T5.2.17.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.17.5.1.1.1" style="font-size:50%;">“Each sentence should begin with a letter that progresses through the alphabet.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T5.2.18.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.18.1.1">
<span class="ltx_p" id="A5.T5.2.18.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.18.1.1.1.1" style="font-size:50%;">C. Text Length limit</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.18.2.1">
<span class="ltx_p" id="A5.T5.2.18.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.18.2.1.1.1" style="font-size:50%;">C.1 Paragraph limit</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.18.3.1">
<span class="ltx_p" id="A5.T5.2.18.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.18.3.1.1.1" style="font-size:50%;">Rule-base</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.18.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.18.4.1">
<span class="ltx_p" id="A5.T5.2.18.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.18.4.1.1.1" style="font-size:50%;">Constraint that specifies the number of paragraphs in the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.18.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.18.5.1">
<span class="ltx_p" id="A5.T5.2.18.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.18.5.1.1.1" style="font-size:50%;">“Your response must consist of exactly 4 paragraphs.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.19.1.1">
<span class="ltx_p" id="A5.T5.2.19.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.19.2.1">
<span class="ltx_p" id="A5.T5.2.19.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.19.2.1.1.1" style="font-size:50%;">C.2 Sentence limit</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.19.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.19.3.1">
<span class="ltx_p" id="A5.T5.2.19.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.19.3.1.1.1" style="font-size:50%;">Rule-base</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.19.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.19.4.1">
<span class="ltx_p" id="A5.T5.2.19.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.19.4.1.1.1" style="font-size:50%;">Constraint that specifies the number of sentences in each paragraph.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.19.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.19.5.1">
<span class="ltx_p" id="A5.T5.2.19.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.19.5.1.1.1" style="font-size:50%;">“Totally use 5 sentences in your response.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.20.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.20.1.1">
<span class="ltx_p" id="A5.T5.2.20.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.20.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.20.2.1">
<span class="ltx_p" id="A5.T5.2.20.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.20.2.1.1.1" style="font-size:50%;">C.3 Word limit</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.20.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.20.3.1">
<span class="ltx_p" id="A5.T5.2.20.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.20.3.1.1.1" style="font-size:50%;">Rule-base</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.20.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.20.4.1">
<span class="ltx_p" id="A5.T5.2.20.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.20.4.1.1.1" style="font-size:50%;">Constraint that specifies a small range for the total number of words in the text.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.20.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.20.5.1">
<span class="ltx_p" id="A5.T5.2.20.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.20.5.1.1.1" style="font-size:50%;">“Your response must be a single word or phrase.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T5.2.21.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.21.1.1">
<span class="ltx_p" id="A5.T5.2.21.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.21.1.1.1.1" style="font-size:50%;">D. Math limit</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.21.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.21.2.1">
<span class="ltx_p" id="A5.T5.2.21.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.21.2.1.1.1" style="font-size:50%;">D.1 Precision</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.21.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.21.3.1">
<span class="ltx_p" id="A5.T5.2.21.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.21.3.1.1.1" style="font-size:50%;">Rule-base</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.21.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.21.4.1">
<span class="ltx_p" id="A5.T5.2.21.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.21.4.1.1.1" style="font-size:50%;">Constraint that specifies the level of precision required in mathematical calculations.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.21.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.21.5.1">
<span class="ltx_p" id="A5.T5.2.21.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.21.5.1.1.1" style="font-size:50%;">“Keep two decimal places for all numbers in the answer.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.22.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.22.1.1">
<span class="ltx_p" id="A5.T5.2.22.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.22.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.22.2.1">
<span class="ltx_p" id="A5.T5.2.22.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.22.2.1.1.1" style="font-size:50%;">D.2 Scientific notation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.22.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.22.3.1">
<span class="ltx_p" id="A5.T5.2.22.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.22.3.1.1.1" style="font-size:50%;">Rule-base</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.22.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.22.4.1">
<span class="ltx_p" id="A5.T5.2.22.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.22.4.1.1.1" style="font-size:50%;">Constraint that requires the use of scientific notation for large or small numbers.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.22.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.22.5.1">
<span class="ltx_p" id="A5.T5.2.22.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.22.5.1.1.1" style="font-size:50%;">“Express all numbers greater than 1,000 in scientific notation.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T5.2.23.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.23.1.1">
<span class="ltx_p" id="A5.T5.2.23.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.23.1.1.1.1" style="font-size:50%;">E. Action limit</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.23.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.23.2.1">
<span class="ltx_p" id="A5.T5.2.23.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.23.2.1.1.1" style="font-size:50%;">E.1 Role imitation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.23.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.23.3.1">
<span class="ltx_p" id="A5.T5.2.23.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.23.3.1.1.1" style="font-size:50%;">Compare Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.23.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.23.4.1">
<span class="ltx_p" id="A5.T5.2.23.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.23.4.1.1.1" style="font-size:50%;">Constraint requiring the response to imitate the tone and style of a specific role or public figure.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.23.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.23.5.1">
<span class="ltx_p" id="A5.T5.2.23.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.23.5.1.1.1" style="font-size:50%;">“Please answer in the style of a sports commentator.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.24.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.24.1.1">
<span class="ltx_p" id="A5.T5.2.24.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.24.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.24.2.1">
<span class="ltx_p" id="A5.T5.2.24.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.24.2.1.1.1" style="font-size:50%;">E.2 Prefix and Suffix</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.24.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.24.3.1">
<span class="ltx_p" id="A5.T5.2.24.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.24.3.1.1.1" style="font-size:50%;">Rule-base</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.24.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.24.4.1">
<span class="ltx_p" id="A5.T5.2.24.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.24.4.1.1.1" style="font-size:50%;">Constraint that requires the response to begin or end with a specific phrase or symbol.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.24.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.24.5.1">
<span class="ltx_p" id="A5.T5.2.24.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.24.5.1.1.1" style="font-size:50%;">“Please start your answer with ’Once upon a time…’.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.25.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.25.1.1">
<span class="ltx_p" id="A5.T5.2.25.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.25.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.25.2.1">
<span class="ltx_p" id="A5.T5.2.25.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.25.2.1.1.1" style="font-size:50%;">E.3 Tone requirement</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.25.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.25.3.1">
<span class="ltx_p" id="A5.T5.2.25.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.25.3.1.1.1" style="font-size:50%;">Compare Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.25.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.25.4.1">
<span class="ltx_p" id="A5.T5.2.25.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.25.4.1.1.1" style="font-size:50%;">Constraint specifying an emotional tone for the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.25.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.25.5.1">
<span class="ltx_p" id="A5.T5.2.25.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.25.5.1.1.1" style="font-size:50%;">“Write your answer in a positive and encouraging tone.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.26">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.26.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.26.1.1">
<span class="ltx_p" id="A5.T5.2.26.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.26.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.26.2.1">
<span class="ltx_p" id="A5.T5.2.26.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.26.2.1.1.1" style="font-size:50%;">E.4 Perspective</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.26.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.26.3.1">
<span class="ltx_p" id="A5.T5.2.26.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.26.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.26.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.26.4.1">
<span class="ltx_p" id="A5.T5.2.26.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.26.4.1.1.1" style="font-size:50%;">Constraint that specifies a narrative perspective for the response.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.26.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.26.5.1">
<span class="ltx_p" id="A5.T5.2.26.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.26.5.1.1.1" style="font-size:50%;">“Write your answer in the first-person singular as a personal account.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.27">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.27.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.27.1.1">
<span class="ltx_p" id="A5.T5.2.27.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.27.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.27.2.1">
<span class="ltx_p" id="A5.T5.2.27.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.27.2.1.1.1" style="font-size:50%;">E.5 Target audience</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.27.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.27.3.1">
<span class="ltx_p" id="A5.T5.2.27.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.27.3.1.1.1" style="font-size:50%;">Compare Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.27.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.27.4.1">
<span class="ltx_p" id="A5.T5.2.27.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.27.4.1.1.1" style="font-size:50%;">Constraint requiring the response to be tailored for a specific audience.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.27.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.27.5.1">
<span class="ltx_p" id="A5.T5.2.27.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.27.5.1.1.1" style="font-size:50%;">“Craft your response as if explaining to high school students.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.28">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.28.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.28.1.1">
<span class="ltx_p" id="A5.T5.2.28.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.28.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.28.2.1">
<span class="ltx_p" id="A5.T5.2.28.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.28.2.1.1.1" style="font-size:50%;">E.6 Situation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.28.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.28.3.1">
<span class="ltx_p" id="A5.T5.2.28.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.28.3.1.1.1" style="font-size:50%;">Compare Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.28.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.28.4.1">
<span class="ltx_p" id="A5.T5.2.28.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.28.4.1.1.1" style="font-size:50%;">Constraint requiring the response to be set in a specific situation or scenario.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.28.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.28.5.1">
<span class="ltx_p" id="A5.T5.2.28.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.28.5.1.1.1" style="font-size:50%;">“Answer as if you are giving safety instructions before a flight.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.29">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.29.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.29.1.1">
<span class="ltx_p" id="A5.T5.2.29.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.29.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.29.2.1">
<span class="ltx_p" id="A5.T5.2.29.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.29.2.1.1.1" style="font-size:50%;">E.7 Prior condition</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.29.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.29.3.1">
<span class="ltx_p" id="A5.T5.2.29.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.29.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.29.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.29.4.1">
<span class="ltx_p" id="A5.T5.2.29.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.29.4.1.1.1" style="font-size:50%;">Constraint stating that when a specific condition is met, the response must follow a particular process.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.29.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.29.5.1">
<span class="ltx_p" id="A5.T5.2.29.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.29.5.1.1.1" style="font-size:50%;">“If the user requests legal advice, begin with a disclaimer.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.30">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T5.2.30.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.30.1.1">
<span class="ltx_p" id="A5.T5.2.30.1.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T5.2.30.1.1.1.1" style="font-size:50%;">F. Keyword</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.30.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.30.2.1">
<span class="ltx_p" id="A5.T5.2.30.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.30.2.1.1.1" style="font-size:50%;">F.1 Mention</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.30.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.30.3.1">
<span class="ltx_p" id="A5.T5.2.30.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.30.3.1.1.1" style="font-size:50%;">Rule-base &amp; Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.30.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.30.4.1">
<span class="ltx_p" id="A5.T5.2.30.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.30.4.1.1.1" style="font-size:50%;">Constraint that requires including a specific keyword a certain number of times.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.30.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.30.5.1">
<span class="ltx_p" id="A5.T5.2.30.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.30.5.1.1.1" style="font-size:50%;">“Mention ’GreenTech’ exactly three times throughout.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.31">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.31.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.31.1.1">
<span class="ltx_p" id="A5.T5.2.31.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.31.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.31.2.1">
<span class="ltx_p" id="A5.T5.2.31.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.31.2.1.1.1" style="font-size:50%;">F.2 Not mention</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.31.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.31.3.1">
<span class="ltx_p" id="A5.T5.2.31.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.31.3.1.1.1" style="font-size:50%;">Rule-base &amp; Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.31.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.31.4.1">
<span class="ltx_p" id="A5.T5.2.31.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.31.4.1.1.1" style="font-size:50%;">Constraint that requires avoiding specific keywords or phrases.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.31.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.31.5.1">
<span class="ltx_p" id="A5.T5.2.31.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.31.5.1.1.1" style="font-size:50%;">“Do not mention the words ’budget’ or ’investment’.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.32">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A5.T5.2.32.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.32.1.1">
<span class="ltx_p" id="A5.T5.2.32.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.32.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.32.2.1">
<span class="ltx_p" id="A5.T5.2.32.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.32.2.1.1.1" style="font-size:50%;">F.3 Multiple mention</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.32.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.32.3.1">
<span class="ltx_p" id="A5.T5.2.32.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.32.3.1.1.1" style="font-size:50%;">Rule-base &amp; Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.32.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.32.4.1">
<span class="ltx_p" id="A5.T5.2.32.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.32.4.1.1.1" style="font-size:50%;">Constraint requiring including multiple specified keywords in a balanced manner.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T5.2.32.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.32.5.1">
<span class="ltx_p" id="A5.T5.2.32.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.32.5.1.1.1" style="font-size:50%;">“Mention both ’sustainability’ and ’renewable energy’ at least twice.”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.2.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A5.T5.2.33.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.33.1.1">
<span class="ltx_p" id="A5.T5.2.33.1.1.1" style="width:45.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="A5.T5.2.33.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.33.2.1">
<span class="ltx_p" id="A5.T5.2.33.2.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T5.2.33.2.1.1.1" style="font-size:50%;">F.4 Keyword variation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="A5.T5.2.33.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.33.3.1">
<span class="ltx_p" id="A5.T5.2.33.3.1.1" style="width:37.0pt;"><span class="ltx_text" id="A5.T5.2.33.3.1.1.1" style="font-size:50%;">Direct Judge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="A5.T5.2.33.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.33.4.1">
<span class="ltx_p" id="A5.T5.2.33.4.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.33.4.1.1.1" style="font-size:50%;">Constraint requiring the use of synonyms or variations of a given keyword.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="A5.T5.2.33.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.33.5.1">
<span class="ltx_p" id="A5.T5.2.33.5.1.1" style="width:93.9pt;"><span class="ltx_text" id="A5.T5.2.33.5.1.1.1" style="font-size:50%;">“Use at least three synonyms for ’innovation’ throughout your text.”</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the 32 constraint subcategories categorized into six main categories for the MM-IFEval benchmark.  For each subcategory, it specifies the evaluation method used (Rule-based, Direct Judge, or Compare Judge) and provides example constraints to illustrate the type of instructions imposed.  The evaluation methods are explained in Section 4.2 of the paper. This information is essential for understanding how the complexity and diversity of instructions in MM-IFEval are designed and evaluated.
> <details>
> <summary>read the caption</summary>
> Table 5: Constraint Categories and Evaluation Methods for MM-IFEval
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T6.2.1">
<tr class="ltx_tr" id="A5.T6.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A5.T6.2.1.1.1" style="width:99.6pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.1.1.1">
<span class="ltx_p" id="A5.T6.2.1.1.1.1.1"><span class="ltx_text" id="A5.T6.2.1.1.1.1.1.1" style="font-size:144%;">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.1.2" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.1.2.1">
<span class="ltx_p" id="A5.T6.2.1.1.2.1.1"><span class="ltx_text" id="A5.T6.2.1.1.2.1.1.1" style="font-size:144%;">Instruction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A5.T6.2.1.2.1" rowspan="4" style="width:99.6pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.2.1.1">
<span class="ltx_p" id="A5.T6.2.1.2.1.1.1"><span class="ltx_text" id="A5.T6.2.1.2.1.1.1.1" style="font-size:144%;">Descriptive Analysis</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.2.2" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.2.2.1">
<span class="ltx_p" id="A5.T6.2.1.2.2.1.1"><span class="ltx_text" id="A5.T6.2.1.2.2.1.1.1" style="font-size:144%;">Describe the animal’s typical habitat, diet, and one unique behavioral trait.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.3.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.3.1.1">
<span class="ltx_p" id="A5.T6.2.1.3.1.1.1"><span class="ltx_text" id="A5.T6.2.1.3.1.1.1.1" style="font-size:144%;">Provide a detailed analysis of the image, including the setting, characters, and notable objects.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.4.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.4.1.1">
<span class="ltx_p" id="A5.T6.2.1.4.1.1.1"><span class="ltx_text" id="A5.T6.2.1.4.1.1.1.1" style="font-size:144%;">Explain the activity taking place in the image.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.5.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.5.1.1">
<span class="ltx_p" id="A5.T6.2.1.5.1.1.1"><span class="ltx_text" id="A5.T6.2.1.5.1.1.1.1" style="font-size:144%;">Describe the activities of the person on the left in the image.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A5.T6.2.1.6.1" rowspan="3" style="width:99.6pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.6.1.1">
<span class="ltx_p" id="A5.T6.2.1.6.1.1.1"><span class="ltx_text" id="A5.T6.2.1.6.1.1.1.1" style="font-size:144%;">Emotional &amp; Perspective</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.6.2" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.6.2.1">
<span class="ltx_p" id="A5.T6.2.1.6.2.1.1"><span class="ltx_text" id="A5.T6.2.1.6.2.1.1.1" style="font-size:144%;">What emotions do you think the person in this image might be feeling?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.7">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.7.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.7.1.1">
<span class="ltx_p" id="A5.T6.2.1.7.1.1.1"><span class="ltx_text" id="A5.T6.2.1.7.1.1.1.1" style="font-size:144%;">Imagine you are the person on the left in the scene depicted in this image, write a story about what you would do next.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.8">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.8.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.8.1.1">
<span class="ltx_p" id="A5.T6.2.1.8.1.1.1"><span class="ltx_text" id="A5.T6.2.1.8.1.1.1.1" style="font-size:144%;">Personify the sign in the image and express its feelings about the rule it presents.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.9">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A5.T6.2.1.9.1" rowspan="5" style="width:99.6pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.9.1.1">
<span class="ltx_p" id="A5.T6.2.1.9.1.1.1"><span class="ltx_text" id="A5.T6.2.1.9.1.1.1.1" style="font-size:144%;">Creative Writing</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.9.2" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.9.2.1">
<span class="ltx_p" id="A5.T6.2.1.9.2.1.1"><span class="ltx_text" id="A5.T6.2.1.9.2.1.1.1" style="font-size:144%;">Create a short conversation between any two individuals in the scene.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.10">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.10.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.10.1.1">
<span class="ltx_p" id="A5.T6.2.1.10.1.1.1"><span class="ltx_text" id="A5.T6.2.1.10.1.1.1.1" style="font-size:144%;">Pretend this snapshot belongs to a larger story. Write a quick paragraph setting up the next plot twist.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.11">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.11.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.11.1.1">
<span class="ltx_p" id="A5.T6.2.1.11.1.1.1"><span class="ltx_text" id="A5.T6.2.1.11.1.1.1.1" style="font-size:144%;">Use this picture as your muse. Craft a brief poem—any style—that captures the emotion you sense.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.12">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.12.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.12.1.1">
<span class="ltx_p" id="A5.T6.2.1.12.1.1.1"><span class="ltx_text" id="A5.T6.2.1.12.1.1.1.1" style="font-size:144%;">Turn this scene into a short children’s story focusing on wonder and curiosity.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.13">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.13.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.13.1.1">
<span class="ltx_p" id="A5.T6.2.1.13.1.1.1"><span class="ltx_text" id="A5.T6.2.1.13.1.1.1.1" style="font-size:144%;">Write a short poem with two stanzas, inspired by the emotion or content depicted in this image.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.14">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A5.T6.2.1.14.1" rowspan="3" style="width:99.6pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.14.1.1">
<span class="ltx_p" id="A5.T6.2.1.14.1.1.1"><span class="ltx_text" id="A5.T6.2.1.14.1.1.1.1" style="font-size:144%;">Social Media &amp; Content</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.14.2" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.14.2.1">
<span class="ltx_p" id="A5.T6.2.1.14.2.1.1"><span class="ltx_text" id="A5.T6.2.1.14.2.1.1.1" style="font-size:144%;">Assume this is an image you are about to post on Twitter. Please provide a short, upbeat caption describing it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.15">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.15.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.15.1.1">
<span class="ltx_p" id="A5.T6.2.1.15.1.1.1"><span class="ltx_text" id="A5.T6.2.1.15.1.1.1.1" style="font-size:144%;">Assume you are creating a Pinterest pin with this image. Write a short inspirational or motivational caption to accompany it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.16">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A5.T6.2.1.16.1" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.16.1.1">
<span class="ltx_p" id="A5.T6.2.1.16.1.1.1"><span class="ltx_text" id="A5.T6.2.1.16.1.1.1.1" style="font-size:144%;">If this image were promoting an upcoming event, compose a quick announcement with the date, a highlight of what to expect, and a call-to-action.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.1.17">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A5.T6.2.1.17.1" style="width:99.6pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.17.1.1">
<span class="ltx_p" id="A5.T6.2.1.17.1.1.1"><span class="ltx_text" id="A5.T6.2.1.17.1.1.1.1" style="font-size:144%;">Role Play</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r ltx_border_t" id="A5.T6.2.1.17.2" style="width:313.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.2.1.17.2.1">
<span class="ltx_p" id="A5.T6.2.1.17.2.1.1"><span class="ltx_text" id="A5.T6.2.1.17.2.1.1.1" style="font-size:144%;">Imagine you are the photographer who took this picture. Briefly explain why you chose to capture this particular moment and what story you hope it conveys.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the various types of tasks used for image-instruction pair generation in the MM-IFEngine.  It categorizes 16 distinct tasks into five main types: Descriptive Analysis, Emotional & Perspective, Creative Writing, Social Media & Content, and Roleplay. For each task type, example instructions are given to illustrate the range of prompts used to elicit diverse and complex responses from the language model.
> <details>
> <summary>read the caption</summary>
> Table 6: Task Pool for MM-IFEngine
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T7.2">
<tr class="ltx_tr" id="A5.T7.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.1.1.1">
<span class="ltx_p" id="A5.T7.2.1.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.2.1.1.1.1.1" style="font-size:70%;">Verified Function Name</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.1.2.1">
<span class="ltx_p" id="A5.T7.2.1.2.1.1" style="width:76.8pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.2.1.2.1.1.1" style="font-size:70%;">Function Parameters</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.1.3.1">
<span class="ltx_p" id="A5.T7.2.1.3.1.1" style="width:119.5pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.2.1.3.1.1.1" style="font-size:70%;">Constraint Example</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.1.4.1">
<span class="ltx_p" id="A5.T7.2.1.4.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T7.2.1.4.1.1.1" style="font-size:70%;">Parameter Example</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.2.1.1">
<span class="ltx_p" id="A5.T7.2.2.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.2.1.1.1.1" style="font-size:70%;">check_whether_ response_paragraph_ number_in_range</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.2.2.1">
<span class="ltx_p" id="A5.T7.2.2.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.2.2.1.1.1" style="font-size:70%;">lower_bound:int,</span>
<br class="ltx_break ltx_align_left"/><span class="ltx_text" id="A5.T7.2.2.2.1.1.2" style="font-size:70%;">upper_bound:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.2.3.1">
<span class="ltx_p" id="A5.T7.2.2.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.2.3.1.1.1" style="font-size:70%;">The number of text paragraphs be at least 3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.2.4.1">
<span class="ltx_p" id="A5.T7.2.2.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.2.4.1.1.1" style="font-size:70%;">[3, 10000]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.3.1.1">
<span class="ltx_p" id="A5.T7.2.3.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.3.1.1.1.1" style="font-size:70%;">check_whether_ response_sentence_ number_in_range</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.3.2.1">
<span class="ltx_p" id="A5.T7.2.3.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.3.2.1.1.1" style="font-size:70%;">lower_bound:int,</span>
<br class="ltx_break ltx_align_left"/><span class="ltx_text" id="A5.T7.2.3.2.1.1.2" style="font-size:70%;">upper_bound:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.3.3.1">
<span class="ltx_p" id="A5.T7.2.3.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.3.3.1.1.1" style="font-size:70%;">The number of sentences be exactly 3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.3.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.3.4.1">
<span class="ltx_p" id="A5.T7.2.3.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.3.4.1.1.1" style="font-size:70%;">[3, 3]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.4.1.1">
<span class="ltx_p" id="A5.T7.2.4.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.4.1.1.1.1" style="font-size:70%;">check_whether_each_ paragraph_sentence_ number_in_range</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.4.2.1">
<span class="ltx_p" id="A5.T7.2.4.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.4.2.1.1.1" style="font-size:70%;">lower_bound:int,</span>
<br class="ltx_break ltx_align_left"/><span class="ltx_text" id="A5.T7.2.4.2.1.1.2" style="font-size:70%;">upper_bound:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.4.3.1">
<span class="ltx_p" id="A5.T7.2.4.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.4.3.1.1.1" style="font-size:70%;">The number of sentences in each paragraph be less than 3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.4.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.4.4.1">
<span class="ltx_p" id="A5.T7.2.4.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.4.4.1.1.1" style="font-size:70%;">[0, 2]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.5.1.1">
<span class="ltx_p" id="A5.T7.2.5.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.5.1.1.1.1" style="font-size:70%;">check_whether_each_ paragraph_sentence_ number_in_range_list</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.5.2.1">
<span class="ltx_p" id="A5.T7.2.5.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.5.2.1.1.1" style="font-size:70%;">ranges:List[tuple]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.5.3.1">
<span class="ltx_p" id="A5.T7.2.5.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.5.3.1.1.1" style="font-size:70%;">The number of sentences in the first paragraph be exactly 3, and in the second paragraph be at most 2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.5.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.5.4.1">
<span class="ltx_p" id="A5.T7.2.5.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.5.4.1.1.1" style="font-size:70%;">[[(3, 3), (1, 2)]]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.6.1.1">
<span class="ltx_p" id="A5.T7.2.6.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.6.1.1.1.1" style="font-size:70%;">check_whether_each_ paragraph_sentence_ number_exceeds</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.6.2.1">
<span class="ltx_p" id="A5.T7.2.6.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.6.2.1.1.1" style="font-size:70%;">exceed_num:int,</span>
<br class="ltx_break ltx_align_left"/><span class="ltx_text" id="A5.T7.2.6.2.1.1.2" style="font-size:70%;">upper_bound:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.6.3.1">
<span class="ltx_p" id="A5.T7.2.6.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.6.3.1.1.1" style="font-size:70%;">Each new paragraph should have 1 sentence more than the previous one, no paragraph exceeds 7 sentences</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.6.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.6.4.1">
<span class="ltx_p" id="A5.T7.2.6.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.6.4.1.1.1" style="font-size:70%;">[1, 7]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.7.1.1">
<span class="ltx_p" id="A5.T7.2.7.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.7.1.1.1.1" style="font-size:70%;">check_whether_ response_word_count_ in_range</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.7.2.1">
<span class="ltx_p" id="A5.T7.2.7.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.7.2.1.1.1" style="font-size:70%;">lower_bound:int,</span>
<br class="ltx_break ltx_align_left"/><span class="ltx_text" id="A5.T7.2.7.2.1.1.2" style="font-size:70%;">upper_bound:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.7.3.1">
<span class="ltx_p" id="A5.T7.2.7.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.7.3.1.1.1" style="font-size:70%;">The number of words should be between 50 and 80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.7.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.7.4.1">
<span class="ltx_p" id="A5.T7.2.7.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.7.4.1.1.1" style="font-size:70%;">[50, 80]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.8.1.1">
<span class="ltx_p" id="A5.T7.2.8.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.8.1.1.1.1" style="font-size:70%;">check_whether_each_ paragraph_word_count_ in_range</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.8.2.1">
<span class="ltx_p" id="A5.T7.2.8.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.8.2.1.1.1" style="font-size:70%;">lower_bound:int,</span>
<br class="ltx_break ltx_align_left"/><span class="ltx_text" id="A5.T7.2.8.2.1.1.2" style="font-size:70%;">upper_bound:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.8.3.1">
<span class="ltx_p" id="A5.T7.2.8.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.8.3.1.1.1" style="font-size:70%;">The number of words in each paragraph should be between 50 and 80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.8.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.8.4.1">
<span class="ltx_p" id="A5.T7.2.8.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.8.4.1.1.1" style="font-size:70%;">[50, 80]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.9.1.1">
<span class="ltx_p" id="A5.T7.2.9.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.9.1.1.1.1" style="font-size:70%;">check_whether_each_ paragraph_word_count_ in_range_list</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.9.2.1">
<span class="ltx_p" id="A5.T7.2.9.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.9.2.1.1.1" style="font-size:70%;">ranges:List[tuple]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.9.3.1">
<span class="ltx_p" id="A5.T7.2.9.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.9.3.1.1.1" style="font-size:70%;">The number of words in the first paragraph be between 20 and 30, in the second between 50 and 80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.9.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.9.4.1">
<span class="ltx_p" id="A5.T7.2.9.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.9.4.1.1.1" style="font-size:70%;">[[(20, 30), (50, 80)]]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.10.1.1">
<span class="ltx_p" id="A5.T7.2.10.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.10.1.1.1.1" style="font-size:70%;">check_whether_whole_ response_not_contain_ certain_substring</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.10.2.1">
<span class="ltx_p" id="A5.T7.2.10.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.10.2.1.1.1" style="font-size:70%;">substring:str</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.10.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.10.3.1">
<span class="ltx_p" id="A5.T7.2.10.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.10.3.1.1.1" style="font-size:70%;">The response should not contain the word ”apple”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.10.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.10.4.1">
<span class="ltx_p" id="A5.T7.2.10.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.10.4.1.1.1" style="font-size:70%;">[”apple”]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.11.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.11.1.1">
<span class="ltx_p" id="A5.T7.2.11.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.11.1.1.1.1" style="font-size:70%;">check_whether_whole_ response_not_contain_ certain_substrings</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.11.2.1">
<span class="ltx_p" id="A5.T7.2.11.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.11.2.1.1.1" style="font-size:70%;">substrings:List[str]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.11.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.11.3.1">
<span class="ltx_p" id="A5.T7.2.11.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.11.3.1.1.1" style="font-size:70%;">The response should not contain the words ”apple” and ”banana”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.11.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.11.4.1">
<span class="ltx_p" id="A5.T7.2.11.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.11.4.1.1.1" style="font-size:70%;">[[”apple”, ”banana”]]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.12.1.1">
<span class="ltx_p" id="A5.T7.2.12.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.12.1.1.1.1" style="font-size:70%;">check_whether_each_ sentence_begin_with_ certain_substring</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.12.2.1">
<span class="ltx_p" id="A5.T7.2.12.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.12.2.1.1.1" style="font-size:70%;">substring:str</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.12.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.12.3.1">
<span class="ltx_p" id="A5.T7.2.12.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.12.3.1.1.1" style="font-size:70%;">Each sentence should start with exclamation point</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.12.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.12.4.1">
<span class="ltx_p" id="A5.T7.2.12.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.12.4.1.1.1" style="font-size:70%;">[”!”]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.13.1.1">
<span class="ltx_p" id="A5.T7.2.13.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.13.1.1.1.1" style="font-size:70%;">check_whether_each_ sentence_end_with_ certain_substring</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.13.2.1">
<span class="ltx_p" id="A5.T7.2.13.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.13.2.1.1.1" style="font-size:70%;">substring:str</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.13.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.13.3.1">
<span class="ltx_p" id="A5.T7.2.13.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.13.3.1.1.1" style="font-size:70%;">Each sentence should end with ”apple”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.13.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.13.4.1">
<span class="ltx_p" id="A5.T7.2.13.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.13.4.1.1.1" style="font-size:70%;">[”apple”]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.14.1.1">
<span class="ltx_p" id="A5.T7.2.14.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.14.1.1.1.1" style="font-size:70%;">check_whether_whole_ response_begin_with_ certain_substring</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.14.2.1">
<span class="ltx_p" id="A5.T7.2.14.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.14.2.1.1.1" style="font-size:70%;">substring:str</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.14.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.14.3.1">
<span class="ltx_p" id="A5.T7.2.14.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.14.3.1.1.1" style="font-size:70%;">The response should start with ”apple”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.14.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.14.4.1">
<span class="ltx_p" id="A5.T7.2.14.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.14.4.1.1.1" style="font-size:70%;">[”apple”]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.15.1.1">
<span class="ltx_p" id="A5.T7.2.15.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.15.1.1.1.1" style="font-size:70%;">check_whether_whole_ response_end_with_ certain_substring</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.15.2.1">
<span class="ltx_p" id="A5.T7.2.15.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.15.2.1.1.1" style="font-size:70%;">substring:str</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.15.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.15.3.1">
<span class="ltx_p" id="A5.T7.2.15.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.15.3.1.1.1" style="font-size:70%;">The response should end with ”apple”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.15.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.15.4.1">
<span class="ltx_p" id="A5.T7.2.15.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.15.4.1.1.1" style="font-size:70%;">[”apple”]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.16.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.16.1.1">
<span class="ltx_p" id="A5.T7.2.16.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.16.1.1.1.1" style="font-size:70%;">check_whether_keywords_ metioned_in_range</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.16.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.16.2.1">
<span class="ltx_p" id="A5.T7.2.16.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.16.2.1.1.1" style="font-size:70%;">keywords:List[str],</span>
<br class="ltx_break ltx_align_left"/><span class="ltx_text" id="A5.T7.2.16.2.1.1.2" style="font-size:70%;">lower_bound_times:int,</span>
<br class="ltx_break ltx_align_left"/><span class="ltx_text" id="A5.T7.2.16.2.1.1.3" style="font-size:70%;">upper_bound_times:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.16.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.16.3.1">
<span class="ltx_p" id="A5.T7.2.16.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.16.3.1.1.1" style="font-size:70%;">The response should mention the word ”apple” at least 3 times</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.16.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.16.4.1">
<span class="ltx_p" id="A5.T7.2.16.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.16.4.1.1.1" style="font-size:70%;">[[”apple”], 3, 10000]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.17.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.17.1.1">
<span class="ltx_p" id="A5.T7.2.17.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.17.1.1.1.1" style="font-size:70%;">check_number_precision_ in_response</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.17.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.17.2.1">
<span class="ltx_p" id="A5.T7.2.17.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.17.2.1.1.1" style="font-size:70%;">precision:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.17.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.17.3.1">
<span class="ltx_p" id="A5.T7.2.17.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.17.3.1.1.1" style="font-size:70%;">The numbers in the response should have 2 decimal places</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.17.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.17.4.1">
<span class="ltx_p" id="A5.T7.2.17.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.17.4.1.1.1" style="font-size:70%;">[2]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.18.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.18.1.1">
<span class="ltx_p" id="A5.T7.2.18.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.18.1.1.1.1" style="font-size:70%;">check_whether_has_no_ number_in_response</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.18.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.18.2.1">
<span class="ltx_p" id="A5.T7.2.18.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.18.2.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.18.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.18.3.1">
<span class="ltx_p" id="A5.T7.2.18.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.18.3.1.1.1" style="font-size:70%;">The response should not contain any number</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A5.T7.2.18.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.18.4.1">
<span class="ltx_p" id="A5.T7.2.18.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.18.4.1.1.1" style="font-size:70%;">[]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T7.2.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A5.T7.2.19.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.19.1.1">
<span class="ltx_p" id="A5.T7.2.19.1.1.1" style="width:99.6pt;"><span class="ltx_text" id="A5.T7.2.19.1.1.1.1" style="font-size:70%;">check_scientific_notation_ precision_in_response</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="A5.T7.2.19.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.19.2.1">
<span class="ltx_p" id="A5.T7.2.19.2.1.1" style="width:76.8pt;"><span class="ltx_text" id="A5.T7.2.19.2.1.1.1" style="font-size:70%;">significant_digits:int</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="A5.T7.2.19.3">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.19.3.1">
<span class="ltx_p" id="A5.T7.2.19.3.1.1" style="width:119.5pt;"><span class="ltx_text" id="A5.T7.2.19.3.1.1.1" style="font-size:70%;">The numbers in the response should have 3 significant digits</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="A5.T7.2.19.4">
<span class="ltx_inline-block ltx_align_top" id="A5.T7.2.19.4.1">
<span class="ltx_p" id="A5.T7.2.19.4.1.1" style="width:62.6pt;"><span class="ltx_text" id="A5.T7.2.19.4.1.1.1" style="font-size:70%;">[3]</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the functions used for rule-based evaluation in the MM-IFEval benchmark. Each function verifies a specific constraint type, such as checking the number of words or sentences within a given range, ensuring specific keywords are present or absent, or validating numerical precision and format.  The table specifies the function name, its parameters (e.g., minimum and maximum word counts), and shows example constraints and parameters to illustrate usage.
> <details>
> <summary>read the caption</summary>
> Table 7: Verification Functions for rule-based evaluation method in MM-IFEval
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07957/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07957/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}