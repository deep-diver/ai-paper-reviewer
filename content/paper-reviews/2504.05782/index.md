---
title: "MDK12-Bench: A Multi-Discipline Benchmark for Evaluating Reasoning in Multimodal Large Language Models"
summary: "MDK12-Bench: A multi-discipline benchmark that assesses reasoning in multimodal large language models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-04-08
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05782 {{< /keyword >}}
{{< keyword icon="writer" >}} Pengfei Zhou et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05782" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05782" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05782/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal reasoning, integrating visual and linguistic cues, is crucial for achieving Artificial General Intelligence. However, existing benchmarks for evaluating Multimodal Large Language Models(MLLMs) often have limited data size, focus on narrow domain. They lack structured knowledge distribution, making it difficult to evaluate the true capabilities of MLLMs in real-world complex scenarios. It is really difficult to have reliable benchmarks to assess their real-world reasoning capabilities.



To address these issues, this paper introduces a new benchmark that assesses MLLMs' reasoning capabilities using real-world K-12 examinations across Math, Physics, Chemistry, and more. This benchmark features a large-scale dataset with detailed knowledge point annotations and answer explanations. Additionally, the paper presents a dynamic evaluation framework that mitigates data contamination by generating new test samples through bootstrapping. Experiments on this benchmark reveal current MLLMs' limitations in multimodal reasoning, which shows the potential for the next generation models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MDK12-Bench is a comprehensive, multi-disciplinary benchmark for evaluating MLLMs' reasoning capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A dynamic evaluation framework mitigates data contamination and provides flexible multimodal data transformation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Current MLLMs show limitations in multi-modal reasoning, particularly sensitivity to changes. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces a new multimodal reasoning benchmark and a dynamic evaluation framework, offering researchers a robust platform for evaluating and advancing MLLMs. The insights into model limitations and sensitivity to contextual changes can guide the development of more reliable and adaptable AI systems, which significantly contribute to the progress of AGI. **It highlights the need for improving the adaptability and contextual understanding of MLLMs, encouraging further research in these areas.**

------
#### Visual Insights



![](https://arxiv.org/html/2504.05782/x1.png)

> 🔼 MDK12-Bench is a multi-disciplinary benchmark for evaluating reasoning in multimodal large language models (MLLMs).  It contains 140,000 real-world K-12 exam questions across six subjects (math, physics, chemistry, biology, geography, and information science).  The questions span various difficulty levels (easy, medium, hard) and grade levels (elementary, middle, high school).  The figure displays the structure of the benchmark's knowledge system, which is organized into six levels (discipline, grade, curriculum, topic, meta-knowledge, and key knowledge points). It also shows example questions and answers from different subjects and difficulty levels, highlighting the diverse question formats included (multiple choice, open-ended, fill-in-the-blank, true/false).
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MDK12-Bench. It comprises 140K instances and spans 6 disciplines in K-12 education. The knowledge system of our bench is structured into six fine-grained levels: discipline, grade, curriculum, topic, meta-knowledge, and key knowledge points, where the three rings showcase the first three levels. Examples illustrate the representative grades (elementary, middle, and high schools), difficulty levels (easy, medium, and high), questions and answers, and key knowledge points of each discipline. The diverse question forms (single- and multiple-choice, open-ended question, fill-in-blank, true-or-false) and detailed answer explanations are also demonstrated.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2">
<tr class="ltx_tr" id="S1.T1.2.1">
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" id="S1.T1.2.1.1"><span class="ltx_text" id="S1.T1.2.1.1.1" style="font-size:90%;">Benchmarks</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S1.T1.2.1.2"><span class="ltx_text" id="S1.T1.2.1.2.1" style="font-size:90%;">Data Coverage</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S1.T1.2.1.3" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.1.3.1">
<span class="ltx_p" id="S1.T1.2.1.3.1.1" style="width:31.3pt;"><span class="ltx_text ltx_align_center" id="S1.T1.2.1.3.1.1.1" style="font-size:90%;">Modality</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S1.T1.2.1.4" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.1.4.1">
<span class="ltx_p" id="S1.T1.2.1.4.1.1" style="width:37.0pt;"><span class="ltx_text ltx_align_center" id="S1.T1.2.1.4.1.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S1.T1.2.1.4.1.1.1.1" style="width:34.1pt;">
<span class="ltx_p" id="S1.T1.2.1.4.1.1.1.1.1">Explanation</span>
<span class="ltx_p" id="S1.T1.2.1.4.1.1.1.1.2">Annotation</span>
</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S1.T1.2.1.5" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.1.5.1">
<span class="ltx_p" id="S1.T1.2.1.5.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.1.5.1.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S1.T1.2.1.5.1.1.1.1" style="width:34.1pt;">
<span class="ltx_p" id="S1.T1.2.1.5.1.1.1.1.1">Structured</span>
<span class="ltx_p ltx_align_center" id="S1.T1.2.1.5.1.1.1.1.2">Knowlege</span>
</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S1.T1.2.1.6" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.1.6.1">
<span class="ltx_p" id="S1.T1.2.1.6.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.1.6.1.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S1.T1.2.1.6.1.1.1.1" style="width:34.1pt;">
<span class="ltx_p" id="S1.T1.2.1.6.1.1.1.1.1">Dynamic</span>
<span class="ltx_p ltx_align_center" id="S1.T1.2.1.6.1.1.1.1.2">Evaluation</span>
</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.1.1">
<span class="ltx_p" id="S1.T1.2.2.1.1.1" style="width:71.1pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" id="S1.T1.2.2.2"><span class="ltx_text" id="S1.T1.2.2.2.1" style="font-size:90%;">Level</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.3.1">
<span class="ltx_p" id="S1.T1.2.2.3.1.1" style="width:34.1pt;"><span class="ltx_text" id="S1.T1.2.2.3.1.1.1" style="font-size:90%;">#Instances</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.4.1">
<span class="ltx_p" id="S1.T1.2.2.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S1.T1.2.2.4.1.1.1" style="font-size:90%;">#Images</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.5.1">
<span class="ltx_p" id="S1.T1.2.2.5.1.1" style="width:91.0pt;"><span class="ltx_text" id="S1.T1.2.2.5.1.1.1" style="font-size:90%;">Question Type</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.1.1">
<span class="ltx_p" id="S1.T1.2.3.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S1.T1.2.3.1.1.1.1" style="font-size:90%;">MMBench </span><cite class="ltx_cite ltx_align_left ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.3.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05782v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S1.T1.2.3.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.2.1">
<span class="ltx_p" id="S1.T1.2.3.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S1.T1.2.3.2.1.1.1" style="font-size:90%;">Low-order</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.3.1">
<span class="ltx_p" id="S1.T1.2.3.3.1.1" style="width:34.1pt;"><span class="ltx_text" id="S1.T1.2.3.3.1.1.1" style="font-size:90%;">3.2K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.4">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.4.1">
<span class="ltx_p" id="S1.T1.2.3.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S1.T1.2.3.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.5">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.5.1">
<span class="ltx_p" id="S1.T1.2.3.5.1.1" style="width:91.0pt;"><span class="ltx_text" id="S1.T1.2.3.5.1.1.1" style="font-size:90%;">MC</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.6">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.6.1">
<span class="ltx_p" id="S1.T1.2.3.6.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.3.6.1.1.1" style="font-size:90%;">I+T</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.7">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.7.1">
<span class="ltx_p" id="S1.T1.2.3.7.1.1" style="width:37.0pt;"><span class="ltx_text" id="S1.T1.2.3.7.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.8">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.8.1">
<span class="ltx_p" id="S1.T1.2.3.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.3.8.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.3.9">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.3.9.1">
<span class="ltx_p" id="S1.T1.2.3.9.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.3.9.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.1.1">
<span class="ltx_p" id="S1.T1.2.4.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S1.T1.2.4.1.1.1.1" style="font-size:90%;">MMIU </span><cite class="ltx_cite ltx_align_left ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.4.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05782v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S1.T1.2.4.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.2.1">
<span class="ltx_p" id="S1.T1.2.4.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S1.T1.2.4.2.1.1.1" style="font-size:90%;">Low-order</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.3.1">
<span class="ltx_p" id="S1.T1.2.4.3.1.1" style="width:34.1pt;"><span class="ltx_text" id="S1.T1.2.4.3.1.1.1" style="font-size:90%;">11.6K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.4.4">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.4.1">
<span class="ltx_p" id="S1.T1.2.4.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S1.T1.2.4.4.1.1.1" style="font-size:90%;">77K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.4.5">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.5.1">
<span class="ltx_p" id="S1.T1.2.4.5.1.1" style="width:91.0pt;"><span class="ltx_text" id="S1.T1.2.4.5.1.1.1" style="font-size:90%;">MC, Open</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.4.6">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.6.1">
<span class="ltx_p" id="S1.T1.2.4.6.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.4.6.1.1.1" style="font-size:90%;">I+T</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.4.7">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.7.1">
<span class="ltx_p" id="S1.T1.2.4.7.1.1" style="width:37.0pt;"><span class="ltx_text" id="S1.T1.2.4.7.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.4.8">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.8.1">
<span class="ltx_p" id="S1.T1.2.4.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.4.8.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S1.T1.2.4.9">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.4.9.1">
<span class="ltx_p" id="S1.T1.2.4.9.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.4.9.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.1.1">
<span class="ltx_p" id="S1.T1.2.5.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S1.T1.2.5.1.1.1.1" style="font-size:90%;">MMT-Bench</span><cite class="ltx_cite ltx_align_left ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.5.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05782v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S1.T1.2.5.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.2.1">
<span class="ltx_p" id="S1.T1.2.5.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S1.T1.2.5.2.1.1.1" style="font-size:90%;">Low-order</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.3.1">
<span class="ltx_p" id="S1.T1.2.5.3.1.1" style="width:34.1pt;"><span class="ltx_text" id="S1.T1.2.5.3.1.1.1" style="font-size:90%;">31.2K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.5.4">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.4.1">
<span class="ltx_p" id="S1.T1.2.5.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S1.T1.2.5.4.1.1.1" style="font-size:90%;">31.2K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.5.5">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.5.1">
<span class="ltx_p" id="S1.T1.2.5.5.1.1" style="width:91.0pt;"><span class="ltx_text" id="S1.T1.2.5.5.1.1.1" style="font-size:90%;">MC</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.5.6">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.6.1">
<span class="ltx_p" id="S1.T1.2.5.6.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.5.6.1.1.1" style="font-size:90%;">I+T</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.5.7">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.7.1">
<span class="ltx_p" id="S1.T1.2.5.7.1.1" style="width:37.0pt;"><span class="ltx_text" id="S1.T1.2.5.7.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.5.8">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.8.1">
<span class="ltx_p" id="S1.T1.2.5.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.5.8.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S1.T1.2.5.9">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.5.9.1">
<span class="ltx_p" id="S1.T1.2.5.9.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.5.9.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.1.1">
<span class="ltx_p" id="S1.T1.2.6.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S1.T1.2.6.1.1.1.1" style="font-size:90%;">EMMA </span><cite class="ltx_cite ltx_align_left ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.6.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05782v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S1.T1.2.6.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.2.1">
<span class="ltx_p" id="S1.T1.2.6.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S1.T1.2.6.2.1.1.1" style="font-size:90%;">College</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.3.1">
<span class="ltx_p" id="S1.T1.2.6.3.1.1" style="width:34.1pt;"><span class="ltx_text" id="S1.T1.2.6.3.1.1.1" style="font-size:90%;">2.7K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.6.4">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.4.1">
<span class="ltx_p" id="S1.T1.2.6.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S1.T1.2.6.4.1.1.1" style="font-size:90%;">3K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.6.5">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.5.1">
<span class="ltx_p" id="S1.T1.2.6.5.1.1" style="width:91.0pt;"><span class="ltx_text" id="S1.T1.2.6.5.1.1.1" style="font-size:90%;">MC, Open</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.6.6">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.6.1">
<span class="ltx_p" id="S1.T1.2.6.6.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.6.6.1.1.1" style="font-size:90%;">I+T</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.6.7">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.7.1">
<span class="ltx_p" id="S1.T1.2.6.7.1.1" style="width:37.0pt;"><span class="ltx_text" id="S1.T1.2.6.7.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.6.8">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.8.1">
<span class="ltx_p" id="S1.T1.2.6.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.6.8.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S1.T1.2.6.9">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.6.9.1">
<span class="ltx_p" id="S1.T1.2.6.9.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.6.9.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.1.1">
<span class="ltx_p" id="S1.T1.2.7.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S1.T1.2.7.1.1.1.1" style="font-size:90%;">MMMU </span><cite class="ltx_cite ltx_align_left ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.7.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05782v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S1.T1.2.7.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.2.1">
<span class="ltx_p" id="S1.T1.2.7.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S1.T1.2.7.2.1.1.1" style="font-size:90%;">College</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.3.1">
<span class="ltx_p" id="S1.T1.2.7.3.1.1" style="width:34.1pt;"><span class="ltx_text" id="S1.T1.2.7.3.1.1.1" style="font-size:90%;">11.5K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.7.4">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.4.1">
<span class="ltx_p" id="S1.T1.2.7.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S1.T1.2.7.4.1.1.1" style="font-size:90%;">12.3K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.7.5">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.5.1">
<span class="ltx_p" id="S1.T1.2.7.5.1.1" style="width:91.0pt;"><span class="ltx_text" id="S1.T1.2.7.5.1.1.1" style="font-size:90%;">MC, Open</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.7.6">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.6.1">
<span class="ltx_p" id="S1.T1.2.7.6.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.7.6.1.1.1" style="font-size:90%;">I+T</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.7.7">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.7.1">
<span class="ltx_p" id="S1.T1.2.7.7.1.1" style="width:37.0pt;"><span class="ltx_text" id="S1.T1.2.7.7.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.7.8">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.8.1">
<span class="ltx_p" id="S1.T1.2.7.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.7.8.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S1.T1.2.7.9">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.7.9.1">
<span class="ltx_p" id="S1.T1.2.7.9.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.7.9.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.1.1">
<span class="ltx_p" id="S1.T1.2.8.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S1.T1.2.8.1.1.1.1" style="font-size:90%;">DrawEduMath </span><cite class="ltx_cite ltx_align_left ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.2.8.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.05782v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S1.T1.2.8.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.2.1">
<span class="ltx_p" id="S1.T1.2.8.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S1.T1.2.8.2.1.1.1" style="font-size:90%;">K12-Math</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.3.1">
<span class="ltx_p" id="S1.T1.2.8.3.1.1" style="width:34.1pt;"><span class="ltx_text" id="S1.T1.2.8.3.1.1.1" style="font-size:90%;">44K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.8.4">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.4.1">
<span class="ltx_p" id="S1.T1.2.8.4.1.1" style="width:28.5pt;"><span class="ltx_text" id="S1.T1.2.8.4.1.1.1" style="font-size:90%;">2.3K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.8.5">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.5.1">
<span class="ltx_p" id="S1.T1.2.8.5.1.1" style="width:91.0pt;"><span class="ltx_text" id="S1.T1.2.8.5.1.1.1" style="font-size:90%;">Open</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.8.6">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.6.1">
<span class="ltx_p" id="S1.T1.2.8.6.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.8.6.1.1.1" style="font-size:90%;">I+T</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.8.7">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.7.1">
<span class="ltx_p" id="S1.T1.2.8.7.1.1" style="width:37.0pt;"><span class="ltx_text" id="S1.T1.2.8.7.1.1.1" style="font-size:90%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T1.2.8.8">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.8.1">
<span class="ltx_p" id="S1.T1.2.8.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.8.8.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S1.T1.2.8.9">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.8.9.1">
<span class="ltx_p" id="S1.T1.2.8.9.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.8.9.1.1.1" style="font-size:90%;">✗</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.1.1">
<span class="ltx_p" id="S1.T1.2.9.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S1.T1.2.9.1.1.1.1" style="font-size:90%;">MDK12-Bench</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.2.1">
<span class="ltx_p" id="S1.T1.2.9.2.1.1" style="width:45.5pt;"><span class="ltx_text" id="S1.T1.2.9.2.1.1.1" style="font-size:90%;">K-12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.3.1">
<span class="ltx_p" id="S1.T1.2.9.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S1.T1.2.9.3.1.1.1" style="font-size:90%;">141.3K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.4">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.4.1">
<span class="ltx_p" id="S1.T1.2.9.4.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S1.T1.2.9.4.1.1.1" style="font-size:90%;">105.2K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.5">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.5.1">
<span class="ltx_p" id="S1.T1.2.9.5.1.1" style="width:91.0pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S1.T1.2.9.5.1.1.1" style="font-size:90%;">MC, Fill, T/F, Open</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.6">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.6.1">
<span class="ltx_p" id="S1.T1.2.9.6.1.1" style="width:31.3pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S1.T1.2.9.6.1.1.1" style="font-size:90%;">T, I+T</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.7">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.7.1">
<span class="ltx_p" id="S1.T1.2.9.7.1.1" style="width:37.0pt;"><span class="ltx_text" id="S1.T1.2.9.7.1.1.1" style="font-size:90%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.8">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.8.1">
<span class="ltx_p" id="S1.T1.2.9.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.9.8.1.1.1" style="font-size:90%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.9.9">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.9.9.1">
<span class="ltx_p" id="S1.T1.2.9.9.1.1" style="width:31.3pt;"><span class="ltx_text" id="S1.T1.2.9.9.1.1.1" style="font-size:90%;">✓</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares MDK12-Bench with other multimodal reasoning benchmarks.  It highlights MDK12-Bench's superior size and scope (141.3K instances across six disciplines), its systematic knowledge organization, and its novel dynamic evaluation to mitigate data bias.  The table details the type of reasoning (low-order vs. K-12), the number of instances and images, the question format (multiple choice, open-ended, etc.), and whether structured knowledge annotations and dynamic evaluation were used. Abbreviations such as T (text), I (image), MC (multiple-choice), and Open (open-ended) are also defined.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between our MDK12-Bench and existing multimodal reaonsing benchmarks. MDK12-Bench includes more comprehensive data and question coverage. The systematic knowledge structuring and dynamic test-time augmentation also provide more reliable and fair evaluation of MLLMs. T: Text; I: Image. MC: multiple-choice; Open: open-ended; Fill: fill-in-the-blank; T/F: true or false; Low-order reasoning: commonsense, image quality judgement, relation, attribute reasonings, etc.
> </details>





### In-depth insights


#### MDK12-Bench
MDK12-Bench, a multi-discipline benchmark, emerges as a crucial tool for evaluating reasoning in MLLMs using real-world K-12 examinations. Addressing limitations of existing benchmarks, it offers a **larger dataset**, **broader domain coverage** (math, physics, chemistry, biology, geography, information science), and a **structured knowledge distribution**. MDK12-Bench features 140K reasoning instances, 6,827 knowledge point annotations linked to a knowledge tree, detailed explanations, difficulty labels, and cross-year partitions. A novel dynamic evaluation framework mitigates data contamination by bootstrapping question forms and image styles. Experiments on MDK12-Bench reveal limitations in current MLLMs, offering insights for developing next-generation models. The benchmark and dynamic framework promise more robust and fair evaluations, challenging AI toward artificial general intelligence. MDK12-Bench aims to provide a comprehensive platform for evaluating and improving multimodal reasoning capabilities. 

#### Dynamic Eval
Dynamic evaluation is a crucial aspect of benchmarking MLLMs. The paper recognizes that static benchmarks are vulnerable to **data contamination**, where test items appear in the MLLM's training data, leading to inflated performance metrics. To address this, the study introduces a novel framework that dynamically transforms both textual and visual components of questions. This involves techniques like word substitution, paraphrasing, question type permutation for text, and image expansion, color shift and style transfer for visual elements. By **bootstrapping** new test samples in this manner, the framework aims to challenge MLLMs with unseen data, providing a more reliable assessment of their true reasoning capabilities. The dynamic approach ensures the benchmark remains relevant and robust as models evolve and training datasets expand.This mitigates biases introduced by memorization and superficial pattern matching, ensuring the evaluation genuinely reflects the model's capacity for reasoning and generalization. This framework effectively maintains benchmark integrity.

#### K12 Reasoning
K12 reasoning, as presented in the paper, offers a structured and interconnected learning environment, ideal for evaluating MLLMs. K-12 education provides a **broad spectrum of subjects** that test knowledge comprehension and high-order thinking skills. Unlike higher education's specialized learning, K-12's **systematic curriculum** makes it an ideal testbed. MDK12-Bench leverages this structure to assess reasoning capabilities across multiple disciplines. The benchmark's design is **rooted in the K-12 educational framework**, using real-world examinations to challenge MLLMs. This ensures the benchmark accurately reflects the diverse, interconnected knowledge required for K-12 success. The **breadth and depth** offered are vital for pushing MLLMs beyond basic understanding towards complex problem-solving. By focusing on this stage, the research aims to identify and address limitations in current AI models, paving the way for more advanced reasoning.

#### Multimodal AGI
Multimodal AGI represents a pivotal pursuit, aiming to create AI systems that emulate human-level cognitive abilities by integrating and reasoning across diverse data modalities like text, images, and audio. The development of effective benchmarks like MDK12-Bench is crucial for **assessing and advancing** MLLMs towards this goal. Overcoming challenges such as limited data scope, narrow domain coverage, and unstructured knowledge distribution is essential. **Dynamic evaluation frameworks** that mitigate data contamination and the sensitivity of MLLMs to contextual shifts are also key. The creation of robust multimodal reasoning models will enhance AI's ability to understand and interact with the world in a more nuanced and context-aware manner. Ultimately leading to more **sophisticated and human-like artificial general intelligence**.

#### Robust MLLMs
While not explicitly addressed in the provided paper, the concept of "Robust MLLMs" is critical. Building robust multimodal large language models (MLLMs) requires addressing vulnerabilities to adversarial attacks and ensuring consistent performance across diverse data distributions. Key considerations for robustness include: **1) Adversarial Training:** Techniques to fortify models against crafted inputs intended to cause failures. **2) Data Augmentation:** Strategies to expand training datasets with diverse, realistic variations to improve generalization. **3) Uncertainty Estimation:** Methods for models to quantify their confidence in predictions, enabling rejection of uncertain cases. **4) Explainable AI (XAI):** Approaches to increase transparency, identifying potential failure points. Robust MLLMs are essential for reliable deployment in real-world scenarios where unpredictable or malicious inputs may arise. Addressing the robustness is a critical aspect for reliable reasoning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05782/x2.png)

> 🔼 Figure 2 illustrates the creation and statistical properties of the MDK12-Bench dataset.  Panel (a) details the four-stage data curation process: data collection from various K-12 exams, data screening to filter out low-quality entries, data parsing to organize the information into a structured format, and data processing for consistency and translation. The figure also highlights the six hierarchical levels used to structure knowledge within the benchmark: discipline, grade, curriculum, topic, meta-knowledge, and key knowledge point. Panels (b), (c), and (d) present the distribution of data across these levels: (b) shows instance counts by discipline and grade, (c) displays high school curriculum instance counts, and (d) shows instance counts for elementary and middle school curricula.  Examples of curriculum-level knowledge points are also included for clarity.
> <details>
> <summary>read the caption</summary>
> Figure 2: Data curation and statistics of our MDK12-Bench. (a) The data curation pipeline consists of four stages: data collection, screening, parsing, and processing. The knowledge in our benchmark is structured into six interconnected levels: Level 1 - discipline, Level 2 - grade, Level 3 - curriculum, Level 4 - topics, Level 5 - meta-knowledge, and Level 6 - key knowledge point. Statistics of knowledge coverage of our bench is illustrated in terms of the number of instance occurrences at (b) discipline and grade levels; (c) high-school curriculum level; and (d) elementary- and middle-school curriculum level. Examples of curriculum-level knowledge points are also demonstrated.
> </details>



![](https://arxiv.org/html/2504.05782/x3.png)

> 🔼 This figure illustrates the dynamic evaluation pipeline for multimodal large language models (MLLMs).  It addresses the problem of data contamination by using image and text bootstrapping techniques to create variations of the original questions. The image bootstrapping module applies spatial, color, and style transformations to the images, while the text bootstrapping module uses word substitution, sentence paraphrasing, and question type permutation to modify the text. A two-stage answer evaluation module then compares the model's answers to the ground truth, using GPT as an intermediary to parse the model's response and determine the final score. This process helps to provide a more robust and fair evaluation of MLLM reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: The proposed dynamic MLLMs evaluation pipeline. It includes an image and a text bootstrapping module to mitigate data contamination and a two-stage answer evaluation module comparing the model answers with ground truth.
> </details>



![](https://arxiv.org/html/2504.05782/x4.png)

> 🔼 This figure presents a bar chart visualization showing the performance of the Gemini2-thinking model on the MDK12-Mini dataset.  It specifically focuses on Level 5 Meta Knowledge points, ranking them by the model's average accuracy.  The chart allows for a detailed analysis of model strengths and weaknesses across various high-level knowledge areas within the dataset, revealing where the model excels and where it struggles.
> <details>
> <summary>read the caption</summary>
> Figure 4: Knowledge points (Level 5 - Meta Knowledge) ranked by mean accuracy of Gemini2-thinking on MDK12-Mini dataset.
> </details>



![](https://arxiv.org/html/2504.05782/x5.png)

> 🔼 This figure displays the breakdown of accuracy across different disciplines and difficulty levels of the MDK12-Mini benchmark over various exam years (from 2016 to 2025).  It provides a visual representation of model performance trends over time, showing how accuracy fluctuates across different years and question types. This allows for analysis of model performance consistency and potential biases related to year-specific patterns in the exam data.
> <details>
> <summary>read the caption</summary>
> Figure 5: Breakdown of accuracy on MDK12-Mini across different exam years.
> </details>



![](https://arxiv.org/html/2504.05782/x6.png)

> 🔼 Figure 6 presents a comprehensive evaluation of various Multimodal Large Language Models (MLLMs) on the complete MDK12-Bench dataset.  It displays the accuracy of each MLLM across six different academic disciplines: mathematics, physics, chemistry, biology, geography, and information science.  The results are further broken down by grade level, showing performance at the elementary, middle school, and high school levels. This allows for a nuanced understanding of each model's strengths and weaknesses across different subjects and levels of educational complexity.
> <details>
> <summary>read the caption</summary>
> Figure 6: Accuracy of MLLMs on full-set of MDK12-Bench. We demonstrate the results across six disciplines (mathematics, physics, chemistry, biology, geography, and information science) and three grade levels (elementary, middle school, and high school).
> </details>



![](https://arxiv.org/html/2504.05782/x7.png)

> 🔼 This figure illustrates the progressive testing strategy employed in evaluating models using the MDK12-Bench benchmark.  It starts by evaluating models on smaller subsets (mini-subsets) of the data.  These subsets allow for efficient initial evaluation, particularly for computationally intensive models.  Based on the performance on these subsets, specific knowledge points or question types where the model struggles can be identified. Then, a targeted subset is created focusing on these areas of weakness from the full dataset. This allows for a deeper, more focused evaluation. Finally, a complete evaluation is performed on the full MDK12-Bench dataset. This approach ensures a more efficient and insightful evaluation process by initially focusing on areas needing improvement, before performing a full evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Test logic of using subsets and the fullset data of MDK12-Bench progressively.
> </details>



![](https://arxiv.org/html/2504.05782/x8.png)

> 🔼 This figure illustrates the performance of the InternVL2.5-8B model on a subset of the MDK12-Mini benchmark.  It shows how accuracy changes when using various combinations of dynamic image and text bootstrapping techniques. Each bar represents the average accuracy across 'easy', 'medium', and 'hard' difficulty levels for a specific combination of bootstrapping methods.  The x-axis categorizes the combinations, showing the model's robustness against different levels of data augmentation. The y-axis shows the accuracy percentage.
> <details>
> <summary>read the caption</summary>
> Figure 8: Accuracy of InternVL2.5-8B on the sampled subset using different combinations of dynamic bootstrapping strategies.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.4">
<tr class="ltx_tr" id="S3.T2.4.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.4.1.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.1" style="font-size:90%;">Overall Statistics</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.4.2.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.2.1.1" style="font-size:90%;">Total instances</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.4.2.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.2.2.1" style="font-size:90%;">141,320</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.3">
<td class="ltx_td ltx_align_left" id="S3.T2.4.3.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.3.1.1" style="font-size:90%;">Text-only instances</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.3.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.3.2.1" style="font-size:90%;">77,857</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4">
<td class="ltx_td ltx_align_left" id="S3.T2.4.4.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.4.1.1" style="font-size:90%;">Multimodal instances</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.4.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.4.2.1" style="font-size:90%;">63,463</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.5">
<td class="ltx_td ltx_align_left" id="S3.T2.4.5.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.5.1.1" style="font-size:90%;">Total images</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.5.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.5.2.1" style="font-size:90%;">105,218</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.6">
<td class="ltx_td ltx_align_left" id="S3.T2.4.6.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.6.1.1" style="font-size:90%;">Exam years coverage</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.6.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.6.2.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.7">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.4.7.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.7.1.1" style="font-size:90%;">Knowledge Structure</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.4.8.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.8.1.1" style="font-size:90%;">Knowledge levels</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.4.8.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.8.2.1" style="font-size:90%;">6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.9">
<td class="ltx_td ltx_align_left" id="S3.T2.4.9.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.9.1.1" style="font-size:90%;">Total knowledge points</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.9.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.9.2.1" style="font-size:90%;">6,827</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.10">
<td class="ltx_td ltx_align_left" id="S3.T2.4.10.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.10.1.1" style="font-size:90%;">Level 1&amp;2 knowledge points</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.10.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.10.2.1" style="font-size:90%;">13</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.11">
<td class="ltx_td ltx_align_left" id="S3.T2.4.11.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.11.1.1" style="font-size:90%;">Level 3 knowledge points</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.11.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.11.2.1" style="font-size:90%;">90</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.12">
<td class="ltx_td ltx_align_left" id="S3.T2.4.12.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.12.1.1" style="font-size:90%;">Level 4 knowledge points</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.12.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.12.2.1" style="font-size:90%;">499</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.13">
<td class="ltx_td ltx_align_left" id="S3.T2.4.13.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.13.1.1" style="font-size:90%;">Level 5&amp;6 knowledge points</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.13.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.13.2.1" style="font-size:90%;">6,225</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.14">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.4.14.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.14.1.1" style="font-size:90%;">Mini-Subsets</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.4.15.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.15.1.1" style="font-size:90%;">Total instances</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.4.15.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.15.2.1" style="font-size:90%;">14,595</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.16">
<td class="ltx_td ltx_align_left" id="S3.T2.4.16.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.16.1.1" style="font-size:90%;">Easy-level instances</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.16.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.16.2.1" style="font-size:90%;">4.951</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.17">
<td class="ltx_td ltx_align_left" id="S3.T2.4.17.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.17.1.1" style="font-size:90%;">Medium-level instances</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.4.17.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.17.2.1" style="font-size:90%;">4,692</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.4.18.1" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.18.1.1" style="font-size:90%;">Hard-level instances</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.4.18.2" style="padding-top:-1.35pt;padding-bottom:-1.35pt;"><span class="ltx_text" id="S3.T2.4.18.2.1" style="font-size:90%;">4,952</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 provides key statistics of the MDK12-Bench benchmark dataset.  It details the overall number of instances, a breakdown of text-only versus multimodal instances, the total number of images included, the number of years of exam data covered, details about the structured knowledge system used to organize the data (including the number of knowledge levels and total knowledge points), and statistics on three smaller subsets of the data designed for easier experimentation. These subsets are created to include varying difficulty levels and provide a representative sample of the full dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Key Statistics of MDK12-Bench
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.2">
<tr class="ltx_tr" id="S4.T3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1" style="font-size:90%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.1.2.1">
<span class="ltx_p" id="S4.T3.2.1.2.1.1" style="width:21.3pt;"><span class="ltx_text ltx_align_left ltx_font_bold" id="S4.T3.2.1.2.1.1.1" style="font-size:90%;">Overall</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T3.2.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.1" style="font-size:90%;">Easy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T3.2.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.4.1" style="font-size:90%;">Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T3.2.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.5.1" style="font-size:90%;">Hard</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.1.1">
<span class="ltx_p" id="S4.T3.2.2.1.1.1" style="width:82.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.2.1">
<span class="ltx_p" id="S4.T3.2.2.2.1.1" style="width:21.3pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.3.1.1"><span class="ltx_text" id="S4.T3.2.2.3.1.1.1" style="font-size:90%;">Math</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.4.1.1"><span class="ltx_text" id="S4.T3.2.2.4.1.1.1" style="font-size:90%;">Phys</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.5.1.1"><span class="ltx_text" id="S4.T3.2.2.5.1.1.1" style="font-size:90%;">Chem</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.6.1.1"><span class="ltx_text" id="S4.T3.2.2.6.1.1.1" style="font-size:90%;">Bio</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.7.1.1"><span class="ltx_text" id="S4.T3.2.2.7.1.1.1" style="font-size:90%;">Geo</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.8.1.1"><span class="ltx_text" id="S4.T3.2.2.8.1.1.1" style="font-size:90%;">IS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.9.1.1"><span class="ltx_text" id="S4.T3.2.2.9.1.1.1" style="font-size:90%;">Math</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.10.1.1"><span class="ltx_text" id="S4.T3.2.2.10.1.1.1" style="font-size:90%;">Phys</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.11.1.1"><span class="ltx_text" id="S4.T3.2.2.11.1.1.1" style="font-size:90%;">Chem</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.12.1.1"><span class="ltx_text" id="S4.T3.2.2.12.1.1.1" style="font-size:90%;">Bio</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.13.1.1"><span class="ltx_text" id="S4.T3.2.2.13.1.1.1" style="font-size:90%;">Geo</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.14.1.1"><span class="ltx_text" id="S4.T3.2.2.14.1.1.1" style="font-size:90%;">IS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.15.1.1"><span class="ltx_text" id="S4.T3.2.2.15.1.1.1" style="font-size:90%;">Math</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.16.1.1"><span class="ltx_text" id="S4.T3.2.2.16.1.1.1" style="font-size:90%;">Phys</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.17.1.1"><span class="ltx_text" id="S4.T3.2.2.17.1.1.1" style="font-size:90%;">Chem</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.18.1.1"><span class="ltx_text" id="S4.T3.2.2.18.1.1.1" style="font-size:90%;">Bio</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.19.1.1"><span class="ltx_text" id="S4.T3.2.2.19.1.1.1" style="font-size:90%;">Geo</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.2.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.2.20.1.1"><span class="ltx_text" id="S4.T3.2.2.20.1.1.1" style="font-size:90%;">IS</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.1.1">
<span class="ltx_p" id="S4.T3.2.3.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.3.1.1.1.1" style="font-size:90%;">Gemini2-thinking</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.2.1">
<span class="ltx_p" id="S4.T3.2.3.2.1.1" style="width:21.3pt;"><span class="ltx_text ltx_align_left ltx_font_bold" id="S4.T3.2.3.2.1.1.1" style="font-size:90%;">59.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.3.1.1.1" style="font-size:90%;">60.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.4.1.1.1" style="font-size:90%;">56.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.5.1.1.1" style="font-size:90%;">70.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.6.1.1"><span class="ltx_text" id="S4.T3.2.3.6.1.1.1" style="font-size:90%;">69.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.7.1.1"><span class="ltx_text" id="S4.T3.2.3.7.1.1.1" style="font-size:90%;">59.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.8.1.1"><span class="ltx_text" id="S4.T3.2.3.8.1.1.1" style="font-size:90%;">65.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.9.1.1.1" style="font-size:90%;">52.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.10.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.10.1.1.1" style="font-size:90%;">52.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.11.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.11.1.1.1" style="font-size:90%;">67.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.12.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.12.1.1.1" style="font-size:90%;">68.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.13.1.1"><span class="ltx_text" id="S4.T3.2.3.13.1.1.1" style="font-size:90%;">57.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.14.1.1"><span class="ltx_text" id="S4.T3.2.3.14.1.1.1" style="font-size:90%;">59.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.15.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.15.1.1.1" style="font-size:90%;">48.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.16.1.1"><span class="ltx_text" id="S4.T3.2.3.16.1.1.1" style="font-size:90%;">55.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.17.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.17.1.1.1" style="font-size:90%;">62.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.18.1.1"><span class="ltx_text" id="S4.T3.2.3.18.1.1.1" style="font-size:90%;">58.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.19.1.1"><span class="ltx_text" id="S4.T3.2.3.19.1.1.1" style="font-size:90%;">64.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T3.2.3.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.3.20.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.20.1.1.1" style="font-size:90%;">67.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.1.1">
<span class="ltx_p" id="S4.T3.2.4.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.4.1.1.1.1" style="font-size:90%;">Gemini2-flash</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.2.1">
<span class="ltx_p" id="S4.T3.2.4.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.4.2.1.1.1" style="font-size:90%;">57.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.3.1.1"><span class="ltx_text" id="S4.T3.2.4.3.1.1.1" style="font-size:90%;">51.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.4.1.1"><span class="ltx_text" id="S4.T3.2.4.4.1.1.1" style="font-size:90%;">53.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.5.1.1"><span class="ltx_text" id="S4.T3.2.4.5.1.1.1" style="font-size:90%;">66.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.6.1.1"><span class="ltx_text" id="S4.T3.2.4.6.1.1.1" style="font-size:90%;">66.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.7.1.1"><span class="ltx_text" id="S4.T3.2.4.7.1.1.1" style="font-size:90%;">55.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.8.1.1"><span class="ltx_text" id="S4.T3.2.4.8.1.1.1" style="font-size:90%;">62.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.9.1.1"><span class="ltx_text" id="S4.T3.2.4.9.1.1.1" style="font-size:90%;">48.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.10.1.1"><span class="ltx_text" id="S4.T3.2.4.10.1.1.1" style="font-size:90%;">48.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.11.1.1"><span class="ltx_text" id="S4.T3.2.4.11.1.1.1" style="font-size:90%;">63.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.12.1.1"><span class="ltx_text" id="S4.T3.2.4.12.1.1.1" style="font-size:90%;">65.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.13.1.1"><span class="ltx_text" id="S4.T3.2.4.13.1.1.1" style="font-size:90%;">53.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.14.1.1"><span class="ltx_text" id="S4.T3.2.4.14.1.1.1" style="font-size:90%;">55.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.15.1.1"><span class="ltx_text" id="S4.T3.2.4.15.1.1.1" style="font-size:90%;">44.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.16.1.1"><span class="ltx_text" id="S4.T3.2.4.16.1.1.1" style="font-size:90%;">51.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.17.1.1"><span class="ltx_text" id="S4.T3.2.4.17.1.1.1" style="font-size:90%;">59.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.18.1.1"><span class="ltx_text" id="S4.T3.2.4.18.1.1.1" style="font-size:90%;">54.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.19.1.1"><span class="ltx_text" id="S4.T3.2.4.19.1.1.1" style="font-size:90%;">60.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.4.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.4.20.1.1"><span class="ltx_text" id="S4.T3.2.4.20.1.1.1" style="font-size:90%;">63.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.1.1">
<span class="ltx_p" id="S4.T3.2.5.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.5.1.1.1.1" style="font-size:90%;">Claude-3.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.2.1">
<span class="ltx_p" id="S4.T3.2.5.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.5.2.1.1.1" style="font-size:90%;">49.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.3.1.1"><span class="ltx_text" id="S4.T3.2.5.3.1.1.1" style="font-size:90%;">54.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.4.1.1"><span class="ltx_text" id="S4.T3.2.5.4.1.1.1" style="font-size:90%;">47.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.5.1.1"><span class="ltx_text" id="S4.T3.2.5.5.1.1.1" style="font-size:90%;">59.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.6.1.1"><span class="ltx_text" id="S4.T3.2.5.6.1.1.1" style="font-size:90%;">63.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.7.1.1"><span class="ltx_text" id="S4.T3.2.5.7.1.1.1" style="font-size:90%;">50.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.8.1.1"><span class="ltx_text" id="S4.T3.2.5.8.1.1.1" style="font-size:90%;">55.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.9.1.1"><span class="ltx_text" id="S4.T3.2.5.9.1.1.1" style="font-size:90%;">44.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.10.1.1"><span class="ltx_text" id="S4.T3.2.5.10.1.1.1" style="font-size:90%;">43.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.11.1.1"><span class="ltx_text" id="S4.T3.2.5.11.1.1.1" style="font-size:90%;">56.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.12.1.1"><span class="ltx_text" id="S4.T3.2.5.12.1.1.1" style="font-size:90%;">52.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.13.1.1"><span class="ltx_text" id="S4.T3.2.5.13.1.1.1" style="font-size:90%;">48.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.14.1.1"><span class="ltx_text" id="S4.T3.2.5.14.1.1.1" style="font-size:90%;">51.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.15.1.1"><span class="ltx_text" id="S4.T3.2.5.15.1.1.1" style="font-size:90%;">38.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.16.1.1"><span class="ltx_text" id="S4.T3.2.5.16.1.1.1" style="font-size:90%;">44.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.17.1.1"><span class="ltx_text" id="S4.T3.2.5.17.1.1.1" style="font-size:90%;">49.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.18.1.1"><span class="ltx_text" id="S4.T3.2.5.18.1.1.1" style="font-size:90%;">48.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.19.1.1"><span class="ltx_text" id="S4.T3.2.5.19.1.1.1" style="font-size:90%;">45.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.5.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.5.20.1.1"><span class="ltx_text" id="S4.T3.2.5.20.1.1.1" style="font-size:90%;">49.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.1.1">
<span class="ltx_p" id="S4.T3.2.6.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.6.1.1.1.1" style="font-size:90%;">GPT-o1-mini</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.2.1">
<span class="ltx_p" id="S4.T3.2.6.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.6.2.1.1.1" style="font-size:90%;">53.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.3.1.1"><span class="ltx_text" id="S4.T3.2.6.3.1.1.1" style="font-size:90%;">53.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.4.1.1"><span class="ltx_text" id="S4.T3.2.6.4.1.1.1" style="font-size:90%;">53.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.5.1.1"><span class="ltx_text" id="S4.T3.2.6.5.1.1.1" style="font-size:90%;">42.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.6.1.1"><span class="ltx_text" id="S4.T3.2.6.6.1.1.1" style="font-size:90%;">55.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.7.1.1"><span class="ltx_text" id="S4.T3.2.6.7.1.1.1" style="font-size:90%;">55.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.8.1.1"><span class="ltx_text" id="S4.T3.2.6.8.1.1.1" style="font-size:90%;">63.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.9.1.1"><span class="ltx_text" id="S4.T3.2.6.9.1.1.1" style="font-size:90%;">47.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.10.1.1"><span class="ltx_text" id="S4.T3.2.6.10.1.1.1" style="font-size:90%;">44.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.11.1.1"><span class="ltx_text" id="S4.T3.2.6.11.1.1.1" style="font-size:90%;">46.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.12.1.1"><span class="ltx_text" id="S4.T3.2.6.12.1.1.1" style="font-size:90%;">55.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.13.1.1"><span class="ltx_text" id="S4.T3.2.6.13.1.1.1" style="font-size:90%;">50.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.14.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.6.14.1.1.1" style="font-size:90%;">64.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.15.1.1"><span class="ltx_text" id="S4.T3.2.6.15.1.1.1" style="font-size:90%;">40.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.16.1.1"><span class="ltx_text" id="S4.T3.2.6.16.1.1.1" style="font-size:90%;">54.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.17.1.1"><span class="ltx_text" id="S4.T3.2.6.17.1.1.1" style="font-size:90%;">47.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.18.1.1"><span class="ltx_text" id="S4.T3.2.6.18.1.1.1" style="font-size:90%;">52.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.19.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.6.19.1.1.1" style="font-size:90%;">64.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.6.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.6.20.1.1"><span class="ltx_text" id="S4.T3.2.6.20.1.1.1" style="font-size:90%;">64.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.1.1">
<span class="ltx_p" id="S4.T3.2.7.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.7.1.1.1.1" style="font-size:90%;">GPT-4o</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.2.1">
<span class="ltx_p" id="S4.T3.2.7.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.7.2.1.1.1" style="font-size:90%;">50.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.3.1.1"><span class="ltx_text" id="S4.T3.2.7.3.1.1.1" style="font-size:90%;">51.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.4.1.1"><span class="ltx_text" id="S4.T3.2.7.4.1.1.1" style="font-size:90%;">55.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.5.1.1"><span class="ltx_text" id="S4.T3.2.7.5.1.1.1" style="font-size:90%;">61.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.6.1.1"><span class="ltx_text" id="S4.T3.2.7.6.1.1.1" style="font-size:90%;">55.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.7.1.1"><span class="ltx_text" id="S4.T3.2.7.7.1.1.1" style="font-size:90%;">46.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.8.1.1"><span class="ltx_text" id="S4.T3.2.7.8.1.1.1" style="font-size:90%;">57.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.9.1.1"><span class="ltx_text" id="S4.T3.2.7.9.1.1.1" style="font-size:90%;">44.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.10.1.1"><span class="ltx_text" id="S4.T3.2.7.10.1.1.1" style="font-size:90%;">46.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.11.1.1"><span class="ltx_text" id="S4.T3.2.7.11.1.1.1" style="font-size:90%;">50.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.12.1.1"><span class="ltx_text" id="S4.T3.2.7.12.1.1.1" style="font-size:90%;">56.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.13.1.1"><span class="ltx_text" id="S4.T3.2.7.13.1.1.1" style="font-size:90%;">49.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.14.1.1"><span class="ltx_text" id="S4.T3.2.7.14.1.1.1" style="font-size:90%;">40.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.15.1.1"><span class="ltx_text" id="S4.T3.2.7.15.1.1.1" style="font-size:90%;">36.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.16.1.1"><span class="ltx_text" id="S4.T3.2.7.16.1.1.1" style="font-size:90%;">46.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.17.1.1"><span class="ltx_text" id="S4.T3.2.7.17.1.1.1" style="font-size:90%;">58.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.18.1.1"><span class="ltx_text" id="S4.T3.2.7.18.1.1.1" style="font-size:90%;">54.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.19.1.1"><span class="ltx_text" id="S4.T3.2.7.19.1.1.1" style="font-size:90%;">49.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.7.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.7.20.1.1"><span class="ltx_text" id="S4.T3.2.7.20.1.1.1" style="font-size:90%;">49.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.1.1">
<span class="ltx_p" id="S4.T3.2.8.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.8.1.1.1.1" style="font-size:90%;">QVQ-72B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.2.1">
<span class="ltx_p" id="S4.T3.2.8.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.8.2.1.1.1" style="font-size:90%;">53.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.3.1.1"><span class="ltx_text" id="S4.T3.2.8.3.1.1.1" style="font-size:90%;">45.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.4.1.1"><span class="ltx_text" id="S4.T3.2.8.4.1.1.1" style="font-size:90%;">51.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.5.1.1"><span class="ltx_text" id="S4.T3.2.8.5.1.1.1" style="font-size:90%;">69.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.6.1.1"><span class="ltx_text" id="S4.T3.2.8.6.1.1.1" style="font-size:90%;">58.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.7.1.1"><span class="ltx_text" id="S4.T3.2.8.7.1.1.1" style="font-size:90%;">48.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.8.1.1"><span class="ltx_text" id="S4.T3.2.8.8.1.1.1" style="font-size:90%;">56.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.9.1.1"><span class="ltx_text" id="S4.T3.2.8.9.1.1.1" style="font-size:90%;">46.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.10.1.1"><span class="ltx_text" id="S4.T3.2.8.10.1.1.1" style="font-size:90%;">43.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.11.1.1"><span class="ltx_text" id="S4.T3.2.8.11.1.1.1" style="font-size:90%;">49.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.12.1.1"><span class="ltx_text" id="S4.T3.2.8.12.1.1.1" style="font-size:90%;">55.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.13.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.8.13.1.1.1" style="font-size:90%;">57.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.14.1.1"><span class="ltx_text" id="S4.T3.2.8.14.1.1.1" style="font-size:90%;">59.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.15.1.1"><span class="ltx_text" id="S4.T3.2.8.15.1.1.1" style="font-size:90%;">45.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.16.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.8.16.1.1.1" style="font-size:90%;">63.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.17.1.1"><span class="ltx_text" id="S4.T3.2.8.17.1.1.1" style="font-size:90%;">54.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.18.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.8.18.1.1.1" style="font-size:90%;">60.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.19.1.1"><span class="ltx_text" id="S4.T3.2.8.19.1.1.1" style="font-size:90%;">58.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.8.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.8.20.1.1"><span class="ltx_text" id="S4.T3.2.8.20.1.1.1" style="font-size:90%;">58.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.1.1">
<span class="ltx_p" id="S4.T3.2.9.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.9.1.1.1.1" style="font-size:90%;">Qwen2.5-VL-72B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.2.1">
<span class="ltx_p" id="S4.T3.2.9.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.9.2.1.1.1" style="font-size:90%;">51.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.3.1.1"><span class="ltx_text" id="S4.T3.2.9.3.1.1.1" style="font-size:90%;">44.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.4.1.1"><span class="ltx_text" id="S4.T3.2.9.4.1.1.1" style="font-size:90%;">48.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.5.1.1"><span class="ltx_text" id="S4.T3.2.9.5.1.1.1" style="font-size:90%;">54.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.6.1.1"><span class="ltx_text" id="S4.T3.2.9.6.1.1.1" style="font-size:90%;">63.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.7.1.1"><span class="ltx_text" id="S4.T3.2.9.7.1.1.1" style="font-size:90%;">57.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.8.1.1"><span class="ltx_text" id="S4.T3.2.9.8.1.1.1" style="font-size:90%;">64.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.9.1.1"><span class="ltx_text" id="S4.T3.2.9.9.1.1.1" style="font-size:90%;">40.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.10.1.1"><span class="ltx_text" id="S4.T3.2.9.10.1.1.1" style="font-size:90%;">43.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.11.1.1"><span class="ltx_text" id="S4.T3.2.9.11.1.1.1" style="font-size:90%;">50.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.12.1.1"><span class="ltx_text" id="S4.T3.2.9.12.1.1.1" style="font-size:90%;">57.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.13.1.1"><span class="ltx_text" id="S4.T3.2.9.13.1.1.1" style="font-size:90%;">47.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.14.1.1"><span class="ltx_text" id="S4.T3.2.9.14.1.1.1" style="font-size:90%;">56.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.15.1.1"><span class="ltx_text" id="S4.T3.2.9.15.1.1.1" style="font-size:90%;">43.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.16.1.1"><span class="ltx_text" id="S4.T3.2.9.16.1.1.1" style="font-size:90%;">45.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.17.1.1"><span class="ltx_text" id="S4.T3.2.9.17.1.1.1" style="font-size:90%;">50.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.18.1.1"><span class="ltx_text" id="S4.T3.2.9.18.1.1.1" style="font-size:90%;">53.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.19.1.1"><span class="ltx_text" id="S4.T3.2.9.19.1.1.1" style="font-size:90%;">53.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.9.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.9.20.1.1"><span class="ltx_text" id="S4.T3.2.9.20.1.1.1" style="font-size:90%;">64.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.1.1">
<span class="ltx_p" id="S4.T3.2.10.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.10.1.1.1.1" style="font-size:90%;">Qwen2.5-VL-7B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.2.1">
<span class="ltx_p" id="S4.T3.2.10.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.10.2.1.1.1" style="font-size:90%;">47.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.3.1.1"><span class="ltx_text" id="S4.T3.2.10.3.1.1.1" style="font-size:90%;">44.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.4.1.1"><span class="ltx_text" id="S4.T3.2.10.4.1.1.1" style="font-size:90%;">54.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.5.1.1"><span class="ltx_text" id="S4.T3.2.10.5.1.1.1" style="font-size:90%;">50.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.6.1.1"><span class="ltx_text" id="S4.T3.2.10.6.1.1.1" style="font-size:90%;">62.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.7.1.1"><span class="ltx_text" id="S4.T3.2.10.7.1.1.1" style="font-size:90%;">44.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.8.1.1"><span class="ltx_text" id="S4.T3.2.10.8.1.1.1" style="font-size:90%;">31.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.9.1.1"><span class="ltx_text" id="S4.T3.2.10.9.1.1.1" style="font-size:90%;">41.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.10.1.1"><span class="ltx_text" id="S4.T3.2.10.10.1.1.1" style="font-size:90%;">46.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.11.1.1"><span class="ltx_text" id="S4.T3.2.10.11.1.1.1" style="font-size:90%;">49.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.12.1.1"><span class="ltx_text" id="S4.T3.2.10.12.1.1.1" style="font-size:90%;">59.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.13.1.1"><span class="ltx_text" id="S4.T3.2.10.13.1.1.1" style="font-size:90%;">41.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.14.1.1"><span class="ltx_text" id="S4.T3.2.10.14.1.1.1" style="font-size:90%;">26.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.15.1.1"><span class="ltx_text" id="S4.T3.2.10.15.1.1.1" style="font-size:90%;">38.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.16.1.1"><span class="ltx_text" id="S4.T3.2.10.16.1.1.1" style="font-size:90%;">48.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.17.1.1"><span class="ltx_text" id="S4.T3.2.10.17.1.1.1" style="font-size:90%;">41.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.18.1.1"><span class="ltx_text" id="S4.T3.2.10.18.1.1.1" style="font-size:90%;">57.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.19.1.1"><span class="ltx_text" id="S4.T3.2.10.19.1.1.1" style="font-size:90%;">49.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.10.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.10.20.1.1"><span class="ltx_text" id="S4.T3.2.10.20.1.1.1" style="font-size:90%;">31.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.11.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.1.1">
<span class="ltx_p" id="S4.T3.2.11.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.11.1.1.1.1" style="font-size:90%;">Qwen2-VL-7B-GRPO</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.2.1">
<span class="ltx_p" id="S4.T3.2.11.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.11.2.1.1.1" style="font-size:90%;">44.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.3.1.1"><span class="ltx_text" id="S4.T3.2.11.3.1.1.1" style="font-size:90%;">37.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.4.1.1"><span class="ltx_text" id="S4.T3.2.11.4.1.1.1" style="font-size:90%;">48.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.5.1.1"><span class="ltx_text" id="S4.T3.2.11.5.1.1.1" style="font-size:90%;">46.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.6.1.1"><span class="ltx_text" id="S4.T3.2.11.6.1.1.1" style="font-size:90%;">52.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.7.1.1"><span class="ltx_text" id="S4.T3.2.11.7.1.1.1" style="font-size:90%;">45.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.8.1.1"><span class="ltx_text" id="S4.T3.2.11.8.1.1.1" style="font-size:90%;">38.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.9.1.1"><span class="ltx_text" id="S4.T3.2.11.9.1.1.1" style="font-size:90%;">40.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.10.1.1"><span class="ltx_text" id="S4.T3.2.11.10.1.1.1" style="font-size:90%;">45.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.11.1.1"><span class="ltx_text" id="S4.T3.2.11.11.1.1.1" style="font-size:90%;">45.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.12.1.1"><span class="ltx_text" id="S4.T3.2.11.12.1.1.1" style="font-size:90%;">48.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.13.1.1"><span class="ltx_text" id="S4.T3.2.11.13.1.1.1" style="font-size:90%;">44.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.14.1.1"><span class="ltx_text" id="S4.T3.2.11.14.1.1.1" style="font-size:90%;">35.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.15.1.1"><span class="ltx_text" id="S4.T3.2.11.15.1.1.1" style="font-size:90%;">42.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.16.1.1"><span class="ltx_text" id="S4.T3.2.11.16.1.1.1" style="font-size:90%;">46.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.17.1.1"><span class="ltx_text" id="S4.T3.2.11.17.1.1.1" style="font-size:90%;">43.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.18.1.1"><span class="ltx_text" id="S4.T3.2.11.18.1.1.1" style="font-size:90%;">47.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.19.1.1"><span class="ltx_text" id="S4.T3.2.11.19.1.1.1" style="font-size:90%;">45.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.11.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.11.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.11.20.1.1"><span class="ltx_text" id="S4.T3.2.11.20.1.1.1" style="font-size:90%;">38.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.1.1">
<span class="ltx_p" id="S4.T3.2.12.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.12.1.1.1.1" style="font-size:90%;">Qwen2-VL-7B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.2.1">
<span class="ltx_p" id="S4.T3.2.12.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.12.2.1.1.1" style="font-size:90%;">43.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.3.1.1"><span class="ltx_text" id="S4.T3.2.12.3.1.1.1" style="font-size:90%;">38.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.4.1.1"><span class="ltx_text" id="S4.T3.2.12.4.1.1.1" style="font-size:90%;">55.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.5.1.1"><span class="ltx_text" id="S4.T3.2.12.5.1.1.1" style="font-size:90%;">45.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.6.1.1"><span class="ltx_text" id="S4.T3.2.12.6.1.1.1" style="font-size:90%;">58.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.7.1.1"><span class="ltx_text" id="S4.T3.2.12.7.1.1.1" style="font-size:90%;">44.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.8.1.1"><span class="ltx_text" id="S4.T3.2.12.8.1.1.1" style="font-size:90%;">35.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.9.1.1"><span class="ltx_text" id="S4.T3.2.12.9.1.1.1" style="font-size:90%;">31.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.10.1.1"><span class="ltx_text" id="S4.T3.2.12.10.1.1.1" style="font-size:90%;">45.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.11.1.1"><span class="ltx_text" id="S4.T3.2.12.11.1.1.1" style="font-size:90%;">46.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.12.1.1"><span class="ltx_text" id="S4.T3.2.12.12.1.1.1" style="font-size:90%;">54.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.13.1.1"><span class="ltx_text" id="S4.T3.2.12.13.1.1.1" style="font-size:90%;">39.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.14.1.1"><span class="ltx_text" id="S4.T3.2.12.14.1.1.1" style="font-size:90%;">18.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.15.1.1"><span class="ltx_text" id="S4.T3.2.12.15.1.1.1" style="font-size:90%;">33.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.16.1.1"><span class="ltx_text" id="S4.T3.2.12.16.1.1.1" style="font-size:90%;">45.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.17.1.1"><span class="ltx_text" id="S4.T3.2.12.17.1.1.1" style="font-size:90%;">41.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.18.1.1"><span class="ltx_text" id="S4.T3.2.12.18.1.1.1" style="font-size:90%;">54.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.19.1.1"><span class="ltx_text" id="S4.T3.2.12.19.1.1.1" style="font-size:90%;">42.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.12.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.12.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.12.20.1.1"><span class="ltx_text" id="S4.T3.2.12.20.1.1.1" style="font-size:90%;">31.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.1.1">
<span class="ltx_p" id="S4.T3.2.13.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.13.1.1.1.1" style="font-size:90%;">InternVL2.5-MPO</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.2.1">
<span class="ltx_p" id="S4.T3.2.13.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.13.2.1.1.1" style="font-size:90%;">51.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.3.1.1"><span class="ltx_text" id="S4.T3.2.13.3.1.1.1" style="font-size:90%;">51.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.4.1.1"><span class="ltx_text" id="S4.T3.2.13.4.1.1.1" style="font-size:90%;">51.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.5.1.1"><span class="ltx_text" id="S4.T3.2.13.5.1.1.1" style="font-size:90%;">63.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.13.6.1.1.1" style="font-size:90%;">80.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.13.7.1.1.1" style="font-size:90%;">62.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.13.8.1.1.1" style="font-size:90%;">69.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.9.1.1"><span class="ltx_text" id="S4.T3.2.13.9.1.1.1" style="font-size:90%;">36.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.10.1.1"><span class="ltx_text" id="S4.T3.2.13.10.1.1.1" style="font-size:90%;">38.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.11.1.1"><span class="ltx_text" id="S4.T3.2.13.11.1.1.1" style="font-size:90%;">45.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.12.1.1"><span class="ltx_text" id="S4.T3.2.13.12.1.1.1" style="font-size:90%;">52.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.13.1.1"><span class="ltx_text" id="S4.T3.2.13.13.1.1.1" style="font-size:90%;">47.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.14.1.1"><span class="ltx_text" id="S4.T3.2.13.14.1.1.1" style="font-size:90%;">44.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.15.1.1"><span class="ltx_text" id="S4.T3.2.13.15.1.1.1" style="font-size:90%;">38.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.16.1.1"><span class="ltx_text" id="S4.T3.2.13.16.1.1.1" style="font-size:90%;">42.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.17.1.1"><span class="ltx_text" id="S4.T3.2.13.17.1.1.1" style="font-size:90%;">55.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.18.1.1"><span class="ltx_text" id="S4.T3.2.13.18.1.1.1" style="font-size:90%;">41.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.19.1.1"><span class="ltx_text" id="S4.T3.2.13.19.1.1.1" style="font-size:90%;">53.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.13.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.13.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.13.20.1.1"><span class="ltx_text" id="S4.T3.2.13.20.1.1.1" style="font-size:90%;">55.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.1.1">
<span class="ltx_p" id="S4.T3.2.14.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.14.1.1.1.1" style="font-size:90%;">InternVL2.5-78B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.2.1">
<span class="ltx_p" id="S4.T3.2.14.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.14.2.1.1.1" style="font-size:90%;">48.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.3.1.1"><span class="ltx_text" id="S4.T3.2.14.3.1.1.1" style="font-size:90%;">43.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.4.1.1"><span class="ltx_text" id="S4.T3.2.14.4.1.1.1" style="font-size:90%;">54.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.5.1.1"><span class="ltx_text" id="S4.T3.2.14.5.1.1.1" style="font-size:90%;">42.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.6.1.1"><span class="ltx_text" id="S4.T3.2.14.6.1.1.1" style="font-size:90%;">60.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.7.1.1"><span class="ltx_text" id="S4.T3.2.14.7.1.1.1" style="font-size:90%;">58.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.8.1.1"><span class="ltx_text" id="S4.T3.2.14.8.1.1.1" style="font-size:90%;">42.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.9.1.1"><span class="ltx_text" id="S4.T3.2.14.9.1.1.1" style="font-size:90%;">38.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.10.1.1"><span class="ltx_text" id="S4.T3.2.14.10.1.1.1" style="font-size:90%;">47.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.11.1.1"><span class="ltx_text" id="S4.T3.2.14.11.1.1.1" style="font-size:90%;">43.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.12.1.1"><span class="ltx_text" id="S4.T3.2.14.12.1.1.1" style="font-size:90%;">46.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.13.1.1"><span class="ltx_text" id="S4.T3.2.14.13.1.1.1" style="font-size:90%;">57.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.14.1.1"><span class="ltx_text" id="S4.T3.2.14.14.1.1.1" style="font-size:90%;">38.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.15.1.1"><span class="ltx_text" id="S4.T3.2.14.15.1.1.1" style="font-size:90%;">35.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.16.1.1"><span class="ltx_text" id="S4.T3.2.14.16.1.1.1" style="font-size:90%;">45.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.17.1.1"><span class="ltx_text" id="S4.T3.2.14.17.1.1.1" style="font-size:90%;">40.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.18.1.1"><span class="ltx_text" id="S4.T3.2.14.18.1.1.1" style="font-size:90%;">43.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.19.1.1"><span class="ltx_text" id="S4.T3.2.14.19.1.1.1" style="font-size:90%;">54.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T3.2.14.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.14.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.14.20.1.1"><span class="ltx_text" id="S4.T3.2.14.20.1.1.1" style="font-size:90%;">40.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.1.1">
<span class="ltx_p" id="S4.T3.2.15.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S4.T3.2.15.1.1.1.1" style="font-size:90%;">InternVL2.5-8B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.2.1">
<span class="ltx_p" id="S4.T3.2.15.2.1.1" style="width:21.3pt;"><span class="ltx_text" id="S4.T3.2.15.2.1.1.1" style="font-size:90%;">37.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.3.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.3.1.1"><span class="ltx_text" id="S4.T3.2.15.3.1.1.1" style="font-size:90%;">33.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.4.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.4.1.1"><span class="ltx_text" id="S4.T3.2.15.4.1.1.1" style="font-size:90%;">47.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.5.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.5.1.1"><span class="ltx_text" id="S4.T3.2.15.5.1.1.1" style="font-size:90%;">35.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.6.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.6.1.1"><span class="ltx_text" id="S4.T3.2.15.6.1.1.1" style="font-size:90%;">50.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.7.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.7.1.1"><span class="ltx_text" id="S4.T3.2.15.7.1.1.1" style="font-size:90%;">51.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.8.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.8.1.1"><span class="ltx_text" id="S4.T3.2.15.8.1.1.1" style="font-size:90%;">35.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.9.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.9.1.1"><span class="ltx_text" id="S4.T3.2.15.9.1.1.1" style="font-size:90%;">27.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.10.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.10.1.1"><span class="ltx_text" id="S4.T3.2.15.10.1.1.1" style="font-size:90%;">38.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.11.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.11.1.1"><span class="ltx_text" id="S4.T3.2.15.11.1.1.1" style="font-size:90%;">36.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.12.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.12.1.1"><span class="ltx_text" id="S4.T3.2.15.12.1.1.1" style="font-size:90%;">39.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.13.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.13.1.1"><span class="ltx_text" id="S4.T3.2.15.13.1.1.1" style="font-size:90%;">50.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.14.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.14.1.1"><span class="ltx_text" id="S4.T3.2.15.14.1.1.1" style="font-size:90%;">32.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.15.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.15.1.1"><span class="ltx_text" id="S4.T3.2.15.15.1.1.1" style="font-size:90%;">27.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.16.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.16.1.1"><span class="ltx_text" id="S4.T3.2.15.16.1.1.1" style="font-size:90%;">36.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.17.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.17.1.1"><span class="ltx_text" id="S4.T3.2.15.17.1.1.1" style="font-size:90%;">31.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.18.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.18.1.1"><span class="ltx_text" id="S4.T3.2.15.18.1.1.1" style="font-size:90%;">33.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.19.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.19.1.1"><span class="ltx_text" id="S4.T3.2.15.19.1.1.1" style="font-size:90%;">44.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T3.2.15.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.15.20.1">
<span class="ltx_p ltx_align_center" id="S4.T3.2.15.20.1.1"><span class="ltx_text" id="S4.T3.2.15.20.1.1.1" style="font-size:90%;">33.9</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the performance of various Multimodal Large Language Models (MLLMs) on a multi-disciplinary benchmark encompassing six subjects: mathematics, physics, chemistry, biology, geography, and information science.  The models' accuracy is evaluated across three difficulty levels (easy, medium, hard) for each subject, providing a granular view of their capabilities.  Overall performance represents the average accuracy calculated across all subjects, difficulty levels, and grades within each subject. This allows for a comprehensive comparison of the MLLMs' strengths and weaknesses across various domains and levels of cognitive complexity.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of MLLMs on six disciplines (mathematics, physics, chemistry, biology, geography, and information science) across three difficulty levels. The overall performance indicates the average accuracy across all grades, difficulty levels and disciplines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.4">
<tr class="ltx_tr" id="S5.T4.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.5.1" rowspan="2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T4.4.5.2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.2.1" style="font-size:90%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T4.4.5.3" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.3.1" style="font-size:90%;">Easy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T4.4.5.4" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.4.1" style="font-size:90%;">Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T4.4.5.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.5.5.1" style="font-size:90%;">Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.4.5.1" style="font-size:90%;">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.6" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.4.6.1" style="font-size:90%;">Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1" style="padding-left:3.8pt;padding-right:3.8pt;"><math alttext="\triangle" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mi id="S5.T4.1.1.1.m1.1.1" mathcolor="#FF0000" mathsize="90%" mathvariant="normal" xref="S5.T4.1.1.1.m1.1.1.cmml">△</mi><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">△</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\triangle</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">△</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.7" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.4.7.1" style="font-size:90%;">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.8" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.4.8.1" style="font-size:90%;">Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2" style="padding-left:3.8pt;padding-right:3.8pt;"><math alttext="\triangle" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mi id="S5.T4.2.2.2.m1.1.1" mathcolor="#FF0000" mathsize="90%" mathvariant="normal" xref="S5.T4.2.2.2.m1.1.1.cmml">△</mi><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1">△</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\triangle</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">△</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.4.9.1" style="font-size:90%;">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.10" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.4.10.1" style="font-size:90%;">Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3" style="padding-left:3.8pt;padding-right:3.8pt;"><math alttext="\triangle" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mi id="S5.T4.3.3.3.m1.1.1" mathcolor="#FF0000" mathsize="90%" mathvariant="normal" xref="S5.T4.3.3.3.m1.1.1.cmml">△</mi><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1">△</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">\triangle</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">△</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.11" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.4.11.1" style="font-size:90%;">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.12" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.4.12.1" style="font-size:90%;">Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.4" style="padding-left:3.8pt;padding-right:3.8pt;"><math alttext="\triangle" class="ltx_Math" display="inline" id="S5.T4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.m1.1a"><mi id="S5.T4.4.4.4.m1.1.1" mathcolor="#FF0000" mathsize="90%" mathvariant="normal" xref="S5.T4.4.4.4.m1.1.1.cmml">△</mi><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1">△</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.m1.1c">\triangle</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.m1.1d">△</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.4.6.1" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.6.1.1" style="font-size:90%;">Gemini2-thinking</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.6.2.1" style="font-size:90%;">58.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.3" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.6.3.1" style="font-size:90%;">41.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.4" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.6.4.1" style="font-size:90%;color:#FF0000;">16.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.6.5.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.6" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.6.6.1" style="font-size:90%;">43.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.7" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.6.7.1" style="font-size:90%;color:#FF0000;">22.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.8" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.6.8.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.9" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.6.9.1" style="font-size:90%;">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.10" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.6.10.1" style="font-size:90%;color:#FF0000;">12.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.11" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.6.11.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.12" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.6.12.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.6.13" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.6.13.1" style="font-size:90%;color:#FF0000;">15.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.7">
<td class="ltx_td ltx_align_left" id="S5.T4.4.7.1" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.1.1" style="font-size:90%;">Gemini2-flash</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.2.1" style="font-size:90%;">56.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.3" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.7.3.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.4" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.4.1" style="font-size:90%;color:#FF0000;">9.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.5.1" style="font-size:90%;">66.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.6" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.7.6.1" style="font-size:90%;">50.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.7" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.7.1" style="font-size:90%;color:#FF0000;">16.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.8" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.8.1" style="font-size:90%;">54.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.9" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.7.9.1" style="font-size:90%;">46.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.10" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.10.1" style="font-size:90%;color:#FF0000;">8.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.11" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.11.1" style="font-size:90%;">48.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.12" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.7.12.1" style="font-size:90%;">44.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.7.13" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.7.13.1" style="font-size:90%;color:#FF0000;">4.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.8">
<td class="ltx_td ltx_align_left" id="S5.T4.4.8.1" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.1.1" style="font-size:90%;">Claude-3.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.2.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.3" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.3.1" style="font-size:90%;">31.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.4" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.4.1" style="font-size:90%;color:#FF0000;">15.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.5.1" style="font-size:90%;">49.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.6" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.6.1" style="font-size:90%;">32.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.7" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.7.1" style="font-size:90%;color:#FF0000;">16.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.8" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.8.1" style="font-size:90%;">50.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.9" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.9.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.10" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.10.1" style="font-size:90%;color:#FF0000;">13.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.11" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.11.1" style="font-size:90%;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.12" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.12.1" style="font-size:90%;">25.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.8.13" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.8.13.1" style="font-size:90%;color:#FF0000;">15.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.9">
<td class="ltx_td ltx_align_left" id="S5.T4.4.9.1" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.1.1" style="font-size:90%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.2.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.3" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.3.1" style="font-size:90%;">40.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.4" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.4.1" style="font-size:90%;color:#FF0000;">10.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.5.1" style="font-size:90%;">54.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.6" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.6.1" style="font-size:90%;">35.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.7" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.7.1" style="font-size:90%;color:#FF0000;">18.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.8" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.8.1" style="font-size:90%;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.9" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.9.1" style="font-size:90%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.10" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.10.1" style="font-size:90%;color:#FF0000;">2.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.11" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.11.1" style="font-size:90%;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.12" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.12.1" style="font-size:90%;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.9.13" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.9.13.1" style="font-size:90%;color:#FF0000;">0.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.10">
<td class="ltx_td ltx_align_left" id="S5.T4.4.10.1" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.1.1" style="font-size:90%;">Qwen2-VL-7B-GRPO</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.2.1" style="font-size:90%;">28.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.3" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.3.1" style="font-size:90%;">26.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.4" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.4.1" style="font-size:90%;color:#FF0000;">2.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.5.1" style="font-size:90%;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.6" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.6.1" style="font-size:90%;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.7" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.7.1" style="font-size:90%;color:#FF0000;">3.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.8" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.8.1" style="font-size:90%;">26.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.9" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.9.1" style="font-size:90%;">24.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.10" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.10.1" style="font-size:90%;color:#FF0000;">1.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.11" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.11.1" style="font-size:90%;">26.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.12" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.12.1" style="font-size:90%;">19.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.10.13" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.10.13.1" style="font-size:90%;color:#FF0000;">6.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.11">
<td class="ltx_td ltx_align_left" id="S5.T4.4.11.1" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.1.1" style="font-size:90%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.2.1" style="font-size:90%;">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.3" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.3.1" style="font-size:90%;">26.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.4" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.4.1" style="font-size:90%;color:#FF0000;">1.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.5.1" style="font-size:90%;">31.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.6" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.6.1" style="font-size:90%;">34.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.7" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.7.1" style="font-size:90%;color:#FF0000;">-2.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.8" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.8.1" style="font-size:90%;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.9" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.9.1" style="font-size:90%;">25.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.10" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.10.1" style="font-size:90%;color:#FF0000;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.11" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.11.1" style="font-size:90%;">25.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.12" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.12.1" style="font-size:90%;">20.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.11.13" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.11.13.1" style="font-size:90%;color:#FF0000;">5.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.12">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T4.4.12.1" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.1.1" style="font-size:90%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.2" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.2.1" style="font-size:90%;">41.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.3" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.3.1" style="font-size:90%;">26.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.4" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.4.1" style="font-size:90%;color:#FF0000;">15.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.5" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.5.1" style="font-size:90%;">48.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.6" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.6.1" style="font-size:90%;">23.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.7" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.7.1" style="font-size:90%;color:#FF0000;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.8" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.8.1" style="font-size:90%;">44.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.9" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.9.1" style="font-size:90%;">27.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.10" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.10.1" style="font-size:90%;color:#FF0000;">16.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.11" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.11.1" style="font-size:90%;">38.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.12" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.12.1" style="font-size:90%;">30.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.4.12.13" style="padding-left:3.8pt;padding-right:3.8pt;"><span class="ltx_text" id="S5.T4.4.12.13.1" style="font-size:90%;color:#FF0000;">7.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of model accuracy on a subset of the MDK12-Bench benchmark before and after applying dynamic bootstrapping techniques.  The 'Original' column shows the accuracy on the original test set, while the 'Dynamic' column shows the accuracy after the test data was modified using various image and text transformations. The Δ column shows the difference (fluctuation) between the original and dynamic accuracy scores, indicating the models' robustness to data perturbation. The results are broken down by difficulty level (Easy, Medium, Hard) and for the overall performance across all levels, allowing for analysis of each model's sensitivity to dynamic changes in the test data.
> <details>
> <summary>read the caption</summary>
> Table 4: Accuracy on the original subset and the corresponding dynamic bootstrapped set. The △△\triangle△ denotes the accuracy fluctuation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05782/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05782/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}