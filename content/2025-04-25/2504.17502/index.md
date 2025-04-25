---
title: "RefVNLI: Towards Scalable Evaluation of Subject-driven Text-to-image Generation"
summary: "REFVNLI: Scalable subject-driven text-to-image evaluation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Google Research",]
showSummary: true
date: 2025-04-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17502 {{< /keyword >}}
{{< keyword icon="writer" >}} Aviv Slobodkin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17502" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17502" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17502/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Subject-driven text-to-image (T2I) generation, which aims to create images based on text descriptions while maintaining visual identity from a reference, is hindered by the lack of reliable automatic evaluation methods. Current methods often focus on single aspects or rely on costly APIs, leading to inaccurate human judgment. Thus a robust automated evaluation for subject-driven T2I is needed.



To tackle this problem, this paper introduces **REFVNLI**, a new metric for subject-driven T2I evaluation. Trained on a large dataset using video-reasoning benchmarks and image perturbations, REFVNLI assesses both textual alignment and subject preservation. REFVNLI excels in lesser-known concepts, achieving high accuracy and alignment with human preferences. This advances the field through reliable and scalable evaluations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} REFVNLI, a cost-effective metric, evaluates both textual alignment and subject preservation in subject-driven text-to-image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} REFVNLI outperforms or matches existing baselines across multiple benchmarks and subject categories. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} REFVNLI shows strong performance for subject preservation and effectively handles rare subjects, aligning well with human preferences. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **cost-effective metric** for evaluating subject-driven T2I. It **surpasses existing methods** in accuracy and human alignment. Thus providing a scalable way to enhance personalized image generation and consistent character representation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17502/x1.png)

> 🔼 RefVNLI is a metric that evaluates subject-driven text-to-image generation models. Given a reference image, a text prompt, and a generated image, RefVNLI assesses two aspects: subject consistency and textual alignment. Subject consistency measures how well the generated image preserves the identity of the subject from the reference image, differentiating between acceptable variations (e.g., adding dew to a flower) and unacceptable changes (e.g., altering the flower's color). Textual alignment evaluates how accurately the generated image matches the details described in the text prompt (e.g., the position of a fence relative to a flower).
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of RefVNLI: Given a reference image of a subject, a prompt referring to the subject, and a target image, RefVNLI assesses both subject consistency and textual alignment. For subject consistency, it distinguishes identity-preserving variations, like dew on a flower (top image), from identity-altering changes, such as color change (middle image). For textual alignment, it assesses whether the target image reflects all details from the prompt, such as the fence’s position relative to the flower (bottom image).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T1.2.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.2.1.1.2">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.2.1">Textual Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.2.1.1.3">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.3.1">Subject Consistency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.2.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.4.1">Unified Evaluation</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td" id="S3.T1.2.1.2.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.2">Animal</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.3">Human</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.4">Object</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.2.5">Animal</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.6">Human</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.7">Object</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.2.8">Animal</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.9">Human</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.10">Object</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.3.1">CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.2">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.3">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.4">74.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S3.T1.2.1.3.5">72.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.6"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.3.6.1">87.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.7">76.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S3.T1.2.1.3.8">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.9">82.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.10">75.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.4.1">DINO</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.4">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.4.5"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.4.5.1">80.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.6">78.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.7">77.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.4.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.5.1">Crop-IR</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.2">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.4">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.5.5">56.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.6">56.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.7">53.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.5.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.6.1">ArcFace</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.2">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.4">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.6">61.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.6.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.7.1">CLIPScore</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.2">71.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.3">76.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.4">72.9</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.7.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.8.1">BLIPScore</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.2">75.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.3">79.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.4">78.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.8.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.8.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.9">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.9.1">SigLIP</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.2">72.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.3">80.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.4">77.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.9.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.9.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.10">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.10.1">TIFA</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.2">70.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.3">75.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.4">69.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.10.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.10.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.11">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.11.1">VQAScore</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.2">79.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.3">78.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.4">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.11.4.1">82.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.11.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.11.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.12">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.12.1">VIEScore</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.2">76.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.3">78.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.4">78.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.12.5">65.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.6">80.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.7">76.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.12.8">70.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.9">79.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.10">77.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.13">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.13.1">DreamBench++</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.2">79.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.13.3.1">82.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.4">82.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.13.5">74.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.6">84.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.7">79.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.13.8">76.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.9">83.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.10">80.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.14">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.14.1">
<span class="ltx_ERROR undefined" id="S3.T1.2.1.14.1.1">\hdashline</span>PaliGemma<sub class="ltx_sub" id="S3.T1.2.1.14.1.2">text/ref</sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.14.2">77.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.14.3">79.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.14.4">81.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.14.5">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.14.6">71.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.14.7">77.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.2.1.14.8">73.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.14.9">74.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.14.10">79.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.2.1.15.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.2.1.15.1.1">RefVNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.15.2.1">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.3">82.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.4">82.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.5">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.6">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.7">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.1.15.7.1">85.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.8"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.15.8.1">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.9"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.15.9.1">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.15.10"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.15.10.1">83.8</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of evaluating different models on the DreamBench++ benchmark dataset. The evaluation assesses three aspects: textual alignment (how well the generated image matches the text description), subject consistency (how well the generated image maintains the identity of the subject from a reference image), and a unified evaluation (the harmonic mean of textual alignment and subject consistency).  The results are broken down by subject category (Animal, Human, Object) for each aspect.  The last two rows show the performance of models fine-tuned specifically on the dataset used in the study. One model was fine-tuned for textual alignment and the other for subject consistency.  The highest score in each column is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 1: ROC AUC scores on DreamBench++ for textual alignment, subject consistency, and their harmonic mean (as a unified evaluation) across Animal, Human, and Object categories. The last two rows feature models finetuned on our dataset, with PaliGemmatext/ref comprising two separate models (PaliGemmatext and PaliGemmaref) trained exclusively for each criterion. Bold indicates the highest score per column.
> </details>





### In-depth insights


#### Eval: Subject T2I
**Evaluating subject-driven text-to-image generation (T2I) is crucial** yet challenging due to the need to assess both textual alignment and subject consistency. Unlike generic T2I, subject-driven T2I demands that the generated images not only match the text prompt but also faithfully reproduce the visual characteristics of a reference subject. **Metrics must balance invariance** to irrelevant variations (e.g., background changes) with sensitivity to identity-defining attributes (e.g., facial features, shape). Existing methods often fall short, either focusing solely on one aspect, relying on costly human evaluation/APIs, or correlating poorly with human judgment. A robust evaluation framework should ideally offer **automated, cost-effective, and human-aligned scores** for both textual fidelity and subject preservation, enabling rapid iteration and progress in this domain. Consideration of **edge cases, adversarial examples, and failure modes** would be beneficial. The metric should consider multiple ref images.

#### Video-Driven Data
**Video-driven data" refers to datasets derived from video content, offering a wealth of information for various AI tasks. These datasets can provide temporal context, dynamic scenes, and complex interactions, surpassing static images. Analysis unlocks insights into human behavior, object tracking, scene understanding, and more. However, video data presents unique challenges such as high dimensionality, computational cost, and the need for sophisticated methods to extract meaningful features. The development of efficient algorithms for processing and labeling video data is crucial.  Furthermore, ethical considerations regarding privacy and bias in video data are paramount, necessitating careful data curation and model development to ensure fairness and avoid unintended consequences.**

#### Fine-Grained Id.
**Fine-grained identification** is crucial for understanding the subtle nuances that distinguish similar objects or concepts. It involves going beyond broad categorization to recognize specific instances or variations. **In the context of AI**, this could mean differentiating between various breeds of dogs or identifying subtle changes in facial expressions. **Challenges** arise from the need for high levels of detail in training data and the ability to discern relevant features from irrelevant noise. Techniques like **attention mechanisms** and **hierarchical classification** can be useful in focusing on the most important aspects of the input and creating more accurate and specific predictions.

#### Joint Train Boosts
**Joint training** likely refers to the simultaneous optimization of multiple aspects within the RefVNLI framework. Given the paper's focus on both textual alignment and subject preservation in subject-driven text-to-image generation, a joint training approach probably allows the model to learn the interdependencies between these two criteria. **Boosting** suggests that the joint training strategy is designed to enhance the model's performance beyond what would be achieved by training the components separately. It directly allows RefVNLI to understand nuanced relationships of both preserving visual identity and aligning it with text.

#### Rare Entity Aligns
When evaluating models for rare entities, it's crucial to assess how well they generalize beyond common objects. Standard benchmarks may not capture performance on less frequent concepts. A good metric would consider **textual alignment**, ensuring the generated image matches the description, while also maintaining visual quality. Some approaches might improve **robustness to rare subjects** as compared to baselines. Metrics should gauge identity preservation. Methods such as visual quality, and overall preference help us consider various attributes that influence a more detailed approach for aligning rare entities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17502/x2.png)

> 🔼 Figure 2 presents a qualitative comparison of RefVNLI's performance against DreamBench++ and CLIP on subject consistency (SC) and textual alignment (TA).  Three example image triplets, one each from the Animal, Object, and Human categories, are shown with their respective scores.  RefVNLI's superior robustness to identity-agnostic changes is highlighted by comparing its scores for images with only minor alterations to the subject (e.g., zoomed-out parrot, zoomed-out man with different clothing) versus images with changes that affect the subject's identity (e.g., altered face, balloon with mismatched patterns).  It also demonstrates superior sensitivity to details, as shown in its penalty for images where important textual elements are missing (e.g., the waterfall in the top left image). DreamBench++ scores are scaled from 0-4 to 0-100 for easier comparison.
> <details>
> <summary>read the caption</summary>
> Figure 2: Qualitative Comparison: We compare RefVNLI with DreamBench++ and CLIP, which score both Subject Consistency (SC) and Textual Alignment (TA), using examples from the Animal, Object, and Human categories. DreamBench++ scores (0-4) are scaled to 0-100 for better readability. RefVNLI demonstrates superior robustness to identity-agnostic changes (SC), such as the zoomed-out parrot (top-middle) and the zoomed-out man with different attire (bottom-middle). It is also more sensitive to identity-defining attributes, assigning low scores to the altered-faced man (bottom-left) and the balloon with mismatched patterns (middle-left). Additionally, RefVNLI excels at detecting text-image mismatches (TA), as seen in its penalization of the top-left image for lacking a waterfall.
> </details>



![](https://arxiv.org/html/2504.17502/x3.png)

> 🔼 This figure illustrates the process of creating training data for subject consistency in a text-to-image model.  It uses video frames featuring the same entity (e.g., a dog) across different scenes. Positive pairs are created by pairing a cropped version of the subject from one frame with the full frame from the same scene. Negative pairs are made by combining the cropped subject with full frames from a different scene. This process is repeated with all frames, resulting in four positive and eight negative pairs per set of four images.
> <details>
> <summary>read the caption</summary>
> Figure 3: Generating subject consistency classification training instances from video frames. Given two pairs of frames, each extracted from distinct video scenes featuring the same entity (e.g., a dog), where both frames within each pair depict the same subject (e.g., the same dog), we construct training {imageref, imagetgt} pairs for subject consistency classification. Positive pairs are formed by pairing a cropped subject from one frame (e.g., dog from left frame in Scene 1) with the full frame from the same scene (right frame in Scene 1). In contrast, negative pairs are created by pairing the cropped subject with the other scene’s full frames (e.g., Scene 2). This process is applied to all four frames, with each taking turns as the cropped reference image (imageref), while the corresponding full-frame counterparts serve as imagetgt, yielding a total of 4 positive and 8 negative training pairs.
> </details>



![](https://arxiv.org/html/2504.17502/x4.png)

> 🔼 This figure illustrates the process of creating training data pairs for evaluating subject consistency in image generation.  It starts with an image and its corresponding mask identifying the subject. Five random patches within the masked area are selected and inpainted to create altered versions of the image. The inpainted version showing the largest mean squared error (MSE) between the altered and original regions is paired with the original unmodified subject crop. This pair forms a negative example. Meanwhile, the original image and the same crop constitute a positive example, where the crop serves as the reference image.
> <details>
> <summary>read the caption</summary>
> Figure 4: Creating identity-sensitive {imageref, imagetgt} pairs. Starting with an image and a mask of a subject (e.g., a briefcase), we randomly keep 5 patches within the masked area ([1]) and use them to create 5 inpainted versions ([2]). The version with the highest MSE between the altered and original areas (e.g., bottom image, MSE = 3983) is paired with the unmodified crop to form a negative pair, while the original image and the same crop create a positive pair, with the crop acting as imageref in both cases.
> </details>



![](https://arxiv.org/html/2504.17502/x5.png)

> 🔼 Figure 5 illustrates the process of generating image-prompt pairs for training the REFVNLI model.  Starting with an image containing a specific subject (e.g., a dog), three types of prompts are generated: 1) Positive prompts: Created by using Gemini to describe the image subject within a bounding box, ensuring accurate focus.  2) Negative prompts: Generated by swapping positive prompts between images featuring the same type of entity (e.g., different dog images). 3) Hard negative prompts: Generated by instructing Gemini to modify a single, non-subject detail in a positive prompt while keeping the remaining details unchanged. This method creates prompts that are subtly misaligned, further improving the model's robustness to subtle misalignments.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example of prompt-imagetgt pairs. Given an image with a specific subject (e.g., a dog), we generate a positive prompt by placing a bounding box around the subject and instructing Gemini to describe it (top prompts). Negative prompts are created by swapping positive prompts between images of the same entity (middle prompts). For additional hard negatives, we instruct Gemini to modify a single non-subject detail in the positive prompt while keeping the rest unchanged (bottom prompts).
> </details>



![](https://arxiv.org/html/2504.17502/x6.png)

> 🔼 Figure 6 presents a qualitative comparison of RefVNLI, CLIP, and DreamBench++ on the ImageRAG benchmark, focusing on rare or uncommon entities.  Each row shows a triplet: a reference image, a generated image from each of the three methods, and the human preference scores. The evaluation considers three aspects: Textual Alignment (TA), Image Quality (IQ), and Overall Preference (OP).  DreamBench++ scores were rescaled from 0-4 to 0-100 for easier comparison.  In most cases, RefVNLI's results closely match human judgments across all three evaluation criteria.  The figure highlights RefVNLI's superiority in handling out-of-distribution scenarios, where the preferred image is inspired by the reference image, not a direct representation of the same entity.
> <details>
> <summary>read the caption</summary>
> Figure 6: ImageRAG Rare Entities Examples: We compare RefVNLI with CLIP and DreamBench++ in aligning with human preferences (top rows of each example) across Textual Alignment (TA), Image Quality (IQ), and Overall Preference (OP). DreamBench++ scores (0–4) are rescaled to 0–100 for readability. The higher of the two criterion-wise scores is emphasized unless both are equal. RefVNLI consistently aligns with human judgments across all three criteria. Notably, in the bottom example, it is the only metric to correctly identify the higher-quality image based on IQ, albeit by a small margin. This case is particularly challenging as it is out-of-distribution for RefVNLI, being that the preferred image is inspired by the reference rather than being of the same identity.
> </details>



![](https://arxiv.org/html/2504.17502/x7.png)

> 🔼 Figure 7 details the method for creating 'hard negative' captions used in training the REFVNLI model.  Hard negative captions are designed to be plausible but subtly incorrect, containing a single factual error. This allows the model to improve its ability to distinguish between correct and incorrect image-text pairings, enhancing its sensitivity to even small misalignments. The figure shows the steps involved: understanding the original caption, identifying a single detail to modify, replacing it with an alternative detail using specific tags, and finally reviewing the edited caption for natural language flow and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 7: Hard Negative Caption Generation. This figure illustrates the prompting strategy used to generate hard negative captions, containing a single, plausible but factually incorrect visual detail, for enhanced misalignment detection.
> </details>



![](https://arxiv.org/html/2504.17502/x8.png)

> 🔼 This figure displays qualitative examples showcasing the evaluation of subject preservation in the Animal category, comparing REFVNLI's performance against several baselines, including DreamBench++, CLIP, and DINO.  Each row shows a reference image, a generated image, and the corresponding scores for each method, illustrating how well the generated images maintain the subject's identity from the reference image. The scores reflect both subject consistency and textual alignment, providing a comprehensive evaluation of the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative Examples of Subject Preservation Evaluation for the Animal Category. DreamBench++ scores (0-4) are scaled to 0-100 for better readability.
> </details>



![](https://arxiv.org/html/2504.17502/x9.png)

> 🔼 Figure 9 presents qualitative examples illustrating the evaluation of subject preservation in the Human category.  Each example shows a reference image, a generated image, and the scores from REFVNLI, DreamBench++, CLIP, and DINO.  The scores indicate how well the generated image maintains the visual identity of the subject (person) from the reference image. DreamBench++ scores, originally ranging from 0-4, have been scaled to 0-100 for easier comparison.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative Examples of Subject Preservation Evaluation for the Human Category. DreamBench++ scores (0-4) are scaled to 0-100 for better readability.
> </details>



![](https://arxiv.org/html/2504.17502/x10.png)

> 🔼 This figure displays qualitative examples showcasing the evaluation of subject preservation for the 'Object' category within the REFVNLI framework.  It features multiple triplets, each consisting of a reference image, a generated image, and scores from REFVNLI and Dreambench++ for subject consistency and textual alignment. The scores are scaled to a 0-100 range to facilitate easy comparison. Each triplet illustrates how well the generated image maintains the visual identity of the object from the reference image.
> <details>
> <summary>read the caption</summary>
> Figure 10: Qualitative Examples of Subject Preservation Evaluation for the Object Category. DreamBench++ scores (0-4) are scaled to 0-100 for better readability.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.2.1">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T2.2.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.2.1.1.2">
<span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.2.1">Textual Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.2.1.1.3">
<span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.3.1">Subject Consistency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.2.1.1.4">
<span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.4.1">Unified Evaluation</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.2">
<td class="ltx_td" id="S3.T2.2.1.2.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.2">Animal</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.3">Object</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.4">Multi-subj.</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.2.5">Animal</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.6">Object</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.7">Multi-subj.</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.2.8">Animal</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.9">Object</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.2.10">Multi-subj.</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.1.3.1">CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.2">81.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.4">81.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S3.T2.2.1.3.5">63.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.6">73.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.7">52.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S3.T2.2.1.3.8">71.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.9">74.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.10">63.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.4.1">DINO</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.4.5">81.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.6">77.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.7">50.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.4.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.5">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.5.1">Crop-IR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.2">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.4">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.5.5">62.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.6">54.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.7">51.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.5.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.6">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.6.1">CLIPScore</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.2">81.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.3">74.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.4">79.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.6.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.7">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.7.1">BLIPScore</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.2">82.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.3">79.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.4">84.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.7.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.8">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.8.1">SigLIP</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.2">80.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.3">80.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.4">82.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.8.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.8.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.9">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.9.1">TIFA</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.2">79.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.3">76.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.4">79.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.9.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.9.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.10">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.10.1">VQAScore</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.2">77.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.3">83.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.4">87.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.10.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.6">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.7">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.10.8">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.9">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.11">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.11.1">VIEScore</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.2">62.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.3">54.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.4">71.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.11.5">56.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.6">49.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.7">50.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.11.8">59.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.9">51.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.10">59.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.12">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.12.1">DreamBench++</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.12.2.1">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.3">85.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.4">
<span class="ltx_text ltx_font_bold" id="S3.T2.2.1.12.4.1">88.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.12.5">71.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.6"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.12.6.1">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.7">54.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.12.8">77.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.9">84.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.10">67.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.13">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.13.1">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.13.1.1">\hdashline</span>PaliGemma<sub class="ltx_sub" id="S3.T2.2.1.13.1.2">text/ref</sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.2">81.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.3">88.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.4">85.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.13.5"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.13.5.1">82.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.6">74.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.7">62.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.2.1.13.8">81.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.9">80.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.10">71.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.2.1.14.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.2.1.14.1.1">RefVNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.2">84.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.14.3.1">89.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.4">86.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.5">80.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.6">83.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.7">
<span class="ltx_text ltx_font_bold" id="S3.T2.2.1.14.7.1">62.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.8"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.14.8.1">82.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.9"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.14.9.1">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.14.10"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.14.10.1">72.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of the REFVNLI model and its baselines on the ImagenHub benchmark dataset.  It shows the Area Under the ROC Curve (AUC) scores for two separate evaluation criteria: textual alignment and subject consistency. The AUC scores are reported for the Animal and Object categories, as well as a multi-subject setting. The table includes results for multiple baselines, including methods that evaluate only one aspect (textual alignment or subject consistency) as well as those that evaluate both.  The last two rows show results for models that were fine-tuned on the researchers' dataset; specifically, one model was fine-tuned for textual alignment and the other for subject consistency.  The highest score in each column is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 2: ROC AUC scores on ImagenHub for textual alignment, subject consistency, and their harmonic mean (as a unified evaluation) across Animal and Object categories, as well as for the Multi-subject setting. The last two rows feature models finetuned on our dataset, with PaliGemmatext/ref comprising two separate models trained exclusively for each criterion. Bold indicates the highest score per column.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.2.1">
<tr class="ltx_tr" id="S3.T3.2.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T3.2.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.2.1.1.2">
<span class="ltx_text" id="S3.T3.2.1.1.2.1"></span> <span class="ltx_text" id="S3.T3.2.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.1.2.2.1">
<span class="ltx_tr" id="S3.T3.2.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.2.2.1.1.1.1">Textual</span></span></span>
<span class="ltx_tr" id="S3.T3.2.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.1.1.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.2.2.1.2.1.1">Alignment</span></span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.2.1.1.3">
<span class="ltx_text" id="S3.T3.2.1.1.3.1"></span> <span class="ltx_text" id="S3.T3.2.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.1.3.2.1">
<span class="ltx_tr" id="S3.T3.2.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.1.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.3.2.1.1.1.1">Subject</span></span></span>
<span class="ltx_tr" id="S3.T3.2.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.1.1.3.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.3.2.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.1.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.2.1.1.4">
<span class="ltx_text" id="S3.T3.2.1.1.4.1"></span> <span class="ltx_text" id="S3.T3.2.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.1.1.4.2.1">
<span class="ltx_tr" id="S3.T3.2.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.1.1.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.4.2.1.1.1.1">Unified</span></span></span>
<span class="ltx_tr" id="S3.T3.2.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.1.1.4.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.1.4.2.1.2.1.1">Evaluation</span></span></span>
</span></span><span class="ltx_text" id="S3.T3.2.1.1.4.3"></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.2.1">CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.2">83.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.3">80.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.4">81.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.3">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.3.1">DINO</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.3.2">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.3.3">85.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.3.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.4">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.4.1">Crop-IR</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.3">85.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.5">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.5.1">CLIPScore</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.2">83.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.5.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.6">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.6.1">BLIPScore</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.2">82.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.7">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.7.1">SigLIP</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.2">75.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.8">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.8.1">TIFA</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.8.2">90.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.8.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.8.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.9">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.9.1">VQAScore</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.9.2">88.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.9.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.9.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.10">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.10.1">VIEScore</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.10.2">82.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.10.3">87.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.10.4">84.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.11">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.11.1">DreamBench++</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.11.2">87.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.11.3"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.11.3.1">89.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.11.4">88.4</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.12">
<td class="ltx_td ltx_align_left" id="S3.T3.2.1.12.1">
<span class="ltx_ERROR undefined" id="S3.T3.2.1.12.1.1">\hdashline</span>PaliGemma<sub class="ltx_sub" id="S3.T3.2.1.12.1.2">text/ref</sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.12.2">94.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.12.3">87.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.12.4"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.12.4.1">90.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.2.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.2.1.13.1.1">RefVNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.2.1.13.2"><span class="ltx_text ltx_font_bold" id="S3.T3.2.1.13.2.1">97.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.2.1.13.3">82.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.2.1.13.4">89.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating three different methods on the KITTEN (landmarks) dataset.  The evaluation focuses on two key aspects of text-to-image generation: textual alignment (how well the generated image matches the text description) and subject consistency (how well the generated image preserves the characteristics of the reference image).  Each method is scored using the Area Under the ROC Curve (ROC AUC), a common metric for evaluating the performance of binary classifiers.  The table shows the ROC AUC scores for textual alignment, subject consistency, and a unified evaluation score (the harmonic mean of the two individual scores).  The table also includes results for two models fine-tuned on the authors' custom dataset; these models are trained separately, one focused on textual alignment (PaliGemmatext) and one focused on subject consistency (PaliGemmaref).  The highest score in each column is indicated in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: ROC AUC scores on KITTEN (landmarks) for textual alignment, subject consistency, and their harmonic mean (as a unified evaluation). The last two rows feature models finetuned on our dataset, with PaliGemmatext/ref consisting of separate models for each criterion. Bold indicates the highest score per column.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.2.1">
<tr class="ltx_tr" id="S4.T4.2.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T4.2.1.1.1"></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.2.1">Textual Alignment</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.3.1">Subject Consistency</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.2.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.4.1">Unified Evaluation</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.2">
<td class="ltx_td" id="S4.T4.2.1.2.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.2">DreamBench++</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.3">
<span class="ltx_text" id="S4.T4.2.1.2.3.1"></span> <span class="ltx_text" id="S4.T4.2.1.2.3.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.1.2.3.2.1">
<span class="ltx_tr" id="S4.T4.2.1.2.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.1.2.3.2.1.1.1">ImagenHub</span></span>
<span class="ltx_tr" id="S4.T4.2.1.2.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.1.2.3.2.1.2.1"><span class="ltx_text" id="S4.T4.2.1.2.3.2.1.2.1.1" style="font-size:90%;">(Single/Multi)</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.2.1.2.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.4">KITTEN</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.2.5">DreamBench++</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.6">
<span class="ltx_text" id="S4.T4.2.1.2.6.1"></span> <span class="ltx_text" id="S4.T4.2.1.2.6.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.1.2.6.2.1">
<span class="ltx_tr" id="S4.T4.2.1.2.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.1.2.6.2.1.1.1">ImagenHub</span></span>
<span class="ltx_tr" id="S4.T4.2.1.2.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.1.2.6.2.1.2.1"><span class="ltx_text" id="S4.T4.2.1.2.6.2.1.2.1.1" style="font-size:90%;">(Single/Multi)</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.2.1.2.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.7">KITTEN</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.2.8">DreamBench++</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.9">
<span class="ltx_text" id="S4.T4.2.1.2.9.1"></span> <span class="ltx_text" id="S4.T4.2.1.2.9.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.1.2.9.2.1">
<span class="ltx_tr" id="S4.T4.2.1.2.9.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.1.2.9.2.1.1.1">ImagenHub</span></span>
<span class="ltx_tr" id="S4.T4.2.1.2.9.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.1.2.9.2.1.2.1"><span class="ltx_text" id="S4.T4.2.1.2.9.2.1.2.1.1" style="font-size:90%;">(Single/Multi)</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.2.1.2.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.10">KITTEN</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.1.3.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T4.2.1.3.1.1">RefVNLI</span> (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.2">81.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.3">87.7 / 86.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.4">97</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.2.1.3.5">82.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.6">83 / 62.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.7">82.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.2.1.3.8">82.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.9">85.3 / 72.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.10">89.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.4">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.4.1">      <span class="ltx_text" id="S4.T4.2.1.4.1.1" style="font-size:90%;">reverse classification order</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.2">80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.3">85.2 / 85.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4">95.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.4.5">80.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.6">84.3 / 68.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.7">87</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.4.8">80.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.9">84.7 / 76.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.10">91.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.5">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.5.1">      <span class="ltx_text" id="S4.T4.2.1.5.1.1" style="font-size:90%;">multiclass</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.2">79.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.3">83.7 / 84.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.4">94.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.5.5">79.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.6">76 / 61.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.7">86.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.5.8">79.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.9">79.7 / 71</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.10">90.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.6">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.6.1">      <span class="ltx_text" id="S4.T4.2.1.6.1.1" style="font-size:90%;">separate classification</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.2">79.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.3">85.2 / 87.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.4">95.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.6.5">78.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6">77.1 / 56.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.7">89.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.6.8">79.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.9">80.9 / 68.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.10">92.4</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.7">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.7.1">      <span class="ltx_text" id="S4.T4.2.1.7.1.1" style="font-size:90%;">no markup</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.7.2">78.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.7.3">87 / 84.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.7.4">92.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.7.5">65.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.7.6">75.9 / 60.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.7.7">88.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.2.1.7.8">71.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.7.9">81.1 / 70.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.7.10">90.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.1.8.1">      <span class="ltx_text" id="S4.T4.2.1.8.1.1" style="font-size:90%;">concatenated images</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.2">79.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.3">86.2 / 86.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.4">93.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.5">74.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.6">81.1 / 81.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.7">89.9</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.8">76.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.9">83.6 / 83.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.8.10">91.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different design choices in the RefVNLI model on its performance across various benchmarks. It investigates several modifications: reversing the order of classification (textual alignment before subject consistency), employing a four-label multiclass framework instead of separate binary classifications, using designated tokens for distinct aspect classification, removing subject markup from input captions, and concatenating reference and target images into a single input.  The table presents the ROC AUC scores for each ablated version of RefVNLI, allowing a comparison of their performance on textual alignment, subject consistency, and a unified evaluation metric, across multiple benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation Study: ROC AUC scores for various ablated versions of RefVNLI across benchmarks (over all subjects). The ablations test alternative output formulations, including reversing classification order, using a four-label multiclass framework, and incorporating a designated token for separate aspect classification. We also examine a variant that excludes the subject markup from the input caption, as well as one that concatenates the reference and target images into a single image input.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.2.1">
<tr class="ltx_tr" id="S4.T5.2.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T5.2.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.2">
<span class="ltx_text" id="S4.T5.2.1.1.2.1"></span> <span class="ltx_text" id="S4.T5.2.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.2.1.1.2.2.1">
<span class="ltx_tr" id="S4.T5.2.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.2.2.1.1.1.1">Textual</span></span></span>
<span class="ltx_tr" id="S4.T5.2.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.1.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.2.2.1.2.1.1">Alignment</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.2.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.3">
<span class="ltx_text" id="S4.T5.2.1.1.3.1"></span> <span class="ltx_text" id="S4.T5.2.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.2.1.1.3.2.1">
<span class="ltx_tr" id="S4.T5.2.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.3.2.1.1.1.1">Visual</span></span></span>
<span class="ltx_tr" id="S4.T5.2.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.1.3.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.3.2.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.2.1.1.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.4">
<span class="ltx_text" id="S4.T5.2.1.1.4.1"></span> <span class="ltx_text" id="S4.T5.2.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.2.1.1.4.2.1">
<span class="ltx_tr" id="S4.T5.2.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.1.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.4.2.1.1.1.1">Overall</span></span></span>
<span class="ltx_tr" id="S4.T5.2.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.1.4.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.4.2.1.2.1.1">Preference</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.2.1.1.4.3"></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.2.1.2.1">CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.2">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.3">91.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.4">69.3</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.3">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.3.1">DINO</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.3">91.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.4">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.4.1">Crop-IR</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.3">87.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.5">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.5.1">CLIPScore</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.6">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.6.1">BLIPScore</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.2">39.4</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.7">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.7.1">SigLIP</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.2">74.6</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.8">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.8.1">VQAScore</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.2">52.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.9">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.9.1">VNLI</td>
<td class="ltx_td" id="S4.T5.2.1.9.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.10">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.10.1">VIEScore</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.2">60.6</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.3">65.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.4">69.3</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.11">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.11.1">DreamBench++</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.2">56.4</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.3">82.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.4">78.8</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.12">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.12.1">
<span class="ltx_ERROR undefined" id="S4.T5.2.1.12.1.1">\hdashline</span>PaliGemma<sub class="ltx_sub" id="S4.T5.2.1.12.1.2">text/ref</sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.2">61.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.3">82.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.4">82.9</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.2.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T5.2.1.13.1.1">RefVNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.13.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.13.2.1">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.13.3"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.13.3.1">95.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.13.4.1">91.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents the results of evaluating various models on the ImageRAG rare concepts benchmark.  This benchmark focuses on less common entities and assesses how well models can generate images that align with textual descriptions, possess high visual quality, and satisfy overall user preference.  The evaluation involves human judges comparing image pairs and selecting the better one, considering these three aspects: textual alignment, visual quality, and overall preference. The table shows the accuracy of each model in correctly predicting the human judges' choices.  The overall preference score is a combined metric calculated as the harmonic mean of the textual alignment and visual quality scores. The last two rows highlight results for models fine-tuned on a specific dataset, indicating separate model performance for textual alignment and visual quality.  Bold font is used to emphasize the top-performing model within each evaluation criterion.
> <details>
> <summary>read the caption</summary>
> Table 5: Results on the ImageRAG rare concepts benchmark, where users compare image pairs and select the better one based on textual alignment, visual quality, and overall preference. We report accuracy in predicting these human choices, with the overall preference score computed as the harmonic mean of the textual and visual scores. The last two rows include models finetuned on our dataset, with PaliGemmatext/ref consisting of separate models for each criterion. Bold indicates the highest score per column.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17502/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17502/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}