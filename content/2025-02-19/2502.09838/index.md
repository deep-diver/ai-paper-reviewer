---
title: "HealthGPT: A Medical Large Vision-Language Model for Unifying Comprehension and Generation via Heterogeneous Knowledge Adaptation"
summary: "HealthGPT: A novel medical vision-language model unifying comprehension and generation via heterogeneous knowledge adaptation, achieving superior performance on various medical tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-02-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09838 {{< /keyword >}}
{{< keyword icon="writer" >}} Tianwei Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09838" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09838" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09838/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current unified vision-language models struggle with medical data due to **limited data scale and quality** and **conflicts between comprehension and generation tasks**.  These models often excel at one task at the expense of the other.  This necessitates a paradigm shift in the way we approach multi-modal learning in the medical domain.



The researchers introduce HealthGPT, which uses a novel Heterogeneous Low-Rank Adaptation (H-LoRA) technique. **H-LORA efficiently manages the complexities of multiple tasks by separating the learning processes for comprehension and generation.** Combined with a hierarchical visual perception approach and a three-stage training strategy, HealthGPT achieves state-of-the-art results on diverse medical visual comprehension and generation tasks. The researchers also contribute a new dataset (VL-Health) specifically designed for training such models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HealthGPT, a unified medical vision-language model, excels at both visual comprehension and generation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The novel Heterogeneous Low-Rank Adaptation (H-LORA) technique effectively addresses data conflicts between comprehension and generation, enhancing model efficiency and performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The VL-Health dataset, a comprehensive resource for medical vision-language tasks, significantly advances research in medical multi-modal AI. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in medical AI and vision-language modeling.  It **addresses the critical challenge of unifying comprehension and generation tasks in medical visual data**, a significant limitation of current models. By introducing a novel approach and dataset, it paves the way for more capable and versatile medical AI systems with wider applications in diagnostics, treatment planning, and education. Its innovative H-LoRA technique could also inspire improvements in other multi-modal learning scenarios.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09838/x2.png)

> 🔼 This figure showcases HealthGPT's capabilities in handling medical multi-modal tasks, including both comprehension and generation.  It demonstrates superior performance compared to other state-of-the-art models, both general-purpose unified visual models and those specifically designed for medical applications.  The results displayed highlight HealthGPT's ability to effectively address complex medical tasks.  The metrics 'Comp. Perf.' and 'Gen. Perf.' represent the performance scores achieved in the comprehension and generation tasks, respectively.  Various example tasks are shown, emphasizing the wide range of capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: HealthGPT enables medical multi-modal comprehension and generation, outperforming both state-of-the-art unified visual models and medical-specific models across various tasks. This highlights its superior capability in tackling complex tasks in healthcare applications. Comp.Perf. and Gen.Perf. denote the results of comprehension and generation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.7.1">
<tr class="ltx_tr" id="S4.T1.7.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T1.7.1.1.1"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.2"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.3"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T1.7.1.1.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.7.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.5.1" style="background-color:#E9F3FE;">VQA-RAD ↑</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.7.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.6.1" style="background-color:#E9F3FE;">SLAKE ↑</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.7.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.7.1" style="background-color:#E9F3FE;">PathVQA ↑</span></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.8"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T1.7.1.1.9"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.2" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.1.1" style="background-color:#E9F3FE;">Type</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.2.1" style="background-color:#E9F3FE;">Model</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.3.1" style="background-color:#E9F3FE;"># Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.2.4"><span class="ltx_text" id="S4.T1.7.1.2.4.1" style="background-color:#E9F3FE;"><span class="ltx_text" id="S4.T1.7.1.2.4.1.1"></span> <span class="ltx_text" id="S4.T1.7.1.2.4.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.7.1.2.4.1.2.1">
<span class="ltx_tr" id="S4.T1.7.1.2.4.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.7.1.2.4.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.4.1.2.1.1.1.1">Medical</span></span></span>
<span class="ltx_tr" id="S4.T1.7.1.2.4.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.7.1.2.4.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.4.1.2.1.2.1.1">LVLM</span></span></span>
</span></span> <span class="ltx_text" id="S4.T1.7.1.2.4.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.2.5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.5.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.2.6"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.6.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.2.7"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.7.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.2.8"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.8.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.2.9"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.9.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.2.10"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.10.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.2.11"><span class="ltx_text" id="S4.T1.7.1.2.11.1" style="background-color:#E9F3FE;"><span class="ltx_text" id="S4.T1.7.1.2.11.1.1"></span> <span class="ltx_text" id="S4.T1.7.1.2.11.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.7.1.2.11.1.2.1">
<span class="ltx_tr" id="S4.T1.7.1.2.11.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.7.1.2.11.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.11.1.2.1.1.1.1">MMMU</span></span></span>
<span class="ltx_tr" id="S4.T1.7.1.2.11.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.7.1.2.11.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.11.1.2.1.2.1.1">-Med</span></span></span>
</span></span> <span class="ltx_text" id="S4.T1.7.1.2.11.1.3"></span>↑</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.2.12"><span class="ltx_text" id="S4.T1.7.1.2.12.1" style="background-color:#E9F3FE;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.12.1.1">OMVQA</span>↑</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.2.13"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.13.1" style="background-color:#E9F3FE;">Avg. ↑</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.7.1.3.1" rowspan="9"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.3.1.1">Comp. Only</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.7.1.3.2">Med-Flamingo</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.3">8.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.7.1.3.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.5">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.6">43.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.7">47.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.8">25.5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.9">61.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.10">31.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.11">28.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.7.1.3.12">34.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.3.13">41.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.4.1">LLaVA-Med</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.4.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.4">60.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.5">48.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.6">58.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.7">44.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.8">62.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.9">35.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.10">30.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.4.11">41.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.4.12">47.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.5.1">HuatuoGPT-Vision</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.5.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.4">66.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.5">53.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.6">59.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.7">49.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.8">52.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.9">32.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.10">42.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.5.11">50.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.5.12">50.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.6.1">BLIP-2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.2">6.7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.6.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.4">43.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.5">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.6">41.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.7">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.8">48.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.9">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.10">27.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.6.11">26.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.6.12">36.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.7.1">LLaVA-v1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.7.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.4">51.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.5">42.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.6">37.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.7">37.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.8">53.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.9">31.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.10">32.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.7.11">44.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.7.12">41.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.8.1">InstructBLIP</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.8.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.4">61.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.5">44.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.6">66.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.7">43.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.8">56.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.9">32.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.10">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.8.11">29.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.8.12">44.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.9.1">Yi-VL</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.2">6B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.9.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.4">52.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.5">42.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.6">52.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.7">38.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.8">54.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.9">30.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.10">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.9.11">50.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.9.12">44.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.10.1">InternVL2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.10.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.4">64.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.5">49.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.6">66.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.7">50.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.8">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.9">31.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.10.10.1">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.10.11">54.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.10.12">52.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.11">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.11.1">Llama-3.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.2">11B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.11.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.4">68.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.5">45.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.6">72.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.7">52.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.8">62.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.9">33.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.10">39.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.11.11">63.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.11.12">54.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.7.1.12.1" rowspan="5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.12.1.1">Comp. &amp; Gen.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.7.1.12.2">Show-o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.3">1.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.12.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.5">50.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.6">33.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.7">31.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.8">17.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.9">52.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.10">28.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.11">22.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.12.12">45.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.12.13">42.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.13">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.13.1">Unified-IO 2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.4">46.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.5">32.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.6">35.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.7">21.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.8">52.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.9">27.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.10">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.11">33.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.12">33.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.14">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.14.1">Janus</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.2">1.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.4">70.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.5">52.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.6">34.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.7">26.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.8">51.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.9">27.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.10">30.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.11">26.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.12">33.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.15">
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.15.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="S4.T1.7.1.15.1.1" style="background-color:#DAE0FB;">HealthGPT-M3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.2" style="background-color:#DAE0FB;"><span class="ltx_text" id="S4.T1.7.1.15.2.1" style="background-color:#DAE0FB;">3.8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.3" style="background-color:#DAE0FB;"><span class="ltx_text" id="S4.T1.7.1.15.3.1" style="background-color:#DAE0FB;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.4" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.4.1" style="background-color:#DAE0FB;">73.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.5" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.5.1" style="background-color:#DAE0FB;">55.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.6" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.6.1" style="background-color:#DAE0FB;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.7" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.7.1" style="background-color:#DAE0FB;">56.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.8" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.8.1" style="background-color:#DAE0FB;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.9" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.9.1" style="background-color:#DAE0FB;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.10" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.10.1" style="background-color:#DAE0FB;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.11" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.11.1" style="background-color:#DAE0FB;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.12" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.12.1" style="background-color:#DAE0FB;">61.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.7.1.16.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="S4.T1.7.1.16.1.1" style="background-color:#DAE0FB;">HealthGPT-L14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.2" style="background-color:#DAE0FB;"><span class="ltx_text" id="S4.T1.7.1.16.2.1" style="background-color:#DAE0FB;">14B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.7.1.16.3" style="background-color:#DAE0FB;"><span class="ltx_text" id="S4.T1.7.1.16.3.1" style="background-color:#DAE0FB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.4" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.4.1" style="background-color:#DAE0FB;">77.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.5" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.5.1" style="background-color:#DAE0FB;">58.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.6" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.6.1" style="background-color:#DAE0FB;">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.7" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.7.1" style="background-color:#DAE0FB;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.8" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.8.1" style="background-color:#DAE0FB;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.9" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.9.1" style="background-color:#DAE0FB;">44.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.10" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.10.1" style="background-color:#DAE0FB;">49.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.7.1.16.11" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.11.1" style="background-color:#DAE0FB;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.1.16.12" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.16.12.1" style="background-color:#DAE0FB;">66.4</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of HealthGPT against other Large Vision-Language Models (LVLMs) and unified multi-modal models on several medical visual comprehension tasks.  The tasks assess the models' ability to understand and answer questions about medical images.  The metrics used to evaluate performance include scores from various benchmarks (VQA-RAD, SLAKE, PathVQA, MMMU-Med, OMVQA).  Higher scores indicate better performance.  The table also lists the number of parameters for each model, providing a context for comparing performance relative to model size.  Bold and underlined scores indicate the top and second-top performing models for each metric.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of HealthGPT with other LVLMs and unified multi-modal models on medical visual comprehension tasks. Bold and underlined text indicates the best performance and second-best performance, respectively.
> </details>





### In-depth insights


#### Med-LVLM Unification
The concept of 'Med-LVLM Unification' centers on the integration of visual comprehension and generation capabilities within a single, unified medical large vision-language model (Med-LVLM).  This approach aims to overcome the limitations of current models which tend to excel in either comprehension or generation tasks, but not both effectively. **Unified Med-LVLMs offer the advantage of enhanced multi-functionality**, enabling a broader range of applications in healthcare, from diagnosis and treatment planning to image analysis and report generation.  However, **achieving true unification presents significant challenges**, particularly concerning the inherent conflicts between comprehension (requiring abstraction and generalization) and generation (demanding preservation of fine-grained visual details). The paper explores techniques to address these challenges using innovative parameter-efficient fine-tuning methods and hierarchical visual perception to optimize the learning process and improve model performance across both task types.  This **unified approach not only aims to improve efficiency but also to enhance the overall consistency and quality** of medical visual processing by avoiding the performance degradation often observed when independently training comprehension and generation models.

#### H-LORA Adaptation
The proposed H-LORA (Heterogeneous Low-Rank Adaptation) is a **novel parameter-efficient fine-tuning method** designed to address the challenges of training unified vision-language models for both comprehension and generation tasks.  Its core innovation lies in decoupling the learning processes for these often-conflicting tasks.  This is achieved by using **separate low-rank adapters** for comprehension and generation, avoiding the negative interactions that can occur when training them jointly.  The use of **independent 'plug-ins'** for each task allows the model to store and utilize different types of knowledge, enhancing its adaptability and performance.  Further improving efficiency, H-LORA leverages a **mixture-of-experts approach** to dynamically route information to the relevant modules, reducing computational overhead compared to other methods.  This strategy enables **effective knowledge adaptation** from limited medical datasets, a crucial benefit given the scarcity of high-quality, large-scale medical multi-modal data.

#### VL-Health Dataset
The VL-Health dataset is a crucial component of the HealthGPT research, providing the foundation for training a unified medical vision-language model. Its construction involved careful consideration of data diversity and quality, encompassing various medical imaging modalities and tasks.  **The dataset's design addresses the scarcity of high-quality medical data**, a significant challenge in developing robust medical AI models. By including a diverse range of image types and associated annotations, VL-Health enables HealthGPT to learn rich representations of visual and textual information in a medical context. This multi-faceted approach, including both comprehension and generation tasks, allows for a more comprehensive understanding of medical images and their associated information. The careful curation of VL-Health, including data processing steps to ensure consistency and quality, is paramount to the success of HealthGPT's unified capabilities.  **The scale and diversity of VL-Health are key strengths**, allowing the model to generalize well to unseen medical data, a crucial aspect of effective healthcare applications.  The detailed description of VL-Health's creation highlights the importance of robust, representative data in advancing the field of medical AI.

#### Three-Stage Training
The three-stage training strategy in HealthGPT is a crucial innovation for effectively leveraging heterogeneous low-rank adaptation (H-LORA).  The first stage focuses on **multi-modal alignment**, separately training visual adapters and H-LORA submodules for comprehension and generation tasks to establish initial alignment and incorporate initial knowledge. This decoupled approach avoids early conflicts between the tasks.  Stage two introduces **heterogeneous H-LORA plugin adaptation**, fine-tuning the shared components (word embedding and output heads) to enhance compatibility and avoid catastrophic forgetting. This ensures seamless integration of diverse knowledge. Finally, the third stage performs **visual instruction fine-tuning**, exclusively training H-LORA plugins with task-specific data for specific downstream tasks, allowing for rapid adaptation while preserving the established unified foundation.  This three-stage approach is **particularly important** due to the limited size and quality of medical datasets, addressing the common conflicts between visual comprehension and generation tasks in unified models. The strategy's effectiveness is validated by the superior performance of HealthGPT compared to other unified and specialized models, highlighting the efficacy of this carefully designed training regime.

#### Future Med-LLMs
Future Med-LLMs hold immense potential for revolutionizing healthcare.  **Improved data quality and quantity** are crucial; larger, higher-quality datasets will be essential for training more robust and accurate models.  **Enhanced multimodality** is key; future Med-LLMs must seamlessly integrate various data types, including images, text, and sensor data, for a more holistic understanding of patient conditions.  **Explainability and trustworthiness** are paramount; future Med-LLMs must be transparent and understandable, building trust among clinicians and patients.  **Addressing bias and fairness** is critical; careful attention must be given to mitigate biases present in training data and ensure equitable access and outcomes.  **Integration with existing clinical workflows** is necessary for successful implementation; Med-LLMs must be easily incorporated into existing healthcare systems.  Finally, **robustness and safety** are vital; rigorous testing and validation are necessary to ensure accuracy and reliability, especially given the high stakes in medical applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09838/extracted/6211206/fig/HealthGPT_Framework.png)

> 🔼 This figure shows the impact of data imbalance on the performance of a unified vision-language model.  Two graphs are presented, one showing comprehension performance and the other showing generation performance. Both graphs show performance on the y-axis and the ratio of comprehension to generation data on the x-axis. As the ratio of one type of data increases (while the amount of the other type is held constant), the model's performance on the task with less training data decreases significantly. This highlights a challenge in training unified models that perform both comprehension and generation tasks, where an optimal balance of data is needed for both tasks to achieve good performance on both.
> <details>
> <summary>read the caption</summary>
> Figure 2: With a fixed amount of comprehension (generation) data, increasing the proportion of the other type leads to significant performance degradation.
> </details>



![](https://arxiv.org/html/2502.09838/x3.png)

> 🔼 This figure illustrates the architecture of HealthGPT, a medical large vision-language model.  HealthGPT uses a hierarchical visual perception approach, processing images through multiple levels of a Vision Transformer (ViT) to extract both concrete (detailed) and abstract (semantic) visual features. These features are then routed to task-specific H-LoRA (Heterogeneous Low-Rank Adaptation) plugins. The H-LoRA plugins, designed for efficient parameter-tuning, are responsible for adapting the pre-trained language model to both comprehension and generation tasks.  A hard router dynamically selects the appropriate visual features (concrete or abstract) based on the task (comprehension or generation). The model then generates outputs (text or images) in an autoregressive manner.
> <details>
> <summary>read the caption</summary>
> Figure 3: The HealthGPT architecture integrates hierarchical visual perception and H-LoRA, employing a task-specific hard router to select visual features and H-LoRA plugins, ultimately generating outputs with an autoregressive manner.
> </details>



![](https://arxiv.org/html/2502.09838/x4.png)

> 🔼 This figure shows the statistical distribution of data within the VL-Health dataset, a key component of the HealthGPT model.  Panel (a) illustrates the number of images and text-image pairs used for different types of medical visual tasks including fundus images, OCT, MRI, ultrasound, X-ray, microscopy, digital photography, dermoscopy, and tomography.  Different generation tasks such as image reconstruction and modality conversion are also represented. Panel (b) provides a breakdown of the number of data samples used for each specific dataset in the VL-Health dataset including IXI, MIMIC-CHEST-XRAY, and LLaVA-558k among others. This breakdown further categorizes the data into different task types such as comprehension and generation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Data statistics of VL-Health.
> </details>



![](https://arxiv.org/html/2502.09838/x5.png)

> 🔼 This figure compares the performance of three parameter-efficient fine-tuning (PEFT) methods: LoRA, MoELORA, and H-LoRA, across different rank settings.  The methods were used to adapt large language models for medical visual comprehension and generation tasks. The x-axis represents the rank (dimensionality of the low-rank matrices), and the y-axis shows the performance.  It demonstrates how the performance of each method changes as the rank increases, showing the trade-off between model size and performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance comparison of LoRA, MoELoRA, and H-LoRA under different rank settings.
> </details>



![](https://arxiv.org/html/2502.09838/x6.png)

> 🔼 This figure shows the impact of different visual perception strategies on the performance of the HealthGPT model.  Part (a) visualizes the training loss curves for comprehension and generation tasks, separately using either abstract or concrete visual features. The curves illustrate how the choice of features impacts the training process and potential conflicts between comprehension and generation. Part (b) presents a bar chart comparing the final performance (measured by some unspecified metric) for both comprehension and generation tasks using either abstract or concrete features. This comparison highlights the effectiveness of the chosen hierarchical visual perception approach, which utilizes both abstract and concrete features depending on the task.
> <details>
> <summary>read the caption</summary>
> Figure 6:  The loss visualization (a) and performance comparison (b) with respect to different visual perceptions.
> </details>



![](https://arxiv.org/html/2502.09838/x7.png)

> 🔼 This figure presents a case study demonstrating the capabilities of the HealthGPT model in generating chest X-ray (CXR) images based on textual descriptions.  Panel (a) provides a baseline with a normal CXR image for comparison. Panels (b) and (c) show generated CXR images illustrating the model's ability to produce images reflecting different levels of severity and different affected regions within the lungs, as indicated by varying levels of pulmonary edema and pleural effusion. The highlighted areas in (b) and (c) represent the regions described as having abnormal conditions in the text prompts.
> <details>
> <summary>read the caption</summary>
> Figure 7: Case study of report-to-CXR under different instructions. (a) shows a normal CXR image for comparison. (b) and (c) illustrate generated cases with varying severity and affected regions. The graffiti areas indicate abnormal conditions.
> </details>



![](https://arxiv.org/html/2502.09838/x8.png)

> 🔼 This figure shows the distribution of data used to create the VL-Health dataset.  Panel (a) presents a bar chart illustrating the number of question-answer pairs and images for each of the datasets used for medical visual comprehension tasks (VQA-RAD, SLAKE, PathVQA, MIMIC-CXR-VQA, LLaVA-Med, PubMedVision).  Panel (b) displays a bar chart showing the number of image pairs used for various medical image generation tasks. These tasks include super-resolution, modality conversion (CT to MRI, MRI to CT), and image reconstruction. The datasets used for generation tasks are IXI, MIMIC-CHEST-XRAY, LLaVA-558k, and SynthRAD2023.
> <details>
> <summary>read the caption</summary>
> Figure 8: VL-Health dataset collection distribution.
> </details>



![](https://arxiv.org/html/2502.09838/x9.png)

> 🔼 This figure displays a bar chart visualizing the performance changes in medical visual comprehension and generation tasks before and after the second stage of training. The x-axis represents the task type (comprehension or generation), and the y-axis represents the performance metric.  The bars show a comparison of performance before and after the introduction of the heterogeneous low-rank adaptation (H-LORA) in stage 2 of the training process, highlighting the impact of this stage on the model's ability to handle both tasks effectively.
> <details>
> <summary>read the caption</summary>
> Figure 9: Performance changes before and after the stage-2.
> </details>



![](https://arxiv.org/html/2502.09838/extracted/6211206/fig/MT.png)

> 🔼 Figure 10 presents the results of a human evaluation comparing HealthGPT's performance to other LLMs on medical visual question answering tasks.  Part (a) is a pie chart showing the proportion of times each model's response was ranked as the best among multiple responses to the same question by human evaluators (clinicians). Part (b) briefly describes the human evaluation dataset used, which includes questions from VQA-RAD, SLAKE, and PathVQA.
> <details>
> <summary>read the caption</summary>
> Figure 10: (a) Proportion of model responses selected as the best in human evaluation. (b) Human Evaluation Dataset.
> </details>



![](https://arxiv.org/html/2502.09838/extracted/6211206/fig/SR_CASE.png)

> 🔼 This figure showcases examples of modality transfer, specifically converting between CT and MRI scans.  It presents pairs of images for four different scenarios: brain CT to brain MRI, pelvic CT to pelvic MRI, brain MRI to brain CT, and pelvic MRI to pelvic CT.  Within each scenario, the original image, the prediction generated by the HealthGPT model, and the ground truth image are shown side-by-side for comparison. This visual comparison demonstrates the model's ability to accurately transform medical images between modalities.
> <details>
> <summary>read the caption</summary>
> Figure 11: Case of modality transfer.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.12.12">
<tr class="ltx_tr" id="S4.T2.12.12.13">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T2.12.12.13.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.12.12.13.2"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.2.1" style="background-color:#E9F3FE;">CT to MRI (Brain)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.12.12.13.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.3.1" style="background-color:#E9F3FE;">CT to MRI (Pelvis)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.12.12.13.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.4.1" style="background-color:#E9F3FE;">MRI to CT (Brain)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.12.12.13.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.5.1" style="background-color:#E9F3FE;">MRI to CT (Pelvis)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.12.13"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.13.1" style="background-color:#E9F3FE;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1" style="background-color:#E9F3FE;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1" style="background-color:#E9F3FE;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.2.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.1" style="background-color:#E9F3FE;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.3.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.1" style="background-color:#E9F3FE;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.4.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.5.1" style="background-color:#E9F3FE;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.5.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.1" style="background-color:#E9F3FE;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.6.1.m1.1a"><mo id="S4.T2.6.6.6.6.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.6.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.7"><span class="ltx_text ltx_font_bold" id="S4.T2.7.7.7.7.1" style="background-color:#E9F3FE;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.7.1.m1.1a"><mo id="S4.T2.7.7.7.7.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.7.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.1.m1.1b"><ci id="S4.T2.7.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.8.1" style="background-color:#E9F3FE;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.1.m1.1"><semantics id="S4.T2.8.8.8.8.1.m1.1a"><mo id="S4.T2.8.8.8.8.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.8.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.1.m1.1b"><ci id="S4.T2.8.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.9.9.9.9"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.9.1" style="background-color:#E9F3FE;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.9.1.m1.1"><semantics id="S4.T2.9.9.9.9.1.m1.1a"><mo id="S4.T2.9.9.9.9.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.9.9.9.9.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.9.1.m1.1b"><ci id="S4.T2.9.9.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.9.9.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.9.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.9.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.10"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.1" style="background-color:#E9F3FE;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.10.10.10.10.1.m1.1"><semantics id="S4.T2.10.10.10.10.1.m1.1a"><mo id="S4.T2.10.10.10.10.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.10.10.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.10.1.m1.1b"><ci id="S4.T2.10.10.10.10.1.m1.1.1.cmml" xref="S4.T2.10.10.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.10.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.11.11"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.11.11.1" style="background-color:#E9F3FE;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.11.11.11.11.1.m1.1"><semantics id="S4.T2.11.11.11.11.1.m1.1a"><mo id="S4.T2.11.11.11.11.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.11.11.11.11.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.11.1.m1.1b"><ci id="S4.T2.11.11.11.11.1.m1.1.1.cmml" xref="S4.T2.11.11.11.11.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.11.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.11.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.12.12"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.12.1" style="background-color:#E9F3FE;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.12.12.12.12.1.m1.1"><semantics id="S4.T2.12.12.12.12.1.m1.1a"><mo id="S4.T2.12.12.12.12.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S4.T2.12.12.12.12.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.12.1.m1.1b"><ci id="S4.T2.12.12.12.12.1.m1.1.1.cmml" xref="S4.T2.12.12.12.12.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.12.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.12.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.12.12.14.1">pix2pix</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.2">71.09</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.3">32.65</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.12.12.14.4">36.85</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.5">59.17</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.6">31.02</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.12.12.14.7">51.91</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.8">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.9">33.85</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.12.12.14.10">28.33</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.11">72.31</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.12">32.98</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.14.13">36.19</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.15.1">CycleGAN</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.2">54.76</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.3">32.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.15.4">40.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.5">54.54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.6">30.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.15.7">55.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.8">63.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.9">31.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.15.10">52.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.11">50.54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.12">29.89</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.15.13">67.78</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.16.1">BBDM</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.2">71.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.3">32.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.16.4">34.44</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.5">57.37</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.6">31.37</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.16.7">48.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.8"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.16.8.1">86.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.9">34.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.16.10">26.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.11">79.26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.12">33.15</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.16.13">33.60</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.17.1">Vmanba</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.2">69.54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.3">32.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.17.4">36.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.5">63.01</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.6">31.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.17.7">46.99</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.8">79.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.9">34.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.17.10">26.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.11">77.45</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.12">33.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.13">31.85</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.18.1">DiffMa</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.2">71.47</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.3">32.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.18.4">35.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.5">62.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.6">31.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.18.7">47.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.8">79.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.9">34.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.18.10">26.45</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.11">78.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.12">33.68</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.13">30.51</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.19" style="background-color:#DAE0FB;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.19.1"><span class="ltx_text" id="S4.T2.12.12.19.1.1" style="background-color:#DAE0FB;">HealthGPT-M3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.19.2.1" style="background-color:#DAE0FB;">79.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.19.3.1" style="background-color:#DAE0FB;">33.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.19.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.19.4.1" style="background-color:#DAE0FB;">33.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.19.5.1" style="background-color:#DAE0FB;">71.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.19.6.1" style="background-color:#DAE0FB;">31.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.19.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.19.7.1" style="background-color:#DAE0FB;">43.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.8"><span class="ltx_text" id="S4.T2.12.12.19.8.1" style="background-color:#DAE0FB;">85.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.19.9.1" style="background-color:#DAE0FB;">34.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.19.10"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.19.10.1" style="background-color:#DAE0FB;">25.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.19.11.1" style="background-color:#DAE0FB;">84.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.12"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.19.12.1" style="background-color:#DAE0FB;">34.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.13"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.19.13.1" style="background-color:#DAE0FB;">27.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.20" style="background-color:#DAE0FB;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.12.12.20.1"><span class="ltx_text" id="S4.T2.12.12.20.1.1" style="background-color:#DAE0FB;">HealthGPT-L14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.2"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.20.2.1" style="background-color:#DAE0FB;">79.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.20.3.1" style="background-color:#DAE0FB;">33.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.12.12.20.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.20.4.1" style="background-color:#DAE0FB;">32.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.20.5.1" style="background-color:#DAE0FB;">71.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.20.6.1" style="background-color:#DAE0FB;">31.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.12.12.20.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.20.7.1" style="background-color:#DAE0FB;">43.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.20.8.1" style="background-color:#DAE0FB;">85.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.20.9.1" style="background-color:#DAE0FB;">34.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.12.12.20.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.20.10.1" style="background-color:#DAE0FB;">26.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.11"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.20.11.1" style="background-color:#DAE0FB;">84.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.20.12.1" style="background-color:#DAE0FB;">34.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.20.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.20.13.1" style="background-color:#DAE0FB;">28.13</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the model's performance on four medical image modality conversion tasks: converting CT images to MRI images (for both brain and pelvis), and vice versa.  For each task, the table displays the performance metrics achieved by the model, including Structural Similarity Index (SSIM), Peak Signal-to-Noise Ratio (PSNR), and Mean Squared Error (MSE).  These metrics provide a comprehensive assessment of the model's ability to accurately transform images between different modalities.
> <details>
> <summary>read the caption</summary>
> Table 2: The experimental results for the four modality conversion tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.4.4">
<tr class="ltx_tr" id="S5.T3.4.4.4" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T3.4.4.4.5"><span class="ltx_text" id="S5.T3.4.4.4.5.1" style="background-color:#E9F3FE;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1" style="background-color:#E9F3FE;">SSIM<span class="ltx_text ltx_font_medium" id="S5.T3.1.1.1.1.1.1"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.1.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S5.T3.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.2.1" style="background-color:#E9F3FE;">PSNR<span class="ltx_text ltx_font_medium" id="S5.T3.2.2.2.2.1.1"> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.1.1.m1.1"><semantics id="S5.T3.2.2.2.2.1.1.m1.1a"><mo id="S5.T3.2.2.2.2.1.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S5.T3.2.2.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.1.1.m1.1b"><ci id="S5.T3.2.2.2.2.1.1.m1.1.1.cmml" xref="S5.T3.2.2.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.1.1.m1.1d">↑</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.3.3.1" style="background-color:#E9F3FE;">MSE<span class="ltx_text ltx_font_medium" id="S5.T3.3.3.3.3.1.1"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.1.1.m1.1"><semantics id="S5.T3.3.3.3.3.1.1.m1.1a"><mo id="S5.T3.3.3.3.3.1.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S5.T3.3.3.3.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.1.1.m1.1b"><ci id="S5.T3.3.3.3.3.1.1.m1.1.1.cmml" xref="S5.T3.3.3.3.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.1.1.m1.1d">↓</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.4.1" style="background-color:#E9F3FE;">LPIPS<span class="ltx_text ltx_font_medium" id="S5.T3.4.4.4.4.1.1"> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.1.1.m1.1"><semantics id="S5.T3.4.4.4.4.1.1.m1.1a"><mo id="S5.T3.4.4.4.4.1.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="S5.T3.4.4.4.4.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.1.1.m1.1b"><ci id="S5.T3.4.4.4.4.1.1.m1.1.1.cmml" xref="S5.T3.4.4.4.4.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.1.1.m1.1d">↓</annotation></semantics></math></span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T3.4.4.5.1">SRGAN</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.4.5.2">71.34</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.4.5.3">32.01</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.4.5.4">41.27</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.4.5.5">24.50</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.4.4.6.1">DASR</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.2">71.57</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.3">32.34</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.4">38.25</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.5">19.17</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.4.4.7.1">Real-ESRGAN</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.2">67.30</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3">31.87</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.4">42.57</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.5">20.64</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.4.4.8.1">LIIF</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.8.2">73.27</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.8.3">32.13</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.8.4">40.14</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.8.5">22.93</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.4.4.9.1">BSRGAN</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.2">69.97</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.3">31.97</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.4">41.52</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.9.5">28.72</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.10" style="background-color:#DAE0FB;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.4.4.10.1"><span class="ltx_text" id="S5.T3.4.4.10.1.1" style="background-color:#DAE0FB;">HealthGPT-M3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.10.2"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.2.1" style="background-color:#DAE0FB;">78.19</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.10.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.3.1" style="background-color:#DAE0FB;">32.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.10.4"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.4.1" style="background-color:#DAE0FB;">34.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.10.5"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.10.5.1" style="background-color:#DAE0FB;">12.02</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.11" style="background-color:#DAE0FB;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.4.4.11.1"><span class="ltx_text" id="S5.T3.4.4.11.1.1" style="background-color:#DAE0FB;">HealthGPT-L14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.11.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.11.2.1" style="background-color:#DAE0FB;">77.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.11.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.11.3.1" style="background-color:#DAE0FB;">32.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.11.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.11.4.1" style="background-color:#DAE0FB;">35.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.11.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.11.5.1" style="background-color:#DAE0FB;">12.43</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different super-resolution models' performance.  The models compared include SRGAN, DASR, Real-ESRGAN, LIIF, BSRGAN, and two versions of the HealthGPT model (HealthGPT-M3 and HealthGPT-L14).  The performance is evaluated based on four metrics: Structural SIMilarity index (SSIM), Peak Signal-to-Noise Ratio (PSNR), Mean Squared Error (MSE), and Learned Perceptual Image Patch Similarity (LPIPS). Lower MSE and LPIPS values indicate better performance, while higher SSIM and PSNR values indicate better performance.  This table showcases the superior performance of the HealthGPT models, specifically in terms of LPIPS, compared to other existing super-resolution methods.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison results of super-resolution task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.3.3">
<tr class="ltx_tr" id="S5.T4.3.3.4">
<td class="ltx_td ltx_border_r ltx_border_tt" colspan="2" id="S5.T4.3.3.4.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="8" id="S5.T4.3.3.4.2"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.4.2.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T4.3.3.4.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.4.3.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T4.3.3.4.4"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.5">
<td class="ltx_td ltx_border_r" colspan="2" id="S5.T4.3.3.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T4.3.3.5.2"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.2.1" style="background-color:#E9F3FE;">VQA-RAD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T4.3.3.5.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.3.1" style="background-color:#E9F3FE;">SLAKE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T4.3.3.5.4"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.4.1" style="background-color:#E9F3FE;">PathVQA</span></td>
<td class="ltx_td ltx_border_t" id="S5.T4.3.3.5.5"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T4.3.3.5.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.3.3.5.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.3.3.5.8"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T4.3.3.5.9"></td>
<td class="ltx_td" id="S5.T4.3.3.5.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.6" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S5.T4.3.3.6.1"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.1.1" style="background-color:#E9F3FE;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.6.2"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.2.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.6.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.3.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.6.4"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.4.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.6.5"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.5.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.6.6"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.6.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.6.7"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.7.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6.8"><span class="ltx_text" id="S5.T4.3.3.6.8.1" style="background-color:#E9F3FE;"><span class="ltx_text" id="S5.T4.3.3.6.8.1.1"></span> <span class="ltx_text" id="S5.T4.3.3.6.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.3.3.6.8.1.2.1">
<span class="ltx_tr" id="S5.T4.3.3.6.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.3.3.6.8.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.8.1.2.1.1.1.1">MMMU</span></span></span>
<span class="ltx_tr" id="S5.T4.3.3.6.8.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.3.3.6.8.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.8.1.2.1.2.1.1">-Med</span></span></span>
</span></span> <span class="ltx_text" id="S5.T4.3.3.6.8.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.6.9"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.9.1" style="background-color:#E9F3FE;">OMVQA</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6.10"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.10.1" style="background-color:#E9F3FE;">RECOM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6.11"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.11.1" style="background-color:#E9F3FE;">MTRANS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.3.3.6.12"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.12.1" style="background-color:#E9F3FE;">SR</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.6.13"><span class="ltx_text" id="S5.T4.3.3.6.13.1" style="background-color:#E9F3FE;"><span class="ltx_text" id="S5.T4.3.3.6.13.1.1"></span> <span class="ltx_text" id="S5.T4.3.3.6.13.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.3.3.6.13.1.2.1">
<span class="ltx_tr" id="S5.T4.3.3.6.13.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.3.3.6.13.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.13.1.2.1.1.1.1">Training</span></span></span>
<span class="ltx_tr" id="S5.T4.3.3.6.13.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.3.3.6.13.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.13.1.2.1.2.1.1">Time</span></span></span>
</span></span> <span class="ltx_text" id="S5.T4.3.3.6.13.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S5.T4.1.1.1.2" rowspan="3"><span class="ltx_text" id="S5.T4.1.1.1.2.1">HealthGPT w/</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.1.1.1.3">+LoRA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.4">71.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.5.1">57.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.1.1.1.6.1">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.1.1.1.7.1">53.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.1.1.1.8.1">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.1.1.1.9.1">38.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.1.1.1.10.1">41.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.1.1.1.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.1.1.1.11.1">65.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.12">62.67</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.1.1.1.13.1">59.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.1.1.1.14">65.88</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.1.m1.1.1" xref="S5.T4.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.1.m1.1b"><times id="S5.T4.1.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.2.2.2.2">+MoELoRA</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.2.2.2.3.1">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.4.1">57.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.5">66.4</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.6">52.4</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.7">73.2</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.8">36.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.9">39.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.2.2.2.10">64.90</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.2.2.2.11.1">67.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.12">59.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.2.2.2.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.2.2.2.13.1">65.91</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.1">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.2.2.2.1.1">1.49</span><math alttext="\times" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mo id="S5.T4.2.2.2.1.m1.1.1" xref="S5.T4.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><times id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T4.3.3.3.2" style="background-color:#DAE0FB;"><span class="ltx_text" id="S5.T4.3.3.3.2.1" style="background-color:#DAE0FB;">+H-LoRA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.3" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.3.1" style="background-color:#DAE0FB;">73.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.4" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.3.3.3.4.1" style="background-color:#DAE0FB;">55.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.5" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.5.1" style="background-color:#DAE0FB;">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.6" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.6.1" style="background-color:#DAE0FB;">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.7" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.7.1" style="background-color:#DAE0FB;">78.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.8" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.8.1" style="background-color:#DAE0FB;">39.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.9" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.9.1" style="background-color:#DAE0FB;">43.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.3.3.3.10" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.10.1" style="background-color:#DAE0FB;">68.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.11" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.11.1" style="background-color:#DAE0FB;">67.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.12" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.12.1" style="background-color:#DAE0FB;">60.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.3.3.3.13" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.13.1" style="background-color:#DAE0FB;">66.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.3.1" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.1.1" style="background-color:#DAE0FB;">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.1.m1.1" style="background-color:#DAE0FB;"><semantics id="S5.T4.3.3.3.1.1.m1.1a"><mo id="S5.T4.3.3.3.1.1.m1.1.1" mathbackground="#DAE0FB" xref="S5.T4.3.3.3.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.1.m1.1b"><times id="S5.T4.3.3.3.1.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance and training speed of three different parameter-efficient fine-tuning (PEFT) methods: LoRA, MoELORA, and H-LORA.  All three methods are applied to both medical visual comprehension and generation tasks.  The comparison includes metrics for several specific tasks (VQA-RAD, SLAKE, PathVQA, MMMU, OMVQA, RECOM, MTRANS, SR) to assess the effectiveness of each PEFT method across a range of applications. The training time is normalized relative to LoRA to showcase the relative efficiency gains or losses.
> <details>
> <summary>read the caption</summary>
> Table 4: We present the performance and speed differences of LoRA, MoELoRA (n=4), and H-LoRA (n=4) on medical visual comprehension and generation tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1">
<tr class="ltx_tr" id="S5.T5.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" colspan="2" id="S5.T5.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="8" id="S5.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.2.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.3.1" style="background-color:#E9F3FE;">Gen.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.2">
<td class="ltx_td ltx_border_r" colspan="2" id="S5.T5.1.1.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T5.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.1" style="background-color:#E9F3FE;">VQA-RAD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T5.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.3.1" style="background-color:#E9F3FE;">SLAKE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T5.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.4.1" style="background-color:#E9F3FE;">PathVQA</span></td>
<td class="ltx_td ltx_border_t" id="S5.T5.1.1.2.5"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T5.1.1.2.6"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T5.1.1.2.7"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.7.1" style="background-color:#E9F3FE;">CT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T5.1.1.2.8"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.8.1" style="background-color:#E9F3FE;">MRI</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.3" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S5.T5.1.1.3.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1.1" style="background-color:#E9F3FE;">Training Strategy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.2.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.3.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.4.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.5.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.6.1" style="background-color:#E9F3FE;">close</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.7"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.7.1" style="background-color:#E9F3FE;">all</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.8"><span class="ltx_text" id="S5.T5.1.1.3.8.1" style="background-color:#E9F3FE;"><span class="ltx_text" id="S5.T5.1.1.3.8.1.1"></span> <span class="ltx_text" id="S5.T5.1.1.3.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.3.8.1.2.1">
<span class="ltx_tr" id="S5.T5.1.1.3.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.3.8.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.8.1.2.1.1.1.1">MMMU</span></span></span>
<span class="ltx_tr" id="S5.T5.1.1.3.8.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.3.8.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.8.1.2.1.2.1.1">-Med</span></span></span>
</span></span> <span class="ltx_text" id="S5.T5.1.1.3.8.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.1.1.3.9"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.9.1" style="background-color:#E9F3FE;">OMVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.10"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.10.1" style="background-color:#E9F3FE;">Brain</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.11"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.11.1" style="background-color:#E9F3FE;">Pelvis</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.12"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.12.1" style="background-color:#E9F3FE;">Brain</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.13"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.13.1" style="background-color:#E9F3FE;">Pelvis</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.4">
<td class="ltx_td ltx_border_tt" id="S5.T5.1.1.4.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T5.1.1.4.2">Mixed-Training</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.3">56.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.4">37.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.5">45.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.6">32.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.7">65.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.8">33.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.9"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.4.9.1">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.1.1.4.10">48.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.11">65.64</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.12">62.75</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.13">56.61</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4.14">50.77</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.1.1.5.1"><span class="ltx_text" id="S5.T5.1.1.5.1.1">HealthGPT w/</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T5.1.1.5.2" style="background-color:#DAE0FB;"><span class="ltx_text" id="S5.T5.1.1.5.2.1" style="background-color:#DAE0FB;">3-stage-Training</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.3" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.3.1" style="background-color:#DAE0FB;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.4" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.4.1" style="background-color:#DAE0FB;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.5" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.5.1" style="background-color:#DAE0FB;">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.6" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.6.1" style="background-color:#DAE0FB;">59.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.7" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.7.1" style="background-color:#DAE0FB;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.8" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.8.1" style="background-color:#DAE0FB;">49.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.9" style="background-color:#DAE0FB;"><span class="ltx_text" id="S5.T5.1.1.5.9.1" style="background-color:#DAE0FB;">42.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.1.1.5.10" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.10.1" style="background-color:#DAE0FB;">68.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.11" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.11.1" style="background-color:#DAE0FB;">70.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.12" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.12.1" style="background-color:#DAE0FB;">72.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.13" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.13.1" style="background-color:#DAE0FB;">65.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.14" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.5.14.1" style="background-color:#DAE0FB;">61.33</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two training strategies for the HealthGPT model: a three-stage learning approach using the proposed heterogeneous low-rank adaptation (H-LORA) method and a mixed-training approach.  It evaluates their effectiveness on various medical visual comprehension and generation tasks, showing metrics such as VQA-RAD, SLAKE, PathVQA, MMMU-Med, OmniMedVQA, and modality conversion tasks (CT, MRI) results.  The purpose is to demonstrate the superiority of the three-stage H-LORA approach in avoiding conflicts and improving performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison between the H-LoRA-based Three-Stage Learning Strategy and the mixed-training approach.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.3.1">
<tr class="ltx_tr" id="A1.T6.3.1.1" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T6.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.1.1" style="background-color:#E9F3FE;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.2.1" style="background-color:#E9F3FE;">ViT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.3.1" style="background-color:#E9F3FE;">Adapter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.4.1" style="background-color:#E9F3FE;">MLP-dims</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.5.1" style="background-color:#E9F3FE;">Model dims</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.6.1" style="background-color:#E9F3FE;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.7.1" style="background-color:#E9F3FE;">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.8.1" style="background-color:#E9F3FE;">Vocab Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.9.1" style="background-color:#E9F3FE;">H-LoRA Rank</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T6.3.1.2.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T6.3.1.2.1.1" style="background-color:#DAE0FB;">
HealthGPT-M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.2.2">CLIP-L/14</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.2.3">2-layer MLP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.2.4">1024</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.2.5">3072</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.2.6">Phi-3-mini</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.2.7">3.8B</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.2.8">40206</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.1.2.9">16(Comp.), 64(Gen.)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T6.3.1.3.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T6.3.1.3.1.1" style="background-color:#DAE0FB;">
HealthGPT-L14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.3.2">CLIP-L/14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.3.3">2-layer MLP</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.3.4">1024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.3.5">5120</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.3.6">Phi-4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.3.7">14B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.3.8">108547</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.3.9">8(Comp.), 32(Gen.)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture of the HealthGPT model, showing the components used in both the HealthGPT-M3 and HealthGPT-L14 versions.  It lists the specific Vision Transformer (ViT) used, the type of adapter layers, the dimensions of the Multilayer Perceptron (MLP), the model dimensions, the specific Large Language Model (LLM) used, the number of parameters in the LLM, the vocabulary size of the LLM, and the rank used for the Heterogeneous Low-Rank Adaptation (H-LoRA). This information provides a comprehensive overview of the model's building blocks and their configurations.
> <details>
> <summary>read the caption</summary>
> Table 6: Overview of the Components of HealthGPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A1.T7.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="A1.T7.1.1.1.2"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.1.2.1" style="background-color:#E9F3FE;">HealthGPT-M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="A1.T7.1.1.1.3"><span class="ltx_text ltx_font_typewriter" id="A1.T7.1.1.1.3.1" style="background-color:#E9F3FE;">HealthGPT-L14</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.2">
<td class="ltx_td ltx_border_r" id="A1.T7.1.1.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T7.1.1.2.2"><span class="ltx_text" id="A1.T7.1.1.2.2.1" style="background-color:#E9F3FE;">Stage-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T7.1.1.2.3"><span class="ltx_text" id="A1.T7.1.1.2.3.1" style="background-color:#E9F3FE;">Stage-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T7.1.1.2.4"><span class="ltx_text" id="A1.T7.1.1.2.4.1" style="background-color:#E9F3FE;">Stage-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T7.1.1.2.5"><span class="ltx_text" id="A1.T7.1.1.2.5.1" style="background-color:#E9F3FE;">Stage-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T7.1.1.2.6"><span class="ltx_text" id="A1.T7.1.1.2.6.1" style="background-color:#E9F3FE;">Stage-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T7.1.1.2.7"><span class="ltx_text" id="A1.T7.1.1.2.7.1" style="background-color:#E9F3FE;">Stage-3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.3.1"><span class="ltx_text" id="A1.T7.1.1.3.1.1" style="background-color:#E9F3FE;">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.2"><span class="ltx_text" id="A1.T7.1.1.3.2.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.3.3"><span class="ltx_text" id="A1.T7.1.1.3.3.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.4"><span class="ltx_text" id="A1.T7.1.1.3.4.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.3.5"><span class="ltx_text" id="A1.T7.1.1.3.5.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.6"><span class="ltx_text" id="A1.T7.1.1.3.6.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.3.7"><span class="ltx_text" id="A1.T7.1.1.3.7.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.8"><span class="ltx_text" id="A1.T7.1.1.3.8.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.3.9"><span class="ltx_text" id="A1.T7.1.1.3.9.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.10"><span class="ltx_text" id="A1.T7.1.1.3.10.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.3.11"><span class="ltx_text" id="A1.T7.1.1.3.11.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.12"><span class="ltx_text" id="A1.T7.1.1.3.12.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.13"><span class="ltx_text" id="A1.T7.1.1.3.13.1" style="background-color:#E9F3FE;">Gen.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T7.1.1.4.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T7.1.1.4.1.1" style="background-color:#DAE0FB;">
Optimizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T7.1.1.4.2">AdamW</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T7.1.1.4.3">AdamW</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T7.1.1.4.4">AdamW</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T7.1.1.4.5">AdamW</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T7.1.1.4.6">AdamW</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T7.1.1.4.7">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.5.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T7.1.1.5.1.1" style="background-color:#DAE0FB;">
Adapter LR</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.2">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.5.3">2e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.5.4">2e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.5.5">2e-5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.6">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.5.7">2e-5</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.5.8">2e-5</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T7.1.1.5.9">2e-5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.6.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T7.1.1.6.1.1" style="background-color:#DAE0FB;">
Learning Rate</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.2">/</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.6.3">2e-4</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.6.4">2e-4</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.6.5">2e-4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.6">/</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.6.7">1e-4</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.6.8">2e-4</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T7.1.1.6.9">2e-4</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.7.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T7.1.1.7.1.1" style="background-color:#DAE0FB;">
Global Batch Size</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.2">256</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.7.3">64</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.7.4">32</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.5">128</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.7.6">64</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.7">256</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.7.8">64</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.7.9">32</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.10">128</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.7.11">64</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.8.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T7.1.1.8.1.1" style="background-color:#DAE0FB;">
Weight Decay</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.8.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.8.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.8.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.8.5">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.8.6">0</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T7.1.1.8.7">0</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.9.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T7.1.1.9.1.1" style="background-color:#DAE0FB;">
Dropout Rate</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.9.3">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.9.4">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.9.5">0.05</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.6">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.9.7">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.9.8">0.05</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T7.1.1.9.9">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.10.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T7.1.1.10.1.1" style="background-color:#DAE0FB;">
LR Scheduler</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.10.2">Warm Up</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.10.3">Constant</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.10.4">Warm Up</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.10.5">Warm Up</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A1.T7.1.1.10.6">Constant</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T7.1.1.10.7">Warm Up</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T7.1.1.11.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T7.1.1.11.1.1" style="background-color:#DAE0FB;">
Max Sequence Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" colspan="2" id="A1.T7.1.1.11.2">2048</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" colspan="2" id="A1.T7.1.1.11.3">2048</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" colspan="2" id="A1.T7.1.1.11.4">2048</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" colspan="2" id="A1.T7.1.1.11.5">2048</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" colspan="2" id="A1.T7.1.1.11.6">2048</td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="A1.T7.1.1.11.7">2048</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameter settings used during the three-stage training process of the HealthGPT model.  It shows the optimizer, learning rates for different model components (adapter and main model), batch size, weight decay, dropout rate, learning rate scheduler, and maximum sequence length used in each of the three training stages. Different configurations are provided for the two variants of the model, HealthGPT-M3 and HealthGPT-L14.
> <details>
> <summary>read the caption</summary>
> Table 7: Overview of Hyperparameter Configurations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T8.3.1">
<tr class="ltx_tr" id="A1.T8.3.1.1" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T8.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.1.1" style="background-color:#E9F3FE;">Medical Task</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T8.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.2.1" style="background-color:#E9F3FE;">Stage-1</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.3.1" style="background-color:#E9F3FE;">Stage-2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T8.3.1.2.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T8.3.1.2.1.1" style="background-color:#DAE0FB;">Comp.</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T8.3.1.2.2">LLaVA-558k, PubMedVision-PT</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.3.1.2.3" rowspan="2"><span class="ltx_text" id="A1.T8.3.1.2.3.1">Mixed-47k</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T8.3.1.3.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T8.3.1.3.1.1" style="background-color:#DAE0FB;">Gen.</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T8.3.1.3.2">LLaVA-558k</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.1.4" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T8.3.1.4.1"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.4.1.1" style="background-color:#E9F3FE;">Medical Task</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="A1.T8.3.1.4.2"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.4.2.1" style="background-color:#E9F3FE;">Stage-3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T8.3.1.5.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T8.3.1.5.1.1" style="background-color:#DAE0FB;">Comp.</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="A1.T8.3.1.5.2">LLaVA_Med, MIMIC_CXR_VQA, PubMedVision-FT, LLaVA-665k, PathVQA, SLAKE, VQA-RAD</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T8.3.1.6.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A1.T8.3.1.6.1.1" style="background-color:#DAE0FB;">Gen.</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" colspan="2" id="A1.T8.3.1.6.2">IXI, SynthRAD2023, MIMIC-CHEST-XRAY</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the data distribution used in the three stages of the HealthGPT model training.  It breaks down the datasets used for comprehension and generation tasks in each of the three training stages: Stage 1 (Multi-modal Alignment), Stage 2 (Heterogeneous H-LoRA Plugin Adaptation), and Stage 3 (Visual Instruction Fine-Tuning).  For each stage, it lists the specific datasets used for both comprehension and generation tasks, offering a clear view of the data composition throughout the model's training process.
> <details>
> <summary>read the caption</summary>
> Table 8: Data distribution of VL-Health in three-stage learning strategy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T9.1.1">
<tr class="ltx_tr" id="A3.T9.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T9.1.1.1.1"></td>
<td class="ltx_td ltx_border_tt" id="A3.T9.1.1.1.2"></td>
<td class="ltx_td ltx_border_tt" id="A3.T9.1.1.1.3"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T9.1.1.1.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="A3.T9.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.1.5.1" style="background-color:#E9F3FE;">OmniMedVQA ↑</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.2" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.1.1" style="background-color:#E9F3FE;">Type</span></td>
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.2.1" style="background-color:#E9F3FE;">Model</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.2.3"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.3.1" style="background-color:#E9F3FE;"># Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.2.4"><span class="ltx_text" id="A3.T9.1.1.2.4.1" style="background-color:#E9F3FE;"><span class="ltx_text" id="A3.T9.1.1.2.4.1.1"></span> <span class="ltx_text" id="A3.T9.1.1.2.4.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T9.1.1.2.4.1.2.1">
<span class="ltx_tr" id="A3.T9.1.1.2.4.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.1.2.4.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.4.1.2.1.1.1.1">Medical</span></span></span>
<span class="ltx_tr" id="A3.T9.1.1.2.4.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.1.2.4.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.4.1.2.1.2.1.1">LVLM</span></span></span>
</span></span> <span class="ltx_text" id="A3.T9.1.1.2.4.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.2.5"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.5.1" style="background-color:#E9F3FE;">CT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.2.6"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.6.1" style="background-color:#E9F3FE;">X-ray</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.2.7"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.7.1" style="background-color:#E9F3FE;">FDM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.2.8"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.8.1" style="background-color:#E9F3FE;">MiS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.2.9"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.9.1" style="background-color:#E9F3FE;">OCT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.2.10"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.10.1" style="background-color:#E9F3FE;">MRI</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T9.1.1.2.11"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.11.1" style="background-color:#E9F3FE;">USS</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.2.12"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.12.1" style="background-color:#E9F3FE;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T9.1.1.3.1" rowspan="9"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.3.1.1">Comp. Only</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T9.1.1.3.2">Med-Flamingo</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.3.3">8.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T9.1.1.3.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.3.5">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.3.6">33.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.3.7">25.5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.3.8">37.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.3.9">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.3.10">27.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T9.1.1.3.11">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T9.1.1.3.12">34.9</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.4.1">LLaVA-Med</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.4.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.4.3">✓</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.4.4">28.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.4.5">32.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.4.6">42.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.4.7">31.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.4.8">55.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.4.9">45.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.4.10">53.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.4.11">41.3</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.5.1">HuatuoGPT-Vision</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.5.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.5.3">✓</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.5.4">35.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.5.5">41.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.5.6">51.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.5.7">62.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.5.8">59.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.5.9">40.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.5.10">60.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.5.11">50.0</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.6.1">BLIP-2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.6.2">6.7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.6.3">✗</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.6.4">26.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.6.5">29.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.6.6">22.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.6.7">36.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.6.8">29.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.6.9">22.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.6.10">21.4</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.6.11">26.9</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.7.1">LLaVA-v1.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.7.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.7.3">✗</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.7.4">28.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.7.5">55.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.7.6">35.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.7.7">42.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.7.8">49.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.7.9">52.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.7.10">49.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.7.11">44.7</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.8">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.8.1">InstructBLIP</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.8.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.8.3">✗</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.8.4">20.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.8.5">22.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.8.6">34.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.8.7">30.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.8.8">38.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.8.9">31.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.8.10">25.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.8.11">29.0</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.9">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.9.1">Yi-VL</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.9.2">6B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.9.3">✗</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.9.4">51.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.9.5">47.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.9.6">27.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.9.7">62.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.9.8">67.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.9.9">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.9.10">40.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.9.11">50.2</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.10">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.10.1">InternVL2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.10.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.10.3">✗</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.10.4"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.10.4.1">40.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.10.5">57.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.10.6">53.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.10.7">64.0</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.10.8">59.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.10.9">58.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.10.10">49.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.10.11">54.5</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.11">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.11.1">Llama-3.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.11.2">11B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.11.3">✗</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.11.4">37.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.11.5">55.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.11.6"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.11.6.1">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.11.7">82.1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.11.8">62.5</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.11.9">65.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.11.10"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.11.10.1">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.11.11">63.2</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A3.T9.1.1.12.1" rowspan="5"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.12.1.1">Comp. &amp; Gen.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T9.1.1.12.2">Show-o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.12.3">1.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T9.1.1.12.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.12.5">29.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.12.6">50.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.12.7">30.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.12.8">22.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.12.9">30.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.12.10">34.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T9.1.1.12.11">33.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.1.12.12">33.0</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.13">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.13.1">Unified-IO 2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.13.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.13.3">✗</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.13.4">10.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.13.5">37.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.13.6">12.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.13.7">25.3</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.13.8">32.6</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.13.9">30.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.13.10">37.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.13.11">26.8</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.14">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.14.1">Janus</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.14.2">1.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.14.3">✗</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.14.4">24.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.14.5">54.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.14.6">35.9</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.14.7">62.7</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.14.8">54.2</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.14.9">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.14.10">36.8</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.14.11">45.7</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.15">
<td class="ltx_td ltx_align_left" id="A3.T9.1.1.15.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.15.1.1" style="background-color:#DAE0FB;">HealthGPT-M3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.15.2" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.15.2.1" style="background-color:#DAE0FB;">3.8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.15.3" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.15.3.1" style="background-color:#DAE0FB;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.15.4" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.15.4.1" style="background-color:#DAE0FB;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.15.5" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T9.1.1.15.5.1" style="background-color:#DAE0FB;">81.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.15.6" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.15.6.1" style="background-color:#DAE0FB;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.15.7" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T9.1.1.15.7.1" style="background-color:#DAE0FB;">88.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.15.8" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T9.1.1.15.8.1" style="background-color:#DAE0FB;">89.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.15.9" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T9.1.1.15.9.1" style="background-color:#DAE0FB;">78.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.1.15.10" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.15.10.1" style="background-color:#DAE0FB;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.1.15.11" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T9.1.1.15.11.1" style="background-color:#DAE0FB;">68.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T9.1.1.16.1" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.16.1.1" style="background-color:#DAE0FB;">HealthGPT-L14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.1.16.2" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.16.2.1" style="background-color:#DAE0FB;">14B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T9.1.1.16.3" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T9.1.1.16.3.1" style="background-color:#DAE0FB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.1.16.4" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T9.1.1.16.4.1" style="background-color:#DAE0FB;">39.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.1.16.5" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.16.5.1" style="background-color:#DAE0FB;">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.1.16.6" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T9.1.1.16.6.1" style="background-color:#DAE0FB;">64.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.1.16.7" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.16.7.1" style="background-color:#DAE0FB;">88.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.1.16.8" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.16.8.1" style="background-color:#DAE0FB;">99.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.1.16.9" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.16.9.1" style="background-color:#DAE0FB;">80.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T9.1.1.16.10" style="background-color:#DAE0FB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T9.1.1.16.10.1" style="background-color:#DAE0FB;">62.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.1.16.11" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.16.11.1" style="background-color:#DAE0FB;">74.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different Large Vision-Language Models (LVLMs) on the OmniMedVQA benchmark.  OmniMedVQA is a challenging medical visual question answering benchmark that includes various image modalities and anatomical regions. The table shows the performance of each model across different image modalities (CT, X-ray, FDM, MIS, OCT, MRI, USS), and presents the average performance across all modalities.  This allows for a comprehensive comparison of the models' ability to accurately answer questions about medical images.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance comparison of OmniMedVQA Benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T10.10.8">
<tr class="ltx_tr" id="A3.T10.10.8.9">
<td class="ltx_td ltx_border_r ltx_border_tt" colspan="2" id="A3.T10.10.8.9.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A3.T10.10.8.9.2"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.9.2.1" style="background-color:#E9F3FE;">n=2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A3.T10.10.8.9.3"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.9.3.1" style="background-color:#E9F3FE;">n=4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="A3.T10.10.8.9.4"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.9.4.1" style="background-color:#E9F3FE;">n=8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T10.10.8.9.5"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.9.5.1" style="background-color:#E9F3FE;">n=32</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.10.8.10" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A3.T10.10.8.10.1"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.1.1" style="background-color:#E9F3FE;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.2"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.2.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.3"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.3.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T10.10.8.10.4"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.4.1" style="background-color:#E9F3FE;">Time</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.5"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.5.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.6"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.6.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T10.10.8.10.7"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.7.1" style="background-color:#E9F3FE;">Time</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.8"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.8.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.9"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.9.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T10.10.8.10.10"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.10.1" style="background-color:#E9F3FE;">Time</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.11"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.11.1" style="background-color:#E9F3FE;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.12"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.12.1" style="background-color:#E9F3FE;">Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.10.8.10.13"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.10.13.1" style="background-color:#E9F3FE;">Time</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.6.4.4">
<td class="ltx_td ltx_border_tt" id="A3.T10.6.4.4.5"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T10.6.4.4.6">+MoELoRA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.7">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.8">62.98</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T10.3.1.1.1">1.22<math alttext="\times" class="ltx_Math" display="inline" id="A3.T10.3.1.1.1.m1.1"><semantics id="A3.T10.3.1.1.1.m1.1a"><mo id="A3.T10.3.1.1.1.m1.1.1" xref="A3.T10.3.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T10.3.1.1.1.m1.1b"><times id="A3.T10.3.1.1.1.m1.1.1.cmml" xref="A3.T10.3.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.3.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T10.3.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.9">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.10">64.33</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T10.4.2.2.2">1.49<math alttext="\times" class="ltx_Math" display="inline" id="A3.T10.4.2.2.2.m1.1"><semantics id="A3.T10.4.2.2.2.m1.1a"><mo id="A3.T10.4.2.2.2.m1.1.1" xref="A3.T10.4.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T10.4.2.2.2.m1.1b"><times id="A3.T10.4.2.2.2.m1.1.1.cmml" xref="A3.T10.4.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.4.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T10.4.2.2.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.11">50.8</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.12">63.71</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T10.5.3.3.3">2.09<math alttext="\times" class="ltx_Math" display="inline" id="A3.T10.5.3.3.3.m1.1"><semantics id="A3.T10.5.3.3.3.m1.1a"><mo id="A3.T10.5.3.3.3.m1.1.1" xref="A3.T10.5.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T10.5.3.3.3.m1.1b"><times id="A3.T10.5.3.3.3.m1.1.1.cmml" xref="A3.T10.5.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.5.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T10.5.3.3.3.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.13">/</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.14">/</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.6.4.4.4">5.81<math alttext="\times" class="ltx_Math" display="inline" id="A3.T10.6.4.4.4.m1.1"><semantics id="A3.T10.6.4.4.4.m1.1a"><mo id="A3.T10.6.4.4.4.m1.1.1" xref="A3.T10.6.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T10.6.4.4.4.m1.1b"><times id="A3.T10.6.4.4.4.m1.1.1.cmml" xref="A3.T10.6.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.6.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T10.6.4.4.4.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.10.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T10.10.8.8.5"><span class="ltx_text" id="A3.T10.10.8.8.5.1">HealthGPT w/</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T10.10.8.8.6" style="background-color:#DAE0FB;"><span class="ltx_text" id="A3.T10.10.8.8.6.1" style="background-color:#DAE0FB;">+H-LoRA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.7" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.7.1" style="background-color:#DAE0FB;">51.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.8" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.8.1" style="background-color:#DAE0FB;">63.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T10.7.5.5.1" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.7.5.5.1.1" style="background-color:#DAE0FB;">0.99<math alttext="\times" class="ltx_Math" display="inline" id="A3.T10.7.5.5.1.1.m1.1" style="background-color:#DAE0FB;"><semantics id="A3.T10.7.5.5.1.1.m1.1a"><mo id="A3.T10.7.5.5.1.1.m1.1.1" mathbackground="#DAE0FB" xref="A3.T10.7.5.5.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T10.7.5.5.1.1.m1.1b"><times id="A3.T10.7.5.5.1.1.m1.1.1.cmml" xref="A3.T10.7.5.5.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.7.5.5.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T10.7.5.5.1.1.m1.1d">×</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.9" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.9.1" style="background-color:#DAE0FB;">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.10" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.10.1" style="background-color:#DAE0FB;">64.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T10.8.6.6.2" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.8.6.6.2.1" style="background-color:#DAE0FB;">1.00<math alttext="\times" class="ltx_Math" display="inline" id="A3.T10.8.6.6.2.1.m1.1" style="background-color:#DAE0FB;"><semantics id="A3.T10.8.6.6.2.1.m1.1a"><mo id="A3.T10.8.6.6.2.1.m1.1.1" mathbackground="#DAE0FB" xref="A3.T10.8.6.6.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T10.8.6.6.2.1.m1.1b"><times id="A3.T10.8.6.6.2.1.m1.1.1.cmml" xref="A3.T10.8.6.6.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.8.6.6.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T10.8.6.6.2.1.m1.1d">×</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.11" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.11.1" style="background-color:#DAE0FB;">53.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.12" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.12.1" style="background-color:#DAE0FB;">64.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T10.9.7.7.3" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.9.7.7.3.1" style="background-color:#DAE0FB;">0.99<math alttext="\times" class="ltx_Math" display="inline" id="A3.T10.9.7.7.3.1.m1.1" style="background-color:#DAE0FB;"><semantics id="A3.T10.9.7.7.3.1.m1.1a"><mo id="A3.T10.9.7.7.3.1.m1.1.1" mathbackground="#DAE0FB" xref="A3.T10.9.7.7.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T10.9.7.7.3.1.m1.1b"><times id="A3.T10.9.7.7.3.1.m1.1.1.cmml" xref="A3.T10.9.7.7.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.9.7.7.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T10.9.7.7.3.1.m1.1d">×</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.13" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.13.1" style="background-color:#DAE0FB;">53.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.14" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.14.1" style="background-color:#DAE0FB;">64.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.10.8.8.4" style="background-color:#DAE0FB;"><span class="ltx_text ltx_font_bold" id="A3.T10.10.8.8.4.1" style="background-color:#DAE0FB;">1.01<math alttext="\times" class="ltx_Math" display="inline" id="A3.T10.10.8.8.4.1.m1.1" style="background-color:#DAE0FB;"><semantics id="A3.T10.10.8.8.4.1.m1.1a"><mo id="A3.T10.10.8.8.4.1.m1.1.1" mathbackground="#DAE0FB" xref="A3.T10.10.8.8.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T10.10.8.8.4.1.m1.1b"><times id="A3.T10.10.8.8.4.1.m1.1.1.cmml" xref="A3.T10.10.8.8.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.10.8.8.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T10.10.8.8.4.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance and training time of MoELoRA and H-LoRA models with varying numbers of LoRA experts (n).  It demonstrates that as the number of experts increases, MoELoRA's training time grows significantly, while H-LoRA's training time remains relatively stable.  The experiment highlights the computational efficiency of H-LoRA compared to MoELoRA, especially when a large number of experts are used. At n=32, MoELoRA failed to complete training, further illustrating the scalability advantage of H-LoRA.
> <details>
> <summary>read the caption</summary>
> Table 10: We explored the performance of MoELoRA and H-LoRA with different numbers of LoRA experts. At n=32𝑛32n=32italic_n = 32, MoELoRA was unable to complete training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T11.12.12">
<tr class="ltx_tr" id="A3.T11.12.12.13">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T11.12.12.13.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T11.12.12.13.2"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.13.2.1" style="background-color:#E9F3FE;">CT(Brain)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T11.12.12.13.3"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.13.3.1" style="background-color:#E9F3FE;">CT(Pelvis)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T11.12.12.13.4"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.13.4.1" style="background-color:#E9F3FE;">MRI (Brain)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T11.12.12.13.5"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.13.5.1" style="background-color:#E9F3FE;">MRI(Pelvis)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.12.12.12" style="background-color:#E9F3FE;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T11.12.12.12.13"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.12.13.1" style="background-color:#E9F3FE;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T11.1.1.1.1.1" style="background-color:#E9F3FE;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.1.1.1.1.1.m1.1"><semantics id="A3.T11.1.1.1.1.1.m1.1a"><mo id="A3.T11.1.1.1.1.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.1.1.1.1.1.m1.1b"><ci id="A3.T11.1.1.1.1.1.m1.1.1.cmml" xref="A3.T11.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.2.2.2.2"><span class="ltx_text ltx_font_bold" id="A3.T11.2.2.2.2.1" style="background-color:#E9F3FE;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.2.2.2.2.1.m1.1"><semantics id="A3.T11.2.2.2.2.1.m1.1a"><mo id="A3.T11.2.2.2.2.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.2.2.2.2.1.m1.1b"><ci id="A3.T11.2.2.2.2.1.m1.1.1.cmml" xref="A3.T11.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T11.3.3.3.3"><span class="ltx_text ltx_font_bold" id="A3.T11.3.3.3.3.1" style="background-color:#E9F3FE;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T11.3.3.3.3.1.m1.1"><semantics id="A3.T11.3.3.3.3.1.m1.1a"><mo id="A3.T11.3.3.3.3.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T11.3.3.3.3.1.m1.1b"><ci id="A3.T11.3.3.3.3.1.m1.1.1.cmml" xref="A3.T11.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.4.4.4.4"><span class="ltx_text ltx_font_bold" id="A3.T11.4.4.4.4.1" style="background-color:#E9F3FE;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.4.4.4.4.1.m1.1"><semantics id="A3.T11.4.4.4.4.1.m1.1a"><mo id="A3.T11.4.4.4.4.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.4.4.4.4.1.m1.1b"><ci id="A3.T11.4.4.4.4.1.m1.1.1.cmml" xref="A3.T11.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.5.5.5.5"><span class="ltx_text ltx_font_bold" id="A3.T11.5.5.5.5.1" style="background-color:#E9F3FE;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.5.5.5.5.1.m1.1"><semantics id="A3.T11.5.5.5.5.1.m1.1a"><mo id="A3.T11.5.5.5.5.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.5.5.5.5.1.m1.1b"><ci id="A3.T11.5.5.5.5.1.m1.1.1.cmml" xref="A3.T11.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T11.6.6.6.6"><span class="ltx_text ltx_font_bold" id="A3.T11.6.6.6.6.1" style="background-color:#E9F3FE;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T11.6.6.6.6.1.m1.1"><semantics id="A3.T11.6.6.6.6.1.m1.1a"><mo id="A3.T11.6.6.6.6.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.6.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T11.6.6.6.6.1.m1.1b"><ci id="A3.T11.6.6.6.6.1.m1.1.1.cmml" xref="A3.T11.6.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.6.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.6.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.7.7.7.7"><span class="ltx_text ltx_font_bold" id="A3.T11.7.7.7.7.1" style="background-color:#E9F3FE;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.7.7.7.7.1.m1.1"><semantics id="A3.T11.7.7.7.7.1.m1.1a"><mo id="A3.T11.7.7.7.7.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.7.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.7.7.7.7.1.m1.1b"><ci id="A3.T11.7.7.7.7.1.m1.1.1.cmml" xref="A3.T11.7.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.7.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.7.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.8.8.8.8"><span class="ltx_text ltx_font_bold" id="A3.T11.8.8.8.8.1" style="background-color:#E9F3FE;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.8.8.8.8.1.m1.1"><semantics id="A3.T11.8.8.8.8.1.m1.1a"><mo id="A3.T11.8.8.8.8.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.8.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.8.8.8.8.1.m1.1b"><ci id="A3.T11.8.8.8.8.1.m1.1.1.cmml" xref="A3.T11.8.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.8.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.8.8.8.8.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T11.9.9.9.9"><span class="ltx_text ltx_font_bold" id="A3.T11.9.9.9.9.1" style="background-color:#E9F3FE;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T11.9.9.9.9.1.m1.1"><semantics id="A3.T11.9.9.9.9.1.m1.1a"><mo id="A3.T11.9.9.9.9.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.9.9.9.9.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T11.9.9.9.9.1.m1.1b"><ci id="A3.T11.9.9.9.9.1.m1.1.1.cmml" xref="A3.T11.9.9.9.9.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.9.9.9.9.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.9.9.9.9.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.10.10.10.10"><span class="ltx_text ltx_font_bold" id="A3.T11.10.10.10.10.1" style="background-color:#E9F3FE;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.10.10.10.10.1.m1.1"><semantics id="A3.T11.10.10.10.10.1.m1.1a"><mo id="A3.T11.10.10.10.10.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.10.10.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.10.10.10.10.1.m1.1b"><ci id="A3.T11.10.10.10.10.1.m1.1.1.cmml" xref="A3.T11.10.10.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.10.10.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.10.10.10.10.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.11.11.11.11"><span class="ltx_text ltx_font_bold" id="A3.T11.11.11.11.11.1" style="background-color:#E9F3FE;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T11.11.11.11.11.1.m1.1"><semantics id="A3.T11.11.11.11.11.1.m1.1a"><mo id="A3.T11.11.11.11.11.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.11.11.11.11.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T11.11.11.11.11.1.m1.1b"><ci id="A3.T11.11.11.11.11.1.m1.1.1.cmml" xref="A3.T11.11.11.11.11.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.11.11.11.11.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.11.11.11.11.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.12.12.12.12"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.12.12.1" style="background-color:#E9F3FE;">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T11.12.12.12.12.1.m1.1"><semantics id="A3.T11.12.12.12.12.1.m1.1a"><mo id="A3.T11.12.12.12.12.1.m1.1.1" mathbackground="#E9F3FE" stretchy="false" xref="A3.T11.12.12.12.12.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T11.12.12.12.12.1.m1.1b"><ci id="A3.T11.12.12.12.12.1.m1.1.1.cmml" xref="A3.T11.12.12.12.12.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T11.12.12.12.12.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T11.12.12.12.12.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.12.12.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T11.12.12.14.1">SEED-X</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.2">20.18</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.3">27.66</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T11.12.12.14.4">112.11</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.5">21.53</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.6">28.02</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T11.12.12.14.7">102.87</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.8">4.90</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.9">27.62</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T11.12.12.14.10">112.86</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.11">6.31</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.12">27.89</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.12.12.14.13">106.21</td>
</tr>
<tr class="ltx_tr" id="A3.T11.12.12.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T11.12.12.15.1">Unified-IO 2</td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.2">83.93</td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.3">36.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.12.12.15.4">17.95</td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.5">85.36</td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.6">35.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.12.12.15.7">25.46</td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.8">87.50</td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.9"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.15.9.1">34.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.12.12.15.10"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.15.10.1">25.47</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.11"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.15.11.1">86.31</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.12"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.15.12.1">33.53</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.12.12.15.13"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.15.13.1">29.80</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.12.12.16" style="background-color:#DAE0FB;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T11.12.12.16.1"><span class="ltx_text" id="A3.T11.12.12.16.1.1" style="background-color:#DAE0FB;">HealthGPT-M3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.2"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.16.2.1" style="background-color:#DAE0FB;">91.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.3"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.16.3.1" style="background-color:#DAE0FB;">36.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T11.12.12.16.4"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.16.4.1" style="background-color:#DAE0FB;">15.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.5"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.16.5.1" style="background-color:#DAE0FB;">94.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.6"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.16.6.1" style="background-color:#DAE0FB;">37.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T11.12.12.16.7"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.16.7.1" style="background-color:#DAE0FB;">12.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.8"><span class="ltx_text ltx_font_bold" id="A3.T11.12.12.16.8.1" style="background-color:#DAE0FB;">88.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.9"><span class="ltx_text" id="A3.T11.12.12.16.9.1" style="background-color:#DAE0FB;">33.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T11.12.12.16.10"><span class="ltx_text" id="A3.T11.12.12.16.10.1" style="background-color:#DAE0FB;">27.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.11"><span class="ltx_text" id="A3.T11.12.12.16.11.1" style="background-color:#DAE0FB;">84.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.12"><span class="ltx_text" id="A3.T11.12.12.16.12.1" style="background-color:#DAE0FB;">33.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.12.12.16.13"><span class="ltx_text" id="A3.T11.12.12.16.13.1" style="background-color:#DAE0FB;">32.62</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of HealthGPT's performance against other state-of-the-art models on four medical image reconstruction tasks.  These tasks involve converting between different imaging modalities (CT to MRI and MRI to CT) and for brain and pelvic regions. The metrics used to evaluate performance are Structural Similarity Index (SSIM), Peak Signal-to-Noise Ratio (PSNR), and Mean Squared Error (MSE). Lower MSE values indicate better performance.  The table allows readers to directly compare the quantitative results of different models on each specific task, highlighting HealthGPT's capabilities in handling these complex medical image transformations.
> <details>
> <summary>read the caption</summary>
> Table 11: The experimental results for the four reconstruction tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09838/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09838/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}