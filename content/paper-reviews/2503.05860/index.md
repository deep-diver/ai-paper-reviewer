---
title: "Benchmarking AI Models in Software Engineering: A Review, Search Tool, and Enhancement Protocol"
summary: "This paper reviews AI4SE benchmarks, introduces BenchScout for benchmark discovery, and proposes BenchFrame for benchmark enhancement, demonstrated via HumanEvalNext."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Delft University of Technology",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05860 {{< /keyword >}}
{{< keyword icon="writer" >}} Roham Koohestani et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05860" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05860" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05860/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The integration of AI into Software Engineering (AI4SE) has led to numerous benchmarks for tasks like code generation. However, this surge presents challenges such as scattered benchmark knowledge, difficulty in selecting relevant benchmarks, absence of a uniform standard for benchmark development, and limitations of existing benchmarks. Addressing these issues is critical for accurate evaluation and comparison of AI models in software engineering.



This paper introduces **BenchScout**, a semantic search tool, to find relevant benchmarks and **BenchFrame**, a unified method to enhance benchmark quality. BenchFrame is applied to the HumanEval benchmark, leading to **HumanEvalNext**, featuring corrected errors, improved language conversion, expanded test coverage, and increased difficulty. The paper then evaluates ten state-of-the-art code language models on HumanEvalNext.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Identified and classified 204 AI4SE benchmarks, revealing limitations and gaps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introduced BenchScout, a semantic search tool for AI4SE benchmarks, enhancing usability, effectiveness, and intuitiveness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Proposed BenchFrame, a unified method to enhance benchmark quality, demonstrated through HumanEvalNext, improving benchmark reliability. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **addresses critical gaps in AI4SE benchmark quality and accessibility**. The BenchFrame and BenchScout tools offers an approach to enhance existing benchmarks and streamline benchmark selection which **ensures more reliable and relevant evaluations of AI models**.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T1.6">
<tr class="ltx_tr" id="S0.T1.6.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T1.6.1.1"><span class="ltx_text ltx_font_bold" id="S0.T1.6.1.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T1.6.1.2"><span class="ltx_text ltx_font_bold" id="S0.T1.6.1.2.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T1.6.1.3"><span class="ltx_text ltx_font_bold" id="S0.T1.6.1.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T1.6.1.4"><span class="ltx_text ltx_font_bold" id="S0.T1.6.1.4.1" style="font-size:80%;"># Tests</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.2.1"><span class="ltx_text" id="S0.T1.6.2.1.1" style="font-size:80%;">Original</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.2.2">
<span class="ltx_text" id="S0.T1.6.2.2.1" style="font-size:80%;">HumanEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">HumanEval-2021</span><span class="ltx_text" id="S0.T1.6.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.2.3"><span class="ltx_text" id="S0.T1.6.2.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.6.2.4"><span class="ltx_text" id="S0.T1.6.2.4.1" style="font-size:80%;">Avg. 7.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.3.1" rowspan="7"><span class="ltx_text" id="S0.T1.6.3.1.1" style="font-size:80%;">Improved Language Support</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.3.2">
<span class="ltx_text" id="S0.T1.6.3.2.1" style="font-size:80%;">MultiPL-HumanEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.3.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MultiPL-E-2022</span><span class="ltx_text" id="S0.T1.6.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.3.3"><span class="ltx_text" id="S0.T1.6.3.3.1" style="font-size:80%;">18 programming languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.6.3.4"><span class="ltx_text" id="S0.T1.6.3.4.1" style="font-size:80%;">Avg. 7.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.4">
<td class="ltx_td ltx_align_left" id="S0.T1.6.4.1">
<span class="ltx_text" id="S0.T1.6.4.1.1" style="font-size:80%;">HumanEval-Fix </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">HumanEvalPack-2023</span><span class="ltx_text" id="S0.T1.6.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T1.6.4.2"><span class="ltx_text" id="S0.T1.6.4.2.1" style="font-size:80%;">6 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.6.4.3"><span class="ltx_text" id="S0.T1.6.4.3.1" style="font-size:80%;">Avg. 7.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.5">
<td class="ltx_td ltx_align_left" id="S0.T1.6.5.1">
<span class="ltx_text" id="S0.T1.6.5.1.1" style="font-size:80%;">HumanEval-Explain </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">HumanEvalPack-2023</span><span class="ltx_text" id="S0.T1.6.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T1.6.5.2"><span class="ltx_text" id="S0.T1.6.5.2.1" style="font-size:80%;">6 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.6.5.3"><span class="ltx_text" id="S0.T1.6.5.3.1" style="font-size:80%;">Avg. 7.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.6">
<td class="ltx_td ltx_align_left" id="S0.T1.6.6.1">
<span class="ltx_text" id="S0.T1.6.6.1.1" style="font-size:80%;">HumanEval-Synthesize </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">HumanEvalPack-2023</span><span class="ltx_text" id="S0.T1.6.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T1.6.6.2"><span class="ltx_text" id="S0.T1.6.6.2.1" style="font-size:80%;">6 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.6.6.3"><span class="ltx_text" id="S0.T1.6.6.3.1" style="font-size:80%;">Avg. 7.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.7">
<td class="ltx_td ltx_align_left" id="S0.T1.6.7.1">
<span class="ltx_text" id="S0.T1.6.7.1.1" style="font-size:80%;">HumanEval-X </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">HumanEval-X-2023</span><span class="ltx_text" id="S0.T1.6.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T1.6.7.2"><span class="ltx_text" id="S0.T1.6.7.2.1" style="font-size:80%;">5 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.6.7.3"><span class="ltx_text" id="S0.T1.6.7.3.1" style="font-size:80%;">Avg. 7.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.8">
<td class="ltx_td ltx_align_left" id="S0.T1.6.8.1">
<span class="ltx_text" id="S0.T1.6.8.1.1" style="font-size:80%;">Multi-HumanEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MultiEval-HumanEval-MBXP-MathQA-X-2022</span><span class="ltx_text" id="S0.T1.6.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T1.6.8.2"><span class="ltx_text" id="S0.T1.6.8.2.1" style="font-size:80%;">12 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.6.8.3"><span class="ltx_text" id="S0.T1.6.8.3.1" style="font-size:80%;">Avg. 7.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.9">
<td class="ltx_td ltx_align_left" id="S0.T1.6.9.1">
<span class="ltx_text" id="S0.T1.6.9.1.1" style="font-size:80%;">HumanEvalXL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">peng_humaneval-xl_2024</span><span class="ltx_text" id="S0.T1.6.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T1.6.9.2"><span class="ltx_text" id="S0.T1.6.9.2.1" style="font-size:80%;">12PLs, 23NLs</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.6.9.3"><span class="ltx_text" id="S0.T1.6.9.3.1" style="font-size:80%;">Avg. 8.33</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.10.1" rowspan="3"><span class="ltx_text" id="S0.T1.6.10.1.1" style="font-size:80%;">Improved Testing</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.10.2">
<span class="ltx_text" id="S0.T1.6.10.2.1" style="font-size:80%;">HumanEval+ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.10.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">HumanEvalPlus-Mini-MBPP+-2023</span><span class="ltx_text" id="S0.T1.6.10.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.10.3"><span class="ltx_text" id="S0.T1.6.10.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.6.10.4"><span class="ltx_text" id="S0.T1.6.10.4.1" style="font-size:80%;">Scaled ×80</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.11">
<td class="ltx_td ltx_align_left" id="S0.T1.6.11.1">
<span class="ltx_text" id="S0.T1.6.11.1.1" style="font-size:80%;">HumanEval-MINI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">HumanEvalPlus-Mini-MBPP+-2023</span><span class="ltx_text" id="S0.T1.6.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T1.6.11.2"><span class="ltx_text" id="S0.T1.6.11.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.6.11.3"><span class="ltx_text" id="S0.T1.6.11.3.1" style="font-size:80%;">Scaled ×47</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.12">
<td class="ltx_td ltx_align_left" id="S0.T1.6.12.1">
<span class="ltx_text" id="S0.T1.6.12.1.1" style="font-size:80%;">HE-Eval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T1.6.12.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeScore-HE-APPS-MBPP-Eval-2023</span><span class="ltx_text" id="S0.T1.6.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T1.6.12.2"><span class="ltx_text" id="S0.T1.6.12.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.6.12.3"><span class="ltx_text" id="S0.T1.6.12.3.1" style="font-size:80%;">Scaled ×14</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.13.1"><span class="ltx_text" id="S0.T1.6.13.1.1" style="font-size:80%;">Instruction-based</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.13.2">
<span class="ltx_text" id="S0.T1.6.13.2.1" style="font-size:80%;">InstructHumanEval </span><span class="ltx_note ltx_role_footnote" id="footnote1"><sup class="ltx_note_mark">1</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">1</sup><span class="ltx_tag ltx_tag_note">1</span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/datasets/codeparrot/instructhumaneval" title="">https://huggingface.co/datasets/codeparrot/instructhumaneval</a></span></span></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.6.13.3"><span class="ltx_text" id="S0.T1.6.13.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.6.13.4"><span class="ltx_text" id="S0.T1.6.13.4.1" style="font-size:80%;">Avg. 7.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T1.6.14.1" rowspan="2"><span class="ltx_text" id="S0.T1.6.14.1.1" style="font-size:80%;">Extended</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T1.6.14.2" rowspan="2"><span class="ltx_text" id="S0.T1.6.14.2.1" style="font-size:80%;">EvoEval <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">EvoEval-2024</span>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T1.6.14.3" rowspan="2"><span class="ltx_text" id="S0.T1.6.14.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.6.14.4"><span class="ltx_text" id="S0.T1.6.14.4.1" style="font-size:80%;">Multiple categories,</span></td>
</tr>
<tr class="ltx_tr" id="S0.T1.6.15">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.6.15.1">
<span class="ltx_text" id="S0.T1.6.15.1.1" style="font-size:80%;">scaled with </span><span class="ltx_text ltx_font_smallcaps" id="S0.T1.6.15.1.2" style="font-size:80%;">EvalPlus</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents an overview of various AI4SE (Artificial Intelligence in Software Engineering) benchmarks that originated from the HumanEval benchmark.  It categorizes these benchmarks based on modifications made to the original HumanEval, such as improvements to language support, testing methodologies, and overall expansion of the benchmark.  For each benchmark, the table lists its name, the programming languages it supports, and the number of tests or problems it contains.
> <details>
> <summary>read the caption</summary>
> TABLE I: Overview of AI4SE benchmarks stemming from HumanEval [HumanEval-2021].
> </details>





### In-depth insights


#### AI4SE Review
Based on the review, **AI4SE benchmarks exhibit a growing trend, highlighting the increasing integration of AI in software engineering**. The review identifies key limitations, including scattered benchmark knowledge, difficulty in selection, absence of uniform standards, and inherent flaws. The review process involved a systematic search, credibility verification, and taxonomy development to categorize benchmarks, extract metadata, and address the challenges in evaluating AI models for code generation, repair, and understanding. BenchFrame introduces a unified approach for benchmark enhancement, as demonstrated through the HUMANEVALNEXT case study, addressing issues like incorrect tests and insufficient test coverage. This framework serves as a guiding light for improving the methodology and shedding light on limitations in existing AI4SE benchmarks, paving the way for better evaluation and advancement of AI in software engineering practices.

#### BenchScout Tool
**BenchScout** is a tool designed to address the challenge of **locating relevant AI4SE benchmarks**. Given the abundance of these benchmarks, finding the most suitable one for a specific software engineering task can be difficult. BenchScout aims to systematically and semantically search existing benchmarks and their corresponding use cases. It seeks to visually evaluate the closeness and similarity of benchmark groups. It finds the relations between citing bodies to identify patterns relevant to different use cases. The tool aims to map unstructured textual content of papers to a semistructured domain using pre-trained text embedding models. It applies dimensionality reduction to create a 2D representation that's easy to interpret and uses clustering techniques to assess similarity. The interactive interface is to allow users to explore clusters. BenchScout enhances search through features like text-based search and a paper content tooltip. A user study indicates high usability.

#### BenchFrame Qlty
**BenchFrame aims to improve benchmark quality** for AI in Software Engineering (AI4SE). It likely addresses crucial aspects like **correcting errors, improving language conversion, and expanding test coverage.** The lack of standardization in benchmark development can lead to inconsistent evaluations and hinder progress. BenchFrame probably provides a **structured methodology for refining benchmarks**, ensuring they are robust and reliable. This is essential for accurately assessing model performance, preventing data leakage, and promoting fair comparisons across different approaches. By focusing on the practical aspects of enhancing benchmark quality, BenchFrame likely serves as a valuable tool for researchers and practitioners in the AI4SE field.

#### HumanEvalNext
**HumanEvalNext** is presented as an enhanced version of the original **HumanEval** benchmark, addressing limitations such as incorrect tests and suboptimal solutions. Modifications include fixing canonical solutions, adding type annotations for improved language conversion support, and incorporating challenging scenarios (negative values, edge cases) to prevent overfitting. Assertions are implemented within the code to prevent models from ignoring crucial details. Test examples are refined, and spelling errors corrected. The independent peer review confirms the enhancements' robustness while refining its quality.

#### Bench AI Limit
The concept of 'Bench AI Limit' likely refers to the **inherent constraints and shortcomings** of using AI-driven benchmarks in fields like software engineering (AI4SE). This includes **limitations in scope**, where benchmarks may not fully capture the complexity of real-world tasks, leading to an **overestimation of AI capabilities**. Another aspect is **data contamination**, where training datasets inadvertently include benchmark data, artificially inflating performance scores and **hindering accurate evaluation**. **Benchmark saturation** is also a concern, as models become increasingly adept at solving existing benchmarks, necessitating continuous development of more challenging and diverse benchmarks to **truly reflect AI progress**. The absence of **standardized benchmark development** practices is another factor. Addressing these limits is essential for ensuring benchmarks effectively guide innovation and provide reliable assessments of AI systems.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T2.6">
<tr class="ltx_tr" id="S0.T2.6.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T2.6.1.1"><span class="ltx_text ltx_font_bold" id="S0.T2.6.1.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T2.6.1.2"><span class="ltx_text ltx_font_bold" id="S0.T2.6.1.2.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T2.6.1.3"><span class="ltx_text ltx_font_bold" id="S0.T2.6.1.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T2.6.1.4"><span class="ltx_text ltx_font_bold" id="S0.T2.6.1.4.1" style="font-size:80%;"># Problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T2.6.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T2.6.2.1"><span class="ltx_text" id="S0.T2.6.2.1.1" style="font-size:80%;">Original</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T2.6.2.2">
<span class="ltx_text" id="S0.T2.6.2.2.1" style="font-size:80%;">MBPP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T2.6.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MBPP-MathQA-2021</span><span class="ltx_text" id="S0.T2.6.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T2.6.2.3"><span class="ltx_text" id="S0.T2.6.2.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T2.6.2.4"><span class="ltx_text" id="S0.T2.6.2.4.1" style="font-size:80%;">974</span></td>
</tr>
<tr class="ltx_tr" id="S0.T2.6.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T2.6.3.1" rowspan="2"><span class="ltx_text" id="S0.T2.6.3.1.1" style="font-size:80%;">Improved Language Support</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T2.6.3.2">
<span class="ltx_text" id="S0.T2.6.3.2.1" style="font-size:80%;">MultiPL-MBPP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T2.6.3.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MultiPL-E-2022</span><span class="ltx_text" id="S0.T2.6.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T2.6.3.3"><span class="ltx_text" id="S0.T2.6.3.3.1" style="font-size:80%;">18 programming languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T2.6.3.4"><span class="ltx_text" id="S0.T2.6.3.4.1" style="font-size:80%;">354-397 per language</span></td>
</tr>
<tr class="ltx_tr" id="S0.T2.6.4">
<td class="ltx_td ltx_align_left" id="S0.T2.6.4.1">
<span class="ltx_text" id="S0.T2.6.4.1.1" style="font-size:80%;">MBXP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T2.6.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MultiEval-HumanEval-MBXP-MathQA-X-2022</span><span class="ltx_text" id="S0.T2.6.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T2.6.4.2"><span class="ltx_text" id="S0.T2.6.4.2.1" style="font-size:80%;">13 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T2.6.4.3"><span class="ltx_text" id="S0.T2.6.4.3.1" style="font-size:80%;">848-974 per language</span></td>
</tr>
<tr class="ltx_tr" id="S0.T2.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T2.6.5.1" rowspan="2"><span class="ltx_text" id="S0.T2.6.5.1.1" style="font-size:80%;">Improved Testing</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T2.6.5.2">
<span class="ltx_text" id="S0.T2.6.5.2.1" style="font-size:80%;">MBPP+ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T2.6.5.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">HumanEvalPlus-Mini-MBPP+-2023</span><span class="ltx_text" id="S0.T2.6.5.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T2.6.5.3"><span class="ltx_text" id="S0.T2.6.5.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T2.6.5.4"><span class="ltx_text" id="S0.T2.6.5.4.1" style="font-size:80%;">427</span></td>
</tr>
<tr class="ltx_tr" id="S0.T2.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T2.6.6.1">
<span class="ltx_text" id="S0.T2.6.6.1.1" style="font-size:80%;">MBPP-Eval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T2.6.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeScore-HE-APPS-MBPP-Eval-2023</span><span class="ltx_text" id="S0.T2.6.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T2.6.6.2"><span class="ltx_text" id="S0.T2.6.6.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T2.6.6.3"><span class="ltx_text" id="S0.T2.6.6.3.1" style="font-size:80%;">974</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive overview of AI4SE (Artificial Intelligence in Software Engineering) benchmarks derived from the MBPP (Mostly Basic Python Problems) benchmark.  It categorizes these benchmarks based on their origin (original, improved language support, or improved testing) and provides the name of each benchmark along with the programming language(s) it supports and the number of problems included.
> <details>
> <summary>read the caption</summary>
> TABLE II: Overview of AI4SE benchmarks derived from MBPP [MBPP-MathQA-2021].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T3.3">
<tr class="ltx_tr" id="S0.T3.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T3.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T3.3.1.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T3.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T3.3.1.2.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T3.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T3.3.1.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T3.3.1.4"><span class="ltx_text ltx_font_bold" id="S0.T3.3.1.4.1" style="font-size:80%;"># Tests</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T3.3.2.1" rowspan="5"><span class="ltx_text" id="S0.T3.3.2.1.1" style="font-size:80%;">Competitive Programming</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T3.3.2.2">
<span class="ltx_text" id="S0.T3.3.2.2.1" style="font-size:80%;">CodeContests </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeContests-AlphaCode-2022</span><span class="ltx_text" id="S0.T3.3.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T3.3.2.3"><span class="ltx_text" id="S0.T3.3.2.3.1" style="font-size:80%;">12 programming languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T3.3.2.4"><span class="ltx_text" id="S0.T3.3.2.4.1" style="font-size:80%;">Avg. 203.7</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.3">
<td class="ltx_td ltx_align_left" id="S0.T3.3.3.1">
<span class="ltx_text" id="S0.T3.3.3.1.1" style="font-size:80%;">APPS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">APPS-2021</span><span class="ltx_text" id="S0.T3.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.3.2"><span class="ltx_text" id="S0.T3.3.3.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.3.3"><span class="ltx_text" id="S0.T3.3.3.3.1" style="font-size:80%;">Avg. 13.2</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.4">
<td class="ltx_td ltx_align_left" id="S0.T3.3.4.1">
<span class="ltx_text" id="S0.T3.3.4.1.1" style="font-size:80%;">LiveCodeBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">jain_livecodebench_2024</span><span class="ltx_text" id="S0.T3.3.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.4.2"><span class="ltx_text" id="S0.T3.3.4.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.4.3"><span class="ltx_text" id="S0.T3.3.4.3.1" style="font-size:80%;">Avg. 17.23</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.5">
<td class="ltx_td ltx_align_left" id="S0.T3.3.5.1">
<span class="ltx_text" id="S0.T3.3.5.1.1" style="font-size:80%;">LeetCode </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">tian_is_2023</span><span class="ltx_text" id="S0.T3.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.5.2"><span class="ltx_text" id="S0.T3.3.5.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.5.3"><span class="ltx_text" id="S0.T3.3.5.3.1" style="font-size:80%;">Avg. 135</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.6">
<td class="ltx_td ltx_align_left" id="S0.T3.3.6.1">
<span class="ltx_text" id="S0.T3.3.6.1.1" style="font-size:80%;">CodeElo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">quan_codeelo_2025</span><span class="ltx_text" id="S0.T3.3.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.6.2"><span class="ltx_text" id="S0.T3.3.6.2.1" style="font-size:80%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.6.3"><span class="ltx_text" id="S0.T3.3.6.3.1" style="font-size:80%;">408 problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T3.3.7.1" rowspan="5"><span class="ltx_text" id="S0.T3.3.7.1.1" style="font-size:80%;">Code Complexity</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T3.3.7.2">
<span class="ltx_text" id="S0.T3.3.7.2.1" style="font-size:80%;">CoRCoD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.7.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CoRCoD-2019</span><span class="ltx_text" id="S0.T3.3.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T3.3.7.3"><span class="ltx_text" id="S0.T3.3.7.3.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T3.3.7.4"><span class="ltx_text" id="S0.T3.3.7.4.1" style="font-size:80%;">932</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.8">
<td class="ltx_td ltx_align_left" id="S0.T3.3.8.1">
<span class="ltx_text" id="S0.T3.3.8.1.1" style="font-size:80%;">GeeksForGeeks (GFG) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">GFG-2023</span><span class="ltx_text" id="S0.T3.3.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.8.2"><span class="ltx_text" id="S0.T3.3.8.2.1" style="font-size:80%;">C++, Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.8.3"><span class="ltx_text" id="S0.T3.3.8.3.1" style="font-size:80%;">±1,400 per lang.&amp;categ</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.9">
<td class="ltx_td ltx_align_left" id="S0.T3.3.9.1">
<span class="ltx_text" id="S0.T3.3.9.1.1" style="font-size:80%;">CODAIT </span><span class="ltx_note ltx_role_footnote" id="footnote2"><sup class="ltx_note_mark">2</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">2</sup><span class="ltx_tag ltx_tag_note">2</span>CODAIT-2021 <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://ibm.co/4emPBIa" title="">https://ibm.co/4emPBIa</a></span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.9.2"><span class="ltx_text" id="S0.T3.3.9.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.9.3"><span class="ltx_text" id="S0.T3.3.9.3.1" style="font-size:80%;">4,000,000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.10">
<td class="ltx_td ltx_align_left" id="S0.T3.3.10.1">
<span class="ltx_text" id="S0.T3.3.10.1.1" style="font-size:80%;">CodeComplex </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.10.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeComplex-2022</span><span class="ltx_text" id="S0.T3.3.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.10.2"><span class="ltx_text" id="S0.T3.3.10.2.1" style="font-size:80%;">Java, Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.10.3"><span class="ltx_text" id="S0.T3.3.10.3.1" style="font-size:80%;">4,900 per language</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.11">
<td class="ltx_td ltx_align_left" id="S0.T3.3.11.1">
<span class="ltx_text" id="S0.T3.3.11.1.1" style="font-size:80%;">PythonSaga </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">PythonSaga-HumanEval-MBPP-Evaluation-Difficulty-2024</span><span class="ltx_text" id="S0.T3.3.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.11.2"><span class="ltx_text" id="S0.T3.3.11.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.11.3"><span class="ltx_text" id="S0.T3.3.11.3.1" style="font-size:80%;">185</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T3.3.12.1" rowspan="3"><span class="ltx_text" id="S0.T3.3.12.1.1" style="font-size:80%;">Code Efficiency</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T3.3.12.2">
<span class="ltx_text" id="S0.T3.3.12.2.1" style="font-size:80%;">EffiBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.12.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">EffiBench-2024</span><span class="ltx_text" id="S0.T3.3.12.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T3.3.12.3"><span class="ltx_text" id="S0.T3.3.12.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T3.3.12.4"><span class="ltx_text" id="S0.T3.3.12.4.1" style="font-size:80%;">Self-defined, avg. 100</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.13">
<td class="ltx_td ltx_align_left" id="S0.T3.3.13.1">
<span class="ltx_text" id="S0.T3.3.13.1.1" style="font-size:80%;">CODAL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">m_weyssow_codeultrafeedback_2024</span><span class="ltx_text" id="S0.T3.3.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T3.3.13.2"><span class="ltx_text" id="S0.T3.3.13.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T3.3.13.3"><span class="ltx_text" id="S0.T3.3.13.3.1" style="font-size:80%;">3 ref. / problem</span></td>
</tr>
<tr class="ltx_tr" id="S0.T3.3.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T3.3.14.1">
<span class="ltx_text" id="S0.T3.3.14.1.1" style="font-size:80%;">PIE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T3.3.14.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">shypula_learning_2024</span><span class="ltx_text" id="S0.T3.3.14.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T3.3.14.2"><span class="ltx_text" id="S0.T3.3.14.2.1" style="font-size:80%;">C++</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T3.3.14.3"><span class="ltx_text" id="S0.T3.3.14.3.1" style="font-size:80%;">82.5(median, train)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a collection of benchmarks categorized into three groups based on their focus: competitive programming, code complexity, and code efficiency.  Each benchmark includes the name, primary programming language(s) used, and the number of tests or problems included.  This allows readers to quickly compare the characteristics of different benchmarking tools and select the most appropriate one for evaluating specific aspects of code quality and performance.
> <details>
> <summary>read the caption</summary>
> TABLE III: Overview of competitive programming, code complexity, and code efficiency benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T4.3">
<tr class="ltx_tr" id="S0.T4.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T4.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T4.3.1.1.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T4.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T4.3.1.2.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T4.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T4.3.1.3.1" style="font-size:80%;"># Tests</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T4.3.1.4"><span class="ltx_text ltx_font_bold" id="S0.T4.3.1.4.1" style="font-size:80%;">Comment</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T4.3.2.1">
<span class="ltx_text" id="S0.T4.3.2.1.1" style="font-size:80%;">DS-1000 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T4.3.2.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">DS-1000-2022</span><span class="ltx_text" id="S0.T4.3.2.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T4.3.2.2"><span class="ltx_text" id="S0.T4.3.2.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T4.3.2.3"><span class="ltx_text" id="S0.T4.3.2.3.1" style="font-size:80%;">Avg. 1.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T4.3.2.4"><span class="ltx_text" id="S0.T4.3.2.4.1" style="font-size:80%;">7 DS/ML libraries</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.3">
<td class="ltx_td ltx_align_left" id="S0.T4.3.3.1"><span class="ltx_text" id="S0.T4.3.3.1.1" style="font-size:80%;">NumpyEval <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">NumpyEval-PandasEval-PyCodeGPT-2022</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.3.2"><span class="ltx_text" id="S0.T4.3.3.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.3.3"><span class="ltx_text" id="S0.T4.3.3.3.1" style="font-size:80%;">Avg. 20 functions</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.3.4"><span class="ltx_text" id="S0.T4.3.3.4.1" style="font-size:80%;">NumPy (101 problems)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.4">
<td class="ltx_td" id="S0.T4.3.4.1"></td>
<td class="ltx_td" id="S0.T4.3.4.2"></td>
<td class="ltx_td" id="S0.T4.3.4.3"></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.4.4"><span class="ltx_text" id="S0.T4.3.4.4.1" style="font-size:80%;">(Avg. 1 variable)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.5">
<td class="ltx_td ltx_align_left" id="S0.T4.3.5.1"><span class="ltx_text" id="S0.T4.3.5.1.1" style="font-size:80%;">PandasEval <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">NumpyEval-PandasEval-PyCodeGPT-2022</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.5.2"><span class="ltx_text" id="S0.T4.3.5.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.5.3"><span class="ltx_text" id="S0.T4.3.5.3.1" style="font-size:80%;">Avg. 20 functions</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.5.4"><span class="ltx_text" id="S0.T4.3.5.4.1" style="font-size:80%;">Pandas (101 problems)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.6">
<td class="ltx_td" id="S0.T4.3.6.1"></td>
<td class="ltx_td" id="S0.T4.3.6.2"></td>
<td class="ltx_td" id="S0.T4.3.6.3"></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.6.4"><span class="ltx_text" id="S0.T4.3.6.4.1" style="font-size:80%;">(Avg. 1 variable)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.7">
<td class="ltx_td ltx_align_left" id="S0.T4.3.7.1"><span class="ltx_text" id="S0.T4.3.7.1.1" style="font-size:80%;">JuICe <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">JuICe-2019</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.7.2"><span class="ltx_text" id="S0.T4.3.7.2.1" style="font-size:80%;">Python, JN</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.7.3"><span class="ltx_text" id="S0.T4.3.7.3.1" style="font-size:80%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.7.4"><span class="ltx_text" id="S0.T4.3.7.4.1" style="font-size:80%;">Cell completion</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.8">
<td class="ltx_td" id="S0.T4.3.8.1"></td>
<td class="ltx_td" id="S0.T4.3.8.2"></td>
<td class="ltx_td" id="S0.T4.3.8.3"></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.8.4"><span class="ltx_text" id="S0.T4.3.8.4.1" style="font-size:80%;">(1.5M/3.7K train test)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.9">
<td class="ltx_td ltx_align_left" id="S0.T4.3.9.1"><span class="ltx_text" id="S0.T4.3.9.1.1" style="font-size:80%;">DSP <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">DSP-2022</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.9.2"><span class="ltx_text" id="S0.T4.3.9.2.1" style="font-size:80%;">Python, JN</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.9.3"><span class="ltx_text" id="S0.T4.3.9.3.1" style="font-size:80%;">Available</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.9.4"><span class="ltx_text" id="S0.T4.3.9.4.1" style="font-size:80%;">Cell completion</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.10">
<td class="ltx_td" id="S0.T4.3.10.1"></td>
<td class="ltx_td" id="S0.T4.3.10.2"></td>
<td class="ltx_td" id="S0.T4.3.10.3"></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.10.4"><span class="ltx_text" id="S0.T4.3.10.4.1" style="font-size:80%;">(1,119 problems)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.11">
<td class="ltx_td ltx_align_left" id="S0.T4.3.11.1"><span class="ltx_text" id="S0.T4.3.11.1.1" style="font-size:80%;">ExeDS <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">huang_junjie_execution-based_2022</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.11.2"><span class="ltx_text" id="S0.T4.3.11.2.1" style="font-size:80%;">Python, JN</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.11.3"><span class="ltx_text" id="S0.T4.3.11.3.1" style="font-size:80%;">Execution Based</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.11.4"><span class="ltx_text" id="S0.T4.3.11.4.1" style="font-size:80%;">Cell generation</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.12">
<td class="ltx_td" id="S0.T4.3.12.1"></td>
<td class="ltx_td" id="S0.T4.3.12.2"></td>
<td class="ltx_td" id="S0.T4.3.12.3"></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.12.4"><span class="ltx_text" id="S0.T4.3.12.4.1" style="font-size:80%;">(ground truth), 534 tasks</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.13">
<td class="ltx_td ltx_align_left" id="S0.T4.3.13.1"><span class="ltx_text" id="S0.T4.3.13.1.1" style="font-size:80%;">DSEval <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang_benchmarking_2024</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.13.2"><span class="ltx_text" id="S0.T4.3.13.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.13.3"><span class="ltx_text" id="S0.T4.3.13.3.1" style="font-size:80%;">custom appraoch</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.13.4"><span class="ltx_text" id="S0.T4.3.13.4.1" style="font-size:80%;">Models Evaluated via the DSEval</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.14">
<td class="ltx_td" id="S0.T4.3.14.1"></td>
<td class="ltx_td" id="S0.T4.3.14.2"></td>
<td class="ltx_td" id="S0.T4.3.14.3"></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.14.4"><span class="ltx_text" id="S0.T4.3.14.4.1" style="font-size:80%;">Approach from the Paper</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T4.3.15.1"><span class="ltx_text" id="S0.T4.3.15.1.1" style="font-size:80%;">Bio-Coder <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">xiangru_tang_biocoder_2024</span>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T4.3.15.2"><span class="ltx_text" id="S0.T4.3.15.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T4.3.15.3"><span class="ltx_text" id="S0.T4.3.15.3.1" style="font-size:80%;">1,026</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T4.3.15.4"><span class="ltx_text" id="S0.T4.3.15.4.1" style="font-size:80%;">Identify and import necessary</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.16">
<td class="ltx_td" id="S0.T4.3.16.1"></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.16.2"><span class="ltx_text" id="S0.T4.3.16.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.16.3"><span class="ltx_text" id="S0.T4.3.16.3.1" style="font-size:80%;">1,243</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.16.4"><span class="ltx_text" id="S0.T4.3.16.4.1" style="font-size:80%;">classes for given task</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.17">
<td class="ltx_td ltx_align_left" id="S0.T4.3.17.1"><span class="ltx_text" id="S0.T4.3.17.1.1" style="font-size:80%;">Bio-Coder-Rosalind <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">xiangru_tang_biocoder_2024</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.17.2"><span class="ltx_text" id="S0.T4.3.17.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.17.3"><span class="ltx_text" id="S0.T4.3.17.3.1" style="font-size:80%;">253 golden solution</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.17.4"><span class="ltx_text" id="S0.T4.3.17.4.1" style="font-size:80%;">Generate code for question</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.18">
<td class="ltx_td ltx_align_left" id="S0.T4.3.18.1"><span class="ltx_text" id="S0.T4.3.18.1.1" style="font-size:80%;">WebApp1k <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">cui2024webapp1kpracticalcodegenerationbenchmark</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.18.2"><span class="ltx_text" id="S0.T4.3.18.2.1" style="font-size:80%;">React</span></td>
<td class="ltx_td ltx_align_left" id="S0.T4.3.18.3"><span class="ltx_text" id="S0.T4.3.18.3.1" style="font-size:80%;">Available</span></td>
<td class="ltx_td ltx_align_center" id="S0.T4.3.18.4"><span class="ltx_text" id="S0.T4.3.18.4.1" style="font-size:80%;">evaluates whether a model can</span></td>
</tr>
<tr class="ltx_tr" id="S0.T4.3.19">
<td class="ltx_td ltx_border_bb" id="S0.T4.3.19.1"></td>
<td class="ltx_td ltx_border_bb" id="S0.T4.3.19.2"></td>
<td class="ltx_td ltx_border_bb" id="S0.T4.3.19.3"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T4.3.19.4"><span class="ltx_text" id="S0.T4.3.19.4.1" style="font-size:80%;">generate React web-app</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a compilation of benchmarks specifically designed for evaluating the performance of AI models in data science tasks and other domain-specific software engineering problems.  It details each benchmark's name, the programming languages involved, the number of tests or problems included, and additional comments to clarify specific aspects or limitations.  The 'JN' notation indicates the use of Jupyter Notebooks within the benchmark.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Overview of data science & domain-specific benchmarks. (JN refers to Jupyter Notebooks.)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T5.3">
<tr class="ltx_tr" id="S0.T5.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T5.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T5.3.1.1.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T5.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T5.3.1.2.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T5.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T5.3.1.3.1" style="font-size:80%;"># Problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T5.3.2.1">
<span class="ltx_text" id="S0.T5.3.2.1.1" style="font-size:80%;">MATH </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.2.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">dan_hendrycks_measuring_2021</span><span class="ltx_text" id="S0.T5.3.2.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T5.3.2.2"><span class="ltx_text" id="S0.T5.3.2.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T5.3.2.3"><span class="ltx_text" id="S0.T5.3.2.3.1" style="font-size:80%;">12,500</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.3">
<td class="ltx_td ltx_align_left" id="S0.T5.3.3.1">
<span class="ltx_text" id="S0.T5.3.3.1.1" style="font-size:80%;">MATH500 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">lightman_lets_2023</span><span class="ltx_text" id="S0.T5.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.3.2"><span class="ltx_text" id="S0.T5.3.3.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.3.3"><span class="ltx_text" id="S0.T5.3.3.3.1" style="font-size:80%;">500</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.4">
<td class="ltx_td ltx_align_left" id="S0.T5.3.4.1">
<span class="ltx_text" id="S0.T5.3.4.1.1" style="font-size:80%;">MathQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MathQA-2019</span><span class="ltx_text" id="S0.T5.3.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.4.2"><span class="ltx_text" id="S0.T5.3.4.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.4.3"><span class="ltx_text" id="S0.T5.3.4.3.1" style="font-size:80%;">37,297</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.5">
<td class="ltx_td ltx_align_left" id="S0.T5.3.5.1">
<span class="ltx_text" id="S0.T5.3.5.1.1" style="font-size:80%;">MathQA-Python </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MBPP-MathQA-2021</span><span class="ltx_text" id="S0.T5.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.5.2"><span class="ltx_text" id="S0.T5.3.5.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.5.3"><span class="ltx_text" id="S0.T5.3.5.3.1" style="font-size:80%;">23,914</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.6">
<td class="ltx_td ltx_align_left" id="S0.T5.3.6.1">
<span class="ltx_text" id="S0.T5.3.6.1.1" style="font-size:80%;">MathQA-X </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MultiEval-HumanEval-MBXP-MathQA-X-2022</span><span class="ltx_text" id="S0.T5.3.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.6.2"><span class="ltx_text" id="S0.T5.3.6.2.1" style="font-size:80%;">Python, Java, JS</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.6.3"><span class="ltx_text" id="S0.T5.3.6.3.1" style="font-size:80%;">1,883 per language</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.7">
<td class="ltx_td ltx_align_left" id="S0.T5.3.7.1"><span class="ltx_text ltx_font_smallcaps" id="S0.T5.3.7.1.1" style="font-size:80%;">Līla<cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text ltx_font_upright" id="S0.T5.3.7.1.1.1.1">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Lila-BHASKARA-2022</span><span class="ltx_text ltx_font_upright" id="S0.T5.3.7.1.1.2.2">]</span></cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.7.2"><span class="ltx_text" id="S0.T5.3.7.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.7.3"><span class="ltx_text" id="S0.T5.3.7.3.1" style="font-size:80%;">133,815 questions, 358,769 programs</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.8">
<td class="ltx_td ltx_align_left" id="S0.T5.3.8.1">
<span class="ltx_text" id="S0.T5.3.8.1.1" style="font-size:80%;">MultiArith </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MultiArith-2015</span><span class="ltx_text" id="S0.T5.3.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.8.2"><span class="ltx_text" id="S0.T5.3.8.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.8.3"><span class="ltx_text" id="S0.T5.3.8.3.1" style="font-size:80%;">600</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.9">
<td class="ltx_td ltx_align_left" id="S0.T5.3.9.1">
<span class="ltx_text" id="S0.T5.3.9.1.1" style="font-size:80%;">GSM8K </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">PAL-GSM-Math-2022</span><span class="ltx_text" id="S0.T5.3.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.9.2"><span class="ltx_text" id="S0.T5.3.9.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.9.3"><span class="ltx_text" id="S0.T5.3.9.3.1" style="font-size:80%;">1,320</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.10">
<td class="ltx_td ltx_align_left" id="S0.T5.3.10.1">
<span class="ltx_text" id="S0.T5.3.10.1.1" style="font-size:80%;">GSM-HARD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.10.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">PAL-GSM-Math-2022</span><span class="ltx_text" id="S0.T5.3.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.10.2"><span class="ltx_text" id="S0.T5.3.10.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.10.3"><span class="ltx_text" id="S0.T5.3.10.3.1" style="font-size:80%;">1,320</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.11">
<td class="ltx_td ltx_align_left" id="S0.T5.3.11.1">
<span class="ltx_text" id="S0.T5.3.11.1.1" style="font-size:80%;">TheoremQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">TheoremQA-2023</span><span class="ltx_text" id="S0.T5.3.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.11.2"><span class="ltx_text" id="S0.T5.3.11.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.11.3"><span class="ltx_text" id="S0.T5.3.11.3.1" style="font-size:80%;">800</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.12">
<td class="ltx_td ltx_align_left" id="S0.T5.3.12.1">
<span class="ltx_text" id="S0.T5.3.12.1.1" style="font-size:80%;">PECC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.12.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">patrick_haller_pecc_2024</span><span class="ltx_text" id="S0.T5.3.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.12.2"><span class="ltx_text" id="S0.T5.3.12.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.12.3"><span class="ltx_text" id="S0.T5.3.12.3.1" style="font-size:80%;">1,006</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.13">
<td class="ltx_td ltx_align_left" id="S0.T5.3.13.1">
<span class="ltx_text" id="S0.T5.3.13.1.1" style="font-size:80%;">BRIGHT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T5.3.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">hongjin_su_bright_2024</span><span class="ltx_text" id="S0.T5.3.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.13.2"><span class="ltx_text" id="S0.T5.3.13.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left" id="S0.T5.3.13.3"><span class="ltx_text" id="S0.T5.3.13.3.1" style="font-size:80%;">395</span></td>
</tr>
<tr class="ltx_tr" id="S0.T5.3.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T5.3.14.1">
<span class="ltx_text" id="S0.T5.3.14.1.1" style="font-size:80%;">AMC12</span><span class="ltx_note ltx_role_footnote" id="footnote3"><sup class="ltx_note_mark">3</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">3</sup><span class="ltx_tag ltx_tag_note">3</span><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/AI-MO/aimo-validation-amc" title="">https://huggingface.co/datasets/AI-MO/aimo-validation-amc</a></span></span></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T5.3.14.2"><span class="ltx_text" id="S0.T5.3.14.2.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T5.3.14.3"><span class="ltx_text" id="S0.T5.3.14.3.1" style="font-size:80%;">82</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a list of various benchmarks used for evaluating the mathematical reasoning capabilities of AI models in the context of software engineering.  For each benchmark, it lists the name, the languages it supports, the number of problems it contains, and additional notes or specifics. This provides a comprehensive overview of available resources for assessing AI's mathematical reasoning skills within AI4SE.
> <details>
> <summary>read the caption</summary>
> TABLE V: Overview of Mathematical Reasoning Benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T6.33">
<tr class="ltx_tr" id="S0.T6.33.34">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T6.33.34.1"><span class="ltx_text ltx_font_bold" id="S0.T6.33.34.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T6.33.34.2"><span class="ltx_text ltx_font_bold" id="S0.T6.33.34.2.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T6.33.34.3"><span class="ltx_text ltx_font_bold" id="S0.T6.33.34.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T6.33.34.4"><span class="ltx_text ltx_font_bold" id="S0.T6.33.34.4.1" style="font-size:80%;">No. of Problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T6.1.1.2" rowspan="24"><span class="ltx_text" id="S0.T6.1.1.2.1" style="font-size:80%;">Text2Code</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T6.1.1.3">
<span class="ltx_text" id="S0.T6.1.1.3.1" style="font-size:80%;">CoNaLa </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.1.1.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CoNaLa-2018</span><span class="ltx_text" id="S0.T6.1.1.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T6.1.1.1">
<span class="ltx_text" id="S0.T6.1.1.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.1.1.1.m1.1"><semantics id="S0.T6.1.1.1.m1.1a"><mo id="S0.T6.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.1.1.1.m1.1b"><ci id="S0.T6.1.1.1.m1.1.1.cmml" xref="S0.T6.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.1.1.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T6.1.1.4"><span class="ltx_text" id="S0.T6.1.1.4.1" style="font-size:80%;">2,879</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.2.2">
<td class="ltx_td ltx_align_left" id="S0.T6.2.2.2">
<span class="ltx_text" id="S0.T6.2.2.2.1" style="font-size:80%;">MCoNaLa </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.2.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MCoNaLa-2022</span><span class="ltx_text" id="S0.T6.2.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.2.2.1">
<span class="ltx_text" id="S0.T6.2.2.1.1" style="font-size:80%;">{Spanish, Japanese, Russian} </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.2.2.1.m1.1"><semantics id="S0.T6.2.2.1.m1.1a"><mo id="S0.T6.2.2.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.2.2.1.m1.1b"><ci id="S0.T6.2.2.1.m1.1.1.cmml" xref="S0.T6.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.2.2.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.2.2.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.2.2.3"><span class="ltx_text" id="S0.T6.2.2.3.1" style="font-size:80%;">896</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.3.3">
<td class="ltx_td ltx_align_left" id="S0.T6.3.3.2">
<span class="ltx_text" id="S0.T6.3.3.2.1" style="font-size:80%;">CoNaLa-SO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.3.3.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">orlanski_reading_2021</span><span class="ltx_text" id="S0.T6.3.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.3.3.1">
<span class="ltx_text" id="S0.T6.3.3.1.1" style="font-size:80%;">Englihs </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.3.3.1.m1.1"><semantics id="S0.T6.3.3.1.m1.1a"><mo id="S0.T6.3.3.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.3.3.1.m1.1b"><ci id="S0.T6.3.3.1.m1.1.1.cmml" xref="S0.T6.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.3.3.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.3.3.3"><span class="ltx_text" id="S0.T6.3.3.3.1" style="font-size:80%;">10,000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.4.4">
<td class="ltx_td ltx_align_left" id="S0.T6.4.4.2">
<span class="ltx_text" id="S0.T6.4.4.2.1" style="font-size:80%;">APPS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.4.4.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">APPS-2021</span><span class="ltx_text" id="S0.T6.4.4.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.4.4.1">
<span class="ltx_text" id="S0.T6.4.4.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.4.4.1.m1.1"><semantics id="S0.T6.4.4.1.m1.1a"><mo id="S0.T6.4.4.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.4.4.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.4.4.1.m1.1b"><ci id="S0.T6.4.4.1.m1.1.1.cmml" xref="S0.T6.4.4.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.4.4.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.4.4.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.4.4.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.4.4.3"><span class="ltx_text" id="S0.T6.4.4.3.1" style="font-size:80%;">10,000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.5.5">
<td class="ltx_td ltx_align_left" id="S0.T6.5.5.2">
<span class="ltx_text" id="S0.T6.5.5.2.1" style="font-size:80%;">APPS-Eval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.5.5.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeScore-HE-APPS-MBPP-Eval-2023</span><span class="ltx_text" id="S0.T6.5.5.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.5.5.1">
<span class="ltx_text" id="S0.T6.5.5.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.5.5.1.m1.1"><semantics id="S0.T6.5.5.1.m1.1a"><mo id="S0.T6.5.5.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.5.5.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.5.5.1.m1.1b"><ci id="S0.T6.5.5.1.m1.1.1.cmml" xref="S0.T6.5.5.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.5.5.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.5.5.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.5.5.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.5.5.3"><span class="ltx_text" id="S0.T6.5.5.3.1" style="font-size:80%;">10,000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.6.6">
<td class="ltx_td ltx_align_left" id="S0.T6.6.6.2">
<span class="ltx_text" id="S0.T6.6.6.2.1" style="font-size:80%;">AixBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.6.6.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">AixBench-2022</span><span class="ltx_text" id="S0.T6.6.6.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.6.6.1">
<span class="ltx_text" id="S0.T6.6.6.1.1" style="font-size:80%;">English, Chinese </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.6.6.1.m1.1"><semantics id="S0.T6.6.6.1.m1.1a"><mo id="S0.T6.6.6.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.6.6.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.6.6.1.m1.1b"><ci id="S0.T6.6.6.1.m1.1.1.cmml" xref="S0.T6.6.6.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.6.6.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.6.6.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.6.6.1.2" style="font-size:80%;"> Java</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.6.6.3"><span class="ltx_text" id="S0.T6.6.6.3.1" style="font-size:80%;">175</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.7.7">
<td class="ltx_td ltx_align_left" id="S0.T6.7.7.2">
<span class="ltx_text" id="S0.T6.7.7.2.1" style="font-size:80%;">Natural2Code </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.7.7.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Gemini-Natural2Code-2023</span><span class="ltx_text" id="S0.T6.7.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.7.7.1">
<span class="ltx_text" id="S0.T6.7.7.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.7.7.1.m1.1"><semantics id="S0.T6.7.7.1.m1.1a"><mo id="S0.T6.7.7.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.7.7.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.7.7.1.m1.1b"><ci id="S0.T6.7.7.1.m1.1.1.cmml" xref="S0.T6.7.7.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.7.7.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.7.7.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.7.7.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.7.7.3"><span class="ltx_text" id="S0.T6.7.7.3.1" style="font-size:80%;">Unknown</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.8.8">
<td class="ltx_td ltx_align_left" id="S0.T6.8.8.2">
<span class="ltx_text" id="S0.T6.8.8.2.1" style="font-size:80%;">CoSQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.8.8.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CoSQA-2021</span><span class="ltx_text" id="S0.T6.8.8.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.8.8.1">
<span class="ltx_text" id="S0.T6.8.8.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.8.8.1.m1.1"><semantics id="S0.T6.8.8.1.m1.1a"><mo id="S0.T6.8.8.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.8.8.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.8.8.1.m1.1b"><ci id="S0.T6.8.8.1.m1.1.1.cmml" xref="S0.T6.8.8.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.8.8.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.8.8.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.8.8.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.8.8.3"><span class="ltx_text" id="S0.T6.8.8.3.1" style="font-size:80%;">20,604</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.9.9">
<td class="ltx_td ltx_align_left" id="S0.T6.9.9.2">
<span class="ltx_text" id="S0.T6.9.9.2.1" style="font-size:80%;">WebQueryTest </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.9.9.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeXGLUE-2021</span><span class="ltx_text" id="S0.T6.9.9.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.9.9.1">
<span class="ltx_text" id="S0.T6.9.9.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.9.9.1.m1.1"><semantics id="S0.T6.9.9.1.m1.1a"><mo id="S0.T6.9.9.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.9.9.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.9.9.1.m1.1b"><ci id="S0.T6.9.9.1.m1.1.1.cmml" xref="S0.T6.9.9.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.9.9.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.9.9.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.9.9.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.9.9.3"><span class="ltx_text" id="S0.T6.9.9.3.1" style="font-size:80%;">1,046</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.10.10">
<td class="ltx_td ltx_align_left" id="S0.T6.10.10.2">
<span class="ltx_text" id="S0.T6.10.10.2.1" style="font-size:80%;">AdvTest </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.10.10.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeXGLUE-2021</span><span class="ltx_text" id="S0.T6.10.10.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.10.10.1">
<span class="ltx_text" id="S0.T6.10.10.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.10.10.1.m1.1"><semantics id="S0.T6.10.10.1.m1.1a"><mo id="S0.T6.10.10.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.10.10.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.10.10.1.m1.1b"><ci id="S0.T6.10.10.1.m1.1.1.cmml" xref="S0.T6.10.10.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.10.10.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.10.10.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.10.10.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.10.10.3"><span class="ltx_text" id="S0.T6.10.10.3.1" style="font-size:80%;">280,634</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.11.11">
<td class="ltx_td ltx_align_left" id="S0.T6.11.11.2">
<span class="ltx_text" id="S0.T6.11.11.2.1" style="font-size:80%;">CONCODE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.11.11.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Concode-2018</span><span class="ltx_text" id="S0.T6.11.11.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.11.11.1">
<span class="ltx_text" id="S0.T6.11.11.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.11.11.1.m1.1"><semantics id="S0.T6.11.11.1.m1.1a"><mo id="S0.T6.11.11.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.11.11.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.11.11.1.m1.1b"><ci id="S0.T6.11.11.1.m1.1.1.cmml" xref="S0.T6.11.11.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.11.11.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.11.11.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.11.11.1.2" style="font-size:80%;"> Java</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.11.11.3"><span class="ltx_text" id="S0.T6.11.11.3.1" style="font-size:80%;">104,000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.12.12">
<td class="ltx_td ltx_align_left" id="S0.T6.12.12.2">
<span class="ltx_text" id="S0.T6.12.12.2.1" style="font-size:80%;">MTPB </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.12.12.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MTPB-CodeGen-2022</span><span class="ltx_text" id="S0.T6.12.12.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.12.12.1">
<span class="ltx_text" id="S0.T6.12.12.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.12.12.1.m1.1"><semantics id="S0.T6.12.12.1.m1.1a"><mo id="S0.T6.12.12.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.12.12.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.12.12.1.m1.1b"><ci id="S0.T6.12.12.1.m1.1.1.cmml" xref="S0.T6.12.12.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.12.12.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.12.12.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.12.12.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.12.12.3"><span class="ltx_text" id="S0.T6.12.12.3.1" style="font-size:80%;">115</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.13.13">
<td class="ltx_td ltx_align_left" id="S0.T6.13.13.2">
<span class="ltx_text" id="S0.T6.13.13.2.1" style="font-size:80%;">CAASD  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.13.13.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">simiao_zhang_experimenting_2024</span><span class="ltx_text" id="S0.T6.13.13.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.13.13.1">
<span class="ltx_text" id="S0.T6.13.13.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.13.13.1.m1.1"><semantics id="S0.T6.13.13.1.m1.1a"><mo id="S0.T6.13.13.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.13.13.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.13.13.1.m1.1b"><ci id="S0.T6.13.13.1.m1.1.1.cmml" xref="S0.T6.13.13.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.13.13.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.13.13.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.13.13.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.13.13.3"><span class="ltx_text" id="S0.T6.13.13.3.1" style="font-size:80%;">72</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.14.14">
<td class="ltx_td ltx_align_left" id="S0.T6.14.14.2">
<span class="ltx_text" id="S0.T6.14.14.2.1" style="font-size:80%;">Shellcode_IA32  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.14.14.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">liguori_can_2022</span><span class="ltx_text" id="S0.T6.14.14.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.14.14.1">
<span class="ltx_text" id="S0.T6.14.14.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.14.14.1.m1.1"><semantics id="S0.T6.14.14.1.m1.1a"><mo id="S0.T6.14.14.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.14.14.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.14.14.1.m1.1b"><ci id="S0.T6.14.14.1.m1.1.1.cmml" xref="S0.T6.14.14.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.14.14.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.14.14.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.14.14.1.2" style="font-size:80%;"> IA32/Shell</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.14.14.3"><span class="ltx_text" id="S0.T6.14.14.3.1" style="font-size:80%;">3200</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.33.35">
<td class="ltx_td ltx_align_left" id="S0.T6.33.35.1">
<span class="ltx_text" id="S0.T6.33.35.1.1" style="font-size:80%;">Odex  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.33.35.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">liguori_can_2022</span><span class="ltx_text" id="S0.T6.33.35.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.33.35.2"><span class="ltx_text" id="S0.T6.33.35.2.1" style="font-size:80%;">{Spanish, Japanese, Russian, English}</span></td>
<td class="ltx_td ltx_align_center" id="S0.T6.33.35.3"><span class="ltx_text" id="S0.T6.33.35.3.1" style="font-size:80%;">945 {90, 164, 252, 439}</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.15.15">
<td class="ltx_td" id="S0.T6.15.15.2"></td>
<td class="ltx_td ltx_align_left" id="S0.T6.15.15.1">
<math alttext="\quad\quad\quad\rightarrow" class="ltx_Math" display="inline" id="S0.T6.15.15.1.m1.1"><semantics id="S0.T6.15.15.1.m1.1a"><mo id="S0.T6.15.15.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.15.15.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.15.15.1.m1.1b"><ci id="S0.T6.15.15.1.m1.1.1.cmml" xref="S0.T6.15.15.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.15.15.1.m1.1c">\quad\quad\quad\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.15.15.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.15.15.1.1" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.15.15.3"><span class="ltx_text" id="S0.T6.15.15.3.1" style="font-size:80%;">1707 test total</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.16.16">
<td class="ltx_td ltx_align_left" id="S0.T6.16.16.2">
<span class="ltx_text" id="S0.T6.16.16.2.1" style="font-size:80%;">PSB2  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.16.16.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">thomas_helmuth_psb2_2021</span><span class="ltx_text" id="S0.T6.16.16.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.16.16.1">
<span class="ltx_text" id="S0.T6.16.16.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.16.16.1.m1.1"><semantics id="S0.T6.16.16.1.m1.1a"><mo id="S0.T6.16.16.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.16.16.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.16.16.1.m1.1b"><ci id="S0.T6.16.16.1.m1.1.1.cmml" xref="S0.T6.16.16.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.16.16.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.16.16.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.16.16.1.2" style="font-size:80%;"> {Clojure, Python}</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.16.16.3"><span class="ltx_text" id="S0.T6.16.16.3.1" style="font-size:80%;">25</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.33.36">
<td class="ltx_td" id="S0.T6.33.36.1"></td>
<td class="ltx_td" id="S0.T6.33.36.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T6.33.36.3"><span class="ltx_text" id="S0.T6.33.36.3.1" style="font-size:80%;">question-answer pairs</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.17.17">
<td class="ltx_td ltx_align_left" id="S0.T6.17.17.2">
<span class="ltx_text" id="S0.T6.17.17.2.1" style="font-size:80%;">TACO  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.17.17.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">rongao_li_taco_2023</span><span class="ltx_text" id="S0.T6.17.17.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.17.17.1">
<span class="ltx_text" id="S0.T6.17.17.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.17.17.1.m1.1"><semantics id="S0.T6.17.17.1.m1.1a"><mo id="S0.T6.17.17.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.17.17.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.17.17.1.m1.1b"><ci id="S0.T6.17.17.1.m1.1.1.cmml" xref="S0.T6.17.17.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.17.17.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.17.17.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.17.17.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.17.17.3"><span class="ltx_text" id="S0.T6.17.17.3.1" style="font-size:80%;">1,539,152 on 26,433 distinct tasks</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.18.18">
<td class="ltx_td ltx_align_left" id="S0.T6.18.18.2">
<span class="ltx_text" id="S0.T6.18.18.2.1" style="font-size:80%;">Turbulence  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.18.18.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">shahin_honarvar_turbulence_2023</span><span class="ltx_text" id="S0.T6.18.18.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.18.18.1">
<span class="ltx_text" id="S0.T6.18.18.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.18.18.1.m1.1"><semantics id="S0.T6.18.18.1.m1.1a"><mo id="S0.T6.18.18.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.18.18.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.18.18.1.m1.1b"><ci id="S0.T6.18.18.1.m1.1.1.cmml" xref="S0.T6.18.18.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.18.18.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.18.18.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.18.18.1.2" style="font-size:80%;"> Python</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.18.18.3"><span class="ltx_text" id="S0.T6.18.18.3.1" style="font-size:80%;">60 (with 420 total test cases)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.19.19">
<td class="ltx_td ltx_align_left" id="S0.T6.19.19.2">
<span class="ltx_text" id="S0.T6.19.19.2.1" style="font-size:80%;">Aider </span><span class="ltx_note ltx_role_footnote" id="footnote4"><sup class="ltx_note_mark">4</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">4</sup><span class="ltx_tag ltx_tag_note">4</span><a class="ltx_ref ltx_href" href="https://github.com/Aider-AI/aider/blob/main/benchmark/README.md" title="">https://github.com/Aider-AI/aider/blob/main/benchmark/README.md</a></span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.19.19.1">
<span class="ltx_text" id="S0.T6.19.19.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.19.19.1.m1.1"><semantics id="S0.T6.19.19.1.m1.1a"><mo id="S0.T6.19.19.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.19.19.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.19.19.1.m1.1b"><ci id="S0.T6.19.19.1.m1.1.1.cmml" xref="S0.T6.19.19.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.19.19.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.19.19.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.19.19.1.2" style="font-size:80%;"> {C++, GO, Java, JS, Python, Rust}</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.19.19.3"><span class="ltx_text" id="S0.T6.19.19.3.1" style="font-size:80%;">225 problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.20.20">
<td class="ltx_td ltx_align_left" id="S0.T6.20.20.2">
<span class="ltx_text" id="S0.T6.20.20.2.1" style="font-size:80%;">NL2ML-lib </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.20.20.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">shin_good_2024</span><span class="ltx_text" id="S0.T6.20.20.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.20.20.1">
<span class="ltx_text" id="S0.T6.20.20.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.20.20.1.m1.1"><semantics id="S0.T6.20.20.1.m1.1a"><mo id="S0.T6.20.20.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.20.20.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.20.20.1.m1.1b"><ci id="S0.T6.20.20.1.m1.1.1.cmml" xref="S0.T6.20.20.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.20.20.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.20.20.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.20.20.1.2" style="font-size:80%;"> Python (ML libraries)</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.20.20.3"><span class="ltx_text" id="S0.T6.20.20.3.1" style="font-size:80%;">11,000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.21.21">
<td class="ltx_td ltx_align_left" id="S0.T6.21.21.2">
<span class="ltx_text" id="S0.T6.21.21.2.1" style="font-size:80%;">RMCBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.21.21.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">chen_rmcbench_2024</span><span class="ltx_text" id="S0.T6.21.21.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.21.21.1">
<span class="ltx_text" id="S0.T6.21.21.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.21.21.1.m1.1"><semantics id="S0.T6.21.21.1.m1.1a"><mo id="S0.T6.21.21.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.21.21.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.21.21.1.m1.1b"><ci id="S0.T6.21.21.1.m1.1.1.cmml" xref="S0.T6.21.21.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.21.21.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.21.21.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.21.21.1.2" style="font-size:80%;"> 9 Languages</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.21.21.3"><span class="ltx_text" id="S0.T6.21.21.3.1" style="font-size:80%;">473 malicious prompts</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.22.22">
<td class="ltx_td ltx_align_left" id="S0.T6.22.22.2">
<span class="ltx_text" id="S0.T6.22.22.2.1" style="font-size:80%;">Evil </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.22.22.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">liguori_evil_2021</span><span class="ltx_text" id="S0.T6.22.22.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.22.22.1">
<span class="ltx_text" id="S0.T6.22.22.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.22.22.1.m1.1"><semantics id="S0.T6.22.22.1.m1.1a"><mo id="S0.T6.22.22.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.22.22.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.22.22.1.m1.1b"><ci id="S0.T6.22.22.1.m1.1.1.cmml" xref="S0.T6.22.22.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.22.22.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.22.22.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.22.22.1.2" style="font-size:80%;"> {Python, IA_32}</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.22.22.3"><span class="ltx_text" id="S0.T6.22.22.3.1" style="font-size:80%;">19255</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.23.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T6.23.23.2" rowspan="2"><span class="ltx_text" id="S0.T6.23.23.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_align_left" id="S0.T6.23.23.2.1.1">
<span class="ltx_p" id="S0.T6.23.23.2.1.1.1">Text2Text</span>
<span class="ltx_p" id="S0.T6.23.23.2.1.1.2">(about code)</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T6.23.23.3">
<span class="ltx_text" id="S0.T6.23.23.3.1" style="font-size:80%;">InfiCoder-Eval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.23.23.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">InfiCoder-Eval-2023</span><span class="ltx_text" id="S0.T6.23.23.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T6.23.23.1">
<span class="ltx_text" id="S0.T6.23.23.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.23.23.1.m1.1"><semantics id="S0.T6.23.23.1.m1.1a"><mo id="S0.T6.23.23.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.23.23.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.23.23.1.m1.1b"><ci id="S0.T6.23.23.1.m1.1.1.cmml" xref="S0.T6.23.23.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.23.23.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.23.23.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.23.23.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T6.23.23.4"><span class="ltx_text" id="S0.T6.23.23.4.1" style="font-size:80%;">270</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.24.24">
<td class="ltx_td ltx_align_left" id="S0.T6.24.24.2">
<span class="ltx_text" id="S0.T6.24.24.2.1" style="font-size:80%;">BRIGHT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.24.24.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">hongjin_su_bright_2024</span><span class="ltx_text" id="S0.T6.24.24.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.24.24.1">
<span class="ltx_text" id="S0.T6.24.24.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.24.24.1.m1.1"><semantics id="S0.T6.24.24.1.m1.1a"><mo id="S0.T6.24.24.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.24.24.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.24.24.1.m1.1b"><ci id="S0.T6.24.24.1.m1.1.1.cmml" xref="S0.T6.24.24.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.24.24.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.24.24.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.24.24.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.24.24.3"><span class="ltx_text" id="S0.T6.24.24.3.1" style="font-size:80%;">1,398</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.25.25">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T6.25.25.2" rowspan="9"><span class="ltx_text" id="S0.T6.25.25.2.1" style="font-size:80%;">Code2Text</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T6.25.25.3">
<span class="ltx_text" id="S0.T6.25.25.3.1" style="font-size:80%;">DeepCom </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.25.25.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">DeepCom-2018</span><span class="ltx_text" id="S0.T6.25.25.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T6.25.25.1">
<span class="ltx_text" id="S0.T6.25.25.1.1" style="font-size:80%;">Java </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.25.25.1.m1.1"><semantics id="S0.T6.25.25.1.m1.1a"><mo id="S0.T6.25.25.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.25.25.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.25.25.1.m1.1b"><ci id="S0.T6.25.25.1.m1.1.1.cmml" xref="S0.T6.25.25.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.25.25.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.25.25.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.25.25.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T6.25.25.4"><span class="ltx_text" id="S0.T6.25.25.4.1" style="font-size:80%;">588K</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.26.26">
<td class="ltx_td ltx_align_left" id="S0.T6.26.26.2">
<span class="ltx_text" id="S0.T6.26.26.2.1" style="font-size:80%;">Hybrid-DeepCom </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.26.26.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">hu_deep_2020</span><span class="ltx_text" id="S0.T6.26.26.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.26.26.1">
<span class="ltx_text" id="S0.T6.26.26.1.1" style="font-size:80%;">Java </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.26.26.1.m1.1"><semantics id="S0.T6.26.26.1.m1.1a"><mo id="S0.T6.26.26.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.26.26.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.26.26.1.m1.1b"><ci id="S0.T6.26.26.1.m1.1.1.cmml" xref="S0.T6.26.26.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.26.26.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.26.26.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.26.26.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.26.26.3"><span class="ltx_text" id="S0.T6.26.26.3.1" style="font-size:80%;">466k</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.27.27">
<td class="ltx_td ltx_align_left" id="S0.T6.27.27.2">
<span class="ltx_text" id="S0.T6.27.27.2.1" style="font-size:80%;">BinSum </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.27.27.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">BinSum-2023</span><span class="ltx_text" id="S0.T6.27.27.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.27.27.1">
<span class="ltx_text" id="S0.T6.27.27.1.1" style="font-size:80%;">Binary functions </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.27.27.1.m1.1"><semantics id="S0.T6.27.27.1.m1.1a"><mo id="S0.T6.27.27.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.27.27.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.27.27.1.m1.1b"><ci id="S0.T6.27.27.1.m1.1.1.cmml" xref="S0.T6.27.27.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.27.27.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.27.27.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.27.27.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.27.27.3"><span class="ltx_text" id="S0.T6.27.27.3.1" style="font-size:80%;">557K</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.28.28">
<td class="ltx_td ltx_align_left" id="S0.T6.28.28.2">
<span class="ltx_text" id="S0.T6.28.28.2.1" style="font-size:80%;">Code Attention  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.28.28.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">miltiadis_allamanis_convolutional_2016</span><span class="ltx_text" id="S0.T6.28.28.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.28.28.1">
<span class="ltx_text" id="S0.T6.28.28.1.1" style="font-size:80%;">Java </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.28.28.1.m1.1"><semantics id="S0.T6.28.28.1.m1.1a"><mo id="S0.T6.28.28.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.28.28.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.28.28.1.m1.1b"><ci id="S0.T6.28.28.1.m1.1.1.cmml" xref="S0.T6.28.28.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.28.28.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.28.28.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.28.28.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.28.28.3"><span class="ltx_text" id="S0.T6.28.28.3.1" style="font-size:80%;">11 projects</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.29.29">
<td class="ltx_td ltx_align_left" id="S0.T6.29.29.2">
<span class="ltx_text" id="S0.T6.29.29.2.1" style="font-size:80%;">Funcom  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.29.29.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">alexander_leclair_neural_2019</span><span class="ltx_text" id="S0.T6.29.29.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.29.29.1">
<span class="ltx_text" id="S0.T6.29.29.1.1" style="font-size:80%;">Java </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.29.29.1.m1.1"><semantics id="S0.T6.29.29.1.m1.1a"><mo id="S0.T6.29.29.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.29.29.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.29.29.1.m1.1b"><ci id="S0.T6.29.29.1.m1.1.1.cmml" xref="S0.T6.29.29.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.29.29.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.29.29.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.29.29.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.29.29.3"><span class="ltx_text" id="S0.T6.29.29.3.1" style="font-size:80%;">2.1M problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.30.30">
<td class="ltx_td ltx_align_left" id="S0.T6.30.30.2">
<span class="ltx_text" id="S0.T6.30.30.2.1" style="font-size:80%;">CodeSum </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.30.30.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">hu_summarizing_nodate</span><span class="ltx_text" id="S0.T6.30.30.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.30.30.1">
<span class="ltx_text" id="S0.T6.30.30.1.1" style="font-size:80%;">Java </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.30.30.1.m1.1"><semantics id="S0.T6.30.30.1.m1.1a"><mo id="S0.T6.30.30.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.30.30.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.30.30.1.m1.1b"><ci id="S0.T6.30.30.1.m1.1.1.cmml" xref="S0.T6.30.30.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.30.30.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.30.30.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.30.30.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.30.30.3"><span class="ltx_text" id="S0.T6.30.30.3.1" style="font-size:80%;">410,630</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.31.31">
<td class="ltx_td ltx_align_left" id="S0.T6.31.31.2">
<span class="ltx_text" id="S0.T6.31.31.2.1" style="font-size:80%;">CoDesc </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.31.31.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">hasan_codesc_2021</span><span class="ltx_text" id="S0.T6.31.31.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.31.31.1">
<span class="ltx_text" id="S0.T6.31.31.1.1" style="font-size:80%;">Java </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.31.31.1.m1.1"><semantics id="S0.T6.31.31.1.m1.1a"><mo id="S0.T6.31.31.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.31.31.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.31.31.1.m1.1b"><ci id="S0.T6.31.31.1.m1.1.1.cmml" xref="S0.T6.31.31.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.31.31.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.31.31.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.31.31.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.31.31.3"><span class="ltx_text" id="S0.T6.31.31.3.1" style="font-size:80%;">4.21M datapoints</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.32.32">
<td class="ltx_td ltx_align_left" id="S0.T6.32.32.2">
<span class="ltx_text" id="S0.T6.32.32.2.1" style="font-size:80%;">Parallel </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.32.32.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">barone_parallel_nodate</span><span class="ltx_text" id="S0.T6.32.32.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T6.32.32.1">
<span class="ltx_text" id="S0.T6.32.32.1.1" style="font-size:80%;">Python </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.32.32.1.m1.1"><semantics id="S0.T6.32.32.1.m1.1a"><mo id="S0.T6.32.32.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.32.32.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.32.32.1.m1.1b"><ci id="S0.T6.32.32.1.m1.1.1.cmml" xref="S0.T6.32.32.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.32.32.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.32.32.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.32.32.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T6.32.32.3"><span class="ltx_text" id="S0.T6.32.32.3.1" style="font-size:80%;">150k function/doc pais</span></td>
</tr>
<tr class="ltx_tr" id="S0.T6.33.33">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T6.33.33.2">
<span class="ltx_text" id="S0.T6.33.33.2.1" style="font-size:80%;">CoDocBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T6.33.33.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">pai2025codocbenchdatasetcodedocumentationalignment</span><span class="ltx_text" id="S0.T6.33.33.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T6.33.33.1">
<span class="ltx_text" id="S0.T6.33.33.1.1" style="font-size:80%;">Python </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T6.33.33.1.m1.1"><semantics id="S0.T6.33.33.1.m1.1a"><mo id="S0.T6.33.33.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T6.33.33.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T6.33.33.1.m1.1b"><ci id="S0.T6.33.33.1.m1.1.1.cmml" xref="S0.T6.33.33.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T6.33.33.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T6.33.33.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T6.33.33.1.2" style="font-size:80%;"> English</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T6.33.33.3"><span class="ltx_text" id="S0.T6.33.33.3.1" style="font-size:80%;">4573 code/doc pairs</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive overview of benchmarks used for evaluating natural language processing (NLP) capabilities within the context of software engineering.  It categorizes benchmarks by task type (Text2Code, Text2Text, Code2Text), listing the benchmark name, supported languages, and the number of problems or samples included in each benchmark. This detailed breakdown helps researchers select appropriate benchmarks based on their specific needs and research focus.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Overview of Natural Language Benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T7.12">
<tr class="ltx_tr" id="S0.T7.12.13">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T7.12.13.1"><span class="ltx_text ltx_font_bold" id="S0.T7.12.13.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T7.12.13.2"><span class="ltx_text ltx_font_bold" id="S0.T7.12.13.2.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T7.12.13.3"><span class="ltx_text ltx_font_bold" id="S0.T7.12.13.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T7.12.13.4"><span class="ltx_text ltx_font_bold" id="S0.T7.12.13.4.1" style="font-size:80%;">No. of Problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T7.1.1.2" rowspan="12"><span class="ltx_text" id="S0.T7.1.1.2.1" style="font-size:80%;">Text2Code</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T7.1.1.3">
<span class="ltx_text" id="S0.T7.1.1.3.1" style="font-size:80%;">BIRD  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.1.1.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">jinyang_li_can_2023</span><span class="ltx_text" id="S0.T7.1.1.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T7.1.1.1">
<span class="ltx_text" id="S0.T7.1.1.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.1.1.1.m1.1"><semantics id="S0.T7.1.1.1.m1.1a"><mo id="S0.T7.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.1.1.1.m1.1b"><ci id="S0.T7.1.1.1.m1.1.1.cmml" xref="S0.T7.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.1.1.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T7.1.1.4"><span class="ltx_text" id="S0.T7.1.1.4.1" style="font-size:80%;">12,751</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.2.2">
<td class="ltx_td ltx_align_left" id="S0.T7.2.2.2">
<span class="ltx_text" id="S0.T7.2.2.2.1" style="font-size:80%;">KaggleDBQA  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.2.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">chia-hsuan_lee_kaggledbqa_2021</span><span class="ltx_text" id="S0.T7.2.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.2.2.1">
<span class="ltx_text" id="S0.T7.2.2.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.2.2.1.m1.1"><semantics id="S0.T7.2.2.1.m1.1a"><mo id="S0.T7.2.2.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.2.2.1.m1.1b"><ci id="S0.T7.2.2.1.m1.1.1.cmml" xref="S0.T7.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.2.2.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.2.2.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.2.2.3"><span class="ltx_text" id="S0.T7.2.2.3.1" style="font-size:80%;">272, paired with golden solutions</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.3.3">
<td class="ltx_td ltx_align_left" id="S0.T7.3.3.2">
<span class="ltx_text" id="S0.T7.3.3.2.1" style="font-size:80%;">StacQc  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.3.3.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhiliang_yao_staqc_2018</span><span class="ltx_text" id="S0.T7.3.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.3.3.1">
<span class="ltx_text" id="S0.T7.3.3.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.3.3.1.m1.1"><semantics id="S0.T7.3.3.1.m1.1a"><mo id="S0.T7.3.3.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.3.3.1.m1.1b"><ci id="S0.T7.3.3.1.m1.1.1.cmml" xref="S0.T7.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.3.3.1.2" style="font-size:80%;"> {Python/SQL}</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.3.3.3"><span class="ltx_text" id="S0.T7.3.3.3.1" style="font-size:80%;">{147,546 / 119,519}</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.12.14">
<td class="ltx_td" id="S0.T7.12.14.1"></td>
<td class="ltx_td" id="S0.T7.12.14.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T7.12.14.3"><span class="ltx_text" id="S0.T7.12.14.3.1" style="font-size:80%;">question-answer pairs</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.4.4">
<td class="ltx_td ltx_align_left" id="S0.T7.4.4.2">
<span class="ltx_text" id="S0.T7.4.4.2.1" style="font-size:80%;">Spider(V2</span><span class="ltx_note ltx_role_footnote" id="footnote5"><sup class="ltx_note_mark">5</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">5</sup><span class="ltx_tag ltx_tag_note">5</span>see <a class="ltx_ref ltx_refmacro_autoref" href="https://arxiv.org/html/2503.05860v1#S0.T12" title="TABLE XII"><span class="ltx_text ltx_ref_tag">Table XII</span></a></span></span></span><span class="ltx_text" id="S0.T7.4.4.2.2" style="font-size:80%;">) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.4.4.2.3.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">lei2024spider20evaluatinglanguage</span><span class="ltx_text" id="S0.T7.4.4.2.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.4.4.1">
<span class="ltx_text" id="S0.T7.4.4.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.4.4.1.m1.1"><semantics id="S0.T7.4.4.1.m1.1a"><mo id="S0.T7.4.4.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.4.4.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.4.4.1.m1.1b"><ci id="S0.T7.4.4.1.m1.1.1.cmml" xref="S0.T7.4.4.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.4.4.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.4.4.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.4.4.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.4.4.3"><span class="ltx_text" id="S0.T7.4.4.3.1" style="font-size:80%;">632 queries</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.5.5">
<td class="ltx_td ltx_align_left" id="S0.T7.5.5.2">
<span class="ltx_text" id="S0.T7.5.5.2.1" style="font-size:80%;">Spider-Syn </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.5.5.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">gan_towards_2021</span><span class="ltx_text" id="S0.T7.5.5.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.5.5.1">
<span class="ltx_text" id="S0.T7.5.5.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.5.5.1.m1.1"><semantics id="S0.T7.5.5.1.m1.1a"><mo id="S0.T7.5.5.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.5.5.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.5.5.1.m1.1b"><ci id="S0.T7.5.5.1.m1.1.1.cmml" xref="S0.T7.5.5.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.5.5.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.5.5.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.5.5.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.5.5.3"><span class="ltx_text" id="S0.T7.5.5.3.1" style="font-size:80%;">(7000 / 1034)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.6.6">
<td class="ltx_td ltx_align_left" id="S0.T7.6.6.2">
<span class="ltx_text" id="S0.T7.6.6.2.1" style="font-size:80%;">Spider-Real </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.6.6.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">deng_structure-grounded_2021</span><span class="ltx_text" id="S0.T7.6.6.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.6.6.1">
<span class="ltx_text" id="S0.T7.6.6.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.6.6.1.m1.1"><semantics id="S0.T7.6.6.1.m1.1a"><mo id="S0.T7.6.6.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.6.6.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.6.6.1.m1.1b"><ci id="S0.T7.6.6.1.m1.1.1.cmml" xref="S0.T7.6.6.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.6.6.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.6.6.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.6.6.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.6.6.3"><span class="ltx_text" id="S0.T7.6.6.3.1" style="font-size:80%;">508</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.7.7">
<td class="ltx_td ltx_align_left" id="S0.T7.7.7.2">
<span class="ltx_text" id="S0.T7.7.7.2.1" style="font-size:80%;">Spider-DK </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.7.7.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">gan_exploring_2021</span><span class="ltx_text" id="S0.T7.7.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.7.7.1">
<span class="ltx_text" id="S0.T7.7.7.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.7.7.1.m1.1"><semantics id="S0.T7.7.7.1.m1.1a"><mo id="S0.T7.7.7.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.7.7.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.7.7.1.m1.1b"><ci id="S0.T7.7.7.1.m1.1.1.cmml" xref="S0.T7.7.7.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.7.7.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.7.7.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.7.7.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.7.7.3"><span class="ltx_text" id="S0.T7.7.7.3.1" style="font-size:80%;">535 pairs</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.8.8">
<td class="ltx_td ltx_align_left" id="S0.T7.8.8.2">
<span class="ltx_text" id="S0.T7.8.8.2.1" style="font-size:80%;">Spider-CN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.8.8.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">min_pilot_2019</span><span class="ltx_text" id="S0.T7.8.8.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.8.8.1">
<span class="ltx_text" id="S0.T7.8.8.1.1" style="font-size:80%;">Chinese </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.8.8.1.m1.1"><semantics id="S0.T7.8.8.1.m1.1a"><mo id="S0.T7.8.8.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.8.8.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.8.8.1.m1.1b"><ci id="S0.T7.8.8.1.m1.1.1.cmml" xref="S0.T7.8.8.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.8.8.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.8.8.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.8.8.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.8.8.3"><span class="ltx_text" id="S0.T7.8.8.3.1" style="font-size:80%;">9691 queries</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.9.9">
<td class="ltx_td ltx_align_left" id="S0.T7.9.9.2">
<span class="ltx_text" id="S0.T7.9.9.2.1" style="font-size:80%;">SParC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.9.9.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">yu_sparc_2019</span><span class="ltx_text" id="S0.T7.9.9.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.9.9.1">
<span class="ltx_text" id="S0.T7.9.9.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.9.9.1.m1.1"><semantics id="S0.T7.9.9.1.m1.1a"><mo id="S0.T7.9.9.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.9.9.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.9.9.1.m1.1b"><ci id="S0.T7.9.9.1.m1.1.1.cmml" xref="S0.T7.9.9.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.9.9.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.9.9.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.9.9.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.9.9.3"><span class="ltx_text" id="S0.T7.9.9.3.1" style="font-size:80%;">4,298 question sequences</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.10.10">
<td class="ltx_td ltx_align_left" id="S0.T7.10.10.2">
<span class="ltx_text" id="S0.T7.10.10.2.1" style="font-size:80%;">Lyra </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.10.10.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">liang_lyra_2022</span><span class="ltx_text" id="S0.T7.10.10.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.10.10.1">
<span class="ltx_text" id="S0.T7.10.10.1.1" style="font-size:80%;">{English, Chinese} </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.10.10.1.m1.1"><semantics id="S0.T7.10.10.1.m1.1a"><mo id="S0.T7.10.10.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.10.10.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.10.10.1.m1.1b"><ci id="S0.T7.10.10.1.m1.1.1.cmml" xref="S0.T7.10.10.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.10.10.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.10.10.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.10.10.1.2" style="font-size:80%;"> {python, SQL}</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.10.10.3"><span class="ltx_text" id="S0.T7.10.10.3.1" style="font-size:80%;">2000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.11.11">
<td class="ltx_td ltx_align_left" id="S0.T7.11.11.2">
<span class="ltx_text" id="S0.T7.11.11.2.1" style="font-size:80%;">DuSQL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.11.11.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">wang_dusql_2020</span><span class="ltx_text" id="S0.T7.11.11.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T7.11.11.1">
<span class="ltx_text" id="S0.T7.11.11.1.1" style="font-size:80%;">Chinese </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.11.11.1.m1.1"><semantics id="S0.T7.11.11.1.m1.1a"><mo id="S0.T7.11.11.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.11.11.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.11.11.1.m1.1b"><ci id="S0.T7.11.11.1.m1.1.1.cmml" xref="S0.T7.11.11.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.11.11.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.11.11.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.11.11.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center" id="S0.T7.11.11.3"><span class="ltx_text" id="S0.T7.11.11.3.1" style="font-size:80%;">23,797 question/SQL pairs</span></td>
</tr>
<tr class="ltx_tr" id="S0.T7.12.12">
<td class="ltx_td ltx_border_bb" id="S0.T7.12.12.2"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T7.12.12.3">
<span class="ltx_text" id="S0.T7.12.12.3.1" style="font-size:80%;">CoSQL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T7.12.12.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">yu_cosql_2019</span><span class="ltx_text" id="S0.T7.12.12.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T7.12.12.1">
<span class="ltx_text" id="S0.T7.12.12.1.1" style="font-size:80%;">English </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T7.12.12.1.m1.1"><semantics id="S0.T7.12.12.1.m1.1a"><mo id="S0.T7.12.12.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T7.12.12.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T7.12.12.1.m1.1b"><ci id="S0.T7.12.12.1.m1.1.1.cmml" xref="S0.T7.12.12.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T7.12.12.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T7.12.12.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T7.12.12.1.2" style="font-size:80%;"> SQL</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T7.12.12.4"><span class="ltx_text" id="S0.T7.12.12.4.1" style="font-size:80%;">3,007 Question Sequencess</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a curated list of benchmarks specifically designed for evaluating the performance of AI models on SQL-related tasks.  It includes benchmarks categorized by the type of task (such as text-to-SQL code generation) and provides details on the programming language(s) involved and the number of problems or queries in each benchmark.
> <details>
> <summary>read the caption</summary>
> TABLE VII: Overview of SQL-related Benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T8.1">
<tr class="ltx_tr" id="S0.T8.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T8.1.2.1"><span class="ltx_text ltx_font_bold" id="S0.T8.1.2.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T8.1.2.2"><span class="ltx_text ltx_font_bold" id="S0.T8.1.2.2.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T8.1.2.3"><span class="ltx_text ltx_font_bold" id="S0.T8.1.2.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T8.1.2.4"><span class="ltx_text ltx_font_bold" id="S0.T8.1.2.4.1" style="font-size:80%;">No. of Samples</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.3.1" rowspan="9"><span class="ltx_text" id="S0.T8.1.3.1.1" style="font-size:80%;">Programming Languages</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.3.2">
<span class="ltx_text" id="S0.T8.1.3.2.1" style="font-size:80%;">CodeTrans </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.3.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeXGLUE-2021</span><span class="ltx_text" id="S0.T8.1.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.3.3"><span class="ltx_text" id="S0.T8.1.3.3.1" style="font-size:80%;">C#, Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T8.1.3.4"><span class="ltx_text" id="S0.T8.1.3.4.1" style="font-size:80%;">11,800</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.4">
<td class="ltx_td ltx_align_left" id="S0.T8.1.4.1">
<span class="ltx_text" id="S0.T8.1.4.1.1" style="font-size:80%;">TransCoder-ST </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">TransCoderST-2022</span><span class="ltx_text" id="S0.T8.1.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.4.2"><span class="ltx_text" id="S0.T8.1.4.2.1" style="font-size:80%;">C++, Java, Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.4.3"><span class="ltx_text" id="S0.T8.1.4.3.1" style="font-size:80%;">437,030</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.5">
<td class="ltx_td ltx_align_left" id="S0.T8.1.5.1">
<span class="ltx_text" id="S0.T8.1.5.1.1" style="font-size:80%;">CoST </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CoST-2022</span><span class="ltx_text" id="S0.T8.1.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.5.2"><span class="ltx_text" id="S0.T8.1.5.2.1" style="font-size:80%;">7 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.5.3"><span class="ltx_text" id="S0.T8.1.5.3.1" style="font-size:80%;">16,738</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.6">
<td class="ltx_td ltx_align_left" id="S0.T8.1.6.1">
<span class="ltx_text" id="S0.T8.1.6.1.1" style="font-size:80%;">AVATAR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">AVATAR-2023</span><span class="ltx_text" id="S0.T8.1.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.6.2"><span class="ltx_text" id="S0.T8.1.6.2.1" style="font-size:80%;">Java, Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.6.3"><span class="ltx_text" id="S0.T8.1.6.3.1" style="font-size:80%;">7,133 / 476 / 1,906</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.7">
<td class="ltx_td ltx_align_left" id="S0.T8.1.7.1">
<span class="ltx_text" id="S0.T8.1.7.1.1" style="font-size:80%;">Multilingual-Trans </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeTransOcean-MultilingualTrans-NicheTrans-LLMTrans-DLTrans-2023</span><span class="ltx_text" id="S0.T8.1.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.7.2"><span class="ltx_text" id="S0.T8.1.7.2.1" style="font-size:80%;">8 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.7.3"><span class="ltx_text" id="S0.T8.1.7.3.1" style="font-size:80%;">30,419 total</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.8">
<td class="ltx_td ltx_align_left" id="S0.T8.1.8.1">
<span class="ltx_text" id="S0.T8.1.8.1.1" style="font-size:80%;">NicheTrans </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeTransOcean-MultilingualTrans-NicheTrans-LLMTrans-DLTrans-2023</span><span class="ltx_text" id="S0.T8.1.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.8.2"><span class="ltx_text" id="S0.T8.1.8.2.1" style="font-size:80%;">Various niche languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.8.3"><span class="ltx_text" id="S0.T8.1.8.3.1" style="font-size:80%;">236,468 total</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.9">
<td class="ltx_td ltx_align_left" id="S0.T8.1.9.1">
<span class="ltx_text" id="S0.T8.1.9.1.1" style="font-size:80%;">LLMTrans </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeTransOcean-MultilingualTrans-NicheTrans-LLMTrans-DLTrans-2023</span><span class="ltx_text" id="S0.T8.1.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.9.2"><span class="ltx_text" id="S0.T8.1.9.2.1" style="font-size:80%;">8 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.9.3"><span class="ltx_text" id="S0.T8.1.9.3.1" style="font-size:80%;">350</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.10">
<td class="ltx_td ltx_align_left" id="S0.T8.1.10.1">
<span class="ltx_text" id="S0.T8.1.10.1.1" style="font-size:80%;">G-TransEva </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.10.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">jiao_evaluation_2023</span><span class="ltx_text" id="S0.T8.1.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.10.2"><span class="ltx_text" id="S0.T8.1.10.2.1" style="font-size:80%;">5 programming languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.10.3"><span class="ltx_text" id="S0.T8.1.10.3.1" style="font-size:80%;">400 total</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.11">
<td class="ltx_td ltx_align_left" id="S0.T8.1.11.1">
<span class="ltx_text" id="S0.T8.1.11.1.1" style="font-size:80%;">CODEDITOR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang_multilingual_2023</span><span class="ltx_text" id="S0.T8.1.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.11.2"><span class="ltx_text" id="S0.T8.1.11.2.1" style="font-size:80%;">C# &amp; Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.11.3"><span class="ltx_text" id="S0.T8.1.11.3.1" style="font-size:80%;">6613</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.12.1"><span class="ltx_text" id="S0.T8.1.12.1.1" style="font-size:80%;">Libraries</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.12.2">
<span class="ltx_text" id="S0.T8.1.12.2.1" style="font-size:80%;">DLTrans </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.12.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeTransOcean-MultilingualTrans-NicheTrans-LLMTrans-DLTrans-2023</span><span class="ltx_text" id="S0.T8.1.12.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.12.3"><span class="ltx_text" id="S0.T8.1.12.3.1" style="font-size:80%;">PyTorch, TensorFlow,</span></td>
<td class="ltx_td ltx_border_t" id="S0.T8.1.12.4"></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.13">
<td class="ltx_td" id="S0.T8.1.13.1"></td>
<td class="ltx_td" id="S0.T8.1.13.2"></td>
<td class="ltx_td ltx_align_left" id="S0.T8.1.13.3"><span class="ltx_text" id="S0.T8.1.13.3.1" style="font-size:80%;">MXNet, Paddle</span></td>
<td class="ltx_td ltx_align_center" id="S0.T8.1.13.4"><span class="ltx_text" id="S0.T8.1.13.4.1" style="font-size:80%;">408 total</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.1.2"><span class="ltx_text" id="S0.T8.1.1.2.1" style="font-size:80%;">Intermediate Representation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.1.3">
<span class="ltx_text" id="S0.T8.1.1.3.1" style="font-size:80%;">SLTrans </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.1.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">paul_ircoder_2024</span><span class="ltx_text" id="S0.T8.1.1.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.1.1">
<span class="ltx_text" id="S0.T8.1.1.1.1" style="font-size:80%;">14 Languages </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T8.1.1.1.m1.1"><semantics id="S0.T8.1.1.1.m1.1a"><mo id="S0.T8.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T8.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T8.1.1.1.m1.1b"><ci id="S0.T8.1.1.1.m1.1.1.cmml" xref="S0.T8.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T8.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T8.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T8.1.1.1.2" style="font-size:80%;"> LLVM-IR</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T8.1.1.4"><span class="ltx_text" id="S0.T8.1.1.4.1" style="font-size:80%;">4M</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T8.1.14.1" rowspan="2"><span class="ltx_text" id="S0.T8.1.14.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_align_left" id="S0.T8.1.14.1.1.1">
<span class="ltx_p" id="S0.T8.1.14.1.1.1.1">Language Conversion</span>
<span class="ltx_p" id="S0.T8.1.14.1.1.1.2">Frameworks</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.14.2">
<span class="ltx_text" id="S0.T8.1.14.2.1" style="font-size:80%;">MultiPL-E </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.14.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MultiPL-E-2022</span><span class="ltx_text" id="S0.T8.1.14.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T8.1.14.3"><span class="ltx_text" id="S0.T8.1.14.3.1" style="font-size:80%;">19 programming languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T8.1.14.4"><span class="ltx_text" id="S0.T8.1.14.4.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S0.T8.1.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T8.1.15.1">
<span class="ltx_text" id="S0.T8.1.15.1.1" style="font-size:80%;">MultiEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T8.1.15.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MultiEval-HumanEval-MBXP-MathQA-X-2022</span><span class="ltx_text" id="S0.T8.1.15.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T8.1.15.2"><span class="ltx_text" id="S0.T8.1.15.2.1" style="font-size:80%;">13 programming languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T8.1.15.3"><span class="ltx_text" id="S0.T8.1.15.3.1" style="font-size:80%;">-</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive overview of existing benchmarks for evaluating programming language translation models.  It categorizes benchmarks by the type of programming languages involved (e.g., specific languages or multiple languages), intermediate representations used, and associated frameworks.  The 'No. of Samples' column indicates the number of training, development, and test samples available in each benchmark dataset, clearly highlighting the scale and scope of each benchmark.  This detailed breakdown helps researchers choose the most appropriate benchmark based on the languages and methods they are working with.
> <details>
> <summary>read the caption</summary>
> TABLE VIII: Overview of Programming Language Translation Benchmarks (Note: X/Y/Z denotes Train/Dev/Test).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T9.3">
<tr class="ltx_tr" id="S0.T9.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T9.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T9.3.1.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T9.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T9.3.1.2.1" style="font-size:80%;">Benchmark</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T9.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T9.3.1.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T9.3.1.4"><span class="ltx_text ltx_font_bold" id="S0.T9.3.1.4.1" style="font-size:80%;">No. of Problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.2.1" rowspan="8"><span class="ltx_text" id="S0.T9.3.2.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_align_left" id="S0.T9.3.2.1.1.1">
<span class="ltx_p" id="S0.T9.3.2.1.1.1.1">Software Development</span>
<span class="ltx_p" id="S0.T9.3.2.1.1.1.2">&amp; Agent Benchmarks</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.2.2">
<span class="ltx_text" id="S0.T9.3.2.2.1" style="font-size:80%;">DevBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">devbench-2024</span><span class="ltx_text" id="S0.T9.3.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.2.3"><span class="ltx_text" id="S0.T9.3.2.3.1" style="font-size:80%;">Python, C/C++, Java, JavaScript</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T9.3.2.4"><span class="ltx_text" id="S0.T9.3.2.4.1" style="font-size:80%;">22 repositories</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.3">
<td class="ltx_td ltx_align_left" id="S0.T9.3.3.1">
<span class="ltx_text" id="S0.T9.3.3.1.1" style="font-size:80%;">DevEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">DevEval-2024</span><span class="ltx_text" id="S0.T9.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.3.2"><span class="ltx_text" id="S0.T9.3.3.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.3.3"><span class="ltx_text" id="S0.T9.3.3.3.1" style="font-size:80%;">1,874</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.4">
<td class="ltx_td ltx_align_left" id="S0.T9.3.4.1">
<span class="ltx_text" id="S0.T9.3.4.1.1" style="font-size:80%;">CoderUJB </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CoderUJB-2024</span><span class="ltx_text" id="S0.T9.3.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.4.2"><span class="ltx_text" id="S0.T9.3.4.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.4.3"><span class="ltx_text" id="S0.T9.3.4.3.1" style="font-size:80%;">2,239</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.5">
<td class="ltx_td ltx_align_left" id="S0.T9.3.5.1">
<span class="ltx_text" id="S0.T9.3.5.1.1" style="font-size:80%;">CODAL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">m_weyssow_codeultrafeedback_2024</span><span class="ltx_text" id="S0.T9.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.5.2"><span class="ltx_text" id="S0.T9.3.5.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.5.3"><span class="ltx_text" id="S0.T9.3.5.3.1" style="font-size:80%;">500</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.6">
<td class="ltx_td ltx_align_left" id="S0.T9.3.6.1">
<span class="ltx_text" id="S0.T9.3.6.1.1" style="font-size:80%;">ToolQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhuang_toolqa_2023</span><span class="ltx_text" id="S0.T9.3.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.6.2"><span class="ltx_text" id="S0.T9.3.6.2.1" style="font-size:80%;">Python, Math, English</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.6.3"><span class="ltx_text" id="S0.T9.3.6.3.1" style="font-size:80%;">800(Easy)/730(Hard)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.7">
<td class="ltx_td ltx_align_left" id="S0.T9.3.7.1">
<span class="ltx_text" id="S0.T9.3.7.1.1" style="font-size:80%;">MIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">wang_mint_2024</span><span class="ltx_text" id="S0.T9.3.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.7.2"><span class="ltx_text" id="S0.T9.3.7.2.1" style="font-size:80%;">Python, English</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.7.3"><span class="ltx_text" id="S0.T9.3.7.3.1" style="font-size:80%;">586 Problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.8">
<td class="ltx_td ltx_align_left" id="S0.T9.3.8.1">
<span class="ltx_text" id="S0.T9.3.8.1.1" style="font-size:80%;">SAFIM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">gong_evaluation_2024</span><span class="ltx_text" id="S0.T9.3.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.8.2"><span class="ltx_text" id="S0.T9.3.8.2.1" style="font-size:80%;">Python, Java, C++, C#</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.8.3"><span class="ltx_text" id="S0.T9.3.8.3.1" style="font-size:80%;">17720</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.9">
<td class="ltx_td ltx_align_left" id="S0.T9.3.9.1">
<span class="ltx_text" id="S0.T9.3.9.1.1" style="font-size:80%;">AgentBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">liu_agentbench_2023</span><span class="ltx_text" id="S0.T9.3.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.9.2"><span class="ltx_text" id="S0.T9.3.9.2.1" style="font-size:80%;">N/A</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.9.3"><span class="ltx_text" id="S0.T9.3.9.3.1" style="font-size:80%;">1360 prompts</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.10.1" rowspan="3"><span class="ltx_text" id="S0.T9.3.10.1.1" style="font-size:80%;">Class Level</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.10.2">
<span class="ltx_text" id="S0.T9.3.10.2.1" style="font-size:80%;">ClassEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.10.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">ClassEval-2023</span><span class="ltx_text" id="S0.T9.3.10.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.10.3"><span class="ltx_text" id="S0.T9.3.10.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T9.3.10.4"><span class="ltx_text" id="S0.T9.3.10.4.1" style="font-size:80%;">100</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.11">
<td class="ltx_td ltx_align_left" id="S0.T9.3.11.1">
<span class="ltx_text" id="S0.T9.3.11.1.1" style="font-size:80%;">CONCODE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Concode-2018</span><span class="ltx_text" id="S0.T9.3.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.11.2"><span class="ltx_text" id="S0.T9.3.11.2.1" style="font-size:80%;">English, Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.11.3"><span class="ltx_text" id="S0.T9.3.11.3.1" style="font-size:80%;">104,000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.12">
<td class="ltx_td ltx_align_left" id="S0.T9.3.12.1">
<span class="ltx_text" id="S0.T9.3.12.1.1" style="font-size:80%;">BigCodeBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.12.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">BigCodeBench-2024</span><span class="ltx_text" id="S0.T9.3.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.12.2"><span class="ltx_text" id="S0.T9.3.12.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.12.3"><span class="ltx_text" id="S0.T9.3.12.3.1" style="font-size:80%;">1,140</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.13.1" rowspan="9"><span class="ltx_text" id="S0.T9.3.13.1.1" style="font-size:80%;">Project &amp; Cross-file</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.13.2">
<span class="ltx_text" id="S0.T9.3.13.2.1" style="font-size:80%;">SWE-bench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.13.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">SWE-bench-2023</span><span class="ltx_text" id="S0.T9.3.13.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.13.3"><span class="ltx_text" id="S0.T9.3.13.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T9.3.13.4"><span class="ltx_text" id="S0.T9.3.13.4.1" style="font-size:80%;">19,008 (Train), 225 (Dev),</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.14">
<td class="ltx_td" id="S0.T9.3.14.1"></td>
<td class="ltx_td" id="S0.T9.3.14.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.14.3"><span class="ltx_text" id="S0.T9.3.14.3.1" style="font-size:80%;">2,294 (Test)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.15">
<td class="ltx_td" id="S0.T9.3.15.1"></td>
<td class="ltx_td" id="S0.T9.3.15.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.15.3"><span class="ltx_text" id="S0.T9.3.15.3.1" style="font-size:80%;">144 (Small)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.16">
<td class="ltx_td ltx_align_left" id="S0.T9.3.16.1">
<span class="ltx_text" id="S0.T9.3.16.1.1" style="font-size:80%;">CrossCodeEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.16.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CrossCodeEval-2023</span><span class="ltx_text" id="S0.T9.3.16.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.16.2"><span class="ltx_text" id="S0.T9.3.16.2.1" style="font-size:80%;">C#, TypeScript, Java, Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.16.3"><span class="ltx_text" id="S0.T9.3.16.3.1" style="font-size:80%;">2,665 (Python), 2,139 (Java),</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.17">
<td class="ltx_td" id="S0.T9.3.17.1"></td>
<td class="ltx_td" id="S0.T9.3.17.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.17.3"><span class="ltx_text" id="S0.T9.3.17.3.1" style="font-size:80%;">3,356 (TypeScript), 1,768 (C#)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.18">
<td class="ltx_td ltx_align_left" id="S0.T9.3.18.1">
<span class="ltx_text" id="S0.T9.3.18.1.1" style="font-size:80%;">CoderEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.18.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CoderEval-2023</span><span class="ltx_text" id="S0.T9.3.18.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.18.2"><span class="ltx_text" id="S0.T9.3.18.2.1" style="font-size:80%;">Java, Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.18.3"><span class="ltx_text" id="S0.T9.3.18.3.1" style="font-size:80%;">230</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.19">
<td class="ltx_td ltx_align_left" id="S0.T9.3.19.1">
<span class="ltx_text" id="S0.T9.3.19.1.1" style="font-size:80%;">DotPrompts </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.19.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">agrawal_guiding_2023</span><span class="ltx_text" id="S0.T9.3.19.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.19.2"><span class="ltx_text" id="S0.T9.3.19.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.19.3"><span class="ltx_text" id="S0.T9.3.19.3.1" style="font-size:80%;">105538 problems (1420 methods)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.20">
<td class="ltx_td ltx_align_left" id="S0.T9.3.20.1">
<span class="ltx_text" id="S0.T9.3.20.1.1" style="font-size:80%;">BigCloneBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.20.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">svajlenko_evaluating_2015</span><span class="ltx_text" id="S0.T9.3.20.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.20.2"><span class="ltx_text" id="S0.T9.3.20.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.20.3"><span class="ltx_text" id="S0.T9.3.20.3.1" style="font-size:80%;">25,000 Java Systms</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.21">
<td class="ltx_td ltx_align_left" id="S0.T9.3.21.1">
<span class="ltx_text" id="S0.T9.3.21.1.1" style="font-size:80%;">DI-Bench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.21.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang2025dibenchbenchmarkinglargelanguage</span><span class="ltx_text" id="S0.T9.3.21.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.21.2"><span class="ltx_text" id="S0.T9.3.21.2.1" style="font-size:80%;">Python, C#, Rust, JS</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.21.3"><span class="ltx_text" id="S0.T9.3.21.3.1" style="font-size:80%;">581 repositories (w/ dependencies)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.22">
<td class="ltx_td" id="S0.T9.3.22.1"></td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.22.2">
<span class="ltx_text" id="S0.T9.3.22.2.1" style="font-size:80%;">DyPyBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.22.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Bouzenia_2024</span><span class="ltx_text" id="S0.T9.3.22.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.22.3"><span class="ltx_text" id="S0.T9.3.22.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.22.4"><span class="ltx_text" id="S0.T9.3.22.4.1" style="font-size:80%;">50 repositories</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.23">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T9.3.23.1" rowspan="11"><span class="ltx_text" id="S0.T9.3.23.1.1" style="font-size:80%;">Repository Level</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.23.2">
<span class="ltx_text" id="S0.T9.3.23.2.1" style="font-size:80%;">RepoBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.23.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">RepoBench-2023</span><span class="ltx_text" id="S0.T9.3.23.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T9.3.23.3"><span class="ltx_text" id="S0.T9.3.23.3.1" style="font-size:80%;">Python, Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T9.3.23.4"><span class="ltx_text" id="S0.T9.3.23.4.1" style="font-size:80%;">Cross-file: 8,033, In-file: 7,910</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.24">
<td class="ltx_td ltx_align_left" id="S0.T9.3.24.1">
<span class="ltx_text" id="S0.T9.3.24.1.1" style="font-size:80%;">RepoEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.24.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">RepoEval-2023</span><span class="ltx_text" id="S0.T9.3.24.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.24.2"><span class="ltx_text" id="S0.T9.3.24.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.24.3"><span class="ltx_text" id="S0.T9.3.24.3.1" style="font-size:80%;">1,600 (line),</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.25">
<td class="ltx_td" id="S0.T9.3.25.1"></td>
<td class="ltx_td" id="S0.T9.3.25.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.25.3"><span class="ltx_text" id="S0.T9.3.25.3.1" style="font-size:80%;">1,600 (API), 373 (function)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.26">
<td class="ltx_td ltx_align_left" id="S0.T9.3.26.1">
<span class="ltx_text" id="S0.T9.3.26.1.1" style="font-size:80%;">EvoCodeBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.26.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">EvoCodeBench-2024</span><span class="ltx_text" id="S0.T9.3.26.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.26.2"><span class="ltx_text" id="S0.T9.3.26.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.26.3"><span class="ltx_text" id="S0.T9.3.26.3.1" style="font-size:80%;">275</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.27">
<td class="ltx_td ltx_align_left" id="S0.T9.3.27.1">
<span class="ltx_text" id="S0.T9.3.27.1.1" style="font-size:80%;">SketchEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.27.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">daoguang_zan_codes_2024</span><span class="ltx_text" id="S0.T9.3.27.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.27.2"><span class="ltx_text" id="S0.T9.3.27.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.27.3"><span class="ltx_text" id="S0.T9.3.27.3.1" style="font-size:80%;">19 repositories</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.28">
<td class="ltx_td" id="S0.T9.3.28.1"></td>
<td class="ltx_td" id="S0.T9.3.28.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.28.3"><span class="ltx_text" id="S0.T9.3.28.3.1" style="font-size:80%;">(5 easy, 8 medium, 6 hard)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.29">
<td class="ltx_td ltx_align_left" id="S0.T9.3.29.1">
<span class="ltx_text" id="S0.T9.3.29.1.1" style="font-size:80%;">Stack Repo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.29.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">daoguang_zan_codes_2024</span><span class="ltx_text" id="S0.T9.3.29.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.29.2"><span class="ltx_text" id="S0.T9.3.29.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.29.3"><span class="ltx_text" id="S0.T9.3.29.3.1" style="font-size:80%;">(435,890 / 220,615 / 159,822)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.30">
<td class="ltx_td" id="S0.T9.3.30.1"></td>
<td class="ltx_td" id="S0.T9.3.30.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.30.3"><span class="ltx_text" id="S0.T9.3.30.3.1" style="font-size:80%;">answer pairs</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.31">
<td class="ltx_td ltx_align_left" id="S0.T9.3.31.1">
<span class="ltx_text" id="S0.T9.3.31.1.1" style="font-size:80%;">ML-BENCH </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.31.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">tang_ml-bench_2024</span><span class="ltx_text" id="S0.T9.3.31.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T9.3.31.2"><span class="ltx_text" id="S0.T9.3.31.2.1" style="font-size:80%;">Python &amp; Bash</span></td>
<td class="ltx_td ltx_align_center" id="S0.T9.3.31.3"><span class="ltx_text" id="S0.T9.3.31.3.1" style="font-size:80%;">9641 problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T9.3.32">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T9.3.32.1">
<span class="ltx_text" id="S0.T9.3.32.1.1" style="font-size:80%;">CodeGen4Libs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T9.3.32.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">liu_codegen4libs_2023</span><span class="ltx_text" id="S0.T9.3.32.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T9.3.32.2"><span class="ltx_text" id="S0.T9.3.32.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T9.3.32.3"><span class="ltx_text" id="S0.T9.3.32.3.1" style="font-size:80%;">403,780 prompts</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a collection of real-world software engineering benchmarks.  It categorizes benchmarks by their focus area (Software Development & Agent Benchmarks, Class Level, Project & Cross-file, and Repository Level), lists the programming languages used in each benchmark, and indicates the number of problems or samples available for each benchmark. The notation X/Y/Z represents the number of training, development, and testing samples, respectively. This table is designed to provide a comprehensive overview of benchmarks used in evaluating AI models on practical software engineering tasks, offering a variety of complexities and scopes.
> <details>
> <summary>read the caption</summary>
> TABLE IX: Overview of Selected Real-to-Life SE Benchmarks. (Note: X/Y/Z denotes Train/Dev/Test)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T10.3">
<tr class="ltx_tr" id="S0.T10.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T10.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T10.3.1.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T10.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T10.3.1.2.1" style="font-size:80%;">Benchmark</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T10.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T10.3.1.3.1" style="font-size:80%;">Sources/API(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T10.3.1.4"><span class="ltx_text ltx_font_bold" id="S0.T10.3.1.4.1" style="font-size:80%;">No. of Problems</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T10.3.2.1" rowspan="6"><span class="ltx_text" id="S0.T10.3.2.1.1" style="font-size:80%;">API Prediction</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T10.3.2.2">
<span class="ltx_text" id="S0.T10.3.2.2.1" style="font-size:80%;">RestBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">RestBench-RestGPT-2023</span><span class="ltx_text" id="S0.T10.3.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T10.3.2.3"><span class="ltx_text" id="S0.T10.3.2.3.1" style="font-size:80%;">Spotify, TMDB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T10.3.2.4"><span class="ltx_text" id="S0.T10.3.2.4.1" style="font-size:80%;">57, 100</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.3">
<td class="ltx_td ltx_align_left" id="S0.T10.3.3.1">
<span class="ltx_text" id="S0.T10.3.3.1.1" style="font-size:80%;">APIBench-Q </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">APIBENCH-Q-2021</span><span class="ltx_text" id="S0.T10.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.3.2"><span class="ltx_text" id="S0.T10.3.3.2.1" style="font-size:80%;">StackOverflow, Tutorial Websites</span></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.3.3"><span class="ltx_text" id="S0.T10.3.3.3.1" style="font-size:80%;">6,563 (Java),</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.4">
<td class="ltx_td" id="S0.T10.3.4.1"></td>
<td class="ltx_td" id="S0.T10.3.4.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.4.3"><span class="ltx_text" id="S0.T10.3.4.3.1" style="font-size:80%;">4,309 (Python)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.5">
<td class="ltx_td ltx_align_left" id="S0.T10.3.5.1">
<span class="ltx_text" id="S0.T10.3.5.1.1" style="font-size:80%;">BIKER </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">BIKER-Dataset-2018</span><span class="ltx_text" id="S0.T10.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.5.2"><span class="ltx_text" id="S0.T10.3.5.2.1" style="font-size:80%;">StackOverflow</span></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.5.3"><span class="ltx_text" id="S0.T10.3.5.3.1" style="font-size:80%;">33,000</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.6">
<td class="ltx_td ltx_align_left" id="S0.T10.3.6.1">
<span class="ltx_text" id="S0.T10.3.6.1.1" style="font-size:80%;">Gorilla APIBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Gorilla-APIBench-APIZoo-2023</span><span class="ltx_text" id="S0.T10.3.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.6.2"><span class="ltx_text" id="S0.T10.3.6.2.1" style="font-size:80%;">HuggingFace, TensorHub, TorchHub</span></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.6.3"><span class="ltx_text" id="S0.T10.3.6.3.1" style="font-size:80%;">925, 696, 94</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.7">
<td class="ltx_td ltx_align_left" id="S0.T10.3.7.1">
<span class="ltx_text" id="S0.T10.3.7.1.1" style="font-size:80%;">Gorilla APIZoo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Gorilla-APIBench-APIZoo-2023</span><span class="ltx_text" id="S0.T10.3.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.7.2"><span class="ltx_text" id="S0.T10.3.7.2.1" style="font-size:80%;">Open submissions</span></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.7.3"><span class="ltx_text" id="S0.T10.3.7.3.1" style="font-size:80%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.8">
<td class="ltx_td" id="S0.T10.3.8.1"></td>
<td class="ltx_td" id="S0.T10.3.8.2"></td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.8.3"><span class="ltx_text" id="S0.T10.3.8.3.1" style="font-size:80%;">(Google, YouTube, Zoom, etc.)</span></td>
<td class="ltx_td" id="S0.T10.3.8.4"></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T10.3.9.1" rowspan="6"><span class="ltx_text" id="S0.T10.3.9.1.1" style="font-size:80%;">Retrieval &amp; Planning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T10.3.9.2">
<span class="ltx_text" id="S0.T10.3.9.2.1" style="font-size:80%;">API-Bank </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.9.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">API-Bank-2023</span><span class="ltx_text" id="S0.T10.3.9.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T10.3.9.3"><span class="ltx_text" id="S0.T10.3.9.3.1" style="font-size:80%;">73 commonly used APIs</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T10.3.9.4"><span class="ltx_text" id="S0.T10.3.9.4.1" style="font-size:80%;">753</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.10">
<td class="ltx_td ltx_align_left" id="S0.T10.3.10.1" rowspan="2"><span class="ltx_text" id="S0.T10.3.10.1.1" style="font-size:80%;">CodeRAG-Bench <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeRAG-Bench-2024</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.10.2"><span class="ltx_text" id="S0.T10.3.10.2.1" style="font-size:80%;">Competition solutions, tutorials,</span></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.10.3" rowspan="2"><span class="ltx_text" id="S0.T10.3.10.3.1" style="font-size:80%;">25,859</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.11">
<td class="ltx_td ltx_align_left" id="S0.T10.3.11.1"><span class="ltx_text" id="S0.T10.3.11.1.1" style="font-size:80%;">documentation, StackOverflow, GitHub</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.12">
<td class="ltx_td ltx_align_left" id="S0.T10.3.12.1">
<span class="ltx_text" id="S0.T10.3.12.1.1" style="font-size:80%;">Search4Code </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.12.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">rao_search4code_2021</span><span class="ltx_text" id="S0.T10.3.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.12.2"><span class="ltx_text" id="S0.T10.3.12.2.1" style="font-size:80%;">Bing</span></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.12.3"><span class="ltx_text" id="S0.T10.3.12.3.1" style="font-size:80%;">6596(java)/4974(c#)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.13">
<td class="ltx_td ltx_align_left" id="S0.T10.3.13.1">
<span class="ltx_text" id="S0.T10.3.13.1.1" style="font-size:80%;">CoIR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">li_coir_2024</span><span class="ltx_text" id="S0.T10.3.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.13.2"><span class="ltx_text" id="S0.T10.3.13.2.1" style="font-size:80%;">GitHub, StackOverflow, and</span></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.13.3"><span class="ltx_text" id="S0.T10.3.13.3.1" style="font-size:80%;">2.38M (corpus)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.14">
<td class="ltx_td" id="S0.T10.3.14.1"></td>
<td class="ltx_td ltx_align_left" id="S0.T10.3.14.2"><span class="ltx_text" id="S0.T10.3.14.2.1" style="font-size:80%;">Various Benchmarks</span></td>
<td class="ltx_td ltx_align_center" id="S0.T10.3.14.3"><span class="ltx_text" id="S0.T10.3.14.3.1" style="font-size:80%;">3.37(queries)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T10.3.15">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T10.3.15.1"><span class="ltx_text" id="S0.T10.3.15.1.1" style="font-size:80%;">Memorization</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T10.3.15.2">
<span class="ltx_text" id="S0.T10.3.15.2.1" style="font-size:80%;">SATML-ext </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T10.3.15.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">al-kaswan_traces_2024</span><span class="ltx_text" id="S0.T10.3.15.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T10.3.15.3"><span class="ltx_text" id="S0.T10.3.15.3.1" style="font-size:80%;">GitHub</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S0.T10.3.15.4"><span class="ltx_text" id="S0.T10.3.15.4.1" style="font-size:80%;">1,000 samples</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a categorized overview of selected AI4SE (Artificial Intelligence in Software Engineering) benchmarks focusing on API prediction, retrieval and planning, and memorization tasks.  For each benchmark, it lists the name, the data sources or APIs utilized, and the number of problems or samples included. This provides a concise summary of resources available for evaluating AI models in these specific SE sub-domains.
> <details>
> <summary>read the caption</summary>
> TABLE X: Overview of Selected API and Retrieval Benchmarks by Category.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T11.3">
<tr class="ltx_tr" id="S0.T11.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T11.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T11.3.1.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T11.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T11.3.1.2.1" style="font-size:80%;">Benchmark</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T11.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T11.3.1.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T11.3.1.4"><span class="ltx_text ltx_font_bold" id="S0.T11.3.1.4.1" style="font-size:80%;">No. of Problems</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T11.3.1.5"><span class="ltx_text ltx_font_bold" id="S0.T11.3.1.5.1" style="font-size:80%;">Crowdsourced</span></td>
</tr>
<tr class="ltx_tr" id="S0.T11.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T11.3.2.1" rowspan="2"><span class="ltx_text" id="S0.T11.3.2.1.1" style="font-size:80%;">Pseudocode to Code</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T11.3.2.2">
<span class="ltx_text" id="S0.T11.3.2.2.1" style="font-size:80%;">SPoC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T11.3.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">SPoC-2019</span><span class="ltx_text" id="S0.T11.3.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T11.3.2.3"><span class="ltx_text" id="S0.T11.3.2.3.1" style="font-size:80%;">C++</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T11.3.2.4"><span class="ltx_text" id="S0.T11.3.2.4.1" style="font-size:80%;">18,356</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T11.3.2.5"><span class="ltx_text" id="S0.T11.3.2.5.1" style="font-size:80%;">Yes</span></td>
</tr>
<tr class="ltx_tr" id="S0.T11.3.3">
<td class="ltx_td ltx_align_left" id="S0.T11.3.3.1">
<span class="ltx_text" id="S0.T11.3.3.1.1" style="font-size:80%;">NAPS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T11.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">NAPS-2018</span><span class="ltx_text" id="S0.T11.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T11.3.3.2"><span class="ltx_text" id="S0.T11.3.3.2.1" style="font-size:80%;">Java/UAST</span></td>
<td class="ltx_td ltx_align_left" id="S0.T11.3.3.3"><span class="ltx_text" id="S0.T11.3.3.3.1" style="font-size:80%;">17,477</span></td>
<td class="ltx_td ltx_align_center" id="S0.T11.3.3.4"><span class="ltx_text" id="S0.T11.3.3.4.1" style="font-size:80%;">No</span></td>
</tr>
<tr class="ltx_tr" id="S0.T11.3.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T11.3.4.1" rowspan="2"><span class="ltx_text" id="S0.T11.3.4.1.1" style="font-size:80%;">Code to Pseudocode</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T11.3.4.2" rowspan="2"><span class="ltx_text" id="S0.T11.3.4.2.1" style="font-size:80%;">Django <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">Django-2015</span>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T11.3.4.3"><span class="ltx_text" id="S0.T11.3.4.3.1" style="font-size:80%;">Python, English</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T11.3.4.4"><span class="ltx_text" id="S0.T11.3.4.4.1" style="font-size:80%;">18,805 (Train), 1,000 (Dev),</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S0.T11.3.4.5" rowspan="2"><span class="ltx_text" id="S0.T11.3.4.5.1" style="font-size:80%;">No</span></td>
</tr>
<tr class="ltx_tr" id="S0.T11.3.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T11.3.5.1"><span class="ltx_text" id="S0.T11.3.5.1.1" style="font-size:80%;">&amp; Japanese</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T11.3.5.2"><span class="ltx_text" id="S0.T11.3.5.2.1" style="font-size:80%;">1,805 (Test)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides an overview of the AI4SE (Artificial Intelligence for Software Engineering) benchmarks that specifically focus on pseudocode.  It details the benchmark's name, the programming languages involved, the number of problems or samples within each benchmark, and whether the benchmark is crowdsourced.
> <details>
> <summary>read the caption</summary>
> TABLE XI: Overview of AI4SE Benchmarks Related to Pseudocode.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T12.4">
<tr class="ltx_tr" id="S0.T12.4.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T12.4.5.1"><span class="ltx_text ltx_font_bold" id="S0.T12.4.5.1.1" style="font-size:80%;">Benchmark</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T12.4.5.2"><span class="ltx_text ltx_font_bold" id="S0.T12.4.5.2.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T12.4.5.3"><span class="ltx_text ltx_font_bold" id="S0.T12.4.5.3.1" style="font-size:80%;">No. of Problems</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T12.4.5.4"><span class="ltx_text ltx_font_bold" id="S0.T12.4.5.4.1" style="font-size:80%;">Source</span></td>
</tr>
<tr class="ltx_tr" id="S0.T12.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T12.1.1.2">
<span class="ltx_text" id="S0.T12.1.1.2.1" style="font-size:80%;">WikiSQL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T12.1.1.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">WikiSQL-2017</span><span class="ltx_text" id="S0.T12.1.1.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T12.1.1.1">
<span class="ltx_text" id="S0.T12.1.1.1.1" style="font-size:80%;">Natural language </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T12.1.1.1.m1.1"><semantics id="S0.T12.1.1.1.m1.1a"><mo id="S0.T12.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T12.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T12.1.1.1.m1.1b"><ci id="S0.T12.1.1.1.m1.1.1.cmml" xref="S0.T12.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T12.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T12.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T12.1.1.1.2" style="font-size:80%;"> SQL query</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T12.1.1.3"><span class="ltx_text" id="S0.T12.1.1.3.1" style="font-size:80%;">80,654</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T12.1.1.4"><span class="ltx_text" id="S0.T12.1.1.4.1" style="font-size:80%;">Amazon MTurk (deprecated - 2017)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T12.2.2">
<td class="ltx_td ltx_align_left" id="S0.T12.2.2.2">
<span class="ltx_text" id="S0.T12.2.2.2.1" style="font-size:80%;">Spider </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T12.2.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Spider-2018</span><span class="ltx_text" id="S0.T12.2.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T12.2.2.1">
<span class="ltx_text" id="S0.T12.2.2.1.1" style="font-size:80%;">Natural language </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T12.2.2.1.m1.1"><semantics id="S0.T12.2.2.1.m1.1a"><mo id="S0.T12.2.2.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T12.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T12.2.2.1.m1.1b"><ci id="S0.T12.2.2.1.m1.1.1.cmml" xref="S0.T12.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T12.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T12.2.2.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T12.2.2.1.2" style="font-size:80%;"> SQL query</span>
</td>
<td class="ltx_td ltx_align_left" id="S0.T12.2.2.3"><span class="ltx_text" id="S0.T12.2.2.3.1" style="font-size:80%;">10,181</span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.2.2.4"><span class="ltx_text" id="S0.T12.2.2.4.1" style="font-size:80%;">11 Yale students (2018)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T12.3.3">
<td class="ltx_td ltx_align_left" id="S0.T12.3.3.2">
<span class="ltx_text" id="S0.T12.3.3.2.1" style="font-size:80%;">NL2Bash </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T12.3.3.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">xi_victoria_lin_nl2bash_2018</span><span class="ltx_text" id="S0.T12.3.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T12.3.3.1">
<span class="ltx_text" id="S0.T12.3.3.1.1" style="font-size:80%;">Natural language </span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T12.3.3.1.m1.1"><semantics id="S0.T12.3.3.1.m1.1a"><mo id="S0.T12.3.3.1.m1.1.1" mathsize="80%" stretchy="false" xref="S0.T12.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T12.3.3.1.m1.1b"><ci id="S0.T12.3.3.1.m1.1.1.cmml" xref="S0.T12.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T12.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T12.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S0.T12.3.3.1.2" style="font-size:80%;"> Bash</span>
</td>
<td class="ltx_td ltx_align_left" id="S0.T12.3.3.3"><span class="ltx_text" id="S0.T12.3.3.3.1" style="font-size:80%;">9,305</span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.3.3.4"><span class="ltx_text" id="S0.T12.3.3.4.1" style="font-size:80%;">Upwork (2018)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T12.4.4">
<td class="ltx_td ltx_align_left" id="S0.T12.4.4.2" rowspan="2"><span class="ltx_text" id="S0.T12.4.4.2.1" style="font-size:80%;">NAPS <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">NAPS-2018</span>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.4.1" rowspan="2"><span class="ltx_text" id="S0.T12.4.4.1.1" style="font-size:80%;">Java/UAST <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S0.T12.4.4.1.1.m1.1"><semantics id="S0.T12.4.4.1.1.m1.1a"><mo id="S0.T12.4.4.1.1.m1.1.1" stretchy="false" xref="S0.T12.4.4.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S0.T12.4.4.1.1.m1.1b"><ci id="S0.T12.4.4.1.1.m1.1.1.cmml" xref="S0.T12.4.4.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S0.T12.4.4.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S0.T12.4.4.1.1.m1.1d">→</annotation></semantics></math> Pseudocode</span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.4.3" rowspan="2"><span class="ltx_text" id="S0.T12.4.4.3.1" style="font-size:80%;">17,477</span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.4.4"><span class="ltx_text" id="S0.T12.4.4.4.1" style="font-size:80%;">Self-hosted crowdsourcing,</span></td>
</tr>
<tr class="ltx_tr" id="S0.T12.4.6">
<td class="ltx_td ltx_align_left" id="S0.T12.4.6.1"><span class="ltx_text" id="S0.T12.4.6.1.1" style="font-size:80%;">competitive programming community (2018)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T12.4.7">
<td class="ltx_td ltx_align_left" id="S0.T12.4.7.1">
<span class="ltx_text" id="S0.T12.4.7.1.1" style="font-size:80%;">SPoC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T12.4.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">SPoC-2019</span><span class="ltx_text" id="S0.T12.4.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.7.2"><span class="ltx_text" id="S0.T12.4.7.2.1" style="font-size:80%;">C++</span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.7.3"><span class="ltx_text" id="S0.T12.4.7.3.1" style="font-size:80%;">18,356</span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.7.4"><span class="ltx_text" id="S0.T12.4.7.4.1" style="font-size:80%;">Competitive programming websites (2019)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T12.4.8">
<td class="ltx_td ltx_align_left" id="S0.T12.4.8.1">
<span class="ltx_text" id="S0.T12.4.8.1.1" style="font-size:80%;">MBPP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T12.4.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">MBPP-MathQA-2021</span><span class="ltx_text" id="S0.T12.4.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.8.2"><span class="ltx_text" id="S0.T12.4.8.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.8.3"><span class="ltx_text" id="S0.T12.4.8.3.1" style="font-size:80%;">974</span></td>
<td class="ltx_td ltx_align_left" id="S0.T12.4.8.4"><span class="ltx_text" id="S0.T12.4.8.4.1" style="font-size:80%;">Google Research,</span></td>
</tr>
<tr class="ltx_tr" id="S0.T12.4.9">
<td class="ltx_td ltx_border_bb" id="S0.T12.4.9.1"></td>
<td class="ltx_td ltx_border_bb" id="S0.T12.4.9.2"></td>
<td class="ltx_td ltx_border_bb" id="S0.T12.4.9.3"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T12.4.9.4"><span class="ltx_text" id="S0.T12.4.9.4.1" style="font-size:80%;">internal crowdworkers (2021)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a collection of AI4SE (Artificial Intelligence for Software Engineering) benchmarks that were developed through crowdsourcing.  It details the programming languages used, the number of problems included, and the original source of the benchmark data. Crowdsourced benchmarks are datasets created through community contributions and often represent real-world scenarios or problems.
> <details>
> <summary>read the caption</summary>
> TABLE XII: Overview of Selected Crowd-sourced Benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T13.3">
<tr class="ltx_tr" id="S0.T13.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T13.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T13.3.1.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T13.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T13.3.1.2.1" style="font-size:80%;">Benchmark</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T13.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T13.3.1.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T13.3.1.4"><span class="ltx_text ltx_font_bold" id="S0.T13.3.1.4.1" style="font-size:80%;">No. of Samples</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T13.3.2.1" rowspan="17"><span class="ltx_text" id="S0.T13.3.2.1.1" style="font-size:80%;">
<span class="ltx_inline-block" id="S0.T13.3.2.1.1.1">
<span class="ltx_p" id="S0.T13.3.2.1.1.1.1">Automated Program</span>
<span class="ltx_p" id="S0.T13.3.2.1.1.1.2">Repair &amp;</span>
<span class="ltx_p" id="S0.T13.3.2.1.1.1.3">Fault Localization</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T13.3.2.2">
<span class="ltx_text" id="S0.T13.3.2.2.1" style="font-size:80%;">Defects4J </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Defects4J-2014</span><span class="ltx_text" id="S0.T13.3.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T13.3.2.3"><span class="ltx_text" id="S0.T13.3.2.3.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T13.3.2.4"><span class="ltx_text" id="S0.T13.3.2.4.1" style="font-size:80%;">835</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.3">
<td class="ltx_td ltx_align_left" id="S0.T13.3.3.1">
<span class="ltx_text" id="S0.T13.3.3.1.1" style="font-size:80%;">GitBug-Java </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">GitBug-Java-2024</span><span class="ltx_text" id="S0.T13.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.3.2"><span class="ltx_text" id="S0.T13.3.3.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.3.3"><span class="ltx_text" id="S0.T13.3.3.3.1" style="font-size:80%;">199</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.4">
<td class="ltx_td ltx_align_left" id="S0.T13.3.4.1">
<span class="ltx_text" id="S0.T13.3.4.1.1" style="font-size:80%;">EvalGPTFix  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">quanjun_zhang_critical_2023</span><span class="ltx_text" id="S0.T13.3.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.4.2"><span class="ltx_text" id="S0.T13.3.4.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.4.3"><span class="ltx_text" id="S0.T13.3.4.3.1" style="font-size:80%;">4530</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.5">
<td class="ltx_td ltx_align_left" id="S0.T13.3.5.1">
<span class="ltx_text" id="S0.T13.3.5.1.1" style="font-size:80%;">TutorCode  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">boyang_yang_cref_2024</span><span class="ltx_text" id="S0.T13.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.5.2"><span class="ltx_text" id="S0.T13.3.5.2.1" style="font-size:80%;">C++</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.5.3"><span class="ltx_text" id="S0.T13.3.5.3.1" style="font-size:80%;">1239</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.6">
<td class="ltx_td ltx_align_left" id="S0.T13.3.6.1">
<span class="ltx_text" id="S0.T13.3.6.1.1" style="font-size:80%;">GHRB  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">jae_yong_lee_github_2023</span><span class="ltx_text" id="S0.T13.3.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.6.2"><span class="ltx_text" id="S0.T13.3.6.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.6.3"><span class="ltx_text" id="S0.T13.3.6.3.1" style="font-size:80%;">107</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.7">
<td class="ltx_td ltx_align_left" id="S0.T13.3.7.1">
<span class="ltx_text" id="S0.T13.3.7.1.1" style="font-size:80%;">IntroClass  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">claire_le_goues_manybugs_2015</span><span class="ltx_text" id="S0.T13.3.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.7.2"><span class="ltx_text" id="S0.T13.3.7.2.1" style="font-size:80%;">C</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.7.3"><span class="ltx_text" id="S0.T13.3.7.3.1" style="font-size:80%;">998</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.8">
<td class="ltx_td ltx_align_left" id="S0.T13.3.8.1">
<span class="ltx_text" id="S0.T13.3.8.1.1" style="font-size:80%;">ManyBugs  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">claire_le_goues_manybugs_2015</span><span class="ltx_text" id="S0.T13.3.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.8.2"><span class="ltx_text" id="S0.T13.3.8.2.1" style="font-size:80%;">7 Languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.8.3"><span class="ltx_text" id="S0.T13.3.8.3.1" style="font-size:80%;">185</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.9">
<td class="ltx_td ltx_align_left" id="S0.T13.3.9.1">
<span class="ltx_text" id="S0.T13.3.9.1.1" style="font-size:80%;">DebugBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">runchu_tian_debugbench_2024</span><span class="ltx_text" id="S0.T13.3.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.9.2"><span class="ltx_text" id="S0.T13.3.9.2.1" style="font-size:80%;">C++, Java, Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.9.3"><span class="ltx_text" id="S0.T13.3.9.3.1" style="font-size:80%;">1,438 &amp; 1,401 &amp; 1,414</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.10">
<td class="ltx_td ltx_align_left" id="S0.T13.3.10.1">
<span class="ltx_text" id="S0.T13.3.10.1.1" style="font-size:80%;">QuixBugs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.10.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">derrick_lin_quixbugs_2017</span><span class="ltx_text" id="S0.T13.3.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.10.2"><span class="ltx_text" id="S0.T13.3.10.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.10.3"><span class="ltx_text" id="S0.T13.3.10.3.1" style="font-size:80%;">40 (locations of bugs)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.11">
<td class="ltx_td ltx_align_left" id="S0.T13.3.11.1">
<span class="ltx_text" id="S0.T13.3.11.1.1" style="font-size:80%;">RES-Q </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">beck_labash_res-q_2024</span><span class="ltx_text" id="S0.T13.3.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.11.2"><span class="ltx_text" id="S0.T13.3.11.2.1" style="font-size:80%;">Python, JS</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.11.3"><span class="ltx_text" id="S0.T13.3.11.3.1" style="font-size:80%;">100 hand-crafted questions</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.12">
<td class="ltx_td" id="S0.T13.3.12.1"></td>
<td class="ltx_td" id="S0.T13.3.12.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.12.3"><span class="ltx_text" id="S0.T13.3.12.3.1" style="font-size:80%;">+ test scripts</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.13">
<td class="ltx_td ltx_align_left" id="S0.T13.3.13.1">
<span class="ltx_text" id="S0.T13.3.13.1.1" style="font-size:80%;">StudentEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">hannah_mclean_babe_studenteval_2023</span><span class="ltx_text" id="S0.T13.3.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.13.2"><span class="ltx_text" id="S0.T13.3.13.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.13.3"><span class="ltx_text" id="S0.T13.3.13.3.1" style="font-size:80%;">1,749 buggy programs on</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.14">
<td class="ltx_td" id="S0.T13.3.14.1"></td>
<td class="ltx_td" id="S0.T13.3.14.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.14.3"><span class="ltx_text" id="S0.T13.3.14.3.1" style="font-size:80%;">48 distinct tasks</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.15">
<td class="ltx_td" id="S0.T13.3.15.1"></td>
<td class="ltx_td" id="S0.T13.3.15.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.15.3"><span class="ltx_text" id="S0.T13.3.15.3.1" style="font-size:80%;">(3 test cases per problem)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.16">
<td class="ltx_td ltx_align_left" id="S0.T13.3.16.1">
<span class="ltx_text" id="S0.T13.3.16.1.1" style="font-size:80%;">Re-Factory </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.16.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Hu_refactory_2019</span><span class="ltx_text" id="S0.T13.3.16.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.16.2"><span class="ltx_text" id="S0.T13.3.16.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.16.3"><span class="ltx_text" id="S0.T13.3.16.3.1" style="font-size:80%;">1783(buggy)/2442(correct)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.17">
<td class="ltx_td ltx_align_left" id="S0.T13.3.17.1">
<span class="ltx_text" id="S0.T13.3.17.1.1" style="font-size:80%;">ConDefects </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.17.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">wu_condefects_2023</span><span class="ltx_text" id="S0.T13.3.17.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.17.2"><span class="ltx_text" id="S0.T13.3.17.2.1" style="font-size:80%;">Python, Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.17.3"><span class="ltx_text" id="S0.T13.3.17.3.1" style="font-size:80%;">526(Python), Java(477)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.18">
<td class="ltx_td ltx_align_left" id="S0.T13.3.18.1">
<span class="ltx_text" id="S0.T13.3.18.1.1" style="font-size:80%;">Cerberus </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.18.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">shariffdeen_cerberus_2023</span><span class="ltx_text" id="S0.T13.3.18.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.18.2"><span class="ltx_text" id="S0.T13.3.18.2.1" style="font-size:80%;">C, C++, Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.18.3"><span class="ltx_text" id="S0.T13.3.18.3.1" style="font-size:80%;">2242 (across 4 task types)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.19">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T13.3.19.1" rowspan="10"><span class="ltx_text" id="S0.T13.3.19.1.1" style="font-size:80%;">Vulnerability Detection</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T13.3.19.2">
<span class="ltx_text" id="S0.T13.3.19.2.1" style="font-size:80%;">CVEFixes </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.19.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">guru_prasad_bhandari_cvefixes_2021</span><span class="ltx_text" id="S0.T13.3.19.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T13.3.19.3"><span class="ltx_text" id="S0.T13.3.19.3.1" style="font-size:80%;">Various Languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T13.3.19.4"><span class="ltx_text" id="S0.T13.3.19.4.1" style="font-size:80%;">5,365</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.20">
<td class="ltx_td ltx_align_left" id="S0.T13.3.20.1">
<span class="ltx_text" id="S0.T13.3.20.1.1" style="font-size:80%;">LLMSecEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.20.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">catherine_tony_llmseceval_2023</span><span class="ltx_text" id="S0.T13.3.20.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.20.2"><span class="ltx_text" id="S0.T13.3.20.2.1" style="font-size:80%;">C</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.20.3"><span class="ltx_text" id="S0.T13.3.20.3.1" style="font-size:80%;">150 (on 25 distinct vulnerabilities)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.21">
<td class="ltx_td ltx_align_left" id="S0.T13.3.21.1">
<span class="ltx_text" id="S0.T13.3.21.1.1" style="font-size:80%;">SecurityEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.21.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">mohammed_latif_siddiq_securityeval_2022</span><span class="ltx_text" id="S0.T13.3.21.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.21.2"><span class="ltx_text" id="S0.T13.3.21.2.1" style="font-size:80%;">6 languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.21.3"><span class="ltx_text" id="S0.T13.3.21.3.1" style="font-size:80%;">130 (on 75 common vulnerabilities)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.22">
<td class="ltx_td ltx_align_left" id="S0.T13.3.22.1">
<span class="ltx_text" id="S0.T13.3.22.1.1" style="font-size:80%;">Vul4J </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.22.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bui_vul4j_2022</span><span class="ltx_text" id="S0.T13.3.22.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.22.2"><span class="ltx_text" id="S0.T13.3.22.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.22.3"><span class="ltx_text" id="S0.T13.3.22.3.1" style="font-size:80%;">79 vulnerabilities</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.23">
<td class="ltx_td ltx_align_left" id="S0.T13.3.23.1">
<span class="ltx_text" id="S0.T13.3.23.1.1" style="font-size:80%;">FormAI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.23.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">tihanyi_formai_2023</span><span class="ltx_text" id="S0.T13.3.23.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.23.2"><span class="ltx_text" id="S0.T13.3.23.2.1" style="font-size:80%;">C</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.23.3"><span class="ltx_text" id="S0.T13.3.23.3.1" style="font-size:80%;">112,000 labeled instances</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.24">
<td class="ltx_td ltx_align_left" id="S0.T13.3.24.1">
<span class="ltx_text" id="S0.T13.3.24.1.1" style="font-size:80%;">VJBbench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.24.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">wu_how_2023</span><span class="ltx_text" id="S0.T13.3.24.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.24.2"><span class="ltx_text" id="S0.T13.3.24.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.24.3"><span class="ltx_text" id="S0.T13.3.24.3.1" style="font-size:80%;">42 vulnerabilities</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.25">
<td class="ltx_td ltx_align_left" id="S0.T13.3.25.1">
<span class="ltx_text" id="S0.T13.3.25.1.1" style="font-size:80%;">SmartBugs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.25.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">durieux_empirical_2020</span><span class="ltx_text" id="S0.T13.3.25.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.25.2"><span class="ltx_text" id="S0.T13.3.25.2.1" style="font-size:80%;">Solidity</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.25.3"><span class="ltx_text" id="S0.T13.3.25.3.1" style="font-size:80%;">69 Vulnerable Smart Contracts</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.26">
<td class="ltx_td ltx_align_left" id="S0.T13.3.26.1">
<span class="ltx_text" id="S0.T13.3.26.1.1" style="font-size:80%;">Devign </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.26.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhou_devign_2019</span><span class="ltx_text" id="S0.T13.3.26.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.26.2"><span class="ltx_text" id="S0.T13.3.26.2.1" style="font-size:80%;">C</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.26.3"><span class="ltx_text" id="S0.T13.3.26.3.1" style="font-size:80%;">4 large-scale software repositories</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.27">
<td class="ltx_td ltx_align_left" id="S0.T13.3.27.1">
<span class="ltx_text" id="S0.T13.3.27.1.1" style="font-size:80%;">D2A </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.27.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zheng_d2a_2021</span><span class="ltx_text" id="S0.T13.3.27.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.27.2"><span class="ltx_text" id="S0.T13.3.27.2.1" style="font-size:80%;">C/C++</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.27.3"><span class="ltx_text" id="S0.T13.3.27.3.1" style="font-size:80%;">6 OSS Programs</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.28">
<td class="ltx_td ltx_align_left" id="S0.T13.3.28.1">
<span class="ltx_text" id="S0.T13.3.28.1.1" style="font-size:80%;">BigVul </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.28.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">10.1145/3379597.3387501</span><span class="ltx_text" id="S0.T13.3.28.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.28.2"><span class="ltx_text" id="S0.T13.3.28.2.1" style="font-size:80%;">C/C++</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.28.3"><span class="ltx_text" id="S0.T13.3.28.3.1" style="font-size:80%;">348 Projects</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.29">
<td class="ltx_td" id="S0.T13.3.29.1"></td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.29.2">
<span class="ltx_text" id="S0.T13.3.29.2.1" style="font-size:80%;">SARD </span><span class="ltx_note ltx_role_footnote" id="footnote6"><sup class="ltx_note_mark">6</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">6</sup><span class="ltx_tag ltx_tag_note">6</span><a class="ltx_ref ltx_href" href="https://samate.nist.gov/SARD/" title="">https://samate.nist.gov/SARD/</a></span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.29.3"><span class="ltx_text" id="S0.T13.3.29.3.1" style="font-size:80%;">Java, C, C++, C#, PHP</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.29.4">
<span class="ltx_text" id="S0.T13.3.29.4.1" style="font-size:80%;">32k</span><span class="ltx_note ltx_role_footnote" id="footnote7"><sup class="ltx_note_mark">7</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">7</sup><span class="ltx_tag ltx_tag_note">7</span>As of 4th Feb 2025</span></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.30">
<td class="ltx_td" id="S0.T13.3.30.1"></td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.30.2">
<span class="ltx_text" id="S0.T13.3.30.2.1" style="font-size:80%;">Juliet 1.3 </span><span class="ltx_note ltx_role_footnote" id="footnote8"><sup class="ltx_note_mark">8</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">8</sup><span class="ltx_tag ltx_tag_note">8</span>https://samate.nist.gov/SARD/test-suites/112</span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.30.3"><span class="ltx_text" id="S0.T13.3.30.3.1" style="font-size:80%;">C/C++</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.30.4">
<span class="ltx_text" id="S0.T13.3.30.4.1" style="font-size:80%;">64k</span><span class="ltx_note ltx_role_footnote" id="footnote9"><sup class="ltx_note_mark">9</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">9</sup><span class="ltx_tag ltx_tag_note">9</span>As of 4th Feb 2025</span></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.31">
<td class="ltx_td" id="S0.T13.3.31.1"></td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.31.2">
<span class="ltx_text" id="S0.T13.3.31.2.1" style="font-size:80%;">NVD </span><span class="ltx_note ltx_role_footnote" id="footnote10"><sup class="ltx_note_mark">10</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">10</sup><span class="ltx_tag ltx_tag_note">10</span>https://nvd.nist.gov/developers/data-sources</span></span></span>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.31.3"><span class="ltx_text" id="S0.T13.3.31.3.1" style="font-size:80%;">Various Languages</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.31.4">
<span class="ltx_text" id="S0.T13.3.31.4.1" style="font-size:80%;">265k</span><span class="ltx_note ltx_role_footnote" id="footnote11"><sup class="ltx_note_mark">11</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">11</sup><span class="ltx_tag ltx_tag_note">11</span>As of 4th Feb 2025</span></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.32">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T13.3.32.1" rowspan="5"><span class="ltx_text" id="S0.T13.3.32.1.1" style="font-size:80%;">Software Testing</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T13.3.32.2">
<span class="ltx_text" id="S0.T13.3.32.2.1" style="font-size:80%;">CoverageEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.32.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">michele_tufano_predicting_2023</span><span class="ltx_text" id="S0.T13.3.32.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T13.3.32.3"><span class="ltx_text" id="S0.T13.3.32.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T13.3.32.4"><span class="ltx_text" id="S0.T13.3.32.4.1" style="font-size:80%;">1160</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.33">
<td class="ltx_td ltx_align_left" id="S0.T13.3.33.1">
<span class="ltx_text" id="S0.T13.3.33.1.1" style="font-size:80%;">ATLAS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.33.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">watson_learning_2020</span><span class="ltx_text" id="S0.T13.3.33.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.33.2"><span class="ltx_text" id="S0.T13.3.33.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.33.3"><span class="ltx_text" id="S0.T13.3.33.3.1" style="font-size:80%;">9,275 projects</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.34">
<td class="ltx_td ltx_align_left" id="S0.T13.3.34.1">
<span class="ltx_text" id="S0.T13.3.34.1.1" style="font-size:80%;">HITS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.34.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">wang_hits_2024</span><span class="ltx_text" id="S0.T13.3.34.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.34.2"><span class="ltx_text" id="S0.T13.3.34.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.34.3"><span class="ltx_text" id="S0.T13.3.34.3.1" style="font-size:80%;">10 projects</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.35">
<td class="ltx_td ltx_align_left" id="S0.T13.3.35.1">
<span class="ltx_text" id="S0.T13.3.35.1.1" style="font-size:80%;">MeMo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.35.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bareis_code_2022</span><span class="ltx_text" id="S0.T13.3.35.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T13.3.35.2"><span class="ltx_text" id="S0.T13.3.35.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T13.3.35.3"><span class="ltx_text" id="S0.T13.3.35.3.1" style="font-size:80%;">9 projects</span></td>
</tr>
<tr class="ltx_tr" id="S0.T13.3.36">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T13.3.36.1">
<span class="ltx_text" id="S0.T13.3.36.1.1" style="font-size:80%;">MLAPIs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T13.3.36.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">wan_automated_2022</span><span class="ltx_text" id="S0.T13.3.36.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T13.3.36.2"><span class="ltx_text" id="S0.T13.3.36.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T13.3.36.3"><span class="ltx_text" id="S0.T13.3.36.3.1" style="font-size:80%;">63 applications</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides a comprehensive overview of existing benchmarks used for evaluating automated program repair, fault localization, and vulnerability detection techniques.  It details each benchmark's name, programming language(s) it supports, and the number of samples or datasets it includes. This information is crucial for researchers to select appropriate benchmarks based on their specific needs and research focus.
> <details>
> <summary>read the caption</summary>
> TABLE XIII: Overview of Automated Program Repair, Fault Localization, and Vulenrability Detection Benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T14.3">
<tr class="ltx_tr" id="S0.T14.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T14.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T14.3.1.1.1" style="font-size:80%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T14.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T14.3.1.2.1" style="font-size:80%;">Benchmark</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T14.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T14.3.1.3.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T14.3.1.4"><span class="ltx_text ltx_font_bold" id="S0.T14.3.1.4.1" style="font-size:80%;">No. of Samples</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.2.1" rowspan="5"><span class="ltx_text" id="S0.T14.3.2.1.1" style="font-size:80%;">
<span class="ltx_inline-block" id="S0.T14.3.2.1.1.1">
<span class="ltx_p" id="S0.T14.3.2.1.1.1.1">Code Synthesis</span>
<span class="ltx_p" id="S0.T14.3.2.1.1.1.2">&amp; Understanding</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.2.2">
<span class="ltx_text" id="S0.T14.3.2.2.1" style="font-size:80%;">Methods2Test </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.2.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Methods2Test-2020</span><span class="ltx_text" id="S0.T14.3.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.2.3"><span class="ltx_text" id="S0.T14.3.2.3.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T14.3.2.4"><span class="ltx_text" id="S0.T14.3.2.4.1" style="font-size:80%;">780,944</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.3">
<td class="ltx_td ltx_align_left" id="S0.T14.3.3.1">
<span class="ltx_text" id="S0.T14.3.3.1.1" style="font-size:80%;">CRUXEval </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">CRUXEval-2024</span><span class="ltx_text" id="S0.T14.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T14.3.3.2"><span class="ltx_text" id="S0.T14.3.3.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T14.3.3.3"><span class="ltx_text" id="S0.T14.3.3.3.1" style="font-size:80%;">800</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.4">
<td class="ltx_td ltx_align_left" id="S0.T14.3.4.1">
<span class="ltx_text" id="S0.T14.3.4.1.1" style="font-size:80%;">CRQBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">elizabeth_dinella_crqbench_2024</span><span class="ltx_text" id="S0.T14.3.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T14.3.4.2"><span class="ltx_text" id="S0.T14.3.4.2.1" style="font-size:80%;">C++</span></td>
<td class="ltx_td ltx_align_center" id="S0.T14.3.4.3"><span class="ltx_text" id="S0.T14.3.4.3.1" style="font-size:80%;">100</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.5">
<td class="ltx_td ltx_align_left" id="S0.T14.3.5.1">
<span class="ltx_text" id="S0.T14.3.5.1.1" style="font-size:80%;">CriticBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">lin_criticbench_2024</span><span class="ltx_text" id="S0.T14.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T14.3.5.2"><span class="ltx_text" id="S0.T14.3.5.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T14.3.5.3"><span class="ltx_text" id="S0.T14.3.5.3.1" style="font-size:80%;">3,825(across 5 tasks)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.6">
<td class="ltx_td ltx_align_left" id="S0.T14.3.6.1">
<span class="ltx_text" id="S0.T14.3.6.1.1" style="font-size:80%;">CodeScope </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">yan_codescope_2024</span><span class="ltx_text" id="S0.T14.3.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T14.3.6.2"><span class="ltx_text" id="S0.T14.3.6.2.1" style="font-size:80%;">8 Programming Langauges</span></td>
<td class="ltx_td ltx_align_center" id="S0.T14.3.6.3"><span class="ltx_text" id="S0.T14.3.6.3.1" style="font-size:80%;">13,390 (across 8 tasks)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.7.1"><span class="ltx_text" id="S0.T14.3.7.1.1" style="font-size:80%;">Merge Conflict Repair</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.7.2">
<span class="ltx_text" id="S0.T14.3.7.2.1" style="font-size:80%;">ConflictBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.7.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">ConflictBench-2024</span><span class="ltx_text" id="S0.T14.3.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.7.3"><span class="ltx_text" id="S0.T14.3.7.3.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T14.3.7.4"><span class="ltx_text" id="S0.T14.3.7.4.1" style="font-size:80%;">180</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.8.1" rowspan="2"><span class="ltx_text" id="S0.T14.3.8.1.1" style="font-size:80%;">Type Inference</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.8.2">
<span class="ltx_text" id="S0.T14.3.8.2.1" style="font-size:80%;">TypeEvalPy  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.8.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">ashwin_prasad_shivarpatna_venkatesh_typeevalpy_2023</span><span class="ltx_text" id="S0.T14.3.8.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.8.3"><span class="ltx_text" id="S0.T14.3.8.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T14.3.8.4"><span class="ltx_text" id="S0.T14.3.8.4.1" style="font-size:80%;">845 (annotated labels)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.9">
<td class="ltx_td ltx_align_left" id="S0.T14.3.9.1">
<span class="ltx_text" id="S0.T14.3.9.1.1" style="font-size:80%;">TypeEvalPy AutoGen  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">ashwin_prasad_shivarpatna_venkatesh_typeevalpy_2023</span><span class="ltx_text" id="S0.T14.3.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T14.3.9.2"><span class="ltx_text" id="S0.T14.3.9.2.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center" id="S0.T14.3.9.3"><span class="ltx_text" id="S0.T14.3.9.3.1" style="font-size:80%;">78373 (annotated labels)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.10.1" rowspan="3"><span class="ltx_text" id="S0.T14.3.10.1.1" style="font-size:80%;">
<span class="ltx_inline-block" id="S0.T14.3.10.1.1.1">
<span class="ltx_p" id="S0.T14.3.10.1.1.1.1">Automatic Code</span>
<span class="ltx_p" id="S0.T14.3.10.1.1.1.2">Quality Review</span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.10.2">
<span class="ltx_text" id="S0.T14.3.10.2.1" style="font-size:80%;">CodeReview  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.10.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhiyu_li_automating_2022</span><span class="ltx_text" id="S0.T14.3.10.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T14.3.10.3"><span class="ltx_text" id="S0.T14.3.10.3.1" style="font-size:80%;">8 languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T14.3.10.4"><span class="ltx_text" id="S0.T14.3.10.4.1" style="font-size:80%;">7.9M pull requests</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.11">
<td class="ltx_td ltx_align_left" id="S0.T14.3.11.1">
<span class="ltx_text" id="S0.T14.3.11.1.1" style="font-size:80%;">Software Maintainability  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">markus_schnappinger_defining_2020</span><span class="ltx_text" id="S0.T14.3.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S0.T14.3.11.2"><span class="ltx_text" id="S0.T14.3.11.2.1" style="font-size:80%;">Java</span></td>
<td class="ltx_td ltx_align_center" id="S0.T14.3.11.3"><span class="ltx_text" id="S0.T14.3.11.3.1" style="font-size:80%;">519 projects</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.12">
<td class="ltx_td" id="S0.T14.3.12.1"></td>
<td class="ltx_td" id="S0.T14.3.12.2"></td>
<td class="ltx_td ltx_align_center" id="S0.T14.3.12.3"><span class="ltx_text" id="S0.T14.3.12.3.1" style="font-size:80%;">(evaluations of quality)</span></td>
</tr>
<tr class="ltx_tr" id="S0.T14.3.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T14.3.13.1"><span class="ltx_text" id="S0.T14.3.13.1.1" style="font-size:80%;">Hallucination Detection</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T14.3.13.2">
<span class="ltx_text" id="S0.T14.3.13.2.1" style="font-size:80%;">HALLUCODE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T14.3.13.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">fang_liu_exploring_2024</span><span class="ltx_text" id="S0.T14.3.13.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T14.3.13.3"><span class="ltx_text" id="S0.T14.3.13.3.1" style="font-size:80%;">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S0.T14.3.13.4"><span class="ltx_text" id="S0.T14.3.13.4.1" style="font-size:80%;">5,663</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a collection of benchmarks focusing on various software engineering workflows.  It details the specific tasks covered by each benchmark, the programming languages involved, and the number of samples or problems included. These benchmarks are used to evaluate AI models' performance in these specific SE workflows.
> <details>
> <summary>read the caption</summary>
> TABLE XIV: Overview of Selected SE-Workflow Benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S0.T15.3">
<tr class="ltx_tr" id="S0.T15.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T15.3.1.1"><span class="ltx_text ltx_font_bold" id="S0.T15.3.1.1.1" style="font-size:80%;">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T15.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T15.3.1.2.1" style="font-size:80%;">Language(s)</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S0.T15.3.1.3"><span class="ltx_text ltx_font_bold" id="S0.T15.3.1.3.1" style="font-size:80%;">Tasks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S0.T15.3.1.4"><span class="ltx_text ltx_font_bold" id="S0.T15.3.1.4.1" style="font-size:80%;">Information</span></td>
</tr>
<tr class="ltx_tr" id="S0.T15.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.2.1">
<span class="ltx_text" id="S0.T15.3.2.1.1" style="font-size:80%;">Big-Bench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T15.3.2.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">BIG-Bench-2022</span><span class="ltx_text" id="S0.T15.3.2.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.2.2">
<span class="ltx_text" id="S0.T15.3.2.2.1"></span><span class="ltx_text" id="S0.T15.3.2.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.2.2.2.1">
<span class="ltx_tr" id="S0.T15.3.2.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.2.2.1.1.1">Python, Numeric,</span></span>
<span class="ltx_tr" id="S0.T15.3.2.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.2.2.1.2.1">JSON, English</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.2.2.3"></span><span class="ltx_text" id="S0.T15.3.2.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.2.3">
<span class="ltx_text" id="S0.T15.3.2.3.1"></span><span class="ltx_text" id="S0.T15.3.2.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.2.3.2.1">
<span class="ltx_tr" id="S0.T15.3.2.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.3.2.1.1.1">Functions over numbers,</span></span>
<span class="ltx_tr" id="S0.T15.3.2.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.3.2.1.2.1">Mathematical Reasoning, Text2Code,</span></span>
<span class="ltx_tr" id="S0.T15.3.2.3.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.3.2.1.3.1">Code2Text, Code explanation,</span></span>
<span class="ltx_tr" id="S0.T15.3.2.3.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.3.2.1.4.1">Debugging, Turing Complete</span></span>
<span class="ltx_tr" id="S0.T15.3.2.3.2.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.3.2.1.5.1">Concept Learning,</span></span>
<span class="ltx_tr" id="S0.T15.3.2.3.2.1.6">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.3.2.1.6.1"><a class="ltx_ref ltx_href" href="https://github.com/google/BIG-bench/blob/main/bigbench/benchmark_tasks/README.md" title="">amongst other tasks</a></span></span>
</span></span><span class="ltx_text" id="S0.T15.3.2.3.3"></span><span class="ltx_text" id="S0.T15.3.2.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T15.3.2.4">
<span class="ltx_text" id="S0.T15.3.2.4.1"></span><span class="ltx_text" id="S0.T15.3.2.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.2.4.2.1">
<span class="ltx_tr" id="S0.T15.3.2.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.4.2.1.1.1">250,</span></span>
<span class="ltx_tr" id="S0.T15.3.2.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.4.2.1.2.1">several per category,</span></span>
<span class="ltx_tr" id="S0.T15.3.2.4.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.4.2.1.3.1">42, 60, 66,</span></span>
<span class="ltx_tr" id="S0.T15.3.2.4.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.2.4.2.1.4.1">34, 6,390</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.2.4.3"></span><span class="ltx_text" id="S0.T15.3.2.4.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T15.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.3.1">
<span class="ltx_text" id="S0.T15.3.3.1.1" style="font-size:80%;">XLCoST </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T15.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">XLCoST-2022</span><span class="ltx_text" id="S0.T15.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.3.2">
<span class="ltx_text" id="S0.T15.3.3.2.1"></span><span class="ltx_text" id="S0.T15.3.3.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.3.2.2.1">
<span class="ltx_tr" id="S0.T15.3.3.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.2.2.1.1.1">C, C++, C#, Java, JavaScript,</span></span>
<span class="ltx_tr" id="S0.T15.3.3.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.2.2.1.2.1">Kotlin, PHP, Python, Ruby,</span></span>
<span class="ltx_tr" id="S0.T15.3.3.2.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.2.2.1.3.1">Rust</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.3.2.3"></span><span class="ltx_text" id="S0.T15.3.3.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.3.3">
<span class="ltx_text" id="S0.T15.3.3.3.1"></span><span class="ltx_text" id="S0.T15.3.3.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.3.3.2.1">
<span class="ltx_tr" id="S0.T15.3.3.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.3.2.1.1.1">Text2Code</span></span>
<span class="ltx_tr" id="S0.T15.3.3.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.3.2.1.2.1">(program synthesis, code search),</span></span>
<span class="ltx_tr" id="S0.T15.3.3.3.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.3.2.1.3.1">Code Summarization,</span></span>
<span class="ltx_tr" id="S0.T15.3.3.3.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.3.2.1.4.1">Code Translation</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.3.3.3"></span><span class="ltx_text" id="S0.T15.3.3.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T15.3.3.4">
<span class="ltx_text" id="S0.T15.3.3.4.1"></span><span class="ltx_text" id="S0.T15.3.3.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.3.4.2.1">
<span class="ltx_tr" id="S0.T15.3.3.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.4.2.1.1.1">567K</span></span>
<span class="ltx_tr" id="S0.T15.3.3.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.4.2.1.2.1">(509k, 58k),</span></span>
<span class="ltx_tr" id="S0.T15.3.3.4.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.3.4.2.1.3.1">567K, 122K</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.3.4.3"></span><span class="ltx_text" id="S0.T15.3.3.4.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T15.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.4.1">
<span class="ltx_text" id="S0.T15.3.4.1.1" style="font-size:80%;">CrossCodeBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T15.3.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">changan_niu_crosscodebench_2023</span><span class="ltx_text" id="S0.T15.3.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.4.2">
<span class="ltx_text" id="S0.T15.3.4.2.1"></span><span class="ltx_text" id="S0.T15.3.4.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.4.2.2.1">
<span class="ltx_tr" id="S0.T15.3.4.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.2.2.1.1.1">Java, C#, Python, C++,</span></span>
<span class="ltx_tr" id="S0.T15.3.4.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.2.2.1.2.1">JS, PHP, Go, Ruby,</span></span>
<span class="ltx_tr" id="S0.T15.3.4.2.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.2.2.1.3.1">TS, C, Bash, Shell</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.4.2.3"></span><span class="ltx_text" id="S0.T15.3.4.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.4.3">
<span class="ltx_text" id="S0.T15.3.4.3.1"></span><span class="ltx_text" id="S0.T15.3.4.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.4.3.2.1">
<span class="ltx_tr" id="S0.T15.3.4.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.3.2.1.1.1">Classification, In-Filling, Translation,</span></span>
<span class="ltx_tr" id="S0.T15.3.4.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.3.2.1.2.1">Generation, Summarization,</span></span>
<span class="ltx_tr" id="S0.T15.3.4.3.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.3.2.1.3.1">Type Prediction,</span></span>
<span class="ltx_tr" id="S0.T15.3.4.3.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.3.2.1.4.1">Question Answering</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.4.3.3"></span><span class="ltx_text" id="S0.T15.3.4.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T15.3.4.4">
<span class="ltx_text" id="S0.T15.3.4.4.1"></span><span class="ltx_text" id="S0.T15.3.4.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.4.4.2.1">
<span class="ltx_tr" id="S0.T15.3.4.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.4.2.1.1.1">6.6M, 13.4M, 2.4M,</span></span>
<span class="ltx_tr" id="S0.T15.3.4.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.4.2.1.2.1">19.5M, 11.2M,</span></span>
<span class="ltx_tr" id="S0.T15.3.4.4.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.4.2.1.3.1">773K,</span></span>
<span class="ltx_tr" id="S0.T15.3.4.4.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.4.4.2.1.4.1">190K</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.4.4.3"></span><span class="ltx_text" id="S0.T15.3.4.4.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T15.3.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.5.1">
<span class="ltx_text" id="S0.T15.3.5.1.1" style="font-size:80%;">Long Code Arena </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S0.T15.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">long-code-arena-2024</span><span class="ltx_text" id="S0.T15.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.5.2">
<span class="ltx_text" id="S0.T15.3.5.2.1"></span><span class="ltx_text" id="S0.T15.3.5.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.5.2.2.1">
<span class="ltx_tr" id="S0.T15.3.5.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.2.2.1.1.1">English, Python, Java, Kotlin</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.5.2.3"></span><span class="ltx_text" id="S0.T15.3.5.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T15.3.5.3">
<span class="ltx_text" id="S0.T15.3.5.3.1"></span><span class="ltx_text" id="S0.T15.3.5.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.5.3.2.1">
<span class="ltx_tr" id="S0.T15.3.5.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.3.2.1.1.1">Commit Message Generation,</span></span>
<span class="ltx_tr" id="S0.T15.3.5.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.3.2.1.2.1">Module Summarization,</span></span>
<span class="ltx_tr" id="S0.T15.3.5.3.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.3.2.1.3.1">Library-Based Code Generation,</span></span>
<span class="ltx_tr" id="S0.T15.3.5.3.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.3.2.1.4.1">Project-Level Code Completion,</span></span>
<span class="ltx_tr" id="S0.T15.3.5.3.2.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.3.2.1.5.1">Bug Localization, CI Builds Repair</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.5.3.3"></span><span class="ltx_text" id="S0.T15.3.5.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T15.3.5.4">
<span class="ltx_text" id="S0.T15.3.5.4.1"></span><span class="ltx_text" id="S0.T15.3.5.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.5.4.2.1">
<span class="ltx_tr" id="S0.T15.3.5.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.4.2.1.1.1">163,</span></span>
<span class="ltx_tr" id="S0.T15.3.5.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.4.2.1.2.1">216,</span></span>
<span class="ltx_tr" id="S0.T15.3.5.4.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.4.2.1.3.1">150,</span></span>
<span class="ltx_tr" id="S0.T15.3.5.4.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.4.2.1.4.1">908 (varying sizes),</span></span>
<span class="ltx_tr" id="S0.T15.3.5.4.2.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.5.4.2.1.5.1">14.96K, 78</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.5.4.3"></span><span class="ltx_text" id="S0.T15.3.5.4.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S0.T15.3.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T15.3.6.1">
<span class="ltx_text" id="S0.T15.3.6.1.1"></span><span class="ltx_text" id="S0.T15.3.6.1.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.6.1.2.1">
<span class="ltx_tr" id="S0.T15.3.6.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.1.2.1.1.1">CodeXGLUE  <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">long-code-arena-2024</span>]</cite></span></span>
<span class="ltx_tr" id="S0.T15.3.6.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.1.2.1.2.1">MicrosoftDocs<span class="ltx_note ltx_role_footnote" id="footnote12"><sup class="ltx_note_mark">12</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">12</sup><span class="ltx_tag ltx_tag_note"><span class="ltx_text" id="footnote12.1.1.1" style="font-size:125%;">12</span></span><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://github.com/MicrosoftDocs/" style="font-size:125%;" title="">https://github.com/MicrosoftDocs/</a></span></span></span></span></span>
<span class="ltx_tr" id="S0.T15.3.6.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.1.2.1.3.1">CodeSearchNet <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">CodeSearchNet-Challenge-2019</span>]</cite></span></span>
</span></span><span class="ltx_text" id="S0.T15.3.6.1.3"></span><span class="ltx_text" id="S0.T15.3.6.1.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T15.3.6.2">
<span class="ltx_text" id="S0.T15.3.6.2.1"></span><span class="ltx_text" id="S0.T15.3.6.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.6.2.2.1">
<span class="ltx_tr" id="S0.T15.3.6.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.2.2.1.1.1">English, Chinese, Norwegian,</span></span>
<span class="ltx_tr" id="S0.T15.3.6.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.2.2.1.2.1">Danish, Latvian Go, Java,</span></span>
<span class="ltx_tr" id="S0.T15.3.6.2.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.2.2.1.3.1">JavaScript, PHP, Python, Ruby</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.6.2.3"></span><span class="ltx_text" id="S0.T15.3.6.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S0.T15.3.6.3">
<span class="ltx_text" id="S0.T15.3.6.3.1"></span><span class="ltx_text" id="S0.T15.3.6.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.6.3.2.1">
<span class="ltx_tr" id="S0.T15.3.6.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.3.2.1.1.1">Code Documentation Translation,</span></span>
<span class="ltx_tr" id="S0.T15.3.6.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.3.2.1.2.1">Code Documentation</span></span>
<span class="ltx_tr" id="S0.T15.3.6.3.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.3.2.1.3.1">(Code Summarization,</span></span>
<span class="ltx_tr" id="S0.T15.3.6.3.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.3.2.1.4.1">Comment Generation)</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.6.3.3"></span><span class="ltx_text" id="S0.T15.3.6.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S0.T15.3.6.4">
<span class="ltx_text" id="S0.T15.3.6.4.1"></span><span class="ltx_text" id="S0.T15.3.6.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S0.T15.3.6.4.2.1">
<span class="ltx_tr" id="S0.T15.3.6.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.4.2.1.1.1">(CN: 52K, NOR: 26K,</span></span>
<span class="ltx_tr" id="S0.T15.3.6.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.4.2.1.2.1">DK: 45K, LT: 21K),</span></span>
<span class="ltx_tr" id="S0.T15.3.6.4.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S0.T15.3.6.4.2.1.3.1">621870</span></span>
</span></span><span class="ltx_text" id="S0.T15.3.6.4.3"></span><span class="ltx_text" id="S0.T15.3.6.4.4" style="font-size:80%;"></span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a list of benchmarks that evaluate multiple aspects of AI models in software engineering tasks.  Unlike single-task benchmarks, these multi-category benchmarks assess a wide range of capabilities, providing a more holistic evaluation of the AI model's overall performance.
> <details>
> <summary>read the caption</summary>
> TABLE XV: Overview of Multi-Category Benchmarks, Covering Various Tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05860/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05860/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}