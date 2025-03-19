---
title: "MPBench: A Comprehensive Multimodal Reasoning Benchmark for Process Errors Identification"
summary: "MPBench: Multimodal benchmark to identify errors in reasoning processes."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 HIT",]
showSummary: true
date: 2025-03-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12505 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhaopan Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12505" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12505" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12505/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Reasoning in large language models (LLMs)** is crucial for complex tasks, yet identifying process errors remains a challenge. Current process-level reward models (PRMs) benchmarks are text-based and focus on error detection, overlooking reasoning search scenarios. To address this gap, the paper introduces a comprehensive, multi-task, multimodal benchmark designed to systematically assess the effectiveness of PRMs in diverse scenarios. 



The paper introduces **MPBench**, which employs three evaluation paradigms targeting specific roles of PRMs: Step Correctness, Answer Aggregation, and Reasoning Process Search. MPBench includes 9,745 fine-grained data instances. Experiments with 12 multimodal LLMs (MLLMs), including GPT-40 and Gemini-2.0, reveal performance characteristics and guide future multimodal PRM development.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MPBench is a new multimodal benchmark for evaluating process-level reward models (PRMs). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MPBench includes three evaluation paradigms: step correctness, answer aggregation, and reasoning process search. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments on 12 MLLMs reveal distinct performance characteristics and highlight areas for improvement. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a new benchmark**, addressing the gap in multimodal PRM evaluation. It enhances research by providing tools to **comprehensively assess** and improve reasoning in MLLMs, enabling advancements in AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12505/x2.png)

> 🔼 Figure 1 provides a comprehensive overview of MPBench, a novel multimodal benchmark for evaluating Process Reward Models (PRMs). The left side illustrates the data curation process, starting from original data instances (17 subjects, including science, math, and commonsense) encompassing questions, correct steps, and final answers. These undergo filtering (rule-based, GPT-4 review, and Gemini difficulty filter) and manual review to ensure quality and create evaluation data instances.  The right side depicts the three core evaluation paradigms: Step Correctness (assessing the correctness of individual reasoning steps), Answer Aggregation (selecting the best solution from multiple candidates using PRM scores), and Reasoning Process Search (guiding the LLM to find optimal reasoning steps through PRM predictions).  The figure highlights how MPBench systematically assesses PRM performance across these diverse scenarios, utilizing various tasks such as error identification, answer aggregation, and search guidance.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of our MPBench. Left: data curation procedure. Right: evaluation paradigms: Step Correctness, Answer Aggregation, and Reasoning Process Search, highlighting the assessment of PRM performance through various tasks such as identifying errors, aggregating answers, and guiding reasoning steps
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.1.1.2.1">
<td class="ltx_td ltx_border_tt" id="S1.T1.1.1.2.1.1"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.2.1.2">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.2.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.2.1.1.1.1">PRM</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.2.1.2.1.1">Benchmarks?</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.2.1.3">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.3.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.3.1.1.1.1">Multimodal</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.3.1.2.1.1">Benchmarks?</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.2.1.4">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.4.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.4.1.1.1.1">Evaluation</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.4.1.2.1.1">Paradigms</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.2.1.5">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.5.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.5.1.1.1.1">Step</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.5.1.2.1.1">Annotation</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.2.1.6"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.6.1">Annotator</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.2.1.7">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.7.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.7.1.1.1.1">Test Case</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.7.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.7.1.2.1.1">Size</span></td>
</tr>
</table>
</th>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.3.2.1">MR-GSM8K <cite class="ltx_cite ltx_citemacro_cite">Zeng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.12505v1#bib.bib19" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.2.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.2.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.2.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.2.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.2.6">Human</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.3.2.7">2,999</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4.3">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.4.3.1">CriticBench <cite class="ltx_cite ltx_citemacro_cite">Lin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.12505v1#bib.bib9" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3.4">1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3.6">-</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3.7">-</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5.4">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.5.4.1">MathCheck-GSM <cite class="ltx_cite ltx_citemacro_cite">Zhou et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.12505v1#bib.bib22" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4.4">1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4.5">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4.6">Synthetic</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4.7">516</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.1">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.1.1">M<sup class="ltx_sup" id="S1.T1.1.1.1.1.1">3</sup>CoT <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.12505v1#bib.bib1" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.1.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.1.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.1.4">1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.1.5">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.1.6">Human</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.1.7">5,975</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.6.5">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.6.5.1">ProcessBench <cite class="ltx_cite ltx_citemacro_cite">Zheng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.12505v1#bib.bib21" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5.4">1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5.5">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5.6">Human</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5.7">3,400</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.7.6">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.7.6.1.1">PRMBench <cite class="ltx_cite ltx_citemacro_cite">Song et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.12505v1#bib.bib13" title="">2025</a>)</cite></span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.6.2">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.6.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.6.4">1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.6.5">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.6.6">Synthetic + Human</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.6.7">6,216</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.1.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.8.7.1.1">MPBench (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.8.7.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.8.7.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.8.7.4">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.8.7.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.8.7.6">Synthetic + Human</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.1.1.8.7.7">9,745</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares various reasoning-related Large Language Model (LLM) benchmarks, highlighting key differences and similarities.  It covers aspects such as whether the benchmark is multimodal, the evaluation paradigms used, the type of annotation (human vs. synthetic), and the number of test cases. This allows for a direct comparison with the newly proposed MPBench, showcasing its unique strengths and how it advances beyond existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between reasoning-related LLM benchmarks with our MPBench benchmark.
> </details>





### In-depth insights


#### PRM Eval Needed
**Evaluating Process Reward Models (PRMs) comprehensively is vital.** Existing benchmarks primarily focus on text-based error detection, neglecting crucial scenarios like **reasoning search**, which is essential for LLM inference. Furthermore, **multimodal reasoning** is often overlooked. This narrow evaluation scope hinders a deep understanding of PRMs' potential. MPBench addresses this gap by introducing diverse evaluation paradigms such as Step Correctness, Answer Aggregation, and Reasoning Process Search within a **multimodal context**. These paradigms target specific roles of PRMs in enhancing LLM reasoning, assessing their ability to judge step correctness, aggregate solutions, and guide reasoning search. This comprehensive evaluation allows for more informed development and application of PRMs in complex reasoning tasks. The use of text only based dataset is not enough to cover complex reasoning scenarios.

#### MPBench:Multi PRM
While "MPBench: Multi PRM" isn't directly a heading, it represents the core contribution: a **multimodal reasoning benchmark (MPBench) for Process Reward Models (PRMs)**. The paper addresses a gap in existing PRM evaluations, which are primarily text-based and lack comprehensive scenarios like reasoning search. MPBench likely introduces **diverse tasks and evaluation paradigms** to systematically assess PRM effectiveness. The "Multi" aspect likely signifies the benchmark's multimodal nature, incorporating various data types beyond text, reflecting real-world complexity. It emphasizes a **shift towards evaluating PRMs in more realistic settings** and their ability to handle diverse inputs. Key innovations would center on defining tasks and metrics to measure how well PRMs guide reasoning, aggregate solutions, and identify errors across modalities. Ultimately, MPBench enables **deeper understanding and development of PRMs for enhanced reasoning in multimodal applications**.

#### Stepwise Analysis
A "Stepwise Analysis" framework, within the context of multimodal reasoning, would likely involve **dissecting complex problems into smaller, manageable steps**. This approach is crucial for understanding how models process information, identify errors, and make decisions at each stage. The analysis would likely involve **evaluating the correctness and relevance of each step**, potentially using a scoring mechanism or a reward system to guide model behavior. Multimodal data adds complexity, requiring analysis of how different modalities (e.g., text, images) are integrated and processed sequentially. Crucially, identifying the **failure points in a step-by-step manner allows for targeted improvements** to the model's reasoning capabilities. Error propagation and the impact of early mistakes on later steps would be a key area of investigation, potentially necessitating backtracking or alternative reasoning paths. Finally, analyzing the **efficiency of the stepwise process**, considering the number of steps and computational resources required, is paramount for practical applications.

#### Multimodal Lags
The concept of "Multimodal Lags" is intriguing, suggesting potential **asynchronies or misalignments between different modalities** (e.g., text, image, audio) in AI systems. If such lags exist, they could critically impact the system's ability to reason, understand, and respond appropriately. For example, **a delay in processing visual information relative to textual input could lead to incorrect conclusions** in a visual question-answering task. Addressing such lags would require careful consideration of **processing speeds, data synchronization methods, and the relative importance assigned to different modalities**. Furthermore, the optimal handling of multimodal lags may **depend on the specific task** – a small delay might be tolerable in one application but catastrophic in another. Finally, robust benchmarks are needed to **quantify and characterize these lags** and their impact on overall performance.

#### Scale Impacts
The section on scale impacts highlights that **model performance on MPBench generally scales with size**. This is particularly evident in Step Correctness and Reasoning Process Search, suggesting that larger models are better at learning correct/incorrect steps and navigating the solution space.  Weaker models even perform below random chance on assessments. This indicates that a **larger model capacity is crucial for complex reasoning**, enabling better understanding of correct/incorrect steps and solution space navigation. **The disproportionate impact of scale on Step Correctness and Search indicates that these tasks are cognitively demanding**, requiring deeper reasoning and step-level evaluation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12505/x3.png)

> 🔼 This radar chart visualizes the performance breakdown of various LLMs (large language models) on the MPBench benchmark. Each LLM's performance is assessed across multiple aspects of reasoning, including step correctness (FEI, AEI, Avg.), answer aggregation (BoN, MV, Avg.), and reasoning process search (F1, MCC, Avg.).  The chart allows for a comparison of the relative strengths and weaknesses of each model in different reasoning tasks.  The use of a radar chart enables a direct visual comparison of the models across all evaluation metrics.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance breakdown on MPBench.
> </details>



![](https://arxiv.org/html/2503.12505/x4.png)

> 🔼 Figure 3 visualizes the correlation between three key evaluation paradigms in the MPBench benchmark: Step Correctness (SC), Answer Aggregation (AA), and Reasoning Process Search (RS). Each point represents a model's performance across these three aspects. Blue lines show the fitted relationships between SC and AA, SC and RS, and AA and RS. A dashed red line represents the ideal growth line, whose slope reflects the ratio of random performance for each metric. This figure highlights how well-performing models tend to excel across all three evaluation paradigms, illustrating the interdependency of these reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: Interrelationship between a model’s capabilities in step correctness identify, answer aggregation, and reasoning process search. Each point on the graph represents a model, with coordinates indicating its performance in step correctness identify(SC), answer aggregation (AA), and reasoning process search (RS). The graph features fitted lines for the scatter plots, denoted by blue lines for SC/AA, SC/RS, and AA/RS, while a red dashed line represents the ideal growth line. The slope of this ideal growth line is the ratio of the random values of each metric.
> </details>



![](https://arxiv.org/html/2503.12505/x5.png)

> 🔼 This figure analyzes how error position in a reasoning process affects model performance. Panel (a) shows the distribution of errors across different steps within the dataset. Panel (b) presents the model's performance in reasoning process search, using average F1 score and Matthews Correlation Coefficient (MCC) to evaluate performance across different error positions. Panel (c) focuses specifically on step correctness, measuring performance with only the F1 score across various error positions. The analysis is limited to steps 2-10 for better visualization, excluding step 1 and steps beyond 10.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Impact of Error Position on Model Performance. (a) Distribution of error positions within the dataset. (b) Model performance on reasoning process search, measured by average F1 score and MCC, across different error positions. (c) Model performance on Step Correctness, measured by F1 score, across different error positions. Note: Step 1 and steps beyond 10 are truncated for improved visualization.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.2.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.2.1.1.1.1">PRM</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.2.1.2.1.1">Benchmarks?</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of the performance of various large language models (LLMs) on the MPBench benchmark.  The table shows results across three key evaluation paradigms: Step Correctness (including First Error Identification and All Error Identification), Answer Aggregation (using Best-of-N and Majority Voting methods), and Reasoning Process Search.  For each paradigm and sub-category, the table displays the F1 score, Matthews Correlation Coefficient (MCC), and average performance. The best performing LLM for each metric is shown in bold, while the second-best is underlined.  A random baseline is also provided to show performance relative to chance, with the difference from the random baseline indicated in the 'Overall' column using a '+' for improvement and a '-' for worse performance.
> <details>
> <summary>read the caption</summary>
> Table 2:  Performances comparison of models on MPBench. The best performance for each category and task is in bold, while the second-best performance is underlined. Random denotes the performance of random reward generation. In the Overall category, +{\color[rgb]{0.22265625,0.7109375,0.2890625}\definecolor[named]{pgfstrokecolor% }{rgb}{0.22265625,0.7109375,0.2890625}+}+ (or −{\color[rgb]{1,0,0}\definecolor[named]{pgfstrokecolor}{rgb}{1,0,0}-}-) indicates the performance gain compared to the random baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.3.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.3.1.1.1.1">Multimodal</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.3.1.2.1.1">Benchmarks?</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed comparison of various large language models' performance on the MPBench benchmark, categorized by domain (Science, Commonsense, Mathematics).  For each model, average scores are provided across three evaluation paradigms: Step Correctness (evaluating the accuracy of each step in a reasoning process), Answer Aggregation (assessing the ability to select the best solution from multiple candidates), and Reasoning Process Search (measuring the effectiveness of guiding the search for optimal solutions).  A random baseline (R) is included for each paradigm and domain to provide a comparative reference, highlighting each model's relative strengths and weaknesses across different reasoning tasks and domains.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of Models on MPBench Across Science, Commonsense, and Mathematics Domains. The table presents average scores for each evaluation paradigm (Step Correctness, Answer Aggregation, and Reasoning Process Search), compared to the performance of a random baseline (R).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.4.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.4.1.1.1.1">Evaluation</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.4.1.2.1.1">Paradigms</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 provides a detailed breakdown of the MPBench dataset's composition across different evaluation paradigms and domains.  It shows the number of data instances (science, commonsense, mathematics) used for each of the three evaluation paradigms: Step Correctness, Answer Aggregation, and Reasoning Process Search. This gives a clear picture of the dataset's balance and size across various task types and subject areas.
> <details>
> <summary>read the caption</summary>
> Table 4: Statistics of MPBench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.5.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.5.1.1.1.1">Step</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.5.1.2.1.1">Annotation</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a few-shot prompt example designed to evaluate the performance of Process Reward Models (PRMs) in assessing the correctness of intermediate reasoning steps within a problem-solving process.  The prompt provides a sample question and solution with step-by-step reasoning, and the evaluator is asked to provide a score for each step indicating its correctness. The scores should range from -1 (completely incorrect) to +1 (completely correct), allowing for nuanced assessments of partially correct steps. This evaluation focuses specifically on assessing the ability of PRMs to provide accurate feedback during the step-by-step process of problem solving.
> <details>
> <summary>read the caption</summary>
> Table 5: Few-shot Prompt for evaluating PRM’s ability to assess the correctness of each intermediate reasoning step.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.2.1.7.1">
<tr class="ltx_tr" id="S1.T1.1.1.2.1.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.7.1.1.1.1">Test Case</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2.1.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.2.1.7.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.7.1.2.1.1">Size</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a few-shot example used to evaluate a Process Reward Model's (PRM) capacity to aggregate scores from multiple solutions and choose the best one.  The example includes a problem, several candidate solutions, and the expected JSON format for the PRM's output, which should contain a score for each solution step indicating its correctness (-1 to +1). This demonstrates how a PRM processes multiple solution candidates to evaluate and rank their quality to ultimately select the best solution.
> <details>
> <summary>read the caption</summary>
> Table 6: Few-shot Prompt for evaluating PRM’s ability to aggregate scores from multiple solutions and select the best candidate response.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.12.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.12.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.12.12.13.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.1.1.1">Model Name</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.12.12.13.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.1.2.1">Overall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.12.12.13.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.1.3.1">Step Correctness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.12.12.13.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.1.4.1">Answer Aggregation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.12.12.13.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.13.1.5.1">Reasoning Process Search</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.14.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.14.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.1.1">FEI</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.14.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.2.1">AEI</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.12.12.14.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.3.1">Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.14.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.4.1">BoN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.14.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.5.1">MV</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.12.12.14.2.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.6.1">Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.14.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.7.1">F1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.14.2.8"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.8.1">MCC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.14.2.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.14.2.9.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.15.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T2.12.12.15.3.1">Random</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.12.12.15.3.2">31.8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.15.3.3">9.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.15.3.4">50.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.12.12.15.3.5">29.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.15.3.6">40.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.15.3.7">40.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.12.12.15.3.8">40.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.15.3.9">50.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.15.3.10">0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.12.15.3.11">25.0</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.1.2"><a class="ltx_ref ltx_href" href="https://internvl.github.io/blog/2024-12-05-InternVL-2.5/" title="">InternVL2.5-1B</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1">31.3<sub class="ltx_sub" id="S4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.1.1.1.1">-0.5</span></sub>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.3">22.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.4">49.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.1.5">35.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.6">47.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.7">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.1.8">40.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.9">45.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.10">-9.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.11">18.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.2.2"><a class="ltx_ref ltx_href" href="https://internvl.github.io/blog/2024-12-05-InternVL-2.5/" title="">InternVL2.5-8B</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.1">48.3<sub class="ltx_sub" id="S4.T2.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.2.2.1.1.1">+16.5</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3">36.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.4">56.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.5">46.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6">79.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7">58.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.8">68.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.9">53.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10">6.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11">29.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.3.3.2"><a class="ltx_ref ltx_href" href="https://internvl.github.io/blog/2024-12-05-InternVL-2.5/" title="">InternVL2.5-26B</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.3.1">42.4<sub class="ltx_sub" id="S4.T2.3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.3.3.3.1.1.1">+10.6</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3">10.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.4">51.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.5">31.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.6">67.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.7">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.8">61.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.9">56.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.10">12.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.11">34.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.4.4.2"><a class="ltx_ref ltx_href" href="https://internvl.github.io/blog/2024-12-05-InternVL-2.5/" title="">InternVL2.5-38B</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.4.4.1">49.7<sub class="ltx_sub" id="S4.T2.4.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.4.4.4.1.1.1">+17.9</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.3">55.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4">28.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.4.5">38.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.6">74.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.7">57.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.4.8">66.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.9">55.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.10">11.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.11">33.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.5.2"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-VL-3B-Instruct" title="">Qwen2.5-VL-3B</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.5.5.5.1">37.6<sub class="ltx_sub" id="S4.T2.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.5.5.5.1.1.1">+5.8</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.3">1.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.4">48.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.5">24.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.6">76.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.7">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.8">65.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.9">48.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.10">-3.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.11">22.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.6.2"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2-VL-7B-Instruct" title="">Qwen2-VL-7B</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.6.6.6.1">42.4<sub class="ltx_sub" id="S4.T2.6.6.6.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.6.1.1.1">+10.6</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.3">6.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.4">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.5">29.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6">85.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.7">50.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.8">67.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.9">53.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.10">7.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.11">30.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.7.7.7.2"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-VL-7B-Instruct" title="">Qwen2.5-VL-7B</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.7.7.7.1">45.7<sub class="ltx_sub" id="S4.T2.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.7.7.7.1.1.1">+13.9</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.3">9.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.4">54.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.7.7.7.5">32.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.6">59.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.7">52.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.7.7.7.8">55.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.9">66.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.10">32.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.11">49.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.8.8.8.2"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/Qwen2.5-VL-72B-Instruct" title="">Qwen2.5-VL-72B</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.8.1">55.8<sub class="ltx_sub" id="S4.T2.8.8.8.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.8.8.8.1.1.1">+24.0</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.3">24.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.4">65.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.8.5">45.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.6">81.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.7.1">69.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.8.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.8.8.1">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.9">64.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.10">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.11">46.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.9.9.9.2"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/QVQ-72B-Preview" title="">QVQ</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.9.9.9.1">41.8<sub class="ltx_sub" id="S4.T2.9.9.9.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.9.9.9.1.1.1">+10.0</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.3">15.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.4">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.9.9.5">35.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.6">63.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.7">51.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.9.9.8">57.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.9">54.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.10">9.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.11">32.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.10.10.10.2"><a class="ltx_ref ltx_href" href="https://deepmind.google/technologies/gemini/flash/" title="">Gemini-2.0-flash-exp</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.10.10.10.1">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.1.1">65.4</span><sub class="ltx_sub" id="S4.T2.10.10.10.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.10.10.10.1.2.1">+33.6</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.3.1">53.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.4"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.4.1">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.5"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.5.1">64.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.6.1">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.7.1">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.8"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.8.1">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.9.1">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.10.1">41.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.11.1">55.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.11.11.11.2"><a class="ltx_ref ltx_href" href="https://ai.google.dev/gemini-api/docs/thinking-mode" title="">Gemini-2.0-thinking-exp</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.11.11.11.1">64.6<sub class="ltx_sub" id="S4.T2.11.11.11.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.11.11.11.1.1.1">+32.8</span></sub>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.11.3.1">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.4"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.11.4.1">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.11.5"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.11.5.1">64.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.6">81.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.7">67.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.11.8">74.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.9">69.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.10">39.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.11">54.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.12.12.12.2"><a class="ltx_ref ltx_href" href="https://openai.com/index/hello-gpt-4o/" title="">GPT-4o</a></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.12.12.12.1"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.1.1">71.2<sub class="ltx_sub" id="S4.T2.12.12.12.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T2.12.12.12.1.1.1.1">+39.4</span></sub></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.12.3">51.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.12.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.12.4.1">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.12.12.12.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.12.12.12.5.1">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.12.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.6.1">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.12.7">62.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.12.12.12.8">73.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.12.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.9.1">84.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.12.10"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.10.1">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.12.11"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.11.1">77.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays a few-shot example used in the paper to evaluate the ability of Process Reward Models (PRMs) to guide the search for optimal reasoning steps during inference.  The example shows a question, historical reasoning steps, and candidate next steps. The evaluator must assign scores (-1 to +1) to each candidate step, indicating its correctness and quality, and return the results in JSON format. This assesses the PRM's capacity to effectively direct the reasoning process towards the best solution.
> <details>
> <summary>read the caption</summary>
> Table 7: Few-shot Prompt for evaluating PRM’s ability to guide the search for optimal reasoning steps during inference.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12505/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12505/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}