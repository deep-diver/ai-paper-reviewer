---
title: "VisualWebInstruct: Scaling up Multimodal Instruction Data through Web Search"
summary: "VisualWebInstruct: Scales up multimodal instruction data via web search, enhancing VLMs' reasoning for complex tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Waterloo",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10582 {{< /keyword >}}
{{< keyword icon="writer" >}} Yiming Jia et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10582" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10582" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10582/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Vision-Language Models have shown promise in perception, but reasoning is limited by data scarcity. Existing datasets are restricted by focusing on specific data, relying on synthetic data, or covering elementary knowledge. To solve this issue, VisualWebInstruct introduces a method for creating diverse, high-quality datasets spanning various disciplines like math and chemistry. It employs Google Image Search, gathers HTML from 700K+ sources, and synthesizes 900K question-answer pairs. 



The study presents VisualWebInstruct, which uses search engines to create diverse datasets. Starting with 30,000 images, similar images are found via Google. HTML is collected and processed to build a dataset of 900K question-answer pairs, 40% visual. Fine-tuning models show gains, 10-20% from Llava-OV-mid and 5% from MAmmoTH-VL. MAmmoTH-VL2 is state-of-the-art, highlighting data's impact on complex reasoning for VLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces VisualWebInstruct, a novel approach that leverages web search to create a diverse, high-quality multimodal instruction dataset. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Demonstrates significant performance gains on VLMs fine-tuned on VisualWebInstruct across multiple reasoning benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art performance within the 10B parameter class with the MAmmoTH-VL2 model on MMMU-Pro-std, MathVerse, and DynaMath. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **addresses the scarcity of high-quality, diverse data** for training VLMs to enhance their reasoning abilities. By **introducing a novel method for generating multimodal instruction data**, it paves the way for creating more capable VLMs that can tackle complex real-world tasks and opens new avenues for research in multimodal learning and reasoning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10582/x1.png)

> 🔼 This figure illustrates the VisualWebInstruct dataset creation process and its impact.  The pipeline starts with 30,000 seed images, uses Google Lens to find similar images on the web, extracts QA pairs from the resulting HTML, and filters for quality. The final dataset contains approximately 900k QA pairs.  The bar charts show the performance gains achieved by fine-tuning language models (LLaVA-CoT, Qwen2-VL, and MAmmoTH-VL2) on this new dataset compared to their performance on several benchmarks (MMMU, MMMU-PRO, MathVista, and DynaMath).  The improvements demonstrate the effectiveness of VisualWebInstruct in enhancing visual reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our automated data curation approach and major experimental results.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.2.1.1.1.1"><span class="ltx_text" id="S1.T1.2.1.1.1.1.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.2.1.1.1.2"><span class="ltx_text" id="S1.T1.2.1.1.1.2.1" style="font-size:90%;">Size</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.2.1.1.1.3"><span class="ltx_text" id="S1.T1.2.1.1.1.3.1" style="font-size:90%;">Source &amp; Domains</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.2.1.1.1.4"><span class="ltx_text" id="S1.T1.2.1.1.1.4.1" style="font-size:90%;">Coverage</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.2.2.1">
<span class="ltx_text" id="S1.T1.2.1.2.2.1.1" style="font-size:90%;">ScienceQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.2.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S1.T1.2.1.2.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.2.2.2"><span class="ltx_text" id="S1.T1.2.1.2.2.2.1" style="font-size:90%;">21K</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.2.2.3"><span class="ltx_text" id="S1.T1.2.1.2.2.3.1" style="font-size:90%;">Elementary and high school science</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.2.2.4"><span class="ltx_text" id="S1.T1.2.1.2.2.4.1" style="font-size:90%;">Science Q&amp;A, diagrams, K-12 Exam</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.3.3">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.3.3.1">
<span class="ltx_text" id="S1.T1.2.1.3.3.1.1" style="font-size:90%;">IconQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S1.T1.2.1.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.3.3.2"><span class="ltx_text" id="S1.T1.2.1.3.3.2.1" style="font-size:90%;">107K</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.3.3.3"><span class="ltx_text" id="S1.T1.2.1.3.3.3.1" style="font-size:90%;">Abstract diagrams and visual reasoning</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.3.3.4"><span class="ltx_text" id="S1.T1.2.1.3.3.4.1" style="font-size:90%;">Visual reasoning, diagrams</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.4.4">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.4.4.1">
<span class="ltx_text" id="S1.T1.2.1.4.4.1.1" style="font-size:90%;">Geo170K </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.2.1.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S1.T1.2.1.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.4.4.2"><span class="ltx_text" id="S1.T1.2.1.4.4.2.1" style="font-size:90%;">170K</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.4.4.3"><span class="ltx_text" id="S1.T1.2.1.4.4.3.1" style="font-size:90%;">Synthesized from LLMs</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.4.4.4"><span class="ltx_text" id="S1.T1.2.1.4.4.4.1" style="font-size:90%;">Geometry</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.5.5">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.5.5.1">
<span class="ltx_text" id="S1.T1.2.1.5.5.1.1" style="font-size:90%;">CLEVR </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.2.1.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S1.T1.2.1.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.5.5.2"><span class="ltx_text" id="S1.T1.2.1.5.5.2.1" style="font-size:90%;">700K</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.5.5.3"><span class="ltx_text" id="S1.T1.2.1.5.5.3.1" style="font-size:90%;">Synthesized from rules</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.5.5.4"><span class="ltx_text" id="S1.T1.2.1.5.5.4.1" style="font-size:90%;">Shapes</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.6.6">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.6.6.1">
<span class="ltx_text" id="S1.T1.2.1.6.6.1.1" style="font-size:90%;">FigureQA </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.2.1.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S1.T1.2.1.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.6.6.2"><span class="ltx_text" id="S1.T1.2.1.6.6.2.1" style="font-size:90%;">1.3M</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.6.6.3"><span class="ltx_text" id="S1.T1.2.1.6.6.3.1" style="font-size:90%;">Synthesized from rules</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.6.6.4"><span class="ltx_text" id="S1.T1.2.1.6.6.4.1" style="font-size:90%;">Bar, Line, Pie</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.7.7">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.7.7.1">
<span class="ltx_text" id="S1.T1.2.1.7.7.1.1" style="font-size:90%;">ChartQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S1.T1.2.1.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.7.7.2"><span class="ltx_text" id="S1.T1.2.1.7.7.2.1" style="font-size:90%;">23K</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.7.7.3"><span class="ltx_text" id="S1.T1.2.1.7.7.3.1" style="font-size:90%;">Charts from Staista, Pew, etc</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.7.7.4"><span class="ltx_text" id="S1.T1.2.1.7.7.4.1" style="font-size:90%;">Charts</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.8.8.1">
<span class="ltx_text" id="S1.T1.2.1.8.8.1.1" style="font-size:90%;">Math360V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S1.T1.2.1.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.8.8.2"><span class="ltx_text" id="S1.T1.2.1.8.8.2.1" style="font-size:90%;">260K</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.8.8.3">
<span class="ltx_text" id="S1.T1.2.1.8.8.3.1" style="font-size:90%;">FigureQA </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.2.1.8.8.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S1.T1.2.1.8.8.3.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.8.8.3.4" style="font-size:90%;">, CLEVR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.8.8.3.5.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S1.T1.2.1.8.8.3.6.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.8.8.3.7" style="font-size:90%;">, IconQA </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S1.T1.2.1.8.8.3.8.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S1.T1.2.1.8.8.3.9.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.8.8.3.10" style="font-size:90%;">, etc</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.1.8.8.4"><span class="ltx_text" id="S1.T1.2.1.8.8.4.1" style="font-size:90%;">Math reasoning, diagrams</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.9.9">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.9.9.1">
<span class="ltx_text" id="S1.T1.2.1.9.9.1.1" style="font-size:90%;">Mulberry </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.9.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S1.T1.2.1.9.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.9.9.2"><span class="ltx_text" id="S1.T1.2.1.9.9.2.1" style="font-size:90%;">260K</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.9.9.3">
<span class="ltx_text" id="S1.T1.2.1.9.9.3.1" style="font-size:90%;">Geo3K </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.9.9.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S1.T1.2.1.9.9.3.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.9.9.3.4" style="font-size:90%;">, IconQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.9.9.3.5.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S1.T1.2.1.9.9.3.6.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.9.9.3.7" style="font-size:90%;">, ChartQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.9.9.3.8.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S1.T1.2.1.9.9.3.9.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.9.9.3.10" style="font-size:90%;">, ScienceQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.9.9.3.11.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S1.T1.2.1.9.9.3.12.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.9.9.3.13" style="font-size:90%;">, etc</span>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.9.9.4"><span class="ltx_text" id="S1.T1.2.1.9.9.4.1" style="font-size:90%;">Geo, Figure, Medical, K-12 Exam</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.10.10">
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.10.10.1">
<span class="ltx_text" id="S1.T1.2.1.10.10.1.1" style="font-size:90%;">Llava-CoT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.10.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S1.T1.2.1.10.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.10.10.2"><span class="ltx_text" id="S1.T1.2.1.10.10.2.1" style="font-size:90%;">100K</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.10.10.3">
<span class="ltx_text" id="S1.T1.2.1.10.10.3.1" style="font-size:90%;">ChartQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.10.10.3.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S1.T1.2.1.10.10.3.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.10.10.3.4" style="font-size:90%;">, AI2D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.10.10.3.5.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S1.T1.2.1.10.10.3.6.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.10.10.3.7" style="font-size:90%;">, GeoQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.10.10.3.8.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S1.T1.2.1.10.10.3.9.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.10.10.3.10" style="font-size:90%;">, CLEVR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.1.10.10.3.11.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10582v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S1.T1.2.1.10.10.3.12.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S1.T1.2.1.10.10.3.13" style="font-size:90%;">, etc</span>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.1.10.10.4"><span class="ltx_text" id="S1.T1.2.1.10.10.4.1" style="font-size:90%;">Geo, General VQA, K-12 Exam</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.11.1"><span class="ltx_text ltx_font_smallcaps" id="S1.T1.2.1.11.11.1.1" style="font-size:90%;">VisualWebInstruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.11.2"><span class="ltx_text" id="S1.T1.2.1.11.11.2.1" style="font-size:90%;">906K</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.11.3"><span class="ltx_text" id="S1.T1.2.1.11.11.3.1" style="font-size:90%;">Internet (Homework Website, Forums, etc)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.2.1.11.11.4"><span class="ltx_text" id="S1.T1.2.1.11.11.4.1" style="font-size:90%;">All Above + College Exams</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the VisualWebInstruct dataset with other existing multimodal datasets, highlighting key differences in size, source, domains covered, and types of visual content.  It shows that VisualWebInstruct is significantly larger and more diverse than existing datasets, encompassing a broader range of scientific disciplines and image types, making it particularly suitable for training vision-language models on complex reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between our dataset and the existing datasets. VisualWebInstruct is the most diverse dataset with very broad coverage of disciplines and image types.
> </details>





### In-depth insights


#### Web-scale VLM
**Web-scale Vision-Language Models (VLMs) represent a significant leap in AI, moving beyond limited datasets to harness the vastness of internet data.** This scaling is crucial for several reasons. First, it provides VLMs with exposure to a much more diverse range of visual concepts, linguistic expressions, and real-world scenarios. **This broader training base directly translates to improved generalization capabilities**, allowing these models to perform effectively on a wider array of tasks and unseen data. Second, web-scale data enables VLMs to learn more nuanced and complex relationships between vision and language. **They can capture subtle contextual cues and associations that would be impossible to discern from smaller, curated datasets**. Third, the sheer volume of data helps to mitigate biases that may be present in smaller datasets. By training on a more representative sample of the world, web-scale VLMs can achieve fairer and more robust performance. However, the move to web-scale also presents significant challenges. **Data quality becomes a major concern**, as the internet contains a large amount of noisy, irrelevant, or even harmful information. Sophisticated data cleaning and filtering techniques are essential to ensure that VLMs are trained on high-quality data. **Computational resources are also a major bottleneck**, as training VLMs on web-scale datasets requires massive amounts of compute power and memory. Finally, **ethical considerations become paramount**, as web-scale VLMs may inadvertently learn and perpetuate biases present in the data, or be used for malicious purposes. Addressing these challenges requires careful attention to data curation, model design, and ethical oversight.

#### Data Curation
**Data curation** in the context of training Vision-Language Models (VLMs) is crucial for enhancing their reasoning capabilities. The traditional reliance on human annotation, while providing high-precision data, suffers from scalability issues. **Automated approaches**, like leveraging web search, offer a solution to create diverse and high-quality datasets. The process typically involves starting with seed images, using them to identify relevant webpages via search engines like Google, and then extracting HTML content. This raw data undergoes a **series of refinement steps** including content extraction, filtering, and synthesis to generate question-answer pairs. The **quality of extracted data is paramount**, so techniques like filtering based on question validity and image relevance, and ensuring consistency among synthesized answers are necessary. This process has the potential to dramatically scale up the amount of reasoning-focused multimodal data available for training VLMs.

#### Instruct Tuning
While the provided document does not explicitly contain a section titled "Instruct Tuning," we can infer its relevance within the context of vision-language models (VLMs). Instruct tuning, in general, involves fine-tuning a pre-trained model using a dataset of instructions and corresponding desired outputs. This process significantly enhances the model's ability to **follow user commands**, perform specific tasks, and generalize to unseen scenarios. In the context of VLMs, instruct tuning could be applied to improve the model's ability to **perform complex reasoning tasks** based on visual and textual inputs. For instance, the VisualWebInstruct dataset, described in the paper, could be used to fine-tune VLMs using instruct tuning, where the instructions are questions about images and the outputs are the corresponding answers. This would enable the model to **better understand the relationships between visual elements and textual descriptions**, leading to improved performance on tasks such as visual question answering, image captioning, and visual reasoning. **Effectiveness is shown in data augmentation** which results in more capable vision language models.

#### Reasoning Gains
**Reasoning gains** in multimodal models are significantly impacted by training data. **High-quality, diverse datasets** like VisualWebInstruct enhance reasoning by exposing models to various disciplines and problem types. **Fine-tuning on such datasets** demonstrably improves performance on benchmarks like MMMU and MathVista. The **combination of web-sourced data with techniques like chain-of-thought** further amplifies reasoning capabilities, allowing models to tackle complex, multi-step problems that require deliberate thought and visual context understanding. The effectiveness hinges on **balancing data quality and diversity** to facilitate broader generalization and prevent overfitting to specific domains.

#### Dataset Scaling
**Dataset scaling is a crucial aspect of training effective machine learning models, particularly for vision-language models (VLMs)**. The paper addresses the limitation of reasoning-focused datasets and proposes a novel approach, VisualWebInstruct, to scale up instruction data. **Scaling involves using web search to gather a diverse dataset, including images from various disciplines.** They start with 30K images and use Google Image Search to find similar images, extracting data from 700K unique URLs. The scaling aims to increase data quantity and diversity and improve the model's ability to handle complex multimodal tasks. **The use of web search is a clever way to overcome the data scarcity issue**, enabling the creation of a large dataset without extensive human annotation. **The dataset size and the comprehensive nature of web-derived data helps in enhancing the model's reasoning capabilities**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10582/x2.png)

> 🔼 This figure details the two-stage pipeline used to create the VisualWebInstruct dataset. Stage 1 begins with seed images, uses Google Image Search to find related webpages, converts those pages into accessibility trees, extracts initial question-answer pairs, and then refines them. Stage 2 generates multiple synthesized answers to filter for consistency, aligning them with original web content to improve accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comprehensive Pipeline for VisualWebInstruct Dataset Generation. The workflow illustrates our multi-stage approach for creating high-quality multimodal instruction data. Stage 1: starting with seed images, we leverage Google Image search to identify relevant webpages, which are processed into accessibility trees. The raw QA pairs are extracted from the trees and refined through a post-processing step to ensure the vadality the data. Stage 2: we first generat multiple synthesized answers for consistency filtering, then align these with original web-sourced content to enhance the accuracy of the answers.
> </details>



![](https://arxiv.org/html/2503.10582/x3.png)

> 🔼 This figure shows how Google Lens was used to search for webpages containing images related to circle geometry problems.  The query image (a circle diagram) is shown, illustrating how Google Lens's image search capability was used to find relevant webpages for data collection. The process starts with a seed image as input, and the search engine returns a list of URLs to webpages containing visually similar content. These webpages were then used to extract the question answer pairs for creating the final dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Example of Google Lens search functionality for circle geometry problems.
> </details>



![](https://arxiv.org/html/2503.10582/x4.png)

> 🔼 Figure 4 shows an example of how the authors extract structured data from an educational website.  The figure presents an accessibility tree, a hierarchical representation of a webpage's content.  The tree nodes represent either textual content (questions, options, answers) or image elements.  The tree structure is used to extract question-answer pairs, preserving the relationship between textual components and related images.
> <details>
> <summary>read the caption</summary>
> Figure 4: Example of an accessibility tree structure extracted from an educational website.
> </details>



![](https://arxiv.org/html/2503.10582/x5.png)

> 🔼 This figure illustrates the process of ensuring answer consistency in the VisualWebInstruct dataset.  Multiple answers are generated for each question using GPT-40. Then, an LLM judge (also GPT-40) evaluates the consistency of these answers. Only questions with a majority of consistent answers are retained in the final dataset, improving the quality and reliability of the data.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of our consistency checking methodology.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.1" style="font-size:90%;">Category</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.2.1" style="font-size:90%;">Percentage</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.3.1" style="font-size:90%;">Num of QA Pairs</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.2.2.1.1"><span class="ltx_text" id="S3.T2.2.2.1.1.1" style="font-size:90%;">Math</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.2.2.1.2"><span class="ltx_text" id="S3.T2.2.2.1.2.1" style="font-size:90%;">62.50%</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.2.2.1.3"><span class="ltx_text" id="S3.T2.2.2.1.3.1" style="font-size:90%;">566K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.2.3.2.1"><span class="ltx_text" id="S3.T2.2.3.2.1.1" style="font-size:90%;">Physics</span></th>
<td class="ltx_td ltx_align_right" id="S3.T2.2.3.2.2"><span class="ltx_text" id="S3.T2.2.3.2.2.1" style="font-size:90%;">14.50%</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.2.3.2.3"><span class="ltx_text" id="S3.T2.2.3.2.3.1" style="font-size:90%;">132K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.2.4.3.1"><span class="ltx_text" id="S3.T2.2.4.3.1.1" style="font-size:90%;">Finance</span></th>
<td class="ltx_td ltx_align_right" id="S3.T2.2.4.3.2"><span class="ltx_text" id="S3.T2.2.4.3.2.1" style="font-size:90%;">7.25%</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.2.4.3.3"><span class="ltx_text" id="S3.T2.2.4.3.3.1" style="font-size:90%;">66K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.2.5.4.1"><span class="ltx_text" id="S3.T2.2.5.4.1.1" style="font-size:90%;">Chemistry</span></th>
<td class="ltx_td ltx_align_right" id="S3.T2.2.5.4.2"><span class="ltx_text" id="S3.T2.2.5.4.2.1" style="font-size:90%;">4.80%</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.2.5.4.3"><span class="ltx_text" id="S3.T2.2.5.4.3.1" style="font-size:90%;">43K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.2.6.5.1"><span class="ltx_text" id="S3.T2.2.6.5.1.1" style="font-size:90%;">Engineering</span></th>
<td class="ltx_td ltx_align_right" id="S3.T2.2.6.5.2"><span class="ltx_text" id="S3.T2.2.6.5.2.1" style="font-size:90%;">4.35%</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.2.6.5.3"><span class="ltx_text" id="S3.T2.2.6.5.3.1" style="font-size:90%;">39K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.2.7.6.1"><span class="ltx_text" id="S3.T2.2.7.6.1.1" style="font-size:90%;">Others</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T2.2.7.6.2"><span class="ltx_text" id="S3.T2.2.7.6.2.1" style="font-size:90%;">6.60%</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T2.2.7.6.3"><span class="ltx_text" id="S3.T2.2.7.6.3.1" style="font-size:90%;">60K</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 shows the distribution of different categories of questions within the VisualWebInstruct dataset.  The dataset covers multiple disciplines, with the majority of questions falling under mathematics (62.5%). Other significant categories include physics, finance, chemistry, and engineering, while a smaller 'Others' category encompasses subjects such as general knowledge, computer science, biology, and humanities.
> <details>
> <summary>read the caption</summary>
> Table 2: Distribution of Categories in VisualWebInstruct
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T3.2.1.1.1"><span class="ltx_text" id="S3.T3.2.1.1.1.1" style="font-size:90%;">Processing Stage</span></th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T3.2.1.1.2"><span class="ltx_text" id="S3.T3.2.1.1.2.1" style="font-size:90%;">Total QA Pairs</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T3.2.1.1.3"><span class="ltx_text" id="S3.T3.2.1.1.3.1" style="font-size:90%;">Image-Associated QA</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T3.2.1.1.4"><span class="ltx_text" id="S3.T3.2.1.1.4.1" style="font-size:90%;">Unique Questions</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T3.2.1.1.5"><span class="ltx_text" id="S3.T3.2.1.1.5.1" style="font-size:90%;">Total Images</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T3.2.1.1.6"><span class="ltx_text" id="S3.T3.2.1.1.6.1" style="font-size:90%;">Unique Images</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S3.T3.2.2.2.1"><span class="ltx_text" id="S3.T3.2.2.2.1.1" style="font-size:90%;">Stage 1: Mining Data from the Internet</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.2.3.3.1"><span class="ltx_text" id="S3.T3.2.3.3.1.1" style="font-size:90%;">Seed Data Collection</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.3.3.2"><span class="ltx_text" id="S3.T3.2.3.3.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.3.3.3"><span class="ltx_text" id="S3.T3.2.3.3.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.3.3.4"><span class="ltx_text" id="S3.T3.2.3.3.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.3.3.5"><span class="ltx_text" id="S3.T3.2.3.3.5.1" style="font-size:90%;">30,000</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.3.3.6"><span class="ltx_text" id="S3.T3.2.3.3.6.1" style="font-size:90%;">30,000</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.2.4.4.1"><span class="ltx_text" id="S3.T3.2.4.4.1.1" style="font-size:90%;">QA Pairs Extraction</span></th>
<td class="ltx_td ltx_align_right" id="S3.T3.2.4.4.2"><span class="ltx_text" id="S3.T3.2.4.4.2.1" style="font-size:90%;">421,320</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.2.4.4.3"><span class="ltx_text" id="S3.T3.2.4.4.3.1" style="font-size:90%;">248,643</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.2.4.4.4"><span class="ltx_text" id="S3.T3.2.4.4.4.1" style="font-size:90%;">421,320</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.2.4.4.5"><span class="ltx_text" id="S3.T3.2.4.4.5.1" style="font-size:90%;">552,269</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.2.4.4.6"><span class="ltx_text" id="S3.T3.2.4.4.6.1" style="font-size:90%;">362,728</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.2.5.5.1"><span class="ltx_text" id="S3.T3.2.5.5.1.1" style="font-size:90%;">Post-Processing</span></th>
<td class="ltx_td ltx_align_right" id="S3.T3.2.5.5.2"><span class="ltx_text" id="S3.T3.2.5.5.2.1" style="font-size:90%;">361,015</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.2.5.5.3"><span class="ltx_text" id="S3.T3.2.5.5.3.1" style="font-size:90%;">159,059</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.2.5.5.4"><span class="ltx_text" id="S3.T3.2.5.5.4.1" style="font-size:90%;">361,015</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.2.5.5.5"><span class="ltx_text" id="S3.T3.2.5.5.5.1" style="font-size:90%;">331,818</span></td>
<td class="ltx_td ltx_align_right" id="S3.T3.2.5.5.6"><span class="ltx_text" id="S3.T3.2.5.5.6.1" style="font-size:90%;">212,530</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S3.T3.2.6.6.1"><span class="ltx_text" id="S3.T3.2.6.6.1.1" style="font-size:90%;">Stage 2: Dataset Refinement</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.2.7.7.1"><span class="ltx_text" id="S3.T3.2.7.7.1.1" style="font-size:90%;">Answer Refinement</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.7.7.2"><span class="ltx_text" id="S3.T3.2.7.7.2.1" style="font-size:90%;">1,041,598</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.7.7.3"><span class="ltx_text" id="S3.T3.2.7.7.3.1" style="font-size:90%;">407,218</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.7.7.4"><span class="ltx_text" id="S3.T3.2.7.7.4.1" style="font-size:90%;">257,201</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.7.7.5"><span class="ltx_text" id="S3.T3.2.7.7.5.1" style="font-size:90%;">577,455</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T3.2.7.7.6"><span class="ltx_text" id="S3.T3.2.7.7.6.1" style="font-size:90%;">167,493</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T3.2.8.8.1"><span class="ltx_text" id="S3.T3.2.8.8.1.1" style="font-size:90%;">Answer Alignment</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.2.8.8.2"><span class="ltx_text" id="S3.T3.2.8.8.2.1" style="font-size:90%;">906,160</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.2.8.8.3"><span class="ltx_text" id="S3.T3.2.8.8.3.1" style="font-size:90%;">347,313</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.2.8.8.4"><span class="ltx_text" id="S3.T3.2.8.8.4.1" style="font-size:90%;">257,201</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.2.8.8.5"><span class="ltx_text" id="S3.T3.2.8.8.5.1" style="font-size:90%;">475,099</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T3.2.8.8.6"><span class="ltx_text" id="S3.T3.2.8.8.6.1" style="font-size:90%;">163,743</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the statistics of the VisualWebInstruct dataset creation pipeline. It shows the number of question-answer pairs, and images at different stages: initial data mining from the internet, post-processing for quality control, and answer refinement steps.  The table illustrates the data's evolution and the impact of various filtering and refinement steps on the dataset's final size and composition.
> <details>
> <summary>read the caption</summary>
> Table 3: Statistics of different milestones in the data processing pipeline of VisualWebInstruct.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.2.1.1"><span class="ltx_text" id="S4.T4.1.1.2.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.1.1.2.1.2"><span class="ltx_text" id="S4.T4.1.1.2.1.2.1" style="font-size:90%;">Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.1.3"><span class="ltx_text" id="S4.T4.1.1.2.1.3.1" style="font-size:90%;">MMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.1.4"><span class="ltx_text" id="S4.T4.1.1.2.1.4.1" style="font-size:90%;">MMMU-Pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.1.5"><span class="ltx_text" id="S4.T4.1.1.2.1.5.1" style="font-size:90%;">MMMU-Pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.1.6"><span class="ltx_text" id="S4.T4.1.1.2.1.6.1" style="font-size:90%;">MathVista</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.1.7"><span class="ltx_text" id="S4.T4.1.1.2.1.7.1" style="font-size:90%;">MMVet</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.1.8"><span class="ltx_text" id="S4.T4.1.1.2.1.8.1" style="font-size:90%;">MathVerse</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.1.9"><span class="ltx_text" id="S4.T4.1.1.2.1.9.1" style="font-size:90%;">Dyna-Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2.1.10"><span class="ltx_text" id="S4.T4.1.1.2.1.10.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T4.1.1.3.2.1"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.3.2.2"></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.3"><span class="ltx_text" id="S4.T4.1.1.3.2.3.1" style="font-size:90%;">val</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.4"><span class="ltx_text" id="S4.T4.1.1.3.2.4.1" style="font-size:90%;">standard</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.5"><span class="ltx_text" id="S4.T4.1.1.3.2.5.1" style="font-size:90%;">vision</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.6"><span class="ltx_text" id="S4.T4.1.1.3.2.6.1" style="font-size:90%;">testmini</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.7"><span class="ltx_text" id="S4.T4.1.1.3.2.7.1" style="font-size:90%;">test</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.8"><span class="ltx_text" id="S4.T4.1.1.3.2.8.1" style="font-size:90%;">testmini</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.9"><span class="ltx_text" id="S4.T4.1.1.3.2.9.1" style="font-size:90%;">test</span></td>
<td class="ltx_td" id="S4.T4.1.1.3.2.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T4.1.1.4.3.1"><span class="ltx_text" id="S4.T4.1.1.4.3.1.1" style="font-size:90%;">Closed-sourced Models</span></th>
<td class="ltx_td ltx_border_t" id="S4.T4.1.1.4.3.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.5.4.1"><span class="ltx_text" id="S4.T4.1.1.5.4.1.1" style="font-size:90%;">GPT-4o</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.5.4.2"><span class="ltx_text" id="S4.T4.1.1.5.4.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5.4.3"><span class="ltx_text" id="S4.T4.1.1.5.4.3.1" style="font-size:90%;">69.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5.4.4"><span class="ltx_text" id="S4.T4.1.1.5.4.4.1" style="font-size:90%;">54.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5.4.5"><span class="ltx_text" id="S4.T4.1.1.5.4.5.1" style="font-size:90%;">49.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5.4.6"><span class="ltx_text" id="S4.T4.1.1.5.4.6.1" style="font-size:90%;">63.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5.4.7"><span class="ltx_text" id="S4.T4.1.1.5.4.7.1" style="font-size:90%;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5.4.8"><span class="ltx_text" id="S4.T4.1.1.5.4.8.1" style="font-size:90%;">50.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5.4.9"><span class="ltx_text" id="S4.T4.1.1.5.4.9.1" style="font-size:90%;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5.4.10"><span class="ltx_text" id="S4.T4.1.1.5.4.10.1" style="font-size:90%;">61.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.6.5.1"><span class="ltx_text" id="S4.T4.1.1.6.5.1.1" style="font-size:90%;">Gemini-1.5-Pro</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.6.5.2"><span class="ltx_text" id="S4.T4.1.1.6.5.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.3"><span class="ltx_text" id="S4.T4.1.1.6.5.3.1" style="font-size:90%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.4"><span class="ltx_text" id="S4.T4.1.1.6.5.4.1" style="font-size:90%;">49.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.5"><span class="ltx_text" id="S4.T4.1.1.6.5.5.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.6"><span class="ltx_text" id="S4.T4.1.1.6.5.6.1" style="font-size:90%;">63.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.7"><span class="ltx_text" id="S4.T4.1.1.6.5.7.1" style="font-size:90%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.8"><span class="ltx_text" id="S4.T4.1.1.6.5.8.1" style="font-size:90%;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.9"><span class="ltx_text" id="S4.T4.1.1.6.5.9.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.10"><span class="ltx_text" id="S4.T4.1.1.6.5.10.1" style="font-size:90%;">58.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.7.6.1"><span class="ltx_text" id="S4.T4.1.1.7.6.1.1" style="font-size:90%;">Claude-3.5-Sonnet</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.7.6.2"><span class="ltx_text" id="S4.T4.1.1.7.6.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.3"><span class="ltx_text" id="S4.T4.1.1.7.6.3.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.4"><span class="ltx_text" id="S4.T4.1.1.7.6.4.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.5"><span class="ltx_text" id="S4.T4.1.1.7.6.5.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.6"><span class="ltx_text" id="S4.T4.1.1.7.6.6.1" style="font-size:90%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.7"><span class="ltx_text" id="S4.T4.1.1.7.6.7.1" style="font-size:90%;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.8"><span class="ltx_text" id="S4.T4.1.1.7.6.8.1" style="font-size:90%;">44.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.9"><span class="ltx_text" id="S4.T4.1.1.7.6.9.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.10"><span class="ltx_text" id="S4.T4.1.1.7.6.10.1" style="font-size:90%;">59.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T4.1.1.8.7.1"><span class="ltx_text" id="S4.T4.1.1.8.7.1.1" style="font-size:90%;">Open-source General Vision-Language Models</span></th>
<td class="ltx_td ltx_border_t" id="S4.T4.1.1.8.7.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.9.8.1"><span class="ltx_text" id="S4.T4.1.1.9.8.1.1" style="font-size:90%;">Molmo</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.9.8.2"><span class="ltx_text" id="S4.T4.1.1.9.8.2.1" style="font-size:90%;">8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.3"><span class="ltx_text" id="S4.T4.1.1.9.8.3.1" style="font-size:90%;">45.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.4"><span class="ltx_text" id="S4.T4.1.1.9.8.4.1" style="font-size:90%;">28.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.5"><span class="ltx_text" id="S4.T4.1.1.9.8.5.1" style="font-size:90%;">18.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.6"><span class="ltx_text" id="S4.T4.1.1.9.8.6.1" style="font-size:90%;">51.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.7"><span class="ltx_text" id="S4.T4.1.1.9.8.7.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.8"><span class="ltx_text" id="S4.T4.1.1.9.8.8.1" style="font-size:90%;">18.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.9"><span class="ltx_text" id="S4.T4.1.1.9.8.9.1" style="font-size:90%;">41.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.10"><span class="ltx_text" id="S4.T4.1.1.9.8.10.1" style="font-size:90%;">37.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.10.9.1"><span class="ltx_text" id="S4.T4.1.1.10.9.1.1" style="font-size:90%;">Llava-OV</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.10.9.2"><span class="ltx_text" id="S4.T4.1.1.10.9.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.3"><span class="ltx_text" id="S4.T4.1.1.10.9.3.1" style="font-size:90%;">48.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.4"><span class="ltx_text" id="S4.T4.1.1.10.9.4.1" style="font-size:90%;">29.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.5"><span class="ltx_text" id="S4.T4.1.1.10.9.5.1" style="font-size:90%;">18.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.6"><span class="ltx_text" id="S4.T4.1.1.10.9.6.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.7"><span class="ltx_text" id="S4.T4.1.1.10.9.7.1" style="font-size:90%;">58.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.8"><span class="ltx_text" id="S4.T4.1.1.10.9.8.1" style="font-size:90%;">26.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.9"><span class="ltx_text" id="S4.T4.1.1.10.9.9.1" style="font-size:90%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.10"><span class="ltx_text" id="S4.T4.1.1.10.9.10.1" style="font-size:90%;">40.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.11.10.1"><span class="ltx_text" id="S4.T4.1.1.11.10.1.1" style="font-size:90%;">Llama-3.2-Inst</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.11.10.2"><span class="ltx_text" id="S4.T4.1.1.11.10.2.1" style="font-size:90%;">11B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.3"><span class="ltx_text" id="S4.T4.1.1.11.10.3.1" style="font-size:90%;">50.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.4"><span class="ltx_text" id="S4.T4.1.1.11.10.4.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.5"><span class="ltx_text" id="S4.T4.1.1.11.10.5.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.6"><span class="ltx_text" id="S4.T4.1.1.11.10.6.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.7"><span class="ltx_text" id="S4.T4.1.1.11.10.7.1" style="font-size:90%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.8"><span class="ltx_text" id="S4.T4.1.1.11.10.8.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.9"><span class="ltx_text" id="S4.T4.1.1.11.10.9.1" style="font-size:90%;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.10"><span class="ltx_text" id="S4.T4.1.1.11.10.10.1" style="font-size:90%;">41.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.12.11.1"><span class="ltx_text" id="S4.T4.1.1.12.11.1.1" style="font-size:90%;">Qwen2-VL</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.12.11.2"><span class="ltx_text" id="S4.T4.1.1.12.11.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.11.3"><span class="ltx_text" id="S4.T4.1.1.12.11.3.1" style="font-size:90%;">52.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.11.4"><span class="ltx_text" id="S4.T4.1.1.12.11.4.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.11.5"><span class="ltx_text" id="S4.T4.1.1.12.11.5.1" style="font-size:90%;">26.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.11.6"><span class="ltx_text" id="S4.T4.1.1.12.11.6.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.11.7"><span class="ltx_text" id="S4.T4.1.1.12.11.7.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.11.8"><span class="ltx_text" id="S4.T4.1.1.12.11.8.1" style="font-size:90%;">28.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.11.9"><span class="ltx_text" id="S4.T4.1.1.12.11.9.1" style="font-size:90%;">42.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.11.10"><span class="ltx_text" id="S4.T4.1.1.12.11.10.1" style="font-size:90%;">43.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.13.12.1"><span class="ltx_text" id="S4.T4.1.1.13.12.1.1" style="font-size:90%;">MAmmoTH-VL</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.13.12.2"><span class="ltx_text" id="S4.T4.1.1.13.12.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.3"><span class="ltx_text" id="S4.T4.1.1.13.12.3.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.4"><span class="ltx_text" id="S4.T4.1.1.13.12.4.1" style="font-size:90%;">33.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.5"><span class="ltx_text" id="S4.T4.1.1.13.12.5.1" style="font-size:90%;">25.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.13.12.6.1" style="font-size:90%;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.7"><span class="ltx_text" id="S4.T4.1.1.13.12.7.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.8"><span class="ltx_text" id="S4.T4.1.1.13.12.8.1" style="font-size:90%;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.9"><span class="ltx_text" id="S4.T4.1.1.13.12.9.1" style="font-size:90%;">44.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.10"><span class="ltx_text" id="S4.T4.1.1.13.12.10.1" style="font-size:90%;">45.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.14.13.1"><span class="ltx_text" id="S4.T4.1.1.14.13.1.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.14.13.2"><span class="ltx_text" id="S4.T4.1.1.14.13.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.13.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.14.13.3.1" style="font-size:90%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.13.4"><span class="ltx_text" id="S4.T4.1.1.14.13.4.1" style="font-size:90%;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.13.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.14.13.5.1" style="font-size:90%;">30.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.13.6"><span class="ltx_text" id="S4.T4.1.1.14.13.6.1" style="font-size:90%;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.13.7"><span class="ltx_text" id="S4.T4.1.1.14.13.7.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.13.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.14.13.8.1" style="font-size:90%;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.13.9"><span class="ltx_text" id="S4.T4.1.1.14.13.9.1" style="font-size:90%;">49.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.14.13.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.14.13.10.1" style="font-size:90%;">48.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.15.14.1"><span class="ltx_text" id="S4.T4.1.1.15.14.1.1" style="font-size:90%;">Phi-4-mini</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.15.14.2"><span class="ltx_text" id="S4.T4.1.1.15.14.2.1" style="font-size:90%;">5.6B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.14.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.15.14.3.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.14.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.15.14.4.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.14.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.15.14.5.1" style="font-size:90%;">31.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.14.6"><span class="ltx_text" id="S4.T4.1.1.15.14.6.1" style="font-size:90%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.14.7"><span class="ltx_text" id="S4.T4.1.1.15.14.7.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.14.8"><span class="ltx_text" id="S4.T4.1.1.15.14.8.1" style="font-size:90%;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.14.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.15.14.9.1" style="font-size:90%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.15.14.10"><span class="ltx_text" id="S4.T4.1.1.15.14.10.1" style="font-size:90%;">48.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.16.15.1"><span class="ltx_text" id="S4.T4.1.1.16.15.1.1" style="font-size:90%;">DeepSeek-VL2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.16.15.2"><span class="ltx_text" id="S4.T4.1.1.16.15.2.1" style="font-size:90%;">27B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.15.3"><span class="ltx_text" id="S4.T4.1.1.16.15.3.1" style="font-size:90%;">51.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.15.4"><span class="ltx_text" id="S4.T4.1.1.16.15.4.1" style="font-size:90%;">31.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.15.5"><span class="ltx_text" id="S4.T4.1.1.16.15.5.1" style="font-size:90%;">24.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.15.6"><span class="ltx_text" id="S4.T4.1.1.16.15.6.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.15.7"><span class="ltx_text" id="S4.T4.1.1.16.15.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.15.8"><span class="ltx_text" id="S4.T4.1.1.16.15.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.15.9"><span class="ltx_text" id="S4.T4.1.1.16.15.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.16.15.10"><span class="ltx_text" id="S4.T4.1.1.16.15.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.17.16.1"><span class="ltx_text" id="S4.T4.1.1.17.16.1.1" style="font-size:90%;">Llava-CoT-L</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.17.16.2"><span class="ltx_text" id="S4.T4.1.1.17.16.2.1" style="font-size:90%;">11B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.16.3"><span class="ltx_text" id="S4.T4.1.1.17.16.3.1" style="font-size:90%;">50.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.16.4"><span class="ltx_text" id="S4.T4.1.1.17.16.4.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.16.5"><span class="ltx_text" id="S4.T4.1.1.17.16.5.1" style="font-size:90%;">20.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.16.6"><span class="ltx_text" id="S4.T4.1.1.17.16.6.1" style="font-size:90%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.16.7"><span class="ltx_text" id="S4.T4.1.1.17.16.7.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.16.8"><span class="ltx_text" id="S4.T4.1.1.17.16.8.1" style="font-size:90%;">30.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.16.9"><span class="ltx_text" id="S4.T4.1.1.17.16.9.1" style="font-size:90%;">44.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.17.16.10"><span class="ltx_text" id="S4.T4.1.1.17.16.10.1" style="font-size:90%;">41.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.18.17.1"><span class="ltx_text" id="S4.T4.1.1.18.17.1.1" style="font-size:90%;">Llava-CoT-M</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.18.17.2"><span class="ltx_text" id="S4.T4.1.1.18.17.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.18.17.3"><span class="ltx_text" id="S4.T4.1.1.18.17.3.1" style="font-size:90%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.18.17.4"><span class="ltx_text" id="S4.T4.1.1.18.17.4.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.18.17.5"><span class="ltx_text" id="S4.T4.1.1.18.17.5.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.18.17.6"><span class="ltx_text" id="S4.T4.1.1.18.17.6.1" style="font-size:90%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.18.17.7"><span class="ltx_text" id="S4.T4.1.1.18.17.7.1" style="font-size:90%;">58.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.18.17.8"><span class="ltx_text" id="S4.T4.1.1.18.17.8.1" style="font-size:90%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.18.17.9"><span class="ltx_text" id="S4.T4.1.1.18.17.9.1" style="font-size:90%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.18.17.10"><span class="ltx_text" id="S4.T4.1.1.18.17.10.1" style="font-size:90%;">45.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.19.18.1"><span class="ltx_text" id="S4.T4.1.1.19.18.1.1" style="font-size:90%;">LlamaV-o1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.19.18.2"><span class="ltx_text" id="S4.T4.1.1.19.18.2.1" style="font-size:90%;">11B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.19.18.3"><span class="ltx_text" id="S4.T4.1.1.19.18.3.1" style="font-size:90%;">49.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.19.18.4"><span class="ltx_text" id="S4.T4.1.1.19.18.4.1" style="font-size:90%;">31.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.19.18.5"><span class="ltx_text" id="S4.T4.1.1.19.18.5.1" style="font-size:90%;">22.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.19.18.6"><span class="ltx_text" id="S4.T4.1.1.19.18.6.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.19.18.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.19.18.7.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.19.18.8"><span class="ltx_text" id="S4.T4.1.1.19.18.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.19.18.9"><span class="ltx_text" id="S4.T4.1.1.19.18.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.19.18.10"><span class="ltx_text" id="S4.T4.1.1.19.18.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.20.19.1"><span class="ltx_text" id="S4.T4.1.1.20.19.1.1" style="font-size:90%;">Mulberry</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.20.19.2"><span class="ltx_text" id="S4.T4.1.1.20.19.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.20.19.3"><span class="ltx_text" id="S4.T4.1.1.20.19.3.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.20.19.4"><span class="ltx_text" id="S4.T4.1.1.20.19.4.1" style="font-size:90%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.20.19.5"><span class="ltx_text" id="S4.T4.1.1.20.19.5.1" style="font-size:90%;">23.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.20.19.6"><span class="ltx_text" id="S4.T4.1.1.20.19.6.1" style="font-size:90%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.20.19.7"><span class="ltx_text" id="S4.T4.1.1.20.19.7.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.20.19.8"><span class="ltx_text" id="S4.T4.1.1.20.19.8.1" style="font-size:90%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.20.19.9"><span class="ltx_text" id="S4.T4.1.1.20.19.9.1" style="font-size:90%;">45.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.20.19.10"><span class="ltx_text" id="S4.T4.1.1.20.19.10.1" style="font-size:90%;">45.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.21.20.1"><span class="ltx_text" id="S4.T4.1.1.21.20.1.1" style="font-size:90%;">Insight-V</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.21.20.2"><span class="ltx_text" id="S4.T4.1.1.21.20.2.1" style="font-size:90%;">8B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.21.20.3"><span class="ltx_text" id="S4.T4.1.1.21.20.3.1" style="font-size:90%;">50.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.21.20.4"><span class="ltx_text" id="S4.T4.1.1.21.20.4.1" style="font-size:90%;">30.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.21.20.5"><span class="ltx_text" id="S4.T4.1.1.21.20.5.1" style="font-size:90%;">20.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.21.20.6"><span class="ltx_text" id="S4.T4.1.1.21.20.6.1" style="font-size:90%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.21.20.7"><span class="ltx_text" id="S4.T4.1.1.21.20.7.1" style="font-size:90%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.21.20.8"><span class="ltx_text" id="S4.T4.1.1.21.20.8.1" style="font-size:90%;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.21.20.9"><span class="ltx_text" id="S4.T4.1.1.21.20.9.1" style="font-size:90%;">47.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.21.20.10"><span class="ltx_text" id="S4.T4.1.1.21.20.10.1" style="font-size:90%;">42.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.22.21.1"><span class="ltx_text" id="S4.T4.1.1.22.21.1.1" style="font-size:90%;">MM-Eureka</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.22.21.2"><span class="ltx_text" id="S4.T4.1.1.22.21.2.1" style="font-size:90%;">8B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.22.21.3"><span class="ltx_text" id="S4.T4.1.1.22.21.3.1" style="font-size:90%;">49.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.22.21.4"><span class="ltx_text" id="S4.T4.1.1.22.21.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.22.21.5"><span class="ltx_text" id="S4.T4.1.1.22.21.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.22.21.6"><span class="ltx_text" id="S4.T4.1.1.22.21.6.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.22.21.7"><span class="ltx_text" id="S4.T4.1.1.22.21.7.1" style="font-size:90%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.22.21.8"><span class="ltx_text" id="S4.T4.1.1.22.21.8.1" style="font-size:90%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.22.21.9"><span class="ltx_text" id="S4.T4.1.1.22.21.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.22.21.10"><span class="ltx_text" id="S4.T4.1.1.22.21.10.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.23.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.23.22.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.23.22.1.1" style="font-size:90%;">MAmmoTH-VL2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.23.22.2"><span class="ltx_text" id="S4.T4.1.1.23.22.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.23.22.3"><span class="ltx_text" id="S4.T4.1.1.23.22.3.1" style="font-size:90%;">54.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.23.22.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.23.22.4.1" style="font-size:90%;">40.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.23.22.5"><span class="ltx_text" id="S4.T4.1.1.23.22.5.1" style="font-size:90%;">26.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.23.22.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.23.22.6.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.23.22.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.23.22.7.1" style="font-size:90%;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.23.22.8"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.23.22.8.1" style="font-size:90%;">42.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.23.22.9"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.23.22.9.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.23.22.10"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.23.22.10.1" style="font-size:90%;">50.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.1.1.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T4.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:90%;"> over SoTA</span>
</th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.1.1.1.2"></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.1.3"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="font-size:90%;">-1.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.1.4"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="font-size:90%;">+1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.1.5"><span class="ltx_text" id="S4.T4.1.1.1.5.1" style="font-size:90%;">-4.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.1.6"><span class="ltx_text" id="S4.T4.1.1.1.6.1" style="font-size:90%;">+2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.1.7"><span class="ltx_text" id="S4.T4.1.1.1.7.1" style="font-size:90%;">+0.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.1.8"><span class="ltx_text" id="S4.T4.1.1.1.8.1" style="font-size:90%;">+3.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.1.9"><span class="ltx_text" id="S4.T4.1.1.1.9.1" style="font-size:90%;">+4.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.1.10"><span class="ltx_text" id="S4.T4.1.1.1.10.1" style="font-size:90%;">+1.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of the performance of various vision-language models, including the authors' model (MAmmoTH-VL2), across seven different visual reasoning benchmarks.  The benchmarks cover a range of tasks and complexity levels, assessing the models' capabilities in handling various aspects of visual reasoning.  The table highlights the superior performance of the authors' model compared to other open-source models, particularly in mathematical reasoning tasks.  Results from closed-source models are also included for context.  The best and second-best performances among open-source models are clearly indicated.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation Results of our model and other baseline models. Most of the baseline results are taken from other papers. The best and second-best results across all open-source models are highlighted in bold and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.2.1.1.1"><span class="ltx_text" id="S4.T5.2.1.1.1.1" style="font-size:90%;">Training Data</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.2"><span class="ltx_text" id="S4.T5.2.1.1.2.1" style="font-size:90%;">MMMU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.3"><span class="ltx_text" id="S4.T5.2.1.1.3.1" style="font-size:90%;">MMMU-Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.4"><span class="ltx_text" id="S4.T5.2.1.1.4.1" style="font-size:90%;">MMMU-Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.5"><span class="ltx_text" id="S4.T5.2.1.1.5.1" style="font-size:90%;">MathVista</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.6"><span class="ltx_text" id="S4.T5.2.1.1.6.1" style="font-size:90%;">MMVet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.7"><span class="ltx_text" id="S4.T5.2.1.1.7.1" style="font-size:90%;">MathVerse</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.8"><span class="ltx_text" id="S4.T5.2.1.1.8.1" style="font-size:90%;">Dyna-Math</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.9"><span class="ltx_text" id="S4.T5.2.1.1.9.1" style="font-size:90%;">Avg</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T5.2.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.2"><span class="ltx_text" id="S4.T5.2.2.2.2.1" style="font-size:90%;">val</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.3"><span class="ltx_text" id="S4.T5.2.2.2.3.1" style="font-size:90%;">standard</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.4"><span class="ltx_text" id="S4.T5.2.2.2.4.1" style="font-size:90%;">vision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.5"><span class="ltx_text" id="S4.T5.2.2.2.5.1" style="font-size:90%;">testmini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.6"><span class="ltx_text" id="S4.T5.2.2.2.6.1" style="font-size:90%;">test</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.7"><span class="ltx_text" id="S4.T5.2.2.2.7.1" style="font-size:90%;">testmini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.8"><span class="ltx_text" id="S4.T5.2.2.2.8.1" style="font-size:90%;">test</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T5.2.2.2.9"></th>
</tr>
<tr class="ltx_tr" id="S4.T5.2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="9" id="S4.T5.2.3.3.1"><span class="ltx_text" id="S4.T5.2.3.3.1.1" style="font-size:90%;">Training from LLava-OV-mid</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.2.4.1.1"><span class="ltx_text" id="S4.T5.2.4.1.1.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.4.1.2"><span class="ltx_text" id="S4.T5.2.4.1.2.1" style="font-size:90%;">40.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.4.1.3"><span class="ltx_text" id="S4.T5.2.4.1.3.1" style="font-size:90%;">21.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.4.1.4"><span class="ltx_text" id="S4.T5.2.4.1.4.1" style="font-size:90%;">12.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.4.1.5"><span class="ltx_text" id="S4.T5.2.4.1.5.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.4.1.6"><span class="ltx_text" id="S4.T5.2.4.1.6.1" style="font-size:90%;">32.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.4.1.7"><span class="ltx_text" id="S4.T5.2.4.1.7.1" style="font-size:90%;">18.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.4.1.8"><span class="ltx_text" id="S4.T5.2.4.1.8.1" style="font-size:90%;">24.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.4.1.9"><span class="ltx_text" id="S4.T5.2.4.1.9.1" style="font-size:90%;">26.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.5.2.1"><span class="ltx_text" id="S4.T5.2.5.2.1.1" style="font-size:90%;">Llava-CoT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2.2"><span class="ltx_text" id="S4.T5.2.5.2.2.1" style="font-size:90%;">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2.3"><span class="ltx_text" id="S4.T5.2.5.2.3.1" style="font-size:90%;">25.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2.4"><span class="ltx_text" id="S4.T5.2.5.2.4.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2.5"><span class="ltx_text" id="S4.T5.2.5.2.5.1" style="font-size:90%;">45.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2.6"><span class="ltx_text" id="S4.T5.2.5.2.6.1" style="font-size:90%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2.7"><span class="ltx_text" id="S4.T5.2.5.2.7.1" style="font-size:90%;">27.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2.8"><span class="ltx_text" id="S4.T5.2.5.2.8.1" style="font-size:90%;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2.9"><span class="ltx_text" id="S4.T5.2.5.2.9.1" style="font-size:90%;">33.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.6.3.1"><span class="ltx_text" id="S4.T5.2.6.3.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3.2"><span class="ltx_text" id="S4.T5.2.6.3.2.1" style="font-size:90%;">45.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3.3"><span class="ltx_text" id="S4.T5.2.6.3.3.1" style="font-size:90%;">31.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.6.3.4.1" style="font-size:90%;">20.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3.5"><span class="ltx_text" id="S4.T5.2.6.3.5.1" style="font-size:90%;">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3.6"><span class="ltx_text ltx_font_bold" id="S4.T5.2.6.3.6.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3.7"><span class="ltx_text" id="S4.T5.2.6.3.7.1" style="font-size:90%;">27.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3.8"><span class="ltx_text" id="S4.T5.2.6.3.8.1" style="font-size:90%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3.9"><span class="ltx_text" id="S4.T5.2.6.3.9.1" style="font-size:90%;">38.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.7.4.1"><span class="ltx_text" id="S4.T5.2.7.4.1.1" style="font-size:90%;">Ours+Llava-CoT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.7.4.2.1" style="font-size:90%;">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4.3"><span class="ltx_text ltx_font_bold" id="S4.T5.2.7.4.3.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.7.4.4.1" style="font-size:90%;">20.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4.5"><span class="ltx_text ltx_font_bold" id="S4.T5.2.7.4.5.1" style="font-size:90%;">48.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4.6"><span class="ltx_text" id="S4.T5.2.7.4.6.1" style="font-size:90%;">51.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4.7"><span class="ltx_text ltx_font_bold" id="S4.T5.2.7.4.7.1" style="font-size:90%;">34.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4.8"><span class="ltx_text ltx_font_bold" id="S4.T5.2.7.4.8.1" style="font-size:90%;">42.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.7.4.9"><span class="ltx_text ltx_font_bold" id="S4.T5.2.7.4.9.1" style="font-size:90%;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T5.2.8.5.1"><span class="ltx_text" id="S4.T5.2.8.5.1.1" style="font-size:90%;">Training from MAmmoTH-VL</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.2.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.2.9.6.1"><span class="ltx_text" id="S4.T5.2.9.6.1.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6.2"><span class="ltx_text" id="S4.T5.2.9.6.2.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6.3"><span class="ltx_text" id="S4.T5.2.9.6.3.1" style="font-size:90%;">34.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6.4"><span class="ltx_text" id="S4.T5.2.9.6.4.1" style="font-size:90%;">25.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6.5"><span class="ltx_text" id="S4.T5.2.9.6.5.1" style="font-size:90%;">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6.6"><span class="ltx_text" id="S4.T5.2.9.6.6.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6.7"><span class="ltx_text" id="S4.T5.2.9.6.7.1" style="font-size:90%;">34.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6.8"><span class="ltx_text" id="S4.T5.2.9.6.8.1" style="font-size:90%;">44.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6.9"><span class="ltx_text" id="S4.T5.2.9.6.9.1" style="font-size:90%;">45.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.10.7.1"><span class="ltx_text" id="S4.T5.2.10.7.1.1" style="font-size:90%;">Llava-CoT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.7.2"><span class="ltx_text" id="S4.T5.2.10.7.2.1" style="font-size:90%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.7.3"><span class="ltx_text" id="S4.T5.2.10.7.3.1" style="font-size:90%;">35.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.7.4"><span class="ltx_text" id="S4.T5.2.10.7.4.1" style="font-size:90%;">24.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.7.5"><span class="ltx_text" id="S4.T5.2.10.7.5.1" style="font-size:90%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.7.6"><span class="ltx_text" id="S4.T5.2.10.7.6.1" style="font-size:90%;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.7.7"><span class="ltx_text" id="S4.T5.2.10.7.7.1" style="font-size:90%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.7.8"><span class="ltx_text" id="S4.T5.2.10.7.8.1" style="font-size:90%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.7.9"><span class="ltx_text" id="S4.T5.2.10.7.9.1" style="font-size:90%;">45.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.11.8.1"><span class="ltx_text" id="S4.T5.2.11.8.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.11.8.2"><span class="ltx_text" id="S4.T5.2.11.8.2.1" style="font-size:90%;">52.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.11.8.3"><span class="ltx_text" id="S4.T5.2.11.8.3.1" style="font-size:90%;">38.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.11.8.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.11.8.4.1" style="font-size:90%;">29.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.11.8.5"><span class="ltx_text" id="S4.T5.2.11.8.5.1" style="font-size:90%;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.11.8.6"><span class="ltx_text" id="S4.T5.2.11.8.6.1" style="font-size:90%;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.11.8.7"><span class="ltx_text" id="S4.T5.2.11.8.7.1" style="font-size:90%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.11.8.8"><span class="ltx_text" id="S4.T5.2.11.8.8.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.11.8.9"><span class="ltx_text" id="S4.T5.2.11.8.9.1" style="font-size:90%;">49.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.2.12.9.1"><span class="ltx_text" id="S4.T5.2.12.9.1.1" style="font-size:90%;">Ours+Llava-CoT</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.12.9.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.12.9.2.1" style="font-size:90%;">54.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.12.9.3"><span class="ltx_text ltx_font_bold" id="S4.T5.2.12.9.3.1" style="font-size:90%;">40.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.12.9.4"><span class="ltx_text" id="S4.T5.2.12.9.4.1" style="font-size:90%;">26.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.12.9.5"><span class="ltx_text ltx_font_bold" id="S4.T5.2.12.9.5.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.12.9.6"><span class="ltx_text ltx_font_bold" id="S4.T5.2.12.9.6.1" style="font-size:90%;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.12.9.7"><span class="ltx_text ltx_font_bold" id="S4.T5.2.12.9.7.1" style="font-size:90%;">42.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.12.9.8"><span class="ltx_text ltx_font_bold" id="S4.T5.2.12.9.8.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.12.9.9"><span class="ltx_text ltx_font_bold" id="S4.T5.2.12.9.9.1" style="font-size:90%;">50.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results, showing the impact of different training data and their combinations on model performance.  It compares two base models, Llava-OV-mid and MAmmoTH-VL, trained using various datasets: Llava-CoT, VisualWebInstruct, and a combination of both.  The results are presented as average scores across seven benchmarks (MMMU, MMMU-Pro, MathVista, MMVet, MathVerse, DynaMath) for each training configuration. The best performance for each base model is highlighted in bold, illustrating the contribution of the VisualWebInstruct dataset and data mixing strategies to improved performance on various visual reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation Results of our experiments. We show experimental results from different backbones to show the impact of consistency filtering and data mixing with Llava-CoT. For each base model, the best performance is highlighted in bold.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10582/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10582/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}