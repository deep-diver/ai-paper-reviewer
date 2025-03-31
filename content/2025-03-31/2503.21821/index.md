---
title: "PHYSICS: Benchmarking Foundation Models on University-Level Physics Problem Solving"
summary: "PHYSICS: A new benchmark reveals foundation models struggle with university-level physics, highlighting needs for improved reasoning and knowledge integration."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Education", "🏢 Yale University",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21821 {{< /keyword >}}
{{< keyword icon="writer" >}} Kaiyue Feng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21821" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21821" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21821/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

AI models have shown promise in math, yet physics remains a hurdle. Existing physics datasets often consist of multiple-choice questions or focus on primary-high school level problems that frontier models perform well on. To fill the gap, the study introduces PHYSICS, a benchmark consisting of 1,297 expert-annotated problems spanning six core areas that need advanced physics knowledge and mathematical reasoning.



PHYSICS assesses AI using open-ended questions. The benchmark reveals limitations: the best model only achieves 59.9% accuracy. Key issues include incorrect assumptions, data understanding, calculation accuracy, and question interpretation. The study explores diverse prompting strategies and Retrieval-Augmented Generation (RAG) to improve performance, identifying areas for future advancement.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Foundation models exhibit significant limitations in solving university-level physics problems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Even the most advanced models struggle with reasoning, knowledge integration, and mathematical precision in physics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Retrieval-Augmented Generation (RAG) and self-reflection prompting show promise for improving model performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This PHYSICS benchmark provides a **critical tool** for evaluating and improving AI models in advanced physics problem-solving. It is important for researchers because it **highlights current limitations** and **guides future development** toward more robust, scientifically grounded AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21821/extracted/6310902/figures_tex/overall_process.png)

> 🔼 Figure 1 showcases a sample problem from the PHYSICS benchmark dataset, specifically focusing on classical mechanics.  The problem presents a diagram of a siphon and asks for calculations related to water flow speed and maximum height, requiring application of Bernoulli's equation.  The caption highlights PHYSICS as a comprehensive benchmark comprising 1,297 expert-annotated university-level physics problems.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example of classical mechanics problem in \ours. \oursis a comprehensive benchmark for university-level physics problem solving which contains 1,297 expert-annotated problems.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1">
<tr class="ltx_tr" id="S1.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.2.1">Multi-modal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.3.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.4.1">Level</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.5.1">Question Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.6.1">Evaluation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.7.1">Reasoning Steps</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.2.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.2.1.1">JEEBench</span> <cite class="ltx_cite ltx_citemacro_cite">Arora et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib6" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.3">515</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.4">CEE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.5">OE, MC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.6">Rule-Based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.3">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.3.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.3.1.1">MATH</span> <cite class="ltx_cite ltx_citemacro_cite">Hendrycks et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib20" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.3">12,500</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.4">K12-Comp</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.5">OE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.4.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.4.1.1">HARDMath</span> <cite class="ltx_cite ltx_citemacro_cite">Fan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib13" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3">1,466</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.4">Graduate</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.5">OE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.6">Rule + Model</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.5.1">GSM8K<cite class="ltx_cite ltx_citemacro_citep">(Cobbe et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib10" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.3">8,500</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4">K8</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.5">OE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.7">5.0</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.6">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.6.1">GPQA<cite class="ltx_cite ltx_citemacro_citep">(Rein et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib33" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.3">227</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.4">Graduate</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5">OE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.7">3.6</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.7.1">SciQ <cite class="ltx_cite ltx_citemacro_cite">Welbl et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib41" title="">2017</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.3">13,679</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.4">K4-K8</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.5">MC, OE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.8.1">SciEval <cite class="ltx_cite ltx_citemacro_cite">Sun et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib36" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.3">1657</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.4">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.5">OE, MC</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.9.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.9.1.1">SciBench</span> <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib40" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.9.2"><span class="ltx_text" id="S1.T1.1.1.9.2.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.9.3">295</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.9.4">University</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.9.5">OE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.9.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.9.7">2.8</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.10.1">MMMU <cite class="ltx_cite ltx_citemacro_cite">Yue et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib42" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.10.2"><span class="ltx_text" id="S1.T1.1.1.10.2.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.10.3">443</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.10.4">University</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.10.5">OE, MC</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.10.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.10.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.11">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.11.1">MMMU-Pro <cite class="ltx_cite ltx_citemacro_cite">Yue et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib43" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.2"><span class="ltx_text" id="S1.T1.1.1.11.2.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.3">3,460</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.4">University</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.5">MC</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.12">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.12.1">MMVU <cite class="ltx_cite ltx_citemacro_cite">Zhao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib45" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.2"><span class="ltx_text" id="S1.T1.1.1.12.2.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.3">3,000</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.4">University</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.5">OE, MC</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.6">Rule + Model</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.13">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.13.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.13.1.1">ScienceQA</span> <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib26" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.13.2"><span class="ltx_text" id="S1.T1.1.1.13.2.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.13.3">617</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.13.4">K1-K12</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.13.5">MC</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.13.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.13.7">2.4</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.14">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.14.1">OlympiadBench<cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib19" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.14.2"><span class="ltx_text" id="S1.T1.1.1.14.2.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.14.3">2334</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.14.4">Comp</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.14.5">OE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.14.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.14.7">3.7</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.15">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.15.1">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.15.1.1">PutnamBench</span> <cite class="ltx_cite ltx_citemacro_cite">Tsoukalas et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.21821v1#bib.bib39" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.15.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.15.3">1692</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.15.4">University</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.15.5">OE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.15.6">Rule-Based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.15.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.16" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.1.1.16.1"><span class="ltx_ERROR undefined" id="S1.T1.1.1.16.1.1">\ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.16.2"><span class="ltx_text" id="S1.T1.1.1.16.2.1" style="color:#005900;background-color:#E6E6E6;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.16.3"><span class="ltx_text" id="S1.T1.1.1.16.3.1" style="background-color:#E6E6E6;">1297</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.16.4"><span class="ltx_text" id="S1.T1.1.1.16.4.1" style="background-color:#E6E6E6;">University</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.16.5"><span class="ltx_text" id="S1.T1.1.1.16.5.1" style="background-color:#E6E6E6;">OE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.16.6"><span class="ltx_text" id="S1.T1.1.1.16.6.1" style="background-color:#E6E6E6;">Rule + Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.16.7"><span class="ltx_text" id="S1.T1.1.1.16.7.1" style="background-color:#E6E6E6;">5.7</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the PHYSICS benchmark with other existing benchmarks across several key features.  These features include the modality (whether the benchmark uses text only or text and images), the size of the benchmark (number of questions), the educational level of the questions (ranging from elementary school to graduate level), the type of questions (multiple choice or open-ended), the evaluation method used, and the average number of reasoning steps required to solve the problems.  The table provides a context for understanding the relative difficulty and scope of the PHYSICS benchmark in comparison to others.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of \ourswith other benchmarks. For Level, comp: Competition, CEE: University Entrance Examination, K1-K12: Elementary and High School Level. For Question Type, OE: Open-ended Questions, MC: Multiple-choice Questions. Reasoning Steps are based on the statistics provided in the corresponding reference.
> </details>





### In-depth insights


#### Physics FM Limits
**Foundation Models (FM) face considerable limits** when applied to physics due to the domain's reliance on **precise mathematical formulations** and **complex reasoning**. Unlike tasks where FMs can leverage pattern recognition, physics demands a **deep understanding of underlying principles** and **accurate equation manipulation**. Current FMs often struggle with **multi-step problem-solving** requiring the integration of diverse concepts. Furthermore, FMs may **lack the inherent physical intuition** necessary to correctly apply formulas and interpret results within real-world contexts. Addressing these limits requires improving FMs' ability to handle symbolic mathematics, integrate domain-specific knowledge, and perform robust reasoning.

#### PHYSICS Dataset
The PHYSICS dataset appears to be a specifically curated collection intended for evaluating foundation models in their capacity to tackle university-level physics problems. The **key strength** likely resides in its composition of problems demanding advanced knowledge and mathematical reasoning, potentially sourced from PhD qualifying exams to ensure high difficulty. It is designed to assesses the models' abilities in core physics areas such as **classical mechanics, quantum mechanics, thermodynamics, electromagnetism, atomic physics, and optics**. By incorporating expert-annotated problems with a high level of complexity, the dataset avoids the limitations of multiple-choice formats. This helps in enabling a more thorough and accurate evaluation of the models' physics problem-solving skills in open-ended scenarios and **complex reasoning tasks**.

#### Automated Eval
The automated evaluation component is a **critical aspect** of modern benchmarking. It allows for **objective** and **consistent** assessment of model performance. Key considerations include ensuring the system can accurately extract solutions, especially in formats such as LaTeX, and handle varying symbolic representations. A robust automated evaluation framework is characterized by its ability to standardize mathematical expressions, verify correctness through rule-based equivalence checking (e.g., using SymPy), and **accurately assess** models in cases where results do not directly match. This evaluation should also address the inherent challenges of AI such as **logical reasoning**, **conceptual** physics problems, and mathematical precision. GPT-4 assisted evaluation can augment rule-based assessments. This is important to evaluate nuanced solutions. This ensures the system does not dismiss correct, but unconventionally derived answers, enhancing **reliability** and **fairness**. **High-quality automated evaluation** is an essential part to **reduce costs** and make the research more **reproducible**.

#### RAG for Physics
**Retrieval-Augmented Generation (RAG) for Physics** is a promising avenue for enhancing the capabilities of foundation models in this domain. Since physics problems often demand integrating diverse knowledge pieces, RAG enables models to retrieve relevant information from external sources like textbooks or scientific literature. This augmentation mitigates the limitations of models' internal knowledge, particularly when dealing with specialized concepts or complex derivations. By grounding the reasoning process in retrieved evidence, RAG can improve the accuracy and reliability of solutions. However, challenges include formulating effective search queries, selecting relevant information from retrieved content, and seamlessly integrating retrieved knowledge into the reasoning process. This requires models to discern essential concepts and relationships within complex physics problems and formulate queries that retrieve precise and contextually relevant information. Effectively managing the retrieved information and combining it with existing knowledge to produce accurate physics problem solutions is the key to success for RAG in physics.

#### Multi-Modal Data
**Multi-modal data** is crucial for a comprehensive understanding of complex phenomena. Integrating diverse data types, such as text, images, and audio, provides a richer context and enables more nuanced analysis. For example, in medical diagnosis, combining patient history (text), X-ray images, and heart sounds (audio) can improve accuracy. **Challenges** include data synchronization, feature extraction across modalities, and dealing with heterogeneous data formats. **Deep learning models**, particularly those with attention mechanisms, are effective in learning cross-modal representations. Future research should focus on developing robust and interpretable methods for multi-modal fusion. **This will drive advances** in various fields, from AI to scientific discovery.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21821/extracted/6310902/figures_tex/prompt_compare.png)

> 🔼 The figure illustrates the workflow of the PHYSICS benchmark dataset creation and model evaluation.  First, annotators contribute problems (§3.2). These problems then undergo validation to create a refined dataset. Next, this dataset is used to prompt various language models (§4.1).  The models' responses are processed using regular expressions and the SymPy library for symbolic mathematics (§4.2). Finally, an automated system performs the final evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 2: For the overall process, we begin by collecting annotated problems from annotators (§3.2), followed by validation to create a processed dataset. This dataset is then used to prompt models (§4.1). The responses from models undergo regular expression pre-processing and SymPy-based processing before final evaluation using an automated system (§4.2).
> </details>



![](https://arxiv.org/html/2503.21821/extracted/6310902/figures_tex/3-19-1.png)

> 🔼 This histogram displays the frequency distribution of reasoning steps needed to solve the physics problems in the PHYSICS benchmark dataset.  The x-axis represents the number of reasoning steps, and the y-axis shows the percentage of problems requiring that many steps.  The distribution helps illustrate the complexity of the problems, indicating that a substantial portion require multiple steps to solve, highlighting the challenge for AI models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Reasoning steps distribution.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T2.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1.1">Dataset Overview</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.1">   Total Questions</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2">1,297</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.1">   Questions with Figures</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.2">298</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.1">   Validation : Test Split</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.2">297 : 1,000</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.1">   Hard : Regular Questions</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.2">523 : 774</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T2.1.1.7.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.7.1.1">Subject Distribution</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.8.1">   Number of Subjects</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.2">6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.1">   Atomic Physics</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.2">200</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.10.1">   Electromagnetism</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.2">242</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.11">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.1">   Classical Mechanics</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.2">221</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.12">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.12.1">   Optics</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.2">158</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.13">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.1">   Quantum Mechanics</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.2">236</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.14">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.14.1">   Statistical Physics</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.14.2">240</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T2.1.1.15.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.15.1.1">Question Complexity</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.16">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.16.1">   Avg. Question Length (words)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.2">83.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.17">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T2.1.1.17.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.17.1.1">Solution Statistics</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.18">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.18.1">   Avg. Solution Length (words)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.2">234.75</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.19.1">   Avg. Reasoning Steps</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.19.2">5.38</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a detailed statistical overview of the PHYSICS dataset, a benchmark for evaluating AI models' ability to solve university-level physics problems.  It shows the total number of questions, the number of questions with figures, the split of the dataset into validation and test sets, the breakdown of questions by physics subject area, the average length of questions and solutions (in words), and the average number of reasoning steps required to solve the problems. It also provides a breakdown of questions categorized as 'hard' based on annotator assessment.  This comprehensive statistical summary allows researchers to understand the characteristics of the PHYSICS dataset and to assess its suitability for their research needs.
> <details>
> <summary>read the caption</summary>
> Table 2: Dataset statistics of \ours.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.7">
<tr class="ltx_tr" id="S4.T3.7.8">
<td class="ltx_td ltx_border_tt" id="S4.T3.7.8.1" style="padding-left:10.0pt;padding-right:10.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T3.7.8.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.8.2.1">Test Set Performance</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.7.8.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.8.3.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.9">
<td class="ltx_td ltx_align_left" id="S4.T3.7.9.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.1.1">Model</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.9.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.2.1">AMO</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.9.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.3.1">E&amp;M</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.9.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.4.1">CM</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.9.5" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.5.1">Opt.</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.9.6" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.6.1">QM</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.9.7" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.7.1">Stats.</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.9.8" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.8.1">Val</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.9.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.9.9.1" style="background-color:#E6E6E6;">Test</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T3.7.10.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.10.1.1">Proprietary Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.11">
<td class="ltx_td ltx_align_left" id="S4.T3.7.11.1" style="padding-left:10.0pt;padding-right:10.0pt;">o3-mini</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.11.2" style="padding-left:10.0pt;padding-right:10.0pt;">52.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.11.3" style="padding-left:10.0pt;padding-right:10.0pt;">64.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.11.4" style="padding-left:10.0pt;padding-right:10.0pt;">59.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.11.5" style="padding-left:10.0pt;padding-right:10.0pt;">51.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.11.6" style="padding-left:10.0pt;padding-right:10.0pt;">66.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.11.7" style="padding-left:10.0pt;padding-right:10.0pt;">60.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.11.8" style="padding-left:10.0pt;padding-right:10.0pt;">55.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.11.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.11.9.1" style="background-color:#E6E6E6;">59.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.12">
<td class="ltx_td ltx_align_left" id="S4.T3.7.12.1" style="padding-left:10.0pt;padding-right:10.0pt;">o1-mini</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.12.2" style="padding-left:10.0pt;padding-right:10.0pt;">45.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.12.3" style="padding-left:10.0pt;padding-right:10.0pt;">41.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.12.4" style="padding-left:10.0pt;padding-right:10.0pt;">41.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.12.5" style="padding-left:10.0pt;padding-right:10.0pt;">40.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.12.6" style="padding-left:10.0pt;padding-right:10.0pt;">44.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.12.7" style="padding-left:10.0pt;padding-right:10.0pt;">48.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.12.8" style="padding-left:10.0pt;padding-right:10.0pt;">44.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.12.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.12.9.1" style="background-color:#E6E6E6;">43.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.1" style="padding-left:10.0pt;padding-right:10.0pt;">Gemini-1.5-pro<sup class="ltx_sup" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.2" style="padding-left:10.0pt;padding-right:10.0pt;">35.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.3" style="padding-left:10.0pt;padding-right:10.0pt;">40.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.4" style="padding-left:10.0pt;padding-right:10.0pt;">31.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.5" style="padding-left:10.0pt;padding-right:10.0pt;">32.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.6" style="padding-left:10.0pt;padding-right:10.0pt;">44.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.7" style="padding-left:10.0pt;padding-right:10.0pt;">43.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.8" style="padding-left:10.0pt;padding-right:10.0pt;">35.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.1.1.9.1" style="background-color:#E6E6E6;">38.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left" id="S4.T3.2.2.1" style="padding-left:10.0pt;padding-right:10.0pt;">GPT-4o<sup class="ltx_sup" id="S4.T3.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.2.2.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.2.2" style="padding-left:10.0pt;padding-right:10.0pt;">35.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.2.3" style="padding-left:10.0pt;padding-right:10.0pt;">44.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.2.4" style="padding-left:10.0pt;padding-right:10.0pt;">33.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.2.5" style="padding-left:10.0pt;padding-right:10.0pt;">23.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.2.6" style="padding-left:10.0pt;padding-right:10.0pt;">33.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.2.7" style="padding-left:10.0pt;padding-right:10.0pt;">45.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.2.8" style="padding-left:10.0pt;padding-right:10.0pt;">34.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.2.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.2.2.9.1" style="background-color:#E6E6E6;">36.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T3.3.3.1" style="padding-left:10.0pt;padding-right:10.0pt;">Claude-3.5-Sonnet<sup class="ltx_sup" id="S4.T3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.3.3.2" style="padding-left:10.0pt;padding-right:10.0pt;">37.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.3.3.3" style="padding-left:10.0pt;padding-right:10.0pt;">34.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.3.3.4" style="padding-left:10.0pt;padding-right:10.0pt;">27.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.3.3.5" style="padding-left:10.0pt;padding-right:10.0pt;">35.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.3.3.6" style="padding-left:10.0pt;padding-right:10.0pt;">35.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.3.3.7" style="padding-left:10.0pt;padding-right:10.0pt;">38.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.3.3.8" style="padding-left:10.0pt;padding-right:10.0pt;">31.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.3.3.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.3.3.9.1" style="background-color:#E6E6E6;">34.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T3.7.13.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.13.1.1">Open-Source Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.14">
<td class="ltx_td ltx_align_left" id="S4.T3.7.14.1" style="padding-left:10.0pt;padding-right:10.0pt;">DeepSeek-R1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.14.2" style="padding-left:10.0pt;padding-right:10.0pt;">37.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.14.3" style="padding-left:10.0pt;padding-right:10.0pt;">48.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.14.4" style="padding-left:10.0pt;padding-right:10.0pt;">38.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.14.5" style="padding-left:10.0pt;padding-right:10.0pt;">43.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.14.6" style="padding-left:10.0pt;padding-right:10.0pt;">44.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.14.7" style="padding-left:10.0pt;padding-right:10.0pt;">51.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.14.8" style="padding-left:10.0pt;padding-right:10.0pt;">44.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.14.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.14.9.1" style="background-color:#E6E6E6;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.15">
<td class="ltx_td ltx_align_left" id="S4.T3.7.15.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2.5-Math-72B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.15.2" style="padding-left:10.0pt;padding-right:10.0pt;">27.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.15.3" style="padding-left:10.0pt;padding-right:10.0pt;">34.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.15.4" style="padding-left:10.0pt;padding-right:10.0pt;">27.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.15.5" style="padding-left:10.0pt;padding-right:10.0pt;">27.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.15.6" style="padding-left:10.0pt;padding-right:10.0pt;">36.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.15.7" style="padding-left:10.0pt;padding-right:10.0pt;">37.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.15.8" style="padding-left:10.0pt;padding-right:10.0pt;">38.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.15.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.15.9.1" style="background-color:#E6E6E6;">32.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.16">
<td class="ltx_td ltx_align_left" id="S4.T3.7.16.1" style="padding-left:10.0pt;padding-right:10.0pt;">Llama-3.3-70B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.16.2" style="padding-left:10.0pt;padding-right:10.0pt;">28.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.16.3" style="padding-left:10.0pt;padding-right:10.0pt;">35.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.16.4" style="padding-left:10.0pt;padding-right:10.0pt;">27.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.16.5" style="padding-left:10.0pt;padding-right:10.0pt;">17.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.16.6" style="padding-left:10.0pt;padding-right:10.0pt;">31.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.16.7" style="padding-left:10.0pt;padding-right:10.0pt;">41.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.16.8" style="padding-left:10.0pt;padding-right:10.0pt;">34.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.16.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.16.9.1" style="background-color:#E6E6E6;">31.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.17">
<td class="ltx_td ltx_align_left" id="S4.T3.7.17.1" style="padding-left:10.0pt;padding-right:10.0pt;">phi-4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.17.2" style="padding-left:10.0pt;padding-right:10.0pt;">32.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.17.3" style="padding-left:10.0pt;padding-right:10.0pt;">33.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.17.4" style="padding-left:10.0pt;padding-right:10.0pt;">19.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.17.5" style="padding-left:10.0pt;padding-right:10.0pt;">27.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.17.6" style="padding-left:10.0pt;padding-right:10.0pt;">23.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.17.7" style="padding-left:10.0pt;padding-right:10.0pt;">35.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.17.8" style="padding-left:10.0pt;padding-right:10.0pt;">28.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.17.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.17.9.1" style="background-color:#E6E6E6;">29.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.18">
<td class="ltx_td ltx_align_left" id="S4.T3.7.18.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2.5-72B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.18.2" style="padding-left:10.0pt;padding-right:10.0pt;">28.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.18.3" style="padding-left:10.0pt;padding-right:10.0pt;">30.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.18.4" style="padding-left:10.0pt;padding-right:10.0pt;">23.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.18.5" style="padding-left:10.0pt;padding-right:10.0pt;">25.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.18.6" style="padding-left:10.0pt;padding-right:10.0pt;">27.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.18.7" style="padding-left:10.0pt;padding-right:10.0pt;">33.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.18.8" style="padding-left:10.0pt;padding-right:10.0pt;">31.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.18.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.18.9.1" style="background-color:#E6E6E6;">28.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.19">
<td class="ltx_td ltx_align_left" id="S4.T3.7.19.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2.5-32B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.19.2" style="padding-left:10.0pt;padding-right:10.0pt;">25.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.19.3" style="padding-left:10.0pt;padding-right:10.0pt;">27.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.19.4" style="padding-left:10.0pt;padding-right:10.0pt;">19.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.19.5" style="padding-left:10.0pt;padding-right:10.0pt;">20.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.19.6" style="padding-left:10.0pt;padding-right:10.0pt;">24.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.19.7" style="padding-left:10.0pt;padding-right:10.0pt;">41.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.19.8" style="padding-left:10.0pt;padding-right:10.0pt;">23.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.19.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.19.9.1" style="background-color:#E6E6E6;">27.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.20">
<td class="ltx_td ltx_align_left" id="S4.T3.7.20.1" style="padding-left:10.0pt;padding-right:10.0pt;">Mistral-Small-24B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.20.2" style="padding-left:10.0pt;padding-right:10.0pt;">19.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.20.3" style="padding-left:10.0pt;padding-right:10.0pt;">29.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.20.4" style="padding-left:10.0pt;padding-right:10.0pt;">19.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.20.5" style="padding-left:10.0pt;padding-right:10.0pt;">17.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.20.6" style="padding-left:10.0pt;padding-right:10.0pt;">15.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.20.7" style="padding-left:10.0pt;padding-right:10.0pt;">28.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.20.8" style="padding-left:10.0pt;padding-right:10.0pt;">25.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.20.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.20.9.1" style="background-color:#E6E6E6;">21.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.21">
<td class="ltx_td ltx_align_left" id="S4.T3.7.21.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.21.2" style="padding-left:10.0pt;padding-right:10.0pt;">21.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.21.3" style="padding-left:10.0pt;padding-right:10.0pt;">28.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.21.4" style="padding-left:10.0pt;padding-right:10.0pt;">11.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.21.5" style="padding-left:10.0pt;padding-right:10.0pt;">18.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.21.6" style="padding-left:10.0pt;padding-right:10.0pt;">17.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.21.7" style="padding-left:10.0pt;padding-right:10.0pt;">22.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.21.8" style="padding-left:10.0pt;padding-right:10.0pt;">20.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.21.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.21.9.1" style="background-color:#E6E6E6;">20.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.22">
<td class="ltx_td ltx_align_left" id="S4.T3.7.22.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2.5-14B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.22.2" style="padding-left:10.0pt;padding-right:10.0pt;">23.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.22.3" style="padding-left:10.0pt;padding-right:10.0pt;">19.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.22.4" style="padding-left:10.0pt;padding-right:10.0pt;">14.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.22.5" style="padding-left:10.0pt;padding-right:10.0pt;">12.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.22.6" style="padding-left:10.0pt;padding-right:10.0pt;">13.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.22.7" style="padding-left:10.0pt;padding-right:10.0pt;">28.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.22.8" style="padding-left:10.0pt;padding-right:10.0pt;">25.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.22.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.22.9.1" style="background-color:#E6E6E6;">19.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.23">
<td class="ltx_td ltx_align_left" id="S4.T3.7.23.1" style="padding-left:10.0pt;padding-right:10.0pt;">Gemma-2-27b</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.23.2" style="padding-left:10.0pt;padding-right:10.0pt;">14.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.23.3" style="padding-left:10.0pt;padding-right:10.0pt;">19.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.23.4" style="padding-left:10.0pt;padding-right:10.0pt;">16.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.23.5" style="padding-left:10.0pt;padding-right:10.0pt;">13.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.23.6" style="padding-left:10.0pt;padding-right:10.0pt;">18.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.23.7" style="padding-left:10.0pt;padding-right:10.0pt;">25.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.23.8" style="padding-left:10.0pt;padding-right:10.0pt;">21.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.23.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.23.9.1" style="background-color:#E6E6E6;">18.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.24">
<td class="ltx_td ltx_align_left" id="S4.T3.7.24.1" style="padding-left:10.0pt;padding-right:10.0pt;">Yi-1.5-34B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.24.2" style="padding-left:10.0pt;padding-right:10.0pt;">11.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.24.3" style="padding-left:10.0pt;padding-right:10.0pt;">15.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.24.4" style="padding-left:10.0pt;padding-right:10.0pt;">18.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.24.5" style="padding-left:10.0pt;padding-right:10.0pt;">13.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.24.6" style="padding-left:10.0pt;padding-right:10.0pt;">19.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.24.7" style="padding-left:10.0pt;padding-right:10.0pt;">25.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.24.8" style="padding-left:10.0pt;padding-right:10.0pt;">25.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.24.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.24.9.1" style="background-color:#E6E6E6;">17.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.25">
<td class="ltx_td ltx_align_left" id="S4.T3.7.25.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2.5-Math-1.5B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.25.2" style="padding-left:10.0pt;padding-right:10.0pt;">13.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.25.3" style="padding-left:10.0pt;padding-right:10.0pt;">14.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.25.4" style="padding-left:10.0pt;padding-right:10.0pt;">16.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.25.5" style="padding-left:10.0pt;padding-right:10.0pt;">16.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.25.6" style="padding-left:10.0pt;padding-right:10.0pt;">17.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.25.7" style="padding-left:10.0pt;padding-right:10.0pt;">19.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.25.8" style="padding-left:10.0pt;padding-right:10.0pt;">15.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.25.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.25.9.1" style="background-color:#E6E6E6;">16.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_left" id="S4.T3.4.4.1" style="padding-left:10.0pt;padding-right:10.0pt;">InternVL2-5-38B<sup class="ltx_sup" id="S4.T3.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.4.4.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.4.4.2" style="padding-left:10.0pt;padding-right:10.0pt;">15.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.4.4.3" style="padding-left:10.0pt;padding-right:10.0pt;">12.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.4.4.4" style="padding-left:10.0pt;padding-right:10.0pt;">12.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.4.4.5" style="padding-left:10.0pt;padding-right:10.0pt;">7.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.4.4.6" style="padding-left:10.0pt;padding-right:10.0pt;">18.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.4.4.7" style="padding-left:10.0pt;padding-right:10.0pt;">23.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.4.4.8" style="padding-left:10.0pt;padding-right:10.0pt;">16.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.4.4.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.4.4.9.1" style="background-color:#E6E6E6;">15.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.1" style="padding-left:10.0pt;padding-right:10.0pt;">Aria<sup class="ltx_sup" id="S4.T3.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.5.5.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.2" style="padding-left:10.0pt;padding-right:10.0pt;">13.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.3" style="padding-left:10.0pt;padding-right:10.0pt;">14.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.4" style="padding-left:10.0pt;padding-right:10.0pt;">14.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.5" style="padding-left:10.0pt;padding-right:10.0pt;">11.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.6" style="padding-left:10.0pt;padding-right:10.0pt;">9.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.7" style="padding-left:10.0pt;padding-right:10.0pt;">14.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.8" style="padding-left:10.0pt;padding-right:10.0pt;">12.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.5.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.1" style="background-color:#E6E6E6;">12.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.26">
<td class="ltx_td ltx_align_left" id="S4.T3.7.26.1" style="padding-left:10.0pt;padding-right:10.0pt;">QwQ-32B-Preview</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.26.2" style="padding-left:10.0pt;padding-right:10.0pt;">16.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.26.3" style="padding-left:10.0pt;padding-right:10.0pt;">7.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.26.4" style="padding-left:10.0pt;padding-right:10.0pt;">10.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.26.5" style="padding-left:10.0pt;padding-right:10.0pt;">11.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.26.6" style="padding-left:10.0pt;padding-right:10.0pt;">10.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.26.7" style="padding-left:10.0pt;padding-right:10.0pt;">14.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.26.8" style="padding-left:10.0pt;padding-right:10.0pt;">12.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.26.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.26.9.1" style="background-color:#E6E6E6;">12.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.27">
<td class="ltx_td ltx_align_left" id="S4.T3.7.27.1" style="padding-left:10.0pt;padding-right:10.0pt;">Gemma-2-9b</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.27.2" style="padding-left:10.0pt;padding-right:10.0pt;">9.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.27.3" style="padding-left:10.0pt;padding-right:10.0pt;">8.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.27.4" style="padding-left:10.0pt;padding-right:10.0pt;">9.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.27.5" style="padding-left:10.0pt;padding-right:10.0pt;">16.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.27.6" style="padding-left:10.0pt;padding-right:10.0pt;">12.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.27.7" style="padding-left:10.0pt;padding-right:10.0pt;">16.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.27.8" style="padding-left:10.0pt;padding-right:10.0pt;">15.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.27.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.27.9.1" style="background-color:#E6E6E6;">11.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.28">
<td class="ltx_td ltx_align_left" id="S4.T3.7.28.1" style="padding-left:10.0pt;padding-right:10.0pt;">Mistral-7B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.28.2" style="padding-left:10.0pt;padding-right:10.0pt;">10.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.28.3" style="padding-left:10.0pt;padding-right:10.0pt;">10.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.28.4" style="padding-left:10.0pt;padding-right:10.0pt;">5.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.28.5" style="padding-left:10.0pt;padding-right:10.0pt;">13.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.28.6" style="padding-left:10.0pt;padding-right:10.0pt;">11.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.28.7" style="padding-left:10.0pt;padding-right:10.0pt;">17.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.28.8" style="padding-left:10.0pt;padding-right:10.0pt;">12.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.28.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.28.9.1" style="background-color:#E6E6E6;">11.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.29">
<td class="ltx_td ltx_align_left" id="S4.T3.7.29.1" style="padding-left:10.0pt;padding-right:10.0pt;">Llama-3.1-8B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.29.2" style="padding-left:10.0pt;padding-right:10.0pt;">8.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.29.3" style="padding-left:10.0pt;padding-right:10.0pt;">17.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.29.4" style="padding-left:10.0pt;padding-right:10.0pt;">6.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.29.5" style="padding-left:10.0pt;padding-right:10.0pt;">14.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.29.6" style="padding-left:10.0pt;padding-right:10.0pt;">7.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.29.7" style="padding-left:10.0pt;padding-right:10.0pt;">16.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.29.8" style="padding-left:10.0pt;padding-right:10.0pt;">9.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.29.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.29.9.1" style="background-color:#E6E6E6;">11.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.30">
<td class="ltx_td ltx_align_left" id="S4.T3.7.30.1" style="padding-left:10.0pt;padding-right:10.0pt;">Mathstral-7B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.30.2" style="padding-left:10.0pt;padding-right:10.0pt;">7.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.30.3" style="padding-left:10.0pt;padding-right:10.0pt;">10.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.30.4" style="padding-left:10.0pt;padding-right:10.0pt;">12.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.30.5" style="padding-left:10.0pt;padding-right:10.0pt;">9.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.30.6" style="padding-left:10.0pt;padding-right:10.0pt;">8.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.30.7" style="padding-left:10.0pt;padding-right:10.0pt;">17.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.30.8" style="padding-left:10.0pt;padding-right:10.0pt;">12.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.30.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.30.9.1" style="background-color:#E6E6E6;">10.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.31">
<td class="ltx_td ltx_align_left" id="S4.T3.7.31.1" style="padding-left:10.0pt;padding-right:10.0pt;">c4ai-command-r-v01</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.31.2" style="padding-left:10.0pt;padding-right:10.0pt;">2.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.31.3" style="padding-left:10.0pt;padding-right:10.0pt;">7.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.31.4" style="padding-left:10.0pt;padding-right:10.0pt;">7.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.31.5" style="padding-left:10.0pt;padding-right:10.0pt;">3.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.31.6" style="padding-left:10.0pt;padding-right:10.0pt;">7.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.31.7" style="padding-left:10.0pt;padding-right:10.0pt;">11.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.31.8" style="padding-left:10.0pt;padding-right:10.0pt;">6.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.31.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.31.9.1" style="background-color:#E6E6E6;">7.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.32">
<td class="ltx_td ltx_align_left" id="S4.T3.7.32.1" style="padding-left:10.0pt;padding-right:10.0pt;">DeepSeek-R1-Distill-Qwen-32B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.32.2" style="padding-left:10.0pt;padding-right:10.0pt;">9.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.32.3" style="padding-left:10.0pt;padding-right:10.0pt;">5.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.32.4" style="padding-left:10.0pt;padding-right:10.0pt;">4.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.32.5" style="padding-left:10.0pt;padding-right:10.0pt;">9.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.32.6" style="padding-left:10.0pt;padding-right:10.0pt;">2.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.32.7" style="padding-left:10.0pt;padding-right:10.0pt;">10.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.32.8" style="padding-left:10.0pt;padding-right:10.0pt;">7.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.32.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.32.9.1" style="background-color:#E6E6E6;">6.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.33">
<td class="ltx_td ltx_align_left" id="S4.T3.7.33.1" style="padding-left:10.0pt;padding-right:10.0pt;">Gemma-2-2b</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.33.2" style="padding-left:10.0pt;padding-right:10.0pt;">6.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.33.3" style="padding-left:10.0pt;padding-right:10.0pt;">6.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.33.4" style="padding-left:10.0pt;padding-right:10.0pt;">3.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.33.5" style="padding-left:10.0pt;padding-right:10.0pt;">10.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.33.6" style="padding-left:10.0pt;padding-right:10.0pt;">3.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.33.7" style="padding-left:10.0pt;padding-right:10.0pt;">7.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.33.8" style="padding-left:10.0pt;padding-right:10.0pt;">6.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.33.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.33.9.1" style="background-color:#E6E6E6;">6.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td ltx_align_left" id="S4.T3.6.6.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2-VL-72B<sup class="ltx_sup" id="S4.T3.6.6.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.6.6.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.2" style="padding-left:10.0pt;padding-right:10.0pt;">11.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.3" style="padding-left:10.0pt;padding-right:10.0pt;">3.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.4" style="padding-left:10.0pt;padding-right:10.0pt;">4.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.5" style="padding-left:10.0pt;padding-right:10.0pt;">4.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.6" style="padding-left:10.0pt;padding-right:10.0pt;">2.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.7" style="padding-left:10.0pt;padding-right:10.0pt;">4.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.8" style="padding-left:10.0pt;padding-right:10.0pt;">4.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.6.6.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.6.6.9.1" style="background-color:#E6E6E6;">5.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.34">
<td class="ltx_td ltx_align_left" id="S4.T3.7.34.1" style="padding-left:10.0pt;padding-right:10.0pt;">Internlm3-8b</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.34.2" style="padding-left:10.0pt;padding-right:10.0pt;">1.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.34.3" style="padding-left:10.0pt;padding-right:10.0pt;">4.6</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.34.4" style="padding-left:10.0pt;padding-right:10.0pt;">4.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.34.5" style="padding-left:10.0pt;padding-right:10.0pt;">3.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.34.6" style="padding-left:10.0pt;padding-right:10.0pt;">4.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.34.7" style="padding-left:10.0pt;padding-right:10.0pt;">9.2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.34.8" style="padding-left:10.0pt;padding-right:10.0pt;">4.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.34.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.34.9.1" style="background-color:#E6E6E6;">4.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7">
<td class="ltx_td ltx_align_left" id="S4.T3.7.7.1" style="padding-left:10.0pt;padding-right:10.0pt;">DeepSeek-vl2-small<sup class="ltx_sup" id="S4.T3.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.7.7.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.3" style="padding-left:10.0pt;padding-right:10.0pt;">1.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.4" style="padding-left:10.0pt;padding-right:10.0pt;">1.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.5" style="padding-left:10.0pt;padding-right:10.0pt;">4.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.6" style="padding-left:10.0pt;padding-right:10.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.7" style="padding-left:10.0pt;padding-right:10.0pt;">0.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.8" style="padding-left:10.0pt;padding-right:10.0pt;">4.8</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.7.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.7.9.1" style="background-color:#E6E6E6;">1.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.35">
<td class="ltx_td ltx_align_left" id="S4.T3.7.35.1" style="padding-left:10.0pt;padding-right:10.0pt;">THUDM-chatglm3-6b</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.35.2" style="padding-left:10.0pt;padding-right:10.0pt;">0.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.35.3" style="padding-left:10.0pt;padding-right:10.0pt;">2.3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.35.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.35.5" style="padding-left:10.0pt;padding-right:10.0pt;">0.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.35.6" style="padding-left:10.0pt;padding-right:10.0pt;">0.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.35.7" style="padding-left:10.0pt;padding-right:10.0pt;">2.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.35.8" style="padding-left:10.0pt;padding-right:10.0pt;">0.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.35.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.35.9.1" style="background-color:#E6E6E6;">1.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.36">
<td class="ltx_td ltx_align_left" id="S4.T3.7.36.1" style="padding-left:10.0pt;padding-right:10.0pt;">Qwen2.5-Math-7B</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.36.2" style="padding-left:10.0pt;padding-right:10.0pt;">1.4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.36.3" style="padding-left:10.0pt;padding-right:10.0pt;">1.7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.36.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.36.5" style="padding-left:10.0pt;padding-right:10.0pt;">2.1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.36.6" style="padding-left:10.0pt;padding-right:10.0pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.36.7" style="padding-left:10.0pt;padding-right:10.0pt;">1.5</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.36.8" style="padding-left:10.0pt;padding-right:10.0pt;">1.9</td>
<td class="ltx_td ltx_align_right" id="S4.T3.7.36.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.36.9.1" style="background-color:#E6E6E6;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.37">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.7.37.1" style="padding-left:10.0pt;padding-right:10.0pt;">DeepSeek-math-7b-rl</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.7.37.2" style="padding-left:10.0pt;padding-right:10.0pt;">0.7</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.7.37.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.7.37.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.7.37.5" style="padding-left:10.0pt;padding-right:10.0pt;">1.5</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.7.37.6" style="padding-left:10.0pt;padding-right:10.0pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.7.37.7" style="padding-left:10.0pt;padding-right:10.0pt;">0.6</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.7.37.8" style="padding-left:10.0pt;padding-right:10.0pt;">0.9</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.7.37.9" style="background-color:#E6E6E6;padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text" id="S4.T3.7.37.9.1" style="background-color:#E6E6E6;">0.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed performance comparison of various large language models (LLMs) across six core physics subfields.  It shows the accuracy of each model on problems from Atomic Physics (AMO), Electromagnetism (E&M), Classical Mechanics (CM), Optics (Opt), Quantum Mechanics (QM), and Thermodynamics & Statistical Physics (Stats).  The table distinguishes between proprietary and open-source models and indicates which models can handle multimodal problems (those including images).  Models are ranked by their average performance on a held-out test set. This provides a comprehensive evaluation of the strengths and weaknesses of different LLMs in solving physics problems, highlighting the challenges that remain for even state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison across tasks. †: These models are equipped with multi-model abilities. Problems with images are also tested on these models. Abbreviations: AMO (Atomic Physics) | E&M (Electromagnetism) | CM (Classical Mechanics) | Opt. (Optics) | QM (Quantum Mechanics) | Stats. (Theromodynamics and Statistical Physics). The models are ranked by average test set performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.1">
<tr class="ltx_tr" id="A2.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.1" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1">ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.2" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.1">Year</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.3.1">Major</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T4.1.1.4" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.1.4.1">
<span class="ltx_p" id="A2.T4.1.1.4.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.4.1.1.1">Assigned Subject(s)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.1" style="padding:1pt 4.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.2" style="padding:1pt 4.0pt;">2nd Year Undergraduate</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.3" style="padding:1pt 4.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A2.T4.1.2.4" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.2.4.1">
<span class="ltx_p" id="A2.T4.1.2.4.1.1" style="width:170.7pt;">Classical Mechanics, Electromagnetism</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.3">
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.1" style="padding:1pt 4.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.2" style="padding:1pt 4.0pt;">3rd Year Undergraduate</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.3" style="padding:1pt 4.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.1.3.4" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.3.4.1">
<span class="ltx_p" id="A2.T4.1.3.4.1.1" style="width:170.7pt;">Quantum Mechanics, Optics</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.4">
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.1" style="padding:1pt 4.0pt;">3</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.2" style="padding:1pt 4.0pt;">2nd Year Undergraduate</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.3" style="padding:1pt 4.0pt;">Theoretical Physics</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.1.4.4" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.4.4.1">
<span class="ltx_p" id="A2.T4.1.4.4.1.1" style="width:170.7pt;">Quantum Mechanics, Thermodynamics and Statistical Mechanics</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.5">
<td class="ltx_td ltx_align_center" id="A2.T4.1.5.1" style="padding:1pt 4.0pt;">4</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.5.2" style="padding:1pt 4.0pt;">3rd Year Undergraduate</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.5.3" style="padding:1pt 4.0pt;">Applied Physics</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.1.5.4" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.5.4.1">
<span class="ltx_p" id="A2.T4.1.5.4.1.1" style="width:170.7pt;">Thermodynamics and Statistical Mechanics, Atomic Physics</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.6">
<td class="ltx_td ltx_align_center" id="A2.T4.1.6.1" style="padding:1pt 4.0pt;">5</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.6.2" style="padding:1pt 4.0pt;">2nd Year Undergraduate</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.6.3" style="padding:1pt 4.0pt;">Engineering Physics</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.1.6.4" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.6.4.1">
<span class="ltx_p" id="A2.T4.1.6.4.1.1" style="width:170.7pt;">Electromagnetism, Classical Mechanics</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.7">
<td class="ltx_td ltx_align_center" id="A2.T4.1.7.1" style="padding:1pt 4.0pt;">6</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.7.2" style="padding:1pt 4.0pt;">3rd Year Undergraduate</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.7.3" style="padding:1pt 4.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.1.7.4" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.7.4.1">
<span class="ltx_p" id="A2.T4.1.7.4.1.1" style="width:170.7pt;">Thermodynamics and Statistical Mechanics, Atomic Physics</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.8.1" style="padding:1pt 4.0pt;">7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.8.2" style="padding:1pt 4.0pt;">2nd Year Undergraduate</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.8.3" style="padding:1pt 4.0pt;">Astrophysics</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T4.1.8.4" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.8.4.1">
<span class="ltx_p" id="A2.T4.1.8.4.1.1" style="width:170.7pt;">Classical Mechanics, Optics</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 provides detailed biographical information for the seven expert annotators who contributed to the creation of the PHYSICS benchmark dataset.  For each annotator, the table lists their ID number, academic year (as an undergraduate student), their major, and the specific physics subfields they were responsible for annotating. This information is crucial for understanding the qualifications and expertise of the individuals who created the dataset, thereby ensuring the reliability and accuracy of the benchmark's annotation.
> <details>
> <summary>read the caption</summary>
> Table 4: Biographies of 7 annotators involved in the Physics benchmark construction
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21821/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21821/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}