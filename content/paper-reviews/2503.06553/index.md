---
title: "ProJudge: A Multi-Modal Multi-Discipline Benchmark and Instruction-Tuning Dataset for MLLM-based Process Judges"
summary: "ProJudge: MLLM judges' benchmark for sci-reasoning & instruction-tuning data to boost performance!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 WHU",]
showSummary: true
date: 2025-03-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.06553 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiaxin Ai et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.06553" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.06553" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.06553/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-modal Large Language Models (MLLMs) often make errors when solving science problems. Evaluating their reasoning is key. However, **human evaluation is hard, so MLLMs as judges are popular but unreliable**. Current benchmarks are limited in scope/analysis, using synthetic data. This highlights the need for a better evaluation method.



This paper introduces **ProJudgeBench**, a comprehensive benchmark for MLLM process judges. It includes 2,400 test cases with 50,118 step-level labels across four sciences, annotated by experts for correctness and error type. The paper also introduces **ProJudge-173k**, a dataset and Dynamic Dual-Phase fine-tuning to enhance open-source models' evaluation abilities. Evaluation reveals significant performance gaps.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ProJudgeBench: A new multi-modal, multi-discipline benchmark for evaluating MLLM-based process judges. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ProJudge-173k: A large-scale instruction-tuning dataset and a Dynamic Dual-Phase fine-tuning strategy to enhance the capabilities of open-source models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments reveal key challenges and limitations in current models, providing valuable insights into multi-modal reasoning and process evaluation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new benchmark, ProJudgeBench, for evaluating MLLM's process judges in scientific problem-solving, and introduces a method for instruction-tuning with the new dataset. This will assist researchers in future advancements to improve MLLM for scientific use.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.2.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S1.T1.2.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.1.2">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.2.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.2.1.1.1.1">Process Judge</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.2.1.2.1.1">Benchmark</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.1.3">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.3.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.3.1.1.1.1">Multi-modal</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.3.1.2.1.1">Benchmark</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.1.4">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.4.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.4.1.1.1.1">Multi-Discipline</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.4.1.2.1.1">Benchmark</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.5.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.5.1.1.1.1">Multi-Difficulty</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.5.1.2.1.1">Problems</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.1.6">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.6.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.6.1.1.1.1">Step-level</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.6.1.2.1.1">Annotation</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.1.7">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.7.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.7.1.1.1.1">Fine-grained</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.7.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.7.1.2.1.1">Error Analysis</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.1.1.8">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.8.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.8.1.1.1.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.8.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.8.1.2.1.1">Steps</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.2.1.2.2.1">MR-GSM8K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06553v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.2.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.2.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.2.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.2.5">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.2.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.2.7">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.2.2.8">8.3</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.3.3.1">CriticBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06553v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.3.3.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.3.3.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.3.3.4">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.3.3.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.3.3.6">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.3.3.7">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.3.3.8">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.4.4.1">MathCheck-GSM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06553v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.4.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.4.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.4.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.4.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.4.6">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.4.7">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.4.4.8">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.5.5.1">ProcessBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06553v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.5.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.5.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.5.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.5.5">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.5.6">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.5.7">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.5.5.8">7.1</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.2.1.6.6.1">PRMBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.06553v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.6.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.6.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.6.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.6.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.6.6">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.6.7">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.1.6.6.8">13.4</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S1.T1.2.1.7.7.1"><span class="ltx_text ltx_font_smallcaps" id="S1.T1.2.1.7.7.1.1">ProJudgeBench</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.7.7.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.7.7.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.7.7.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.7.7.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.7.7.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.7.7.7">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.1.7.7.8">20.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares ProJudgeBench with other related benchmarks for evaluating the capabilities of large language models (LLMs) as process judges.  It highlights key differences in terms of whether the benchmark is multi-modal, multi-disciplinary, incorporates problems with varying difficulty, provides step-level annotation, offers fine-grained error analysis, and reports the average number of steps in the evaluation process.  The goal is to show how ProJudgeBench offers a more comprehensive and nuanced evaluation compared to existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between related benchmarks with our ProJudgeBench.
> </details>





### In-depth insights


#### Process Judge
**Process judges** in the context of MLLMs are crucial for evaluating the reasoning behind scientific problem-solving, going beyond just checking final answers. **Human evaluation is costly**, thus prompting the creation of automated judges using MLLMs. However, the **reliability of these model-based judges is uncertain** due to inherent errors and biases in MLLMs. A need for comprehensive benchmarks to specifically assess the capabilities of these process judges is paramount. Such benchmarks need to overcome narrow scope, **insufficient error analysis**, and **synthetic or non-generalizable data** found in existing ones. The end goal being is to refine process evaluation, enabling more accurate insights into MLLM weaknesses and enhancing overall scientific reasoning capabilities.

#### ProJudgeBench
**ProJudgeBench** appears to be a novel benchmark crafted for evaluating the error detection, classification, and diagnostic capabilities of MLLM-based process judges. Its key strengths lie in its multi-modal, multi-discipline nature, spanning mathematics, physics, chemistry, and biology. It employs **fine-grained error analysis**, categorizing errors into seven distinct types based on observed model mistakes. The dataset comprises solutions from diverse MLLMs, ensuring realistic error patterns, a key differentiator from synthetic data used in other benchmarks. This approach promises to improve the reliability of **multi-modal evaluation** in the future.

#### Error Analysis
The paper's methodology for error analysis is comprehensive, classifying mistakes into seven distinct categories, ranging from fundamental numerical errors to complex reasoning deficits. This detailed categorization allows for granular insights into model weaknesses. Crucially, the error analysis is conducted by human experts, ensuring reliability and nuance beyond automated assessments. This emphasis on human-annotated data is a strength, enabling the identification of subtle errors often missed by automated systems. The analysis aims to go beyond mere error detection, focusing on understanding root causes and providing explanations. **This approach promotes better targeted model improvements.** However, **the reliance on human annotation introduces potential biases and scalability limitations.** Future work could explore hybrid approaches that combine human expertise with automated techniques for more efficient and objective error analysis.

#### Data Creation
The data creation process involves meticulous efforts in curating problems from OlympiadBench and OlympicArena, supplemented with K12-level questions to ensure difficulty diversity. Solutions are generated by a diverse range of MLLMs, and experts annotate each step for correctness, error type, and explanation. **This detailed annotation facilitates a systematic evaluation of process judges** and emphasizes the effort to capture real-world reasoning behaviors. Rigorous quality control mechanisms, including inter-annotator agreement checks and resolution of discrepancies, further bolster annotation reliability. This thoroughness ensures the benchmark's integrity, ultimately enabling reliable assessment of MLLM-based process judges, leading to actionable insights that foster future improvements.

#### Fine-Tuning
**Fine-tuning** is crucial for adapting pre-trained models to specific tasks by updating their parameters using task-specific data. This process enhances performance and efficiency, especially when dealing with limited data. Effective fine-tuning strategies often involve techniques like transfer learning, where knowledge gained from pre-training is leveraged. The choice of architecture, data set, and regularization methods are all important considerations for a successful tuning. Analyzing the learning rate and optimization algorithms are key to avoid overfitting or underfitting the model. Ablation studies can also help find and remove the unnecessary parts of the model and achieve a better final performance.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.2.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.2.1.1.1.1">Process Judge</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.2.1.2.1.1">Benchmark</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical summary of the ProJudgeBench benchmark and the ProJudge-173k dataset.  For ProJudgeBench, it shows the number of samples, the distribution across four scientific disciplines (Math, Physics, Chemistry, Biology), the breakdown of problem types (K12, Olympiad, and competition levels), the average and maximum number of steps in the solutions, the average and maximum number of error types, and the average, maximum, and percentage of erroneous steps in the solutions. For ProJudge-173k, similar statistics are provided, including the distribution of problems across Camel, K12, and Olympiad datasets. This gives a comprehensive overview of the size, complexity, and error characteristics of both the benchmark and the instruction tuning dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Statistics of ProJudgeBench and ProJudge-173k.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.3.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.3.1.1.1.1">Multi-modal</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.3.1.2.1.1">Benchmark</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various large language models (LLMs) on the ProJudgeBench benchmark.  It shows the overall accuracy and accuracy broken down by error type for each model.  Both open-source and proprietary LLMs are included.  It also presents results for models fine-tuned using a new Dynamic Dual-Phase strategy on the ProJudge-173k dataset.  Performance gains or losses compared to the original, open-source model are indicated using '+' or '-' respectively. The best performing model for each metric is shown in bold, while the second best is underlined.
> <details>
> <summary>read the caption</summary>
> Table 3: Performances comparison of MLLMs on ProJudgeBench. The best performance is in bold, while the second-best is underlined. ††{\dagger}† denotes the models fine-tuned on ProJudge-173k with Dynamic Dual-Phase strategy. In fine-tuned MLLMs, +{{\color[rgb]{0.22265625,0.7109375,0.2890625}\definecolor[named]{% pgfstrokecolor}{rgb}{0.22265625,0.7109375,0.2890625}+}}+ (or −{\color[rgb]{1,0,0}\definecolor[named]{pgfstrokecolor}{rgb}{1,0,0}-}-) indicates the performance gain (or lose) compared to the baseline open-source models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.4.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.4.1.1.1.1">Multi-Discipline</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.4.1.2.1.1">Benchmark</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the effectiveness of two fine-tuning strategies: standard fine-tuning and the Dynamic Dual-Phase (DDP) approach.  The DDP method encourages the model to reason explicitly through the problem-solving steps before evaluating solutions. The table shows the performance metrics, specifically the overall step correctness accuracy, on the complete ProJudgeBench dataset and a subset called OlympicArena. This allows for an assessment of both in-domain performance and the generalization capabilities of the models trained with each method.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on Dynamic Dual-Phase fine-tuning strategy. We compare the standard fine-tuning (+ FT) with DDP-enhanced training (+ DDP). Overall and OlympicArena represent the results on the full set of ProJudgeBench and its OlympicArena subset respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.5.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.5.1.1.1.1">Multi-Difficulty</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.5.1.2.1.1">Problems</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table defines seven categories of errors commonly made by large language models (LLMs) during problem-solving.  Each error type is described to provide a clear understanding of the different kinds of mistakes LLMs make, which helps in evaluating their performance and identifying areas for improvement.  The definitions are detailed enough to facilitate consistent and accurate annotation of errors during the evaluation process.
> <details>
> <summary>read the caption</summary>
> Table 5: Definitions of seven error types.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.6.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.6.1.1.1.1">Step-level</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.6.1.2.1.1">Annotation</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the ten large language models (LLMs) used to generate the solutions within the ProJudgeBench dataset.  These LLMs represent a diverse range of architectures, sizes, and training data, reflecting the spectrum of current MLLM capabilities and potential biases.  The diversity of models ensures the benchmark evaluates the process judging capabilities on a broad range of reasoning patterns and error types commonly exhibited by different MLLMs.
> <details>
> <summary>read the caption</summary>
> Table 6: List of MLLMs used in ProJudgeBench to generate solutions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.7.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.7.1.1.1.1">Fine-grained</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.7.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.7.1.2.1.1">Error Analysis</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a statistical overview of the ProJudgeBench dataset, broken down by problem type (normal vs. competition-level) and scientific discipline.  It provides the number of samples, average and maximum number of steps in the solutions, the average and maximum number of error types present, and the average percentage of erroneous steps within each category. This detailed breakdown allows for an understanding of the dataset's composition and complexity, showing how metrics change based on problem difficulty and subject matter.
> <details>
> <summary>read the caption</summary>
> Table 7: Statistics of ProJudgeBench. K12 and Comp represent normal and competition-level problems, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.1.1.8.1">
<tr class="ltx_tr" id="S1.T1.2.1.1.1.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.8.1.1.1.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.1.1.1.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.1.1.8.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.8.1.2.1.1">Steps</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the ten large language models (LLMs) used to generate the solutions within the ProJudge-173k dataset.  These LLMs represent a diverse range of models, both open-source and proprietary, with varying sizes and architectures.  They were used to create a varied set of solutions, which reflect different reasoning patterns and error types, enhancing the realism and comprehensiveness of the dataset.
> <details>
> <summary>read the caption</summary>
> Table 8: List of MLLMs used in ProJudge-173k to generate solutions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.1.1">Statistic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.2.1">Number</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T2.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.2.2.1.1">ProJudgeBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.2.2.2">2,400</th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T2.2.1.3.3.1">- # Math / Phy. / Chem. / Bio.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.3.3.2">600</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.4.1.1">- # K12 / OlymBench / OlymArena</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.1.2">1,350 / 250 / 625</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.5.2.1">- Avg. / Max. Steps</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2.2">20.8 / 470</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.6.3.1">- Avg. / Max. Error Types</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.3.2">1.5 / 5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.7.4.1">- Avg. / Max. / % Error Steps</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4.2">6.6 / 226 / 21.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.1.8.5.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.8.5.1.1">ProJudge-173k</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.8.5.2">173,354</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.9.6.1">- # Math / Phy. / Chem. / Bio.</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6.2">58k / 40k / 37k / 35k</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.10.7.1">- # Camel / K12 / OlymdBench</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.10.7.2">26k / 93k / 53k</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.11.8.1">- # Avg. / Max. Steps</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.11.8.2">18.2 / 926</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.12.9.1">- Avg. / Max. Error Types</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.12.9.2">1.4 / 5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.1.13.10.1">- Avg. / Max. / % Error Steps</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.13.10.2">5.9 / 402 / 24.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a detailed breakdown of the ProJudge-173k dataset, categorized by data source (Camel, K12, and Olympiad) and scientific discipline (Math, Physics, Chemistry, Biology). For each category, it provides the number of samples, problems, average number of steps per solution, maximum number of steps, and average percentage of erroneous steps.  This table offers a comprehensive overview of the dataset's size, complexity, and error distribution across different problem types and difficulty levels, highlighting the dataset's suitability for training and evaluating robust process judges.
> <details>
> <summary>read the caption</summary>
> Table 9: Statistics of data sources and quantities in ProJudge-173k.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.30.30.31.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.30.30.31.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.31.1.1.1">Model Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.30.30.31.1.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.30.30.31.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.31.1.2.1.1">
<span class="ltx_tr" id="S5.T3.30.30.31.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.31.1.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.31.1.2.1.1.1.1.1">Step</span></span></span>
<span class="ltx_tr" id="S5.T3.30.30.31.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.31.1.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.31.1.2.1.1.2.1.1">Corr.</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="S5.T3.30.30.31.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.31.1.3.1">Error Types</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.30.30.32.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.32.2.1.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.32.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.32.2.2.1">RE.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.32.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.32.2.3.1">VI.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.32.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.32.2.4.1">NC.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.32.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.32.2.5.1">SC.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.32.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.32.2.6.1">KE.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.32.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.32.2.7.1">QU.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.32.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.32.2.8.1">NS.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.33.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S5.T3.30.30.33.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T3.30.30.33.3.1.1" style="background-color:#F2F2F2;">Open-source MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.34.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.30.30.34.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://internvl.github.io/blog/2024-12-05-InternVL-2.5/" style="color:#B25628;" title="">InternVL2.5-8B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.30.30.34.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">25.58</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.30.30.34.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.34.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">8.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.34.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.34.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">8.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.34.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">1.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.34.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">1.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.34.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">1.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.34.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.35.5">
<td class="ltx_td ltx_align_left" id="S5.T3.30.30.35.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://internvl.github.io/blog/2024-12-05-InternVL-2.5/" style="color:#B25628;" title="">InternVL2.5-26B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.35.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">66.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.35.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">13.51</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.35.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">16.44</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.35.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.35.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">14.80</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.35.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">2.63</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.35.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">2.85</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.35.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">2.15</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.35.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.35.5.10.1">4.16</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.36.6">
<td class="ltx_td ltx_align_left" id="S5.T3.30.30.36.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://internvl.github.io/blog/2024-12-05-InternVL-2.5/" style="color:#B25628;" title="">InternVL2.5-38B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.36.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.36.6.2.1">78.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.36.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.36.6.3.1">17.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.36.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.36.6.4.1">17.95</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.36.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.36.6.5.1">3.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.36.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.36.6.6.1">27.08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.36.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.36.6.7.1">8.33</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.36.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.36.6.8.1">17.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.36.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.36.6.9.1">25.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.36.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.36.6.10.1">2.08</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.37.7">
<td class="ltx_td ltx_align_left" id="S5.T3.30.30.37.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/openbmb/MiniCPM-V-2_6" style="color:#B25628;" title="">MiniCPM-V-2_6</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.37.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">23.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.37.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.13</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.37.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.03</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.37.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.37.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">1.68</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.37.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.37.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.37.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.37.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.38.8">
<td class="ltx_td ltx_align_left" id="S5.T3.30.30.38.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-VL-3B-Instruct" style="color:#B25628;" title="">Qwen2.5-VL-3B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.38.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">11.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.38.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.38.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.89</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.38.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.38.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">2.11</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.38.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.43</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.38.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.57</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.38.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.38.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.39.9">
<td class="ltx_td ltx_align_left" id="S5.T3.30.30.39.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-VL-7B-Instruct" style="color:#B25628;" title="">Qwen2-VL-7B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.39.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">34.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.39.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.39.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.39.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.39.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">1.55</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.39.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.43</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.39.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">2.71</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.39.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.39.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.40.10">
<td class="ltx_td ltx_align_left" id="S5.T3.30.30.40.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-VL-72B-Instruct" style="color:#B25628;" title="">Qwen2-VL-72B</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.40.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.40.10.2.1">77.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.40.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.40.10.3.1">33.87</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.40.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.40.10.4.1">40.11</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.40.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.40.10.5.1">1.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.40.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.40.10.6.1">39.91</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.40.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.40.10.7.1">30.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.40.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.40.10.8.1">10.27</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.40.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.40.10.9.1">4.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.40.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.40.10.10.1">2.08</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.41.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S5.T3.30.30.41.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T3.30.30.41.11.1.1" style="background-color:#F2F2F2;">Proprietary MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.42.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.30.30.42.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://deepmind.google/technologies/gemini/flash/" style="color:#37539C;" title="">Gemini-2.0-flash-exp</a></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.30.30.42.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">72.51</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.30.30.42.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.42.12.3.1">35.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.42.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.42.12.4.1">40.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.42.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.42.12.5.1">26.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.42.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">30.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.42.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.42.12.7.1">5.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.42.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.42.12.8.1">12.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.42.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">8.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.30.30.42.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.42.12.10.1">8.33</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.43.13">
<td class="ltx_td ltx_align_left" id="S5.T3.30.30.43.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://ai.google.dev/gemini-api/docs/thinking-mode" style="color:#37539C;" title="">Gemini-2.0-thinking-exp</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.43.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.43.13.2.1">72.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.43.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">35.27</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.43.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">40.06</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.43.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.43.13.5.1">27.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.43.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.43.13.6.1">32.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.43.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">4.82</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.43.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">11.98</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.43.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.43.13.9.1">9.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.43.13.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.43.13.10.1">8.33</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.44.14">
<td class="ltx_td ltx_align_left" id="S5.T3.30.30.44.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://openai.com/index/hello-gpt-4o/" style="color:#37539C;" title="">GPT-4o</a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.44.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.44.14.2.1">85.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.30.30.44.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.44.14.3.1">44.89</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.44.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.44.14.4.1">52.94</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.44.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">9.61</td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.44.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.44.14.6.1">40.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.44.14.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.44.14.7.1">27.19</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.44.14.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.44.14.8.1">16.11</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.44.14.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.44.14.9.1">30.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.30.30.44.14.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.44.14.10.1">2.08</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.45.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S5.T3.30.30.45.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T3.30.30.45.15.1.1" style="background-color:#F2F2F2;">Fine-tuned MLLMs on ProJudge-173k</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://internvl.github.io/blog/2024-12-05-InternVL-2.5/" style="color:#264F22;" title="">InternVL2.5-8B<sup class="ltx_sup" id="S5.T3.1.1.1.1.2.2"><span class="ltx_text ltx_font_italic" id="S5.T3.1.1.1.1.2.2.1">†</span></sup></a></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.2.1">84.50<sub class="ltx_sub" id="S5.T3.2.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.2.2.2.2.1.1.1">+58.92</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.3.3.1">45.39<sub class="ltx_sub" id="S5.T3.3.3.3.3.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.3.3.3.3.1.1.1">+38.62</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.4.1">53.97<sub class="ltx_sub" id="S5.T3.4.4.4.4.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.4.4.4.4.1.1.1">+45.78</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.5.5.5.1">30.98</span><sub class="ltx_sub" id="S5.T3.5.5.5.5.2"><span class="ltx_text ltx_font_italic" id="S5.T3.5.5.5.5.2.1">+30.98</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">22.14<sub class="ltx_sub" id="S5.T3.6.6.6.6.1"><span class="ltx_text ltx_font_italic" id="S5.T3.6.6.6.6.1.1">+13.96</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.7.7.1">8.33</span><sub class="ltx_sub" id="S5.T3.7.7.7.7.2"><span class="ltx_text ltx_font_italic" id="S5.T3.7.7.7.7.2.1">+6.58</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.8.8.1">15.12<sub class="ltx_sub" id="S5.T3.8.8.8.8.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.8.8.8.8.1.1.1">+13.95</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.9.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.9.9.9.9.1">3.22</span><sub class="ltx_sub" id="S5.T3.9.9.9.9.2"><span class="ltx_text ltx_font_italic" id="S5.T3.9.9.9.9.2.1">+2.15</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.10.10.10.10.1">10.41<sub class="ltx_sub" id="S5.T3.10.10.10.10.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.10.10.10.10.1.1.1">+10.41</span></sub></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.20">
<td class="ltx_td ltx_align_left" id="S5.T3.11.11.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-VL-3B-Instruct" style="color:#264F22;" title="">Qwen2.5-VL-3B<sup class="ltx_sup" id="S5.T3.11.11.11.1.2.2"><span class="ltx_text ltx_font_italic" id="S5.T3.11.11.11.1.2.2.1">†</span></sup></a></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.12.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">81.29<sub class="ltx_sub" id="S5.T3.12.12.12.2.1"><span class="ltx_text ltx_font_italic" id="S5.T3.12.12.12.2.1.1">+70.45</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.13.13.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">39.09<sub class="ltx_sub" id="S5.T3.13.13.13.3.1"><span class="ltx_text ltx_font_italic" id="S5.T3.13.13.13.3.1.1">+38.25</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.14.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">46.36<sub class="ltx_sub" id="S5.T3.14.14.14.4.1"><span class="ltx_text ltx_font_italic" id="S5.T3.14.14.14.4.1.1">+45.47</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.15.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">24.67<sub class="ltx_sub" id="S5.T3.15.15.15.5.1"><span class="ltx_text ltx_font_italic" id="S5.T3.15.15.15.5.1.1">+24.67</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.16.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.16.16.16.6.1">24.54</span><sub class="ltx_sub" id="S5.T3.16.16.16.6.2"><span class="ltx_text ltx_font_italic" id="S5.T3.16.16.16.6.2.1">+22.43</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.17.17.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">5.70<sub class="ltx_sub" id="S5.T3.17.17.17.7.1"><span class="ltx_text ltx_font_italic" id="S5.T3.17.17.17.7.1.1">+5.27</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.18.8" style="padding-left:4.0pt;padding-right:4.0pt;">12.69<sub class="ltx_sub" id="S5.T3.18.18.18.8.1"><span class="ltx_text ltx_font_italic" id="S5.T3.18.18.18.8.1.1">+12.12</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.19.19.19.9" style="padding-left:4.0pt;padding-right:4.0pt;">1.61<sub class="ltx_sub" id="S5.T3.19.19.19.9.1"><span class="ltx_text ltx_font_italic" id="S5.T3.19.19.19.9.1.1">+1.61</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.20.20.20.10" style="padding-left:4.0pt;padding-right:4.0pt;">4.16<sub class="ltx_sub" id="S5.T3.20.20.20.10.1"><span class="ltx_text ltx_font_italic" id="S5.T3.20.20.20.10.1.1">+4.16</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.30">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.21.21.21.1" style="padding-left:4.0pt;padding-right:4.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-VL-7B-Instruct" style="color:#264F22;" title="">Qwen2-VL-7B<sup class="ltx_sup" id="S5.T3.21.21.21.1.2.2"><span class="ltx_text ltx_font_italic" id="S5.T3.21.21.21.1.2.2.1">†</span></sup></a></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.22.22.22.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.22.22.22.2.1">83.72</span><sub class="ltx_sub" id="S5.T3.22.22.22.2.2"><span class="ltx_text ltx_font_italic" id="S5.T3.22.22.22.2.2.1">+49.07</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.23.23.23.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.23.23.23.3.1">44.57</span><sub class="ltx_sub" id="S5.T3.23.23.23.3.2"><span class="ltx_text ltx_font_italic" id="S5.T3.23.23.23.3.2.1">+43.88</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.24.24.24.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.24.24.24.4.1">52.29</span><sub class="ltx_sub" id="S5.T3.24.24.24.4.2"><span class="ltx_text ltx_font_italic" id="S5.T3.24.24.24.4.2.1">+51.47</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.25.25.25.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.25.25.25.5.1">31.62<sub class="ltx_sub" id="S5.T3.25.25.25.5.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.25.25.25.5.1.1.1">+31.62</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.26.26.26.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.26.26.26.6.1">27.36<sub class="ltx_sub" id="S5.T3.26.26.26.6.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.26.26.26.6.1.1.1">+25.81</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.27.27.27.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.27.27.27.7.1">11.40<sub class="ltx_sub" id="S5.T3.27.27.27.7.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.27.27.27.7.1.1.1">+10.97</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.28.28.28.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.28.28.28.8.1">14.69</span><sub class="ltx_sub" id="S5.T3.28.28.28.8.2"><span class="ltx_text ltx_font_italic" id="S5.T3.28.28.28.8.2.1">+11.98</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.29.29.29.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.29.29.29.9.1">4.30<sub class="ltx_sub" id="S5.T3.29.29.29.9.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.29.29.29.9.1.1.1">+4.30</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.30.30.30.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.30.30.30.10.1">6.25</span><sub class="ltx_sub" id="S5.T3.30.30.30.10.2"><span class="ltx_text ltx_font_italic" id="S5.T3.30.30.30.10.2.1">+6.25</span></sub>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt used to instruct GPT-4 to introduce errors into correct solutions. The prompt guides GPT-4 to act as an educator who understands both problem-solving and common student mistakes, instructing it to introduce realistic and reasonable errors into a given solution that mimic typical student or AI errors.  The prompt specifies seven types of errors to consider and requires a specific format for the response. The response should include step-by-step evaluations marking correct (1) or incorrect (0) steps, with error type and description specified for incorrect steps.  The prompt also includes placeholders for the problem, its knowledge points, and the correct solution.
> <details>
> <summary>read the caption</summary>
> Table 10: Prompt for injecting errors.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.2.1">Overall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.3.1">OlympicArena</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.2.1.2.1.1">InternVL2.5-8B (Base)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.2.1.2">25.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.2.1.3">22.33</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.3.2.1">+ FT</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.3.2.2">83.37</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.3.2.3">81.71</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.4.3.1">+ FT + DDP (Full)</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.4.3.2.1">84.50</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.4.3.3.1">85.07</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.2.1.5.4.1">QwenVL2.5-3B (Base)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.5.4.2">11.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.5.4.3">11.92</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.6.5.1">+ FT</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.6.5.2">80.57</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.6.5.3">80.38</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.7.6.1">+ FT + DDP (Full)</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.7.6.2.1">81.29</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.7.6.3.1">81.01</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.2.1.8.7.1">QwenVL2.5-7B (Base)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.8.7.2">34.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.1.8.7.3">38.25</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.1.9.8.1">+ FT</th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.9.8.2">81.91</td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.1.9.8.3">77.88</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.2.1.10.9.1">+ FT + DDP (Full)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.1.10.9.2"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.10.9.2.1">83.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.1.10.9.3"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.10.9.3.1">82.67</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt used to instruct large language models (LLMs) to generate solutions for scientific problems in the ProJudge dataset. The prompt instructs the model to act as a student solving the problem step-by-step, using LaTeX formatting for mathematical expressions, and to include context information if provided.  The model is asked to clearly delineate the steps involved in solving the problem.
> <details>
> <summary>read the caption</summary>
> Table 11: Prompt for generating solutions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T5.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T5.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.1.1.1.1">
<span class="ltx_p" id="A2.T5.2.1.1.1.1.1" style="width:128.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.1.1.1.1.1">Error Types</span></span>
</span>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="A2.T5.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.1.1.2.1">
<span class="ltx_p" id="A2.T5.2.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.2.1.1.2.1.1.1">Definitions</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T5.2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.2.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.2.1.1.1">
<span class="ltx_p" id="A2.T5.2.2.1.1.1.1" style="width:128.0pt;">Numerical Calculation Error</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="A2.T5.2.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.2.1.2.1">
<span class="ltx_p" id="A2.T5.2.2.1.2.1.1">Errors in basic arithmetic operations such as addition, subtraction, division, or square roots.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.2.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.3.2.1.1">
<span class="ltx_p" id="A2.T5.2.3.2.1.1.1" style="width:128.0pt;">Symbolic Calculation Error</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="A2.T5.2.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.3.2.2.1">
<span class="ltx_p" id="A2.T5.2.3.2.2.1.1">Errors in manipulating algebraic expressions, such as incorrect expansion, factoring, simplification, or solving equations with variables.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.2.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.4.3.1.1">
<span class="ltx_p" id="A2.T5.2.4.3.1.1.1" style="width:128.0pt;">Visual Interpretation Error</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="A2.T5.2.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.4.3.2.1">
<span class="ltx_p" id="A2.T5.2.4.3.2.1.1">Errors in interpreting graphical data, such as misidentifying coordinates, shapes, spatial relationships, or data within figures.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.2.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.5.4.1.1">
<span class="ltx_p" id="A2.T5.2.5.4.1.1.1" style="width:128.0pt;">Reasoning Error</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="A2.T5.2.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.5.4.2.1">
<span class="ltx_p" id="A2.T5.2.5.4.2.1.1">Errors in the logical thinking process that lead to incorrect conclusions, such as flawed arguments, invalid inferences, or gaps in the logical flow of the solution.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.2.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.6.5.1.1">
<span class="ltx_p" id="A2.T5.2.6.5.1.1.1" style="width:128.0pt;">Knowledge Error</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="A2.T5.2.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.6.5.2.1">
<span class="ltx_p" id="A2.T5.2.6.5.2.1.1">Errors caused by insufficient understanding or incorrect application of necessary knowledge (e.g., concepts, formulas, theorems, methods), or using outdated or incorrect information.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.2.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.7.6.1.1">
<span class="ltx_p" id="A2.T5.2.7.6.1.1.1" style="width:128.0pt;">Question Understanding Error</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="A2.T5.2.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.7.6.2.1">
<span class="ltx_p" id="A2.T5.2.7.6.2.1.1">Errors due to misunderstanding or misinterpreting the problems’ conditions or requirements, such as misreading questions or misapplying given conditions.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T5.2.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.8.7.1.1">
<span class="ltx_p" id="A2.T5.2.8.7.1.1.1" style="width:128.0pt;">No solution provided</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_bb ltx_border_t" id="A2.T5.2.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.8.7.2.1">
<span class="ltx_p" id="A2.T5.2.8.7.2.1.1">The model refuses to answer, fails to follow instructions to make a solution, or encounters anomalies in generation process such as repetitive responses or incomplete outputs.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt used to instruct large language models (LLMs) to generate solutions for scientific problems.  The prompt guides the LLM to solve problems step-by-step using LaTeX format and to consider all relevant information before providing an answer. The response should end with 'The final answer is ANSWER.'
> <details>
> <summary>read the caption</summary>
> Table 12: Prompt for generating solutions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T6.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="A3.T6.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.2.1.1.1.1.1">MLLMs as solution generators in ProJudgeBench</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A3.T6.2.1.2.1.1">
<table class="ltx_tabular ltx_align_middle" id="A3.T6.2.1.2.1.1.1">
<tr class="ltx_tr" id="A3.T6.2.1.2.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.1.1.1.1">InternVL2.5-8B</td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.2.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.1.1.2.1">InternVL2.5-26B</td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.2.1.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.1.1.3.1">InternVL2.5-38B</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A3.T6.2.1.2.1.2">
<table class="ltx_tabular ltx_align_middle" id="A3.T6.2.1.2.1.2.1">
<tr class="ltx_tr" id="A3.T6.2.1.2.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.2.1.1.1">Qwen2.5-VL-Instruct-3B</td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.2.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.2.1.2.1">Qwen2.5-VL-Instruct-7B</td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.2.1.2.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.2.1.3.1">Qwen2.5-VL-Instruct-72B</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A3.T6.2.1.2.1.3">
<table class="ltx_tabular ltx_align_middle" id="A3.T6.2.1.2.1.3.1">
<tr class="ltx_tr" id="A3.T6.2.1.2.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.3.1.1.1">MiniCPM-V-2_6 (8B)</td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.2.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.3.1.2.1">QVQ-72B-Preview</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T6.2.1.2.1.4">
<table class="ltx_tabular ltx_align_middle" id="A3.T6.2.1.2.1.4.1">
<tr class="ltx_tr" id="A3.T6.2.1.2.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.4.1.1.1">LLaVA-OneVision (7B)</td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.1.2.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T6.2.1.2.1.4.1.2.1">GPT-4o</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt used for the process evaluation task in the ProJudgeBench experiment.  The prompt instructs the model to act as a teacher evaluating a student's solution to a scientific problem. The evaluator must first solve the problem correctly, then assess each step of the student's solution, providing a binary correctness score (1 for correct, 0 for incorrect), classifying any errors using seven predefined categories, and giving a brief explanation for each identified error. The final output should be a Python list with specific formatting.
> <details>
> <summary>read the caption</summary>
> Table 13: Prompt for process evaluation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.06553/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06553/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}