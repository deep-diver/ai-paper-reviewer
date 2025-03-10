---
title: "LONGCODEU: Benchmarking Long-Context Language Models on Long Code Understanding"
summary: "LONGCODEU: A new benchmark to challenge & enhance long code understanding in language models for software engineering!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Software Engineering", "🏢 Peking University",]
showSummary: true
date: 2025-03-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04359 {{< /keyword >}}
{{< keyword icon="writer" >}} Jia Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04359" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04359" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04359/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current long-context language models (LCLMs) hold promise for real-world software engineering applications but lack rigorous evaluation frameworks for long code understanding. Current benchmarks are limited by task diversity, use of synthetic code, and entangled tasks. To address this, this paper introduces LONGCODEU benchmark, designed to comprehensively evaluate LCLMs' capacity to understand real-world, dependency-rich, long code contexts. This benchmark contains comprehensive and practical tasks, extra-long code context, real-world repositories, and reduced data contamination.



The paper evaluates nine popular LCLMs using LONGCODEU. The experiments reveal key limitations in LCLMs' capabilities for long code understanding. LCLMs' performance drops dramatically beyond 32K tokens. Inter-code unit relation understanding is the most challenging aspect. The evaluation results provide insights for optimizing LCLMs. This can help for real-world applications of those technologies in software engineering.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current LCLMs struggle with long code understanding, especially when code length exceeds 32K tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Inter-code unit relation understanding is the most challenging aspect for LCLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The LONGCODEU benchmark provides valuable insights for optimizing LCLMs and driving advancements in software engineering. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is a **crucial step towards developing better software engineering tools**. It provides a comprehensive benchmark that can be used to evaluate and improve the long code understanding capabilities of LCLMs, fostering progress in areas like code generation and issue resolution, **driving future research & innovation**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04359/x1.png)

> 🔼 This figure showcases two examples of long code to illustrate the difference between synthetic and real-world codebases. The first example (a) is a synthetic long code constructed from independent functions, highlighting the simplicity of such an approach. The second example (b) is a real-world long code snippet, emphasizing the presence of non-standalone functions and the complex dependencies between them. The dependencies are visually highlighted within both code examples to emphasize the intricate relationships present in real-world code.
> <details>
> <summary>read the caption</summary>
> Figure 1: Examples of a synthetic long code with independent functions and a real-world long code with non-standalone functions. Dependencies are highlighted.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.5.1">
<tr class="ltx_tr" id="S1.T1.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S1.T1.5.1.1.1" rowspan="2"><span class="ltx_text" id="S1.T1.5.1.1.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S1.T1.5.1.1.2">Comprehensive Code Tasks</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S1.T1.5.1.1.3">Extra-long Data</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S1.T1.5.1.1.4">Real-world Repository</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.5.1.1.5">Reduce Data Leaking</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.5.1.1.6">Data Scale</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.2">
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.2.1">#Num</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.2.2">#Div Tasks</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.2.3">#High Disp</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.2.4">#Max-L</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.2.5">#Avg-L</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.2.6">#Length-L</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.2.7">Code</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.2.8">#Doc</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.2.9">#Num</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.2.10">Data Time</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.2.11">#Task</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="12" id="S1.T1.5.1.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S1.T1.5.1.3.1.1">The second category benchmarks (Only some benchmarks are listed)</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.T1.5.1.4.1">LongBench [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2503.04359v1#bib.bib6" title="">6</a></cite>]</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.4.2">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.4.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.1.4.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.4.5">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.4.6">0.4K</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.1.4.7">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.4.8">Function</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.4.9">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.1.4.10">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.1.4.11">2023.02–2023.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.4.12">1,000</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.5.1.5.1">LC-Arena [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2503.04359v1#bib.bib8" title="">8</a></cite>]</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.2">6</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.5.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.5">–</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.6">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.5.7">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.8">File</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.9">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.5.10">62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.5.11">2023.01–2024.05</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.5.12">–</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.5.1.6.1">LONGPROC [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2503.04359v1#bib.bib30" title="">30</a></cite>]</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.2">1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.6.4">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.5">–</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.6">2K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.6.7">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.8">Function</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.9">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.6.10">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.6.11">No Limit</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.6.12">200</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.5.1.7.1">DevEval [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2503.04359v1#bib.bib21" title="">21</a></cite>]</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.2">1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.7.4">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.5">–</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.6">0.3K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.7.7">✓</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.8">File</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.9">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.7.10">164</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.7.11">2023.11-2024.02</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.7.12">1,825</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="12" id="S1.T1.5.1.8.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S1.T1.5.1.8.1.1">The first category benchmarks</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.T1.5.1.9.1">RepoQA [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2503.04359v1#bib.bib22" title="">22</a></cite>]</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.9.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.9.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.1.9.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.9.5">16K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.9.6">–</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.1.9.7">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.9.8">Function</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.9.9">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.1.9.10">50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.5.1.9.11">No Limit</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.1.9.12">500</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.5.1.10.1">L-Eval [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2503.04359v1#bib.bib5" title="">5</a></cite>]</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.2">1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.10.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.5">36.5K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.6">31.5K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.10.7">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.8">Function</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.9">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.10.10">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.5.1.10.11">No Limit</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.1.10.12">90</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.1.11" style="background-color:#CCCCFF;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S1.T1.5.1.11.1"><span class="ltx_text ltx_font_smallcaps" id="S1.T1.5.1.11.1.1" style="background-color:#CCCCFF;">LongCodeU</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.11.2"><span class="ltx_text" id="S1.T1.5.1.11.2.1" style="background-color:#CCCCFF;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.11.3"><span class="ltx_text" id="S1.T1.5.1.11.3.1" style="background-color:#CCCCFF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.5.1.11.4"><span class="ltx_text" id="S1.T1.5.1.11.4.1" style="background-color:#CCCCFF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.11.5"><span class="ltx_text" id="S1.T1.5.1.11.5.1" style="background-color:#CCCCFF;">128K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.11.6"><span class="ltx_text" id="S1.T1.5.1.11.6.1" style="background-color:#CCCCFF;">54.8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.5.1.11.7"><span class="ltx_text" id="S1.T1.5.1.11.7.1" style="background-color:#CCCCFF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.11.8"><span class="ltx_text" id="S1.T1.5.1.11.8.1" style="background-color:#CCCCFF;">File</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.11.9"><span class="ltx_text" id="S1.T1.5.1.11.9.1" style="background-color:#CCCCFF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.5.1.11.10"><span class="ltx_text" id="S1.T1.5.1.11.10.1" style="background-color:#CCCCFF;">116</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.5.1.11.11"><span class="ltx_text" id="S1.T1.5.1.11.11.1" style="background-color:#CCCCFF;">2024.06–2024.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.1.11.12"><span class="ltx_text" id="S1.T1.5.1.11.12.1" style="background-color:#CCCCFF;">3,983</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares various long code understanding benchmarks, including LongCodeU, across several key features.  These features assess the comprehensiveness and realism of the benchmarks.  Specifically, it contrasts the number of tasks, task diversity, length distribution of code examples (maximum and average), the presence of length labels for each example, whether the benchmark uses real-world repositories and associated documentation, and the total number of examples in each benchmark. This allows for a clear understanding of the strengths and weaknesses of each benchmark in terms of evaluating long-context language models.
> <details>
> <summary>read the caption</summary>
> Table 1: The comparison between existing benchmarks and LongCodeU. #Num is the abbreviation of number. #Div Tasks refers to diverse tasks. #High Disp represents high dispersion. #Max-L and #Avg-L mean the maximum length and the average length of long code. #Trunk-L means whether each example has the length label. #Doc refers to documentation related to repositories. #Task represents the number of tasks (i.e., examples).
> </details>





### In-depth insights


#### LCLM Shortfall
While Large Context Language Models (LCLMs) promise transformative capabilities in software engineering, several shortfalls limit their practical application. One key issue is the **degradation of performance with increasing context length**. Despite claims of supporting hundreds of thousands of tokens, LCLMs often struggle with code exceeding 32K tokens, rendering them less effective for large codebases. This limitation stems from the models' **inability to effectively model code context**. Additionally, LCLMs face challenges in **inter-code unit relation understanding**, making it difficult to analyze dependencies and semantic relationships within and across code files. **Code understanding is also restricted by memorization**, where models may generate responses based on training data rather than genuine reasoning. Finally, the evaluation metrics used to benchmark LCLMs may not accurately capture the nuances of code understanding, leading to an overestimation of their capabilities. These are some of the many LCLM's shortfalls.

#### Dependency Key
**Dependency analysis is vital** for grasping how code units interact, going beyond individual functions. **Understanding dependencies** aids in identifying related vulnerable components. It also enables tracing the impact of modifications across the codebase. LCLMs that excel in dependency analysis can better support code generation by ensuring correct invocation of existing code units. This **enhances integration into the current repository**. To understand the dependency relation, LCLMs need to first find the code unit that is invoked by the given unit from the long code. Dependency analysis is useful in practical applications, as it can assist in correctly identifying other code units related to vulnerable units.

#### 32K Context Limit
**LCLMs struggle with long contexts**: Current LCLMs dramatically decline when input exceeds 32K tokens, failing to use larger advertised context windows (128k-1M). This 32K limit suggests a bottleneck in effectively processing very long sequences. **Performance drops are task-specific**:  The severity varies depending on the task; dependency relation extraction suffers most. **Context modeling issues**:  LCLMs may not properly model dependencies or lose information across long distances. Future research needs to improve long-range attention and information retention. Current LCLMs do not take advantage of the 128K~1M context windows well.

#### Repo Data Counts
While "Repo Data Counts" isn't explicitly present as a heading in this research paper, we can infer its significance based on the methodology described. The paper emphasizes the creation of LONGCODEU, a benchmark for evaluating long-context language models (LCLMs) in understanding code. Therefore, meticulous data collection from repositories is crucial. The 'Repo Data Counts' would likely detail the **number of repositories scraped**, the **criteria for selecting repositories** (e.g., creation date, stars, non-fork), the **types of files extracted**, and the **volume of code collected**. This information is essential for assessing the benchmark's scope and representativeness. Higher data counts, especially across diverse repositories, would indicate a more robust and reliable benchmark. Moreover, information about **data cleaning and deduplication methods** becomes vital to mitigate biases and ensure the benchmark's integrity. Data about counts, for instance, helps in understanding how well is the variety of real-world cases tackled.

#### Metrics Correlate
**Evaluation metrics are crucial** for assessing language model performance, particularly in tasks involving long code understanding.  **The choice of metric significantly impacts the interpretation** of results, and relying solely on one metric can be misleading. For instance, metrics like Exact Match (EM) might be too strict, especially when dealing with code generation or retrieval, where minor variations can be semantically equivalent. CodeBLEU, while designed for code, **may not fully capture the nuances** of long code understanding if it primarily focuses on surface-level similarity.  Metrics must correlate well with human judgments to be reliable and accurately reflect model capabilities. If a metric doesn't align with human evaluation, its usefulness is questionable.  The evaluation process should be thorough, encompassing a range of metrics that capture different aspects of code understanding, such as functional correctness, code style, and the ability to follow complex dependencies. Without a robust and validated evaluation framework, it's challenging to make meaningful comparisons between different models or track progress in long code understanding research. A **metrics correlation score measures the consistency** of an evaluation, so in the case the metrics correlate with human evaluation, it means the models are reliable.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.04359/x2.png)

> 🔼 This figure illustrates the four key aspects of long code understanding that are evaluated in the LONGCODEU benchmark. These aspects are: 1) Code Unit Perception (identifying individual code units such as functions); 2) Intra-Code Unit Understanding (analyzing the internal logic and semantics of a single code unit); 3) Inter-Code Unit Relation Understanding (analyzing relationships between different code units); and 4) Long Documentation Understanding (understanding and extracting relevant information from code documentation).  Each aspect is represented visually, showing how LONGCODEU aims to comprehensively assess a model's ability to understand long code.
> <details>
> <summary>read the caption</summary>
> Figure 2: Four understanding aspects in LongCodeU.
> </details>



![](https://arxiv.org/html/2503.04359/x3.png)

> 🔼 Figure 3 presents a detailed analysis of the performance of various Large Context Language Models (LCLMs) across different code understanding tasks within the LongCodeU benchmark.  The x-axis represents five different length ranges of code (0-8K, 8-16K, 16-32K, 32-64K, and 64-128K tokens), showcasing how model performance changes as code length increases. The y-axis lists nine different LCLMs, categorized into general models and code-specific models. Each cell in the heatmap displays the performance of a specific model on a particular task and code length range, represented by color intensity (higher intensity indicating better performance).  Missing data points are represented as grey blocks.  The figure highlights that the performance degradation as code length increases is inconsistent and varies across different models and tasks (task-specific and model-specific patterns).
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance comparison across tasks and long code lengths on LongCodeU (grey blocks indicate unavailable configurations). The rate of performance degradation exhibits task-specific and model-specific patterns.
> </details>



![](https://arxiv.org/html/2503.04359/x4.png)

> 🔼 This figure compares the performance of large language models (LLMs) on two tasks: Code Unit Semantic Analysis (CU_SA) and Dependency Relation Analysis (DRA_T2), both focusing on long code understanding.  The left panel (CU_SA) shows the performance with and without the long code context, highlighting the model's ability to understand code semantics. The right panel (DRA_T2) similarly compares performance with and without context, assessing the model's ability to identify relationships between different code units within a long code sequence. The comparison reveals the extent to which LLMs rely on memorization versus genuine code understanding.
> <details>
> <summary>read the caption</summary>
> Figure 4: Assessing long code understanding vs. memorization on CU_SA (left) and DRA_T2 (right) tasks.
> </details>



![](https://arxiv.org/html/2503.04359/x5.png)

> 🔼 This figure displays the correlation between the automatically computed evaluation metrics and the human-evaluated scores for the LONGCODEU benchmark.  The Kendall-Tau correlation coefficient (τ) is used to quantify the strength of the monotonic relationship between automatic and human judgments.  Higher Kendall-Tau values indicate a stronger correlation and higher reliability of the automated metrics. The figure shows a bar chart with Kendall-Tau values for each of the eight tasks, demonstrating the consistency and reliability of the automatic evaluation metrics.
> <details>
> <summary>read the caption</summary>
> Figure 5: The value of Kendall-Tau τ𝜏\tauitalic_τ between our automatic metrics and human evaluation.
> </details>



![](https://arxiv.org/html/2503.04359/x6.png)

> 🔼 Figure 6 presents a detailed analysis of Large Language Model (LLM) performance across varying lengths of code, focusing on tasks where precision-based metrics are applicable.  The heatmaps visualize the performance (precision) of different LLMs on various tasks, categorized by code length ranges (0-8K, 8-16K, 16-32K, 32-64K, 64-128K tokens).  Grey blocks represent unavailable data points due to limitations in LLM context window sizes. The key finding highlighted is that the performance degradation patterns are not uniform across LLMs and tasks, showcasing task-specific and model-specific variations in how effectively LLMs handle increasingly long code inputs.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance comparison across long code lengths on tasks which can be measured by precision-based metrics. (grey blocks indicate unavailable configurations). The rate of performance degradation exhibits task-specific and model-specific patterns.
> </details>



![](https://arxiv.org/html/2503.04359/x7.png)

> 🔼 Figure 7 demonstrates a failure case in the dependency relation analysis task within the LONGCODEU benchmark.  Specifically, when using GPT-4, the model incorrectly identifies the `stream_async` function as related to the `stream` function.  This highlights a limitation of current LCLMs: they may extract code units based on superficial similarities (like similar names) rather than a true understanding of the code's functional relationships and dependencies.  This type of error emphasizes the difficulty in accurately identifying relationships between code units within a larger codebase.
> <details>
> <summary>read the caption</summary>
> Figure 7: For the dependency relation analysis task, the output of GPT-4o extracts a error code unit “stream_async' that is confusing to correct invoked function “stream'.
> </details>



![](https://arxiv.org/html/2503.04359/x8.png)

> 🔼 The figure displays an example from the Semantic Relation Extraction task within the LONGCODEU benchmark.  The task requires the model to identify code units semantically similar to a given input. The model incorrectly identifies the `delete` function as semantically similar to the anchor input, which is described in natural language.  The error highlights the challenge of accurately capturing semantic similarity in code, even for advanced models. The opposite functionalities of the `delete` function and the anchor input underscore the model's failure to correctly understand the semantic relationship between code units.
> <details>
> <summary>read the caption</summary>
> Figure 8: For the semantic relation extraction task, the output contains an error “delete' function which has opposite functionalities to the anchor input, i.e., the given natural language description.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.1">
<tr class="ltx_tr" id="S3.T2.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.3.1.1.1" rowspan="2"><span class="ltx_text" id="S3.T2.3.1.1.1.1">Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T2.3.1.1.2">Input</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.3.1.1.3">Output</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.1">#Num</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.3.1.2.2">Format</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.3">#C-File</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.4">#Avg-L</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.5">#Gran</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.1.3.1">CU_P</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.2">487</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.3.1.3.3">Code</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.5">0.4K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.6">Name</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.3.1.4.1">CU_SA</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.4.2">500</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.3.1.4.3">Code</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.4.4">✗</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.4.5">0.2K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.4.6">Function</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.1.5.1">CU_DFA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.5.2">500</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.3.1.5.3">Code</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.5.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.5.5">0.03K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.5.6">Line</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.1.6.1">DRA_T1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.6.2">500</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.3.1.6.3">Code</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.6.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.6.5">0.3K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.6.6">Function</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.7">
<td class="ltx_td ltx_align_left" id="S3.T2.3.1.7.1">DRA_T2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.7.2">500</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.3.1.7.3">Code</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.7.4">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.7.5">0.3K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.7.6">Function</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.8">
<td class="ltx_td ltx_align_left" id="S3.T2.3.1.8.1">SRE_T1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.8.2">500</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.3.1.8.3">Code</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.8.4">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.8.5">1.0K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.8.6">Function</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.9">
<td class="ltx_td ltx_align_left" id="S3.T2.3.1.9.1">SRE_T2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.9.2">500</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.3.1.9.3">Code</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.9.4">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.9.5">1.1K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.1.9.6">Function</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T2.3.1.10.1">LDU</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.3.1.10.2">500</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.3.1.10.3">Document</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.3.1.10.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.3.1.10.5">0.7K</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.3.1.10.6">NL</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a statistical overview of the LONGCODEU benchmark dataset. It details the number of examples (#Num) for each of the eight tasks.  The '#C-File' column indicates whether the task's output can be generated by combining information across multiple files within a codebase.  '#Avg-L' shows the average length of the output for each task, and '#Gran' specifies the level of detail in the output (e.g., function name, code line).  This table provides essential information about the size, nature, and complexity of the data used in the LONGCODEU benchmark.
> <details>
> <summary>read the caption</summary>
> Table 2: Statistics of LongCodeU. #Num means the number of examples in each task. #C-File represents whether the output can be obtained by aggregating cross-file content. #Avg-L is the average length of the output. #Gran means the granularity of the output.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.3.1">
<tr class="ltx_tr" id="S3.T3.3.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T3.3.1.1.1" rowspan="2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.3.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.2.1">#Param</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.3.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.3.1">Context Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="9" id="S3.T3.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.4.1">Task</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.1.1">CU_P</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.2.2"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.2.1">CU_SA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.2.3"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.3.1">CU_DFA</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.2.4"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.4.1">DRA_T1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.2.5"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.5.1">DRA_T2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.2.6"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.6.1">SRE_T1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.2.7"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.7.1">SRE_T2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.2.8"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.8.1">LDU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.2.9"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.9.1">#Avg</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.1.3.1"><span class="ltx_text ltx_font_italic" id="S3.T3.3.1.3.1.1">Code Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S3.T3.3.1.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.3.1.3.2.1">Open-Source LCLMs</span></td>
<td class="ltx_td ltx_border_t" id="S3.T3.3.1.3.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.4">
<td class="ltx_td ltx_align_left" id="S3.T3.3.1.4.1">Qwen2.5-Coder</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.4.2">7.6B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.4.3">128K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.4.4" style="background-color:#FFFFB3;"><span class="ltx_text" id="S3.T3.3.1.4.4.1" style="background-color:#FFFFB3;">43.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.4.5" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.4.5.1" style="background-color:#B3FFB3;">71.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.4.6" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.4.6.1" style="background-color:#B3FFB3;">74.01</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.4.7" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.4.7.1" style="background-color:#BFBFFF;">30.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.4.8" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.4.8.1" style="background-color:#BFBFFF;">9.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.4.9" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.4.9.1" style="background-color:#BFBFFF;">24.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.4.10" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.4.10.1" style="background-color:#BFBFFF;">21.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.4.11" style="background-color:#FFB3B3;"><span class="ltx_text" id="S3.T3.3.1.4.11.1" style="background-color:#FFB3B3;">21.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.4.12">37.06</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.5">
<td class="ltx_td ltx_align_left" id="S3.T3.3.1.5.1">DeepSeek-Coder-V2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.5.2">15.7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.5.3">128K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.5.4" style="background-color:#FFFFB3;"><span class="ltx_text" id="S3.T3.3.1.5.4.1" style="background-color:#FFFFB3;">38.67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.5.5" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.5.5.1" style="background-color:#B3FFB3;">65.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.5.6" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.5.6.1" style="background-color:#B3FFB3;">48.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.5.7" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.5.7.1" style="background-color:#BFBFFF;">47.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.5.8" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.5.8.1" style="background-color:#BFBFFF;">22.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.5.9" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.5.9.1" style="background-color:#BFBFFF;">24.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.5.10" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.5.10.1" style="background-color:#BFBFFF;">26.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.5.11" style="background-color:#FFB3B3;"><span class="ltx_text" id="S3.T3.3.1.5.11.1" style="background-color:#FFB3B3;">50.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.5.12">40.49</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.6">
<td class="ltx_td ltx_align_left" id="S3.T3.3.1.6.1">CodeLlama</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.6.2">33.7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.6.3">16K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.6.4" style="background-color:#FFFFB3;"><span class="ltx_text" id="S3.T3.3.1.6.4.1" style="background-color:#FFFFB3;">68.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.6.5" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.6.5.1" style="background-color:#B3FFB3;">62.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.6.6" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.6.6.1" style="background-color:#B3FFB3;">79.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.6.7" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.6.7.1" style="background-color:#BFBFFF;">68.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.6.8" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.6.8.1" style="background-color:#BFBFFF;">34.94</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.6.9" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.6.9.1" style="background-color:#BFBFFF;">44.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.6.10" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.6.10.1" style="background-color:#BFBFFF;">36.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.6.11" style="background-color:#FFB3B3;"><span class="ltx_text" id="S3.T3.3.1.6.11.1" style="background-color:#FFB3B3;">46.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.6.12">55.29</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.1.7.1"><span class="ltx_text ltx_font_italic" id="S3.T3.3.1.7.1.1">General Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S3.T3.3.1.7.2"><span class="ltx_text ltx_font_italic" id="S3.T3.3.1.7.2.1">Open-Source LCLMs</span></td>
<td class="ltx_td ltx_border_t" id="S3.T3.3.1.7.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.8">
<td class="ltx_td ltx_align_left" id="S3.T3.3.1.8.1">Phi-3.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.8.2">3.8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.8.3">128K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.8.4" style="background-color:#FFFFB3;"><span class="ltx_text" id="S3.T3.3.1.8.4.1" style="background-color:#FFFFB3;">39.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.8.5" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.8.5.1" style="background-color:#B3FFB3;">46.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.8.6" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.8.6.1" style="background-color:#B3FFB3;">49.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.8.7" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.8.7.1" style="background-color:#BFBFFF;">30.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.8.8" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.8.8.1" style="background-color:#BFBFFF;">9.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.8.9" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.8.9.1" style="background-color:#BFBFFF;">18.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.8.10" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.8.10.1" style="background-color:#BFBFFF;">14.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.8.11" style="background-color:#FFB3B3;"><span class="ltx_text" id="S3.T3.3.1.8.11.1" style="background-color:#FFB3B3;">34.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.8.12">30.53</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.9">
<td class="ltx_td ltx_align_left" id="S3.T3.3.1.9.1">Mistral-v0.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.9.2">7.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.9.3">32K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.9.4" style="background-color:#FFFFB3;"><span class="ltx_text" id="S3.T3.3.1.9.4.1" style="background-color:#FFFFB3;">57.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.9.5" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.9.5.1" style="background-color:#B3FFB3;">63.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.9.6" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.9.6.1" style="background-color:#B3FFB3;">58.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.9.7" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.9.7.1" style="background-color:#BFBFFF;">46.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.9.8" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.9.8.1" style="background-color:#BFBFFF;">18.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.9.9" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.9.9.1" style="background-color:#BFBFFF;">33.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.9.10" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.9.10.1" style="background-color:#BFBFFF;">32.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.9.11" style="background-color:#FFB3B3;"><span class="ltx_text" id="S3.T3.3.1.9.11.1" style="background-color:#FFB3B3;">58.64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.9.12">46.24</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.10">
<td class="ltx_td ltx_align_left" id="S3.T3.3.1.10.1">DeepSeek-V2.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.10.2">236B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.10.3">128K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.10.4" style="background-color:#FFFFB3;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.10.4.1" style="background-color:#FFFFB3;">70.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.10.5" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.10.5.1" style="background-color:#B3FFB3;">82.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.10.6" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.10.6.1" style="background-color:#B3FFB3;">77.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.10.7" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.10.7.1" style="background-color:#BFBFFF;">72.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.10.8" style="background-color:#BFBFFF;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.10.8.1" style="background-color:#BFBFFF;">56.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.10.9" style="background-color:#BFBFFF;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.10.9.1" style="background-color:#BFBFFF;">49.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.10.10" style="background-color:#BFBFFF;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.10.10.1" style="background-color:#BFBFFF;">47.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.10.11" style="background-color:#FFB3B3;"><span class="ltx_text" id="S3.T3.3.1.10.11.1" style="background-color:#FFB3B3;">85.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.10.12"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.10.12.1">67.70</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.11">
<td class="ltx_td" id="S3.T3.3.1.11.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S3.T3.3.1.11.2"><span class="ltx_text ltx_font_italic" id="S3.T3.3.1.11.2.1">Proprietary Source LCLMs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.12">
<td class="ltx_td ltx_align_left" id="S3.T3.3.1.12.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.12.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.12.3">200K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.12.4" style="background-color:#FFFFB3;"><span class="ltx_text" id="S3.T3.3.1.12.4.1" style="background-color:#FFFFB3;">43.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.12.5" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.12.5.1" style="background-color:#B3FFB3;">40.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.12.6" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.12.6.1" style="background-color:#B3FFB3;">45.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.12.7" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.12.7.1" style="background-color:#BFBFFF;">29.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.12.8" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.12.8.1" style="background-color:#BFBFFF;">28.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.12.9" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.12.9.1" style="background-color:#BFBFFF;">26.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.12.10" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.12.10.1" style="background-color:#BFBFFF;">27.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.12.11" style="background-color:#FFB3B3;"><span class="ltx_text" id="S3.T3.3.1.12.11.1" style="background-color:#FFB3B3;">41.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.12.12">35.53</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.13">
<td class="ltx_td ltx_align_left" id="S3.T3.3.1.13.1">Gemini-1.5-Flash</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.13.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.13.3">1000K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.13.4" style="background-color:#FFFFB3;"><span class="ltx_text" id="S3.T3.3.1.13.4.1" style="background-color:#FFFFB3;">58.45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.13.5" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.13.5.1" style="background-color:#B3FFB3;">83.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.13.6" style="background-color:#B3FFB3;"><span class="ltx_text" id="S3.T3.3.1.13.6.1" style="background-color:#B3FFB3;">80.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.13.7" style="background-color:#BFBFFF;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.13.7.1" style="background-color:#BFBFFF;">72.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.13.8" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.13.8.1" style="background-color:#BFBFFF;">46.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.13.9" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.13.9.1" style="background-color:#BFBFFF;">39.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.13.10" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.13.10.1" style="background-color:#BFBFFF;">38.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.1.13.11" style="background-color:#FFB3B3;"><span class="ltx_text" id="S3.T3.3.1.13.11.1" style="background-color:#FFB3B3;">81.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.1.13.12">61.39</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.1.14.1">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.1.14.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.3.1.14.3">128K</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.3.1.14.4" style="background-color:#FFFFB3;"><span class="ltx_text" id="S3.T3.3.1.14.4.1" style="background-color:#FFFFB3;">56.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.1.14.5" style="background-color:#B3FFB3;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.14.5.1" style="background-color:#B3FFB3;">86.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.3.1.14.6" style="background-color:#B3FFB3;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.14.6.1" style="background-color:#B3FFB3;">87.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.1.14.7" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.14.7.1" style="background-color:#BFBFFF;">71.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.1.14.8" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.14.8.1" style="background-color:#BFBFFF;">48.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.1.14.9" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.14.9.1" style="background-color:#BFBFFF;">44.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.3.1.14.10" style="background-color:#BFBFFF;"><span class="ltx_text" id="S3.T3.3.1.14.10.1" style="background-color:#BFBFFF;">43.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.3.1.14.11" style="background-color:#FFB3B3;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.14.11.1" style="background-color:#FFB3B3;">87.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.1.14.12"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.14.12.1">65.83</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Long Context Language Models (LCLMs) on the Long Code Understanding benchmark (LongCodeU).  Due to space constraints in the paper, only recall-based metrics (EM-R, LCS-R, and CB-R) are shown; precision-based metrics are available in Appendix A. The table shows the performance across different LCLMs, categorized as code models and general models.  For each LCLM, parameter count, context window size, and the recall for each of the eight LongCodeU tasks are reported, along with an average recall across all tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: The performance of LCLMs on LongCodeU. We only report recall-based results (EM-R, LCS-R, and CB-R) due to page limitation. The precision-based results (EM-P, LCS-P, and CB-P) can be found in Appendix A.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04359/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04359/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}