---
title: "The Jumping Reasoning Curve? Tracking the Evolution of Reasoning Performance in GPT-[n] and o-[n] Models on Multimodal Puzzles"
summary: "GPT models' multimodal reasoning abilities are tracked over time on challenging visual puzzles, revealing surprisingly steady improvement and cost trade-offs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Singapore University of Technology and Design",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.01081 {{< /keyword >}}
{{< keyword icon="writer" >}} Vernon Y. H. Toh et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.01081" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.01081" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.01081/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) are rapidly advancing, but their reasoning abilities in complex multimodal scenarios remain under-explored. This paper investigates the evolution of reasoning performance in GPT-[n] and o-[n] models on novel multimodal puzzle datasets (PUZZLEVQA and ALGOPUZZLEVQA), which assess visual and logical reasoning skills in open-ended and multiple choice questions.  These datasets are unique in that they require integration of visual and textual information to arrive at an answer. 

The researchers observed a steady improvement in performance across different models, with a significant jump between the GPT-[n] and o-[n] series.  However, this improvement came at a substantially higher computational cost.  Moreover, current models struggled with seemingly simple multimodal puzzles, revealing a considerable gap between the capabilities of current LLMs and human-like reasoning. The findings highlighted the limitations of current LLMs in multimodal reasoning and provided valuable insights into areas that require further improvement.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Large language models show steady but not dramatic improvements in multimodal reasoning over time. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current models struggle significantly with abstract multimodal reasoning, even on relatively simple puzzles. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The cost of enhanced reasoning capabilities in advanced models can increase dramatically, requiring efficient methods for improvement. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **systematically evaluates the multimodal reasoning capabilities of large language models** using novel puzzle datasets.  It **highlights the significant gap between current AI and human-level reasoning**, especially in complex visual scenarios, thus **guiding future research directions** in AGI. The open-source datasets used enhance reproducibility and facilitate further research in this area.

------
#### Visual Insights



![](https://arxiv.org/html/2502.01081/extracted/6172587/images/curve.png)

> 🔼 This figure displays the performance of various GPT models (GPT-[n] and o-[n]) on two multimodal reasoning tasks: PuzzleVQA and AlgoPuzzleVQA.  The x-axis represents the release date of each model, and the y-axis represents the accuracy achieved on each task.  The size of each data point (circle) is proportional to the inference cost (in terms of computational resources) required for the model to solve a single puzzle.  The figure visually demonstrates the progression of multimodal reasoning capabilities over time, showing how accuracy improves with newer model releases.  It also highlights the trade-off between performance gains and increased computational cost.
> <details>
> <summary>read the caption</summary>
> Figure 1: The performance of GPT-[n] and o-[n] series models on PuzzleVQA and AlgoPuzzleVQA, illustrating how multimodal reasoning evolves over time with model releases and inference cost. The size of each circle roughly represents the inference cost per puzzle.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1.1"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.2"></th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S3.T1.1.1.1.1.3.1">Open Ended</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="3" id="S3.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S3.T1.1.1.1.1.4.1">Multi Choice</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.2.2.1" rowspan="12"><span class="ltx_text" id="S3.T1.1.1.2.2.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.2.2.1.1.1" style="width:8.9pt;height:57.6pt;vertical-align:-26.3pt;"><span class="ltx_transformed_inner" style="width:57.6pt;transform:translate(-24.38pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T1.1.1.2.2.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S3.T1.1.1.2.2.1.1.1.1.1">PuzzleVQA</span></span>
</span></span></span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.2.2.2"></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.2.3.1">
<span class="ltx_p" id="S3.T1.1.1.2.2.3.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.3.1.1.1">GPT-4-Turbo</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.2.4.1">
<span class="ltx_p" id="S3.T1.1.1.2.2.4.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.4.1.1.1">GPT-4o</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.2.5.1">
<span class="ltx_p" id="S3.T1.1.1.2.2.5.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.5.1.1.1">o1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.2.6.1">
<span class="ltx_p" id="S3.T1.1.1.2.2.6.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.6.1.1.1">GPT-4-Turbo</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2.2.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.2.7.1">
<span class="ltx_p" id="S3.T1.1.1.2.2.7.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.7.1.1.1">GPT-4o</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2.2.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.2.8.1">
<span class="ltx_p" id="S3.T1.1.1.2.2.8.1.1" style="width:59.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.8.1.1.1">o1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.1">Colors</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.2.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.2.1.1" style="width:59.8pt;">51.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.3.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.3.1.1" style="width:59.8pt;">72.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.4.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.4.1.1" style="width:59.8pt;">80.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.5.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.5.1.1" style="width:59.8pt;">42.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.3.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.6.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.6.1.1" style="width:59.8pt;">77.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.3.3.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.7.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.7.1.1" style="width:59.8pt;">91.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.4.4.1">Numbers</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.2.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.2.1.1" style="width:59.8pt;">82.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.3.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.3.1.1" style="width:59.8pt;">84.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.4.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.4.1.1" style="width:59.8pt;">96.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.5.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.5.1.1" style="width:59.8pt;">85.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.6.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.6.1.1" style="width:59.8pt;">87.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.7.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.7.1.1" style="width:59.8pt;">99.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.5.5.1">Shapes</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.5.2.1">
<span class="ltx_p" id="S3.T1.1.1.5.5.2.1.1" style="width:59.8pt;">32.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.5.3.1">
<span class="ltx_p" id="S3.T1.1.1.5.5.3.1.1" style="width:59.8pt;">51.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.5.4.1">
<span class="ltx_p" id="S3.T1.1.1.5.5.4.1.1" style="width:59.8pt;">54.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.5.5.1">
<span class="ltx_p" id="S3.T1.1.1.5.5.5.1.1" style="width:59.8pt;">59.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.5.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.5.6.1">
<span class="ltx_p" id="S3.T1.1.1.5.5.6.1.1" style="width:59.8pt;">71.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.5.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.5.7.1">
<span class="ltx_p" id="S3.T1.1.1.5.5.7.1.1" style="width:59.8pt;">66.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.6.6.1">Size</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.6.2.1">
<span class="ltx_p" id="S3.T1.1.1.6.6.2.1.1" style="width:59.8pt;">19.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.6.3.1">
<span class="ltx_p" id="S3.T1.1.1.6.6.3.1.1" style="width:59.8pt;">39.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.6.6.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.6.4.1">
<span class="ltx_p" id="S3.T1.1.1.6.6.4.1.1" style="width:59.8pt;">54.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.6.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.6.5.1">
<span class="ltx_p" id="S3.T1.1.1.6.6.5.1.1" style="width:59.8pt;">37.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.6.6.1">
<span class="ltx_p" id="S3.T1.1.1.6.6.6.1.1" style="width:59.8pt;">44.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.6.6.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.6.7.1">
<span class="ltx_p" id="S3.T1.1.1.6.6.7.1.1" style="width:59.8pt;">77.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.7.7.1">Colors &amp; Numbers</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.7.2.1">
<span class="ltx_p" id="S3.T1.1.1.7.7.2.1.1" style="width:59.8pt;">54.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.7.3.1">
<span class="ltx_p" id="S3.T1.1.1.7.7.3.1.1" style="width:59.8pt;">48.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.7.7.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.7.4.1">
<span class="ltx_p" id="S3.T1.1.1.7.7.4.1.1" style="width:59.8pt;">97.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.7.7.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.7.5.1">
<span class="ltx_p" id="S3.T1.1.1.7.7.5.1.1" style="width:59.8pt;">64.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.7.7.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.7.6.1">
<span class="ltx_p" id="S3.T1.1.1.7.7.6.1.1" style="width:59.8pt;">64.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.7.7.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.7.7.1">
<span class="ltx_p" id="S3.T1.1.1.7.7.7.1.1" style="width:59.8pt;">99.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.8.8.1">Colors &amp; Shapes</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.8.2.1">
<span class="ltx_p" id="S3.T1.1.1.8.8.2.1.1" style="width:59.8pt;">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.8.3.1">
<span class="ltx_p" id="S3.T1.1.1.8.8.3.1.1" style="width:59.8pt;">45.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.8.8.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.8.4.1">
<span class="ltx_p" id="S3.T1.1.1.8.8.4.1.1" style="width:59.8pt;">75.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.8.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.8.5.1">
<span class="ltx_p" id="S3.T1.1.1.8.8.5.1.1" style="width:59.8pt;">61.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.8.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.8.6.1">
<span class="ltx_p" id="S3.T1.1.1.8.8.6.1.1" style="width:59.8pt;">66.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.8.8.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.8.7.1">
<span class="ltx_p" id="S3.T1.1.1.8.8.7.1.1" style="width:59.8pt;">80.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.9.9.1">Colors &amp; Size</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.9.2.1">
<span class="ltx_p" id="S3.T1.1.1.9.9.2.1.1" style="width:59.8pt;">31.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.9.3.1">
<span class="ltx_p" id="S3.T1.1.1.9.9.3.1.1" style="width:59.8pt;">21.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.9.9.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.9.4.1">
<span class="ltx_p" id="S3.T1.1.1.9.9.4.1.1" style="width:59.8pt;">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.9.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.9.5.1">
<span class="ltx_p" id="S3.T1.1.1.9.9.5.1.1" style="width:59.8pt;">50.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.9.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.9.6.1">
<span class="ltx_p" id="S3.T1.1.1.9.9.6.1.1" style="width:59.8pt;">58.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.9.9.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.9.7.1">
<span class="ltx_p" id="S3.T1.1.1.9.9.7.1.1" style="width:59.8pt;">50.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.10.10.1">Numbers &amp; Shapes</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.10.2.1">
<span class="ltx_p" id="S3.T1.1.1.10.10.2.1.1" style="width:59.8pt;">31.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.10.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.10.3.1">
<span class="ltx_p" id="S3.T1.1.1.10.10.3.1.1" style="width:59.8pt;">20.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.10.10.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.10.4.1">
<span class="ltx_p" id="S3.T1.1.1.10.10.4.1.1" style="width:59.8pt;">78.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.10.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.10.5.1">
<span class="ltx_p" id="S3.T1.1.1.10.10.5.1.1" style="width:59.8pt;">54.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.10.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.10.6.1">
<span class="ltx_p" id="S3.T1.1.1.10.10.6.1.1" style="width:59.8pt;">55.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.10.10.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.10.10.7.1">
<span class="ltx_p" id="S3.T1.1.1.10.10.7.1.1" style="width:59.8pt;">92.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.11.11.1">Numbers &amp; Size</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.11.11.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.11.2.1">
<span class="ltx_p" id="S3.T1.1.1.11.11.2.1.1" style="width:59.8pt;">24.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.11.11.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.11.3.1">
<span class="ltx_p" id="S3.T1.1.1.11.11.3.1.1" style="width:59.8pt;">34.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.11.11.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.11.4.1">
<span class="ltx_p" id="S3.T1.1.1.11.11.4.1.1" style="width:59.8pt;">41.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.11.11.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.11.5.1">
<span class="ltx_p" id="S3.T1.1.1.11.11.5.1.1" style="width:59.8pt;">32.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.11.11.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.11.6.1">
<span class="ltx_p" id="S3.T1.1.1.11.11.6.1.1" style="width:59.8pt;">30.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.11.11.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.11.11.7.1">
<span class="ltx_p" id="S3.T1.1.1.11.11.7.1.1" style="width:59.8pt;">49.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.12.12.1">Size &amp; Shapes</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.12.12.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.12.2.1">
<span class="ltx_p" id="S3.T1.1.1.12.12.2.1.1" style="width:59.8pt;">28.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.12.12.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.12.3.1">
<span class="ltx_p" id="S3.T1.1.1.12.12.3.1.1" style="width:59.8pt;">50.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.12.12.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.12.4.1">
<span class="ltx_p" id="S3.T1.1.1.12.12.4.1.1" style="width:59.8pt;">55.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.12.12.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.12.5.1">
<span class="ltx_p" id="S3.T1.1.1.12.12.5.1.1" style="width:59.8pt;">55.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.12.12.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.12.6.1">
<span class="ltx_p" id="S3.T1.1.1.12.12.6.1.1" style="width:59.8pt;">60.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.12.12.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.12.12.7.1">
<span class="ltx_p" id="S3.T1.1.1.12.12.7.1.1" style="width:59.8pt;">86.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.13.1.1">Average</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.13.13.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.13.2.1">
<span class="ltx_p" id="S3.T1.1.1.13.13.2.1.1" style="width:59.8pt;">38.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.13.13.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.13.3.1">
<span class="ltx_p" id="S3.T1.1.1.13.13.3.1.1" style="width:59.8pt;">46.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.13.13.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.13.4.1">
<span class="ltx_p" id="S3.T1.1.1.13.13.4.1.1" style="width:59.8pt;">66.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.13.13.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.13.5.1">
<span class="ltx_p" id="S3.T1.1.1.13.13.5.1.1" style="width:59.8pt;">54.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.13.13.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.13.6.1">
<span class="ltx_p" id="S3.T1.1.1.13.13.6.1.1" style="width:59.8pt;">60.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.13.13.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.13.13.7.1">
<span class="ltx_p" id="S3.T1.1.1.13.13.7.1.1" style="width:59.8pt;">79.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.1.1.14.14.1" rowspan="19"><span class="ltx_text" id="S3.T1.1.1.14.14.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.1.1.14.14.1.1.1" style="width:8.9pt;height:78pt;vertical-align:-36.5pt;"><span class="ltx_transformed_inner" style="width:77.9pt;transform:translate(-34.51pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T1.1.1.14.14.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S3.T1.1.1.14.14.1.1.1.1.1">AlgoPuzzleVQA</span></span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.14.14.2">Board Tiling</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.14.14.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.14.14.3.1">
<span class="ltx_p" id="S3.T1.1.1.14.14.3.1.1" style="width:59.8pt;">46.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.14.14.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.14.14.4.1">
<span class="ltx_p" id="S3.T1.1.1.14.14.4.1.1" style="width:59.8pt;">46.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.14.14.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.14.14.5.1">
<span class="ltx_p" id="S3.T1.1.1.14.14.5.1.1" style="width:59.8pt;">51.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.14.14.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.14.14.6.1">
<span class="ltx_p" id="S3.T1.1.1.14.14.6.1.1" style="width:59.8pt;">49.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.14.14.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.14.14.7.1">
<span class="ltx_p" id="S3.T1.1.1.14.14.7.1.1" style="width:59.8pt;">52.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.14.14.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.14.14.8.1">
<span class="ltx_p" id="S3.T1.1.1.14.14.8.1.1" style="width:59.8pt;">47.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.15.15.1">Calendar</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.15.15.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.15.15.2.1">
<span class="ltx_p" id="S3.T1.1.1.15.15.2.1.1" style="width:59.8pt;">43.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.15.15.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.15.15.3.1">
<span class="ltx_p" id="S3.T1.1.1.15.15.3.1.1" style="width:59.8pt;">52.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.15.15.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.15.15.4.1">
<span class="ltx_p" id="S3.T1.1.1.15.15.4.1.1" style="width:59.8pt;">83.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.15.15.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.15.15.5.1">
<span class="ltx_p" id="S3.T1.1.1.15.15.5.1.1" style="width:59.8pt;">63.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.15.15.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.15.15.6.1">
<span class="ltx_p" id="S3.T1.1.1.15.15.6.1.1" style="width:59.8pt;">66.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.15.15.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.15.15.7.1">
<span class="ltx_p" id="S3.T1.1.1.15.15.7.1.1" style="width:59.8pt;">92.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.16.16.1">Chain Link</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.16.16.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.16.16.2.1">
<span class="ltx_p" id="S3.T1.1.1.16.16.2.1.1" style="width:59.8pt;">1.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.16.16.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.16.16.3.1">
<span class="ltx_p" id="S3.T1.1.1.16.16.3.1.1" style="width:59.8pt;">3.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.16.16.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.16.16.4.1">
<span class="ltx_p" id="S3.T1.1.1.16.16.4.1.1" style="width:59.8pt;">1.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.16.16.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.16.16.5.1">
<span class="ltx_p" id="S3.T1.1.1.16.16.5.1.1" style="width:59.8pt;">29.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.16.16.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.16.16.6.1">
<span class="ltx_p" id="S3.T1.1.1.16.16.6.1.1" style="width:59.8pt;">39.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.16.16.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.16.16.7.1">
<span class="ltx_p" id="S3.T1.1.1.16.16.7.1.1" style="width:59.8pt;">61.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.17.17.1">Checker Move</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.17.17.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.17.17.2.1">
<span class="ltx_p" id="S3.T1.1.1.17.17.2.1.1" style="width:59.8pt;">3.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.17.17.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.17.17.3.1">
<span class="ltx_p" id="S3.T1.1.1.17.17.3.1.1" style="width:59.8pt;">7.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.17.17.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.17.17.4.1">
<span class="ltx_p" id="S3.T1.1.1.17.17.4.1.1" style="width:59.8pt;">34.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.17.17.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.17.17.5.1">
<span class="ltx_p" id="S3.T1.1.1.17.17.5.1.1" style="width:59.8pt;">25.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.17.17.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.17.17.6.1">
<span class="ltx_p" id="S3.T1.1.1.17.17.6.1.1" style="width:59.8pt;">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.17.17.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.17.17.7.1">
<span class="ltx_p" id="S3.T1.1.1.17.17.7.1.1" style="width:59.8pt;">52.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.18.18.1">Clock</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.18.18.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.18.18.2.1">
<span class="ltx_p" id="S3.T1.1.1.18.18.2.1.1" style="width:59.8pt;">0.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.18.18.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.18.18.3.1">
<span class="ltx_p" id="S3.T1.1.1.18.18.3.1.1" style="width:59.8pt;">3.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.18.18.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.18.18.4.1">
<span class="ltx_p" id="S3.T1.1.1.18.18.4.1.1" style="width:59.8pt;">6.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.18.18.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.18.18.5.1">
<span class="ltx_p" id="S3.T1.1.1.18.18.5.1.1" style="width:59.8pt;">27.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.18.18.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.18.18.6.1">
<span class="ltx_p" id="S3.T1.1.1.18.18.6.1.1" style="width:59.8pt;">33.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.18.18.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.18.18.7.1">
<span class="ltx_p" id="S3.T1.1.1.18.18.7.1.1" style="width:59.8pt;">83.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.19.19.1">Colour Hue</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.19.19.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.19.19.2.1">
<span class="ltx_p" id="S3.T1.1.1.19.19.2.1.1" style="width:59.8pt;">5.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.19.19.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.19.19.3.1">
<span class="ltx_p" id="S3.T1.1.1.19.19.3.1.1" style="width:59.8pt;">10.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.19.19.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.19.19.4.1">
<span class="ltx_p" id="S3.T1.1.1.19.19.4.1.1" style="width:59.8pt;">15.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.19.19.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.19.19.5.1">
<span class="ltx_p" id="S3.T1.1.1.19.19.5.1.1" style="width:59.8pt;">36.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.19.19.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.19.19.6.1">
<span class="ltx_p" id="S3.T1.1.1.19.19.6.1.1" style="width:59.8pt;">28.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.19.19.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.19.19.7.1">
<span class="ltx_p" id="S3.T1.1.1.19.19.7.1.1" style="width:59.8pt;">23.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.20.20.1">Map Colour</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.20.20.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.20.20.2.1">
<span class="ltx_p" id="S3.T1.1.1.20.20.2.1.1" style="width:59.8pt;">10.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.20.20.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.20.20.3.1">
<span class="ltx_p" id="S3.T1.1.1.20.20.3.1.1" style="width:59.8pt;">22.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.20.20.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.20.20.4.1">
<span class="ltx_p" id="S3.T1.1.1.20.20.4.1.1" style="width:59.8pt;">21.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.20.20.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.20.20.5.1">
<span class="ltx_p" id="S3.T1.1.1.20.20.5.1.1" style="width:59.8pt;">38.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.20.20.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.20.20.6.1">
<span class="ltx_p" id="S3.T1.1.1.20.20.6.1.1" style="width:59.8pt;">49.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.20.20.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.20.20.7.1">
<span class="ltx_p" id="S3.T1.1.1.20.20.7.1.1" style="width:59.8pt;">50.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.21.21.1">Maze Solve</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.21.21.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.21.21.2.1">
<span class="ltx_p" id="S3.T1.1.1.21.21.2.1.1" style="width:59.8pt;">16.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.21.21.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.21.21.3.1">
<span class="ltx_p" id="S3.T1.1.1.21.21.3.1.1" style="width:59.8pt;">8.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.21.21.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.21.21.4.1">
<span class="ltx_p" id="S3.T1.1.1.21.21.4.1.1" style="width:59.8pt;">17.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.21.21.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.21.21.5.1">
<span class="ltx_p" id="S3.T1.1.1.21.21.5.1.1" style="width:59.8pt;">40.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.21.21.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.21.21.6.1">
<span class="ltx_p" id="S3.T1.1.1.21.21.6.1.1" style="width:59.8pt;">47.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.21.21.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.21.21.7.1">
<span class="ltx_p" id="S3.T1.1.1.21.21.7.1.1" style="width:59.8pt;">50.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.22.22.1">Move Box</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.22.22.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.22.22.2.1">
<span class="ltx_p" id="S3.T1.1.1.22.22.2.1.1" style="width:59.8pt;">20.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.22.22.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.22.22.3.1">
<span class="ltx_p" id="S3.T1.1.1.22.22.3.1.1" style="width:59.8pt;">23.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.22.22.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.22.22.4.1">
<span class="ltx_p" id="S3.T1.1.1.22.22.4.1.1" style="width:59.8pt;">23.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.22.22.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.22.22.5.1">
<span class="ltx_p" id="S3.T1.1.1.22.22.5.1.1" style="width:59.8pt;">36.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.22.22.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.22.22.6.1">
<span class="ltx_p" id="S3.T1.1.1.22.22.6.1.1" style="width:59.8pt;">36.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.22.22.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.22.22.7.1">
<span class="ltx_p" id="S3.T1.1.1.22.22.7.1.1" style="width:59.8pt;">30.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.23.23.1">N-Queens</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.23.23.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.23.23.2.1">
<span class="ltx_p" id="S3.T1.1.1.23.23.2.1.1" style="width:59.8pt;">17.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.23.23.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.23.23.3.1">
<span class="ltx_p" id="S3.T1.1.1.23.23.3.1.1" style="width:59.8pt;">16.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.23.23.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.23.23.4.1">
<span class="ltx_p" id="S3.T1.1.1.23.23.4.1.1" style="width:59.8pt;">16.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.23.23.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.23.23.5.1">
<span class="ltx_p" id="S3.T1.1.1.23.23.5.1.1" style="width:59.8pt;">35.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.23.23.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.23.23.6.1">
<span class="ltx_p" id="S3.T1.1.1.23.23.6.1.1" style="width:59.8pt;">35.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.23.23.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.23.23.7.1">
<span class="ltx_p" id="S3.T1.1.1.23.23.7.1.1" style="width:59.8pt;">20.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.24.24.1">Number Slide</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.24.24.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.24.24.2.1">
<span class="ltx_p" id="S3.T1.1.1.24.24.2.1.1" style="width:59.8pt;">14.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.24.24.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.24.24.3.1">
<span class="ltx_p" id="S3.T1.1.1.24.24.3.1.1" style="width:59.8pt;">32.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.24.24.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.24.24.4.1">
<span class="ltx_p" id="S3.T1.1.1.24.24.4.1.1" style="width:59.8pt;">71.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.24.24.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.24.24.5.1">
<span class="ltx_p" id="S3.T1.1.1.24.24.5.1.1" style="width:59.8pt;">45.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.24.24.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.24.24.6.1">
<span class="ltx_p" id="S3.T1.1.1.24.24.6.1.1" style="width:59.8pt;">46.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.24.24.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.24.24.7.1">
<span class="ltx_p" id="S3.T1.1.1.24.24.7.1.1" style="width:59.8pt;">89.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.25.25.1">Rotten Fruits</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.25.25.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.25.25.2.1">
<span class="ltx_p" id="S3.T1.1.1.25.25.2.1.1" style="width:59.8pt;">32.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.25.25.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.25.25.3.1">
<span class="ltx_p" id="S3.T1.1.1.25.25.3.1.1" style="width:59.8pt;">53.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.25.25.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.25.25.4.1">
<span class="ltx_p" id="S3.T1.1.1.25.25.4.1.1" style="width:59.8pt;">43.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.25.25.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.25.25.5.1">
<span class="ltx_p" id="S3.T1.1.1.25.25.5.1.1" style="width:59.8pt;">36.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.25.25.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.25.25.6.1">
<span class="ltx_p" id="S3.T1.1.1.25.25.6.1.1" style="width:59.8pt;">56.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.25.25.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.25.25.7.1">
<span class="ltx_p" id="S3.T1.1.1.25.25.7.1.1" style="width:59.8pt;">56.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.26.26.1">Rubik’s Cube</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.26.26.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.26.26.2.1">
<span class="ltx_p" id="S3.T1.1.1.26.26.2.1.1" style="width:59.8pt;">32.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.26.26.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.26.26.3.1">
<span class="ltx_p" id="S3.T1.1.1.26.26.3.1.1" style="width:59.8pt;">44.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.26.26.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.26.26.4.1">
<span class="ltx_p" id="S3.T1.1.1.26.26.4.1.1" style="width:59.8pt;">54.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.26.26.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.26.26.5.1">
<span class="ltx_p" id="S3.T1.1.1.26.26.5.1.1" style="width:59.8pt;">52.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.26.26.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.26.26.6.1">
<span class="ltx_p" id="S3.T1.1.1.26.26.6.1.1" style="width:59.8pt;">48.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.26.26.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.26.26.7.1">
<span class="ltx_p" id="S3.T1.1.1.26.26.7.1.1" style="width:59.8pt;">74.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.27.27.1">Think A Dot</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.27.27.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.27.27.2.1">
<span class="ltx_p" id="S3.T1.1.1.27.27.2.1.1" style="width:59.8pt;">36.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.27.27.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.27.27.3.1">
<span class="ltx_p" id="S3.T1.1.1.27.27.3.1.1" style="width:59.8pt;">41.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.27.27.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.27.27.4.1">
<span class="ltx_p" id="S3.T1.1.1.27.27.4.1.1" style="width:59.8pt;">32.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.27.27.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.27.27.5.1">
<span class="ltx_p" id="S3.T1.1.1.27.27.5.1.1" style="width:59.8pt;">47.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.27.27.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.27.27.6.1">
<span class="ltx_p" id="S3.T1.1.1.27.27.6.1.1" style="width:59.8pt;">50.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.27.27.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.27.27.7.1">
<span class="ltx_p" id="S3.T1.1.1.27.27.7.1.1" style="width:59.8pt;">60.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.28.28.1">Tower of Hanoi</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.28.28.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.28.28.2.1">
<span class="ltx_p" id="S3.T1.1.1.28.28.2.1.1" style="width:59.8pt;">0.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.28.28.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.28.28.3.1">
<span class="ltx_p" id="S3.T1.1.1.28.28.3.1.1" style="width:59.8pt;">2.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.28.28.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.28.28.4.1">
<span class="ltx_p" id="S3.T1.1.1.28.28.4.1.1" style="width:59.8pt;">39.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.28.28.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.28.28.5.1">
<span class="ltx_p" id="S3.T1.1.1.28.28.5.1.1" style="width:59.8pt;">15.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.28.28.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.28.28.6.1">
<span class="ltx_p" id="S3.T1.1.1.28.28.6.1.1" style="width:59.8pt;">35.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.28.28.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.28.28.7.1">
<span class="ltx_p" id="S3.T1.1.1.28.28.7.1.1" style="width:59.8pt;">68.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.29.29.1">Water Jugs</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.29.29.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.29.29.2.1">
<span class="ltx_p" id="S3.T1.1.1.29.29.2.1.1" style="width:59.8pt;">8.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.29.29.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.29.29.3.1">
<span class="ltx_p" id="S3.T1.1.1.29.29.3.1.1" style="width:59.8pt;">23.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.1.29.29.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.29.29.4.1">
<span class="ltx_p" id="S3.T1.1.1.29.29.4.1.1" style="width:59.8pt;">42.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.29.29.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.29.29.5.1">
<span class="ltx_p" id="S3.T1.1.1.29.29.5.1.1" style="width:59.8pt;">29.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.29.29.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.29.29.6.1">
<span class="ltx_p" id="S3.T1.1.1.29.29.6.1.1" style="width:59.8pt;">68.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.29.29.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.29.29.7.1">
<span class="ltx_p" id="S3.T1.1.1.29.29.7.1.1" style="width:59.8pt;">49.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.30.30.1">Wheel of Fortune</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.30.30.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.30.30.2.1">
<span class="ltx_p" id="S3.T1.1.1.30.30.2.1.1" style="width:59.8pt;">14.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.30.30.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.30.30.3.1">
<span class="ltx_p" id="S3.T1.1.1.30.30.3.1.1" style="width:59.8pt;">29.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.30.30.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.30.30.4.1">
<span class="ltx_p" id="S3.T1.1.1.30.30.4.1.1" style="width:59.8pt;">31.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.30.30.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.30.30.5.1">
<span class="ltx_p" id="S3.T1.1.1.30.30.5.1.1" style="width:59.8pt;">40.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.30.30.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.30.30.6.1">
<span class="ltx_p" id="S3.T1.1.1.30.30.6.1.1" style="width:59.8pt;">44.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.30.30.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.30.30.7.1">
<span class="ltx_p" id="S3.T1.1.1.30.30.7.1.1" style="width:59.8pt;">67.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.31.31.1">Wood Slide</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.31.31.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.31.31.2.1">
<span class="ltx_p" id="S3.T1.1.1.31.31.2.1.1" style="width:59.8pt;">0.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.31.31.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.31.31.3.1">
<span class="ltx_p" id="S3.T1.1.1.31.31.3.1.1" style="width:59.8pt;">1.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.1.1.31.31.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.31.31.4.1">
<span class="ltx_p" id="S3.T1.1.1.31.31.4.1.1" style="width:59.8pt;">0.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.31.31.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.31.31.5.1">
<span class="ltx_p" id="S3.T1.1.1.31.31.5.1.1" style="width:59.8pt;">15.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.31.31.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.31.31.6.1">
<span class="ltx_p" id="S3.T1.1.1.31.31.6.1.1" style="width:59.8pt;">23.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.31.31.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.31.31.7.1">
<span class="ltx_p" id="S3.T1.1.1.31.31.7.1.1" style="width:59.8pt;">25.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.1.32.32.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.32.32.1.1">Average</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.32.32.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.32.32.2.1">
<span class="ltx_p" id="S3.T1.1.1.32.32.2.1.1" style="width:59.8pt;">16.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.32.32.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.32.32.3.1">
<span class="ltx_p" id="S3.T1.1.1.32.32.3.1.1" style="width:59.8pt;">23.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.1.32.32.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.32.32.4.1">
<span class="ltx_p" id="S3.T1.1.1.32.32.4.1.1" style="width:59.8pt;">32.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.32.32.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.32.32.5.1">
<span class="ltx_p" id="S3.T1.1.1.32.32.5.1.1" style="width:59.8pt;">36.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.32.32.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.32.32.6.1">
<span class="ltx_p" id="S3.T1.1.1.32.32.6.1.1" style="width:59.8pt;">43.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.32.32.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.32.32.7.1">
<span class="ltx_p" id="S3.T1.1.1.32.32.7.1.1" style="width:59.8pt;">55.3</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the accuracy scores achieved by various GPT models (GPT-4-Turbo, GPT-40, and o-[1]) on two different puzzle datasets: PuzzleVQA and AlgoPuzzleVQA.  The accuracy is measured for both multiple-choice and open-ended question formats for each model and puzzle dataset.  This allows for a comparison of model performance across different question types and puzzle complexities, highlighting the strengths and weaknesses of each model in solving multimodal reasoning problems.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy scores of GPT-[n] and o-[n] models on PuzzleVQA and AlgoPuzzleVQA.
> </details>





### In-depth insights


#### Multimodal Reasoning
Multimodal reasoning, the capacity to integrate and interpret information from multiple modalities (like vision and language), is a crucial aspect of human-like intelligence.  The research paper investigates this, **highlighting the limitations of current large language models (LLMs)** in handling complex multimodal tasks.  The study uses challenging multimodal puzzles, requiring both visual perception and abstract reasoning, to evaluate LLMs' performance.  **Results reveal a performance gap between human capabilities and the abilities of current LLMs**, even advanced ones like OpenAI's o-[n] series, which showcase improvements in reasoning but still struggle with seemingly simple multimodal puzzles.  The findings underscore the **need for further research into improving LLMs' efficiency and generalization abilities**, particularly regarding visual perception and abstract reasoning within multimodal contexts.  **The cost of computational resources** needed for higher-performing models also raises important considerations for practical applications.

#### GPT-Model Evolution
The evolution of GPT models reveals a fascinating trajectory of progress in AI reasoning capabilities.  Early models struggled with nuanced tasks, particularly those involving multimodal reasoning. However, **subsequent iterations, like GPT-4 and beyond, exhibit significantly enhanced performance** across various benchmarks, especially in abstract reasoning. This improvement is not merely quantitative; it's qualitative.  **GPT-4's ability to handle complex patterns and puzzles suggests a significant leap in cognitive capacity**.  However, **this progress is often coupled with an increased computational cost**, underscoring the trade-off between performance and efficiency. The emergence of models like 'o-n' demonstrates an effort to push the boundaries of reasoning even further, but at a substantial cost increase.  **Future research should focus on optimizing both the performance and efficiency of these models**, exploring techniques to enhance reasoning without exponentially increasing computational demands. The path to artificial general intelligence (AGI) likely involves a synergistic interplay between these factors, combining superior reasoning abilities with improved resource efficiency.

#### Puzzle Benchmarks
Puzzle benchmarks are crucial for evaluating large language models' (LLMs) reasoning abilities, especially in the context of artificial general intelligence (AGI).  **Multimodal puzzles**, integrating visual and textual information, offer a more holistic assessment than traditional text-based benchmarks.  **They probe a range of cognitive skills**, including perception, pattern recognition, and abstract reasoning, providing insights beyond symbolic manipulation.  The design of these puzzles is key; they need to be **challenging yet interpretable**, capable of discerning genuine understanding from superficial pattern matching.  **Furthermore, the benchmarks must evolve with the advancements in LLMs.**  As models become increasingly sophisticated, the difficulty and complexity of puzzles must also increase to maintain their diagnostic value.  Robust evaluation metrics are needed to quantify and compare performance across different models and tasks, ideally including both multiple-choice and open-ended question formats.  Finally, **open-source and publicly available puzzle datasets are essential** to promote transparency, reproducibility, and collaborative improvement within the AI research community.

#### Reasoning Bottlenecks
The analysis of reasoning bottlenecks in large language models (LLMs) reveals crucial limitations in their ability to solve complex multimodal reasoning tasks.  The study highlights that **visual perception** is a primary bottleneck, even for advanced models like o-1. While o-1 demonstrates impressive improvements over previous GPT models, its performance suffers significantly when visual input is misinterpreted or lacks precision.  **Inductive reasoning**, while improved in o-1, also presents a challenge; even with accurate visual perception, the model occasionally struggles to correctly infer underlying patterns. This underscores the need for further development in both visual processing and abstract reasoning capabilities within LLMs to overcome these limitations and achieve true human-level multimodal reasoning.  **Providing ground-truth information** regarding perception and inductive reasoning steps substantially improves performance across all models, suggesting targeted improvements in these specific areas are crucial for future progress. The interaction between visual and abstract reasoning is complex, and addressing these bottlenecks simultaneously will likely lead to more robust and generalized AI systems.

#### Future Research
Future research directions stemming from this work on multimodal reasoning in LLMs could explore several avenues.  **Firstly**, a more extensive benchmark suite is needed, incorporating puzzles of varying complexity and cognitive demands beyond those currently available. This would involve designing puzzles that test different aspects of reasoning, such as logical inference, spatial reasoning, and causal reasoning, in diverse contexts. **Secondly**, investigating the influence of model architecture and training methodologies on multimodal reasoning performance is crucial.  Does the superior performance of some models truly reflect advancements in reasoning, or are there other factors at play such as increased parameter size or training data bias? **Thirdly**, the high computational cost of advanced models needs to be addressed. Research into more efficient architectures or training paradigms is necessary to make these models more practical for wider applications.  **Finally**, understanding the fundamental limitations of current models is key.  While the models demonstrate impressive capabilities in specific tasks, there's a significant gap between their performance and true human-like reasoning abilities.  Focus should be placed on identifying and resolving these limitations to move towards more robust and generalized artificial intelligence.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.01081/x1.png)

> 🔼 This figure displays the progression of OpenAI's large language models' scores on the ARC-AGI (Abstraction and Reasoning Corpus for Artificial General Intelligence) benchmark over time. It shows how different models, such as GPT-2, GPT-3, GPT-4, and the newer o-series models, perform on this benchmark and how their performance has evolved.  The scores represent the models' ability to solve abstract reasoning problems, illustrating advancements in AI capabilities. Notably, it highlights the substantial improvement achieved by the o-series models compared to previous GPT models.
> <details>
> <summary>read the caption</summary>
> Figure 2: ARC-AGI semi-private scores of the OpenAI models over time.
> </details>



![](https://arxiv.org/html/2502.01081/extracted/6172587/images/intro_case.png)

> 🔼 This figure showcases two examples of abstract puzzles from the PUZZLEVQA dataset. The left panel displays a puzzle from the 'Colors & Shapes' category, requiring visual reasoning about colors and shapes to identify the missing element. The right panel presents a puzzle from the 'Colors & Numbers' category, demanding a combination of visual and numerical reasoning to solve it.  The figure highlights the differences in complexity and the type of reasoning involved in solving multimodal puzzles, which involves visual and textual information processing.
> <details>
> <summary>read the caption</summary>
> Figure 3: Case study on an abstract puzzle from the Colors & Shapes (left) category and Colors & Numbers (right) category in PuzzleVQA.
> </details>



![](https://arxiv.org/html/2502.01081/x2.png)

> 🔼 Figure 4 showcases examples of puzzles from the PUZZLEVQA dataset.  These puzzles test visual reasoning abilities by presenting abstract patterns involving numbers, colors, sizes, and shapes. The figure displays both single-concept puzzles (e.g., identifying a missing shape) and dual-concept puzzles (e.g., identifying a missing number based on both color and shape patterns).  These puzzles illustrate the variety and complexity of problems within the dataset used to evaluate multimodal reasoning capabilities of large language models.
> <details>
> <summary>read the caption</summary>
> Figure 4: Example single-concept and dual-concept abstract puzzles in PuzzleVQA, designed around fundamental concepts such as numbers, colors, size, and shapes.
> </details>



![](https://arxiv.org/html/2502.01081/extracted/6172587/images/clock_case.png)

> 🔼 Figure 5 showcases examples of puzzles from the AlgoPuzzleVQA dataset. The top row highlights puzzles emphasizing visual features such as color, position, shape, or size.  The bottom two rows illustrate puzzles focused on algorithmic reasoning, including categories like arithmetic, Boolean logic, combinatorics, graph theory, optimization, search, and set theory.  Each visual and algorithmic category contains at least one example puzzle.  It's important to note that some puzzles may belong to multiple categories, although only the primary categories are listed in the figure's headers. For a complete breakdown of puzzle categorization, refer to Section B.1 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example of puzzles from AlgoPuzzleVQA with visual features represented in the top row and algorithmic features in the bottom two rows. For each feature, at least one puzzle instance from each category is presented. Note that the header categories are not exhaustive, as some puzzles may belong to additional categories not listed in the headers. The complete categorization can be found in Section B.1.
> </details>



![](https://arxiv.org/html/2502.01081/extracted/6172587/images/number_slide_case.png)

> 🔼 This figure shows a case study of the 'Clock' puzzle from the ALGOPUZZLEVQA dataset, comparing the performance of a model in multiple-choice and open-ended question answering settings.  It highlights the differences in model reasoning and accuracy when presented with structured choices versus the need for generating a free-form response.
> <details>
> <summary>read the caption</summary>
> Figure 6: Case study on Clock in AlgoPuzzleVQA on multiple-choice and open-ended setting.
> </details>



![](https://arxiv.org/html/2502.01081/extracted/6172587/images/circle_number_size_case.png)

> 🔼 This figure shows a case study of the Chain Link puzzle from the ALGOPUZZLEVQA dataset. It compares the performance of the model in two different settings: multiple-choice and open-ended.  The multiple-choice setting provides the model with answer options, while the open-ended setting requires the model to generate its own answer. The figure showcases the model's responses (ground truth and model output) in each setting, highlighting the differences in its reasoning process and accuracy.  It aims to illustrate how the availability of answer choices affects the model's ability to solve the puzzle correctly and the underlying challenges related to reasoning and visual understanding in multimodal reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Case study on Chain Link in AlgoPuzzleVQA on multiple-choice and open-ended setting.
> </details>



![](https://arxiv.org/html/2502.01081/x5.png)

> 🔼 This figure shows a case study of the Number Slide puzzle from the AlgoPuzzleVQA dataset, comparing the performance of GPT-[n] and o-[n] models.  It highlights the differences in how these models approach solving this puzzle, which involves manipulating numbered tiles on a grid to reach a target configuration. The figure demonstrates the models' ability to perceive the puzzle's state and reason through the necessary steps. Specifically, it showcases the superior performance of the o-[n] model compared to the GPT-[n] models, emphasizing the role of visual perception in successful puzzle solving. The example emphasizes that the o-[n] models correctly identify the location of the blank space, leading to a correct solution, whereas GPT-[n] models struggle with correct perception.
> <details>
> <summary>read the caption</summary>
> Figure 8: Case study on Number Slide in AlgoPuzzleVQA across GPT-[n] and o-[n] models.
> </details>



![](https://arxiv.org/html/2502.01081/extracted/6172587/images/bottleneck.png)

> 🔼 Figure 9 presents a case study of a specific puzzle from the Numbers & Size category within the PUZZLEVQA dataset.  It showcases how the model's performance changes depending on the level of information provided.  Three versions of the prompt are shown: the original prompt (only the visual puzzle is given), a prompt with additional perception details (visual puzzle + description of the puzzle elements), and a prompt with both perception and inductive reasoning details (visual puzzle + description of puzzle elements + explanation of the pattern).  This figure illustrates the reasoning bottlenecks faced by the models and highlights the impact of providing additional guidance on the model's ability to solve the puzzle correctly.
> <details>
> <summary>read the caption</summary>
> Figure 9: Case study on an abstract puzzle from the Numbers & Size category in PuzzleVQA.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1.1"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.2"></th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="9" id="S4.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.1.1.1.1.3.1">Open Ended</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.1.1.2.2.1"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.2.2.2"></th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_t" colspan="3" id="S4.T2.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.3.1">GPT-4-Turbo</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_t" colspan="3" id="S4.T2.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.4.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="3" id="S4.T2.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.5.1">o1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.1.3.3.1" rowspan="13"><span class="ltx_text" id="S4.T2.1.1.3.3.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T2.1.1.3.3.1.1.1" style="width:8.9pt;height:57.6pt;vertical-align:-26.3pt;"><span class="ltx_transformed_inner" style="width:57.6pt;transform:translate(-24.38pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T2.1.1.3.3.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.1.1.3.3.1.1.1.1.1">PuzzleVQA</span></span>
</span></span></span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.3.3.2"></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.3.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.3.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.3.1.1.1">Original</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.4.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.4.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.4.1.1.1">w/ <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.4.1.1.1.1">p.</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.5.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.5.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.5.1.1.1">w/ <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.5.1.1.1.1">p.</span> &amp; <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.5.1.1.1.2">i.</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.3.3.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.6.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.6.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.6.1.1.1">Original</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.3.3.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.7.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.7.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.7.1.1.1">w/ <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.7.1.1.1.1">p.</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.3.3.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.8.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.8.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.8.1.1.1">w/ <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.8.1.1.1.1">p.</span> &amp; <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.8.1.1.1.2">i.</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.3.3.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.9.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.9.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.9.1.1.1">Original</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.3.3.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.10.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.10.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.10.1.1.1">w/ <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.10.1.1.1.1">p.</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.3.3.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.11.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.11.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.11.1.1.1">w/ <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.11.1.1.1.1">p.</span> &amp; <span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.3.11.1.1.1.2">i.</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.4.4.1">Colors</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.2.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.2.1.1" style="width:39.8pt;">51.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.3.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.3.1.1" style="width:39.8pt;">75.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.4.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.4.1.1" style="width:39.8pt;">97.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.5.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.5.1.1" style="width:39.8pt;">72.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4.4.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.6.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.6.1.1" style="width:39.8pt;">80.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.4.4.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.7.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.7.1.1" style="width:39.8pt;">92.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4.4.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.8.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.8.1.1" style="width:39.8pt;">80.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4.4.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.9.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.9.1.1" style="width:39.8pt;">94.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4.4.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.10.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.10.1.1" style="width:39.8pt;">99.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.5.5.1">Numbers</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.2.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.2.1.1" style="width:39.8pt;">82.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.3.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.3.1.1" style="width:39.8pt;">77.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.4.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.4.1.1" style="width:39.8pt;">98.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.5.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.5.1.1" style="width:39.8pt;">84.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.5.5.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.6.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.6.1.1" style="width:39.8pt;">88.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.5.5.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.7.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.7.1.1" style="width:39.8pt;">99.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.5.5.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.8.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.8.1.1" style="width:39.8pt;">96.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.5.5.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.9.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.9.1.1" style="width:39.8pt;">98.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.5.5.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.10.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.10.1.1" style="width:39.8pt;">97.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.6.6.1">Shapes</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.2.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.2.1.1" style="width:39.8pt;">32.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.3.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.3.1.1" style="width:39.8pt;">71.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.6.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.4.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.4.1.1" style="width:39.8pt;">97.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.6.6.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.5.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.5.1.1" style="width:39.8pt;">51.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.6.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.6.1.1" style="width:39.8pt;">63.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.6.6.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.7.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.7.1.1" style="width:39.8pt;">97.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.6.6.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.8.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.8.1.1" style="width:39.8pt;">54.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.6.6.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.9.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.9.1.1" style="width:39.8pt;">55.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.6.6.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.10.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.10.1.1" style="width:39.8pt;">100.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.7.7.1">Size</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.2.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.2.1.1" style="width:39.8pt;">19.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.3.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.3.1.1" style="width:39.8pt;">64.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.7.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.4.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.4.1.1" style="width:39.8pt;">95.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.7.7.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.5.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.5.1.1" style="width:39.8pt;">39.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.7.7.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.6.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.6.1.1" style="width:39.8pt;">62.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.7.7.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.7.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.7.1.1" style="width:39.8pt;">96.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.7.7.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.8.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.8.1.1" style="width:39.8pt;">54.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.7.7.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.9.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.9.1.1" style="width:39.8pt;">98.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.7.7.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.10.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.10.1.1" style="width:39.8pt;">100.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.8.8.1">Colors &amp; Numbers</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.2.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.2.1.1" style="width:39.8pt;">54.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.3.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.3.1.1" style="width:39.8pt;">67.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.8.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.4.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.4.1.1" style="width:39.8pt;">89.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.8.8.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.5.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.5.1.1" style="width:39.8pt;">48.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.8.8.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.6.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.6.1.1" style="width:39.8pt;">52.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.8.8.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.7.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.7.1.1" style="width:39.8pt;">89.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.8.8.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.8.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.8.1.1" style="width:39.8pt;">97.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.8.8.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.9.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.9.1.1" style="width:39.8pt;">95.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.8.8.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.10.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.10.1.1" style="width:39.8pt;">100.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.9.9.1">Colors &amp; Shapes</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.2.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.2.1.1" style="width:39.8pt;">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.3.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.3.1.1" style="width:39.8pt;">81.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.9.9.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.4.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.4.1.1" style="width:39.8pt;">64.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.9.9.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.5.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.5.1.1" style="width:39.8pt;">45.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.9.9.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.6.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.6.1.1" style="width:39.8pt;">77.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.9.9.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.7.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.7.1.1" style="width:39.8pt;">77.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.9.9.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.8.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.8.1.1" style="width:39.8pt;">75.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.9.9.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.9.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.9.1.1" style="width:39.8pt;">81.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.9.9.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.9.10.1">
<span class="ltx_p" id="S4.T2.1.1.9.9.10.1.1" style="width:39.8pt;">89.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.10.10.1">Colors &amp; Size</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.2.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.2.1.1" style="width:39.8pt;">31.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.10.10.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.3.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.3.1.1" style="width:39.8pt;">53.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.10.10.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.4.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.4.1.1" style="width:39.8pt;">75.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.10.10.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.5.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.5.1.1" style="width:39.8pt;">21.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.10.10.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.6.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.6.1.1" style="width:39.8pt;">78.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.10.10.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.7.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.7.1.1" style="width:39.8pt;">94.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.10.10.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.8.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.8.1.1" style="width:39.8pt;">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.10.10.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.9.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.9.1.1" style="width:39.8pt;">99.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.10.10.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.10.10.1">
<span class="ltx_p" id="S4.T2.1.1.10.10.10.1.1" style="width:39.8pt;">94.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.11.11.1">Numbers &amp; Shapes</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.11.11.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.2.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.2.1.1" style="width:39.8pt;">31.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.11.11.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.3.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.3.1.1" style="width:39.8pt;">29.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.11.11.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.4.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.4.1.1" style="width:39.8pt;">84.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.11.11.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.5.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.5.1.1" style="width:39.8pt;">20.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.11.11.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.6.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.6.1.1" style="width:39.8pt;">33.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.11.11.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.7.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.7.1.1" style="width:39.8pt;">85.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.11.11.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.8.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.8.1.1" style="width:39.8pt;">78.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.11.11.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.9.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.9.1.1" style="width:39.8pt;">86.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.11.11.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.11.10.1">
<span class="ltx_p" id="S4.T2.1.1.11.11.10.1.1" style="width:39.8pt;">91.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.12.12.1">Numbers &amp; Size</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.12.12.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.2.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.2.1.1" style="width:39.8pt;">24.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.12.12.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.3.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.3.1.1" style="width:39.8pt;">70.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.12.12.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.4.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.4.1.1" style="width:39.8pt;">63.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.12.12.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.5.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.5.1.1" style="width:39.8pt;">34.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.12.12.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.6.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.6.1.1" style="width:39.8pt;">73.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.12.12.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.7.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.7.1.1" style="width:39.8pt;">73.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.12.12.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.8.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.8.1.1" style="width:39.8pt;">41.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.12.12.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.9.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.9.1.1" style="width:39.8pt;">81.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.12.12.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.12.10.1">
<span class="ltx_p" id="S4.T2.1.1.12.12.10.1.1" style="width:39.8pt;">77.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.13.13.1">Size &amp; Shapes</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.13.13.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.2.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.2.1.1" style="width:39.8pt;">28.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.13.13.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.3.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.3.1.1" style="width:39.8pt;">97.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.13.13.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.4.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.4.1.1" style="width:39.8pt;">93.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.13.13.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.5.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.5.1.1" style="width:39.8pt;">50.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.13.13.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.6.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.6.1.1" style="width:39.8pt;">92.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.1.1.13.13.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.7.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.7.1.1" style="width:39.8pt;">92.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.13.13.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.8.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.8.1.1" style="width:39.8pt;">55.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.13.13.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.9.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.9.1.1" style="width:39.8pt;">98.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.1.13.13.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.13.10.1">
<span class="ltx_p" id="S4.T2.1.1.13.13.10.1.1" style="width:39.8pt;">99.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.14.14.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.14.14.1.1">Average</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.1.14.14.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.2.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.2.1.1" style="width:39.8pt;">38.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.1.14.14.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.3.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.3.1.1" style="width:39.8pt;">68.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.14.14.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.4.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.4.1.1" style="width:39.8pt;">85.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.1.14.14.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.5.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.5.1.1" style="width:39.8pt;">46.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.1.14.14.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.6.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.6.1.1" style="width:39.8pt;">70.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.14.14.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.7.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.7.1.1" style="width:39.8pt;">89.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.1.14.14.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.8.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.8.1.1" style="width:39.8pt;">66.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.1.14.14.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.9.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.9.1.1" style="width:39.8pt;">88.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.1.14.14.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.14.10.1">
<span class="ltx_p" id="S4.T2.1.1.14.14.10.1.1" style="width:39.8pt;">94.8</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a bottleneck analysis of GPT-[n] and o-[n] models' performance on the PuzzleVQA dataset.  It breaks down the models' accuracy across three conditions: (1) Original: where only the image and question are provided; (2) w/p.: where ground truth visual perception details are added to the input; and (3) w/p. & i.: where ground truth visual perception and inductive reasoning steps are added.  The goal is to pinpoint whether the models' struggles originate from limitations in visual perception, inductive reasoning, or a combination of both.  The table's rows represent different puzzle categories within the PuzzleVQA dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Bottleneck analysis of GPT-[n] and o-[n] models on PuzzleVQA. Original refers to our main setting where only a question and an image are provided as input. To reveal the specific multimodal reasoning bottlenecks, we progressively inject ground-truth explanations in the input for visual perception (p.) and inductive reasoning (i.). We provide an example of the different prompts used in the bottleneck analysis in Figure 11.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T3.1.1.1.1.1">Puzzle</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.2">Multimodal</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.3">Test</th>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A1.T3.1.1.2.2.1">Category</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T3.1.1.2.2.2">Templates</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T3.1.1.2.2.3">Instances</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T3.1.1.3.1.1">Numbers</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.1.2">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.1.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.4.2.1">Colors</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.2.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.2.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.5.3.1">Shapes</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.3.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.3.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.6.4.1">Size</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.4.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.4.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.7.5.1">Numbers &amp; Shapes</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.5.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.5.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.8.6.1">Numbers &amp; Colors</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.6.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.6.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.9.7.1">Numbers &amp; Size</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.7.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.7.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.10.8.1">Shapes &amp; Colors</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.8.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.8.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.11.9.1">Shapes &amp; Size</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.11.9.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.11.9.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.1.1.12.10.1">Colors &amp; Size</th>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.12.10.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.12.10.3">200</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T3.1.1.13.11.1">Total</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.1.1.13.11.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.1.1.13.11.3">2000</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the PuzzleVQA dataset's composition.  It shows the number of multimodal test templates and instances available for each of the ten puzzle categories.  Each category focuses on either single or dual-concept problems, involving combinations of numbers, colors, shapes, and sizes. This information is crucial for understanding the scale and diversity of the dataset used to evaluate the models.
> <details>
> <summary>read the caption</summary>
> Table 3: Dataset statistics of PuzzleVQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.1.1">Puzzle</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="A2.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.2.1">Visual Features</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="7" id="A2.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.3.1">Algorithmic Features</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.2.2">
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.1">Colour</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.2">Position</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.3">Shape/Size</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.2.2.4">Text</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.5">Arithmetic</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.6">Boolean Logic</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.7">Combinatorics</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.8">Graphs</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.9">Optimization</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.10">Search</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.2.2.11">Sets</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.1.1.3.3.1">Board Tiling</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.2"><span class="ltx_text" id="A2.T4.1.1.3.3.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.3"><span class="ltx_text" id="A2.T4.1.1.3.3.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.4"><span class="ltx_text" id="A2.T4.1.1.3.3.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.1.3.3.5"><span class="ltx_text" id="A2.T4.1.1.3.3.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.6"><span class="ltx_text" id="A2.T4.1.1.3.3.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.7"><span class="ltx_text" id="A2.T4.1.1.3.3.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.8"><span class="ltx_text" id="A2.T4.1.1.3.3.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.9"><span class="ltx_text" id="A2.T4.1.1.3.3.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.10"><span class="ltx_text" id="A2.T4.1.1.3.3.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.11"><span class="ltx_text" id="A2.T4.1.1.3.3.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3.12"><span class="ltx_text" id="A2.T4.1.1.3.3.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.4.4.1">Calendar</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.2"><span class="ltx_text" id="A2.T4.1.1.4.4.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.3"><span class="ltx_text" id="A2.T4.1.1.4.4.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.4"><span class="ltx_text" id="A2.T4.1.1.4.4.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.4.4.5"><span class="ltx_text" id="A2.T4.1.1.4.4.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.6"><span class="ltx_text" id="A2.T4.1.1.4.4.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.7"><span class="ltx_text" id="A2.T4.1.1.4.4.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.8"><span class="ltx_text" id="A2.T4.1.1.4.4.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.9"><span class="ltx_text" id="A2.T4.1.1.4.4.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.10"><span class="ltx_text" id="A2.T4.1.1.4.4.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.11"><span class="ltx_text" id="A2.T4.1.1.4.4.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4.12"><span class="ltx_text" id="A2.T4.1.1.4.4.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.5.5.1">Chain Link</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.2"><span class="ltx_text" id="A2.T4.1.1.5.5.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.3"><span class="ltx_text" id="A2.T4.1.1.5.5.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.4"><span class="ltx_text" id="A2.T4.1.1.5.5.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.5.5.5"><span class="ltx_text" id="A2.T4.1.1.5.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.6"><span class="ltx_text" id="A2.T4.1.1.5.5.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.7"><span class="ltx_text" id="A2.T4.1.1.5.5.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.8"><span class="ltx_text" id="A2.T4.1.1.5.5.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.9"><span class="ltx_text" id="A2.T4.1.1.5.5.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.10"><span class="ltx_text" id="A2.T4.1.1.5.5.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.11"><span class="ltx_text" id="A2.T4.1.1.5.5.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.5.12"><span class="ltx_text" id="A2.T4.1.1.5.5.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.6.6.1">Checker Move</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.2"><span class="ltx_text" id="A2.T4.1.1.6.6.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.3"><span class="ltx_text" id="A2.T4.1.1.6.6.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.4"><span class="ltx_text" id="A2.T4.1.1.6.6.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.6.6.5"><span class="ltx_text" id="A2.T4.1.1.6.6.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.6"><span class="ltx_text" id="A2.T4.1.1.6.6.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.7"><span class="ltx_text" id="A2.T4.1.1.6.6.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.8"><span class="ltx_text" id="A2.T4.1.1.6.6.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.9"><span class="ltx_text" id="A2.T4.1.1.6.6.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.10"><span class="ltx_text" id="A2.T4.1.1.6.6.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.11"><span class="ltx_text" id="A2.T4.1.1.6.6.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.6.12"><span class="ltx_text" id="A2.T4.1.1.6.6.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.1.1.7.7.1">Clock</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.2"><span class="ltx_text" id="A2.T4.1.1.7.7.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.3"><span class="ltx_text" id="A2.T4.1.1.7.7.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.4"><span class="ltx_text" id="A2.T4.1.1.7.7.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.1.7.7.5"><span class="ltx_text" id="A2.T4.1.1.7.7.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.6"><span class="ltx_text" id="A2.T4.1.1.7.7.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.7"><span class="ltx_text" id="A2.T4.1.1.7.7.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.8"><span class="ltx_text" id="A2.T4.1.1.7.7.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.9"><span class="ltx_text" id="A2.T4.1.1.7.7.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.10"><span class="ltx_text" id="A2.T4.1.1.7.7.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.11"><span class="ltx_text" id="A2.T4.1.1.7.7.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.7.7.12"><span class="ltx_text" id="A2.T4.1.1.7.7.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.8.8.1">Colour Hue</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.2"><span class="ltx_text" id="A2.T4.1.1.8.8.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.3"><span class="ltx_text" id="A2.T4.1.1.8.8.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.4"><span class="ltx_text" id="A2.T4.1.1.8.8.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.8.8.5"><span class="ltx_text" id="A2.T4.1.1.8.8.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.6"><span class="ltx_text" id="A2.T4.1.1.8.8.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.7"><span class="ltx_text" id="A2.T4.1.1.8.8.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.8"><span class="ltx_text" id="A2.T4.1.1.8.8.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.9"><span class="ltx_text" id="A2.T4.1.1.8.8.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.10"><span class="ltx_text" id="A2.T4.1.1.8.8.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.11"><span class="ltx_text" id="A2.T4.1.1.8.8.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.8.12"><span class="ltx_text" id="A2.T4.1.1.8.8.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.9.9.1">Map Colour</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.2"><span class="ltx_text" id="A2.T4.1.1.9.9.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.3"><span class="ltx_text" id="A2.T4.1.1.9.9.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.4"><span class="ltx_text" id="A2.T4.1.1.9.9.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.9.9.5"><span class="ltx_text" id="A2.T4.1.1.9.9.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.6"><span class="ltx_text" id="A2.T4.1.1.9.9.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.7"><span class="ltx_text" id="A2.T4.1.1.9.9.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.8"><span class="ltx_text" id="A2.T4.1.1.9.9.8.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.9"><span class="ltx_text" id="A2.T4.1.1.9.9.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.10"><span class="ltx_text" id="A2.T4.1.1.9.9.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.11"><span class="ltx_text" id="A2.T4.1.1.9.9.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.9.12"><span class="ltx_text" id="A2.T4.1.1.9.9.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.10.10.1">Maze Solve</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.2"><span class="ltx_text" id="A2.T4.1.1.10.10.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.3"><span class="ltx_text" id="A2.T4.1.1.10.10.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.4"><span class="ltx_text" id="A2.T4.1.1.10.10.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.10.10.5"><span class="ltx_text" id="A2.T4.1.1.10.10.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.6"><span class="ltx_text" id="A2.T4.1.1.10.10.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.7"><span class="ltx_text" id="A2.T4.1.1.10.10.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.8"><span class="ltx_text" id="A2.T4.1.1.10.10.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.9"><span class="ltx_text" id="A2.T4.1.1.10.10.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.10"><span class="ltx_text" id="A2.T4.1.1.10.10.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.11"><span class="ltx_text" id="A2.T4.1.1.10.10.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.10.12"><span class="ltx_text" id="A2.T4.1.1.10.10.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.1.1.11.11.1">Move Box</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.2"><span class="ltx_text" id="A2.T4.1.1.11.11.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.3"><span class="ltx_text" id="A2.T4.1.1.11.11.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.4"><span class="ltx_text" id="A2.T4.1.1.11.11.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.1.11.11.5"><span class="ltx_text" id="A2.T4.1.1.11.11.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.6"><span class="ltx_text" id="A2.T4.1.1.11.11.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.7"><span class="ltx_text" id="A2.T4.1.1.11.11.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.8"><span class="ltx_text" id="A2.T4.1.1.11.11.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.9"><span class="ltx_text" id="A2.T4.1.1.11.11.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.10"><span class="ltx_text" id="A2.T4.1.1.11.11.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.11"><span class="ltx_text" id="A2.T4.1.1.11.11.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.11.11.12"><span class="ltx_text" id="A2.T4.1.1.11.11.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.12.12.1">N-Queens</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.2"><span class="ltx_text" id="A2.T4.1.1.12.12.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.3"><span class="ltx_text" id="A2.T4.1.1.12.12.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.4"><span class="ltx_text" id="A2.T4.1.1.12.12.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.12.12.5"><span class="ltx_text" id="A2.T4.1.1.12.12.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.6"><span class="ltx_text" id="A2.T4.1.1.12.12.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.7"><span class="ltx_text" id="A2.T4.1.1.12.12.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.8"><span class="ltx_text" id="A2.T4.1.1.12.12.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.9"><span class="ltx_text" id="A2.T4.1.1.12.12.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.10"><span class="ltx_text" id="A2.T4.1.1.12.12.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.11"><span class="ltx_text" id="A2.T4.1.1.12.12.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.12.12.12"><span class="ltx_text" id="A2.T4.1.1.12.12.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.13.13.1">Number Slide</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.2"><span class="ltx_text" id="A2.T4.1.1.13.13.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.3"><span class="ltx_text" id="A2.T4.1.1.13.13.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.4"><span class="ltx_text" id="A2.T4.1.1.13.13.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.13.13.5"><span class="ltx_text" id="A2.T4.1.1.13.13.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.6"><span class="ltx_text" id="A2.T4.1.1.13.13.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.7"><span class="ltx_text" id="A2.T4.1.1.13.13.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.8"><span class="ltx_text" id="A2.T4.1.1.13.13.8.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.9"><span class="ltx_text" id="A2.T4.1.1.13.13.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.10"><span class="ltx_text" id="A2.T4.1.1.13.13.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.11"><span class="ltx_text" id="A2.T4.1.1.13.13.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.13.13.12"><span class="ltx_text" id="A2.T4.1.1.13.13.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.14.14.1">Rotten Fruits</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.2"><span class="ltx_text" id="A2.T4.1.1.14.14.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.3"><span class="ltx_text" id="A2.T4.1.1.14.14.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.4"><span class="ltx_text" id="A2.T4.1.1.14.14.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.14.14.5"><span class="ltx_text" id="A2.T4.1.1.14.14.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.6"><span class="ltx_text" id="A2.T4.1.1.14.14.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.7"><span class="ltx_text" id="A2.T4.1.1.14.14.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.8"><span class="ltx_text" id="A2.T4.1.1.14.14.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.9"><span class="ltx_text" id="A2.T4.1.1.14.14.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.10"><span class="ltx_text" id="A2.T4.1.1.14.14.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.11"><span class="ltx_text" id="A2.T4.1.1.14.14.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.14.14.12"><span class="ltx_text" id="A2.T4.1.1.14.14.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.1.1.15.15.1">Rubik’s Cube</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.2"><span class="ltx_text" id="A2.T4.1.1.15.15.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.3"><span class="ltx_text" id="A2.T4.1.1.15.15.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.4"><span class="ltx_text" id="A2.T4.1.1.15.15.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.1.15.15.5"><span class="ltx_text" id="A2.T4.1.1.15.15.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.6"><span class="ltx_text" id="A2.T4.1.1.15.15.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.7"><span class="ltx_text" id="A2.T4.1.1.15.15.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.8"><span class="ltx_text" id="A2.T4.1.1.15.15.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.9"><span class="ltx_text" id="A2.T4.1.1.15.15.9.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.10"><span class="ltx_text" id="A2.T4.1.1.15.15.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.11"><span class="ltx_text" id="A2.T4.1.1.15.15.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.15.15.12"><span class="ltx_text" id="A2.T4.1.1.15.15.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.16.16.1">Think A Dot</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.2"><span class="ltx_text" id="A2.T4.1.1.16.16.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.3"><span class="ltx_text" id="A2.T4.1.1.16.16.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.4"><span class="ltx_text" id="A2.T4.1.1.16.16.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.16.16.5"><span class="ltx_text" id="A2.T4.1.1.16.16.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.6"><span class="ltx_text" id="A2.T4.1.1.16.16.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.7"><span class="ltx_text" id="A2.T4.1.1.16.16.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.8"><span class="ltx_text" id="A2.T4.1.1.16.16.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.9"><span class="ltx_text" id="A2.T4.1.1.16.16.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.10"><span class="ltx_text" id="A2.T4.1.1.16.16.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.11"><span class="ltx_text" id="A2.T4.1.1.16.16.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.16.16.12"><span class="ltx_text" id="A2.T4.1.1.16.16.12.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.17.17.1">Tower of Hanoi</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.2"><span class="ltx_text" id="A2.T4.1.1.17.17.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.3"><span class="ltx_text" id="A2.T4.1.1.17.17.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.4"><span class="ltx_text" id="A2.T4.1.1.17.17.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.17.17.5"><span class="ltx_text" id="A2.T4.1.1.17.17.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.6"><span class="ltx_text" id="A2.T4.1.1.17.17.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.7"><span class="ltx_text" id="A2.T4.1.1.17.17.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.8"><span class="ltx_text" id="A2.T4.1.1.17.17.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.9"><span class="ltx_text" id="A2.T4.1.1.17.17.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.10"><span class="ltx_text" id="A2.T4.1.1.17.17.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.11"><span class="ltx_text" id="A2.T4.1.1.17.17.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.17.17.12"><span class="ltx_text" id="A2.T4.1.1.17.17.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.1.1.18.18.1">Water Jugs</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.2"><span class="ltx_text" id="A2.T4.1.1.18.18.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.3"><span class="ltx_text" id="A2.T4.1.1.18.18.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.4"><span class="ltx_text" id="A2.T4.1.1.18.18.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.1.18.18.5"><span class="ltx_text" id="A2.T4.1.1.18.18.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.6"><span class="ltx_text" id="A2.T4.1.1.18.18.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.7"><span class="ltx_text" id="A2.T4.1.1.18.18.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.8"><span class="ltx_text" id="A2.T4.1.1.18.18.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.9"><span class="ltx_text" id="A2.T4.1.1.18.18.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.10"><span class="ltx_text" id="A2.T4.1.1.18.18.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.11"><span class="ltx_text" id="A2.T4.1.1.18.18.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.18.18.12"><span class="ltx_text" id="A2.T4.1.1.18.18.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.1.19.19.1">Wheel of Fortune</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.2"><span class="ltx_text" id="A2.T4.1.1.19.19.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.3"><span class="ltx_text" id="A2.T4.1.1.19.19.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.4"><span class="ltx_text" id="A2.T4.1.1.19.19.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.1.19.19.5"><span class="ltx_text" id="A2.T4.1.1.19.19.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.6"><span class="ltx_text" id="A2.T4.1.1.19.19.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.7"><span class="ltx_text" id="A2.T4.1.1.19.19.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.8"><span class="ltx_text" id="A2.T4.1.1.19.19.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.9"><span class="ltx_text" id="A2.T4.1.1.19.19.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.10"><span class="ltx_text" id="A2.T4.1.1.19.19.10.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.11"><span class="ltx_text" id="A2.T4.1.1.19.19.11.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.19.19.12"><span class="ltx_text" id="A2.T4.1.1.19.19.12.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T4.1.1.20.20.1">Wood Slide</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.2"><span class="ltx_text" id="A2.T4.1.1.20.20.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.3"><span class="ltx_text" id="A2.T4.1.1.20.20.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.4"><span class="ltx_text" id="A2.T4.1.1.20.20.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.1.1.20.20.5"><span class="ltx_text" id="A2.T4.1.1.20.20.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.6"><span class="ltx_text" id="A2.T4.1.1.20.20.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.7"><span class="ltx_text" id="A2.T4.1.1.20.20.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.8"><span class="ltx_text" id="A2.T4.1.1.20.20.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.9"><span class="ltx_text" id="A2.T4.1.1.20.20.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.10"><span class="ltx_text" id="A2.T4.1.1.20.20.10.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.11"><span class="ltx_text" id="A2.T4.1.1.20.20.11.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.20.20.12"><span class="ltx_text" id="A2.T4.1.1.20.20.12.1" style="color:#FF0000;">✗</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 provides a detailed breakdown of the puzzle categories within the ALGOPUZZLEVQA dataset.  It shows how each puzzle is categorized across both visual features (e.g., color, position, shape/size, text) and algorithmic features (e.g., arithmetic, Boolean logic, combinatorics, graphs, optimization, search, sets). The table uses checkmarks to indicate the presence of a particular feature in a given puzzle, offering a comprehensive overview of the dataset's complexity and diversity.
> <details>
> <summary>read the caption</summary>
> Table 4: Ontological categorization of the puzzles in AlgoPuzzleVQA.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.01081/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01081/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}